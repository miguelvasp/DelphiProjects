unit ufrmAcompanhaCompras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdblook,
  Buttons;

type
  TfrmAcompanhaCompras = class(TForm)
    Panel1: TPanel;
    cboSolicitante: TwwDBLookupCombo;
    edtDtSolIni: TMaskEdit;
    edtSolFim: TMaskEdit;
    EdtSol: TEdit;
    edtOC: TEdit;
    edtOCDTINI: TMaskEdit;
    edtOCDTFIM: TMaskEdit;
    cboMaterial: TwwDBLookupCombo;
    cboFornecedor: TwwDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    wwDBGrid1: TwwDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    qrBusca: TADOQuery;
    qrBuscaCOLUMN1: TStringField;
    qrBuscaDT_PROGRAMACAO: TDateTimeField;
    qrBuscaid: TAutoIncField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaQTDE: TFloatField;
    qrBuscaORD_ID: TAutoIncField;
    qrBuscaDT_CADASTRO: TDateTimeField;
    qrBuscaFOR_CODI: TStringField;
    qrBuscaDT_ENTREGA: TDateTimeField;
    qrBuscaQtde_Comp: TFloatField;
    DataSource1: TDataSource;
    rdOrdem: TRadioGroup;
    qrUsuarios: TADOQuery;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    qrFornFOR_RAZA: TStringField;
    rgStatus: TRadioGroup;
    btnGetMaterial: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcompanhaCompras: TfrmAcompanhaCompras;
  OrdemCompra : string;
implementation

uses UMenu, frmCadSolicitacao, UOrdCom, ufrmRelAcompanhaCompras,
  UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmAcompanhaCompras.Button1Click(Sender: TObject);
begin
   with qrBusca do begin
       close;
       sql.Clear;
       SQL.Add(
          '  SELECT  distinct '+
          '          (SELECT NOME FROM USUARIOALMOX WHERE CH = S.USUARIO ) '+
          '          ,S.DT_PROGRAMACAO '+
          '          ,S.id  '+
          '          ,M.CodigoMaterial + '' '' + M.MAT_DESC AS MAT_DESC  '+
          '          ,I.QTDE '+
          '          ,I.ORD_ID '+
          '          ,CASE WHEN I.ORD_ID IS NULL THEN NULL ELSE O.DT_CADASTRO END AS DT_CADASTRO '+
          '          ,CASE WHEN I.ORD_ID IS NULL THEN '''' ELSE O.FOR_CODI END AS FOR_CODI'+
          '          ,CASE WHEN I.ORD_ID IS NULL THEN NULL ELSE O.DT_ENTREGA END AS DT_ENTREGA'+
          '          ,CASE WHEN I.ORD_ID IS NULL THEN NULL ELSE (select  sum(Qtde_Comp) FROM Ordem_CompraItem WHERE ORD_ID = I.ORD_ID AND MAT_ID = I.MAT_ID) end AS Qtde_Comp '+
          '  FROM SOLICITACAO S INNER JOIN ITEM_SOLICITACAO I '+
          '  ON S.id = I.SOL_ID LEFT OUTER JOIN TB_COTACAO C '+
          '  ON I.COT_ID = C.COT_ID LEFT OUTER JOIN ITEM_COTACAO IC '+
          '  ON C.COT_ID = IC.COT_ID LEFT OUTER JOIN MATERIAIS M '+
          '  ON I.MAT_ID = M.MAT_ID LEFT OUTER JOIN Ordem_Compra O  '+
          '  ON IC.ORD_ID = O.ORD_ID LEFT OUTER JOIN Ordem_CompraItem OI '+
          '  ON O.ORD_ID = OI.Ord_ID  '+
          '  WHERE 1 = 1 '
       );

       if cboSolicitante.Text <> '' then
          sql.Add(' and s.usuario = ' + cboSolicitante.LookupValue);

       if edtDtSolIni.Text <> '  /  /    ' then
          sql.Add(' and convert(varchar, S.DT_PROGRAMACAO, 112 ) >= ' + FormatDateTime('YYYYMMDD', StrToDate(edtDtSolIni.Text)));

       if edtSolFim.Text <> '  /  /    ' then
          sql.Add(' and convert(varchar, S.DT_PROGRAMACAO, 112 ) <= ' + FormatDateTime('YYYYMMDD', StrToDate(edtSolFim.Text)));

       if  EdtSol.Text <> '' then
          sql.Add(' and s.id = '+ EdtSol.Text);

       if edtOC.Text <> '' then
          sql.Add(' and O.ORD_ID = ' + edtOC.Text);

       if edtOCDTINI.Text <> '  /  /    ' then
          sql.Add(' and convert(varchar, O.DT_CADASTRO, 112 ) >= ' + FormatDateTime('YYYYMMDD', StrToDate(edtOCDTINI.Text)));

       if edtOCDTFIM.Text <> '  /  /    ' then
          sql.Add(' and convert(varchar, O.DT_CADASTRO, 112 ) <= ' + FormatDateTime('YYYYMMDD', StrToDate(edtOCDTFIM.Text)));

       if cboMaterial.Text <> '' then
          sql.add(' and  I.MAT_ID = ' + cboMaterial.LookupValue);

       IF cboFornecedor.Text <> '' then
          SQL.ADD(' AND O.FOR_CODI = ' + QuotedStr(cboFornecedor.LookupValue));


       if rgStatus.ItemIndex = 1 then
        sql.Add(' and I.ORD_ID is null ');

       if rgStatus.ItemIndex = 2 then
        sql.Add(' and I.ORD_ID is not null ');

        if rgStatus.ItemIndex = 3 then
         sql.Add(' and I.qtde > (select  sum(Qtde_Comp) FROM Ordem_CompraItem WHERE ORD_ID = I.ORD_ID AND MAT_ID = I.MAT_ID) ');


       if rdOrdem.ItemIndex = 0 then sql.add('order by s.id');
       if rdOrdem.ItemIndex = 1 then sql.add('order by S.DT_PROGRAMACAO');
       if rdOrdem.ItemIndex = 2 then sql.add('order by O.ORD_ID');
       if rdOrdem.ItemIndex = 3 then sql.add('order by O.DT_CADASTRO');
       Open;

   end;
end;

procedure TfrmAcompanhaCompras.FormCreate(Sender: TObject);
begin
  qrMateriais.Open;
  qrForn.Open;
  qrUsuarios.Open;
end;

procedure TfrmAcompanhaCompras.Button4Click(Sender: TObject);
begin
      if qrBuscaID.AsString = '' then    Abort;
        FMenu.N_SOLICITACAO := qrBuscaID.Value;
      frmCadSolicitaca := TfrmCadSolicitaca.Create(Self);
      frmCadSolicitaca.ShowModal;
      FMenu.N_SOLICITACAO :=  0;
end;

procedure TfrmAcompanhaCompras.Button3Click(Sender: TObject);
begin

   if qrBuscaORD_ID.AsString = '' then Abort;

    OrdemCompra := qrBuscaORD_ID.AsString;
    Application.CreateForm(tFOrdComp, FOrdComp);
   FOrdComp.ShowModal;
    FOrdComp.Release;
    OrdemCompra := '';
end;

procedure TfrmAcompanhaCompras.Button2Click(Sender: TObject);
begin
   frmRelAcompanhaCompras := TfrmRelAcompanhaCompras.Create(Self);
   frmRelAcompanhaCompras.QuickRep1.Preview;
   frmRelAcompanhaCompras.Close;
end;

procedure TfrmAcompanhaCompras.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMaterial.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

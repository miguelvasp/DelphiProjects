unit frmDescartePesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, Mask, comobj,
  Buttons;

type
  TFDescartePesq = class(TForm)
    Panel1: TPanel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    Label11: TLabel;
    MaskEdit2: TMaskEdit;
    Label12: TLabel;
    cboMatPesq: TwwDBLookupCombo;
    Label14: TLabel;
    cboLocal: TwwDBLookupCombo;
    btnBuscar: TButton;
    btnVisualizar: TButton;
    Label9: TLabel;
    cboCCPesq: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    qrMaterial: TADOQuery;
    qrMaterialMAT_DESC: TStringField;
    qrMaterialMAT_ID: TAutoIncField;
    qrMaterialUNI_SIGLA: TStringField;
    qrCCPesq: TADOQuery;
    qrCCPesqCC_Desc: TStringField;
    qrCCPesqCC_ID: TAutoIncField;
    qrLocal: TADOQuery;
    qrLocalDescricao: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    dsExcel: TDataSource;
    Button1: TButton;
    qrBuscaId: TAutoIncField;
    qrBuscaData: TDateTimeField;
    qrBuscaCentroCusto: TStringField;
    qrBuscaLocal: TStringField;
    qrBuscaMATERIAL: TStringField;
    qrBuscaQuantidade: TIntegerField;
    Button2: TButton;
    Button3: TButton;
    qrBuscaReposicao: TBCDField;
    qrBuscaTotal: TBCDField;
    btnGetMaterial: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescartePesq: TFDescartePesq;

implementation

uses UMenu, ufrmDescarteCad, ufrmDescarteMateriaisRel, UfrmBuscaMaterial;

{$R *.DFM}

procedure TFDescartePesq.FormShow(Sender: TObject);
begin
  qrMaterial.Open;
  qrCCPesq.Open;
  qrLocal.Open;
end;

procedure TFDescartePesq.btnBuscarClick(Sender: TObject);
begin
   with qrBusca do begin
       close;
       sql.Clear;
       SQL.Add(
           ' SELECT '+
           '         D.Id, D.Data, C.CC_Desc AS CentroCusto, L.Descricao as Local, '+
           '         CodigoMaterial + '' '' + M.MAT_DESC AS MATERIAL, I.Quantidade, I.Reposicao, I.Quantidade * I.Reposicao as Total '+
           ' FROM DescarteMateriais D  '+
           ' LEFT JOIN DescarteMateriaisItem I ON D.Id = I.IdDescarte  '+
           ' LEFT JOIN Local L ON D.LocalID = L.Local_ID  '+
           ' LEFT JOIN CENTRO_CUSTO C ON D.CC_ID = C.CC_ID  '+
           ' LEFT JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID  where 1 = 1 AND I.STATUS = ' + QuotedStr('F')
       );

       if MaskEdit1.Text <> '  /  /    '  then
          SQL.Add('AND CONVERT(VARCHAR, D.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

       if MaskEdit2.Text <> '  /  /    '  then
          SQL.Add('AND CONVERT(VARCHAR, D.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));

       IF cboMatPesq.Text <> '' then
          sql.Add('AND M.MAT_ID = ' + cboMatPesq.LookupValue);

       IF cboLocal.Text <> '' then
          sql.Add('AND L.LOCAL_ID = ' + cboLocal.LookupValue);

       IF cboCCPesq.Text <> '' then
          sql.Add('AND C.CC_ID = ' + cboCCPesq.LookupValue);

       SQL.Add('ORDER BY D.ID DESC');

       Open;

   end;
end;

procedure TFDescartePesq.Button1Click(Sender: TObject);
begin
    frmDescarteCad := TfrmDescarteCad.Create(Self);
    frmDescarteCad.qrDescarte.Close;
    frmDescarteCad.qrDescarte.Parameters[0].Value := 0;
    frmDescarteCad.ShowModal;
end;

procedure TFDescartePesq.btnVisualizarClick(Sender: TObject);
begin
   if qrBusca.RecordCount > 0 then begin
      frmDescarteCad := TfrmDescarteCad.Create(Self);
      frmDescarteCad.qrDescarte.Close;
      frmDescarteCad.qrDescarte.Parameters[0].Value := qrBuscaId.AsInteger;
      frmDescarteCad.ShowModal;       

   end;
end;

procedure TFDescartePesq.wwDBGrid1DblClick(Sender: TObject);
begin
  btnVisualizar.Click;
end;

procedure TFDescartePesq.Button2Click(Sender: TObject);
begin
    frmDescarteMateriaisRel := TfrmDescarteMateriaisRel.Create(Self);
    frmDescarteMateriaisRel.ShowModal;
end;

procedure TFDescartePesq.Button3Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
 excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  dsExcel.DataSet.First;

  linha := 1;
  //escrevemos os cabeçalhos
 // for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
  //    Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
 // end;
  Excel.Cells[Linha, 1] := 'Código';
  Excel.Cells[Linha, 2] := 'Data';
  Excel.Cells[Linha, 3] := 'Centro de Custo';
  Excel.Cells[Linha, 4] := 'Local';
  Excel.Cells[Linha, 5] := 'Material';
  Excel.Cells[Linha, 6] := 'Qtde';
  Excel.Cells[Linha, 7] := 'Reposição';
  Excel.Cells[Linha, 8] := 'Valor total Reposição';

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;
end;

procedure TFDescartePesq.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMatPesq.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

unit UEstoque_minimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, wwdblook, ExtCtrls,
  RzPanel, RzRadGrp, RzTabs, Db, DBTables, Wwquery, ADODB;

type
  TfrmEstoque_minimo = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzRadioGroup1: TRzRadioGroup;
    cboMarca: TwwDBLookupCombo;
    cboMaterial: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    cbofornecedor: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    RzPageControl2: TRzPageControl;
    TabSheet2: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    Q_MARCA: TwwQuery;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_GRUPO: TwwQuery;
    Q_GRUPOGRU_ID: TAutoIncField;
    Q_GRUPOGRU_DESC: TStringField;
    Q_FORNECEDOR: TwwQuery;
    Q_FORNECEDORFOR_CODI: TStringField;
    Q_FORNECEDORFOR_RAZA: TStringField;
    qrExecProc: TwwQuery;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    chk1: TCheckBox;
    cboTipoMaterial: TComboBox;
    Label5: TLabel;
    BitBtn4: TBitBtn;
    qrConsulta: TADOQuery;
    qrConsultaGRUPO: TStringField;
    qrConsultaMATERIAL: TStringField;
    qrConsultaESTOQUE: TFloatField;
    qrConsultaESTOQUE_MINIMO: TFloatField;
    qrConsultaOC: TFloatField;
    qrConsultaUN: TStringField;
    qrConsultaCRITICO: TStringField;
    qrConsultaMAT_ID: TIntegerField;
    qrConsultaMEDIA: TFloatField;
    qrConsultaQTDESOLICITADA: TFloatField;
    qrConsultaSEL: TStringField;
    qrConsultaID: TAutoIncField;
    qrConsultaUSUARIO: TIntegerField;
    btnGetMaterial: TBitBtn;
    Q_MAT: TADOQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GerarInformacoes;
    procedure cboMaterialExit(Sender: TObject);
    procedure cboMarcaExit(Sender: TObject);
    procedure cboGrupoExit(Sender: TObject);
    procedure cbofornecedorExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque_minimo: TfrmEstoque_minimo;

implementation

uses URelEstoque_minimo, UMenu, UfrmConfirmaSolicitacaoEstoqueMinimo,
  UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmEstoque_minimo.FormCreate(Sender: TObject);
begin
        Q_FORNECEDOR.Open;
        Q_MAT.Open;
        Q_GRUPO.Open;
        Q_MARCA.Open;

end;

procedure TfrmEstoque_minimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmEstoque_minimo := nil;
end;

procedure TfrmEstoque_minimo.BitBtn2Click(Sender: TObject);
begin


  if qrConsulta.Active = False then
        GerarInformacoes;
  frmRelEStoque_minimo := TfrmRelEStoque_minimo.Create(Self);
  frmRelEStoque_minimo.QuickRep1.Preview;
  frmRelEStoque_minimo.Close;
end;

procedure TfrmEstoque_minimo.BitBtn1Click(Sender: TObject);
begin
     GerarInformacoes;

end;

procedure TfrmEstoque_minimo.GerarInformacoes;
VAR sqlstp : string;
begin
sqlstp := 'EXEC [REL_ESTOQUE_MINIMO] ';
	 
	
	
   if cboMaterial.Text <> '' then
        sqlstp := sqlstp + '@MATERIAL = '  + cboMaterial.LookupValue
  else
        sqlstp := sqlstp + '@MATERIAL = 0';

  if cboMarca.Text <> '' then
        sqlstp := sqlstp + ',@MARCA = '  + cboMarca.LookupValue
  else
        sqlstp := sqlstp + ',@MARCA = 0';

  if cboGrupo.Text <> '' then
        sqlstp := sqlstp + ',@GRUPO = '  + cboGrupo.LookupValue
  else
        sqlstp := sqlstp + ',@GRUPO = 0';

  if cbofornecedor.Text <> '' then
        sqlstp := sqlstp + ',@FORNECEDOR = '  + QuotedStr(cbofornecedor.LookupValue)
  else
        sqlstp := sqlstp + ',@FORNECEDOR = '  + QuotedStr('0');

  if RzRadioGroup1.ItemIndex = 0 then
        sqlstp := sqlstp + ',@TIPO = '  + QuotedStr('T')
  else
        sqlstp := sqlstp + ',@TIPO = '  + QuotedStr('N');

  if chk1.Checked then
        sqlstp := sqlstp + ',@CRITICO = '  + QuotedStr('C')
  else
        sqlstp := sqlstp + ',@CRITICO = '  + QuotedStr('');

  sqlstp := sqlstp + ',@USUARIO = '  + FMenu.sqlUsuariosCH.AsString;

  if cboTipoMaterial.ItemIndex = 1 then
     sqlstp := sqlstp + ',@SemLaboratorio = '  + QuotedStr('N')
  else if cboTipoMaterial.ItemIndex = 2 then
     sqlstp := sqlstp + ',@SemLaboratorio = '  + QuotedStr('S')
  else
     sqlstp := sqlstp + ',@SemLaboratorio = '  + QuotedStr('T')   ;

  qrExecProc.sql.clear;
  qrExecProc.sql.add(sqlstp);
  qrExecProc.ExecSQL;
  qrConsulta.Close;
  qrConsulta.SQL.Clear;
  qrConsulta.SQL.Add( ' SELECT * FROM ESTOQUE_MINIMO WHERE ESTOQUE_MINIMO > 0 AND USUARIO = :USUARIO  ');
  if RzRadioGroup1.ItemIndex = 1 then
     qrConsulta.sql.Add(' AND ESTOQUE_MINIMO > ESTOQUE ');

  qrConsulta.sql.Add(' ORDER BY MATERIAL ');


  qrConsulta.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
  qrConsulta.Open;
end;

procedure TfrmEstoque_minimo.cboMaterialExit(Sender: TObject);
begin
  if cboMaterial.LookupValue <> '' then
        cboMaterial.Text := Q_MATMAT_DESC.Value;
end;

procedure TfrmEstoque_minimo.cboMarcaExit(Sender: TObject);
begin
  if cboMarca.LookupValue <> '' then
        cboMarca.Text := Q_MARCAMARCA_DESC.Value;
end;

procedure TfrmEstoque_minimo.cboGrupoExit(Sender: TObject);
begin
        if cboGrupo.LookupValue <> '' then
                cboGrupo.Text := Q_GRUPOGRU_DESC.Value;
end;

procedure TfrmEstoque_minimo.cbofornecedorExit(Sender: TObject);
begin
  if cbofornecedor.LookupValue <> '' then
        cbofornecedor.Text := Q_FORNECEDORFOR_RAZA.Value;
end;

procedure TfrmEstoque_minimo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TfrmEstoque_minimo.BitBtn3Click(Sender: TObject);
begin
  cboMaterial.LookupValue := '';
  cboMaterial.Text := '';

  cboMarca.LookupValue := '';
  cboMarca.Text := '';
    cboGrupo.LookupValue := '';
  cboGrupo.Text := '';
    cbofornecedor.LookupValue := '';
  cbofornecedor.Text := '';
end;

procedure TfrmEstoque_minimo.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    IF qrConsultaCRITICO.AsString <> '' then
    BEGIN
        AFont.Color := clBlack;
        ABrush.Color := clRed;
    end;
end;

procedure TfrmEstoque_minimo.BitBtn4Click(Sender: TObject);
begin
  IF qrConsulta.State in [dsEdit, dsInsert] then
        qrConsulta.Post;
        
  frmConfirmaSolicitacaoEstoqueMinimo := tfrmConfirmaSolicitacaoEstoqueMinimo.create(Self);
  frmConfirmaSolicitacaoEstoqueMinimo.showmodal;
  GerarInformacoes;
end;

procedure TfrmEstoque_minimo.btnGetMaterialClick(Sender: TObject);
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

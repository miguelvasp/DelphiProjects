unit UEstoque_minimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, wwdblook, ExtCtrls,
  RzPanel, RzRadGrp, RzTabs, Db, DBTables, Wwquery;

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
    Q_MAT: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MARCA: TwwQuery;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_GRUPO: TwwQuery;
    Q_GRUPOGRU_ID: TAutoIncField;
    Q_GRUPOGRU_DESC: TStringField;
    Q_FORNECEDOR: TwwQuery;
    Q_FORNECEDORFOR_CODI: TStringField;
    Q_FORNECEDORFOR_RAZA: TStringField;
    qrConsulta: TwwQuery;
    qrExecProc: TwwQuery;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    qrConsultaGRUPO: TStringField;
    qrConsultaMATERIAL: TStringField;
    qrConsultaESTOQUE: TFloatField;
    qrConsultaESTOQUE_MINIMO: TFloatField;
    qrConsultaOC: TFloatField;
    qrConsultaUN: TStringField;
    BitBtn3: TBitBtn;
    chk1: TCheckBox;
    qrConsultaCRITICO: TStringField;
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque_minimo: TfrmEstoque_minimo;

implementation

uses URelEstoque_minimo;

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
begin
   if cboMaterial.Text <> '' then
          qrExecProc.Params[0].AsInteger := StrToInt(cboMaterial.LookupValue)
  else
        qrExecProc.Params[0].AsInteger := 0;

  if cboMarca.Text <> '' then
        qrExecProc.Params[1].AsInteger := StrToInt(cboMarca.LookupValue)
  else
        qrExecProc.Params[1].AsInteger := 0;

  if cboGrupo.Text <> '' then
        qrExecProc.Params[2].AsInteger := StrToInt(cboGrupo.LookupValue)
  else
        qrExecProc.Params[2].AsInteger := 0;

  if cbofornecedor.Text <> '' then
        qrExecProc.Params[3].AsString := cbofornecedor.LookupValue
  else
        qrExecProc.Params[3].AsString := '0';

  if RzRadioGroup1.ItemIndex = 0 then
        qrExecProc.Params[4].AsString := 'T'
  else
        qrExecProc.Params[4].AsString := 'N';
  if chk1.Checked then
        qrExecProc.Params[5].AsString := 'C'
  else
        qrExecProc.Params[5].AsString := '';

  qrExecProc.ExecSQL;

  qrConsulta.Close;
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

end.

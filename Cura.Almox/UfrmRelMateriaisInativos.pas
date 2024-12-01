unit UfrmRelMateriaisInativos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, wwdblook, RzTabs, Db, ADODB, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls;

type
  TfrmRelMateriaisInativos = class(TForm)
    qrGrupo: TADOQuery;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisMAT_ID: TAutoIncField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cboMateriais: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    edtData: TMaskEdit;
    qrBusca: TADOQuery;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaGRU_DESC: TStringField;
    qrBuscaData: TDateTimeField;
    wwDBGrid1: TwwDBGrid;
    dsExcel: TDataSource;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    qrBuscaEstoque: TFloatField;
    btnGetMaterial: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Buscar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMateriaisInativos: TfrmRelMateriaisInativos;

implementation

uses UMenu, frmReportMateriaisInativos, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmRelMateriaisInativos.Buscar;
var sql : WideString;
begin
    sql := 'SELECT * FROM vwMateriaisInativos WHERE Convert(varchar, Data, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtData.Text)));
    if cboMateriais.Text <> '' then
        sql := sql + ' AND MAT_ID = ' + cboMateriais.LookupValue;

    if  Edit1.Text <> '' then
        SQL := SQL + ' AND MAT_DESC LIKE ' + QuotedStr('%' + Edit1.Text + '%');

    IF cboGrupo.Text <> '' THEN
        SQL := SQL + ' AND GRU_ID = ' + cboGrupo.LookupValue;
    if RadioGroup1.ItemIndex = 0 then
        SQL := SQL + ' ORDER BY GRU_DESC, MAT_DESC'
    else
        sql := sql + ' ORDER BY DATA DESC ';
    qrBusca.Close;
    qrBusca.sql.Clear;
    qrBusca.SQL.Add(sql);
    qrBusca.Open;
end;

procedure TfrmRelMateriaisInativos.FormCreate(Sender: TObject);
begin
  qrGrupo.Open;
  qrMateriais.Open;
  edtData.Text := DateToStr(Now);
end;

procedure TfrmRelMateriaisInativos.BitBtn1Click(Sender: TObject);
begin
   Buscar;
end;

procedure TfrmRelMateriaisInativos.BitBtn2Click(Sender: TObject);
var filtros: string;
begin

  filtros := filtros + 'DATA DE CONSULTA: ' + edtData.Text;
  frmRepMateriaisInativos := TfrmRepMateriaisInativos.Create(Self);
  frmRepMateriaisInativos.lbPosicao.Caption := filtros;
  frmRepMateriaisInativos.QuickRep1.Preview; 
end;

procedure TfrmRelMateriaisInativos.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMateriais.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

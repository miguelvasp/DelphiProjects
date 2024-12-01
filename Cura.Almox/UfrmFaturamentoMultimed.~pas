unit UfrmFaturamentoMultimed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, Mask, ExtCtrls, Db, ADODB;

type
  TfrmFaturamentoMultimed = class(TForm)
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    edtFatDe: TEdit;
    edtFatAte: TEdit;
    Label2: TLabel;
    cboConvenio: TwwDBLookupCombo;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    lbSoma: TLabel;
    wwDBGrid1: TwwDBGrid;
    qrConvenio: TADOQuery;
    qrBusca: TADOQuery;
    qrBuscaNRFATURAMENTO: TWideStringField;
    qrBuscaDTFATURA: TDateTimeField;
    qrBuscaMES: TWideStringField;
    qrBuscaANO: TWideStringField;
    qrBuscaNOMECONVENIO: TStringField;
    qrBuscaCLI_CODI_FINANC: TBCDField;
    qrBuscaCLI_CGC_FINANC: TStringField;
    qrBuscaLancar: TStringField;
    qrBuscaAgrupar: TStringField;
    qrBuscaId: TAutoIncField;
    qrConvenioNOMECONVENIO: TStringField;
    DataSource1: TDataSource;
    qrBuscaVALORFATURADO: TBCDField;
    qrSoma: TADOQuery;
    qrSomaSOMA: TBCDField;
    qrLimpaSelecao: TADOQuery;
    qrProc: TADOQuery;
    lbAgrupar: TLabel;
    qrBuscaNSU: TStringField;
    Label4: TLabel;
    edtNSUIni: TEdit;
    edtNSUFim: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Buscar;
    procedure Button1Click(Sender: TObject);
    procedure qrBuscaLancarChange(Sender: TField);
    procedure qrBuscaAgruparChange(Sender: TField);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure cboConvenioCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFaturamentoMultimed: TfrmFaturamentoMultimed;

implementation

uses CPPMENU, UfrmFaturamentoMultimedAgrupa,
  UfrmFaturamentoMultimedImprimir;

{$R *.DFM}

procedure TfrmFaturamentoMultimed.FormShow(Sender: TObject);
begin
   qrConvenio.Open;
   MaskEdit1.Text := FormatDateTime('dd/MM/yyyy', Now);
   MaskEdit2.Text := FormatDateTime('dd/MM/yyyy', Now);
end;

procedure TfrmFaturamentoMultimed.Buscar;
begin

   qrLimpaSelecao.ExecSQL;


   with qrBusca do begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM TAB_FATURAMENTO_MMED WHERE REC_ID IS null');
      sql.Add(' AND CONVERT(VARCHAR, DTFATURA, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))));
      sql.Add(' AND CONVERT(VARCHAR, DTFATURA, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))));

      if edtFatDe.Text <> '' then
        sql.Add(' AND NRFATURAMENTO >= ' + QuotedStr(edtFatDe.Text));

      if edtFatAte.Text <> '' then
        SQL.Add(' AND NRFATURAMENTO <= ' + QuotedStr(edtFatAte.Text));

      IF cboConvenio.Text <> '' then
        SQL.Add(' AND NOMECONVENIO = ' + QuotedStr(cboConvenio.Text));

      if edtNSUIni.Text <> '' then
        SQL.Add(' AND NSU >= ' + QuotedStr(edtNSUIni.Text));

      if edtNSUFim.Text <> '' then
        SQL.Add(' AND NSU <= ' + QuotedStr(edtNSUFim.Text));

      SQL.Add('ORDER BY DTFATURA');
      Open;

   end;
end;

procedure TfrmFaturamentoMultimed.Button1Click(Sender: TObject);
begin
  Buscar;
end;

procedure TfrmFaturamentoMultimed.qrBuscaLancarChange(Sender: TField);
begin
qrBusca.Post;
end;

procedure TfrmFaturamentoMultimed.qrBuscaAgruparChange(Sender: TField);
begin
qrBusca.Post;
lbAgrupar.Caption := qrBuscaNRFATURAMENTO.Value;
end;

procedure TfrmFaturamentoMultimed.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
     with qrSoma do begin
         close;
         sql.Clear;
         sql.Add('SELECT SUM(VALORFATURADO) AS SOMA FROM TAB_FATURAMENTO_MMED WHERE LANCAR = ''S'' OR AGRUPAR = ''S'' ');
         Open;
     end;
     lbSoma.Caption := 'Total Seleção: R$ ' + FormatFloat('###,###,##0.00', qrSomaSOMA.AsFloat);
end;

procedure TfrmFaturamentoMultimed.Button3Click(Sender: TObject);
begin
   frmFaturamentoMultimedAgrupa := TfrmFaturamentoMultimedAgrupa.Create(Self);
   frmFaturamentoMultimedAgrupa.lbTipo.Caption := 'A';
   frmFaturamentoMultimedAgrupa.edtNotaFiscal.Text := lbAgrupar.Caption + 'F';
   frmFaturamentoMultimedAgrupa.ShowModal;
   Buscar;
end;

procedure TfrmFaturamentoMultimed.cboConvenioCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  Buscar;
end;

procedure TfrmFaturamentoMultimed.Button4Click(Sender: TObject);
begin
   frmFaturamentoMultimedAgrupa := TfrmFaturamentoMultimedAgrupa.Create(Self);
   frmFaturamentoMultimedAgrupa.lbTipo.Caption := 'L';
   frmFaturamentoMultimedAgrupa.edtNotaFiscal.Visible := False;
   frmFaturamentoMultimedAgrupa.Label2.Visible := False;
   frmFaturamentoMultimedAgrupa.ShowModal;
   Buscar;
end;

procedure TfrmFaturamentoMultimed.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TfrmFaturamentoMultimed.Button2Click(Sender: TObject);
var filtros: string;
begin
  filtros := 'Data: ' + MaskEdit1.Text + ' Até: ' + MaskEdit2.Text;

  if edtFatDe.Text <> '' then
        filtros := filtros + ' NR Fat:' + edtFatDe.Text;
  if edtFatAte.Text <> '' then
        filtros := filtros + ' NR Fat até: ' + edtFatAte.Text;
  if cboConvenio.Text <> '' then
        filtros := filtros + ' Convênio: ' + cboConvenio.Text;

  frmFaturamentoMultimedImprimir := TfrmFaturamentoMultimedImprimir.Create(Self);
  frmFaturamentoMultimedImprimir.QRMemo1.Lines.Text := filtros;
  frmFaturamentoMultimedImprimir.RelReceb.Preview;
end;

end.

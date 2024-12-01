unit UfrmRateiaManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, RzButton, StdCtrls, Mask, ExtCtrls,
  RzPanel, RzRadGrp, ComObj;

type
  TfrmRateiaManifesto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    wwDBGrid1: TwwDBGrid;
    STP_RATEIO: TADOStoredProc;
    qrMani: TADOQuery;
    qrManiID: TAutoIncField;
    qrManiMANI_ID: TIntegerField;
    qrManiDATA: TDateTimeField;
    qrManiCLIN_NOME: TStringField;
    qrManiPESO: TFloatField;
    qrManiVALOR: TFloatField;
    qrManiTIPO: TStringField;
    qrManiCH: TIntegerField;
    dsMani: TDataSource;
    qrListaMani: TADOQuery;
    qrListaManiMANI_ID: TAutoIncField;
    qrListaManiMANI_ENT_COL: TStringField;
    qrListaManiVLR_FRETE: TFloatField;
    qrListaManiMANI_DATA: TDateTimeField;
    qrManiT: TStringField;
    RzRadioGroup1: TRzRadioGroup;
    qrAux: TADOQuery;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrManiCalcFields(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Abrir;
    procedure RzRadioGroup1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRateiaManifesto: TfrmRateiaManifesto;

implementation

uses UMenu, UAbTabelas, UfrmRelRateioManifesto;

{$R *.DFM}

procedure TfrmRateiaManifesto.RzBitBtn1Click(Sender: TObject);
VAR D1, D2 : TDateTime;
begin
    try
        D1 := StrToDate(MaskEdit1.Text);
        D2 := StrToDate(MaskEdit2.Text);
    except
        MessageBox(Self.Handle, 'Data inválida', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end;


    with qrAux do begin
        Close;
        sql.Clear;
        sql.Add('delete from MANIFESTO_RATEIO where ch = ' + FMenu.SqlUsuariosCH.AsString);
        ExecSQL;
    end;

    qrListaMani.Close;
    qrListaMani.Parameters[0].Value := FormatDateTime('YYYYMMDD',D1);
    qrListaMani.Parameters[1].Value := FormatDateTime('YYYYMMDD',D2);
    qrListaMani.Open;
    qrListaMani.Last;
    Application.CreateForm(TFAbTabelas, FAbTabelas);
    FAbTabelas.Gauge1.MaxValue := qrListaMani.RecordCount;
    FAbTabelas.Show;
    FAbTabelas.RePaint;

    qrListaMani.First;
    while not qrListaMani.Eof do begin
        FAbTabelas.Gauge1.Progress := FAbTabelas.Gauge1.Progress + 1;
        STP_RATEIO.Parameters[0].Value :=  qrListaManiMANI_ID.Value;
        STP_RATEIO.Parameters[1].Value :=  qrListaManiMANI_ENT_COL.Value;
        STP_RATEIO.Parameters[2].Value :=  qrListaManiVLR_FRETE.Value;
        STP_RATEIO.Parameters[3].Value :=  qrListaManiMANI_DATA.Value;
        STP_RATEIO.Parameters[4].Value := FMenu.SqlUsuariosCH.Value;
        //STP_RATEIO.Prepared := True;
        STP_RATEIO.ExecProc;
        
        Application.ProcessMessages;
        qrListaMani.Next;
    end;

    FAbTabelas.Close;
    FAbTabelas.Release;

    Application.ProcessMessages;

    Abrir;

    RzBitBtn2.Enabled := True;
    RzBitBtn3.Enabled := True;

end;

procedure TfrmRateiaManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrMani.close;
   Action := caFree;
   frmRateiaManifesto := nil;
end;

procedure TfrmRateiaManifesto.qrManiCalcFields(DataSet: TDataSet);
begin
  IF qrManiTIPO.Value = 'E' then
        qrManiT.Value := 'Entrega'
  else
        qrManiT.Value := 'Coleta';
end;

procedure TfrmRateiaManifesto.RzBitBtn2Click(Sender: TObject);
begin
      frmRelRateioManifesto := TfrmRelRateioManifesto.Create(Self);
      frmRelRateioManifesto.lbFiltros.Caption := 'Período de ' + MaskEdit1.Text + ' até ' + MaskEdit2.Text;
      frmRelRateioManifesto.QuickRep1.Preview;
      frmRelRateioManifesto.Close;
end;

procedure TfrmRateiaManifesto.Abrir;
begin
    qrMani.close;
    qrMani.sql.Clear;
    qrMani.sql.Add(
       ' SELECT distinct * FROM MANIFESTO_RATEIO '  +
       ' where ch = ' + FMenu.SqlUsuariosCH.AsString
    );

    case RzRadioGroup1.ItemIndex of
        0 : qrMani.SQL.Add('order by mani_id');
        1 : qrMani.SQL.Add('order by data');
        2 : qrMani.sql.Add('order by clin_nome');
        3 : qrMani.SQL.Add('order by valor');
        4 : qrMani.SQL.Add('order by tipo');
    end;
    qrMani.Open;
end;

procedure TfrmRateiaManifesto.RzRadioGroup1Click(Sender: TObject);
begin
   Abrir;
end;

procedure TfrmRateiaManifesto.RzBitBtn3Click(Sender: TObject);
Const
  // SheetType
  XlChart = -4109;
  XlWorksheet = -4167;
  // WBATemplate
  XlWBATWorksheet = -4167;
  XlWBATChart = -4109;
  // Page Setup
  XlPortrait = 1;
  XlLandscape = 2;
  XlPaperA4 = 9;
  // Format Cells
  XlBottom = -4107;
  XlLeft = -4131;
  XlRight = -4152;
  XlTop = -4160;
  // Text Alignment
  XlHAlignCenter = -4108;
  XlVAlignCenter = -4108;
  // Cell Borders
  XlThick = 4;
  XlThin = 2;
Var
  objExcel,Sheet: OleVariant;
  linha : Integer;
  total : Integer;
  celula :string;
  Periodos : Integer;
begin
    objExcel := CreateOleObject('Excel.Application');

    objExcel.Workbooks.Add;
    objExcel.Workbooks[1].Sheets.Add;
    objExcel.Workbooks[1].WorkSheets[1].Name := 'Manifesto';
    Sheet := objExcel.Workbooks[1].WorkSheets['Manifesto'];

    linha := 1;

    Sheet.cells[linha,1] := 'Manifesto';
    Sheet.cells[linha,2] := 'Data';
    Sheet.cells[linha,3] := 'Cliente';
    Sheet.cells[linha,4] := 'Peso';
    Sheet.cells[linha,5] := 'valor';
    Sheet.cells[linha,6] := 'tipo';



    Sheet.Range['A1'].ColumnWidth := 9;
    Sheet.Range['B1'].ColumnWidth := 12;
    Sheet.Range['C1'].ColumnWidth := 33;
    Sheet.Range['D1'].ColumnWidth := 12;
    Sheet.Range['E1'].ColumnWidth := 13;
    Sheet.Range['F1'].ColumnWidth := 9;

    qrMani.First;
    while not qrMani.Eof do begin
        Inc(linha);
        Sheet.cells[linha,1] := qrManiMANI_ID.Value;
        sheet.cells[linha,2].NumberFormat := 'dd/mm/aaaa';
        Sheet.cells[linha,2] := qrManiDATA.Value;
        Sheet.cells[linha,3] := qrManiCLIN_NOME.Value;
        Sheet.cells[linha,4] := qrManiPESO.Value;
        Sheet.cells[linha,5] := qrManiVALOR.Value;
        Sheet.cells[linha,5].Style := 'Currency';
        Sheet.cells[linha,6] := qrManit.Value;
        qrMani.Next;
    end;



    objExcel.Visible := True;


end;

end.

unit UCons_nfcoletadas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzButton, Mask, StdCtrls, ExtCtrls, Db, wwdblook, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, DBClient, Provider, ComObj;

type
  TfrmNotasColeta = class(TForm)
    Panel1: TPanel;
    qrBusca: TwwQuery;
    Label1: TLabel;
    edtMani: TEdit;
    Label2: TLabel;
    EDTNF: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cboNBF: TwwDBLookupCombo;
    cboFinal: TwwDBLookupCombo;
    qrBuscaCNF_ID: TAutoIncField;
    qrBuscaMANI_ID: TIntegerField;
    qrBuscaCNF_NF: TStringField;
    qrBuscaCNF_QTDENF: TIntegerField;
    qrBuscaCNF_UV: TFloatField;
    qrBuscaCNF_PESO: TFloatField;
    qrBuscaCNF_PALLETS: TIntegerField;
    qrBuscaCNF_VALOR: TFloatField;
    qrBuscaCLIF_ID: TIntegerField;
    qrBuscaCLIF_RAZA: TStringField;
    RadioGroup1: TRadioGroup;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    MaskEdit2: TMaskEdit;
    Label6: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    wwDBGrid1: TwwDBGrid;
    dsBusca: TDataSource;
    dspBusca: TDataSetProvider;
    cdsBusca: TClientDataSet;
    cdsBuscaMANI_ID: TIntegerField;
    cdsBuscaCNF_NF: TStringField;
    cdsBuscaCNF_UV: TFloatField;
    cdsBuscaCNF_PESO: TFloatField;
    cdsBuscaCNF_PALLETS: TIntegerField;
    cdsBuscaCNF_VALOR: TFloatField;
    cdsBuscaCLIF_RAZA: TStringField;
    cdsBuscaCNF_ID: TAutoIncField;
    cdsBuscaCNF_QTDENF: TIntegerField;
    cdsBuscaCLIF_ID: TIntegerField;
    qrClientesNBF: TwwQuery;
    qrClientesNBFCLIN_ID: TAutoIncField;
    qrClientesNBFCLIN_RAZA: TStringField;
    qrClienteFinal: TwwQuery;
    qrClienteFinalCLIF_ID: TAutoIncField;
    qrClienteFinalCLIF_RAZA: TStringField;
    qrBuscaCLIN_RAZA: TStringField;
    cdsBuscaCLIN_RAZA: TStringField;
    qrBuscaMANI_OBS: TStringField;
    cdsBuscaMANI_OBS: TStringField;
    RzBitBtn3: TRzBitBtn;
    dsExcel: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cboNBFCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotasColeta: TfrmNotasColeta;

implementation

uses URel_consultaNotasColeta;

{$R *.DFM}

procedure TfrmNotasColeta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmNotasColeta := nil;
end;

procedure TfrmNotasColeta.RzBitBtn1Click(Sender: TObject);
var nf : string;
    D1 , D2 : TDateTime;
begin
  nf := '%' + EDTNF.Text + '%';


  cdsBusca.Close;
  WITH qrBusca do
  begin
      close;
      sql.Clear;
      sql.Add(
       ' SELECT  B.*, C.CLIN_RAZA, D.CLIF_RAZA, A.MANI_OBS '+
       ' FROM MANIFESTO A INNER JOIN COLETA_NF B ON A.MANI_ID = B.MANI_ID '+
       ' INNER JOIN CLIENTENBF C ON A.CLIN_ID = C.CLIN_ID '+
       ' INNER JOIN CLIENTEFINAL D ON B.CLIF_ID = D.CLIF_ID '+
       ' WHERE A.MANI_ENT_COL = ''C'' '
      );


      if (edtMani.Text <> '' ) then
        sql.Add('AND A.MANI_ID = ' + edtMani.Text);

      if (EDTNF.Text <> '') then
        sql.Add('AND B.CNF_NF LIKE ' + QuotedStr(nf));

      if MaskEdit1.Text <> '  /  /    ' then
      begin
        D1 := StrToDate(MaskEdit1.Text);
        sql.Add('AND CONVERT(CHAR(10), A.MANI_DATA, 112 ) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', d1 )));
      end;

      if MaskEdit2.Text <> '  /  /    ' then
      begin
        D2 := StrToDate(MaskEdit2.Text);
        sql.Add('AND CONVERT(CHAR(10), A.MANI_DATA, 112 ) <= '+ QuotedStr(FormatDateTime('YYYYMMDD', d2 )));
      end;

      if cboNBF.Text <> '' then
        sql.Add('AND A.CLIN_ID = ' + cboNBF.LookupValue);

      IF cboFinal.Text <> '' then
        sql.Add('AND B.CLIF_ID = ' + cboFinal.LookupValue);


      case RadioGroup1.ItemIndex of
          0 : sql.Add(' order by CNF_NF');
          1 : sql.Add('order by A.MANI_ID DESC');
          2 : sql.Add('order by C.CLIN_RAZA');
      end;

  end;

  cdsBusca.Open;
end;

procedure TfrmNotasColeta.FormCreate(Sender: TObject);
begin
  qrClientesNBF.Open;
  qrClienteFinal.Open;
end;

procedure TfrmNotasColeta.cboNBFCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   with qrClienteFinal do
   begin
       close;
       sql.Clear;
       sql.Add(
          ' SELECT DISTINCT A.CLIF_ID, A.CLIF_RAZA '+
          ' FROM CLIENTEFINAL A INNER JOIN CLIENTE_NBFINAL B '+
          ' ON A.CLIF_ID = B.CLIF_ID '+
          ' WHERE B.CLIN_ID = ' + cboNBF.LookupValue
       );
       Open;
   end;
end;

procedure TfrmNotasColeta.RzBitBtn2Click(Sender: TObject);
var filtros : string;
begin
   if edtMani.Text <> '' then
        filtros := 'Manifesto: ' + edtMani.Text;
   if EDTNF.Text <> '' then
        filtros := filtros + ' - Nota Fiscal: ' + EDTNF.Text;

   if MaskEdit1.Text <> '  /  /    ' then
        filtros := filtros + ' - de: ' + MaskEdit1.Text;

   if MaskEdit2.Text <> '  /  /    ' then
        filtros := filtros + ' - Até: ' + MaskEdit2.Text;

   if cboNBF.Text <> '' then
        filtros := filtros + ' - Cliente NBF: ' + cboNBF.Text;

   if cboFinal.Text <> '' then
        filtros := filtros + ' - Cliente Final: ' + cboFinal.Text;

  frmRel_consultaNotasColeta :=  TfrmRel_consultaNotasColeta.Create(Self);
  frmRel_consultaNotasColeta.QRMemo1.Lines.Text := filtros;
  frmRel_consultaNotasColeta.QuickRep1.preview;
  frmRel_consultaNotasColeta.close;
end;

procedure TfrmNotasColeta.RzBitBtn3Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

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

end.

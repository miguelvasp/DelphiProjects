unit UfrmRelClienteFinal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, ComObj,
  ComCtrls;

type
  TfrmRelClienteFinal = class(TForm)
    qrCliente: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    GroupBox1: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Button1: TButton;
    dsExcel: TDataSource;
    qrFinal: TADOQuery;
    qrFinalCLIF_ID: TAutoIncField;
    qrFinalCLIF_PESSOA: TStringField;
    qrFinalCLIF_RAZA: TStringField;
    qrFinalCLIF_NOME: TStringField;
    qrFinalCLIF_CGCCPF: TStringField;
    qrFinalCLIF_INSCRG: TStringField;
    qrFinalCLIF_ENDERECO: TStringField;
    qrFinalCLIF_ENDERECO_COMPL: TStringField;
    qrFinalCLIF_ENDERECO_BAIRRO: TStringField;
    qrFinalUF_SIGLA: TStringField;
    qrFinalCLIF_CEP: TStringField;
    qrFinalCLIF_TEL1: TStringField;
    qrFinalCLIF_TEL2: TStringField;
    qrFinalCLIF_FAX: TStringField;
    qrFinalCLIF_EMAIL: TStringField;
    qrFinalCLIF_CONTATO: TStringField;
    qrFinalCLIF_CARGAPALLET: TStringField;
    qrFinalCLIE_ENDERECO: TStringField;
    qrFinalCLIE_ENDERECO_COMPL: TStringField;
    qrFinalCLIE_ENDERECO_BAIRRO: TStringField;
    qrFinalCLIE_MUNICIPIO: TStringField;
    qrFinalCLIE_UF_SIGLA: TStringField;
    qrFinalCLIE_CEP: TStringField;
    qrFinalCLI_HORARIO: TStringField;
    qrFinalCLI_VL_DESCARGA: TFloatField;
    qrFinalCLI_OBS: TStringField;
    qrFinalMUN_NOME: TStringField;
    qrFinalCLIENTE_NBF: TStringField;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qrFinalCalcFields(DataSet: TDataSet);
    procedure GerarExcelDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelClienteFinal: TfrmRelClienteFinal;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelClienteFinal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelClienteFinal := nil;
end;

procedure TfrmRelClienteFinal.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
end;

procedure TfrmRelClienteFinal.Button1Click(Sender: TObject);
begin

   with qrFinal do begin
       Close;
       sql.Clear;
       sql.Add('SELECT  DISTINCT A.*, C.MUN_NOME '+
	
               ' FROM CLIENTEFINAL A INNER JOIN CLIENTE_NBFINAL B  '+
               ' ON A.CLIF_ID = B.CLIF_ID INNER JOIN MUNICIPIO C  '+
               ' ON A.MUN_ID = C.MUN_ID ');

       if wwDBLookupCombo1.Text <> '' then  begin
                sql.Add('WHERE B.CLIN_ID = ' + wwDBLookupCombo1.LookupValue);
       end;

       sql.Add('ORDER BY CLIF_RAZA');
       Open;
   end;

   GerarExcelDataset;

end;


procedure TfrmRelClienteFinal.GerarExcelDataset;
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

  dsExcel.DataSet.Last;
  ProgressBar1.Position := 0;
  ProgressBar1.Max :=  dsExcel.DataSet.RecordCount;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);

      ProgressBar1.Position := ProgressBar1.Position + 1;

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

  ProgressBar1.Position := 0;


end;

procedure TfrmRelClienteFinal.qrFinalCalcFields(DataSet: TDataSet);
begin
   qrFinalCLIENTE_NBF.Value := qrClienteCLIN_RAZA.AsString;
end;

end.

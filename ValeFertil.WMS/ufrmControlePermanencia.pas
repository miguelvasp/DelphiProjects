unit ufrmControlePermanencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, ADODB, ComObj;

type
  TfrmControlePermanencia = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    cboContrato: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    qrCliente: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    qrContrato: TADOQuery;
    qrContratoCTT_ID: TAutoIncField;
    qrContratoCTT_NOME: TStringField;
    STP_PERMANENCIA: TADOStoredProc;
    STP_PERMANENCIANF: TStringField;
    STP_PERMANENCIADtEntrada: TDateTimeField;
    STP_PERMANENCIADtEntrega: TDateTimeField;
    STP_PERMANENCIADiasIsentos: TIntegerField;
    STP_PERMANENCIAPeso: TFloatField;
    STP_PERMANENCIAQuinzenas: TIntegerField;
    STP_PERMANENCIAValorportonelada: TFloatField;
    STP_PERMANENCIATotal: TFloatField;
    dsExcel: TDataSource;
    qrBusca: TADOQuery;
    qrBuscaNF: TStringField;
    qrBuscaDtEntrada: TDateTimeField;
    qrBuscaDtEntrega: TDateTimeField;
    qrBuscaPeso: TFloatField;
    qrBuscaQuinzenas: TIntegerField;
    qrBuscaValorportonelada: TFloatField;
    qrBuscaTotal: TFloatField;
    qrBuscaDiasIsentos: TIntegerField;
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlePermanencia: TfrmControlePermanencia;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmControlePermanencia.wwDBLookupCombo1Exit(Sender: TObject);
begin
  if wwDBLookupCombo1.Text <> '' then begin
    cboContrato.Text := '';
    qrContrato.close;
    qrContrato.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
    qrContrato.Open;
  end;
end;

procedure TfrmControlePermanencia.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
end;

procedure TfrmControlePermanencia.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;

begin
   IF wwDBLookupCombo1.Text = '' then begin
       ShowMessage('Informe o cliente');
       Abort;
   end;

   STP_PERMANENCIA.Parameters.ParamByName('@DATAI').Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
   STP_PERMANENCIA.Parameters.ParamByName('@DATAF').Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
   STP_PERMANENCIA.Parameters.ParamByName('@CLIN_ID').Value := StrToInt(wwDBLookupCombo1.LookupValue);
   if cboContrato.Text <> '' then
        STP_PERMANENCIA.Parameters.ParamByName('@CTT_ID').Value := StrToInt(cboContrato.LookupValue)
   else
        STP_PERMANENCIA.Parameters.ParamByName('@CTT_ID').Value := 0;
   STP_PERMANENCIA.ExecProc;

   qrBusca.Close;
   qrBusca.Open;

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
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.0000',dsExcel.DataSet.Fields[i].AsFloat));
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

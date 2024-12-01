unit UfrmRelClienteNBF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, ComObj;

type
  TfrmRelClienteNBF = class(TForm)
    GroupBox1: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Button1: TButton;
    qrCliente: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_PESSOA: TStringField;
    qrClienteCLIN_RAZA: TStringField;
    qrClienteCLIN_NOME: TStringField;
    qrClienteCLIN_CGCCPF: TStringField;
    qrClienteCLIN_INSCRG: TStringField;
    qrClienteCLIN_ENDERECO: TStringField;
    qrClienteCLIN_ENDERECO_COMPL: TStringField;
    qrClienteCLIN_ENDERECO_BAIRRO: TStringField;
    qrClienteUF_SIGLA: TStringField;
    qrClienteCLIN_CEP: TStringField;
    qrClienteCLIN_TEL1: TStringField;
    qrClienteCLIN_TEL2: TStringField;
    qrClienteCLIN_FAX: TStringField;
    qrClienteCLIN_EMAIL: TStringField;
    qrClienteCLIN_WEB: TStringField;
    qrClienteCLIN_ENDC: TStringField;
    qrClienteCLIN_END_COMPLC: TStringField;
    qrClienteCLIN_END_BAIRC: TStringField;
    qrClienteUF_SIGLAC: TStringField;
    qrClienteCLIN_CEPC: TStringField;
    qrClienteCLIN_TELC: TStringField;
    qrClienteCLIN_FAXC: TStringField;
    qrClienteCLIN_EMAILC: TStringField;
    dsExcel: TDataSource;
    qrClienteMUN_NOME: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure GerarExcelDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelClienteNBF: TfrmRelClienteNBF;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelClienteNBF.Button1Click(Sender: TObject);
var codigo  : string;
begin
        ///

        if wwDBLookupCombo1.Text <> '' then begin
            codigo := wwDBLookupCombo1.LookupValue;
            with qrCliente do begin
                close;
                sql.Clear;
                sql.Add(
                   ' SELECT * FROM CLIENTENBF A INNER JOIN MUNICIPIO B '  +
                   ' ON A.MUN_ID = B.MUN_ID where clin_id = ' + codigo
                );
                Open;
            end;
        end
        else begin
            with qrCliente do begin
                close;
                sql.Clear;
                sql.Add(
                   ' SELECT * FROM CLIENTENBF A INNER JOIN MUNICIPIO B '  +
                   ' ON A.MUN_ID = B.MUN_ID order by clin_raza '
                );
                Open;
            end;
        end;


        GerarExcelDataset;

end;


procedure TfrmRelClienteNBF.GerarExcelDataset;
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

procedure TfrmRelClienteNBF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelClienteNBF := nil;
end;

procedure TfrmRelClienteNBF.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
end;

end.

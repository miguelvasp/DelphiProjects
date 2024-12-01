unit ufrmContaCorrente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, Mask, ComObj, DBTables, Wwquery;

type
  TfrmContaCorrente = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    edtNota: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    qrCliente: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    STP_Excel: TADOStoredProc;
    qrConta: TADOQuery;
    qrContaData: TDateTimeField;
    qrContaNFEntrada: TStringField;
    qrContaNFRetorno: TStringField;
    qrContaTipo: TStringField;
    qrContaCodigo: TStringField;
    qrContaProduto: TStringField;
    qrContaValorUnit: TFloatField;
    qrContaQtdeEntrada: TFloatField;
    qrContaQtdeSaida: TFloatField;
    qrContaSaldo: TFloatField;
    qrContaValorEntrada: TFloatField;
    qrContaValorSaida: TFloatField;
    qrContaValorSaldo: TFloatField;
    dsExcel: TDataSource;
    qrResumo: TADOQuery;
    qrResumoCodigo: TStringField;
    qrResumoPRODUTO: TStringField;
    qrResumoQtdeEntrada: TFloatField;
    qrResumoQtdeSaida: TFloatField;
    qrResumoValorEntrada: TFloatField;
    qrResumoValorSaida: TFloatField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    Label5: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContaCorrente: TfrmContaCorrente;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmContaCorrente.FormCreate(Sender: TObject);
begin
   qrCliente.Open;
end;

procedure TfrmContaCorrente.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
    qtdeEntrada, qtdeSaida, ValorEntrada, ValorSaida : Real;
    Nota : string;
begin
   STP_Excel.Parameters.ParamByName('@DATAI').Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
   STP_Excel.Parameters.ParamByName('@DATAF').Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
   if wwDBLookupCombo1.Text <> '' then
        STP_Excel.Parameters.ParamByName('@CLIN_ID').Value := StrToInt(wwDBLookupCombo1.LookupValue)
   else
        STP_Excel.Parameters.ParamByName('@CLIN_ID').Value := 0;
   IF edtNota.Text <> '' then
        STP_Excel.Parameters.ParamByName('@NF').Value := edtNota.Text
   else
        STP_Excel.Parameters.ParamByName('@NF').Value := '0';

   IF wwDBLookupCombo2.Text <> '' then
        STP_Excel.Parameters.ParamByName('@PROD').Value := Q_PRODPRO_ID.AsInteger
   else
        STP_Excel.Parameters.ParamByName('@PROD').Value := 0;

   STP_Excel.ExecProc;

   qrConta.close;
   qrConta.Open;

   linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  if wwDBLookupCombo1.Text <> '' then begin
        Excel.Cells[Linha, 1]    := 'Depositante: ' + wwDBLookupCombo1.Text;
        Inc(linha);
  end;
  Excel.Cells[Linha,1] := 'Pesquisa de: ' + MaskEdit1.Text + ' até ' + MaskEdit2.Text;
  Inc(linha);

  Excel.Cells[Linha, 1] := 'Data';
  Excel.Cells[Linha, 2] := 'NF Entrada';
  Excel.Cells[Linha, 3] := 'NF Retorno';
  Excel.Cells[Linha, 4] := 'Tipo';
  Excel.Cells[Linha, 5] := 'Código';
  Excel.Cells[Linha, 6] := 'Produto';
  Excel.Cells[Linha, 7] := 'Valor Unit';
  Excel.Cells[Linha, 8] := 'Entrada';
  Excel.Cells[Linha, 9] := 'Saida';
  Excel.Cells[Linha, 10] := 'Saldo';
  Excel.Cells[Linha, 11] := 'Entrada';
  Excel.Cells[Linha, 12] := 'Saida';
  Excel.Cells[Linha, 13] := 'Saldo';


  i := 0;
  Nota := '';

  qrConta.First;
  while not qrConta.Eof do begin
        Inc(linha);
        Inc(i);

        if (i > 0) and (Nota <> qrContaNFEntrada.AsString)
        then begin
            Excel.Cells[Linha, 7] := 'Totais';
            Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',qtdeEntrada));
            Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00',qtdeSaida));
            Excel.Cells[Linha, 10] :=  StrToFloat(FormatFloat('##0.00',qtdeEntrada - qtdeSaida));
            Excel.Cells[Linha, 11] :=  StrToFloat(FormatFloat('##0.00',ValorEntrada));
            Excel.Cells[Linha, 12] := StrToFloat(FormatFloat('##0.00',ValorSaida));
            Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',ValorEntrada - ValorSaida));
            qtdeEntrada := 0;
            qtdeSaida := 0;
            ValorEntrada := 0;
            ValorSaida := 0;
            Inc(linha);
            Inc(linha);
        end;

        Excel.Cells[Linha, 1] :=  FormatDateTime(' dd/mm/yyyy', qrContaData.AsDateTime);
        Excel.Cells[Linha, 1].NumberFormat := 'm/d/yyyy';
        Excel.Cells[Linha, 2] := qrContaNFEntrada.AsString;
        Excel.Cells[Linha, 3] := qrContaNFRetorno.AsString;
        Excel.Cells[Linha, 4] := qrContaTipo.AsString;
        Excel.Cells[Linha, 5] := qrContaCodigo.AsString;
        Excel.Cells[Linha, 6] := qrContaProduto.AsString;
        Excel.Cells[Linha, 7] := StrToFloat(FormatFloat('##0.00',qrContaValorUnit.AsFloat));
        Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',qrContaQtdeEntrada.AsFloat));
        Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00',qrContaQtdeSaida.AsFloat));
        Excel.Cells[Linha, 10] :=  StrToFloat(FormatFloat('##0.00',qrContaSaldo.AsFloat));
        Excel.Cells[Linha, 11] :=  StrToFloat(FormatFloat('##0.00',qrContaValorEntrada.AsFloat));
        Excel.Cells[Linha, 12] := StrToFloat(FormatFloat('##0.00',qrContaValorSaida.AsFloat));
        Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',qrContaValorSaldo.AsFloat));
        qtdeEntrada := qtdeEntrada + qrContaQtdeEntrada.AsFloat;
        qtdeSaida := qtdeSaida + qrContaQtdeSaida.AsFloat;
        ValorEntrada := ValorEntrada + qrContaValorEntrada.AsFloat;
        ValorSaida := ValorSaida + qrContaValorSaida.AsFloat;

        Nota :=   qrContaNFEntrada.AsString;


      qrConta.Next;
      Application.ProcessMessages;
  end;

  //coloca o ultimo total
  Inc(linha);

  Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',qtdeEntrada));
  Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00',qtdeSaida));
  Excel.Cells[Linha, 10] :=  StrToFloat(FormatFloat('##0.00',qtdeEntrada - qtdeSaida));
  Excel.Cells[Linha, 11] :=  StrToFloat(FormatFloat('##0.00',ValorEntrada));
  Excel.Cells[Linha, 12] := StrToFloat(FormatFloat('##0.00',ValorSaida));
  Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',ValorEntrada - ValorSaida));
  qtdeEntrada := 0;
  qtdeSaida := 0;
  ValorEntrada := 0;
  ValorSaida := 0;
  Inc(linha);


  //criamos o resumo
  linha := linha + 3;
  
  Excel.Cells[Linha, 5] := 'Código';
  Excel.Cells[Linha, 6] := 'Produto';
  Excel.Cells[Linha, 7] := 'Valor Unit';
  Excel.Cells[Linha, 8] := 'Entrada';
  Excel.Cells[Linha, 9] := 'Saida';
  Excel.Cells[Linha, 10] := 'Saldo';
  Excel.Cells[Linha, 11] := 'Entrada';
  Excel.Cells[Linha, 12] := 'Saida';
  Excel.Cells[Linha, 13] := 'Saldo';

  qrResumo.Close;
  qrResumo.Open;
  while not qrResumo.Eof do begin
        Inc(linha);
        Excel.Cells[Linha, 5] := qrResumoCodigo.AsString;
        Excel.Cells[Linha, 6] := qrResumoProduto.AsString;
        Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',qrResumoQtdeEntrada.AsFloat));
        Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00',qrResumoQtdeSaida.AsFloat));
        Excel.Cells[Linha, 10] :=  StrToFloat(FormatFloat('##0.00',qrResumoQtdeEntrada.AsFloat - qrResumoQtdeSaida.AsFloat));
        Excel.Cells[Linha, 11] :=  StrToFloat(FormatFloat('##0.00',qrResumoValorEntrada.AsFloat));
        Excel.Cells[Linha, 12] := StrToFloat(FormatFloat('##0.00',qrResumoValorSaida.AsFloat));
        Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',qrResumoValorEntrada.AsFloat - qrResumoValorSaida.AsFloat));
        qtdeEntrada := qtdeEntrada + qrResumoQtdeEntrada.AsFloat;
        qtdeSaida := qtdeSaida + qrResumoQtdeSaida.AsFloat;
        ValorEntrada := ValorEntrada + qrResumoValorEntrada.AsFloat;
        ValorSaida := ValorSaida + qrResumoValorSaida.AsFloat;
        qrResumo.Next;
  end;
  Inc(linha);
  Excel.Cells[Linha, 7] := 'Totais';
  Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',qtdeEntrada));
  Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00',qtdeSaida));
  Excel.Cells[Linha, 10] :=  StrToFloat(FormatFloat('##0.00',qtdeEntrada - qtdeSaida));
  Excel.Cells[Linha, 11] :=  StrToFloat(FormatFloat('##0.00',ValorEntrada));
  Excel.Cells[Linha, 12] := StrToFloat(FormatFloat('##0.00',ValorSaida));
  Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00',ValorEntrada - ValorSaida));
  qtdeEntrada := 0;
  qtdeSaida := 0;
  ValorEntrada := 0;
  ValorSaida := 0;
  Inc(linha);


  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;



end;

procedure TfrmContaCorrente.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
        Q_PROD.Close;
        Q_PROD.Params[0].Value := qrClienteCLIN_ID.AsInteger;
        Q_PROD.Open;
end;

procedure TfrmContaCorrente.wwDBLookupCombo1Exit(Sender: TObject);
begin
   Q_PROD.Close;
   Q_PROD.Params[0].Value := qrClienteCLIN_ID.AsInteger;
   Q_PROD.Open;
   wwDBLookupCombo2.Enabled := True;
end;

end.

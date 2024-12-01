unit UfrmDespesasFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, RzPanel, RzTabs, Db, ADODB, RzButton, Grids,
  Wwdbigrd, Wwdbgrid, wwdblook, DBClient, Provider;

type
  TfrmDespesasFrete = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    cboTrans: TwwDBLookupCombo;
    Label4: TLabel;
    cboTipo: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    qrTrans: TADOQuery;
    qrTransTRANS_ID: TAutoIncField;
    qrTransTRANS_FANTASIA: TStringField;
    dspTrans: TDataSetProvider;
    cdsTrans: TClientDataSet;
    cdsTransTRANS_FANTASIA: TStringField;
    cdsTransTRANS_ID: TAutoIncField;
    qrTipo: TADOQuery;
    qrTipoID: TAutoIncField;
    qrTipoTIPO: TStringField;
    dsDespesas: TDataSource;
    qrDespesas: TADOQuery;
    qrDespesasDE_ID: TAutoIncField;
    qrDespesasTRANS_ID: TIntegerField;
    qrDespesasDATA: TDateTimeField;
    qrDespesasTIPO: TIntegerField;
    qrDespesasVALOR: TFloatField;
    qrDespesasTransportadora: TStringField;
    qrDespesasTipo_desc: TStringField;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure dsDespesasDataChange(Sender: TObject; Field: TField);
    procedure RzBitBtn5Click(Sender: TObject);
    function NumeroParaExtenso(parmNumero: Real): string;
    function ConversaoRecursiva(N: LongWord): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDespesasFrete: TfrmDespesasFrete;

type
   TNumeroStr = string[13];  

const
  Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'três', 'quatro',
    'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
    'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito',
    'dezenove');

  Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta',
    'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');

  Centenas: array[1..9] of TNumeroStr = ('cem', 'duzentos', 'trezentos',
    'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
    'novecentos');

  ErrorString = 'Valor fora da faixa';
  Min = 0.01;
  Max = 4294967295.99;
  Moeda = ' real ';
  Moedas = ' reais ';
  Centesimo = ' centavo ';
  Centesimos = ' centavos ';

implementation

uses UMenu, UfrmAddDespesa, UfrmRelDespesasFrete, ufrmDespesasFreteLote,
  ufrmReciboAdiantamentoFrete;

{$R *.DFM}

procedure TfrmDespesasFrete.FormCreate(Sender: TObject);
begin
  cdsTrans.Open;
  qrTipo.Open;
end;

function TfrmDespesasFrete.NumeroParaExtenso(parmNumero: Real): string;
begin
  if (parmNumero >= Min) and (parmNumero <= Max) then
    begin
      {Tratar reais}
      Result := ConversaoRecursiva(Round(Int(parmNumero)));
      if Round(Int(parmNumero)) = 1 then
        Result := Result + Moeda
      else
        if Round(Int(parmNumero)) <> 0 then
          Result := Result + Moedas;

      {Tratar centavos}
      if not(Frac(parmNumero) = 0.00) then
      begin
        if Round(Int(parmNumero)) <> 0 then
          Result := Result + ' e ';
        Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
        if (Round(Frac(parmNumero) * 100) = 1) then
          Result := Result + centesimo
        else
          Result := Result + centesimos;
      end;
    end
  else
    raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',
      [parmNumero, Min, Max]);
end;



function TfrmDespesasFrete.ConversaoRecursiva(N: LongWord): string;
begin
case N of
    1..19:
     Result := Unidades[N];
    20, 30, 40, 50, 60, 70, 80, 90:
      Result := Dezenas[N div 10] + ' ';
    21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:
      Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
    100, 200, 300, 400, 500, 600, 700, 800, 900:
      Result := Centenas[N div 100] + ' ';
    101..199:
      Result := ' cento e ' + ConversaoRecursiva(N mod 100);
    201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999:
      Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
    1000..999999:
      Result := ConversaoRecursiva(N div 1000) + ' mil ' +
        ConversaoRecursiva(N mod 1000);
    1000000..1999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milhão '
                  + ConversaoRecursiva(N mod 1000000);
    2000000..999999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milhões '
                  + ConversaoRecursiva(N mod 1000000);
    1000000000..1999999999:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilhão '
                  + ConversaoRecursiva(N mod 1000000000);
    2000000000..4294967295:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilhões '
                  + ConversaoRecursiva(N mod 1000000000);
 end;
end;

procedure TfrmDespesasFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmDespesasFrete := nil;
end;

procedure TfrmDespesasFrete.RzBitBtn2Click(Sender: TObject);
begin
  frmAddDespesa := TfrmAddDespesa.Create(Self);
  if qrDespesas.Active = False then
        qrDespesas.Open;
  qrDespesas.Append;
  frmAddDespesa.ShowModal;
end;

procedure TfrmDespesasFrete.wwDBGrid1DblClick(Sender: TObject);
begin
  frmAddDespesa := TfrmAddDespesa.Create(Self);
  qrDespesas.Edit;
  frmAddDespesa.ShowModal;
end;

procedure TfrmDespesasFrete.RzBitBtn1Click(Sender: TObject);
VAR D1, D2 : TDateTime;
begin

        try
            IF  MaskEdit1.Text <> '  /  /    ' then
                D1 := StrToDate(MaskEdit1.Text);
            IF MaskEdit2.Text <> '  /  /    ' then
                D2 := StrToDate(MaskEdit2.Text);
        except
                MessageBox(Self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR)  ;
                Abort;
        end;

        with qrDespesas do
        begin
              close;
              sql.Clear;
              sql.Add(
               ' SELECT * FROM DESPESAS_FRETE WHERE 1 = 1 '
              );

              IF MaskEdit1.Text <> '  /  /    ' THEN
                        SQL.Add(' AND CONVERT(CHAR(10), DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

              IF MaskEdit2.Text <> '  /  /    ' THEN
                        SQL.Add(' AND CONVERT(CHAR(10), DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));

              if cboTrans.Text <> '' then
                        sql.Add(' AND TRANS_ID = ' + cboTrans.LookupValue);

              IF cboTipo.Text <> '' then
                        SQL.Add(' AND TIPO = ' + cboTipo.LookupValue);

              SQL.Add(' ORDER BY DATA DESC');
              Open;

        end;

end;

procedure TfrmDespesasFrete.RzBitBtn3Click(Sender: TObject);
var filtro : string;
begin

  if MaskEdit1.Text <> '  /  /    ' then
        filtro := 'De ' + MaskEdit1.Text;
  if MaskEdit2.Text <> '  /  /    ' then
        filtro := filtro + ' Até ' + MaskEdit2.Text;
  if cboTrans.Text <> '' then
        filtro := filtro + ' Transportadora: ' + cboTrans.Text;

  if cboTipo.Text <> '' then
        filtro := filtro + ' Tipo: ' + cboTipo.Text;


  frmRelDespesasFrete := TfrmRelDespesasFrete.Create(Self);
  frmRelDespesasFrete.QRMemo1.Lines.Text := filtro;
  frmRelDespesasFrete.QuickRep1.Preview;
  frmRelDespesasFrete.close;
end;

procedure TfrmDespesasFrete.RzBitBtn4Click(Sender: TObject);
begin
     frmDespesasFreteLote := TfrmDespesasFreteLote.Create(Self);
     frmDespesasFreteLote.ShowModal;
end;

procedure TfrmDespesasFrete.dsDespesasDataChange(Sender: TObject;
  Field: TField);
begin
   if (qrDespesasTIPO.AsInteger = 17) or (qrDespesasTIPO.AsInteger = 18) then
       RzBitBtn5.Enabled := True
   else
       RzBitBtn5.Enabled := False;
end;

procedure TfrmDespesasFrete.RzBitBtn5Click(Sender: TObject);
var mensagem : WideString;
begin
     frmReciboAdiantamentoFrete := TfrmReciboAdiantamentoFrete.Create(Self);
     mensagem := 'Recebi da Empresa NBF Logistica Assessoria Transporte e Serviços Ltda., a quantia de R$ ' + FormatFloat('###,###,##0.00', qrDespesasVALOR.AsFloat) + ' (' + NumeroParaExtenso(qrDespesasVALOR.AsFloat) + ') referente serviço de frete, prestado na ';
     if qrDespesasTIPO.AsInteger = 17 then
        mensagem := mensagem + ' primeira quinzena de ' + FormatDateTime('MMM', qrDespesasDATA.AsDateTime) + ' de ' + FormatDateTime('YYYY', qrDespesasDATA.AsDateTime);

     if qrDespesasTIPO.AsInteger = 18 then
        mensagem := mensagem + ' segunda quinzena de ' + FormatDateTime('MMM', qrDespesasDATA.AsDateTime) + ' de ' + FormatDateTime('YYYY', qrDespesasDATA.AsDateTime);

     frmReciboAdiantamentoFrete.lbData.Caption := FormatDateTime('dddddd', Now);
     frmReciboAdiantamentoFrete.lbMotorista.Caption := qrDespesasTransportadora.AsString;
     frmReciboAdiantamentoFrete.QRMemo1.Lines.Text := mensagem;
     frmReciboAdiantamentoFrete.QuickRep1.Preview;
     frmReciboAdiantamentoFrete.close;

end;

end.

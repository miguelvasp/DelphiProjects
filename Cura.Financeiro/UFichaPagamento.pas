unit UFichaPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Db, DBTables, Wwquery, ExtCtrls, Qrctrls;

type
  TfrmFichaPagamento = class(TForm)
    QuickRep1: TQuickRep;
    qrPagamento: TwwQuery;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRMemo1: TQRMemo;
    qrPagamentoDocumento: TStringField;
    qrPagamentoRazao: TStringField;
    qrPagamentoemissao: TDateTimeField;
    qrPagamentoVencimentoPrevisto: TDateTimeField;
    qrPagamentoVencimento: TDateTimeField;
    qrPagamentoValorTitulo: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qrPagamentonumero: TIntegerField;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    qrPagamentoFOR_CODI: TStringField;
    qrIpag: TwwQuery;
    qrIpagNumero: TIntegerField;
    qrIpagSequencia: TAutoIncField;
    qrIpagData: TDateTimeField;
    qrIpagDocumento: TStringField;
    qrIpagAbater: TFloatField;
    qrIpagDescAcresc: TFloatField;
    qrIpagValorPago: TFloatField;
    qrIpagDataDebito: TDateTimeField;
    qrIpagTipoBaixa: TStringField;
    qrIpagHistorico: TStringField;
    qrIpagBancoConta: TStringField;
    qrIpagPrepCheque: TStringField;
    qrIpagNUMEROICHE: TIntegerField;
    qrIpagForma_Pag: TStringField;
    qrIpagtx_dolar: TFloatField;
    qrIpagvalor_dolar: TFloatField;
    lbBaixa: TQRLabel;
    lbBanco: TQRLabel;
    lbCheque: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    qrPagamentoFornecedor: TStringField;
    qrPagamentoContaGerencial: TStringField;
    qrPagamentoDescAcresc: TFloatField;
    qrPagamentoValorLiquido: TFloatField;
    qrPagamentoBancoConta: TStringField;
    qrPagamentoMoeda: TStringField;
    qrPagamentoDataMoeda: TDateTimeField;
    qrPagamentoMoedaOriginal: TStringField;
    qrPagamentoDataMoedaOriginal: TDateTimeField;
    qrPagamentoValorOriginal: TFloatField;
    qrPagamentoHistorico: TStringField;
    qrPagamentoFlag: TStringField;
    qrPagamentoSituacao: TStringField;
    qrPagamentoSaldo: TFloatField;
    qrPagamentoFilial: TStringField;
    qrPagamentoConferencia: TStringField;
    qrPagamentoFlag_Fluxo: TStringField;
    qrPagamentoTP_PAG: TStringField;
    qrPagamentoDescricao2: TStringField;
    qrPagamentoBARRAS: TStringField;
    qrPagamentovalor_dolar: TFloatField;
    qrPagamentovalor_dolar_real: TFloatField;
    qrPagamentoDT_COMPETENCIA: TDateTimeField;
    qrPagamentoNOTA: TStringField;
    QRDBText8: TQRDBText;
    qrAux: TwwQuery;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichaPagamento: TfrmFichaPagamento;

implementation

uses U_Funcoes, RelFPagto;

{$R *.DFM}

procedure TfrmFichaPagamento.FormCreate(Sender: TObject);
begin
  qrPagamento.SQL.Clear;
  qrPagamento.sql.Add(' select A.*, b.for_codi '+
                      ' FROM CPAPAGA A INNER JOIN CPAFORN B ON A.Fornecedor = B.FOR_CODI where  1 = 1 ');
 if NUMEROI <> '' then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO >= ' +NUMEROI);
   end;
   if NUMEROF <> '' then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO <= ' +NUMEROF);
   end;
   if CLIENTEI <> '' then
   begin
        qrPagamento.SQL.Add('AND A.FORNECEDOR >= ' +'''' +CLIENTEI +'''');
   end;
   if CLIENTEF <> '' then
   begin
        qrPagamento.SQL.Add('AND A.FORNECEDOR <= ' +'''' +CLIENTEF +'''');
   end;
   if FILIALI <> '' then
   begin
        qrPagamento.SQL.Add('AND A.FILIAL >= ' +'''' +FILIALI +'''');
   end;
   if FILIALF <> '' then
   begin
        qrPagamento.SQL.Add('AND A.FILIAL <= ' +'''' +FILIALF +'''');
   end;
   if CONTAGERENCIALI <> '' then
   begin
        qrPagamento.SQL.Add('AND A.CONTAGERENCIAL >= ' +'''' +CONTAGERENCIALI +'''');
   end;
   if CONTAGERENCIALF <> '' then
   begin
        qrPagamento.SQL.Add('AND A.CONTAGERENCIAL <= ' +'''' +CONTAGERENCIALF +'''');
   end;
   if VENCIMENTOI <> 0.0 then
   begin
        qrPagamento.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) >= ');
        qrPagamento.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOI) +'''');
   end;
   if VENCIMENTOF <> 0.0 then
   begin
        qrPagamento.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) <= ');
        qrPagamento.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOF) +'''');
   end;
   if RECEBIMENTOI <> 0.0 then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        qrPagamento.SQL.Add('CONVERT(CHAR(10),DATA,112) >= ');
        qrPagamento.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''' +')');
   end;
   if RECEBIMENTOF <> 0.0 then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        qrPagamento.SQL.Add('CONVERT(CHAR(10),DATA,112) <= ');
        qrPagamento.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''' +')');
   end;
   if EMISSAOI <> 0.0 then
   begin
        qrPagamento.SQL.Add('AND CONVERT(CHAR(10),A.EMISSAO,112) >= ');
        qrPagamento.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOI) +'''');
   end;
   if EMISSAOF <> 0.0 then
   begin
        qrPagamento.SQL.Add('AND CONVERT(CHAR(10),A.EMISSAO,112) <= ');
        qrPagamento.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOF) +'''');
   end;
   if BANCOCONTAI <> '' then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        qrPagamento.SQL.Add('BANCOCONTA >= ' +'''' +BANCOCONTAI +'''' +')');
   end;
   if BANCOCONTAF <> '' then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        qrPagamento.SQL.Add('BANCOCONTA <= ' +'''' +BANCOCONTAF +'''' +')');
   end;
   if DOCUMENTOI <> '' then
   begin
        qrPagamento.SQL.Add('AND A.DOCUMENTO >= ' +'''' +DOCUMENTOI +'''');
   end;
   if DOCUMENTOF <> '' then
   begin
        qrPagamento.SQL.Add('AND A.DOCUMENTO <= ' +'''' +DOCUMENTOF +'''');
   end;

   if SITU = 0 then
   begin
        qrPagamento.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG)');
   end;
   if SITU = 1 then
   begin
        qrPagamento.SQL.Add('AND A.SALDO > 0');
   end;

   if IDCENTROCUSTO > 0 then
        qrPagamento.SQL.Add(' AND IDCENTROCUSTO = ' + IntToStr(IDCENTROCUSTO));

  If not Lst_Pagtos_Filt.ck_Sim.checked then
  Begin
     qrPagamento.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;

  End;

  If not Lst_Pagtos_Filt.ck_Nao.checked then
  Begin
     qrPagamento.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
  End;

  qrPagamento.SQL.Add(' Order by A.numero ') ;
  qrPagamento.Open;

end;

procedure TfrmFichaPagamento.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
   Valor : WideString;
   Size, i  : Integer;
   baixa : WideString;
   banco : WideString;
   cheque :WideString;
   y : Integer;
begin
  QRMemo1.Lines.Clear;
  Valor := '';
  if qrPagamentoValorTitulo.AsString <> '' then
  begin
       Valor :=   Funcoes.NumeroParaExtenso(qrPagamentoValorTitulo.Value);
       Size := Length(Valor);
       for i := 1 to 270 - Size do
           Valor := Valor + '*';
  end;
  QRMemo1.Lines.Add(copy(Valor,1,85));
  QRMemo1.Lines.add(copy(Valor,86,169));
 // QRMemo1.Lines.add(copy(Valor,170,270));

  with qrIpag do begin
      Close;
      sql.Clear;
      sql.Add(
      'select * from cpaipag where numero = ' + qrPagamentonumero.AsString
      );
      Open;
  end;

  baixa := '';
  banco := '';
  cheque := '';
  y := 0;
  while not qrIpag.Eof do begin
      Inc(y);
      baixa := baixa + IntToStr(y) + ')' + FormatDateTime('dd/mm/yy', qrIpagData.AsDateTime) + ' - R$ ' + FormatFloat('###,###,##0.00', qrIpagValorPago.AsFloat)  ;
      banco := banco + IntToStr(y) + ')' + qrIpagBancoConta.AsString + ' ';
      cheque := cheque + IntToStr(y) + ')' + qrIpagDocumento.AsString + ' ';
      qrIpag.Next;
  end;

   lbBaixa.Caption := baixa;
   lbBanco.Caption := banco;
   lbCheque.Caption := cheque;

end;

procedure TfrmFichaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrPagamento.close;

  Action := caFree;

  frmFichaPagamento := nil;
end;

procedure TfrmFichaPagamento.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  Value :=   qrPagamentoFOR_CODI.AsString + ' - ' + qrPagamentoRazao.AsString;
end;

procedure TfrmFichaPagamento.QRDBText8Print(sender: TObject;
  var Value: String);
begin

  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add(
               'SELECT * FROM CPACONT where con_codi = ' + QuotedStr(qrPagamentoContaGerencial.AsString)
      );
      Open;
  end;

  Value := qrAux.FieldByName('CON_CODI').AsString + ' - ' + qrAux.FieldByname('CON_DESC').AsString;

end;

end.

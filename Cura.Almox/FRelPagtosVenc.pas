unit FRelPagtosVenc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc;

type
  TFRelPagtos = class(TForm)
    RelPagtos: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    Q_RECE: TwwQuery;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRMemo1: TQRMemo;
    QRSubDetail1: TQRSubDetail;
    Q_IREC: TwwQuery;
    DS_RECE: TwwDataSource;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    Q_TOTS: TwwQuery;
    Q_TOTSTOTLIQ: TFloatField;
    Q_TOTSTOTPAG: TFloatField;
    Q_TOTSTOTSAL: TFloatField;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    Q_RECEVENCIMENTO: TDateTimeField;
    Q_RECENUMERO: TIntegerField;
    Q_RECERAZAO: TStringField;
    Q_RECEHISTORICO: TStringField;
    Q_RECEDOCUMENTO: TStringField;
    Q_RECEEMISSAO: TDateTimeField;
    Q_RECEVALORLIQUIDO: TFloatField;
    Q_RECESALDO: TFloatField;
    Q_RECECONTAGERENCIAL: TStringField;
    Q_RECEVPAGO: TFloatField;
    Q_RECEFOR_RAZA: TStringField;
    Q_RECECON_DESC: TStringField;
    Q_IRECNumero: TIntegerField;
    Q_IRECSequencia: TAutoIncField;
    Q_IRECData: TDateTimeField;
    Q_IRECDocumento: TStringField;
    Q_IRECAbater: TFloatField;
    Q_IRECDescAcresc: TFloatField;
    Q_IRECValorPago: TFloatField;
    Q_IRECDataDebito: TDateTimeField;
    Q_IRECTipoBaixa: TStringField;
    Q_IRECHistorico: TStringField;
    Q_IRECBancoConta: TStringField;
    Q_IRECPrepCheque: TStringField;
    Q_RECEDATA: TStringField;
    Q_RECESEQUENCIA: TAutoIncField;
    QRGroup2: TQRGroup;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBImage1: TQRDBImage;
    Q_RECEDESCRICAO2: TStringField;
    Q_RECEVALORTITULO: TFloatField;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure RelPagtosBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelPagtos: TFRelPagtos;
  TOTLIQ : real;
  TOTPAG : real;
  TOTSAL : real;
  TOTLIQF : real;
  TOTPAGF : real;
  TOTSALF : real;
  VENC : string;

implementation

uses RelFPagto, CPPMENU;
{$R *.DFM}

procedure TFRelPagtos.FormCreate(Sender: TObject);
begin
   Q_RECE.SQL.Clear;
   Q_RECE.SQL.Add('SELECT A.VENCIMENTO, A.NUMERO, A.RAZAO, A.DESCRICAO2, A.HISTORICO, A.DOCUMENTO, ');
   Q_RECE.SQL.Add('A.EMISSAO, A.VALORLIQUIDO, A.SALDO, CASE WHEN (SELECT SUM(ABATER) ');
   Q_RECE.SQL.Add('FROM CPAIPAG WHERE NUMERO = A.NUMERO) IS NULL THEN 0 ELSE (SELECT ');
   Q_RECE.SQL.Add('SUM(ABATER) FROM CPAIPAG WHERE NUMERO = A.NUMERO) END AS VPAGO, ');
   Q_RECE.SQL.Add('B.FOR_RAZA, A.CONTAGERENCIAL, A.VALORTITULO, D.CON_DESC, ');

   if TIPO = 0 then
   begin
        Q_RECE.SQL.Add('''' +'11/11/2000' +'''' +' AS DATA, 1 AS SEQUENCIA FROM CPAPAGA A, ');
        Q_RECE.SQL.Add('CPAFORN B, CPACONT D WHERE A.FORNECEDOR = B.FOR_CODI AND ');
        Q_RECE.SQL.Add('A.CONTAGERENCIAL = D.CON_CODI');
   end
   else
   begin
        Q_RECE.SQL.Add('CONVERT(CHAR(10),C.DATA,103) AS DATA, C.SEQUENCIA FROM CPAPAGA A LEFT OUTER ');
        Q_RECE.SQL.Add('JOIN CPAIPAG C ON A.NUMERO = C.NUMERO, CPAFORN B, CPACONT D WHERE ');
        Q_RECE.SQL.Add('A.FORNECEDOR = B.FOR_CODI AND A.CONTAGERENCIAL = D.CON_CODI ');
   end;

   Q_TOTS.SQL.Clear;
   Q_TOTS.SQL.Add('SELECT SUM(A.VALORLIQUIDO) AS TOTLIQ, SUM(A.SALDO) AS TOTSAL, ');
   Q_TOTS.SQL.Add('SUM(C.VALORPAGO) AS TOTPAG FROM CPAPAGA A LEFT OUTER JOIN CPAIPAG C ');
   Q_TOTS.SQL.Add('ON A.NUMERO = C.NUMERO, CPAFORN B ');
   Q_TOTS.SQL.Add('WHERE A.FORNECEDOR = B.FOR_CODI ');

   if NUMEROI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO >= ' +NUMEROI);
        Q_TOTS.SQL.Add('AND A.NUMERO >= ' +NUMEROI);
   end;
   if NUMEROF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO <= ' +NUMEROF);
        Q_TOTS.SQL.Add('AND A.NUMERO <= ' +NUMEROF);
   end;
   if CLIENTEI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.FORNECEDOR >= ' +'''' +CLIENTEI +'''');
        Q_TOTS.SQL.Add('AND A.FORNECEDOR >= ' +'''' +CLIENTEI +'''');
   end;
   if CLIENTEF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.FORNECEDOR <= ' +'''' +CLIENTEF +'''');
        Q_TOTS.SQL.Add('AND A.FORNECEDOR <= ' +'''' +CLIENTEF +'''');
   end;
   if FILIALI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.FILIAL in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
        Q_TOTS.SQL.Add('AND A.FILIAL in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
   end;
  { if FILIALF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.FILIAL <= ' +'''' +FILIALF +'''');
        Q_TOTS.SQL.Add('AND A.FILIAL <= ' +'''' +FILIALF +'''');
   end; }
   if CONTAGERENCIALI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.CONTAGERENCIAL >= ' +'''' +CONTAGERENCIALI +'''');
        Q_TOTS.SQL.Add('AND A.CONTAGERENCIAL >= ' +'''' +CONTAGERENCIALI +'''');
   end;
   if CONTAGERENCIALF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.CONTAGERENCIAL <= ' +'''' +CONTAGERENCIALF +'''');
        Q_TOTS.SQL.Add('AND A.CONTAGERENCIAL <= ' +'''' +CONTAGERENCIALF +'''');
   end;
   if VENCIMENTOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOI) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOI) +'''');
   end;
   if VENCIMENTOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOF) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.VENCIMENTO,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOF) +'''');
   end;
   if RECEBIMENTOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),DATA,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''' +')');
        Q_TOTS.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_TOTS.SQL.Add('CONVERT(CHAR(10),DATA,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''' +')');
        if rTipo = 3 then
        begin
                Q_RECE.SQL.Add('AND CONVERT(CHAR(10),C.DATA,112) >= ');
                Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''');
                Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),C.DATA,112) >= ');
                Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''');
        end;
   end;

   if Lst_Pagtos_Filt.edtCompI.Text <> '  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.DT_COMPETENCIA,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD', StrToDate('01/' +Lst_Pagtos_Filt.edtCompI.Text) ) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.DT_COMPETENCIA,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate('01/' +Lst_Pagtos_Filt.edtCompI.Text)) +'''');
   end;


   if Lst_Pagtos_Filt.edtCompF.Text <> '  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.DT_COMPETENCIA,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD', StrToDate('01/' +Lst_Pagtos_Filt.edtCompF.Text) ) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.DT_COMPETENCIA,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate('01/' +Lst_Pagtos_Filt.edtCompF.Text)) +'''');
   end;


   if RECEBIMENTOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),DATA,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''' +')');
        Q_TOTS.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_TOTS.SQL.Add('CONVERT(CHAR(10),DATA,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''' +')');
        if rTipo = 3 then
        begin
                Q_RECE.SQL.Add('AND CONVERT(CHAR(10),C.DATA,112) <= ');
                Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''');
                Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),C.DATA,112) <= ');
                Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''');
        end;
   end;
   if EMISSAOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.EMISSAO,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOI) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.EMISSAO,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOI) +'''');
   end;
   if EMISSAOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.EMISSAO,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOF) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.EMISSAO,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOF) +'''');
   end;
   if BANCOCONTAI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_RECE.SQL.Add('BANCOCONTA >= ' +'''' +BANCOCONTAI +'''' +')');
        Q_TOTS.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_TOTS.SQL.Add('BANCOCONTA >= ' +'''' +BANCOCONTAI +'''' +')');
   end;
   if BANCOCONTAF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_RECE.SQL.Add('BANCOCONTA <= ' +'''' +BANCOCONTAF +'''' +')');
        Q_TOTS.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_TOTS.SQL.Add('BANCOCONTA <= ' +'''' +BANCOCONTAF +'''' +')');
   end;
   if DOCUMENTOI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.DOCUMENTO >= ' +'''' +DOCUMENTOI +'''');
        Q_TOTS.SQL.Add('AND A.DOCUMENTO >= ' +'''' +DOCUMENTOI +'''');
   end;
   if DOCUMENTOF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.DOCUMENTO <= ' +'''' +DOCUMENTOF +'''');
        Q_TOTS.SQL.Add('AND A.DOCUMENTO <= ' +'''' +DOCUMENTOF +'''');
   end;

   if SITU = 0 then
   begin
        Q_RECE.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG)');
        Q_TOTS.SQL.Add('AND A.NUMERO IN (SELECT NUMERO FROM CPAIPAG)');
   end;
   if SITU = 1 then
   begin
        Q_RECE.SQL.Add('AND A.SALDO > 0');
        Q_TOTS.SQL.Add('AND A.SALDO > 0');
   end;

   if IDCENTROCUSTO > 0 then
   begin
       Q_RECE.SQL.Add(' AND A.IDCENTROCUSTO = ' + IntToStr(IDCENTROCUSTO));
        Q_TOTS.SQL.Add(' AND A.IDCENTROCUSTO = ' + IntToStr(IDCENTROCUSTO));
   end;
 

  If not Lst_Pagtos_Filt.ck_Sim.checked then
  Begin
     Q_RECE.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
     Q_TOTS.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;

  End;

  If not Lst_Pagtos_Filt.ck_Nao.checked then
  Begin
     Q_RECE.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
     Q_TOTS.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;

  End;



   if rTipo = 0 then
   begin
        Q_RECE.SQL.Add('ORDER BY B.FOR_RAZA, A.VENCIMENTO');
        QRGroup1.Expression := 'Q_RECE.FOR_RAZA';
        QRDBText9.DataField := 'FOR_RAZA';
        QRLabel8.Caption := 'Data de Vencimento - Histórico - Desc. Opc.';
        QRLabel16.caption := 'Totais para o fornecedor';
   end;
   if rTipo = 1 then
        Q_RECE.SQL.Add('ORDER BY A.VENCIMENTO, B.FOR_RAZA');
   if rTipo = 2 then
   begin
        Q_RECE.SQL.Add('ORDER BY A.EMISSAO, B.FOR_RAZA, A.VENCIMENTO');
        QRGroup1.Expression := 'Q_RECE.EMISSAO';
        QRDBText9.DataField := 'EMISSAO';
        QRLabel8.Caption := 'Razão Social - Histórico - Desc. Opc.';
        QRLabel15.Caption := 'Venc.';
        Q_RECEVENCIMENTO.DisplayFormat := 'DD/MM/YY';
        QRDBText5.DataField := 'VENCIMENTO';
        Q_RECEEMISSAO.DisplayFormat := 'DD/MM/YYYY';
        QRLabel16.caption := 'Totais na data de emissão';

   end;
   if rTipo = 3 then
   begin
        Q_RECE.SQL.Add('ORDER BY CONVERT(CHAR(10),C.DATA,112), B.FOR_RAZA, A.VENCIMENTO');
        QRGroup1.Expression := 'Q_RECE.DATA';
        QRDBText9.DataField := 'DATA';
        QRGroup2.Expression := 'Q_RECE.SEQUENCIA';
        QRLabel25.Enabled := false;
        QRDBText2.enabled := false;
        QRLabel16.caption := 'Totais na data de pagamento';
        QRLabel15.caption := 'Débito';
        QRLabel12.caption := 'Valor da Baixa';
        QRLabel6.caption := 'Desc./Acresc.';
        QRLabel10.caption := 'Valor Final';
        QRDBText5.DataSet := Q_IREC;
        QRDBText5.DataField := 'DATADEBITO';
        QRDBText6.DataSet := Q_IREC;
        QRDBText6.DataField := 'ABATER';
        QRDBText7.DataSet := Q_IREC;
        QRDBText7.DataField := 'DESCACRESC';
        QRDBText8.DataSet := Q_IREC;
        QRDBText8.DataField := 'VALORPAGO';
        Q_IRECDATADEBITO.DisplayFormat := 'DD/MM/YY';
   end;
   if rTipo = 4 then
   begin
        Q_RECE.SQL.Add('ORDER BY A.CONTAGERENCIAL, B.FOR_RAZA, A.VENCIMENTO');
        QRGroup1.Expression := 'Q_RECE.CONTAGERENCIAL';
        QRDBText9.DataField := 'CON_DESC';
        QRLabel15.Caption := 'Venc.';
        Q_RECEVENCIMENTO.DisplayFormat := 'DD/MM/YY';
        QRDBText5.DataField := 'VENCIMENTO';
        QRLabel16.caption := 'Totais na conta gerencial';
   end;

   Q_RECE.Open;
   Q_TOTS.Open;
   Q_IREC.Open;



end;

procedure TFRelPagtos.QRLabel17Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',totliq);
end;

procedure TFRelPagtos.QRLabel18Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',totpag);
end;

procedure TFRelPagtos.QRLabel19Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',totsal);
end;

procedure TFRelPagtos.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   TOTLIQF := TOTLIQF + TOTLIQ;
   TOTPAGF := TOTPAGF + TOTPAG;
   TOTSALF := TOTSALF + TOTSAL;
   TOTLIQ := 0;
   TOTSAL := 0;
   TOTPAG := 0;
end;

procedure TFRelPagtos.RelPagtosBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
filtro : string;
begin
   QRMemo1.Lines.Clear;
   if (NUMEROI <> '') and (NUMEROF = '') then
        filtro := filtro + 'Nº do CP a partir de ' +NUMEROI +' ||| ';
   if (NUMEROF <> '') and (NUMEROI = '') then
        filtro := filtro + 'Nº do CP até ' +NUMEROF +' ||| ';
   if (NUMEROF <> '') and (NUMEROI <> '') then
        filtro := filtro + 'Nº do CP a partir de ' +NUMEROI +' até ' +NUMEROF +' ||| ';

  if (CLIENTEI <> '') and (CLIENTEF = '') then
        filtro := filtro + 'Fornecedor a partir de ' +CLIENTEI +' ||| ';
  if (CLIENTEF <> '') and (CLIENTEI = '') then
        filtro := filtro + 'Fornecedor até ' +CLIENTEF +' ||| ';
  if (CLIENTEF <> '') and (CLIENTEI <> '') then
        filtro := filtro + 'Fornecedor a partir de ' +CLIENTEI +' até ' +CLIENTEF +' ||| ';

  if (FILIALI <> '') and (FILIALF = '') then
        filtro := filtro + 'Filial a partir de ' +FILIALI +' ||| ';
  if (FILIALI = '') and (FILIALF <> '') then
        filtro := filtro + 'Filial até ' +FILIALF +' ||| ';
  if (FILIALI <> '') and (FILIALF <> '') then
        filtro := filtro + 'Filial a partir de ' +FILIALI +' até ' +FILIALF +' ||| ';

  if (CONTAGERENCIALI <> '') and (CONTAGERENCIALF = '') then
        filtro := filtro + 'Conta Gerencial a partir de ' +CONTAGERENCIALI +' ||| ';
  if (CONTAGERENCIALI = '') and (CONTAGERENCIALF <> '') then
        filtro := filtro + 'Conta Gerencial até ' +CONTAGERENCIALF +' ||| ';
  if (CONTAGERENCIALI <> '') and (CONTAGERENCIALF <> '') then
        filtro := filtro + 'Conta Gerencial a partir de ' +CONTAGERENCIALI +' até ' +CONTAGERENCIALF +' ||| ';

  if (BANCOCONTAI <> '') and (BANCOCONTAF = '') then
        filtro := filtro + 'Banco/Conta a partir de ' +BANCOCONTAI +' ||| ';
  if (BANCOCONTAI = '') and (BANCOCONTAF <> '') then
        filtro := filtro + 'Banco/Conta até ' +BANCOCONTAF +' ||| ';
  if (BANCOCONTAI <> '') and (BANCOCONTAF <> '') then
        filtro := filtro + 'Banco/Conta a partir de ' +BANCOCONTAI +' até ' +BANCOCONTAF +' ||| ';

  if (DOCUMENTOI <> '') and (DOCUMENTOF = '') then
        filtro := filtro + 'Nº do Título a partir de ' +DOCUMENTOI +' ||| ';
  if (DOCUMENTOI = '') and (DOCUMENTOF <> '') then
        filtro := filtro + 'Nº do Título até ' +DOCUMENTOF +' ||| ';
  if (DOCUMENTOI <> '') and (DOCUMENTOF <> '') then
        filtro := filtro + 'Nº do Título a partir de ' +DOCUMENTOI +' até ' +DOCUMENTOF +' ||| ';

  if (VENCIMENTOI <> 0.0) and (VENCIMENTOF = 0.0) then
        filtro := filtro + 'Vencimento a partir ' +FormatDateTime('DD/MM/YYYY',VENCIMENTOI )+' ||| ';
  if (VENCIMENTOI = 0.0) and (VENCIMENTOF <> 0.0) then
        filtro := filtro + 'Vencimento até ' + FormatDateTime('DD/MM/YYYY',VENCIMENTOF )+' ||| ';
  if (VENCIMENTOI <> 0.0) and (VENCIMENTOF <> 0.0) then
        filtro := filtro + 'Vencimento a partir ' +FormatDateTime('DD/MM/YYYY',VENCIMENTOI)
        +' até ' + FormatDateTime('DD/MM/YYYY',VENCIMENTOF )+' ||| ';

  if (RECEBIMENTOI <> 0.0) and (RECEBIMENTOF = 0.0) then
        filtro := filtro + 'Pagamento a partir de ' + formatdatetime('DD/MM/YYYY',RECEBIMENTOI )+' ||| ';
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF <> 0.0) then
        filtro := filtro + 'Pagamento até ' + FormatDateTime('DD/MM/YYYY',RECEBIMENTOF )+' ||| ';
  if (RECEBIMENTOI <> 0.0) and (RECEBIMENTOF <> 0.0) then
        filtro := filtro + 'Pagamento a partir de ' + formatdatetime('DD/MM/YYYY',RECEBIMENTOI)
        +' até ' +FormatDateTime('DD/MM/YYYY',RECEBIMENTOF )+' ||| ';

  if (EMISSAOI <> 0.0) and (EMISSAOF = 0.0) then
        filtro := filtro + 'Emissão a partir de ' + formatdatetime('DD/MM/YYYY',EMISSAOI )+' ||| ';
  if (EMISSAOI = 0.0) and (EMISSAOF <> 0.0) then
        filtro := filtro + 'Emissão até ' + FormatDateTime('DD/MM/YYYY',EMISSAOF )+' ||| ';
  if (EMISSAOI <> 0.0) and (EMISSAOF <> 0.0) then
        filtro := filtro + 'Emissão a partir de ' + formatdatetime('DD/MM/YYYY',EMISSAOI)
        +' até ' +FormatDateTime('DD/MM/YYYY',EMISSAOF )+' ||| ';

  if IDCENTROCUSTO > 0 then
        filtro := filtro + ' || Centro de Custo ' + Lst_Pagtos_Filt.cboCentroCusto.Text + ' ||| ';

  if SITU = 0 then
        filtro := filtro + 'Pagos';
  if SITU = 1 then
        filtro := filtro + 'A Pagar';
  if SITU = 2 then
        filtro := filtro + 'Todos';

  filtro := filtro + ' ||| Fluxo de Caixa: ';
  if (Lst_Pagtos_Filt.ck_Sim.Checked) and (Lst_Pagtos_Filt.ck_Nao.Checked) then
      filtro := filtro + 'Todos';

  if (Lst_Pagtos_Filt.ck_Sim.Checked) and (Lst_Pagtos_Filt.ck_Nao.Checked = False) then
      filtro := filtro + 'Sim';

  if (Lst_Pagtos_Filt.ck_Sim.Checked = False) and (Lst_Pagtos_Filt.ck_Nao.Checked) then
      filtro := filtro + 'Não';

  if (Lst_Pagtos_Filt.ck_Sim.Checked = false) and (Lst_Pagtos_Filt.ck_Nao.Checked = false) then
      filtro := filtro + 'Nenhum';



  QRMemo1.Lines.add(filtro);

  TOTLIQ := 0;
  TOTPAG := 0;
  TOTSAL := 0;
  TOTLIQF := 0;
  TOTPAGF := 0;
  TOTSALF := 0;
end;

procedure TFRelPagtos.QRLabel22Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',TOTLIQF);
end;

procedure TFRelPagtos.QRLabel23Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',TOTPAGF);
end;

procedure TFRelPagtos.QRLabel24Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',TOTSALF);
end;

procedure TFRelPagtos.QRLabel20Print(sender: TObject;
  var Value: String);
begin
   VALUE := FMenu.FUsuario;
end;

procedure TFRelPagtos.QRLabel2Print(sender: TObject; var Value: String);
begin
   if TIPO = 0 then
        value := value + ' Resumido';
   if TIPO = 1 then
        value := value + ' Detalhado';

   case rTipo of
        0: value := value +' - Fornecedor';
        1: value := value +' - Vencimento';
        2: value := value +' - Data de Emissão';
        3: value := value +' - Data de Pagamento';
        4: value := value +' - Conta Gerencial';
   end;
end;

procedure TFRelPagtos.QRLabel9Print(sender: TObject; var Value: String);
begin
   if rTipo = 0 then
        value := Q_RECEVENCIMENTO.displaytext +' - ' +Q_RECEHISTORICO.asstring;
   if rTipo in [1,2,3,4] then
        value := Q_RECERAZAO.asstring +' - ' +Q_RECEHISTORICO.asstring;

   if rTipo in [0,2] then
        value := value + ' - ' + Q_RECEDescricao2.AsString;
end;

procedure TFRelPagtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_RECE.Close;
   Q_IREC.Close;
   Q_TOTS.Close;
end;

procedure TFRelPagtos.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{   if rTipo = 3 then
   begin
        QRDBText13.enabled := false;
        QRDBText14.enabled := false;
        QRDBText15.enabled := false;
        QRLabel22.Enabled := true;
        QRLabel23.Enabled := true;
        QRLabel24.Enabled := true;
   end;}
end;

procedure TFRelPagtos.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if (TIPO = 1) and (Q_IREC.RecordCount > 0) and (rTipo <> 3) then
   begin
        QRGroup2.Height := 33;
        QRSubDetail1.Enabled := true;
        QRLabel25.Enabled := true;
        QRLabel26.Enabled := true;
        QRLabel27.Enabled := true;
        QRLabel28.Enabled := true;
        QRLabel29.Enabled := true;
        QRLabel13.Enabled := true;
   end
   else
   begin
        QRGroup2.Height := 18;
        QRSubDetail1.Enabled := false;
        QRLabel25.Enabled := false;
        QRLabel26.Enabled := false;
        QRLabel27.Enabled := false;
        QRLabel28.Enabled := false;
        QRLabel29.Enabled := false;
        QRLabel13.Enabled := false;
   end;
end;

procedure TFRelPagtos.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   if rTipo <> 3 then
   begin
        TOTLIQ := TOTLIQ + Q_RECEVALORLIQUIDO.Value;
        TOTPAG := TOTPAG + Q_RECEVPAGO.Value;
        TOTSAL := TOTSAL + Q_RECESALDO.Value;
   end
   else
   begin
        TOTLIQ := TOTLIQ + Q_IRECABATER.Value;
        TOTPAG := TOTPAG + Q_IRECDESCACRESc.Value;
        TOTSAL := TOTSAL + Q_IRECVALORPAGO.Value;
   end;
end;

end.


unit FRelRecebVancAnalitico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc, Grids,
  DBGrids;

type
  TFRelRecebAnalitico = class(TForm)
    RelReceb: TQuickRep;
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
    QRLabel7: TQRLabel;
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
    Q_RECEREC_CODI: TIntegerField;
    Q_RECEREC_RAZA: TStringField;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEVPAGO: TFloatField;
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
    Q_RECEREC_CGER: TStringField;
    Q_RECECON_DESC: TStringField;
    Q_RECECLI_RAZA: TStringField;
    QRSubDetail1: TQRSubDetail;
    Q_IREC: TwwQuery;
    DS_RECE: TwwDataSource;
    Q_IRECIRE_CODI: TIntegerField;
    Q_IRECIRE_SEQU: TAutoIncField;
    Q_IRECIRE_DATA: TDateTimeField;
    Q_IRECIRE_FMOV: TStringField;
    Q_IRECIRE_DOCT: TStringField;
    Q_IRECIRE_SALD: TFloatField;
    Q_IRECIRE_VDIF: TFloatField;
    Q_IRECIRE_VTOT: TFloatField;
    Q_IRECIRE_DDEB: TDateTimeField;
    Q_IRECIRE_TBAI: TStringField;
    Q_IRECIRE_OBSE: TStringField;
    Q_IRECIRE_BANC: TStringField;
    Q_IRECIRE_FAUX: TStringField;
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
    Q_RECEIRE_DATA: TStringField;
    Q_RECEIRE_SEQU: TAutoIncField;
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRLabel30: TQRLabel;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_EMIS: TDateTimeField;
    Q_RECEREC_BANC: TStringField;
    Q_PORTF: TwwQuery;
    StringField8: TStringField;
    StringField7: TStringField;
    Q_RECEPORTADOR: TStringField;
    Q_RECEREC_VORI: TFloatField;
    QRLabel31: TQRLabel;
    QRDBText16: TQRDBText;
    Q_RECEREC_DESC: TFloatField;
    QRLabel32: TQRLabel;
    QRDBText17: TQRDBText;
    Q_AUX2: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure RelRecebBeforePrint(Sender: TCustomQuickRep;
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
    procedure QRDBText9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRecebAnalitico: TFRelRecebAnalitico;
  TOTLIQ : real;
  TOTPAG : real;
  TOTSAL : real;
  TOTLIQF : real;
  TOTPAGF : real;
  TOTSALF : real;
  VENC : string;

implementation

uses RelFrec, CPPMENU;
{$R *.DFM}

procedure TFRelRecebAnalitico.FormCreate(Sender: TObject);
VAR DTCI, DTCF :TDateTime;
begin

   Q_RECE.SQL.Clear;
   //Q_RECE.SQL.Add('SELECT A.REC_VENC, A.REC_CODI, A.REC_RAZA, A.REC_HIST, A.REC_NFIS, ');
   Q_RECE.SQL.Add('SELECT CONVERT(DATETIME,  convert(char(10),A.REC_VENC,112) ) AS REC_VENC  , A.REC_CODI, A.REC_RAZA, A.REC_HIST, A.REC_NFIS, ');
   Q_RECE.SQL.Add('A.REC_EMIS, A.REC_BANC, A.REC_VLIQ, A.REC_SALD, A.REC_VORI, CASE WHEN (SELECT SUM(IRE_SALD) ');
   Q_RECE.SQL.Add('FROM CPAIREC WHERE IRE_CODI = REC_CODI) IS NULL THEN 0 ELSE (SELECT ');
   Q_RECE.SQL.Add('SUM(IRE_SALD) FROM CPAIREC WHERE IRE_CODI = REC_CODI) END AS VPAGO, ');
   Q_RECE.SQL.Add('B.CLI_RAZA, A.REC_CGER, D.CON_DESC, REC_DESC, ');

   if TIPO = 0 then
   begin
        Q_RECE.SQL.Add('''' +'11/11/2000' +'''' +' AS IRE_DATA, 1 AS IRE_SEQU ');
        Q_RECE.SQL.Add(' FROM CPARECE A, ');
        Q_RECE.SQL.Add('CPACLIE B, CPACONT D WHERE A.REC_CLIE = B.CLI_CODI AND ');
        Q_RECE.SQL.Add('A.REC_CGER = D.CON_CODI');
   end
   else
   begin
        Q_RECE.SQL.Add('CONVERT(CHAR(10),C.IRE_DATA,103) AS IRE_DATA, C.IRE_SEQU ');
        Q_RECE.SQL.Add(' FROM CPARECE A LEFT ');
        Q_RECE.SQL.Add('OUTER JOIN CPAIREC C ON A.REC_CODI = C.IRE_CODI, CPACLIE B, ');
        Q_RECE.SQL.Add('CPACONT D WHERE A.REC_CLIE = B.CLI_CODI AND A.REC_CGER = D.CON_CODI ');
   end;

  
       Q_TOTS.SQL.Clear;
       Q_TOTS.SQL.Add('SELECT SUM(A.REC_VLIQ) AS TOTLIQ, SUM(A.REC_SALD) AS TOTSAL, ');
       Q_TOTS.SQL.Add('SUM(C.IRE_VTOT) AS TOTPAG FROM CPARECE A LEFT OUTER JOIN CPAIREC C ');
       Q_TOTS.SQL.Add('ON A.REC_CODI = C.IRE_CODI, CPACLIE B ');
       Q_TOTS.SQL.Add('WHERE A.REC_CLIE = B.CLI_CODI ');



   //filtros := '';
   if NUMEROI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI >= ' +NUMEROI);
        Q_TOTS.SQL.Add('AND A.REC_CODI >= ' +NUMEROI);
      //  filtros := 'No. CR de: '+NUMEROI;
   end;
   if NUMEROF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI <= ' +NUMEROF);
        Q_TOTS.SQL.Add('AND A.REC_CODI <= ' +NUMEROF);
       // filtros := filtros + ' ate: ' + NUMEROF + ' - ';
   end;
   if CLIENTEI <> '' then
   begin
         with Q_AUX2 do begin
             CLOSE;
             SQL.Clear;
             SQL.Add(
               'SELECT SEL FROM CPACLIE WHERE SEL = ''S'' '
             );
             Open;
         end;
         Q_AUX2.Last;
         IF Q_AUX2.IsEmpty = False then begin
            Q_RECE.SQL.Add('AND B.CLI_CODI IN ( SELECT CLI_CODI FROM CPACLIE WHERE SEL = ''S'' )' );
            Q_TOTS.SQL.Add('AND B.CLI_CODI IN ( SELECT CLI_CODI FROM CPACLIE WHERE SEL = ''S'' )' );
         end
         else begin
            Q_RECE.SQL.Add('AND B.CLI_APELIDO >= ' +'''' +CLIENTEI +'''');
            Q_TOTS.SQL.Add('AND B.CLI_APELIDO >= ' +'''' +CLIENTEI +'''');
         end;
       // filtros := filtros + 'Clientes de: ' + CLIENTEI;
   end;
   if CLIENTEF <> '' then
   begin
        Q_RECE.SQL.Add('AND B.CLI_APELIDO <= ' +'''' +CLIENTEF +'''');
        Q_TOTS.SQL.Add('AND B.CLI_APELIDO <= ' +'''' +CLIENTEF +'''');
       // filtros := filtros + ' ate: ' + CLIENTEF + ' - ';
   end;

   if IDCENTROCUSTO > 0 then
   begin
        Q_RECE.SQL.Add('AND IDCENTROCUSTO = ' + IntToStr(IDCENTROCUSTO));
        Q_TOTS.SQL.Add('AND IDCENTROCUSTO = ' + IntToStr(IDCENTROCUSTO));
       // filtros := filtros + ' ate: ' + CLIENTEF + ' - ';
   end;

  // QRMemo1.Lines.Add(filtros);
 //  filtros := '';




   if FILIALI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_FILI  in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
        Q_TOTS.SQL.Add('AND A.REC_FILI  in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
       // filtros := 'Empresas de: ' + Lst_Receb_Filt.cbo_FILIAL_INI.Text;
   end;


  {     comentada por miguel
   if FILIALF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_FILI <= ' +'''' +FILIALF +'''');
        Q_TOTS.SQL.Add('AND A.REC_FILI <= ' +'''' +FILIALF +'''');
       // filtros := filtros + ' ate: '+  Lst_Receb_Filt.cbo_FILIAL_FIM.Text + ' - ';
   end;
             }




   if CONTAGERENCIALI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CGER >= ' +'''' +CONTAGERENCIALI +'''');
        Q_TOTS.SQL.Add('AND A.REC_CGER >= ' +'''' +CONTAGERENCIALI +'''');
       // filtros := filtros + 'Conta Gerencial de: ' +  CONTAGERENCIALI;
   end;
   if CONTAGERENCIALF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CGER <= ' +'''' +CONTAGERENCIALF +'''');
        Q_TOTS.SQL.Add('AND A.REC_CGER <= ' +'''' +CONTAGERENCIALF +'''');
      //  filtros := filtros + ' ate: ' + CONTAGERENCIALF + ' - '
   end;
   //QRMemo1.Lines.Add(filtros);
   //filtros := '';
   if PORTADORI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_BANC >= ' +'''' +PORTADORI +'''');
        Q_TOTS.SQL.Add('AND A.REC_BANC >= ' +'''' +PORTADORI +'''');
   end;
   if PORTADORF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_BANC <= ' +'''' +PORTADORF +'''');
        Q_TOTS.SQL.Add('AND A.REC_BANC <= ' +'''' +PORTADORF +'''');
   end;
   if VENCIMENTOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_VENC,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOI) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.REC_VENC,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOI) +'''');
   end;
   if VENCIMENTOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_VENC,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOF) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.REC_VENC,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOF) +'''');
   end;
   if RECEBIMENTOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''' +')');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_TOTS.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''' +')');
        if rTipo = 3 then
        begin
                Q_RECE.SQL.Add('AND CONVERT(CHAR(10),C.IRE_DATA,112) >= ');
                Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''');
                Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),C.IRE_DATA,112) >= ');
                Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''');
        end;
   end;
   if RECEBIMENTOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''' +')');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_TOTS.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''' +')');
        if rTipo = 3 then
        begin
                Q_RECE.SQL.Add('AND CONVERT(CHAR(10),C.IRE_DATA,112) <= ');
                Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''');
                Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),C.IRE_DATA,112) <= ');
                Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''');
        end;
   end;

   if Lst_Receb_Filt.mskCobrancaIni.Text <> '  /  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_DT_GER_CNAB,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.mskCobrancaIni.Text)) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.REC_DT_GER_CNAB,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.mskCobrancaIni.Text)) +'''');
   end;

   if Lst_Receb_Filt.mskCobrancaFim.Text <> '  /  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_DT_GER_CNAB,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.mskCobrancaFim.Text)) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.REC_DT_GER_CNAB,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.mskCobrancaFim.Text)) +'''');
   end;


   //data de competEncia
   if Lst_Receb_Filt.edtdtCompI.Text <> '  /    ' then
   begin
        DTCI := StrToDate('01/'+Lst_Receb_Filt.edtdtCompI.Text) ;
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),a.DT_COMPETENCIA,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',DTCI) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),a.DT_COMPETENCIA,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',DTCI) +'''');
   end;

   if Lst_Receb_Filt.edtdtCompF.Text <> '  /    ' then
   begin
       DTCF := StrToDate('01/'+Lst_Receb_Filt.edtdtCompF.Text);
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),a.DT_COMPETENCIA,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',DTCF) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),a.DT_COMPETENCIA,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',DTCF) +'''');
   end;



   if EMISSAOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_EMIS,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOI) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.REC_EMIS,112) >= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOI) +'''');
   end;
   if EMISSAOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_EMIS,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOF) +'''');
        Q_TOTS.SQL.Add('AND CONVERT(CHAR(10),A.REC_EMIS,112) <= ');
        Q_TOTS.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOF) +'''');
   end;
   if BANCOCONTAI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_BANC >= ' +'''' +BANCOCONTAI +'''' +')');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_TOTS.SQL.Add('IRE_BANC >= ' +'''' +BANCOCONTAI +'''' +')');
   end;
   if BANCOCONTAF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_BANC <= ' +'''' +BANCOCONTAF +'''' +')');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_TOTS.SQL.Add('IRE_BANC <= ' +'''' +BANCOCONTAF +'''' +')');
   end;
   if DOCUMENTOI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_NFIS >= ' +'''' +DOCUMENTOI +'''');
        Q_TOTS.SQL.Add('AND A.REC_NFIS >= ' +'''' +DOCUMENTOI +'''');
   end;
   if DOCUMENTOF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_NFIS <= ' +'''' +DOCUMENTOF +'''');
        Q_TOTS.SQL.Add('AND A.REC_NFIS <= ' +'''' +DOCUMENTOF +'''');
   end;
   if LOTEI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_DOCT >= ' +'''' +LOTEI +'''' +')');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_TOTS.SQL.Add('IRE_DOCT >= ' +'''' +LOTEI +'''' +')');
   end;
   if LOTEF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_DOCT <= ' +'''' +LOTEF +'''' +')');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_TOTS.SQL.Add('IRE_DOCT <= ' +'''' +LOTEF +'''' +')');
   end;

   if SITU = 0 then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC)');
        Q_TOTS.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC)');
   end;
   if SITU = 1 then
   begin
        Q_RECE.SQL.Add('AND A.REC_SALD > 0');
        Q_TOTS.SQL.Add('AND A.REC_SALD > 0');
   end;


   If not Lst_Receb_Filt.ck_Sim.checked then
   Begin
     Q_RECE.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
     Q_TOTS.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;

  End;

  If not Lst_Receb_Filt.ck_Nao.checked then
  Begin
     Q_RECE.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
     Q_TOTS.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;

  End;

   If Lst_Receb_Filt.chaLancamentoCaixa.checked then
  Begin
     Q_RECE.SQL.Add(' and IdLancamentoCaixa Is Not Null ') ;
     Q_TOTS.SQL.Add(' and IdLancamentoCaixa Is Not Null ') ;

  End;


   if rTipo = 0 then
   begin
        Q_RECE.SQL.Add('ORDER BY B.CLI_RAZA, A.REC_VENC');
        QRGroup1.Expression := 'Q_RECE.CLI_RAZA';
        QRDBText9.DataField := 'CLI_RAZA';
        QRLabel8.Caption := 'Data de Vencimento - Histórico';
        QRLabel16.caption := 'Totais para o cliente';
   end;
   if rTipo = 1 then
        Q_RECE.SQL.Add('ORDER BY A.REC_VENC, B.CLI_RAZA');
   if rTipo = 2 then
   begin
        Q_RECE.SQL.Add('ORDER BY REC_EMIS, B.CLI_RAZA, A.REC_VENC');
        QRGroup1.Expression := 'Q_RECE.REC_EMIS';
        QRDBText9.DataField := 'REC_EMIS';
        QRLabel8.Caption := 'Razão Social - Histórico';
        QRLabel15.Caption := 'Venc.';
        //Q_RECEREC_VENC.DisplayFormat := 'DD/MM/YY';
        QRDBText5.DataField := 'REC_VENC';
        /////Q_RECEREC_EMIS.DisplayFormat := 'DD/MM/YYYY';
        QRLabel16.caption := 'Totais na data de emissão';
   end;
   if rTipo = 3 then
   begin
        Q_RECE.SQL.Add('ORDER BY CONVERT(CHAR(10),C.IRE_DATA,112), B.CLI_RAZA, A.REC_VENC');
        QRGroup1.Expression := 'Q_RECE.IRE_DATA';
        QRDBText9.DataField := 'IRE_DATA';
        QRGroup2.Expression := 'Q_RECE.IRE_SEQU';
        QRLabel25.Enabled := false;
        QRDBText2.enabled := false;
        QRLabel16.caption := 'Totais na data de recebimento';
        QRLabel15.caption := 'Crédito';
        QRLabel12.caption := 'Valor da Baixa';
        QRLabel6.caption := 'Desc./Acresc.';
        QRLabel10.caption := 'Valor Final';
        QRDBText5.DataSet := Q_IREC;
        QRDBText5.DataField := 'IRE_DDEB';
        QRDBText6.DataSet := Q_IREC;
        QRDBText6.DataField := 'IRE_SALD';
        QRDBText7.DataSet := Q_IREC;
        QRDBText7.DataField := 'IRE_VDIF';
        QRDBText8.DataSet := Q_IREC;
        QRDBText8.DataField := 'IRE_VTOT';
        Q_IRECIRE_DDEB.DisplayFormat := 'DD/MM/YY';
   end;
   if rTipo = 4 then
   begin
        Q_RECE.SQL.Add('ORDER BY A.REC_CGER, B.CLI_RAZA, A.REC_VENC');
        QRGroup1.Expression := 'Q_RECE.REC_CGER';
        QRDBText9.DataField := 'CON_DESC';
        QRLabel15.Caption := 'Venc.';
        //Q_RECEREC_VENC.DisplayFormat := 'DD/MM/YY';
        QRDBText5.DataField := 'REC_VENC';
        QRLabel16.caption := 'Totais na conta gerencial';
   end;

   {/************** miguel *************/}

   
   if rTipo = 5 then
   begin
        Q_RECE.SQL.Add(' AND A.REC_BANC IS NOT NULL ORDER BY A.REC_BANC, A.REC_VENC');
        QRGroup1.Expression := 'Q_RECE.REC_BANC';
        QRDBText9.DataField := 'PORTADOR';
        QRLabel8.Caption := 'Razão Social - Histórico';
        QRLabel15.Caption := 'Venc.';
        //Q_RECEREC_VENC.DisplayFormat := 'DD/MM/YY';
        QRDBText5.DataField := 'REC_VENC';
        /////Q_RECEREC_EMIS.DisplayFormat := 'DD/MM/YYYY';
        QRLabel16.caption := 'Total Portador: ';
   end;

   {/************** end ****************/}


  

   Q_RECE.Open;
   Q_IREC.Open;
   Q_TOTS.Open;

end;

procedure TFRelRecebAnalitico.QRLabel17Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',totliq);
end;

procedure TFRelRecebAnalitico.QRLabel18Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',totpag);
end;

procedure TFRelRecebAnalitico.QRLabel19Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',totsal);
end;

procedure TFRelRecebAnalitico.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   TOTLIQF := TOTLIQF + TOTLIQ;
   TOTPAGF := TOTPAGF + TOTPAG;
   TOTSALF := TOTSALF + TOTSAL;
   TOTLIQ := 0;
   TOTSAL := 0;
   TOTPAG := 0;
end;

procedure TFRelRecebAnalitico.RelRecebBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
filtro : string;
begin
   QRMemo1.Lines.Clear;
   if (NUMEROI <> '') and (NUMEROF = '') then
        filtro := filtro + 'Nº do CR a partir de ' +NUMEROI +' ||| ';
   if (NUMEROF <> '') and (NUMEROI = '') then
        filtro := filtro + 'Nº do CR até ' +NUMEROF +' ||| ';
   if (NUMEROF <> '') and (NUMEROI <> '') then
        filtro := filtro + 'Nº do CR a partir de ' +NUMEROI +' até ' +NUMEROF +' ||| ';

  if (CLIENTEI <> '') and (CLIENTEF = '') then
        filtro := filtro + 'Cliente a partir de ' +CLIENTEI +' ||| ';
  if (CLIENTEF <> '') and (CLIENTEI = '') then
        filtro := filtro + 'Cliente até ' +CLIENTEF +' ||| ';
  if (CLIENTEF <> '') and (CLIENTEI <> '') then
        filtro := filtro + 'Cliente a partir de ' +CLIENTEI +' até ' +CLIENTEF +' ||| ';

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

  if (PORTADORI <> '') and (PORTADORF = '') then
        filtro := filtro + 'Portador a partir de ' +PORTADORI +' ||| ';
  if (PORTADORI = '') and (PORTADORF <> '') then
        filtro := filtro + 'Portador até ' +PORTADORF +' ||| ';
  if (PORTADORI <> '') and (PORTADORF <> '') then
        filtro := filtro + 'Portador a partir de ' +PORTADORI +' até ' +PORTADORF +' ||| ';

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

  if (LOTEI <> '') and (LOTEF = '') then
        filtro := filtro + 'Lote a partir de ' +LOTEI +' ||| ';
  if (LOTEI = '') and (LOTEF <> '') then
        filtro := filtro + 'Lote até ' +LOTEF +' ||| ';
  if (LOTEI <> '') and (LOTEF <> '') then
        filtro := filtro + 'Lote a partir de ' +LOTEI +' até ' +LOTEF +' ||| ';

  if (VENCIMENTOI <> 0.0) and (VENCIMENTOF = 0.0) then
        filtro := filtro + 'Vencimento a partir ' +FormatDateTime('DD/MM/YYYY',VENCIMENTOI )+' ||| ';
  if (VENCIMENTOI = 0.0) and (VENCIMENTOF <> 0.0) then
        filtro := filtro + 'Vencimento até ' + FormatDateTime('DD/MM/YYYY',VENCIMENTOF )+' ||| ';
  if (VENCIMENTOI <> 0.0) and (VENCIMENTOF <> 0.0) then
        filtro := filtro + 'Vencimento a partir ' +FormatDateTime('DD/MM/YYYY',VENCIMENTOI)
        +' até ' + FormatDateTime('DD/MM/YYYY',VENCIMENTOF )+' ||| ';

  if (RECEBIMENTOI <> 0.0) and (RECEBIMENTOF = 0.0) then
        filtro := filtro + 'Recebimento a partir de ' + formatdatetime('DD/MM/YYYY',RECEBIMENTOI )+' ||| ';
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF <> 0.0) then
        filtro := filtro + 'Recebimento até ' + FormatDateTime('DD/MM/YYYY',RECEBIMENTOF )+' ||| ';
  if (RECEBIMENTOI <> 0.0) and (RECEBIMENTOF <> 0.0) then
        filtro := filtro + 'Recebimento a partir de ' + formatdatetime('DD/MM/YYYY',RECEBIMENTOI)
        +' até ' +FormatDateTime('DD/MM/YYYY',RECEBIMENTOF )+' ||| ';

    if (Lst_Receb_Filt.mskCobrancaIni.Text <> '  /  /    ') and (Lst_Receb_Filt.mskCobrancaFim.Text = '  /  /    ') then
        filtro := filtro + 'Geração cobrança eletrônica a partir de ' + Lst_Receb_Filt.mskCobrancaIni.Text +' ||| ';
  if (Lst_Receb_Filt.mskCobrancaIni.Text = '  /  /    ') and (Lst_Receb_Filt.mskCobrancaFim.Text <> '  /  /    ') then
        filtro := filtro + 'Geração cobrança eletrônica até ' + Lst_Receb_Filt.mskCobrancaFim.Text +' ||| ';
  if (Lst_Receb_Filt.mskCobrancaIni.Text <> '  /  /    ') and (Lst_Receb_Filt.mskCobrancaFim.Text <> '  /  /    ') then
        filtro := filtro + 'Geração cobrança eletrônica a partir de ' + Lst_Receb_Filt.mskCobrancaIni.Text
        +' até ' +Lst_Receb_Filt.mskCobrancaFim.Text+' ||| ';


  if (EMISSAOI <> 0.0) and (EMISSAOF = 0.0) then
        filtro := filtro + 'Emissão a partir de ' + formatdatetime('DD/MM/YYYY',EMISSAOI )+' ||| ';
  if (EMISSAOI = 0.0) and (EMISSAOF <> 0.0) then
        filtro := filtro + 'Emissão até ' + FormatDateTime('DD/MM/YYYY',EMISSAOF )+' ||| ';
  if (EMISSAOI <> 0.0) and (EMISSAOF <> 0.0) then
        filtro := filtro + 'Emissão a partir de ' + formatdatetime('DD/MM/YYYY',EMISSAOI)
        +' até ' +FormatDateTime('DD/MM/YYYY',EMISSAOF )+' ||| ';

  if SITU = 0 then
        filtro := filtro + 'Recebidos';
  if SITU = 1 then
        filtro := filtro + 'A Receber';
  if SITU = 2 then
        filtro := filtro + 'Todos';

  filtro := filtro + ' ||| Fluxo de Caixa: ';
  if (Lst_Receb_Filt.ck_Sim.Checked) and (Lst_Receb_Filt.ck_Nao.Checked) then
      filtro := filtro + 'Todos';

  if (Lst_Receb_Filt.ck_Sim.Checked) and (Lst_Receb_Filt.ck_Nao.Checked = False) then
      filtro := filtro + 'Sim';

  if (Lst_Receb_Filt.ck_Sim.Checked = False) and (Lst_Receb_Filt.ck_Nao.Checked) then
      filtro := filtro + 'Não';

  if (Lst_Receb_Filt.ck_Sim.Checked = false) and (Lst_Receb_Filt.ck_Nao.Checked = false) then
      filtro := filtro + 'Nenhum';

  QRMemo1.Lines.add(filtro);

  TOTLIQ := 0;
  TOTPAG := 0;
  TOTSAL := 0;
  TOTLIQF := 0;
  TOTPAGF := 0;
  TOTSALF := 0;
end;

procedure TFRelRecebAnalitico.QRLabel22Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',TOTLIQF);
end;

procedure TFRelRecebAnalitico.QRLabel23Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',TOTPAGF);
end;

procedure TFRelRecebAnalitico.QRLabel24Print(sender: TObject;
  var Value: String);
begin
   Value := formatfloat('###,###,###,##0.00',TOTSALF);
end;

procedure TFRelRecebAnalitico.QRLabel20Print(sender: TObject;
  var Value: String);
begin
   VALUE := FMenu.FUsuario;
end;

procedure TFRelRecebAnalitico.QRLabel2Print(sender: TObject; var Value: String);
begin
   if TIPO = 0 then
        value := value + ' Resumido';
   if TIPO = 1 then
        value := value + ' Detalhado';

   case rTipo of
        0: value := value +' - Cliente';
        1: value := value +' - Vencimento';
        2: value := value +' - Data de Emissão';
        3: value := value +' - Data de Recebimento';
        4: value := value +' - Conta Gerencial';
   end;
end;

procedure TFRelRecebAnalitico.QRLabel9Print(sender: TObject; var Value: String);
begin
   if rTipo = 0 then
        value := Q_RECEREC_VENC.displaytext +' - ' +Q_RECEREC_HIST.asstring;
   if rTipo in [1,2,3,4,5] then
        value := Q_RECEREC_RAZA.asstring +' - ' +Q_RECEREC_HIST.asstring;
end;

procedure TFRelRecebAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_RECE.Close;
   Q_IREC.Close;
   Q_TOTS.Close;
end;

procedure TFRelRecebAnalitico.QRBand4BeforePrint(Sender: TQRCustomBand;
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
   end
   else
   begin
        QRDBText13.enabled := true;
        QRDBText14.enabled := true;
        QRDBText15.enabled := true;
        QRLabel22.Enabled := false;
        QRLabel23.Enabled := false;
        QRLabel24.Enabled := false;
   end;}
end;

procedure TFRelRecebAnalitico.QRGroup2BeforePrint(Sender: TQRCustomBand;
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

procedure TFRelRecebAnalitico.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   if rTipo <> 3 then
   begin

        TOTLIQ := TOTLIQ + Q_RECEREC_VLIQ.Value ;

        TOTPAG := TOTPAG + Q_RECEVPAGO.Value;
        TOTSAL := TOTSAL + Q_RECEREC_SALD.Value;
   end
   else
   begin
        TOTLIQ := TOTLIQ + Q_IRECIRE_SALD.Value;
        TOTPAG := TOTPAG + Q_IRECIRE_VDIF.Value;
        TOTSAL := TOTSAL + Q_IRECIRE_VTOT.Value;
   end;



end;

procedure TFRelRecebAnalitico.QRDBText9Print(sender: TObject; var Value: String);
begin
   if rTipo = 2 then 
        value := copy(Q_RECEREC_EMIS.asstring,7,2) + '/' + copy(Q_RECEREC_EMIS.asstring,5,2) + '/' +  copy(Q_RECEREC_EMIS.asstring,1,4)




end;

end.

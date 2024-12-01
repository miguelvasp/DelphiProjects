unit U_RbDocAn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Wwtable;

type
  TFlstRbDocAn = class(TForm)
    Q_IREC: TwwQuery;
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
    Q_GerAn: TwwQuery;
    Q_GerAnCON_DESC: TStringField;
    Q_GerAnCON_CODI: TStringField;
    Q_GerAnFIL_CODI: TStringField;
    Q_GerAnFIL_DESC: TStringField;
    DS_GerAn: TwwDataSource;
    Lst_Doc: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    c: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBText5: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    Q_GerAnREC_VENC: TDateTimeField;
    Q_GerAnREC_RAZA: TStringField;
    Q_GerAnREC_NFIS: TStringField;
    Q_GerAnREC_CGER: TStringField;
    Q_GerAnREC_HIST: TStringField;
    Q_GerAnREC_CODI: TIntegerField;
    Q_GerAnREC_VLIQ: TFloatField;
    Q_GerAnREC_SALD: TFloatField;
    Q_GerAnREC_VALO: TFloatField;
    Q_GerAnREC_BANC: TStringField;
    QRLabel25: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure LST_GerAnBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  fTotCger : real ;
  FGeralCger : real ;

  end;

var
  FlstRbDocAn: TFlstRbDocAn;
implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}


procedure TFlstRbDocAn.FormCreate(Sender: TObject);
var StrTipo : String ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel2.caption := 'Relatório Analítico de Contas a Receber - Documento ' + StrTipo ;
  Q_GerAn.close ;
  Q_GerAn.SQL.clear ;
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0 ) then begin
     Q_GerAn.SQL.ADD('Select A.REC_VENC, A.REC_RAZA, A.REC_NFIS, A.REC_CGER, A.REC_HIST,') ;
     Q_GerAn.SQL.ADD('A.REC_CODI, A.REC_VLIQ, A.REC_SALD, A.REC_VALO, A.REC_BANC, ') ;
     Q_GerAn.SQL.ADD('C.CON_DESC, C.CON_CODI,D.FIL_CODI,D.FIL_DESC ');
     Q_GerAn.SQL.ADD('from CPARECE A, CPACONT C, CPAFILI D, CPACLIE F ');
     Q_GerAn.SQL.ADD(' where A.REC_CLIE = F.CLI_CODI ');
     Q_GerAn.SQL.ADD('   and A.REC_CGER = C.CON_CODI ');
     Q_GerAn.SQL.ADD('   and A.REC_FILI = D.FIL_CODI ');

     if NumeroI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Codi >= ' + NumeroI );
     if NumeroF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Codi <= ' + NumeroF );
     if ClienteI <> '' then
        Q_GerAn.SQL.ADD( ' and F.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_GerAn.SQL.ADD( ' and F.cLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if DocumentoI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI +'''');
     if DocumentoF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     if TIPO = 1 then
        Q_GerAn.SQL.ADD( ' and A.Rec_Sald <> 0 ');
     if PortadorI <> '' then
        Q_gerAn.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Geran.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if rTipo = 1  then
        Q_GerAn.SQL.ADD( ' order by LTRIM(RTRIM(A.Rec_Nfis)) ' )  ;
   end else begin
     Q_GerAn.SQL.ADD('Select A.REC_VENC, A.REC_RAZA, A.REC_NFIS, A.REC_CGER, A.REC_HIST,') ;
     Q_GerAn.SQL.ADD('A.REC_CODI, A.REC_VLIQ, A.REC_SALD, A.REC_VALO, A.REC_BANC, ') ;
     Q_GerAn.SQL.ADD('C.CON_DESC, C.CON_CODI,D.FIL_CODI,D.FIL_DESC ');
     Q_GerAn.SQL.ADD('from CPARECE A, CPACONT C, CPAFILI D, CPACLIE F ');
     Q_GerAn.SQL.ADD(' where A.REC_CLIE = F.CLI_CODI ');
     Q_GerAn.SQL.ADD('   and A.REC_CGER = C.CON_CODI ');
     Q_GerAn.SQL.ADD('   and A.REC_FILI = D.FIL_CODI ');
     if NumeroI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Codi >= ' + NumeroI );
     if NumeroF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Codi <= ' + NumeroF );
     if ClienteI <> '' then
        Q_GerAn.SQL.ADD( ' and F.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_GerAn.SQL.ADD( ' and F.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_GerAn.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if DocumentoI <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI +'''');
     if DocumentoF <> '' then
        Q_GerAn.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     if PortadorI <> '' then
        Q_Geran.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Geran.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     Q_GERAN.Sql.Add(' and A.REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI ') ;
     if RECEBIMENTOI <> 0.0 then
        Q_Geran.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     if RECEBIMENTOF <> 0.0 then
        Q_Geran.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     if BancocontaI <> '' then
        Q_Geran.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_Geran.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''' );
     if LOTEI <> ''  then
        Q_GerAn.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
     if LOTEF <> ''  then
        Q_GerAn.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );

     Q_Geran.SQL.ADD( ' ) order by LTRIM(RTRIM(A.Rec_Nfis)) ' )  ;
   end;

   Q_GerAn.open;
   fTotCger :=0 ;
   FGeralCger :=0 ;
end;

procedure TFlstRbDocAn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_GerAn.close ;
  Q_IREC.Close;
  action := cafree ;
end;

procedure TFlstRbDocAn.QRDBText5Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fGeralCger) ;
  fGeralCger := 0 ;
end;

procedure TFlstRbDocAn.LST_GerAnBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
//   QRLabel20.caption := FMenu.StatusBar1.Panels[2].text ;
   QRLabel20.caption := FMenu.FUsuario ;
end;

procedure TFlstRbDocAn.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //fecha a query
   Q_IREC.close;
   // limpa oconteúdo da prop SQL do componente Query
   Q_IREC.SQL.clear;
   //insere na prop SQL do comp query a linha do select
   Q_IREC.SQL.ADD('select * from CPAIREC where IRE_CODI = '+ Q_gerAnREC_CODI.ASSTRING) ;
   if RECEBIMENTOI <> 0.0 then
      Q_IREC.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
   if RECEBIMENTOF <> 0.0 then
      Q_IREC.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
   if BancocontaI <> '' then
      Q_IRec.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
   if LOTEI <> ''  then
      Q_IREC.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
   if LOTEF <> ''  then
      Q_IREC.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );
   if BancocontaF <> '' then
      Q_IRec.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''');
   //abre/executa a sentença SQL
   Q_IREC.open;

end;

procedure TFlstRbDocAn.QRExpr5Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fTotCger) ;
  FGeralCger := FGeralCger + fTotCGer ;
  ftotCger := 0 ;
end;

procedure TFlstRbDocAn.QRDBText15Print(sender: TObject; var Value: String);
begin
  fTotCger   := FtotCger + Q_IRECIRE_VTOT.asfloat ;
end;

end.

unit U_RbGerSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstRbGerSint = class(TForm)
    LST_GSint: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    Q_GSint: TwwQuery;
    DS_GSint: TwwDataSource;
    Q_GSintREC_CGER: TStringField;
    Q_GSintCON_DESC: TStringField;
    Q_GSintxvalor: TFloatField;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    Q_IREC: TwwQuery;
    Q_IRECyvalor: TFloatField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure LST_GSintBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fTOTAL : real ;
  end;

var
  FlstRbGerSint: TFlstRbGerSint;

implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}


procedure TFlstRbGerSint.FormCreate(Sender: TObject);
var StrTipo : string ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';

  QRLabel2.caption := 'Relatório Sintético de Contas a Receber - Cta.Gerencial ' + StrTipo ;

  Q_GSint.close ;
  Q_GSint.SQL.clear ;
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0 )then begin
     Q_GSint.SQL.ADD('Select A.REC_CGER,C.CON_DESC, ');
     Q_GSint.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor ');
     Q_GSint.SQL.ADD('from CPARECE A,CPACONT C, CPACLIE B ');
     Q_GSint.SQL.ADD('where A.REC_CLIE = B.CLI_CODI            ');
     Q_GSint.SQL.ADD('  and A.REC_CGER = C.CON_CODI            ');

     if NumeroI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Codi >= '+NumeroI );
     if NumeroF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
     if ClienteI <> '' then
        Q_GSint.SQL.ADD( ' and B.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_GSint.SQL.ADD( ' and B.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_GSint.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_GSint.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     if TIPO = 1 then
        Q_GSint.SQL.ADD( ' and A.Rec_Sald <> 0 ');

     Q_GSint.SQL.ADD('group by A.REC_CGER,C.CON_DESC');
     Q_GSint.SQL.ADD( ' order by A.REC_CGER ' )  ;

  end else begin
     Q_GSint.SQL.ADD('Select A.REC_CGER,C.CON_DESC, ');
     Q_GSint.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor ');
     Q_GSint.SQL.ADD('from CPARECE A,CPACONT C, CPACLIE B ');
     Q_GSint.SQL.ADD('where A.REC_CLIE = B.CLI_CODI            ');
     Q_GSint.SQL.ADD('  and A.REC_CGER = C.CON_CODI            ');
     if NumeroI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Codi >= '+ NumeroI );
     if NumeroF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
     if ClienteI <> '' then
        Q_GSint.SQL.ADD( ' and B.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_GSint.SQL.ADD( ' and B.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_GSint.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_GSint.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_GSint.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_GSint.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     Q_GSint.Sql.Add(' and A.REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI ') ;
     if RECEBIMENTOI <> 0.0 then
        Q_GSint.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     if RECEBIMENTOF <> 0.0 then
        Q_GSint.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     if BancocontaI <> '' then
        Q_GSint.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_GSint.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''' );
     if LOTEI <> ''  then
        Q_GSint.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
     if LOTEF <> ''  then
        Q_GSint.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );

     Q_GSint.SQL.ADD(' ) group by A.REC_CGER,C.CON_DESC');
     Q_GSint.SQL.ADD( ' order by A.REC_CGER ' )  ;
  end;

  Q_GSint.open;
  ftOTAL := 0 ;
end;

procedure TFlstRbGerSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_GSint.close ;
  action := cafree ;
end;





procedure TFlstRbGerSint.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Q_IREC.Close;
  Q_IREC.Sql.Clear ;
  Q_IREC.Sql.Add(' select Sum(IRE_VTOT) as YValor from CPAIREC B, CPARECE A, CPACLIE F ');
  Q_IREC.Sql.Add(' where IRE_CODI =  A.REC_CODI ') ;
  Q_IREC.Sql.Add(' AND A.REC_CLIE = F.CLI_CODI ') ;
  Q_IREC.Sql.Add(' and A.REC_CGER = '+ '''' +   Q_GSintREC_CGER.asstring + '''') ;
  if RECEBIMENTOI <> 0.0 then
     Q_IREC.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
  if RECEBIMENTOF <> 0.0 then
     Q_IREC.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
  if BancocontaI <> '' then
     Q_IREC.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
  if BancocontaF <> '' then
     Q_IREC.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''' );
  if NumeroI <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Codi >= '+NumeroI );
  if NumeroF <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
  if ClienteI <> '' then
     Q_IREC.SQL.ADD( ' and F.CLI_APELIDO >= '+''''+ ClienteI +'''');
  if ClienteF <> '' then
     Q_IREC.SQL.ADD( ' and F.CLI_APELIDO <= '+''''+ ClienteF +'''');
  if FilialI <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
  if VencimentoI <> 0.0 then
     Q_IREC.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
  if VencimentoF <> 0.0 then
     Q_IREC.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
  if EMISSAOI <> 0.0 then
     Q_IREC.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
  if EMISSAOF <> 0.0 then
     Q_IREC.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
  if PortadorI <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Banc >= '+''''+ PortadorI +'''');
  if PortadorF <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Banc <= '+''''+ PortadorF +'''');
  if DocumentoI <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
  if DocumentoF <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
  if (TIPO <> 0 ) then
     Q_IREC.SQL.ADD( ' and A.Rec_Sald <> 0 ' );
  if LOTEI <> ''  then
     Q_IREC.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
  if LOTEF <> ''  then
     Q_IREC.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );
  Q_IREC.Open;

end;

procedure TFlstRbGerSint.QRDBText4Print(sender: TObject;
  var Value: String);

begin
  value := formatfloat('###,###,##0.00',Q_IRECYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IRECYVALOR.asfloat ;
end;

procedure TFlstRbGerSint.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  FTotal := 0 ;
end;

procedure TFlstRbGerSint.LST_GSintBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;

begin
//
// Seleciona o Nome da Empresa
//
//   QRLabel20.caption := FMenu.StatusBar1.Panels[2].text ;
   QRLabel5.caption := FMenu.FUsuario ;
end;

end.

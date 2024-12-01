unit U_RbCCUSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Wwtable;

type
  TFlstRbCCUSint = class(TForm)
    Lst_CCUS: TQuickRep;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel22: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    Q_CCus: TwwQuery;
    Q_CCusxvalor: TFloatField;
    DS_CCus: TwwDataSource;
    Q_CCusREC_Fili: TStringField;
    Q_CCusFil_Desc: TStringField;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    Q_IREC: TwwQuery;
    Q_IRECyvalor: TFloatField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Lst_CCUSBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    FTOtal : real ;
  end;

var
  FlstRbCCUSint: TFlstRbCCUSint;

implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}


procedure TFlstRbCCUSint.FormCreate(Sender: TObject);
var StrTipo : String ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel4.caption := 'Relatório Sintético de Contas a Receber - C.Custo - ' + StrTipo ;

  Q_CCUS.close ;
  Q_CCUS.SQL.clear ;
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0 )then begin
     Q_CCUS.SQL.ADD('Select A.REC_FILI,C.FIL_DESC, ');
     Q_CCUS.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor ');
     Q_CCUS.SQL.ADD('from CPARECE A, CPAFILI C, CPACLIE D ');
     Q_CCUS.SQL.ADD(' where A.REC_CLIE = D.CLI_CODI');
     Q_CCUS.SQL.ADD('   and A.REC_FILI = C.FIL_CODI');

     if NumeroI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Codi >= '+ NumeroI );
     if NumeroF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );

     if ClienteI <> '' then
        Q_CCUS.SQL.ADD( ' and D.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_CCUS.SQL.ADD( ' and D.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_CCUS.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_CCUS.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     if TIPO = 1 then
        Q_CCUS.Sql.Add(' and A.REC_SALD <> 0 ');

     Q_CCUS.SQL.ADD('group by A.REC_FILI,C.FIL_DESC');
     Q_CCUS.SQL.ADD( ' order by A.REC_FILI ' )  ;

  end else begin
     Q_CCUS.SQL.ADD('Select A.REC_FILI,C.FIL_DESC, ');
     Q_CCUS.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor ');
     Q_CCUS.SQL.ADD('from CPARECE A,CPAFILI C, CPACLIE D ');
     Q_CCUS.SQL.ADD('where A.REC_CLIE = D.CLI_CODI');
     Q_CCUS.SQL.ADD('   and A.REC_FILI = C.FIL_CODI');

     if NumeroI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Codi >= '+ NumeroI );
     if NumeroF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
     if ClienteI <> '' then
        Q_CCUS.SQL.ADD( ' and D.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_CCUS.SQL.ADD( ' and D.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_CCUS.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_CCUS.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_CCUS.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_CCUS.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     Q_CCUS.SQL.ADD( ' and A.Rec_Sald <> A.REC_VLIQ ');
     Q_CCUS.Sql.Add(' and A.REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI ') ;
     if RECEBIMENTOI <> 0.0 then
        Q_CCUS.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     if RECEBIMENTOF <> 0.0 then
        Q_CCUS.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     if BancocontaI <> '' then
        Q_CCUS.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_CCUS.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''' );
     if LOTEI <> ''  then
        Q_CCUS.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
     if LOTEF <> ''  then
        Q_CCUS.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );

     Q_CCUS.SQL.ADD(' ) group by A.REC_FILI,C.FIL_DESC');
     Q_CCUS.SQL.ADD( ' order by C.FIL_DESC ' )  ;
  end;
  Q_CCUS.open;
  ftOTAL := 0 ;
end;

procedure TFlstRbCCUSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CCUS.close ;
  action := cafree ;
end;


procedure TFlstRbCCUSint.Lst_CCUSBeforePrint(Sender: TCustomQuickRep;
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

procedure TFlstRbCCUSint.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var
     vLogo : TBlobField;
begin
  Q_IREC.Close;
  Q_IREC.Sql.Clear ;
  Q_IREC.Sql.Add(' select Sum(IRE_VTOT) as YValor from CPAIREC B, CPARECE A ');
  Q_IREC.Sql.Add(' where IRE_CODI =  A.REC_CODI ') ;
  Q_IREC.Sql.Add(' and A.REC_FILI = '+ '''' +   Q_CCUSREC_FILI.asstring + '''') ;
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
     Q_IREC.SQL.ADD( ' and A.Rec_Raza >= '+''''+ ClienteI +'''');
  if ClienteF <> '' then
     Q_IREC.SQL.ADD( ' and A.Rec_Raza <= '+''''+ ClienteF +'''');
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
     Q_IREC.SQL.ADD( ' and A.Rec_SALD <> 0 ');
  Q_IREC.Open;
end;


procedure TFlstRbCCUSint.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,##0.00',Q_IRECYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IRECYVALOR.asfloat ;

end;

procedure TFlstRbCCUSint.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  FTotal := 0 ;
end;

end.

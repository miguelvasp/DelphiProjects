unit U_RbVencSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstRbVencSint = class(TForm)
    LST_VENC: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    Q_venc: TwwQuery;
    DS_venc: TwwDataSource;
    Q_vencREC_VENC: TDateTimeField;
    Q_vencxvalor: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    Q_IREC: TwwQuery;
    Q_IRECyvalor: TFloatField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_VENCBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    fTotal : real ;
  end;

var
  FlstRbVencSint: TFlstRbVencSint;

implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}




procedure TFlstRbVencSint.FormCreate(Sender: TObject);
var StrTipo : string ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel4.caption := 'Relatório Sintetico de Contas a Receber - Vencimento ' + StrTipo ;

  FTotal := 0 ;
  Q_Venc.close ;
  Q_Venc.SQL.clear ;

  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0) then begin
     Q_Venc.SQL.ADD('Select A.REC_VENC, ');
     Q_Venc.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor');
     Q_Venc.SQL.ADD('from CPARECE A, CPACONT C, CPACLIE B ');
     Q_Venc.SQL.ADD('where A.REC_CLIE = B.CLI_CODI');
     Q_Venc.SQL.ADD('  and A.REC_CGER = C.CON_CODI');

     if FilialI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if NumeroI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Codi >= '+NumeroI );
     if NumeroF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
     if ClienteI <> '' then
        Q_Venc.SQL.ADD( ' and B.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_Venc.SQL.ADD( ' and B.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if ContaGerencialI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_VENC >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_VENC <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_Venc.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Venc.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');

     if TIPO = 1 then
        Q_Venc.SQL.ADD( ' and A.Rec_Sald <> 0 ');

     Q_Venc.SQL.ADD('group by A.REC_VENC');
     Q_Venc.SQL.ADD( ' order by A.REC_VENC' )  ;

  end else begin
     Q_Venc.SQL.ADD('Select A.REC_VENC, ');
     Q_Venc.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor');
     Q_Venc.SQL.ADD('from CPARECE A, CPACONT C, CPACLIE B ');
     Q_Venc.SQL.ADD('where A.REC_CLIE = B.CLI_CODI');
     Q_Venc.SQL.ADD('  and A.REC_CGER = C.CON_CODI');

     if FilialI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if NumeroI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Codi >= '+ NumeroI );
     if NumeroF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
     if ClienteI <> '' then
        Q_Venc.SQL.ADD( ' and B.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_Venc.SQL.ADD( ' and B.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if ContaGerencialI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_VENC >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_VENC <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_Venc.SQL.ADD( ' and A.REC_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_Venc.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Venc.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_Venc.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');

     Q_Venc.Sql.Add(' and A.REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI ') ;

     if RECEBIMENTOI <> 0.0 then
        Q_Venc.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     if RECEBIMENTOF <> 0.0 then
        Q_Venc.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     if BancocontaI <> '' then
        Q_Venc.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_Venc.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''' );
     if LOTEI <> ''  then
        Q_Venc.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
     if LOTEF <> ''  then
        Q_Venc.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );

     if TIPO = 1 then
        Q_Venc.SQL.ADD( ' and A.Rec_Sald <> 0 ');

     Q_Venc.SQL.ADD(' ) group by A.REC_VENC');
     Q_Venc.SQL.ADD( ' order by A.REC_VENC' )  ;
  end;
  Q_venc.open;
end;

procedure TFlstRbVencSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_VENC.close ;
  Q_IREC.Close;
  action := cafree ;
end;


procedure TFlstRbVencSint.LST_VENCBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
   QRLabel5.caption := FMenu.FUsuario ;
end;

procedure TFlstRbVencSint.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Q_IREC.Close;
  Q_IREC.Sql.Clear ;
  Q_IREC.Sql.Add(' select Sum(IRE_VTOT) as YValor  from CPAIREC B, CPARECE A, CPACLIE F ');
  Q_IREC.Sql.Add(' where B.IRE_CODI =  A.REC_CODI ') ;
  Q_IREC.Sql.Add(' AND A.REC_CLIE =  F.CLI_CODI ') ;
  if TIPO = 1 then
     Q_IREC.SQL.ADD( ' and A.Rec_Sald <> 0 ');
  Q_irec.SQL.ADD( ' and  A.REC_VENC = convert(smalldatetime,' +'''' +formatdatetime('DD/MM/YYYY',Q_VEncREC_VENC.asdatetime) +'''' +',103)');

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
  if LOTEI <> ''  then
     Q_IREC.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
  if LOTEF <> ''  then
     Q_IREC.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );

  Q_IREC.Open;
end;


procedure TFlstRbVencSint.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,##0.00',Q_IRECYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IRECYVALOR.asfloat ;
end;

procedure TFlstRbVencSint.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  Ftotal := 0 ;
end;

end.

unit U_RbDocSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstRbDocSint = class(TForm)
    Lst_Doc: TQuickRep;
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
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Q_Doc: TwwQuery;
    Q_Docxvalor: TFloatField;
    DS_Doc: TwwDataSource;
    Q_DocREC_NFIS: TStringField;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    Q_IREC: TwwQuery;
    Q_IRECyvalor: TFloatField;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure Lst_DocBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fTotal : real ;
  end;

var
  FlstRbDocSint: TFlstRbDocSint;

implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}




procedure TFlstRbDocSint.FormCreate(Sender: TObject);
var StrTipo : String ;
    StrAnd : string ;
begin
        StrAnd := ' and ' ;
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';

  QRLabel4.caption := 'Relatório Sintético de Contas a Receber - Documento ' + StrTipo ;

  Q_Doc.close ;
  Q_Doc.SQL.clear ;
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0 )then begin
     Q_Doc.SQL.ADD('Select A.REC_NFIS, ');
     Q_Doc.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor ');
     Q_Doc.SQL.ADD('from CPARECE A, CPACLIE B ');
     Q_Doc.SQL.ADD('WHERE A.REC_CLIE = B.CLI_CODI ');
     if TIPO = 1 then begin
        Q_Doc.SQL.ADD(StrAnd + ' A.REC_SALD <> 0 ');
        StrAnd := ' and ' ;
     end;

     if NumeroI <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + 'A.Rec_Codi >= '+NumeroI );
        StrAnd := ' and ';
     end ;

     if NumeroF <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + 'A.Rec_Codi <= '+ NumeroF );
        StrAnd := ' and ';
     end ;

     if ClienteI <> '' then begin
        Q_Doc.SQL.ADD(StrAnd + 'B.CLI_APELIDO >= '+''''+ ClienteI +'''');
        StrAnd := ' and ';
     end ;

     if ClienteF <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' B.CLI_APELIDO <= '+''''+ ClienteF +'''');
        StrAnd := ' and ';
     end ;

     if FilialI <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + 'A.Rec_Fili >= '+''''+ FilialI +'''');
        StrAnd := ' and ';
     end ;

     if FilialF <> '' then begin
        Q_Doc.SQL.ADD(StrAnd + ' A.Rec_Fili <= '+''''+ FilialF +'''');
        StrAnd := ' and ';
     end ;

     if ContaGerencialI <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
        StrAnd := ' and ';
     end ;

     if ContaGerencialF <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
        StrAnd := ' and ';
     end ;

     if VencimentoI <> 0.0 then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
        StrAnd := ' and ';
     end ;

     if VencimentoF <> 0.0 then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
        StrAnd := ' and ';
     end ;

     if EMISSAOI <> 0.0 then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
        StrAnd := ' and ';
     end ;

     if EMISSAOF <> 0.0 then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
        StrAnd := ' and ';
     end ;

     if PortadorI <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' Rec_Banc >= '+''''+ PortadorI +'''');
        StrAnd := ' and ';
     end ;

     if PortadorF <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' Rec_Banc <= '+''''+ PortadorF +'''');
        StrAnd := ' and ';
     end ;

     if DocumentoI <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_NFis >= '+''''+ DocumentoI+'''');
        StrAnd := ' and ';
     end ;

     if DocumentoF <> '' then begin
        Q_Doc.SQL.ADD( StrAnd + ' A.Rec_NFis <= '+''''+ DocumentoF +'''');
        StrAnd := ' and ';
     end ;
     Q_Doc.SQL.ADD('group by A.REC_NFIS');
     Q_Doc.SQL.ADD( ' order by A.REC_NFIS ' )  ;

  end else begin
     Q_Doc.SQL.ADD('Select A.REC_NFIS, ');
     Q_Doc.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor ');
     Q_Doc.SQL.ADD('from CPARECE A , CPACLIE B');
     Q_Doc.SQL.ADD('WHERE A.REC_CLIE = B.CLI_CODI ');
     Q_Doc.Sql.Add(' AND A.REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI ') ;
     if RECEBIMENTOI <> 0.0 then
        Q_Doc.Sql.Add(' and IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     if RECEBIMENTOF <> 0.0 then
        Q_Doc.Sql.Add(' and IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     if BancocontaI <> '' then
        Q_Doc.SQL.ADD( ' and Ire_Banc >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_Doc.SQL.ADD( ' and Ire_Banc <= '+''''+ BancoContaF +'''' );
     if LOTEI <> ''  then
        Q_Doc.Sql.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
     if LOTEF <> ''  then
        Q_Doc.Sql.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );
     Q_Doc.Sql.Add( ') ') ;
     if NumeroI <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_Codi >= '+ NumeroI );
     if NumeroF <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_Codi <= '+ NumeroF );
     if ClienteI <> '' then
        Q_Doc.SQL.ADD( ' and B.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_Doc.SQL.ADD( ' and B.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_Doc.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_Doc.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_Doc.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_Doc.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if PortadorI <> '' then
        Q_Doc.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Doc.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if DocumentoI <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI+'''');
     if DocumentoF <> '' then
        Q_Doc.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     Q_Doc.SQL.ADD(' group by A.REC_NFIS' );
     Q_Doc.SQL.ADD( ' order by A.REC_NFIS ' )  ;
  end;
  Q_Doc.open;
  ftOTAL := 0 ;
end;

procedure TFlstRbDocSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_Doc.close ;
  action := cafree ;
end;


procedure TFlstRbDocSint.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Q_IREC.Close;
  Q_IREC.Sql.Clear ;
  Q_IREC.Sql.Add(' select Sum(IRE_VTOT) as YValor from CPAIREC B, CPARECE A, CPACLIE F ');
  Q_IREC.Sql.Add(' where IRE_CODI =  A.REC_CODI ') ;
  Q_IREC.Sql.Add(' AND A.REC_CLIE =  F.CLI_CODI ') ;
  Q_IREC.Sql.Add(' and A.REC_NFIS = '+ '''' +   Q_docREC_NFIS.asstring + '''') ;
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


procedure TFlstRbDocSint.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,##0.00',Q_IRECYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IRECYVALOR.asfloat ;

end;

procedure TFlstRbDocSint.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  FTotal := 0 ;

end;

procedure TFlstRbDocSint.Lst_DocBeforePrint(Sender: TCustomQuickRep;
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

unit U_RbDRan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Wwtable;

type
  TFlstRbDRan = class(TForm)
    LST_DR: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    Q_DR: TwwQuery;
    DS_DR: TwwDataSource;
    Q_DRREC_CODI: TIntegerField;
    Q_DRREC_CLIE: TIntegerField;
    Q_DRREC_NFIS: TStringField;
    Q_DRREC_DEVE: TStringField;
    Q_DRREC_RAZA: TStringField;
    Q_DRREC_CGER: TStringField;
    Q_DRREC_VALO: TFloatField;
    Q_DRREC_DESC: TFloatField;
    Q_DRREC_VLIQ: TFloatField;
    Q_DRREC_VENC: TDateTimeField;
    Q_DRREC_VPAG: TFloatField;
    Q_DRREC_EMIS: TDateTimeField;
    Q_DRREC_MOED: TStringField;
    Q_DRREC_DCON: TDateTimeField;
    Q_DRREC_MORI: TStringField;
    Q_DRREC_DCOR: TDateTimeField;
    Q_DRREC_VORI: TFloatField;
    Q_DRREC_VPRE: TDateTimeField;
    Q_DRREC_HIST: TStringField;
    Q_DRREC_SALD: TFloatField;
    Q_DRREC_SITU: TStringField;
    Q_DRREC_FILI: TStringField;
    Q_DRIRE_CODI: TIntegerField;
    Q_DRIRE_DATA: TDateTimeField;
    Q_DRIRE_VDIF: TFloatField;
    Q_DRIRE_VTOT: TFloatField;
    Q_DRCON_DESC: TStringField;
    Q_DRCON_CODI: TStringField;
    Q_DRFIL_CODI: TStringField;
    Q_DRFIL_DESC: TStringField;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    Q_DRREC_BANC: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure LST_DRBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
   FGeralVliq : real ;
   fTotVliq : real ;

  end;

var
  FlstRbDRan: TFlstRbDRan;
  StrGer : String  ;
implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}



procedure TFlstRbDRan.FormCreate(Sender: TObject);
var StrTipo : string ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel2.caption := 'Relatório Analítico de Contas a Receber - Recebimento ' + StrTipo ;

  Q_DR.close ;
  Q_DR.SQL.clear ;
  if (RECEBIMENTOI = 0.0) and
     (RECEBIMENTOF = 0.0) and
     (BancoContaI  = '')  and
     (BancoContaF  = '')  and
     (LOTEI = '')         and
     (LOTEF = '' )        and
     (TIPO <> 0 )  then begin

     Q_DR.SQL.ADD('Select A.*,B.IRE_CODI,B.IRE_DATA,B.IRE_VDIF,B.IRE_VTOT,C.CON_DESC, ') ;
     Q_DR.SQL.ADD('C.CON_CODI,D.FIL_CODI,D.FIL_DESC ');
     Q_DR.SQL.ADD(' from CPARECE A, CPAIREC B, CPACONT C, CPAFILI D, CPACLIE F ');
     Q_DR.SQL.ADD('where A.REC_CLIE = F.CLI_CODI ');
     Q_DR.SQL.ADD('  and A.REC_CGER = C.CON_CODI ');
     Q_DR.SQL.ADD('  and A.REC_FILI = D.FIL_CODI ');
     Q_DR.SQL.ADD('  and A.REC_CODI = B.IRE_CODI ') ;
     if NumeroI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Codi >= ' + NumeroI );
     if NumeroF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Codi <= ' + NumeroF );
     if ClienteI <> '' then
        Q_DR.SQL.ADD( ' and F.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_DR.SQL.ADD( ' and F.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_DR.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_DR.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_Dr.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_Dr.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if DocumentoI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI +'''');
     if DocumentoF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     if PortadorI <> '' then
        Q_Dr.SQL.ADD( ' and a.Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Dr.SQL.ADD( ' and a.Rec_Banc <= '+''''+ PortadorF +'''');
     if Tipo = 1 then
        Q_DR.SQL.ADD( ' and A.Rec_Sald <> 0 ');
     Q_DR.SQL.ADD( ' order by B.IRE_DATA ' )  ;
  end else begin
     Q_DR.SQL.ADD('Select A.*,B.IRE_CODI,B.IRE_DATA,B.IRE_VDIF,B.IRE_VTOT,C.CON_DESC, ') ;
     Q_DR.SQL.ADD('C.CON_CODI,D.FIL_CODI,D.FIL_DESC ');
     Q_DR.SQL.ADD(' from CPARECE A, CPAIREC B, CPACONT C, CPAFILI D, CPACLIE F ');
     Q_DR.SQL.ADD('where A.REC_CLIE = F.CLI_CODI ');
     Q_DR.SQL.ADD('  and A.REC_CGER = C.CON_CODI ');
     Q_DR.SQL.ADD('  and A.REC_FILI = D.FIL_CODI ');
     Q_DR.SQL.ADD('  and A.REC_CODI = B.IRE_CODI ') ;
     if NumeroI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Codi >= ' + NumeroI );
     if NumeroF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Codi <= ' + NumeroF );
     if ClienteI <> '' then
        Q_DR.SQL.ADD( ' and F.CLI_APELIDO >= '+''''+ ClienteI +'''');
     if ClienteF <> '' then
        Q_DR.SQL.ADD( ' and F.CLI_APELIDO <= '+''''+ ClienteF +'''');
     if FilialI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Fili >= '+''''+ FilialI +'''');
     if FilialF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Fili <= '+''''+ FilialF +'''');
     if ContaGerencialI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     if ContaGerencialF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     if VencimentoI <> 0.0 then
        Q_DR.SQL.ADD( ' and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     if VencimentoF <> 0.0 then
        Q_DR.SQL.ADD( ' and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     if EMISSAOI <> 0.0 then
        Q_Dr.SQL.ADD( ' and A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     if EMISSAOF <> 0.0 then
        Q_Dr.SQL.ADD( ' and A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     if DocumentoI <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_NFis >= '+''''+ DocumentoI +'''');
     if DocumentoF <> '' then
        Q_DR.SQL.ADD( ' and A.Rec_NFis <= '+''''+ DocumentoF +'''');
     if PortadorI <> '' then
        Q_Dr.SQL.ADD( ' and Rec_Banc >= '+''''+ PortadorI +'''');
     if PortadorF <> '' then
        Q_Dr.SQL.ADD( ' and Rec_Banc <= '+''''+ PortadorF +'''');
     if BancocontaI <> '' then
        Q_DR.SQL.ADD( ' and B.Ire_Banc >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_DR.SQL.ADD( ' and B.Ire_Banc <= '+''''+ BancoContaF +'''');
     if LOTEI <> ''  then
        Q_Dr.SQL.ADD( ' and Ire_DOCT >= '+''''+ LOTEI +'''' );
     if LOTEF <> ''  then
        Q_Dr.SQL.ADD( ' and Ire_DOCT <= '+''''+ LOTEF +'''' );
     if RECEBIMENTOI <> 0.0 then
        Q_dr.Sql.Add(' and b.IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     if RECEBIMENTOF <> 0.0 then
        Q_dr.Sql.Add(' and b.IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     if Tipo = 1 then
        Q_DR.SQL.ADD( ' and A.Rec_Sald <> 0 ');
     Q_DR.SQL.ADD( ' order by B.IRE_DATA ' )  ;
  end;

  Q_DR.open;
  FGeralVliq := 0 ;
  fTotVliq := 0 ;

end;




procedure TFlstRbDRan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_DR.close ;
  action := cafree ;
end;

procedure TFlstRbDRan.QRDBText1Print(sender: TObject; var Value: String);
begin
  if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText2Print(sender: TObject; var Value: String);
begin
  if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText3Print(sender: TObject; var Value: String);
begin
   if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText5Print(sender: TObject; var Value: String);
begin
   if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText6Print(sender: TObject; var Value: String);
begin
  if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText7Print(sender: TObject; var Value: String);
begin
  if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText8Print(sender: TObject; var Value: String);
begin
   if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText9Print(sender: TObject; var Value: String);
begin
  if strGER = Q_drRec_Codi.asstring then value := '';

end;

procedure TFlstRbDRan.QRDBText10Print(sender: TObject; var Value: String);
begin
  if strGER = Q_drRec_Codi.asstring then begin
     value := '';
  end else    fTotVliq := fTotVliq + Q_DRREC_VLIQ.asfloat ;
  StrGER := Q_drRec_Codi.asstring ;
end;

procedure TFlstRbDRan.QRDBText4Print(sender: TObject; var Value: String);
begin
   if strGER = Q_drRec_Codi.asstring then value := '';

end;




procedure TFlstRbDRan.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fTotVliq) ;
  fGeralVliq := fGeralVliq + fTotVliq ;
  fTotVliq := 0 ;

end;

procedure TFlstRbDRan.QRExpr3Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fGeralVliq) ;
  fGeralVliq := 0 ;

end;

procedure TFlstRbDRan.LST_DRBeforePrint(Sender: TCustomQuickRep;
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

end.

unit U_RbCliSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstRbCliSint = class(TForm)
    Lst_CLI: TQuickRep;
    QRBand1: TQRBand;
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
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    Q_Cli: TwwQuery;
    DS_Cli: TwwDataSource;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    Q_IREC: TwwQuery;
    Q_IRECyvalor: TFloatField;
    Q_CliREC_RAZA: TStringField;
    Q_Clixvalor: TFloatField;
    Q_CliYVALOR: TFloatField;
    Q_CliCLI_APELIDO: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Lst_CLIBeforePrint(Sender: TCustomQuickRep;
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
  FlstRbCliSint: TFlstRbCliSint;

implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}




procedure TFlstRbCliSint.FormCreate(Sender: TObject);
var StrAnd : String ;
    StrTipo : String ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel4.caption := 'Relatório Sintético de Contas a Receber - Cliente ' + StrTipo ;

  Q_CLI.close ;
  Q_CLI.SQL.clear ;
  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0 )then begin
     Q_CLI.SQL.ADD('Select A.REC_RAZA, ');
     Q_CLI.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor, B.CLI_APELIDO, ');
     Q_CLI.SQL.ADD('SUM (A.REC_SALD) as   Yvalor');
     Q_CLI.SQL.ADD('from CPARECE A, CPACLIE B');
     Q_CLI.SQL.ADD(' WHERE A.REC_CLIE = B.CLI_CODI');

     StrAnd  :=  ' AND ';

     if NumeroI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Codi >= '+NumeroI );
        STRAND :=  ' AND ';
     end ;
     if NumeroF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Codi <= '+ NumeroF );
        STRAND :=  ' AND ';
     end ;

     if ClienteI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' B.CLI_APELIDO >= '+''''+ ClienteI +'''');
        STRAND :=  ' AND ';
     end ;
     if ClienteF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' B.CLI_APELIDO <= '+''''+ ClienteF +'''');
        STRAND :=  ' AND ';
     end ;

     if FilialI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Fili >= '+''''+ FilialI +'''');
        STRAND :=  ' AND ';
     end ;
     if FilialF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Fili <= '+''''+ FilialF +'''');
        STRAND :=  ' AND ';
     end ;

     if ContaGerencialI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
        STRAND :=  ' AND ';
     end ;
     if ContaGerencialF <> '' then begin
        Q_CLI.SQL.ADD( STRand + '  A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
        STRAND :=  ' AND ';
     end ;

     if VencimentoI <> 0.0 then begin
        Q_CLI.SQL.ADD(STRand + ' A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
        STRAND :=  ' AND ';
     end ;
     if VencimentoF <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
        STRAND :=  ' AND ';
     end ;

     if EMISSAOI <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + '  A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
        STRAND :=  ' AND ';
     end ;
     if EMISSAOF <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + '  A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
        STRAND :=  ' AND ';
     end ;

     if PortadorI <> '' then begin
        Q_CLI.SQL.ADD( STRand + '  Rec_Banc >= '+''''+ PortadorI +'''');
        STRAND :=  ' AND ';
     end ;
     if PortadorF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' Rec_Banc <= '+''''+ PortadorF +'''');
        STRAND :=  ' AND ';
     end ;

     if DocumentoI <> '' then begin
        Q_CLI.SQL.ADD( STRand + '  A.Rec_NFis >= '+''''+ DocumentoI+'''');
        STRAND :=  ' AND ';
     end ;
     if DocumentoF <> '' then  begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_NFis <= '+''''+ DocumentoF +'''');
        STRAND :=  ' AND ';
     end ;
     if TIPO = 1 then BEGIN
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Sald <> 0 ');
        STRAND :=  ' AND ';
     END;

     Q_CLI.SQL.ADD(' group by A.REC_RAZA, B.CLI_APELIDO');
     Q_CLI.SQL.ADD(' order by B.CLI_APELIDO')  ;

  end else begin

     Q_CLI.SQL.ADD('Select A.REC_RAZA, ');
     Q_CLI.SQL.ADD('SUM (A.REC_VLIQ) as   xvalor, B.CLI_APELIDO, ');
     Q_CLI.SQL.ADD('SUM (A.REC_SALD) as   Yvalor');
     Q_CLI.SQL.ADD('from CPARECE A, CPACLIE B, cpairec c');
     Q_CLI.SQL.ADD(' WHERE A.REC_CLIE = B.CLI_CODI');
     Q_cli.Sql.Add(' and   A.REC_CODI = c.IRE_CODI');

     STRAND :=  ' AND ';

     if RECEBIMENTOI <> 0.0 then BEGIN
        Q_CLI.Sql.Add(STRand + ' c.IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
        STRAND :=  ' AND ';
     END;
     if RECEBIMENTOF <> 0.0 then begin
        Q_CLI.Sql.Add(STRand + ' c.IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
        STRAND :=  ' AND ';
     end;

     if BancocontaI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' c.Ire_Banc >= '+''''+ BancoContaI +'''');
        STRAND :=  ' AND ';
     end;
     if BancocontaF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' c.Ire_Banc <= '+''''+ BancoContaF +'''' );
        STRAND :=  ' AND ';
     end;

     if LOTEI <> ''  then begin
        Q_Cli.SQL.ADD( STRand + ' c.Ire_DOCT >= '+''''+ LOTEI +'''' );
        STRAND :=  ' AND ';
     end;
     if LOTEF <> ''  then begin
        Q_Cli.SQL.ADD( STRand + ' c.Ire_DOCT <= '+''''+ LOTEF +'''' );
        STRAND :=  ' AND ';
      end;

     if NumeroI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Codi >= '+ NumeroI );
        STRAND :=  ' AND ';
     end;
     if NumeroF <> '' then begin
        Q_CLI.SQL.ADD( STRand + 'A.Rec_Codi <= '+ NumeroF );
        STRAND :=  ' AND ';
     end;

     if ClienteI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' B.CLI_APELIDO >= '+''''+ ClienteI +'''');
        STRAND :=  ' AND ';
     end;
     if ClienteF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' B.CLI_APELIDO <= '+''''+ ClienteF +'''');
        STRAND :=  ' AND ';
     end;

     if FilialI <> '' then begin
        Q_CLI.SQL.ADD( STRand + 'A.Rec_Fili >= '+''''+ FilialI +'''');
        STRAND :=  ' AND ';
     end;
     if FilialF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Fili <= '+''''+ FilialF +'''');
        STRAND :=  ' AND ';
     end;

     if ContaGerencialI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
        STRAND :=  ' AND ';
     end;
     if ContaGerencialF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
        STRAND :=  ' AND ';
     end;

     if VencimentoI <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
        STRAND :=  ' AND ';
     end;
     if VencimentoF <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
        STRAND :=  ' AND ';
     end;

     if EMISSAOI <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + 'A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
        STRAND :=  ' AND ';
      end;
     if EMISSAOF <> 0.0 then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
        STRAND :=  ' AND ';
     end;

     if PortadorI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' Rec_Banc >= '+''''+ PortadorI +'''');
        STRAND :=  ' AND ';
     end;
     if PortadorF <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' Rec_Banc <= '+''''+ PortadorF +'''');
        STRAND :=  ' AND ';
     end;

     if DocumentoI <> '' then begin
        Q_CLI.SQL.ADD( STRand + ' A.Rec_NFis >= '+''''+ DocumentoI+'''');
        STRAND :=  ' AND ';
     end;
     if DocumentoF <> '' then begin
        Q_CLI.SQL.ADD( STRand + 'A.Rec_NFis <= '+''''+ DocumentoF +'''');
        STRAND :=  ' AND ';
     end;

     if TIPO = 1 then BEGIN
        Q_CLI.SQL.ADD( STRand + ' A.Rec_Sald <> 0 ');
        STRAND :=  ' AND ';
     END;

     Q_CLI.SQL.ADD(' group by A.REC_RAZA, B.CLI_APELIDO');
     Q_CLI.SQL.ADD( ' order by B.CLI_APELIDO' )  ;
  end;
  Q_CLI.open;
  ftOTAL := 0 ;
end;

procedure TFlstRbCliSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_Cli.close ;
  Q_Irec.Close ;
  action := cafree ;
end;


procedure TFlstRbCliSint.Lst_CLIBeforePrint(Sender: TCustomQuickRep;
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


procedure TFlstRbCliSint.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Q_IREC.Close;
  Q_IREC.Sql.Clear ;
  Q_IREC.Sql.Add(' select Sum(IRE_VTOT) as YValor from CPAIREC B, CPARECE A, CPACLIE F');
  Q_IREC.Sql.Add(' where IRE_CODI =  A.REC_CODI ') ;
  Q_IREC.Sql.Add(' AND A.REC_CLIE =  F.CLI_CODI ') ;
  Q_IREC.Sql.Add(' and A.REC_RAZA = '+ '''' +   Q_CliREC_RAZA.asstring + '''') ;
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

procedure TFlstRbCliSint.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,##0.00',Q_IRECYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IRECYVALOR.asfloat ;

end;

procedure TFlstRbCliSint.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  FTotal := 0 ;
end;

end.

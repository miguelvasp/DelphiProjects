unit U_RbDRsint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, DBTables, Wwtable, Wwquery, Wwdatsrc;

type
  TFlstRbDRsint = class(TForm)
    LST_DR: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    DS_DR: TwwDataSource;
    Q_DR: TwwQuery;
    Q_DRIRE_DATA: TDateTimeField;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    Q_DRyvalor: TFloatField;
    Q_DRxValor: TFloatField;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_DRBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstRbDRsint: TFlstRbDRsint;

implementation
uses RelFRec, CPPMENU ;
{$R *.DFM}




procedure TFlstRbDRsint.FormCreate(Sender: TObject);
var StrTipo : String ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel4.caption := 'Relatório Sintético de Contas a Receber - Recebimento ' + StrTipo ;

  Q_DR.close ;
  Q_DR.SQL.clear ;

  Q_DR.SQL.ADD('Select B.IRE_DATA, ');
  Q_DR.SQL.ADD(' SUM(B.IRE_VTOT) as yvalor, ');
  Q_DR.SQL.ADD(' SUM(C.REC_VLIQ) as xValor ');
  Q_DR.SQL.ADD('  from CPAIREC B, CPARECE c, CPACLIE D ') ;
  Q_Dr.Sql.Add(' where c.REC_CLIE = D.CLI_CODI ') ;
  Q_Dr.Sql.Add('   and c.REC_CODI = B.IRE_CODI ') ;

  if NumeroI <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Codi >= ' + NumeroI );
  if NumeroF <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Codi <= ' + NumeroF );

  if ClienteI <> '' then
     Q_DR.SQL.ADD( ' and D.CLI_APELIDO >= '+''''+ ClienteI +'''');
  if ClienteF <> '' then
     Q_DR.SQL.ADD( ' and D.CLI_APELIDO <= '+''''+ ClienteF +'''');

  if FilialI <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Fili >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Fili <= '+''''+ FilialF +'''');

  if ContaGerencialI <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Cger >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Cger <= '+''''+ ContaGerencialF +'''');

  if VencimentoI <> 0.0 then
     Q_DR.SQL.ADD( ' and c.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
  if VencimentoF <> 0.0 then
     Q_DR.SQL.ADD( ' and c.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');

  if EMISSAOI <> 0.0 then
     Q_Dr.SQL.ADD( ' and c.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
  if EMISSAOF <> 0.0 then
     Q_Dr.SQL.ADD( ' and c.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');

  if DocumentoI <> '' then
     Q_Dr.SQL.ADD( ' and c.Rec_NFis >= '+''''+ DocumentoI +'''');
  if DocumentoF <> '' then
     Q_Dr.SQL.ADD( ' and c.Rec_NFis <= '+''''+ DocumentoF +'''');

  if PortadorI <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Banc >= '+''''+ PortadorI +'''');
  if PortadorF <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_Banc <= '+''''+ PortadorF +'''');

  if DocumentoI <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_NFis >= '+''''+ DocumentoI+'''');
  if DocumentoF <> '' then
     Q_DR.SQL.ADD( ' and c.Rec_NFis <= '+''''+ DocumentoF +'''');

  if Tipo = 1 then
     Q_DR.SQL.ADD(' and c.Rec_Sald <> 0 ');

//  Q_Dr.Sql.Add(' )') ;

  if BancocontaI <> '' then
     Q_DR.SQL.ADD( ' and B.Ire_Banc >= '+''''+ BancoContaI +'''');
  if BancocontaF <> '' then
     Q_DR.SQL.ADD( ' and B.Ire_Banc <= '+''''+ BancoContaF +'''');
  if RECEBIMENTOI <> 0.0 then
     Q_Dr.Sql.Add(' and b.IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
  if RECEBIMENTOF <> 0.0 then
     Q_Dr.Sql.Add(' and b.IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
  if LOTEI <> ''  then
     Q_Dr.SQL.ADD( ' and b.Ire_DOCT >= '+''''+ LOTEI +'''' );
  if LOTEF <> ''  then
     Q_Dr.SQL.ADD( ' and b.Ire_DOCT <= '+''''+ LOTEF +'''' );

  Q_DR.SQL.ADD('group by B.IRE_DATA ');
  Q_DR.SQL.ADD( ' order by B.IRE_DATA ' )  ;

  Q_DR.open;
end;

procedure TFlstRbDRsint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_DR.close ;
  action := cafree ;
end;




procedure TFlstRbDRsint.LST_DRBeforePrint(Sender: TCustomQuickRep;
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

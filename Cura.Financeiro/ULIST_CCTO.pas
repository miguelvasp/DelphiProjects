unit ULIST_CCTO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFLIST_CCONT = class(TForm)
    QR_CCONT: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    Q_CCONT: TQuery;
    DS_CCONT: TDataSource;
    Q_CCONTCTC_CODI: TStringField;
    Q_CCONTCTC_DESC: TStringField;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_CCONTBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLIST_CCONT: TFLIST_CCONT;
  STRAND : STRING ;
implementation
 USES UCCONT, CPPMENU ;
{$R *.DFM}

procedure TFLIST_CCONT.FormCreate(Sender: TObject);
begin
  STRAND := ' WHERE ';
  Q_CCONT.CLOSE ;
  Q_CCONT.SQL.CLEAR ;
  Q_CCONT.SQL.Add ('SELECT * FROM CPACTCO ') ;

  if CODI <> '' then BEGIN
     Q_CCONT.SQL.ADD( STRAND + ' CTC_CODI >= '+ '''' +  CODI + '''' );
     STRAND := 'AND '
  END ;

  if CODF <> '' then
     Q_CCONT.SQL.ADD( STRAND + ' CTC_CODI <= '+ '''' +  CODF + '''' );

  if ITipo = 0  then
     Q_CCONT.SQL.ADD(' order by CTC_CODI ')  ;
  if ITipo = 1  then
     Q_CCONT.SQL.ADD(' order by CTC_DESC ')  ;

  Q_CCONT.open  ;
end;

procedure TFLIST_CCONT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CCONT.close ;
  action := cafree ;
end;

procedure TFLIST_CCONT.QR_CCONTBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//
// Seleciona o Nome da Empresa
//
   QRLabel11.caption := FMenu.FUsuario ;

end;

end.

unit ULIST_PORT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Wwquery, Db, Wwtable, Wwdatsrc, Qrctrls, QuickRpt, ExtCtrls;

type
  TFLIST_PORT = class(TForm)
    QR_PORT: TQuickRep;
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
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    DS_PORT: TwwDataSource;
    Q_PORT: TwwQuery;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QR_PORTBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLIST_PORT: TFLIST_PORT;
  STRAND : STRING ;
implementation

uses UFILTRO_PORTADORES,CPPMENU;

{$R *.DFM}

procedure TFLIST_PORT.FormCreate(Sender: TObject);
begin

  STRAND := ' WHERE ';
  Q_PORT.CLOSE ;
  Q_PORT.SQL.CLEAR ;
  Q_PORT.SQL.Add ('SELECT * FROM SIALCOB ') ;

  if CODI <> '' then BEGIN
     Q_PORT.SQL.ADD( STRAND + ' LCO_CODI >= '+ '''' +  CODI + '''' );
     STRAND := 'AND '
  END ;

  if CODF <> '' then
     Q_PORT.SQL.ADD( STRAND + ' LCO_CODI <= '+ '''' +  CODF + '''' );

  if ITipo = 0  then
     Q_PORT.SQL.ADD(' order by LCO_CODI ')  ;
  if ITipo = 1  then
     Q_PORT.SQL.ADD(' order by LCO_BANC ')  ;

  Q_PORT.open  ;
end;

procedure TFLIST_PORT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PORT.close ;
  action := cafree ;
end;

procedure TFLIST_PORT.QR_PORTBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

    //  vLogo : TBlobField;

begin
//
// Seleciona o Nome da Empresa
//
   QRLabel11.caption := FMenu.FUsuario ;
end;

end.

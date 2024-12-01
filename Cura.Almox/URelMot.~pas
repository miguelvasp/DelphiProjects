
unit URelMot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelMotivos = class(TForm)
    QR_MOTI: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    Descricao: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    Q_MOTI: TwwQuery;
    Q_MOTIMOT_ID: TAutoIncField;
    Q_MOTIMOT_DESC: TStringField;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    Q_MOTITP_MOT: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMotivos: TFRelMotivos;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelMotivos.FormCreate(Sender: TObject);
begin
        Q_MOTI.Open;
end;

procedure TFRelMotivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_MOTI.Close;
        Action := cafree;
end;

procedure TFRelMotivos.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        if Q_MOTITP_MOT.AsString = 'A' THEN
           QRLabel5.Caption:= 'Almoxarifado'
        ELSE
           QRLabel5.Caption:= 'Devolução'
end;

end.

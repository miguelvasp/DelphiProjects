unit URelUni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, jpeg;

type
  TFRelUnidades = class(TForm)
    QR_UNI: TQuickRep;
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
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    Q_UNI: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    QRDBText9: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelUnidades: TFRelUnidades;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelUnidades.FormCreate(Sender: TObject);
begin
        Q_UNI.Open;
end;

procedure TFRelUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_UNI.Close;
        Action := cafree;
end;

end.

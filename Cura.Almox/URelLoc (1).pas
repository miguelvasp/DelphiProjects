unit URelLoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelLocais = class(TForm)
    QR_LOC: TQuickRep;
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
    QRDBText8: TQRDBText;
    Q_LOC: TwwQuery;
    Q_LOCLocal_ID: TAutoIncField;
    Q_LOCDescricao: TStringField;
    Q_LOCDisponivelSN: TStringField;
    Q_LOCCONSUMO: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelLocais: TFRelLocais;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelLocais.FormCreate(Sender: TObject);
begin
        Q_LOC.Open;
end;

procedure TFRelLocais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_LOC.Close;
        Action := cafree;
end;

end.

unit URelGrMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelGrMateriais = class(TForm)
    QR_GRMAT: TQuickRep;
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
    Q_GRMAT: TwwQuery;
    Q_GRMATGRU_ID: TAutoIncField;
    Q_GRMATGRU_DESC: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGrMateriais: TFRelGrMateriais;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelGrMateriais.FormCreate(Sender: TObject);
begin
        Q_GRMAT.Open;
end;

procedure TFRelGrMateriais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_GRMAT.Open;
        Action:= cafree;
end;

end.

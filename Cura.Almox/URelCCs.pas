unit URelCCs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelCCs = class(TForm)
    QR_CCs: TQuickRep;
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
    Q_CCS: TwwQuery;
    Q_CCSCC_ID: TAutoIncField;
    Q_CCSCC_Desc: TStringField;
    QRImage1: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCCs: TFRelCCs;

implementation

{$R *.DFM}

procedure TFRelCCs.FormCreate(Sender: TObject);
begin
        Q_CCs.Open;
end;

procedure TFRelCCs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_CCs.Open;
        Action:= cafree;
end;

end.

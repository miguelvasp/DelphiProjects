unit URelTpDocumento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelTpDocumento = class(TForm)
    TpDocumento: TQuickRep;
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
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Q_CCSTD_ID: TAutoIncField;
    Q_CCSDescricao: TStringField;
    Q_CCSConceito: TMemoField;
    Q_CCSApelido: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTpDocumento: TFRelTpDocumento;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelTpDocumento.FormCreate(Sender: TObject);
begin
        Q_CCs.Open;
end;

procedure TFRelTpDocumento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_CCs.Open;
        Action:= cafree;
end;

end.

unit URelUniCob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls;

type
  TFRelUniCob = class(TForm)
    UNICOB: TQuickRep;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    Q_UNICOB: TwwQuery;
    Q_UNICOBUCOB_ID: TAutoIncField;
    Q_UNICOBUCOB_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelUniCob: TFRelUniCob;

implementation
uses USenha,Uabtabelas, UMENU, UUnidCob;
{$R *.DFM}

procedure TFRelUniCob.FormCreate(Sender: TObject);
begin
  Q_UNICOB.open ;
end;

procedure TFRelUniCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_UNICOB.close ;
  action := cafree ;
end;

end.

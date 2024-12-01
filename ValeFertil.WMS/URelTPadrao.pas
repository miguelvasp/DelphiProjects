unit URelTPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelTPadrao = class(TForm)
    TPADRAO: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    Q_TPADRAO: TwwQuery;
    Q_TPADRAOCodTexto: TStringField;
    Q_TPADRAOLinha1: TStringField;
    Q_TPADRAOLinha2: TStringField;
    Q_TPADRAOLinha3: TStringField;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTPadrao: TFRelTPadrao;

implementation
uses USenha,Umenu, UAbTabelas, UTexPadrao;
{$R *.DFM}

procedure TFRelTPadrao.FormCreate(Sender: TObject);
begin
  Q_TPADRAO.open ;
end;

procedure TFRelTPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TPADRAO.close ;
  action := cafree ;
end;

end.

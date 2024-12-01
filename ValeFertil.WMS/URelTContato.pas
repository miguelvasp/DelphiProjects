unit URelTContato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelTContato = class(TForm)
    TCONTATO: TQuickRep;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    Q_TCONTATO: TwwQuery;
    Q_TCONTATOTCONT_ID: TAutoIncField;
    Q_TCONTATOTCONT_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTContato: TFRelTContato;

implementation
uses USenha,Uabtabelas, UMenu, UTpContato;
{$R *.DFM}

procedure TFRelTContato.FormCreate(Sender: TObject);
begin
  Q_TCONTATO.open ;
end;

procedure TFRelTContato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TCONTATO.close ;
  action := cafree ;
end;

end.

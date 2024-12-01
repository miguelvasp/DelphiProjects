unit URelMunicipio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelMunicipio = class(TForm)
    MUNI: TQuickRep;
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
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIUF_SIGLA: TStringField;
    Q_MUNIREG_ID: TIntegerField;
    Q_MUNIREG_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMunicipio: TFRelMunicipio;

implementation
uses USenha,Uabtabelas, UMenu, UMunicipio;
{$R *.DFM}

procedure TFRelMunicipio.FormCreate(Sender: TObject);
begin
  Q_MUNI.open ;
end;

procedure TFRelMunicipio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_MUNI.close ;
  action := cafree ;
end;

end.

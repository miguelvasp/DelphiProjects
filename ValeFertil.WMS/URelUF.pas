unit URelUF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelUF = class(TForm)
    UF: TQuickRep;
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
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Q_UF: TwwQuery;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelUF: TFRelUF;

implementation
uses USenha,Umenu, UAbTabelas, UUF;
{$R *.DFM}

procedure TFRelUF.FormCreate(Sender: TObject);
begin
  Q_UF.open ;
end;

procedure TFRelUF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_UF.close ;
  action := cafree ;
end;

end.

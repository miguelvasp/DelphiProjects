unit URelRegiao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, DBTables, Wwquery, QuickRpt, ExtCtrls, jpeg;

type
  TFRelRegiao = class(TForm)
    REG: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    Q_REG: TwwQuery;
    Q_REGREG_NOME: TStringField;
    Q_REGREG_ID: TAutoIncField;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRImage1: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRegiao: TFRelRegiao;

implementation
uses USenha,Uabtabelas, URegiao;


{$R *.DFM}

procedure TFRelRegiao.FormCreate(Sender: TObject);
begin
   Q_REG.open ;
end;

procedure TFRelRegiao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_REG.close ;
  action := cafree ;
end;

end.

unit URelTServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Qrctrls, jpeg;

type
  TFRelTServico = class(TForm)
    TSERVICO: TQuickRep;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    Q_TSERVICO: TwwQuery;
    Q_TSERVICOTSER_ID: TAutoIncField;
    Q_TSERVICOTSER_NOME: TStringField;
    Q_TSERVICOTSER_CONCEITO: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTServico: TFRelTServico;

implementation
uses USenha,Uabtabelas, UMenu, UTpServico;
{$R *.DFM}

procedure TFRelTServico.FormCreate(Sender: TObject);
begin
  Q_TSERVICO.open ;
end;

procedure TFRelTServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TSERVICO.close ;
  action := cafree ;
end;

end.

unit URelUniVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, DBTables, Wwquery, QuickRpt, ExtCtrls, jpeg;

type
  TFRelUniVenda = class(TForm)
    UNIVENDA: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
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
    Q_UNIVENDA: TwwQuery;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    Q_UNIVENDAUVEN_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelUniVenda: TFRelUniVenda;

implementation
uses USenha,Umenu, UAbTabelas, UUnidVenda;
{$R *.DFM}

procedure TFRelUniVenda.FormCreate(Sender: TObject);
begin
  Q_UNIVENDA.open ;
end;

procedure TFRelUniVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_UNIVENDA.close ;
  action := cafree ;
end;

end.

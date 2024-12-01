unit UfrmRelConsumoSemPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, ADODB;

type
  TfrmRelConsumoSemPreco = class(TForm)
    report: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    qrRel: TADOQuery;
    qrRelMAT_DESC: TStringField;
    qrRelQtde: TFloatField;
    qrRelUni_Sigla: TStringField;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrRelMAT_ID: TAutoIncField;
    qrAux: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelConsumoSemPreco: TfrmRelConsumoSemPreco;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelConsumoSemPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrRel.CLOSE;
  Action := caFree;
  frmRelConsumoSemPreco := nil;
end;

procedure TfrmRelConsumoSemPreco.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  //Value := FormatFloat('###,###,##0.00', qrRelQtde.AsFloat - qrRel)
end;

end.

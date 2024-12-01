unit UfrmRecebPesqListagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRecebPesqListagem = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRDBImage1: TQRDBImage;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebPesqListagem: TfrmRecebPesqListagem;

implementation

uses URecebPesq;

{$R *.DFM}

procedure TfrmRecebPesqListagem.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption := DateToStr(Now);
end;

end.

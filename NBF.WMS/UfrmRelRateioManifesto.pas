unit UfrmRelRateioManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelRateioManifesto = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape5: TQRShape;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbFiltros: TQRLabel;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRateioManifesto: TfrmRelRateioManifesto;
  total : Double;
implementation

uses UfrmRateiaManifesto;

{$R *.DFM}

procedure TfrmRelRateioManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelRateioManifesto := nil;
end;

procedure TfrmRelRateioManifesto.FormCreate(Sender: TObject);
begin
  total := 0;
end;

procedure TfrmRelRateioManifesto.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  total := total + frmRateiaManifesto.qrManiVALOR.Value;
end;

procedure TfrmRelRateioManifesto.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption := 'Total.......: R$' + FormatFloat('###,###,##0.00', total);
  total := 0; 
end;

end.

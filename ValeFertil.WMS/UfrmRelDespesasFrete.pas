unit UfrmRelDespesasFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, jpeg;

type
  TfrmRelDespesasFrete = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRMemo1: TQRMemo;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    total : Double;
  public
    { Public declarations }
  end;

var
  frmRelDespesasFrete: TfrmRelDespesasFrete;

implementation

uses UfrmDespesasFrete;

{$R *.DFM}

procedure TfrmRelDespesasFrete.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  total := total + frmDespesasFrete.qrDespesasVALOR.Value;
end;

procedure TfrmRelDespesasFrete.QRLabel7Print(sender: TObject;
  var Value: String);
begin
   Value := FormatFloat('###,###,##0.00', total);
   total := 0;
end;

procedure TfrmRelDespesasFrete.FormCreate(Sender: TObject);
begin
  total := 0;
end;

procedure TfrmRelDespesasFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelDespesasFrete := nil;
end;

end.

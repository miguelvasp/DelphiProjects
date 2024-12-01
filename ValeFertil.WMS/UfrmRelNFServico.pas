unit UfrmRelNFServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, gtQRXport_Excel, gtQRXport, gtQRXport_Doc,
  gtQRXport_PDF, QuickRpt, ExtCtrls;

type
  TfrmRelNFServico = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    gtQRLabel1: TgtQRLabel;
    lbFiltro: TgtQRLabel;
    gtQRPDFExport1: TgtQRPDFExport;
    gtQRExcelExport1: TgtQRExcelExport;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    gtQRLabel7: TgtQRLabel;
    gtQRLabel8: TgtQRLabel;
    gtQRShape1: TgtQRShape;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    gtQRDBText6: TgtQRDBText;
    gtQRDBText7: TgtQRDBText;
    LBtOTAL: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    gtQRDBText8: TgtQRDBText;
    gtQRShape2: TgtQRShape;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure gtQRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    TOTAL : Real;

  public
    { Public declarations }
  end;

var
  frmRelNFServico: TfrmRelNFServico;

implementation

uses frmPesqNfServico;

{$R *.DFM}

procedure TfrmRelNFServico.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   TOTAL := TOTAL + fPesqNfServico.qrBuscaNFI_TOTA.AsFloat;
end;

procedure TfrmRelNFServico.FormCreate(Sender: TObject);
begin
   TOTAL := 0;
end;

procedure TfrmRelNFServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelNFServico := NIL;
end;

procedure TfrmRelNFServico.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LBtOTAL.Caption := 'Valor Total: ' + FormatFloat('###,###,##0.00', TOTAL);
  TOTAL := 0;
end;

procedure TfrmRelNFServico.gtQRDBText8Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,###,##0.00', fPesqNfServico.qrBuscaNFI_TOTA.AsFloat - fPesqNfServico.qrBuscaNFI_ISS.AsFloat);
end;

end.

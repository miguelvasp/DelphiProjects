unit ufrmRelMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  gtQrCtrls, Qrctrls, gtQRXport_PDF, gtQRXport, gtQRXport_Doc,
  gtQRXport_Excel, QuickRpt, ExtCtrls;

type
  TfrmRelMateriais = class(TForm)
    QR_MOTI: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRDBImage1: TQRDBImage;
    QRBand1: TQRBand;
    gtQRExcelExport1: TgtQRExcelExport;
    gtQRPDFExport1: TgtQRPDFExport;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRLabel1: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMateriais: TfrmRelMateriais;

implementation

uses UPesqMateriais;

{$R *.DFM}

end.

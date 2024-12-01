unit ufrmConsultaOSRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, gtQrCtrls, gtQRXport_RTF, gtQRXport_Excel,
  gtQRXport, gtQRXport_Doc, gtQRXport_PDF, jpeg;

type
  TfrmConsultaOSRel = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRShape5: TQRShape;
    gtQRPDFExport1: TgtQRPDFExport;
    gtQRExcelExport1: TgtQRExcelExport;
    gtQRRTFExport1: TgtQRRTFExport;
    gtQRLabel1: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    QRBand2: TQRBand;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaOSRel: TfrmConsultaOSRel;

implementation

uses UFConsultaOS;

{$R *.DFM}

end.

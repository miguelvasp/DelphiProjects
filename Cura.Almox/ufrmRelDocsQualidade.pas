unit ufrmRelDocsQualidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelDocsQualidade = class(TForm)
    QuickRep1: TQuickRep;
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
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDocsQualidade: TfrmRelDocsQualidade;

implementation

uses frmDocsQualidade;

{$R *.DFM}

end.

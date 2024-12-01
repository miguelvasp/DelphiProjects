unit UfrmRelTransferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;   

type
  TfrmRelTransferencia = class(TForm)
    q: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRMemo4: TQRMemo;
    QRMemo5: TQRMemo;
    QRMemo6: TQRMemo;
    QRMemo7: TQRMemo;
    QRMemo8: TQRMemo;
    QRMemo9: TQRMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTransferencia: TfrmRelTransferencia;

implementation

uses UfrmTransferencia, CPPMENU;

{$R *.DFM}

end.

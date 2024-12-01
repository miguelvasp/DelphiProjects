unit UfrmFaturamentoMultimedImprimir;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmFaturamentoMultimedImprimir = class(TForm)
    RelReceb: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel30: TQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFaturamentoMultimedImprimir: TfrmFaturamentoMultimedImprimir;

implementation

uses UfrmFaturamentoMultimed;

{$R *.DFM}

end.

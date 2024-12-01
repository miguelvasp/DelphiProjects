unit UfrmRelTranferencia2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TfrmRelTranfer = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTranfer: TfrmRelTranfer;

implementation

uses UfrmTransferencia;

{$R *.DFM}

end.

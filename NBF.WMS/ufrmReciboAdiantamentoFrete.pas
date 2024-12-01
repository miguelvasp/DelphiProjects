unit ufrmReciboAdiantamentoFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmReciboAdiantamentoFrete = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRMemo1: TQRMemo;
    lbData: TQRLabel;
    lbMotorista: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReciboAdiantamentoFrete: TfrmReciboAdiantamentoFrete;

implementation

uses UfrmDespesasFrete;

{$R *.DFM}

procedure TfrmReciboAdiantamentoFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmReciboAdiantamentoFrete := nil;
end;

end.

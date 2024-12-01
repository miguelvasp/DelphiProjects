unit UfrmLancamentoCaixaRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmLancamentoCaixaRel = class(TForm)
    QuickRep1: TQuickRep;
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
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    lbFiltro: TQRLabel;
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
  frmLancamentoCaixaRel: TfrmLancamentoCaixaRel;
  total : Real;

implementation

uses UfrmLancamentoCaixa;

{$R *.DFM}

procedure TfrmLancamentoCaixaRel.FormCreate(Sender: TObject);
begin
  total := 0;
end;

procedure TfrmLancamentoCaixaRel.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   total := total +  frmLancamentoCaixa.qrBuscaVALOR_PARCELA.AsFloat;
end;

procedure TfrmLancamentoCaixaRel.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel15.Caption := 'Total R$ ' + FormatFloat('###,###,##0.00', total);
   total := 0;
end;

end.

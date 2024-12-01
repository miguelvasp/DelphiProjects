unit ufrmContratoFreteListaRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, jpeg;

type
  TfrmContratoFreteListaRel = class(TForm)
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
    QRLabel37: TQRLabel;
    QRLabel6: TQRLabel;
    tipodeOS: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    lbTotal: TQRLabel;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratoFreteListaRel: TfrmContratoFreteListaRel;
  total : Real;
implementation

uses UfrmContratoFretePesq;

{$R *.DFM}

procedure TfrmContratoFreteListaRel.QRBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     total := total + frmContratoFretePesq.qrBuscaValorSaldoQuitacao.AsFloat;
end;

procedure TfrmContratoFreteListaRel.FormCreate(Sender: TObject);
begin
        total := 0;
end;

procedure TfrmContratoFreteListaRel.QRBand3AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
    total := 0;
end;

procedure TfrmContratoFreteListaRel.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lbTotal.Caption := FormatFloat('###,###,##0.00', total);
end;

end.

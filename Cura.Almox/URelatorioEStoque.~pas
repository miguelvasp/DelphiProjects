unit URelatorioEStoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelatorioEStoque = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbFiltros: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRBand3: TQRBand;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioEStoque: TfrmRelatorioEStoque;
  total : Real;

implementation

uses UConsultaEstoque, UMenu;

{$R *.DFM}

procedure TfrmRelatorioEStoque.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    total := total + frmEstoque.QrbuscaREPOSICAO.AsFloat;
end;

procedure TfrmRelatorioEStoque.FormCreate(Sender: TObject);
begin
  total := 0;
end;

procedure TfrmRelatorioEStoque.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabel10.Caption := FormatFloat('###,###,##0.00', total);
    total := 0;
end;

end.

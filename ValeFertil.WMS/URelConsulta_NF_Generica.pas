unit URelConsulta_NF_Generica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  gtQRXport_PDF, gtQRXport, gtQRXport_Doc, gtQRXport_Excel, Qrctrls,
  gtQrCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TfrmRelConsulta_Nf_Generica = class(TForm)
    Report: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TgtQRShape;
    QRShape3: TgtQRShape;
    QRImage1: TgtQRImage;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRLabel38: TgtQRLabel;
    QRLabel6: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    gtQRLabel1: TgtQRLabel;
    QRDBText6: TQRDBText;
    gtQRExcelExport1: TgtQRExcelExport;
    gtQRPDFExport1: TgtQRPDFExport;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    lbTotalQtde: TQRLabel;
    lbTotalPeso: TQRLabel;
    lbTotalValor: TQRLabel;
    gtQRShape1: TgtQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  frmRelConsulta_Nf_Generica: TfrmRelConsulta_Nf_Generica;
  qtde, peso, valor : Double;
implementation

uses UFConsultaNFGen;

{$R *.DFM}

procedure TfrmRelConsulta_Nf_Generica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelConsulta_Nf_Generica := nil;
end;

procedure TfrmRelConsulta_Nf_Generica.QRBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);

begin
   qtde := qtde + FConsultaNFGen.Q_CONSULQTDE.Value;
   peso := peso + FConsultaNFGen.Q_CONSULPBRUTO.Value;
   valor := valor + FConsultaNFGen.Q_CONSULNFI_TOTA.Value;
end;

procedure TfrmRelConsulta_Nf_Generica.FormCreate(Sender: TObject);
begin
  qtde := 0;
  peso := 0;
  valor := 0;
end;

procedure TfrmRelConsulta_Nf_Generica.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lbTotalQtde.Caption := FormatFloat('##0.00',qtde);
  lbTotalPeso.Caption := FormatFloat('##0.00',peso);
  lbTotalValor.Caption := FormatFloat('##0.00',valor);
end;

end.

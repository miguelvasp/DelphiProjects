unit URelFaturas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls;

type
  TFRelFaturas = class(TForm)
    ConsNF: TQuickRep;
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
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel9: TgtQRLabel;
    QRLabel38: TgtQRLabel;
    QRLabel39: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText5: TgtQRDBText;
    QRDBText6: TgtQRDBText;
    QRDBText8: TgtQRDBText;
    QRDBText10: TgtQRDBText;
    QRBand3: TQRBand;
    QRLabel13: TgtQRLabel;
    QRLabel37: TgtQRLabel;
    procedure QRDBText8Print(sender: TObject; var Value: String);
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
  FRelFaturas: TFRelFaturas;
  TOTALVALOR  : real;
implementation
uses UFatura;
{$R *.DFM}

procedure TFRelFaturas.QRDBText8Print(sender: TObject; var Value: String);
begin
  
  IF FFatura.Q_FATFAT_TIPO.asstring = '0' then
     value := 'Transporte' ;

  IF FFatura.Q_FATFAT_TIPO.asstring = '1' then
    value := 'Armazém' ;
end;

procedure TFRelFaturas.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    TOTALVALOR  := (TOTALVALOR + FFatura.Q_FATFAT_VALOR.asfloat) ;
end;

procedure TFRelFaturas.FormCreate(Sender: TObject);
begin
   TOTALVALOR  := 0 ;
end;

procedure TFRelFaturas.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTALVALOR  := 0 ;
end;

procedure TFRelFaturas.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel37.caption := formatfloat('###,###,##0.00' ,TOTALVALOR) ;
end;

end.

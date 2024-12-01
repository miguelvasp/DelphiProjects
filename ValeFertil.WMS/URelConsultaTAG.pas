unit URelConsultaTAG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, jpeg;


type
  TFRelConsultaTAG = class(TForm)
    ConsultaPosicao: TQuickRep;
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
    QRLabel17: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel21: TgtQRLabel;
    QRLabel28: TgtQRLabel;
    QRLabel39: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText8: TgtQRDBText;
    QRDBText9: TgtQRDBText;
    QRDBText10: TgtQRDBText;
    gtQRDBText1: TgtQRDBText;
    gtQRLabel1: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    QRLabel22: TgtQRLabel;
    QRLabel29: TgtQRLabel;
    QRLabel31: TgtQRLabel;
    QRLabel30: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    gtQRLabel7: TgtQRLabel;
    gtQRLabel8: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    QRLabel38: TgtQRLabel;
    gtQRLabel10: TgtQRLabel;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRLabel3: TgtQRLabel;
    gtQRDBText4: TgtQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaTAG: TFRelConsultaTAG;

implementation
uses UConsultaTAG ;
{$R *.DFM}

procedure TFRelConsultaTAG.FormCreate(Sender: TObject);
begin
  IF FConsultaTAG.Label11.caption <> '' then  begin
     qrLabel29.caption := FConsultaTAG.Label11.caption   ;
     qrLabel30.caption := FConsultaTAG.Label15.caption   ;
  end else begin
     qrLabel29.caption :=  'Não Preenchido'   ;
     qrLabel30.caption :=  'Não Preenchido'   ;
  end ;

  IF FConsultaTAG.Label10.caption <> '' then
     qrLabel28.caption := FConsultaTAG.Label10.caption
   else
     qrLabel28.caption :=  'Não Preenchido'   ;

   IF FConsultaTAG.Label7.caption <> '' then
     gtQRLabel4.caption := FConsultaTAG.Label7.caption
   else
     gtQRLabel4.caption :=  'Não Preenchido'   ;

  IF FConsultaTAG.Label4.caption <> '' then
     QRLabel32.caption := FConsultaTAG.Label4.caption
   else
     QRLabel32.caption :=  'Não Preenchido'   ;

   IF FConsultaTAG.Label6.caption <> '' then
     QRLabel33.caption := FConsultaTAG.Label6.caption
   else
     QRLabel33.caption :=  'Não Preenchido'   ;


   IF FConsultaTAG.Label9.caption <> '' then
     gtQRLabel6.caption := FConsultaTAG.Label9.caption
   else
     gtQRLabel6.caption :=  'Não Preenchido'   ;

   IF FConsultaTAG.Label13.caption <> '' then
     gtQRLabel8.caption := FConsultaTAG.Label13.caption
   else
     gtQRLabel8.caption :=  'Não Preenchido'   ;










   
end;

end.

unit URelConsultaPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelConsultaPosicao = class(TForm)
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
    QRLabel38: TgtQRLabel;
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText8: TgtQRDBText;
    QRDBText9: TgtQRDBText;
    QRDBText10: TgtQRDBText;
    gtQRDBText1: TgtQRDBText;
    QRLabel23: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    gtQRLabel1: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaPosicao: TFRelConsultaPosicao;

implementation
uses UFConsultaPosicao,UConsultaPosicao ;
{$R *.DFM}

procedure TFRelConsultaPosicao.FormCreate(Sender: TObject);
begin
    IF ARE <> '' then
     qrLabel28.caption :=  FFConsultaPosicao.wwDBLookupCombo7.text
    else
     qrLabel28.caption :='Não Preenchido' ;

    IF POSI <> '' then
      qrLabel32.caption :=  FFConsultaPosicao.wwDBLookupCombo1.text
    else
      qrLabel32.caption :=   'Não Preenchido' ;

    IF POSF <> '' then
      qrLabel33.caption :=  FFConsultaPosicao.wwDBLookupCombo2.text
    else
      qrLabel33.caption :='Não Preenchido' ;
                                           
     gtQRLabel1.caption := FConsultaPosicao.Label1.caption ;

end;

procedure TFRelConsultaPosicao.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   IF FConsultaPosicao.Q_POSPOS_UTILIZADO.asstring = 'S' then 
      gtQRLabel3.caption := 'Ocupada'
    else
      gtQRLabel3.caption := 'Livre'

end;

end.

unit URelHistNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelHistNF = class(TForm)
    HIST: TQuickRep;
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
    QRLabel18: TgtQRLabel;
    QRLabel21: TgtQRLabel;
    QRLabel25: TgtQRLabel;
    QRLabel28: TgtQRLabel;
    QRLabel39: TgtQRLabel;
    QRLabel38: TgtQRLabel;
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel9: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRLabel11: TgtQRLabel;
    QRLabel36: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText5: TgtQRDBText;
    QRDBText6: TgtQRDBText;
    QRDBText7: TgtQRDBText;
    QRDBText8: TgtQRDBText;
    QRDBText9: TgtQRDBText;
    QRDBText10: TgtQRDBText;
    gtQRDBText1: TgtQRDBText;
    gtQRLabel1: TgtQRLabel;
    gtQRDBText3: TgtQRDBText;
    gtQRLabel2: TgtQRLabel;
    gtQRDBText4: TgtQRDBText;
    QRMemo1: TQRMemo;
    gtQRLabel3: TgtQRLabel;
    gtQRDBText2: TgtQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelHistNF: TFRelHistNF;

implementation
uses UHistNF, UFHistNF ;
{$R *.DFM}

procedure TFRelHistNF.FormCreate(Sender: TObject);
begin
    IF NOTA <> '' then
     qrLabel25.caption :=  FFHistNF.dbnf.text
    else
     qrLabel25.caption :='Não Preenchido' ;

     qrLabel28.caption :=FFHistNF.Q_CLINBFCLIN_RAZA.asstring;

     QRMemo1.Lines := FHistNF.mmFiltros.Lines;


end;

end.

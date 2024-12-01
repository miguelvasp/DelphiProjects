unit UrelManifestoSintetico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, gtQrCtrls, jpeg;

type
  TfrmRelsintManifesto = class(TForm)
    qrpManif: TQuickRep;
    QRBand1: TQRBand;
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
    QRLabel19: TgtQRLabel;
    QRLabel20: TgtQRLabel;
    QRLabel21: TgtQRLabel;
    QRLabel22: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel25: TgtQRLabel;
    QRLabel26: TgtQRLabel;
    QRLabel27: TgtQRLabel;
    QRLabel28: TgtQRLabel;
    QRLabel29: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelsintManifesto: TfrmRelsintManifesto;

implementation

uses UConsManifesto, UFConsManifesto;

{$R *.DFM}

procedure TfrmRelsintManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  frmRelsintManifesto := nil;
end;

procedure TfrmRelsintManifesto.FormCreate(Sender: TObject);
begin
  IF CLI <> '' then
     qrLabel28.caption := FFConsManifesto.combo_cliente.text
   else
     qrLabel28.caption :=  'Não Preenchido'   ;

  IF  FFConsManifesto.dbnf.text <> '' then
     qrLabel25.caption :=  FFConsManifesto.dbnf.text
    else
     qrLabel25.caption := 'Não Preenchido'    ;

  IF FFConsManifesto.wwDBEdit1.text <> '' then
     qrLabel26.caption :=  FFConsManifesto.wwDBEdit1.text
  else
     qrLabel26.caption :='Não Preenchido' ;

  IF FFConsManifesto.wwDBEdit2.text <> '' then
     qrLabel27.caption :=  FFConsManifesto.wwDBEdit2.text
  else
     qrLabel27.caption := 'Não Preenchido'      ;

  IF TRANSP = 'S' then
      qrLABEL29.caption := 'Sim'
    else
      qrLABEL29.caption := 'Não' ;

  IF DATAI <> 0.00 then
     QRLabel32.caption :=  FFConsMANIFESTO.DATA1.text
  else
     QRLabel32.caption := 'Não Preenchido'       ;

  IF DATAF <> 0.00 then
     QRLabel33.caption :=  FFConsMANIFESTO.DATA2.text
  else
     QRLabel33.caption := 'Não Preenchido' ;
end;

end.

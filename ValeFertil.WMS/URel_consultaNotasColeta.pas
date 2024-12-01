unit URel_consultaNotasColeta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, jpeg;

type
  TfrmRel_consultaNotasColeta = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
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
    QRBand3: TQRBand;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel_consultaNotasColeta: TfrmRel_consultaNotasColeta;
  UV, PESO, PALLET, VALOR : Double;

implementation

uses UCons_nfcoletadas;

{$R *.DFM}

procedure TfrmRel_consultaNotasColeta.FormCreate(Sender: TObject);
begin
  UV := 0;
  PESO := 0;
  PALLET := 0;
  VALOR := 0;
end;

procedure TfrmRel_consultaNotasColeta.QRBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  UV := UV + frmNotasColeta.cdsBuscaCNF_UV.Value;
  PESO := PESO + frmNotasColeta.cdsBuscaCNF_PESO.Value;
  PALLET := PALLET + frmNotasColeta.cdsBuscaCNF_PALLETS.Value;
  VALOR := VALOR + frmNotasColeta.cdsBuscaCNF_VALOR.Value; 
end;

procedure TfrmRel_consultaNotasColeta.QRLabel13Print(sender: TObject;
  var Value: String);
begin
Value := FormatFloat('###,###,##0.00', UV); UV := 0;
end;

procedure TfrmRel_consultaNotasColeta.QRLabel16Print(sender: TObject;
  var Value: String);
begin
Value := FormatFloat('###,###,##0.00', PESO); PESO := 0;
end;

procedure TfrmRel_consultaNotasColeta.QRLabel15Print(sender: TObject;
  var Value: String);
begin
Value := FormatFloat('###,###,##0.00', PALLET); PALLET := 0;
end;

procedure TfrmRel_consultaNotasColeta.QRLabel14Print(sender: TObject;
  var Value: String);
begin
Value := FormatFloat('###,###,##0.00', VALOR); VALOR := 0;
end;

end.

unit ufrmRelAcompanhaCompras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelAcompanhaCompras = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAcompanhaCompras: TfrmRelAcompanhaCompras;

implementation

uses ufrmAcompanhaCompras;

{$R *.DFM}

procedure TfrmRelAcompanhaCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
   frmRelAcompanhaCompras := nil;
end;

end.

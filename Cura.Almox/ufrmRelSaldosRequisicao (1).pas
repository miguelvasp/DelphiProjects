unit ufrmRelSaldosRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, ADODB;

type
  TfrmRelSaldosRequisicao = class(TForm)
    qrBusca: TADOQuery;
    qrBuscaSOL_ID: TAutoIncField;
    qrBuscaDATA: TDateTimeField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaQTDE_SOL: TFloatField;
    qrBuscaSALDO: TFloatField;
    qrBuscaCC_Desc: TStringField;
    qrBuscaUSUARIO: TStringField;
    qrBuscaSTATUS: TStringField;
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
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    qrBuscatipo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSaldosRequisicao: TfrmRelSaldosRequisicao;

implementation

{$R *.DFM}

procedure TfrmRelSaldosRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmRelSaldosRequisicao := nil;
end;

end.

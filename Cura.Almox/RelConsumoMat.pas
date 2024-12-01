unit RelConsumoMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lblPeriodo: TQRLabel;
    lblData: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrCentroCusto: TwwQuery;
    qrCentroCustoData: TDateTimeField;
    qrCentroCustoMat_ID: TIntegerField;
    qrCentroCustoQtde: TFloatField;
    qrCentroCustoUni_Sigla: TStringField;
    qrCentroCustoMAT_DESC: TStringField;
    qrCentroCustoReq_ID: TAutoIncField;
    qrCentroCustoCC_ID: TIntegerField;
    qrCentroCustoUNI_sigla_1: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.

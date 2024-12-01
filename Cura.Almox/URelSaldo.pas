unit URelSaldo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, StdCtrls;

type
  TFRelSaldo = class(TForm)
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    DS_EMP: TwwDataSource;
    Q_CON: TwwQuery;
    DS_CON: TwwDataSource;
    Q_TOT: TwwQuery;
    DS_TOT: TwwDataSource;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBImage1: TQRDBImage;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRSCont: TQRSubDetail;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QQ1: TQRDBText;
    QQ3: TQRDBText;
    QQ4: TQRDBText;
    QQ5: TQRDBText;
    QQ6: TQRDBText;
    Q_TOTVALOR: TFloatField;
    Q_SOMA: TwwQuery;
    FloatField1: TFloatField;
    DS_SOMA: TwwDataSource;
    Q_CONBAN_NOME: TStringField;
    Q_CONBAN_CODI: TStringField;
    Q_CONBAN_DATAT: TDateTimeField;
    Q_CONBAN_SALDT: TFloatField;
    Q_CONBAN_NAGE: TStringField;
    Q_CONBAN_DATA: TDateTimeField;
    Q_CONBAN_ORDEM: TIntegerField;
    Q_CONBAN_CODEMPR: TStringField;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    Q1: TQRLabel;
    QR1: TQRLabel;
    QR3: TQRLabel;
    QR4: TQRLabel;
    QR5: TQRLabel;
    QRSha: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure QRSContAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelSaldo: TFRelSaldo;
  T:TextFile;
  ConCodiX, Con_CodiAnt :String;



implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelSaldo.FormCreate(Sender: TObject);
begin
       Q_EMP.OPEN;
       Q_CON.OPEN;
       Q_TOT.OPEN;
       Q_SOMA.OPEN;
end;

procedure TFRelSaldo.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        Con_CodiAnt := ConCodix;
        ConCodix := Q_CONBAN_CODEMPR.AsString;
end;

procedure TFRelSaldo.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := '';
end;

procedure TFRelSaldo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_TOT.CLOSE;
        Q_SOMA.CLOSE;
        Q_CON.CLOSE;
        Q_EMP.CLOSE;
        Action := CaFree;
end;

end.

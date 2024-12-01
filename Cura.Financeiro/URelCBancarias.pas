unit URelCBancarias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelCBancarias = class(TForm)
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
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    Q_EMP: TwwQuery;
    DS_EMP: TwwDataSource;
    QRSubDetail1: TQRSubDetail;
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    Q_CON: TwwQuery;
    DS_CON: TwwDataSource;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    Q_SOMA: TwwQuery;
    DS_SOMA: TwwDataSource;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    QRDBText4: TQRDBText;
    Q_CONBAN_CODI: TStringField;
    Q_CONBAN_NOME: TStringField;
    Q_CONBAN_AGEN: TStringField;
    Q_CONBAN_SALD: TFloatField;
    Q_SOMASOMA: TFloatField;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCBancarias: TFRelCBancarias;
  T:TextFile;
  

implementation
USES  UPesq_Rateios, UPesq_ContasBancarias, UPesq_Contas;

{$R *.DFM}

procedure TFRelCBancarias.FormCreate(Sender: TObject);
VAR SQL: STRING;
    DATA1: String;
    DATA2: String;
begin


              Q_EMP.OPEN;



              Q_CON.OPEN;



              Q_SOMA.OPEN;





end;

procedure TFRelCBancarias.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        QRLabel13.Caption:= '';
        QRLabel13.Caption:= Q_EMPFIL_DESC.AsString;
end;

end.

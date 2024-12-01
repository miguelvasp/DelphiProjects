unit URelNotaMotorista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, Qrctrls, Wwdatsrc, DBTables, Wwquery, jpeg;

type
  TFRelNotaMotorista = class(TForm)
    NFMOTORISTA: TQuickRep;
    Q_FORNE: TwwQuery;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRGroup1: TQRGroup;
    DS_FORNE: TwwDataSource;
    Q_FORN1: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateTimeField2: TDateTimeField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField3: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField2: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField37: TStringField;
    QRGroup2: TQRGroup;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRShape3: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    Q_FORNETRANS_ID: TAutoIncField;
    Q_FORNETRANS_RAZA: TStringField;
    Q_FORNETRANS_FLAG: TStringField;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelNotaMotorista: TFRelNotaMotorista;

implementation
USES UFRELMOTORISTAT;
{$R *.DFM}

procedure TFRelNotaMotorista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_FORNE.close ;
  Q_FORN1.CLOSE;
  action := cafree ;
end;

procedure TFRelNotaMotorista.FormCreate(Sender: TObject);
begin
 Q_FORN1.SQL.clear ;
 Q_FORN1.SQL.ADD(' SELECT A.TRANS_RAZA, A.TRANS_FLAG, B.*, C.VEIC_NOME ');
 Q_FORN1.SQL.ADD(' FROM TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B, TPVEICULO C ');
 Q_FORN1.SQL.ADD(' WHERE ');
 Q_FORN1.SQL.ADD(' B.VEIC_ID = C.VEIC_ID AND ');
 Q_FORN1.SQL.ADD(' A.TRANS_FLAG = '+'''' + 'S' + '''' );
 IF CPR <> '' then
 Q_FORN1.SQL.ADD(' AND B.TRANS_ID = '+'''' + CPR + '''');

 Q_FORN1.OPEN;
 Q_FORNE.OPEN;
end;

end.

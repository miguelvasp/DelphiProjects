unit URelImportacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls;

type
  TFRelImportacao = class(TForm)
    AREA: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Q_IMPORT: TwwQuery;
    Q_IMPORTNF: TStringField;
    Q_IMPORTCLIENTEFINAL: TStringField;
    Q_IMPORTCNPJ: TStringField;
    Q_IMPORTnaocliente: TStringField;
    DS_IMPORT: TwwDataSource;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    Q_IMPORT2: TwwQuery;
    Q_IMPORT2NF: TStringField;
    Q_AUX1: TwwQuery;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    Q_IMPORT3: TwwQuery;
    Q_IMPORT3TOTA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelImportacao: TFRelImportacao;
  CALCULA : real ;
  CALCULASTR : string;
implementation

{$R *.DFM}

procedure TFRelImportacao.FormCreate(Sender: TObject);
begin
  Q_IMPOrt.open ;
  Q_IMPOrt2.OPEN ;
  Q_IMPOrt3.open ;
end;

procedure TFRelImportacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Q_IMPOrt.close ;
  Q_IMPOrt2.close ;
  Q_IMPOrt3.close ;
  action := cafree ;

end;

procedure TFRelImportacao.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ///CALCULASTR := floattostr(CALCULA) ;
  QRLabel10.caption := inttostr(Q_IMPORT2.recordcount);
end;

procedure TFRelImportacao.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  //// CALCULA := 0  ;
end;

procedure TFRelImportacao.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     ///CALCULA := 0  ;
end;

procedure TFRelImportacao.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
{            Q_AUX1.Close;
            Q_AUX1.SQL.CLEAR;
            Q_AUX1.SQL.ADD('SELECT SUM(A.INF_TOTA) as QT from NF_ITENS A,NF B');
            Q_AUX1.SQL.ADD('where A.NFI_CODI = B.NFI_CODI ');
            Q_AUX1.SQL.ADD('and   B.NFI_NUMERO = ' + '''' + Q_IMPORTNF.asstring + '''' );
            Q_AUX1.OPEN;

            CALCULA :=  (CALCULA +  Q_AUX1.fieldbyname('QT').asfloat )  ;   }
end;

end.

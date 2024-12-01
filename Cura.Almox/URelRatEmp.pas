unit URelRatEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelRatEmp = class(TForm)
    QuickRep1: TQuickRep;
    Q_SUB: TwwQuery;
    DS_SUB: TwwDataSource;
    Q_CON: TwwQuery;
    DS_CON: TwwDataSource;
    Q_EMP: TwwQuery;
    DS_EMP: TwwDataSource;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    Q_CONCON_DESC: TStringField;
    Q_CONCLASS: TStringField;
    Q_CONCON_CODI: TStringField;
    Q_ITE: TwwQuery;
    Q_ITEDATADEBITO: TDateTimeField;
    Q_ITEDOCUMENTO: TStringField;
    Q_ITEFILIAL: TStringField;
    Q_ITEHISTORICO: TStringField;
    Q_ITEDESCRICAO2: TStringField;
    QRSCont: TQRSubDetail;
    QRLabel26: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape4: TQRShape;
    QRSSub: TQRSubDetail;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape5: TQRShape;
    QRSIte: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
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
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    Q_TOT: TwwQuery;
    Q_TOTVALOR: TFloatField;
    DS_TOT: TwwDataSource;
    Q_CONFIL_CODI: TStringField;
    Q_ITEFIL_CODI: TStringField;
    Q_SUBCON_DESC: TStringField;
    Q_SUBFIL_CODI: TStringField;
    Q_SUBCON_CODI: TStringField;
    Q_ITEVALOR: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRatEmp: TFRelRatEmp;
  T:TextFile;


implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRatEmp.FormCreate(Sender: TObject);
VAR SQL: STRING;
    SQLF : STRING;
begin

       SQL :=
       ' SELECT		FIL_CODI, ' +
       ' 		FIL_DESC ' +
       ' FROM		CPAFILI ' +
       ' WHERE		FIL_CODI IN ' +
       ' 		(SELECT	DISTINCT BAN.BAN_CODEMPR ' +
       ' 		FROM		 CPAPAGA  CPG, ' +
       ' 				 CPAIPAG  IPA, ' +
       ' 				 CPACONT  CP, ' +
       ' 				 CPABANC  BAN, ' +
       '                                 CPAIPACON CSU ' +
       ' 		WHERE		 CPG.NUMERO = IPA.NUMERO ' +
       ' 		AND		 CPG.CONTAGERENCIAL = CP.CON_CODI ' +
       ' 		AND		 CPG.BANCOCONTA = BAN.BAN_CODI ' +
       '                AND              CPG.NUMERO = CSU.NUMERO ';
       If (Data1 <> '') and (Data2 <> '') then
                SQLF := SQLF + ' AND     IPA.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQLF := SQLF + ' AND     CPG.NUMERO = ' + NumDoc;
       If ConGer <> '' then
                SQLF := SQLF + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';
       If ConSub <> '' then
                SQLF := SQLF + ' AND     CSU.CON_CODI = ' + '''' + ConSub + '''';

       If EmpID <> '' then
                SQL := SQL + ' AND      FIL_CODI = '+ '''' + EmpID + '''';

       SQL := SQL + SQLF + ')' +
       ' ORDER BY 	FIL_DESC ';

       Q_EMP.SQL.CLEAR;
       Q_EMP.SQL.ADD(SQL);
       Q_EMP.OPEN;

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 CP.CON_DESC ' );
       Q_CON.OPEN;

       Q_SUB.SQL.ADD(SQLF + ' ORDER BY	SUB.CON_DESC ' );
       Q_SUB.OPEN;

       Q_ITE.SQL.ADD(SQLF + ' ORDER BY IPA.DATADEBITO, IPA.DOCUMENTO ' );
       Q_ITE.OPEN;

       Q_TOT.SQL.ADD(SQLF);
       Q_TOT.OPEN;

end;

end.

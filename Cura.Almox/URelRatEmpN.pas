unit URelRatEmpN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelRatEmpN = class(TForm)
    QuickRep1: TQuickRep;
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
    Q_TOT: TwwQuery;
    Q_TOTVALOR: TFloatField;
    DS_TOT: TwwDataSource;
    Q_CONFIL_CODI: TStringField;
    Q_ITEFIL_CODI: TStringField;
    Q_ITEVALOR: TFloatField;
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
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRSCont: TQRSubDetail;
    QRLabel26: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape4: TQRShape;
    QRSIte: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure QRSIteBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRatEmpN: TFRelRatEmpN;
  T:TextFile;


implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRatEmpN.FormCreate(Sender: TObject);
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

        If EmpID <> '' then
                SQL := SQL + ' AND       BAN.BAN_CODEMPR = ' + EmpID;

       If (Data1 <> '') and (Data2 <> '') then
                SQLF := SQLF + ' AND     IPA.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQLF := SQLF + ' AND     CPG.NUMERO = ' + NumDoc;
       If ConGer <> '' then
                SQLF := SQLF + ' AND     CSU.CON_CODI = ' + '''' + ConGer + '''';
       If ConSub <> '' then
                SQLF := SQLF + ' AND     CSU.CON_CODI = ' + '''' + ConSub + '''';
       SQL := SQL + SQLF + ')' +
       ' ORDER BY 	FIL_DESC ';

       Q_EMP.SQL.CLEAR;
       Q_EMP.SQL.ADD(SQL);
       Q_EMP.OPEN;

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 CP.CON_DESC ' );
       Q_CON.OPEN;

       Q_ITE.SQL.ADD(SQLF + ' ORDER BY IPA.DATADEBITO, IPA.DOCUMENTO ' );
       Q_ITE.OPEN;

       Q_TOT.SQL.ADD(SQLF);
       Q_TOT.OPEN;
end;

procedure TFRelRatEmpN.QRSIteBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var SQL:String;
begin

        SQL :=
        ' SELECT 	CSU.VALOR, ' +
        '		IPA.DATADEBITO, ' +
        '		IPA.DOCUMENTO, ' +
        '		CPG.HISTORICO, ' +
        '		CPG.DESCRICAO2, ' +
        '		CPG.FILIAL, ' +
        '		BAN.BAN_CODEMPR FIL_CODI ' +
        ' FROM 		CPAPAGA	CPG, ' +
        '		CPAIPAG 	IPA, ' +
        '		CPAIPACON  	CSU, ' +
        '		CPABANC	BAN ' +
        ' WHERE		CPG.NUMERO = IPA.NUMERO ' +
        ' AND		CPG.NUMERO = CSU.NUMERO ' +
        ' AND		CSU.CON_CODI = ' + Q_CONCON_CODI.AsString +
        ' AND		BAN.BAN_CODEMPR = ' + Q_CONFIL_CODI.AsString +
        ' AND		CPG.BANCOCONTA = BAN.BAN_CODI ';

        AssignFile(T,'SQL.TXT');
        Append(T);
        WriteLN(T,SQL);
        CloseFile(T);


end;

end.

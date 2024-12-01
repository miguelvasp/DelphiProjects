unit URelRatEmpX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, StdCtrls;

type
  TFRelRatEmpX = class(TForm)
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
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRSCont: TQRSubDetail;
    Q1: TQRLabel;
    Q2: TQRDBText;
    Q3: TQRLabel;
    Q4: TQRDBText;
    Q5: TQRLabel;
    Q6: TQRDBText;
    QRSha: TQRShape;
    QR1: TQRLabel;
    QR2: TQRLabel;
    QR3: TQRLabel;
    QR4: TQRLabel;
    QR5: TQRLabel;
    QR6: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QQ1: TQRDBText;
    QQ2: TQRDBText;
    QQ3: TQRDBText;
    QQ4: TQRDBText;
    QQ5: TQRDBText;
    QQ7: TQRDBText;
    Q_CONCON_CODI: TStringField;
    Q_CONCON_DESC: TStringField;
    Q_CONCLASS: TStringField;
    Q_CONVALOR: TFloatField;
    Q_CONDATADEBITO: TDateTimeField;
    Q_CONDOCUMENTO: TStringField;
    Q_CONHISTORICO: TStringField;
    Q_CONDESCRICAO2: TStringField;
    Q_CONFORNECEDOR: TStringField;
    Q_CONFIL_CODI: TStringField;
    Q_CONSINAL: TStringField;
    Q_CONCON_CODI_FIL: TStringField;
    QQ6: TQRDBText;
    Q_TOTVALOR: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure QRSContAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSContBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRatEmpX: TFRelRatEmpX;
  T:TextFile;
  ConCodiX :String;


implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRatEmpX.FormCreate(Sender: TObject);
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
                SQLF := SQLF + ' AND     IPA.DOCUMENTO = ' + '''' + NumDoc + '''';
       If ConGer <> '' then
                SQLF := SQLF + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';

       SQL := SQL + SQLF + ')';
       If EmpID <> '' then
                SQL := SQL + '  AND     FIL_CODI = '+ '''' + EmpID + '''';

       SQL := SQL +
       ' ORDER BY 	FIL_DESC ';

       Q_EMP.SQL.CLEAR;
       Q_EMP.SQL.ADD(SQL);
       Q_EMP.OPEN;

       SQLF := ' WHERE 1 = 1 ';
       If (Data1 <> '') and (Data2 <> '') then
                SQLF := SQLF + ' AND     T.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQLF := SQLF + ' AND     T.DOCUMENTO = ' + '''' +  NumDoc + '''';
       If ConGer <> '' then
                SQLF := SQLF + ' AND     T.CON_CODI_FIL = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQLF := SQLF + ' AND     T.FIL_CODI = '+ '''' + EmpID + '''';

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 T.CON_CODI, T.CON_DESC, T.SINAL DESC, T.DATADEBITO ' );
       Q_CON.OPEN;


       SQL :=
       ' SELECT		SUM(T.VALOR) VALOR ' +
       ' FROM ' +
       ' (SELECT 	CASE WHEN SUM(CSU.VALOR) IS NULL THEN 0 ' +
       ' 		ELSE      -1 * SUM(CSU.VALOR) END     VALOR ' +
       ' FROM 		CPAPAGA	CPG, ' +
       ' 		CPAIPAG  	IPA, ' +
       ' 		CPABANC  	BAN, ' +
       ' 		CPAIPACON	CSU ' +
       ' WHERE		CPG.NUMERO = IPA.NUMERO ' +
       ' AND		CSU.NUMERO = CPG.NUMERO ' +
       ' AND		CPG.BANCOCONTA = BAN.BAN_CODI ' +
       ' AND		BAN.BAN_CODEMPR = :FIL_CODI ';
       If (Data1 <> '') and (Data2 <> '') then
                SQL := SQL + ' AND     IPA.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQL := SQL + ' AND     IPA.DOCUMENTO = ' + '''' +  NumDoc + '''';
       If ConGer <> '' then
                SQL := SQL + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL + ' AND     BAN.BAN_CODEMPR = '+ '''' + EmpID + '''';

       SQL := SQL +
       ' UNION ' +
       ' SELECT		CASE WHEN SUM(CPM.MOV_VALOR/100*CSU.PERCENTUAL) IS NULL THEN 0 ' +
       ' 		ELSE	  SUM(CPM.MOV_VALOR/100*CSU.PERCENTUAL) END VALOR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       ' 		CPACONTG CSU, ' +
       ' 		CPACONT  CP,  ' +
       ' 		CPABANC	 BAN  ' +
       ' WHERE		CPM.MOV_CONT 	  = CSU.CON_CODI_ORIG ' +
       ' AND		CSU.CON_CODI_DEST = CP.CON_CODI ' +
       ' AND		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
 //      ' AND		CPM.MOV_SINAL = ''+''' +
       ' AND            CPM.MOV_ORIG = 0 ' + //APENAS MOVIMENTAÇÕES MANUAIS
       ' AND		BAN.BAN_CODEMPR	  = :FIL_CODI ';
       If (Data1 <> '') and (Data2 <> '') then
                SQL := SQL + ' AND     CPM.MOV_DATA BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQL := SQL + ' AND     CPM.MOV_DCTO = ' + '''' +  NumDoc + '''';
       If ConGer <> '' then
                SQL := SQL + ' AND     CPM.MOV_CONT = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL + ' AND     BAN.BAN_CODEMPR = '+ '''' + EmpID + '''';

       SQL := SQL + ') T ';

       Q_TOT.SQL.CLEAR;
       Q_TOT.SQL.ADD(SQL);
       Q_TOT.OPEN;

end;

procedure TFRelRatEmpX.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := Q_CONCon_Codi.AsString;
end;

procedure TFRelRatEmpX.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := '';
end;

procedure TFRelRatEmpX.QRSContBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        If ConCodix <> Q_CONCon_Codi.AsString then
        Begin
                QRSCont.Height := 63;
                QRSha.Enabled := True;
                Q1.Enabled := True;
                Q2.Enabled := True;
                Q3.Enabled := True;
                Q4.Enabled := True;
                Q5.Enabled := True;
                Q6.Enabled := True;
                QR1.Enabled := True;
                QR2.Enabled := True;
                QR3.Enabled := True;
                QR4.Enabled := True;
                QR5.Enabled := True;
                QR6.Enabled := True;
//                QRR.Enabled := True;
                QQ1.Top := 42;
                QQ2.Top := 42;
                QQ3.Top := 42;
                QQ4.Top := 42;
                QQ5.Top := 42;
                QQ6.Top := 42;
                QQ7.Top := 42;
        End Else Begin
                QRSCont.Height := 23;
                QRSha.Enabled := False;
                Q1.Enabled := False;
                Q2.Enabled := False;
                Q3.Enabled := False;
                Q4.Enabled := False;
                Q5.Enabled := False;
                Q6.Enabled := False;
                QR1.Enabled := False;
                QR2.Enabled := False;
                QR3.Enabled := False;
                QR4.Enabled := False;
                QR5.Enabled := False;
                QR6.Enabled := False;
//                QRR.Enabled := False;
                QQ1.Top := 1;
                QQ2.Top := 1;
                QQ3.Top := 1;
                QQ4.Top := 1;
                QQ5.Top := 1;
                QQ6.Top := 1;
                QQ7.Top := 1;
        End;


end;

end.

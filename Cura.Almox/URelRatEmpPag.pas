unit URelRatEmpPag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, StdCtrls;

type
  TFRelRatEmpPag = class(TForm)
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
    QRS2: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    Q_SOMA: TwwQuery;
    FloatField1: TFloatField;
    DS_SOMA: TwwDataSource;
    Q_CONNUMERO: TIntegerField;
    QR: TQRLabel;
    QQ: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    lbTot: TQRLabel;
    Q_CONFIL_CODIX: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRSContAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSContBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRS2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRatEmpPag: TFRelRatEmpPag;
  T:TextFile;
  ConCodiX, Con_CodiAnt :String;
  Total:Real;



implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRatEmpPag.FormCreate(Sender: TObject);
VAR SQL: STRING;
    SQLF : STRING;
begin
        Total := 0; 

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
       ' 		AND		 IPA.BANCOCONTA = BAN.BAN_CODI ' +
       '                AND              CPG.NUMERO = CSU.NUMERO ';
       If (Data1 <> '') and (Data2 <> '') then
                SQLF := SQLF + ' AND     IPA.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQLF := SQLF + ' AND     CPG.DOCUMENTO = ' + '''' + NumDoc + '''';
       If ConGer <> '' then
                SQLF := SQLF + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';
       SQL := SQL + SQLF;
       SQL := SQL +
       ' UNION SELECT		DISTINCT BAN.BAN_CODEMPR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       ' 		CPACONTG CSU, ' +
       ' 		CPACONT  CP,  ' +
       ' 		CPABANC	 BAN  ' +
       ' WHERE		CPM.MOV_CONT 	  = CSU.CON_CODI_ORIG ' +
       ' AND		CSU.CON_CODI_DEST = CP.CON_CODI ' +
       ' AND		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
       ' AND            CPM.MOV_ORIG = 0 ' ;
       If (Data1 <> '') and (Data2 <> '') then
                SQL := SQL + ' AND     CPM.MOV_DATA BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQL := SQL + ' AND     CPM.MOV_DCTO = ' + '''' +  NumDoc + '''';
       If ConGer <> '' then
                SQL := SQL + ' AND     CPM.MOV_CONT = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL + ' AND     BAN.BAN_CODEMPR = '+ '''' + EmpID + '''';
       SQL := SQL + ')';



       SQL := SQL +
       ' ORDER BY 	FIL_CODI ';

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

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 T.CON_CODI, T.CON_DESC, T.DATADEBITO, T.SINAL DESC ' );
       Q_CON.OPEN;

       //
      { AssignFile(T,'SQLCON.SQL');
       REWRITE(T);
       WRITELN(T,Q_CON.SQL.TEXT);
       CLOSEFILE(T);
       }
       //


      {INICIO TOTAL}
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
       ' AND		IPA.BANCOCONTA = BAN.BAN_CODI ' +
       ' AND		BAN.BAN_CODEMPR = :FIL_CODI ';
       If (Data1 <> '') and (Data2 <> '') then
                SQL := SQL + ' AND     IPA.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQL := SQL + ' AND     CPG.DOCUMENTO = ' + '''' +  NumDoc + '''';
       If ConGer <> '' then
                SQL := SQL + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL + ' AND     BAN.BAN_CODEMPR = '+ '''' + EmpID + '''';

       SQL := SQL +
       ' UNION ' +
       ' SELECT		CASE WHEN SUM(CPM.MOV_VALOR/100*CSU.PERCENTUAL) IS NULL THEN 0 ' +
       ' 		ELSE	  SUM(CASE WHEN CPM.MOV_SINAL = ''+'' THEN  ' +
                                        '      CPM.MOV_VALOR/100*CSU.PERCENTUAL '  +
                                        '      ELSE  - CPM.MOV_VALOR/100*CSU.PERCENTUAL END ) END VALOR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       ' 		CPACONTG CSU, ' +
       ' 		CPACONT  CP,  ' +
       ' 		CPABANC	 BAN  ' +
       ' WHERE		CPM.MOV_CONT 	  = CSU.CON_CODI_ORIG ' +
       ' AND		CSU.CON_CODI_DEST = CP.CON_CODI ' +
       ' AND		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
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

       //
      { AssignFile(T,'SQLTOT.SQL');
       REWRITE(T);
       WRITELN(T,Q_TOT.SQL.TEXT);
       CLOSEFILE(T);
       }
       //
       {FIM TOTAL}


       {INÍCIO SOMA}
       SQL := ' SELECT		SUM(T.VALOR) VALOR ' +
              '  FROM ' +
              '  (SELECT 	CASE WHEN SUM(CSU.VALOR) IS NULL THEN 0 ' +
              '		        ELSE      -1 * SUM(CSU.VALOR) END     VALOR ' +
              '  FROM 		CPAPAGA	CPG, ' +
              ' 		CPAIPAG  	IPA, ' +
              '  		CPABANC  	BAN, ' +
              '  		CPAIPACON	CSU ' +
              '  WHERE		CPG.NUMERO = IPA.NUMERO ' +
              '  AND		CSU.NUMERO = CPG.NUMERO ' +
              '  AND		IPA.BANCOCONTA = BAN.BAN_CODI ' +
              '  AND		BAN.BAN_CODEMPR = :FIL_CODI ' +
              '  AND		CSU.CON_CODI = :CON_CODI ';
       If (Data1 <> '') and (Data2 <> '') then
                SQL := SQL + ' AND     IPA.DATADEBITO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQL := SQL + ' AND     CPG.DOCUMENTO = ' + '''' +  NumDoc + '''';
       If ConGer <> '' then
                SQL := SQL + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL + ' AND     BAN.BAN_CODEMPR = '+ '''' + EmpID + '''';

       SQL := SQL +
       ' UNION ' +
       ' SELECT		CASE WHEN SUM(CPM.MOV_VALOR/100*CSU.PERCENTUAL) IS NULL THEN 0 ' +
       ' 		ELSE SUM(CASE WHEN CPM.MOV_SINAL = ''+'' THEN ' +
       ' 				CPM.MOV_VALOR/100*CSU.PERCENTUAL ' +
       ' 		 ELSE	-CPM.MOV_VALOR/100*CSU.PERCENTUAL END ) END VALOR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       ' 		CPACONTG CSU, ' +
       '		CPACONT  CP, ' +
       ' 		CPABANC	 BAN ' +
       ' WHERE		CPM.MOV_CONT 	  = CSU.CON_CODI_ORIG ' +
       ' AND		CSU.CON_CODI_DEST = CP.CON_CODI ' +
       ' AND		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
       ' AND		BAN.BAN_CODEMPR	  = :FIL_CODI ' +
       ' AND		CPM.MOV_ORIG = 0 ' +
       ' AND		CSU.CON_CODI_ORIG = :CON_CODI  ';
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

       Q_SOMA.SQL.CLEAR;
       Q_SOMA.SQL.ADD(SQL);
       Q_SOMA.OPEN;

       {FIM SOMA}

end;

procedure TFRelRatEmpPag.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        Con_CodiAnt := ConCodix;
        ConCodix := Q_CONCon_Codi.AsString;
end;

procedure TFRelRatEmpPag.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := '';
end;

procedure TFRelRatEmpPag.QRSContBeforePrint(Sender: TQRCustomBand;
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
                QR.Enabled := True;
                QR1.Enabled := True;
                QR2.Enabled := True;
                QR3.Enabled := True;
                QR4.Enabled := True;
                QR5.Enabled := True;
                QR6.Enabled := True;
//                QRR.Enabled := True;
                QQ.Top := 42;
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
                QR.Enabled := False;
                QR1.Enabled := False;
                QR2.Enabled := False;
                QR3.Enabled := False;
                QR4.Enabled := False;
                QR5.Enabled := False;
                QR6.Enabled := False;
//                QRR.Enabled := False;
                QQ.Top := 1;
                QQ1.Top := 1;
                QQ2.Top := 1;
                QQ3.Top := 1;
                QQ4.Top := 1;
                QQ5.Top := 1;
                QQ6.Top := 1;
                QQ7.Top := 1;
        End;


end;

procedure TFRelRatEmpPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_TOT.CLOSE;
        Q_SOMA.CLOSE;
        Q_CON.CLOSE;
        Q_EMP.CLOSE;
        Action := CaFree;
end;

procedure TFRelRatEmpPag.QRS2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

        If (Q_CON.RecordCount <>  Q_CON.RecNo) then
                Q_CON.NEXT;

        If (Q_CON.EOF) or
           ( ConCodix <> Q_CONCON_CODI.AsString) then

                QRS2.Height := 20
        Else
                QRS2.Height := 0;

        If not Q_CON.EOF Then
                Q_CON.PRIOR;
end;

procedure TFRelRatEmpPag.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       If QRMEMO1.Lines.Count = 0 then
               QRMEMO1.Lines.Add(TxFiltro);

end;

procedure TFRelRatEmpPag.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        Total := Total + Q_TOTValor.AsFloat;
end;

procedure TFRelRatEmpPag.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        lbTot.Caption := formatfloat('###,###,##0.00',Total)
end;

end.

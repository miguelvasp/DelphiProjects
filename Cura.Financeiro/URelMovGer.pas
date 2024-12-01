unit URelMovGer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, StdCtrls,
  gtQRXport, gtQRXport_Doc, gtQRXport_Excel, gtQrCtrls;

type
  TFRelMovGer = class(TForm)
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
    QRShape1: TgtQRShape;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRLabel4: TgtQRLabel;
    QRLabel5: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRSysData2: TgtQRSysData;
    QRSysData3: TgtQRSysData;
    QRMemo1: TgtQRMemo;
    QRDBImage1: TgtQRDBImage;
    QRShape2: TgtQRShape;
    QRGroup1: TQRGroup;
    QRDBText7: TgtQRDBText;
    QRLabel15: TgtQRLabel;
    QRShape3: TgtQRShape;
    QRSCont: TQRSubDetail;
    Q1: TgtQRLabel;
    Q2: TgtQRDBText;
    Q3: TgtQRLabel;
    Q4: TgtQRDBText;
    Q5: TgtQRLabel;
    Q6: TgtQRDBText;
    QRSha: TgtQRShape;
    QR1: TgtQRLabel;
    QR2: TgtQRLabel;
    QR3: TgtQRLabel;
    QR4: TgtQRLabel;
    QR5: TgtQRLabel;
    QR6: TgtQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TgtQRLabel;
    QRExpr2: TgtQRExpr;
    QQ1: TgtQRDBText;
    QQ2: TgtQRDBText;
    QQ3: TgtQRDBText;
    QQ4: TgtQRDBText;
    QQ5: TgtQRDBText;
    QQ7: TgtQRDBText;
    Q_CONCON_CODI: TStringField;
    Q_CONCON_DESC: TStringField;
    Q_CONVALOR: TFloatField;
    Q_CONDATADEBITO: TDateTimeField;
    Q_CONDOCUMENTO: TStringField;
    Q_CONHISTORICO: TStringField;
    Q_CONDESCRICAO2: TStringField;
    Q_CONFIL_CODI: TStringField;
    Q_CONSINAL: TStringField;
    Q_CONCON_CODI_FIL: TStringField;
    QQ6: TgtQRDBText;
    Q_TOTVALOR: TFloatField;
    QRS2: TQRSubDetail;
    QRDBText5: TgtQRDBText;
    QRLabel12: TgtQRLabel;
    Q_SOMA: TwwQuery;
    FloatField1: TFloatField;
    DS_SOMA: TwwDataSource;
    Q_CONNUMERO: TIntegerField;
    QRDBText1: TgtQRDBText;
    QRBand2: TQRBand;
    QRLabel6: TgtQRLabel;
    lbTot: TgtQRLabel;
    QRDBText2: TgtQRDBText;
    QRLabel7: TgtQRLabel;
    QRDBText3: TgtQRDBText;
    gtQRExcelExport1: TgtQRExcelExport;
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
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMovGer: TFRelMovGer;
  T:TextFile;
  ConCodiX, Con_CodiAnt :String;
  VlTot :Real;



implementation
USES  UPesq_MovGer;

{$R *.DFM}

procedure TFRelMovGer.FormCreate(Sender: TObject);
VAR SQL: STRING;
    SQLF : STRING;
begin

       SQL :=
       ' SELECT		FIL_CODI, ' +
       ' 		FIL_DESC ' +
       ' FROM		CPAFILI ' +
       ' WHERE		FIL_CODI IN ';

       SQL := SQL +
       ' (SELECT	DISTINCT BAN.BAN_CODEMPR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       ' 		CPACONT  CP,  ' +
       ' 		CPABANC	 BAN  ' +
       ' WHERE		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
       ' AND            CPM.MOV_CONT = CP.CON_CODI ' ;

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

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 T.CON_CODI, T.CON_DESC, T.DATADEBITO, T.SINAL DESC  ' );
       Q_CON.OPEN;

      {INICIO TOTAL}
       SQL :=
       ' SELECT		SUM(T.VALOR) VALOR ' +
       ' FROM ';

       SQL := SQL +
       ' ( SELECT	CASE WHEN SUM(CPM.MOV_VALOR) IS NULL THEN 0 ' +
       ' 		ELSE	  SUM(CASE WHEN CPM.MOV_SINAL = ''+'' THEN  ' +
                                        '      CPM.MOV_VALOR '  +
                                        '      ELSE  - CPM.MOV_VALOR END ) END VALOR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       ' 		CPACONT  CP,  ' +
       ' 		CPABANC	 BAN  ' +
       ' WHERE		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
       ' AND            CPM.MOV_CONT = CP.CON_CODI ' +
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
       {FIM TOTAL}

       {INÍCIO SOMA}
       SQL := ' SELECT		SUM(T.VALOR) VALOR ' +
              '  FROM ';

       SQL := SQL +
       ' (SELECT	CASE WHEN SUM(CPM.MOV_VALOR) IS NULL THEN 0 ' +
       ' 		ELSE SUM(CASE WHEN CPM.MOV_SINAL = ''+'' THEN ' +
       ' 				CPM.MOV_VALOR ' +
       ' 		 ELSE	-CPM.MOV_VALOR END ) END VALOR ' +
       ' FROM 		CPAMOVI  CPM, ' +
       '		CPACONT  CP, ' +
       ' 		CPABANC	 BAN ' +
       ' WHERE		CPM.MOV_BANC	  = BAN.BAN_CODI ' +
       ' AND            CPM.MOV_CONT = CP.CON_CODI ' +
       ' AND		BAN.BAN_CODEMPR	  = :FIL_CODI ' +
       ' AND		CPM.MOV_CONT = :CON_CODI  ';
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

procedure TFRelMovGer.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        Con_CodiAnt := ConCodix;
        ConCodix := Q_CONCon_Codi.AsString;
end;

procedure TFRelMovGer.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := '';
end;

procedure TFRelMovGer.QRSContBeforePrint(Sender: TQRCustomBand;
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
//                QR.Enabled := True;
                QR1.Enabled := True;
                QR2.Enabled := True;
                QR3.Enabled := True;
                QR4.Enabled := True;
                QR5.Enabled := True;
                QR6.Enabled := True;
//                QRR.Enabled := True;
//                QQ.Top := 42;
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
//                QR.Enabled := False;
                QR1.Enabled := False;
                QR2.Enabled := False;
                QR3.Enabled := False;
                QR4.Enabled := False;
                QR5.Enabled := False;
                QR6.Enabled := False;
//                QRR.Enabled := False;
//                QQ.Top := 1;
                QQ1.Top := 1;
                QQ2.Top := 1;
                QQ3.Top := 1;
                QQ4.Top := 1;
                QQ5.Top := 1;
                QQ6.Top := 1;
                QQ7.Top := 1;
        End;


end;

procedure TFRelMovGer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_TOT.CLOSE;
        Q_SOMA.CLOSE;
        Q_CON.CLOSE;
        Q_EMP.CLOSE;
        Action := CaFree;
end;

procedure TFRelMovGer.QRS2BeforePrint(Sender: TQRCustomBand;
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

procedure TFRelMovGer.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       If QRMEMO1.Lines.Count = 0 then
               QRMEMO1.Lines.Add(TxFiltro);
end;

procedure TFRelMovGer.QRExpr2Print(sender: TObject; var Value: String);
begin
        VlTot := VlTot + Q_TOTVALOR.AsFloat;
end;

procedure TFRelMovGer.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        lbTot.Caption := formatfloat('###,###,##0.00',VlTot);
        VlTot := 0;
end;

end.

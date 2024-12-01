unit URelRatEmpAp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelRatEmpAP = class(TForm)
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    DS_EMP: TwwDataSource;
    Q_CON: TwwQuery;
    DS_CON: TwwDataSource;
    Q_TOT: TwwQuery;
    Q_TOTVALOR: TFloatField;
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
    QRShape4: TQRShape;
    QR4: TQRLabel;
    QR5: TQRLabel;
    QRR: TQRLabel;
    QR6: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QQ4: TQRDBText;
    QQ5: TQRDBText;
    QQ6: TQRDBText;
    QQ7: TQRDBText;
    Q_CONCON_CODI: TStringField;
    Q_CONCON_DESC: TStringField;
    Q_CONCLASS: TStringField;
    Q_CONVALOR: TFloatField;
    Q_CONHISTORICO: TStringField;
    Q_CONDESCRICAO2: TStringField;
    Q_CONPERCENTUAL: TIntegerField;
    QR1: TQRLabel;
    QQ1: TQRDBText;
    QR3: TQRLabel;
    QQ3: TQRDBText;
    Q_CONDOCUMENTO: TStringField;
    Q_CONVENCIMENTO: TDateTimeField;
    Q_CONFORNECEDOR: TStringField;
    Q_CONNUMERO: TIntegerField;
    QRS2: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QR: TQRLabel;
    QQ: TQRDBText;
    Q_SOMA: TwwQuery;
    FloatField1: TFloatField;
    Q_CONFIL_CODI: TStringField;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    DS_SOMA: TwwDataSource;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    lbTot: TQRLabel;
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
  FRelRatEmpAP: TFRelRatEmpAP;
  T:TextFile;
  ConCodiX :String;
  Total:Real;


implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRatEmpAP.FormCreate(Sender: TObject);
VAR SQL: STRING;
    SQLF : STRING;
begin

       Total := 0;
       
       SQL :=
       ' SELECT		FIL_CODI, ' +
       ' 		FIL_DESC ' +
       ' FROM		CPAFILI ' +
       ' WHERE		FIL_CODI IN ' +
       ' 		(SELECT	DISTINCT CPG.FILIAL ' +
       ' 		FROM		 CPAPAGA  CPG, ' +
       ' 				 CPACONT  CP, ' +
       ' 				 CPACONTG CSU ' +
       ' 		WHERE		 CSU.CON_CODI_DEST = CP.CON_CODI ' +
       ' 		AND		 CSU.CON_CODI_ORIG = CPG.CONTAGERENCIAL ' +
       ' 		AND		 CPG.SITUACAO = ''A''';

       If (Data1 <> '') and (Data2 <> '') then
                SQLF := SQLF + ' AND     CPG.VENCIMENTO BETWEEN ' +
                               ' Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';
       If NumDoc <> '' then
                SQLF := SQLF + ' AND     CPG.DOCUMENTO = ' + '''' + NumDoc + '''';
       If ConGer <> '' then
                SQLF := SQLF + ' AND     CSU.CON_CODI_DEST = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL +   ' AND     FIL_CODI = '+ '''' + EmpID + '''';

       SQL := SQL + SQLF + ')' +
       ' ORDER BY 	FIL_CODI, FIL_DESC ';

       Q_EMP.SQL.CLEAR;
       Q_EMP.SQL.ADD(SQL);
       Q_EMP.OPEN;

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 CP.CON_CODI, CP.CON_DESC, CPG.VENCIMENTO, CSU.PERCENTUAL DESC ' );
       Q_CON.OPEN;

       Q_TOT.SQL.ADD(SQLF);
       Q_TOT.OPEN;

       Q_SOMA.SQL.ADD(SQLF);
       Q_SOMA.OPEN;

end;

procedure TFRelRatEmpAP.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := Q_CONCon_Codi.AsString;
end;

procedure TFRelRatEmpAP.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := '';
end;

procedure TFRelRatEmpAP.QRSContBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        If ConCodix <> Q_CONCon_Codi.AsString then
        Begin
                QRSCont.Height := 63;
                QRShape4.Enabled := True;                
                Q1.Enabled := True;
                Q2.Enabled := True;
                Q3.Enabled := True;
                Q4.Enabled := True;
                Q5.Enabled := True;
                Q6.Enabled := True;

                QR.Enabled := True;
                QR1.Enabled := True;
                QR3.Enabled := True;
                QR4.Enabled := True;
                QR5.Enabled := True;
                QR6.Enabled := True;

                QQ.Top := 42;
                QQ1.Top := 42;
                QQ3.Top := 42;
                QQ4.Top := 42;
                QQ5.Top := 42;
                QQ6.Top := 42;
                QQ7.Top := 42;
        End Else Begin
                QRSCont.Height := 23;
                QRShape4.Enabled := False;
                Q1.Enabled := False;
                Q2.Enabled := False;
                Q3.Enabled := False;
                Q4.Enabled := False;
                Q5.Enabled := False;
                Q6.Enabled := False;
                QR.Enabled := False;
                QR1.Enabled := False;
                QR3.Enabled := False;
                QR4.Enabled := False;
                QR5.Enabled := False;
                QR6.Enabled := False;

                QQ.Top := 2;
                QQ1.Top := 2;
                QQ3.Top := 2;
                QQ4.Top := 2;
                QQ5.Top := 2;
                QQ6.Top := 2;
                QQ7.Top := 2;

        End;
end;

procedure TFRelRatEmpAP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_EMP.CLOSE;
        Q_CON.CLOSE;
        Q_TOT.CLOSE;
        Q_SOMA.CLOSE;
        Action := CaFree;
end;

procedure TFRelRatEmpAP.QRS2BeforePrint(Sender: TQRCustomBand;
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

procedure TFRelRatEmpAP.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       If QRMEMO1.Lines.Count = 0 then
               QRMEMO1.Lines.Add(TxFiltro);
end;

procedure TFRelRatEmpAP.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        Total := Total + Q_TOTValor.AsFloat;
end;

procedure TFRelRatEmpAP.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        lbTot.Caption := formatfloat('###,###,##0.00',Total);
        Total := 0; 
end;

end.

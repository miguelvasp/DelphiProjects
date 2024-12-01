unit URelRatEmpMov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelRatEmpMov = class(TForm)
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    DS_EMP: TwwDataSource;
    Q_CON: TwwQuery;
    Q_CONCON_DESC: TStringField;
    Q_CONCLASS: TStringField;
    Q_CONCON_CODI: TStringField;
    DS_CON: TwwDataSource;
    Q_TOT: TwwQuery;
    Q_TOTVALOR: TFloatField;
    DS_TOT: TwwDataSource;
    Q_CONVALOR: TFloatField;
    Q_CONDATADEBITO: TDateTimeField;
    Q_CONDOCUMENTO: TStringField;
    Q_CONHISTORICO: TStringField;
    Q_CONDESCRICAO2: TStringField;
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
    QR1: TQRLabel;
    QR2: TQRLabel;
    QR3: TQRLabel;
    QR4: TQRLabel;
    QR5: TQRLabel;
    QRR: TQRLabel;
    QR6: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QQ1: TQRDBText;
    QQ2: TQRDBText;
    QQ3: TQRDBText;
    QQ4: TQRDBText;
    QQ5: TQRDBText;
    QQ6: TQRDBText;
    QQ7: TQRDBText;
    Q_CONFORNECEDOR: TStringField;
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
  FRelRatEmpMov: TFRelRatEmpMov;
  T:TextFile;
  ConCodiX :String;


implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRatEmpMov.FormCreate(Sender: TObject);
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
//                SQLF := SQLF + ' AND     CSU.CON_CODI = ' + '''' + ConGer + '''';
                SQLF := SQLF + ' AND     CPG.CONTAGERENCIAL = ' + '''' + ConGer + '''';
       If EmpID <> '' then
                SQL := SQL + ' AND       FIL_CODI = '+ '''' + EmpID + '''';

       SQL := SQL + SQLF + ')' +
       ' ORDER BY 	FIL_CODI ';

       Q_EMP.SQL.CLEAR;
       Q_EMP.SQL.ADD(SQL);
       Q_EMP.OPEN;

       Q_CON.SQL.ADD(SQLF + ' ORDER BY 	 CP.FIL_CODI, CP.CON_DESC, IPA.DATADEBITO ' );
       Q_CON.OPEN;

       Q_TOT.SQL.ADD(SQLF);
       Q_TOT.OPEN;

end;

procedure TFRelRatEmpMov.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := Q_CONCon_Codi.AsString;
end;

procedure TFRelRatEmpMov.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        ConCodix := '';
end;

procedure TFRelRatEmpMov.QRSContBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        If ConCodix <> Q_CONCon_Codi.AsString then
        Begin
                QRSCont.Height := 63;
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
                QQ1.Top := 42;
                QQ2.Top := 42;
                QQ3.Top := 42;
                QQ4.Top := 42;
                QQ5.Top := 42;
                QQ6.Top := 42;
                QQ7.Top := 42;                
        End Else Begin
                QRSCont.Height := 23;
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

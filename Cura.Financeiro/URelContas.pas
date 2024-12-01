unit URelContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelContas = class(TForm)
    QuickRep1: TQuickRep;
    Q_EMP: TwwQuery;
    DS_EMP: TwwDataSource;
    QRSubDetail1: TQRSubDetail;
    QRGroup1: TQRGroup;
    Q_CON: TwwQuery;
    DS_CON: TwwDataSource;
    QRDBText6: TQRDBText;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    Q_CONVENCIMENTO: TDateTimeField;
    Q_CONNUMERO: TIntegerField;
    Q_CONFORNECEDOR: TStringField;
    Q_CONHISTORICO: TStringField;
    Q_CONVALORLIQUIDO: TFloatField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    Q_SOMA: TwwQuery;
    DS_SOMA: TwwDataSource;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRShape5: TQRShape;
    Q_CONCONTAGERENCIAL: TStringField;
    QRDBText7: TQRDBText;
    QChe: TQRLabel;
    QDe: TQRLabel;
    Q_AUX: TwwQuery;
    Q_AUXSOMA: TFloatField;
    QDi: TQRLabel;
    QTi: TQRLabel;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape7: TQRShape;
    QRLabel24: TQRLabel;
    Q_CONTP_PAG: TStringField;
    QRLabel25: TQRLabel;
    QNe: TQRLabel;
    Q_SOMASOMA: TFloatField;
    Q_SOMAX: TwwQuery;
    QTot: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    Q_CONVPAGO: TFloatField;
    Q_CONSALDO: TFloatField;
    Q_CONTP_PAGX: TStringField;
    QRTLiq: TQRLabel;
    QRTPag: TQRLabel;
    QRTSal: TQRLabel;
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
    QRLabel19: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLiq: TQRLabel;
    QRPag: TQRLabel;
    QRSal: TQRLabel;
    QRDBText11: TQRDBText;
    QVCHE: TQRLabel;
    QVDE: TQRLabel;
    QVDI: TQRLabel;
    QVTI: TQRLabel;
    QVNE: TQRLabel;
    QVTOT: TQRLabel;
    QSCHE: TQRLabel;
    QSDE: TQRLabel;
    QSDI: TQRLabel;
    QSTI: TQRLabel;
    QSNE: TQRLabel;
    QSTOT: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QChePrint(sender: TObject; var Value: String);
    procedure QDePrint(sender: TObject; var Value: String);
    procedure QDiPrint(sender: TObject; var Value: String);
    procedure QTiPrint(sender: TObject; var Value: String);
    procedure QNePrint(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelContas: TFRelContas;
  T:TextFile;

  SomaCheques : real;
  SomaDebitos : real;
  SomaDinheiro: real;
  SomaTitulos : real;
  SomaNesp : real; //Não especificados

  SomaLiq, SomaPag, SomaSal :Real;
  SomaTLiq, SomaTPag, SomaTSal :Real;

  SomaTot,
  SomaVTot,
  SomaSTot :Real;

  Contador : Integer;
  RecordCount :Integer;

implementation
USES  UPesq_Rateios, UPesq_ContasBancarias, UPesq_Contas;

{$R *.DFM}

procedure TFRelContas.FormCreate(Sender: TObject);
VAR SQL: STRING;
    SQLFilt : String;
    DATA1: String;
    DATA2: String;
begin

    Contador := 0;

    SomaCheques := 0;
    SomaDebitos := 0;
    SomaDinheiro:= 0;
    SomaTitulos := 0;
    SomaNesp := 0;

    SQLFilt := '';

    DATA1:= '';
    DATA2:= '';

    SomaTLiq := 0;
    SomaTPag := 0;
    SomaTSal := 0;

    SomaLiq := 0;
    SomaPag := 0;
    SomaSal := 0;

    SQL:= ' SELECT * FROM CPAFILI  ' +
           ' WHERE         FIL_CODI IN (SELECT 	CP.FILIAL ' +
           '                            FROM 	CPAPAGA CP ' +
           '                            WHERE   CP.SALDO > 0  ' ;

            IF FPesq_Contas.DBE_CCU_DESC.Text <> '' THEN
                 SQLFilt:= SQLFilt + ' AND  CP.NUMERO = ' + '''' + FPesq_Contas.DBE_CCU_DESC.Text + '''';

            IF FPesq_Contas.DBLC_FORN.Text <> '' THEN
                 SQLFilt:= SQLFilt + ' AND CP.FILIAL =  ' + '''' + FPesq_Contas.DBLC_FORN.LookupValue + '''';

            IF FPesq_Contas.cboForn.Text <> '' THEN
                 SQLFilt:= SQLFilt + ' AND CP.FORNECEDOR = ' + '''' +  FPesq_Contas.cboForn.LookupValue + '''';

            if (FPesq_Contas.EMIS_INI.Text <> '  /  /  ') THEN
                 DATA1  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Contas.EMIS_INI.Text)) ;

            IF  (FPesq_Contas.EMIS_FIM.Text <> '  /  /  ') then
                 DATA2  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Contas.EMIS_FIM.Text)) ;

            IF (DATA1 <> '') AND (DATA2 <> '') THEN
                 SQLFilt := SQLFilt +  ' AND CP.VENCIMENTO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';

            Q_EMP.CLOSE;
            Q_EMP.SQL.CLEAR;
            Q_EMP.SQL.ADD(SQL);
            Q_EMP.SQL.ADD(SQLFilt + ')');
            Q_EMP.SQL.ADD(' ORDER BY FIL_DESC ');
            Q_EMP.OPEN;

            Q_CON.SQL.ADD(SQLFilt);
            Q_CON.SQL.ADD(' ORDER BY CP.VENCIMENTO ');
            Q_CON.OPEN;

            RecordCount := Q_CON.RecordCount;


            SQL:=' SELECT 	SUM(CP.VALORLIQUIDO) SOMA, ' +
                 '              SUM(CASE WHEN IPA.ABAT IS NULL THEN 0 ELSE IPA.ABAT END) AS SOMAV, ' +
                 '              SUM(CP.SALDO) SOMAS, ' +
                 '              CP.TP_PAG ' +
                 ' FROM 	CPAPAGA CP LEFT OUTER JOIN ' +
                 '              (SELECT SUM(ABATER) ABAT, NUMERO FROM CPAIPAG GROUP BY NUMERO) IPA ON ' +
                 '              IPA.NUMERO = CP.NUMERO ' +
                 ' WHERE        CP.SALDO <> 0  ' +
                 ' AND          CP.NUMERO IN ( SELECT NUMERO FROM CPAPAGA CP WHERE  1 = 1 ' ;


            IF FPesq_Contas.DBE_CCU_DESC.Text <> '' THEN
                SQLFilt:= SQLFilt + ' AND  CP.NUMERO = ' + '''' + FPesq_Contas.DBE_CCU_DESC.Text + '''';
            IF FPesq_Contas.DBLC_FORN.Text <> '' THEN
                SQLFilt:= SQLFilt + ' AND CP.FILIAL =  ' + '''' + FPesq_Contas.DBLC_FORN.LookupValue + '''';
            IF FPesq_Contas.cboForn.Text <> '' THEN
                SQLFilt:= SQLFilt + ' AND CP.FORNECEDOR = ' + '''' +  FPesq_Contas.cboForn.LookupValue + '''';
            IF (FPesq_Contas.EMIS_INI.Text <> '  /  /  ') THEN
                DATA1  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Contas.EMIS_INI.Text)) ;
            IF  (FPesq_Contas.EMIS_FIM.Text <> '  /  /  ') then
                DATA2  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Contas.EMIS_FIM.Text)) ;
            IF (DATA1 <> '') AND (DATA2 <> '') THEN
                SQLFilt := SQLFilt +  ' AND CP.VENCIMENTO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';

            SQLFilt := SQLFilt + ')';

            Q_SOMAX.SQL.CLEAR;
            Q_SOMAX.SQL.ADD(SQL);
            Q_SOMAX.SQL.ADD(SQLFilt);
            Q_SOMAX.SQL.Add(' GROUP BY CP.TP_PAG ');
            Q_SOMAX.CLOSE;
            Q_SOMAX.OPEN;

            Q_SOMA.OPEN;

            SomaTot := 0;
            SomaVTot := 0;
            SomaSTot := 0;

            While not Q_SOMAX.EOF do
            Begin
                      IF Q_SOMAX.FIELDBYNAME('SOMA').ASSTRING <> '' THEN
                      Begin
                        If Q_SOMAX.FIELDBYNAME('TP_PAG').ASSTRING = 'C' then
                        Begin
                                 QChe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMA').ASSTRING));
                                 QVChe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAV').ASSTRING));
                                 QSChe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAS').ASSTRING));
                        End Else If Q_SOMAX.FIELDBYNAME('TP_PAG').ASSTRING = 'T' then
                        Begin
                                 QTi.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMA').ASSTRING));
                                 QVTi.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAV').ASSTRING));
                                 QSTi.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAS').ASSTRING));
                        End Else If Q_SOMAX.FIELDBYNAME('TP_PAG').ASSTRING = 'D' then
                        Begin
                                 QDi.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMA').ASSTRING));
                                 QVDi.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAV').ASSTRING));
                                 QSDi.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAS').ASSTRING));
                        End Else If Q_SOMAX.FIELDBYNAME('TP_PAG').ASSTRING = 'A' then Begin
                                 QDe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMA').ASSTRING));
                                 QVDe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAV').ASSTRING));
                                 QSDe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAS').ASSTRING));
                        End Else Begin
                                 QNe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMA').ASSTRING));
                                 QVNe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAV').ASSTRING));
                                 QSNe.Caption:= formatfloat('###,###,##0.00',strtofloat(Q_SOMAX.FIELDBYNAME('SOMAS').ASSTRING));
                        End;
                      End;

                      SomaTot := SomaTot + Q_SOMAX.FIELDBYNAME('SOMA').AsFloat;
                      SomaVTot := SomaVTot + Q_SOMAX.FIELDBYNAME('SOMAV').AsFloat;
                      SomaSTot := SomaSTot + Q_SOMAX.FIELDBYNAME('SOMAS').AsFloat;

                      Q_SOMAX.next;

            End;

            QTOT.Caption := formatfloat('###,###,##0.00',SomaTot);
            QVTOT.Caption := formatfloat('###,###,##0.00',SomaVTot);
            QSTOT.Caption := formatfloat('###,###,##0.00',SomaSTot);

            //Início da montagem a String de Filtro

            TxFiltro := '';
            IF FPesq_Contas.DBE_CCU_DESC.Text <> '' THEN
                TxFiltro := TxFiltro + ' - Número : ' + FPesq_Contas.DBE_CCU_DESC.Text;
            IF FPesq_Contas.DBLC_FORN.Text <> '' THEN
                TxFiltro := TxFiltro + ' - Empresa : ' + FPesq_Contas.DBLC_FORN.Text;
            IF FPesq_Contas.cboForn.Text <> '' THEN
                TxFiltro := TxFiltro + ' - Fornecedor : ' + FPesq_Contas.cboForn.Text;
            IF (DATA1 <> '') AND (DATA2 <> '') THEN
                TxFiltro := TxFiltro + ' - Data Ini: ' + FPesq_Contas.EMIS_INI.Text +
                                       ' - Data Fim: ' + FPesq_Contas.EMIS_FIM.Text;
            If TxFiltro <> '' then
                TxFiltro := ' Filtro(s) :' + TxFiltro;
            //Fim de Monta a  String de Filtro
end;

procedure TFRelContas.QChePrint(sender: TObject; var Value: String);
begin
//        (Sender as TQRLabel).caption := FloattoStr(SomaCheques);
end;

procedure TFRelContas.QDePrint(sender: TObject; var Value: String);
begin
//        (Sender as TQRLabel).caption := FloattoStr(SomaDebitos);
end;

procedure TFRelContas.QDiPrint(sender: TObject; var Value: String);
begin
//        (Sender as TQRLabel).caption := FloattoStr(SomaDinheiro);
end;

procedure TFRelContas.QTiPrint(sender: TObject; var Value: String);
begin
//        (Sender as TQRLabel).caption := FloattoStr(SomaTitulos);
end;

procedure TFRelContas.QNePrint(sender: TObject; var Value: String);
begin
//        (Sender as TQRLabel).caption := FloattoStr(SomaNesp);
end;

procedure TFRelContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_SOMA.CLOSE;
        Q_SOMAX.CLOSE;
        Q_AUX.CLOSE;
        Q_CON.CLOSE;
        Q_EMP.CLOSE;

        Action := CaFree;
end;

procedure TFRelContas.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       If QRMEMO1.Lines.Count = 0 then
               QRMEMO1.Lines.Add(TxFiltro);
end;

procedure TFRelContas.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

        {
        QCHE.Caption := formatfloat('###,###,##0.00',SomaCheques);
        QDE.Caption :=  formatfloat('###,###,##0.00',SomaDebitos);
        QDI.Caption :=  formatfloat('###,###,##0.00',SomaDinheiro);
        QTI.Caption :=  formatfloat('###,###,##0.00',SomaTitulos);
        QNE.Caption :=  formatfloat('###,###,##0.00',SomaNesp);
        }

        QTOT.Caption := formatfloat('###,###,##0.00',   SomaCheques +
                                                        SomaDebitos +
                                                        SomaDinheiro +
                                                        SomaTitulos +
                                                        SomaNesp);

        QRTLiq.Caption := formatfloat('###,###,##0.00',SomaTLiq);
        QRTPag.Caption := formatfloat('###,###,##0.00',SomaTPag);
        QRTSal.Caption := formatfloat('###,###,##0.00',SomaTSal);
end;

procedure TFRelContas.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        If Q_CONTP_PAG.AsString = 'C' then //Cheques
                SomaCheques := SomaCheques + Q_CONVALORLIQUIDO.AsFloat
        Else If Q_CONTP_PAG.AsString = 'A' then //Débito Automático
                SomaDebitos := SomaDebitos + Q_CONVALORLIQUIDO.AsFloat
        Else If Q_CONTP_PAG.AsString = 'D' then //Dinheiro
                SomaDinheiro := SomaDinheiro + Q_CONVALORLIQUIDO.AsFloat
        Else If Q_CONTP_PAG.AsString = 'T' then //Liquidação de Títulos
                SomaTitulos := SomaTitulos + Q_CONVALORLIQUIDO.AsFloat
        Else
                SomaNesp := SomaNesp + Q_CONVALORLIQUIDO.AsFloat;

        SomaLiq := SomaLiq + Q_CONVALORLIQUIDO.AsFloat;
        SomaPag := SomaPag + Q_CONVPAGO.AsFloat;
        SomaSal := SomaSal + Q_CONSALDO.AsFloat;

        QRLiq.Caption := formatfloat('###,###,##0.00',SomaLiq);
        QRPag.Caption := formatfloat('###,###,##0.00',SomaPag);
        QRSal.Caption := formatfloat('###,###,##0.00',SomaSal);


        If (Contador < RecordCount) then
        Begin
               Inc(Contador);
        End Else Begin

                Contador := 1;
                RecordCount := Q_CON.RecordCount;

                SomaLiq := Q_CONVALORLIQUIDO.AsFloat;
                SomaPag := Q_CONVPAGO.AsFloat;
                SomaSal := Q_CONSALDO.AsFloat;
        End;

end;

procedure TFRelContas.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        SomaTLiq := SomaTLiq + Q_CONVALORLIQUIDO.AsFloat;
        SomaTPag := SomaTPag + Q_CONVPAGO.AsFloat;
        SomaTSal := SomaTSal + Q_CONSALDO.AsFloat;

end;

end.

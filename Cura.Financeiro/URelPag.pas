unit URelPag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelPag = class(TForm)
    QuickRep1: TQuickRep;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    DS_EMP: TwwDataSource;
    Q_CON: TwwQuery;
    Q_CONVENCIMENTO: TDateTimeField;
    Q_CONNUMERO: TIntegerField;
    Q_CONFORNECEDOR: TStringField;
    Q_CONHISTORICO: TStringField;
    Q_CONVALORLIQUIDO: TFloatField;
    Q_CONCONTAGERENCIAL: TStringField;
    Q_CONTP_PAG: TStringField;
    Q_CONVPAGO: TFloatField;
    Q_CONSALDO: TFloatField;
    Q_CONTP_PAGX: TStringField;
    DS_CON: TwwDataSource;
    Q_SOMA: TwwQuery;
    Q_SOMASOMA: TFloatField;
    DS_SOMA: TwwDataSource;
    Q_AUX: TwwQuery;
    Q_AUXSOMA: TFloatField;
    Q_SOMAX: TwwQuery;
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
    QS: TQRShape;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    Q1: TQRLabel;
    Q2: TQRLabel;
    Q3: TQRLabel;
    Q4: TQRLabel;
    Q5: TQRLabel;
    Q6: TQRLabel;
    Q7: TQRLabel;
    Q8: TQRLabel;
    Q9: TQRLabel;
    QD1: TQRDBText;
    QD2: TQRDBText;
    QD3: TQRDBText;
    QD4: TQRDBText;
    QD5: TQRDBText;
    QD6: TQRDBText;
    QD7: TQRDBText;
    QD8: TQRDBText;
    QRShape6: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape7: TQRShape;
    QTot: TQRLabel;
    QVTOT: TQRLabel;
    QSTOT: TQRLabel;
    QSNE: TQRLabel;
    QVNE: TQRLabel;
    QNe: TQRLabel;
    QTi: TQRLabel;
    QVTI: TQRLabel;
    QVDI: TQRLabel;
    QDi: TQRLabel;
    QDe: TQRLabel;
    QChe: TQRLabel;
    QVCHE: TQRLabel;
    QVDE: TQRLabel;
    QSDI: TQRLabel;
    QSDE: TQRLabel;
    QSCHE: TQRLabel;
    QSTI: TQRLabel;
    QRTSal: TQRLabel;
    QRTPag: TQRLabel;
    QRTLiq: TQRLabel;
    QRLiq: TQRLabel;
    QRPag: TQRLabel;
    QRSal: TQRLabel;
    QRShape4: TQRShape;
    Q0: TQRLabel;
    QD0: TQRDBText;
    qrAux: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSContBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSContAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelPag: TFRelPag;
  SomaCheques : real;
  SomaDebitos : real;
  SomaDinheiro: real;
  SomaTitulos : real;
  SomaNesp : real; //Não especificados

  SomaLiq, SomaPag, SomaSal :Real;
  SomaTLiq, SomaTPag, SomaTSal :Real;

  liq, pag, sal : Real;

  SomaTot,
  SomaVTot,
  SomaSTot :Real;

  Contador : Integer;
  RecordCount :Integer;
  Primeira:Boolean;


implementation
USES  UPesq_Rateios, UPesq_ContasBancarias, UPesq_Contas, CPPMENU;

{$R *.DFM}

procedure TFRelPag.FormCreate(Sender: TObject);
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
    liq := 0;
    pag := 0;
    sal := 0;


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

           //miguel - rotina multiempresas
           // IF FPesq_Contas.DBLC_FORN.Text <> '' THEN
           //      SQLFilt:= SQLFilt + ' AND CP.FILIAL =  ' + '''' + FPesq_Contas.DBLC_FORN.LookupValue + '''';

            IF FPesq_Contas.cboForn.Text <> '' THEN
                 SQLFilt:= SQLFilt + ' AND CP.FORNECEDOR = ' + '''' +  FPesq_Contas.cboForn.LookupValue + '''';

            if (FPesq_Contas.EMIS_INI.Text <> '  /  /  ') THEN
                 DATA1  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Contas.EMIS_INI.Text)) ;

            IF  (FPesq_Contas.EMIS_FIM.Text <> '  /  /  ') then
                 DATA2  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Contas.EMIS_FIM.Text)) ;

            IF (DATA1 <> '') AND (DATA2 <> '') THEN
                 SQLFilt := SQLFilt +  ' AND CP.VENCIMENTO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';


            //MIGUEL - ADICIONADO FILTRO POR MULTIPLAS EMPRESAS
            with qrAux do
            begin
                close;
                sql.Clear;
                sql.Add('select count(*) as achei from emp_temp where usuario = ' + fmenu.sqlusuariosch.asstring);
                sql.Add('and sel = ''*'' ') ;
                Open;
            end;

            if qrAux.FieldByName('achei').AsInteger > 0 then
                SQLFilt := SQLFilt + ' and CP.FILIAL in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')';



            //Parte que verifica se os lançamentos estão dentro ou fora do fluxo:
            // 1 => Estão no Fluxo
            // 2 => Não estão no fluxo
            // 1 e 2 => não adiciona filtro algum, são todos
            // Nem 1 Nem 2 => Coloca filtro 1=0, para não aparecer nenhum titulo
            //-------------------------------------------------------------------
            If (FPesq_Contas.ck_Sim.Checked) and not (FPesq_Contas.ck_Nao.Checked) then
                SQLFilt := SQLFilt + ' AND CP.FLAG_FLUXO = ''S'''
            Else  If not (FPesq_Contas.ck_Sim.Checked) and (FPesq_Contas.ck_Nao.Checked) then
                SQLFilt := SQLFilt + ' AND CP.FLAG_FLUXO = ''N'''
            Else If not (FPesq_Contas.ck_Sim.Checked) and not (FPesq_Contas.ck_Nao.Checked) then
                SQLFilt := SQLFilt + ' AND 1 = 0 ';
            //-------------------------------------------------------------------

            Q_EMP.CLOSE;
            Q_EMP.SQL.CLEAR;
            Q_EMP.SQL.ADD(SQL);
            Q_EMP.SQL.ADD(SQLFilt + ')');
            Q_EMP.SQL.ADD(' ORDER BY FIL_CODI ');
            Q_EMP.OPEN;

            Q_CON.SQL.ADD(SQLFilt);
            Q_CON.SQL.ADD(' ORDER BY CP.VENCIMENTO ');
            Q_CON.OPEN;

            If Q_CON.Eof then
                QRBand2.Enabled := false;

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


            //Parte que verifica se os lançamentos estão dentro ou fora do fluxo:
            // 1 => Estão no Fluxo
            // 2 => Não estão no fluxo
            // 1 e 2 => não adiciona filtro algum, são todos
            // Nem 1 Nem 2 => Coloca filtro 1=0, para não aparecer nenhum titulo
            //-------------------------------------------------------------------
            If (FPesq_Contas.ck_Sim.Enabled) and not (FPesq_Contas.ck_Nao.Enabled) then
                SQLFilt := SQLFilt + ' AND CP.FLAGFLUXO = ''S'''
            Else  If not (FPesq_Contas.ck_Sim.Enabled) and (FPesq_Contas.ck_Nao.Enabled) then
                SQLFilt := SQLFilt + ' AND CP.FLAGFLUXO = ''N'''
            Else If not (FPesq_Contas.ck_Sim.Enabled) and (FPesq_Contas.ck_Nao.Enabled) then
                SQLFilt := SQLFilt + ' AND 1 = 0 ';
            //-------------------------------------------------------------------

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

procedure TFRelPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_SOMA.CLOSE;
        Q_SOMAX.CLOSE;
        Q_AUX.CLOSE;
        Q_CON.CLOSE;
        Q_EMP.CLOSE;

        Action := CaFree;

end;

procedure TFRelPag.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       If QRMEMO1.Lines.Count = 0 then
               QRMEMO1.Lines.Add(TxFiltro);

end;

procedure TFRelPag.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        If Sender = QRBand2 Then
        Begin
            QTOT.Caption := formatfloat('###,###,##0.00',   SomaCheques +
                                                            SomaDebitos +
                                                            SomaDinheiro +
                                                            SomaTitulos +
                                                            SomaNesp);

            QRTLiq.Caption := formatfloat('###,###,##0.00',SomaTLiq);
            QRTPag.Caption := formatfloat('###,###,##0.00',SomaTPag);
            QRTSal.Caption := formatfloat('###,###,##0.00',SomaTSal);

            SomaTSal := 0;
            SomaTPag := 0;
            SomaTLiq := 0;
            SomaCheques := 0;
            SomaDebitos := 0;
            SomaDinheiro := 0;
            SomaTitulos := 0;
            SomaNesp := 0;
        End;
end;

procedure TFRelPag.QRSContBeforePrint(Sender: TQRCustomBand;
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


        liq := liq + Q_CONVALORLIQUIDO.AsFloat;
        pag := pag + Q_CONVPAGO.AsFloat;
        sal := sal + Q_CONSALDO.AsFloat;


      //  QRLiq.Caption := formatfloat('###,###,##0.00',SomaLiq);
     //   QRPag.Caption := formatfloat('###,###,##0.00',SomaPag);
     //   QRSal.Caption := formatfloat('###,###,##0.00',SomaSal);

        SomaLiq := 0;
        SomaPag := 0;
        SomaSal := 0;


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

        If Primeira then
        Begin
                QRSCont.Height := 44;
                QS.Enabled := True;
                Q0.Enabled := True;
                Q1.Enabled := True;
                Q2.Enabled := True;
                Q3.Enabled := True;
                Q4.Enabled := True;
                Q5.Enabled := True;
                //Q6.Enabled := True;
                //Q7.Enabled := True;
                Q8.Enabled := True;
                Q9.Enabled := True;

                QD0.Top := 24;
                QD1.Top := 24;
                QD2.Top := 24;
                QD3.Top := 24;
                QD1.Top := 24;
                QD4.Top := 24;
                QD5.Top := 24;
                //QD6.Top := 24;
                //QD7.Top := 24;
                QD8.Top := 24;

                Primeira := False;


        End Else Begin
                QRSCont.Height := 22;
                QS.Enabled := False;

                Q0.Enabled := False;
                Q1.Enabled := False;
                Q2.Enabled := False;
                Q3.Enabled := False;
                Q4.Enabled := False;
                Q5.Enabled := False;
                //Q6.Enabled := False;
                //Q7.Enabled := False;
                Q8.Enabled := False;
                Q9.Enabled := False;

                QD0.Top := 1;
                QD1.Top := 1;
                QD2.Top := 1;
                QD3.Top := 1;
                QD1.Top := 1;
                QD4.Top := 1;
                QD5.Top := 1;
                //QD6.Top := 1;
                //QD7.Top := 1;
                QD8.Top := 1;

        End;

end;

procedure TFRelPag.QRSContAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        SomaTLiq := SomaTLiq + Q_CONVALORLIQUIDO.AsFloat;
        SomaTPag := SomaTPag + Q_CONVPAGO.AsFloat;
        SomaTSal := SomaTSal + Q_CONSALDO.AsFloat;

end;

procedure TFRelPag.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        Primeira := True;
end;

procedure TFRelPag.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        QRLiq.Caption := formatfloat('###,###,##0.00',Liq);
        QRPag.Caption := formatfloat('###,###,##0.00',Pag);
        QRSal.Caption := formatfloat('###,###,##0.00',Sal);

        liq := 0;
        pag := 0;
        sal := 0;
end;

end.

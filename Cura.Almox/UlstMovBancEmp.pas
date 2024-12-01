unit UlstMovBancEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc, Wwtable,
  wwstorep;

type
  TFlstMovBancEmp = class(TForm)
    LST_MovBanc: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    DS_MovBanc: TwwDataSource;
    Q_MovBanc: TwwQuery;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    Q_MovBancMOV_BANC: TStringField;
    Q_MovBancMOV_DATA: TDateTimeField;
    Q_MovBancMOV_SINAL: TStringField;
    Q_MovBancMOV_DCTO: TStringField;
    Q_MovBancMOV_LANC: TIntegerField;
    Q_MovBancMOV_CODI: TAutoIncField;
    Q_MovBancMOV_DESC: TStringField;
    Q_MovBancMOV_HIST: TStringField;
    Q_MovBancMOV_VALOR: TFloatField;
    Q_MovBancMOV_CONT: TStringField;
    Q_MovBancMOV_FILI: TStringField;
    Q_MovBancMOV_ORIG: TStringField;
    Q_MovBancMOV_SEQU: TIntegerField;
    Q_MovBancMOV_CHEQ: TStringField;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    Q_MovBancBAN_NOME: TStringField;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape5: TQRShape;
    STP_CALCSALD1: TwwStoredProc;
    Q_AUX: TwwQuery;
    QRDBImage1: TQRDBImage;
    Q_EMP: TwwQuery;
    DS_EMP: TwwDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    Q_EMPBAN_CODI: TStringField;
    Q_EMPBAN_NOME: TStringField;
    Q_EMPFIL_DESC: TStringField;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrBxAberto: TwwQuery;
    QRLabel19: TQRLabel;
    lbCreditos: TQRLabel;
    QRLabel22: TQRLabel;
    lbDebitos: TQRLabel;
    qrSaldoAjustado: TwwQuery;
    qrSaldoAjustadoBAN_CODI: TStringField;
    qrSaldoAjustadoDEBITOS: TFloatField;
    qrSaldoAjustadoCREDITOS: TFloatField;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure LST_MovBancBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure LST_MovBancAfterPrint(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure lbCreditosPrint(sender: TObject; var Value: String);
    procedure lbDebitosPrint(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstMovBancEmp: TFlstMovBancEmp;
  SaldoAnterior : real ;
  SaldoAtual    : real ;
  Saldo : real;


  //variaveis para composição do rodape
  S1 : Real;

implementation

uses cppmenu , FiltLstMovBanc ;
{$R *.DFM}

procedure TFlstMovBancEmp.FormCreate(Sender: TObject);
Var SQL:String;
begin
   {
   SaldoAtual := 0 ;
   SaldoAnterior := 0 ;

   try
   begin
     STP_CALCSALD1.ParamByName('@Banco').Value   := Q_EMPBan_Codi.AsString ;
     STP_CALCSALD1.ParamByName('@DataRef').Value := datai ;
     STP_CALCSALD1.ExecProc;

   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;

   SaldoAnterior  := STP_CALCSALD1.ParamByName('@SaldoAnt').Value    ;
   }

   SQL := 'SELECT 	 BAN.BAN_CODI, ' +
          ' 	 BAN.BAN_NOME, ' +
          ' 	 FIL.FIL_DESC ' +
          ' FROM 	 CPABANC BAN, ' +
          ' 	 CPAFILI FIL ' +
          ' WHERE	 BAN.BAN_CODEMPR = FIL.FIL_CODI ';

   If strEmp <> '' then
        SQL := SQL + ' AND     BAN.BAN_CODEMPR = ' + '''' + strEmp + '''';
   If strBanco <> '' then
        SQL := SQL + ' AND     BAN.BAN_CODI = ' + '''' + strBanco + '''';

   SQL := SQL +
        ' ORDER BY FIL.FIL_CODI, ' +
        ' 	 BAN.BAN_NOME, ' +
        ' 	 BAN.BAN_CODI ';

   Q_EMP.SQL.CLEAR;
   Q_EMP.SQL.ADD(SQL);

   //MIGUEL - ALTERADO CONVERT DA DATA Q ESTAVA TRAZENDO OS VALORES ERRADOS COM HORAS
   SQL := ' SELECT A.MOV_BANC,CONVERT(DATETIME,CONVERT(CHAR(10), A.MOV_DATA, 112)) AS MOV_DATA,A.MOV_SINAL,A.MOV_DCTO,A.MOV_LANC,A.MOV_CODI,A.MOV_DESC ' +
          ' ,A.MOV_HIST,A.MOV_VALOR,A.MOV_CONT,A.MOV_FILI,A.MOV_ORIG,A.MOV_SEQU,A.MOV_CHEQ, ' +
          '      	B.BAN_NOME ' +
          ' FROM 	CPAMOVI A, ' +
          '      	CPABANC B ' +
          ' WHERE 	A.MOV_BANC = B.BAN_CODI ' +
          ' AND	        A.MOV_BANC = :BAN_CODI ' +
          ' AND         CONVERT(CHAR(08),MOV_DATA,112) >= ' +
                        '''' + FormatDateTime('YYYYMMDD',DATAI) + '''';

   If strBanco <> '' then
        SQL := SQL + '  AND     MOV_BANC = ' + '''' + strBanco + '''' ;

   If Dataf <> 0.0 then
      SQL := SQL + ' AND        CONVERT(CHAR(08),MOV_DATA,112) <=' +
                   '''' + FormatDateTime('YYYYMMDD',DATAF) + '''';

   If strEmp <> '' then
      SQL := SQL + ' AND        B.BAN_CODEMPR = ' + '''' + strEmp + '''';

   SQL := SQL +
          ' ORDER BY	CONVERT(CHAR(10),MOV_DATA,112), ' +
          '      	MOV_SINAL, ' +
          '      	MOV_DCTO ';

   Q_EMP.OPEN;
   Q_MOVBANC.Close ;
   Q_MOVBANC.Sql.Clear ;
   Q_MOVBANC.Sql.Add(SQL);
   Q_MOVBANC.Open ;
end;

procedure TFlstMovBancEmp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_MovBanc.close;
  action:=cafree;
end;

procedure TFlstMovBancEmp.QRDBText4Print(sender: TObject; var Value: String);
begin
  if Q_movBancMOV_SINAL.asstring = '+' then value := ''
  else value := '-' ;
end;

procedure TFlstMovBancEmp.QRDBText7Print(sender: TObject; var Value: String);
begin
  if Q_movBancMOV_SINAL.asstring = '+' then
       SaldoAtual := SaldoAtual + Q_MOVBANCMOV_VALOR.asfloat
  else
  SaldoAtual := SaldoAtual - Q_MOVBANCMOV_VALOR.asfloat ;
end;

procedure TFlstMovBancEmp.LST_MovBancBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
  SaldoAtual  := SaldoAnterior ;
//
// Seleciona o Nome da Empresa
//
//   QRLabel20.caption := FMenu.StatusBar1.Panels[2].text ;
   QRLabel20.caption := FMenu.FUsuario ;
end;

procedure TFlstMovBancEmp.QRLabel6Print(sender: TObject; var Value: String);
begin
   value := formatfloat('###,###,###,##0.00',SaldoAnterior) ;
   saldo := SaldoAnterior;
end;



procedure TFlstMovBancEmp.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
//   saldo := 0;
end;

procedure TFlstMovBancEmp.QRLabel16Print(sender: TObject; var Value: String);
begin
   value := formatfloat('###,###,###,##0.00',SaldoAtual + SaldoAnterior) ;
   S1 := SaldoAtual + SaldoAnterior;
   //Value := QRLabel17.Caption;
   SaldoAtual := 0 ;
end;

procedure TFlstMovBancEmp.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{// Em teste, Daniel
   SaldoAtual := 0 ;
   SaldoAnterior := 0 ;

   try
   begin
     STP_CALCSALD1.ParamByName('@Banco').Value   := Q_EMPBan_Codi.AsString ;
     STP_CALCSALD1.ParamByName('@DataRef').Value := datai ;
     STP_CALCSALD1.ExecProc;

   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;

   SaldoAnterior  := STP_CALCSALD1.ParamByName('@SaldoAnt').Value    ;
//
}
end;

procedure TFlstMovBancEmp.QRLabel18Print(sender: TObject; var Value: String);
begin
   qrlabel18.Caption := '';
end;

procedure TFlstMovBancEmp.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 ///// saldo := 0;
end;

procedure TFlstMovBancEmp.LST_MovBancAfterPrint(Sender: TObject);
begin
    saldo := 0;
end;

procedure TFlstMovBancEmp.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
data : string;
begin
   QRLabel17.Caption := '';

   if Q_MOVBANCMOV_SINAL.asstring = '+' then
        saldo := saldo + Q_MOVBANCMOV_VALOR.value
   else
        saldo := saldo - Q_MOVBANCMOV_VALOR.value;

   if not Q_MOVBANC.eof then
   begin
        data := COPY(Q_MOVBANCMOV_DATA.AsString,0,10);

        Q_MOVBANC.next;
        if (COPY(Q_MOVBANCMOV_DATA.asstring,0,10) <> data) or
           (Q_MOVBANC.eof) then
        begin
                QRLabel17.caption := formatfloat('###,###,##0.00', saldo);
                QRLabel17.enabled := true ;
                QRLabel18.enabled := true ;
                QRSubDetail1.height := 36;
        end else begin
            QRLabel17.enabled := false ;
            QRLabel18.enabled := false ;
        end ;

        if not Q_MOVBANC.eof then
        begin
                Q_MOVBANC.Prior ;
        end;
   end;

end;

procedure TFlstMovBancEmp.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   QRSubDetail1.height := 17;
   QRLabel17.Caption := '';
end;

procedure TFlstMovBancEmp.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var SaldoAnt : Double;
begin
// Em teste, Daniel
   SaldoAtual := 0 ;
   SaldoAnterior := 0 ;

   try
   begin
     STP_CALCSALD1.ParamByName('@Banco').Value   := Q_EMPBan_Codi.AsString ;
     STP_CALCSALD1.ParamByName('@DataRef').Value := datai  ;
     STP_CALCSALD1.ExecProc;

   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
   if STP_CALCSALD1.ParamByName('@SaldoAnt').AsString = '' then
       SaldoAnt := 0
   else
       SaldoAnt :=  STP_CALCSALD1.ParamByName('@SaldoAnt').Value;

   SaldoAnterior  :=  SaldoAnt ;
//

end;

procedure TFlstMovBancEmp.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrBxAberto.Params[0].AsString :=  Q_MovBancMOV_BANC.Value;
  qrBxAberto.ExecSQL;

  qrSaldoAjustado.CLOSE;
  qrSaldoAjustado.Params[0].Value := Q_MovBancMOV_BANC.Value;
  qrSaldoAjustado.Open;

  //lbCreditos.Caption := FormatFloat('###,###,##0.00', qrSaldoAjustadoCREDITOS.AsFloat);
  //lbDebitos.Caption := FormatFloat('###,###,##0.00', qrSaldoAjustadoDEBITOS.AsFloat);

end;

procedure TFlstMovBancEmp.lbCreditosPrint(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,###,##0.00', qrSaldoAjustadoCREDITOS.AsFloat);
end;

procedure TFlstMovBancEmp.lbDebitosPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,##0.00', qrSaldoAjustadoDEBITOS.AsFloat);
end;

procedure TFlstMovBancEmp.QRLabel23Print(sender: TObject;
  var Value: String);
  var  saldo_ajustado : Real;
begin
//
    saldo_ajustado := S1 + qrSaldoAjustadoCREDITOS.AsFloat - qrSaldoAjustadoDEBITOS.AsFloat;
    Value :=  FormatFloat('###,###,##0.00', saldo_ajustado);
    S1 := 0;
end;

end.

unit RelMovDiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, wwstorep, Db, Wwquery, Wwtable, Wwdatsrc, Qrctrls, QuickRpt,
  ExtCtrls;

type
  TFRelMovDiario = class(TForm)
    RelMovDiario: TQuickRep;
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
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape4: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    DS_MovBanc: TwwDataSource;
    Q_MovBanc: TwwQuery;
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
    STP_CALCSALD1: TwwStoredProc;
    Q_MovBancCON_DESC: TStringField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRGroup2: TQRGroup;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    STP_SALDPERIODO: TwwStoredProc;
    Q_ContaGerencial: TwwQuery;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRShape9: TQRShape;
    QRLabel17: TQRLabel;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_AGEN: TStringField;
    Q_BANCBAN_NAGE: TStringField;
    DS_BANC: TwwDataSource;
    Q_TOTENT: TwwQuery;
    Q_AUX: TwwQuery;
    Q_AUXXDATA: TDateTimeField;
    QRBand5: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    q_contagerencialT: TwwQuery;
    Q_ContaGerencialCON_DESC: TStringField;
    Q_ContaGerencialxvalor: TFloatField;
    q_contagerencialTCON_DESC: TStringField;
    q_contagerencialTxvalor: TFloatField;
    Desc1: TQRDBText;
    Desc2: TQRDBText;
    Desc3: TQRDBText;
    Tot1: TQRDBText;
    Tot2: TQRDBText;
    Tot3: TQRDBText;
    QRLabel28: TQRLabel;
    Desc4: TQRDBText;
    Desc5: TQRDBText;
    Desc6: TQRDBText;
    Tot4: TQRDBText;
    Tot5: TQRDBText;
    Tot6: TQRDBText;
    Tot12: TQRDBText;
    Tot11: TQRDBText;
    Tot10: TQRDBText;
    Tot9: TQRDBText;
    Tot8: TQRDBText;
    Tot7: TQRDBText;
    Desc7: TQRDBText;
    Desc8: TQRDBText;
    Desc9: TQRDBText;
    Desc10: TQRDBText;
    Desc11: TQRDBText;
    Desc12: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure RelMovDiarioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Tot5Print(sender: TObject; var Value: String);
    procedure Tot6Print(sender: TObject; var Value: String);
    procedure Desc1Print(sender: TObject; var Value: String);
    procedure Desc2Print(sender: TObject; var Value: String);
    procedure Desc3Print(sender: TObject; var Value: String);
    procedure Tot1Print(sender: TObject; var Value: String);
    procedure Tot2Print(sender: TObject; var Value: String);
    procedure Tot3Print(sender: TObject; var Value: String);
    procedure Tot4Print(sender: TObject; var Value: String);
    procedure Desc4Print(sender: TObject; var Value: String);
    procedure Desc5Print(sender: TObject; var Value: String);
    procedure Desc6Print(sender: TObject; var Value: String);
    procedure Desc7Print(sender: TObject; var Value: String);
    procedure Desc8Print(sender: TObject; var Value: String);
    procedure Desc9Print(sender: TObject; var Value: String);
    procedure Desc10Print(sender: TObject; var Value: String);
    procedure Desc11Print(sender: TObject; var Value: String);
    procedure Desc12Print(sender: TObject; var Value: String);
    procedure Tot7Print(sender: TObject; var Value: String);
    procedure Tot8Print(sender: TObject; var Value: String);
    procedure Tot9Print(sender: TObject; var Value: String);
    procedure Tot10Print(sender: TObject; var Value: String);
    procedure Tot11Print(sender: TObject; var Value: String);
    procedure Tot12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMovDiario: TFRelMovDiario;
  SaldoAnterior : real ;
  tSaldoAnterior: real ;
  SaldoDespesas : real ;
  SaldoFornecedor : real ;
  SaldoAtual    : real ;
  tSaldoAtual   : real ;
  DDataRef      : Tdatetime ;
  Dataref : tdatetime ;
  StrBanco      : string ;
  TotEntradas   : String ;
  TotSaidas     : String ;
  cont : integer;
  wtot1 : real;
  wdesc1 : string;
  wtot2 : real;
  wdesc2 : string;
  wtot3 : real;
  wdesc3 : string;
  wtot4 : real;
  wdesc4 : string;
  wtot5 : real;
  wdesc5 : string;
  wtot6 : real;
  wdesc6 : string;
  wtot7 : real;
  wdesc7 : string;
  wtot8 : real;
  wdesc8 : string;
  wtot9 : real;
  wdesc9 : string;
  wtot10: real;
  wdesc10: string;
  wtot11: real;
  wdesc11: string;
  wtot12: real;
  wdesc12: string;

  RepetData     : tdatetime ;
  CONTADOR : INTEGER;
implementation
uses cppmenu , RelMovDiarioFilt;

{$R *.DFM}

procedure TFRelMovDiario.RelMovDiarioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//  SaldoAtual  := SaldoAnterior ;
//
// Seleciona o Nome da Empresa
//
   QRLabel20.caption := FMenu.FUsuario ;
   QRLabel26.caption :=  ' Movimento do dia ' + frelmovdiariofilt.Maskedit1.text;

   SaldoAtual := 0 ;
   SaldoAnterior := 0 ;
   TSaldoAtual := 0 ;
   TSaldoAnterior := 0 ;
   wtot1 := 0;
   wtot2 := 0;
   wtot3 := 0;
   wtot4 := 0;
   wtot5 := 0;
   wtot6 := 0;
   wtot7 := 0;
   wtot8 := 0;
   wtot9 := 0;
   wtot10:= 0;
   wtot11:= 0;
   wtot12:= 0;
   wdesc1 := '';
   wdesc2 := '';
   wdesc3 := '';
   wdesc4 := '';
   wdesc5 := '';
   wdesc6 := '';
   wdesc7 := '';
   wdesc8 := '';
   wdesc9 := '';
   wdesc10:= '';
   wdesc11:= '';
   wdesc12:= '';
   cont := 0;
end;

procedure TFRelMovDiario.FormCreate(Sender: TObject);
begin
   CONTADOR := 0;

   Q_BANC.Close ;
   Q_BANC.Sql.Clear ;
   Q_BANC.Sql.Add('select B.BAN_CODI, B.BAN_NOME , B.BAN_NAGE, B.BAN_AGEN from CPABANC B' ) ;
   Q_BANC.Sql.Add(' Where  BAN_Ordem > 0 order by Ban_Ordem' ) ;
// Q_BANC.Sql.Add(' Where  BAN_LCHE = ' + ''''+ 'S'+ '''' ) ;
   Q_BANC.Open ;

// Movimentações referente a data
   Q_MOVBANC.Close ;
   Q_MOVBANC.Sql.Clear ;
   Q_MOVBANC.Sql.Add('select A.* , C.CON_DESC from cpamovi A , CPACONT C ' ) ;
   Q_MOVBANC.Sql.Add(' Where MOV_BANC = :BAN_CODI ') ;
   Q_MOVBANC.Sql.Add(' and A.MOV_CONT =  C.CON_CODI ') ;
   if Datai <> 0.0 then begin
      Q_MOVBANC.Sql.Add(' and Convert(char(08),MOV_DATA,112) >= ' ) ;
      Q_MOVBANC.Sql.Add('''' + formatdatetime('YYYYMMDD',datai) + '''' ) ;
      Q_MOVBANC.Sql.Add(' and Convert(char(08),MOV_DATA,112) <=' ) ;
      Q_MOVBANC.Sql.Add('''' + formatdatetime('YYYYMMDD',dataf) + '''' ) ;
   end ;

   Q_MOVBANC.Sql.Add(' and MOV_CHEQ = '+ ''''+ 'S'+ '''' ) ;
   Q_MOVBANC.Sql.Add(' and MOV_SINAL = '+'''' + '-'+ '''') ;
   Q_MOVBANC.Sql.Add(' order by Mov_banc,Mov_data, Mov_dcto' ) ;
   Q_MOVBANC.Open ;

   Q_CONTAGERENCIAL.Close ;
   Q_CONTAGERENCIAL.Sql.Clear ;
   Q_CONTAGERENCIAL.Sql.Add('select SUM( CASE MOV_SINAL WHEN ' + '''' + '+' + '''' + ' THEN MOV_VALOR ELSE (MOV_VALOR*(-1)) END ) as xvalor ' ) ;
   Q_CONTAGERENCIAL.Sql.Add(' , B.CON_DESC ' ) ;
   Q_CONTAGERENCIAL.Sql.Add('from cpamovi A , CPACONT B ' ) ;
   Q_CONTAGERENCIAL.Sql.Add(' Where MOV_BANC = :BAN_CODI' ) ;
//   Q_CONTAGERENCIAL.Sql.Add(' Where MOV_BANC = ' + '''' +  Q_BANCBAN_CODI.ASSTRING + '''' ) ;
   Q_CONTAGERENCIAL.Sql.Add(' and A.MOV_CONT =  b.CON_CODI ') ;

   if Datai <> 0.0 then begin
      Q_CONTAGERENCIAL.Sql.Add(' and Convert(char(08),a.MOV_DATA,112) >= ' ) ;
      Q_CONTAGERENCIAL.Sql.Add('''' + formatdatetime('YYYYMMDD',datai) + '''' ) ;
      Q_CONTAGERENCIAL.Sql.Add(' and Convert(char(08),a.MOV_DATA,112) <=' ) ;
      Q_CONTAGERENCIAL.Sql.Add('''' + formatdatetime('YYYYMMDD',dataf) + '''' ) ;
   end ;

   Q_CONTAGERENCIAL.Sql.Add(' group by b.CON_DESC' ) ;
   Q_CONTAGERENCIAL.Open ;
   DDataRef  := Datai;
//
// Seleciona o Nome da Empresa
//
     QRLabel20.caption := FMenu.FUsuario;
end;

procedure TFRelMovDiario.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,###,##0.00',SaldoAnterior) ;
  tSaldoAnterior := tSaldoAnterior + SaldoAnterior;
end;

procedure TFRelMovDiario.QRLabel8Print(sender: TObject; var Value: String);
begin
  value := TotSaidas ;
end;

procedure TFRelMovDiario.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  value := TotEntradas ;
end;

procedure TFRelMovDiario.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var totsai : real; totent : real;
begin
   try
   begin
     STP_SALDPERIODO.ParamByName('@Banco').Value            := StrBanco ;
     STP_SALDPERIODO.ParamByName('@DataRef').Value          := ddataref ;
     STP_SALDPERIODO.ParamByName('@SaldoAnterior').Value    := SaldoAnterior ;
     STP_SALDPERIODO.ParamByName('@SaldoFinal').Value  := 0 ;
     STP_SALDPERIODO.ExecProc;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
   SaldoAtual := STP_SALDPERIODO.ParamByName('@SaldoFinal').Value    ;

{   if Q_MOVBANCMOV_BANC.asstring = '' then begin
    // Busca data da ultima conciliação do banco referido
     Q_aux.Close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.SQL.Add('select BAN_DATA AS XDATA from CPABANC ' ) ;
     Q_AUX.SQL.Add(' Where BAN_CODI = :BAN_CODI ') ;
     Q_AUX.Open ;
     DDATAREF := Q_AUXXDATA.AsDateTime;
//      DDataRef  := Datai;        // 0.0;
    end else begin
      DDataRef  := Q_MOVBANCMOV_DATA.asdatetime ;
   end ; }

   Q_TOTENT.Close ;
   Q_TOTENT.Sql.Clear ;
   Q_TOTENT.Sql.Add(' select sum(MOV_VALOR) as XVALOR from CPAMOVI ') ;
   Q_TOTENT.Sql.Add(' where MOV_BANC =  '+ ''''+ StrBanco + '''' ) ;
   Q_TOTENT.Sql.Add(' and MOV_SINAL = '+ ''''+ '+'+ '''' ) ;
   Q_TOTENT.Sql.Add(' and Convert(char(08),MOV_DATA,112) =' ) ;
//   Q_TOTENT.Sql.Add('''' + formatdatetime('YYYYMMDD',Ddataref) + '''' ) ;
   Q_TOTENT.Sql.Add('''' + formatdatetime('YYYYMMDD',Datai) + '''' ) ;
   Q_TOTENT.OPen ;

   TotEntradas := Formatfloat('###,###,###,##0.00',  Q_TOTENT.fieldbyname('XVALOR').asfloat ) ;
   totent := Q_TOTENT.fieldbyname('XVALOR').asfloat;

   Q_TOTENT.Close ;
   Q_TOTENT.Sql.Clear ;
   Q_TOTENT.Sql.Add(' select sum(MOV_VALOR) as XVALOR from CPAMOVI ') ;
   Q_TOTENT.Sql.Add(' where MOV_BANC =  '+ ''''+ StrBanco + '''' ) ;
   Q_TOTENT.Sql.Add(' and MOV_SINAL = '+ '''' + '-' + '''' ) ;
   Q_TOTENT.Sql.Add(' and Convert(char(08),MOV_DATA,112) =' ) ;
   Q_TOTENT.Sql.Add('''' + formatdatetime('YYYYMMDD',datai) + '''' ) ;
//  Q_TOTENT.Sql.Add('''' + formatdatetime('YYYYMMDD',Ddataref) + '''' ) ;
   Q_TOTENT.OPen ;

   TotSaidas := Formatfloat('###,###,###,##0.00',  Q_TOTENT.fieldbyname('XVALOR').asfloat ) ;
   totsai := Q_TOTENT.fieldbyname('XVALOR').asfloat ;
end;

procedure TFRelMovDiario.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,###,##0.00',SaldoAtual) ;
  tSaldoAtual := tSaldoAtual + SaldoAtual;
end;

procedure TFRelMovDiario.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   SaldoAtual := 0 ;
   SaldoAnterior := 0 ;
//   TSaldoAtual := 0 ;
//   TSaldoAnterior := 0 ;

   RepetData := 0.0 ;
   if Q_MOVBANCMOV_BANC.asstring = '' then begin
   // Busca data da ultima conciliação do banco referido
{      Q_aux.Close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.SQL.Add('select BAN_DATA AS XDATA from CPABANC ' ) ;
      Q_AUX.SQL.Add(' Where BAN_CODI = ' + '''' + Q_BANCBAN_CODI.asstring + '''') ;
      Q_AUX.Open ;
      DATAREF := Q_AUXXDATA.AsDateTime;}
      // correto
      dataref := ddataref;                 //
      StrBanco := Q_BANCBAN_CODI.asstring ;
    end else begin
      DataRef  := Q_MOVBANCMOV_DATA.asdatetime ;
      StrBanco := Q_MOVBANCMOV_BANC.asstring ;
   end ;
{   ddataref := dataref;
        DataRef  := Datai - 1 ;        // 0.0;
        StrBanco := Q_BANCBAN_CODI.asstring ;
     end else begin
       DataRef  := Q_MOVBANCMOV_DATA.asdatetime ;
       StrBanco := Q_MOVBANCMOV_BANC.asstring ;
    end ; }
   Try
   begin
     STP_CALCSALD1.ParamByName('@Banco').Value   := StrBanco ;
     STP_CALCSALD1.ParamByName('@DataRef').Value := dataref ;
     STP_CALCSALD1.ExecProc;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;

   SaldoAnterior := STP_CALCSALD1.ParamByName('@SaldoAnt').asfloat  ;
end;

procedure TFRelMovDiario.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  if RepetData = Q_MOVBANCMOV_DATA.asdatetime then value := '';
  RepetData := Q_MOVBANCMOV_DATA.asdatetime ;
end;

procedure TFRelMovDiario.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   IF CONTADOR  = 0    THEN BEGIN       // INICIO
    CONTADOR := 2;
    QRGroup1.FORCENEWPAGE := TRUE;
  END ELSE BEGIN
    CONTADOR := CONTADOR + 1;
    QRGroup1.FORCENEWPAGE := FALSE;
    IF CONTADOR = 3 THEN BEGIN
       CONTADOR := 1;
       QRGroup1.FORCENEWPAGE := TRUE;
    END;
 END;
END;


procedure TFRelMovDiario.QRLabel17Print(sender: TObject;
  var Value: String);
begin
(*   Q_CONTAGERENCIAL.Close ;
   Q_CONTAGERENCIAL.Sql.Clear ;
   Q_CONTAGERENCIAL.Sql.Add('select SUM( CASE MOV_SINAL WHEN ' + '''' + '+' + '''' + ' THEN MOV_VALOR ELSE (MOV_VALOR*(-1)) END ) as xvalor ' ) ;
   Q_CONTAGERENCIAL.Sql.Add(' , B.CON_DESC ' ) ;
   Q_CONTAGERENCIAL.Sql.Add('from cpamovi A , CPACONT B ' ) ;
   Q_CONTAGERENCIAL.Sql.Add(' Where MOV_BANC = ' + '''' + Q_BANCBAN_CODI.ASSTRING + '''') ;
   Q_CONTAGERENCIAL.Sql.Add(' and A.MOV_CONT =  b.CON_CODI ') ;
   if Datai <> 0.0 then begin
      Q_CONTAGERENCIAL.Sql.Add(' and Convert(char(08),a.MOV_DATA,112) >= ' ) ;
      Q_CONTAGERENCIAL.Sql.Add('''' + formatdatetime('YYYYMMDD',datai) + '''' ) ;
      Q_CONTAGERENCIAL.Sql.Add(' and Convert(char(08),a.MOV_DATA,112) <=' ) ;
      Q_CONTAGERENCIAL.Sql.Add('''' + formatdatetime('YYYYMMDD',dataf) + '''' ) ;
   end ;
   Q_CONTAGERENCIAL.Sql.Add(' group by b.CON_DESC' ) ;
   Q_CONTAGERENCIAL.Open ;  *)
end;

procedure TFRelMovDiario.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,###,##0.00',tSaldoAtual) ;
end;

procedure TFRelMovDiario.QRLabel23Print(sender: TObject;
  var Value: String);
begin
  value := formatfloat('###,###,###,##0.00',tSaldoAnterior) ;
end;

procedure TFRelMovDiario.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRBand5.FORCENEWPAGE := TRUE;

   Q_CONTAGERENCIALt.Close ;
   Q_CONTAGERENCIALt.Sql.Clear ;
   Q_CONTAGERENCIALt.Sql.Add(' select SUM( CASE MOV_SINAL WHEN ' + '''' + '+' + '''' + ' THEN MOV_VALOR ELSE (MOV_VALOR*(-1)) END ) as xvalor ' ) ;
   Q_CONTAGERENCIALt.Sql.Add(' , B.CON_DESC ' ) ;
   Q_CONTAGERENCIALt.Sql.Add('from CPAMOVI A, CPACONT B, CPABANC C' );
   Q_CONTAGERENCIALt.Sql.Add(' where A.MOV_CONT = B.CON_CODI ');
   Q_contagerencialt.Sql.Add('   and  C.BAN_codi = A.mov_banc ');
   Q_contagerencialt.Sql.Add('   and  C.BAN_Ordem > 0 ' ) ;
   if Datai <> 0.0 then begin
      Q_CONTAGERENCIALt.Sql.Add(' and Convert(char(08),a.MOV_DATA,112) >= ' ) ;
      Q_CONTAGERENCIALt.Sql.Add('''' + formatdatetime('YYYYMMDD',datai) + '''' ) ;
      Q_CONTAGERENCIALt.Sql.Add(' and Convert(char(08),a.MOV_DATA,112) <=' ) ;
      Q_CONTAGERENCIALt.Sql.Add('''' + formatdatetime('YYYYMMDD',dataf) + '''' ) ;
   end ;
   Q_CONTAGERENCIALt.Sql.Add(' group by b.CON_DESC');
   Q_CONTAGERENCIALt.open;

   CONT := 0;
   wtot1 := 0;
   wtot2 := 0;
   wtot3 := 0;
   wtot4 := 0;
   wtot5 := 0;
   wtot6 := 0;
   wtot7 := 0;
   wtot8 := 0;
   wtot9 := 0;
   wtot10:= 0;
   wtot11:= 0;
   wtot12:= 0;
   wdesc1 := '';
   wdesc2 := '';
   wdesc3 := '';
   wdesc4 := '';
   wdesc5 := '';
   wdesc6 := '';
   wdesc7 := '';
   wdesc8 := '';
   wdesc9 := '';
   wdesc10:= '';
   wdesc11:= '';
   wdesc12:= '';

   Q_CONTAGERENCIALt.first ;
   while not Q_CONTAGERENCIALt.eof do begin
     CONT := CONT + 1;
     IF CONT  = 1 THEN BEGIN
        wTot1  := Q_CONTAGERENCIALtXvalor.value;
        wDesc1 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 2 THEN BEGIN
          wTot2  := Q_CONTAGERENCIALtXvalor.value;
          wDesc2 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 3 THEN BEGIN
        wTot3 := Q_CONTAGERENCIALtXvalor.value;
        wDesc3 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 4 THEN BEGIN
        wTot4  := Q_CONTAGERENCIALtXvalor.value;
        wDesc4 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 5 THEN BEGIN
        wTot5  := Q_CONTAGERENCIALtXvalor.value;
        wDesc5 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 6 THEN BEGIN
        wTot6  := Q_CONTAGERENCIALtXvalor.value;
        wDesc6 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 7 THEN BEGIN
        wTot7  := Q_CONTAGERENCIALtXvalor.value;
        wDesc7 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 8 THEN BEGIN
        wTot8  := Q_CONTAGERENCIALtXvalor.value;
        wDesc8 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 9 THEN BEGIN
        wTot9  := Q_CONTAGERENCIALtXvalor.value;
        wDesc9 := Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 10 THEN BEGIN
        wTot10 := Q_CONTAGERENCIALtXvalor.value;
        wDesc10:= Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 11 THEN BEGIN
        wTot11 := Q_CONTAGERENCIALtXvalor.value;
        wDesc11:= Q_CONTAGERENCIALtCon_desc.asstring;
     End;
     IF CONT  = 12 THEN BEGIN
        wTot12 := Q_CONTAGERENCIALtXvalor.value;
        wDesc12:= Q_CONTAGERENCIALtCon_desc.asstring;
     End;

     Q_CONTAGERENCIALt.next;
  end ;
//   Q_CONTAGERENCIALt.first ;
//  Q_CONTAGERENCIALt.CLOSE ;

end;

procedure TFRelMovDiario.Tot5Print(sender: TObject;
  var Value: String);
begin
if wtot5 <> 0 then begin
   value := formatfloat('###,###,###,##0.00',wtot5) ;
 end else begin
   value := '';
end;
end;

procedure TFRelMovDiario.Tot6Print(sender: TObject;
  var Value: String);
begin
if wtot6 <> 0 then  begin
   value := formatfloat('###,###,###,##0.00',wtot6) ;
  end else begin
   value := '';
end;
end;

procedure TFRelMovDiario.Desc1Print(sender: TObject; var Value: String);
begin
Value := wdesc1;
end;

procedure TFRelMovDiario.Desc2Print(sender: TObject; var Value: String);
begin
value := wdesc2;
end;

procedure TFRelMovDiario.Desc3Print(sender: TObject; var Value: String);
begin
value := wdesc3;
end;

procedure TFRelMovDiario.Tot1Print(sender: TObject; var Value: String);
begin
if wtot1 <> 0 then   BEGIN
   value := formatfloat('###,###,###,##0.00',wtot1);
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot2Print(sender: TObject; var Value: String);
begin
if wtot2 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot2) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot3Print(sender: TObject; var Value: String);
begin
if wtot3 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot3) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot4Print(sender: TObject; var Value: String);
begin
if wtot4 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot4) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Desc4Print(sender: TObject; var Value: String);
begin
value := wdesc4;
end;

procedure TFRelMovDiario.Desc5Print(sender: TObject; var Value: String);
begin
value := wdesc5;
end;

procedure TFRelMovDiario.Desc6Print(sender: TObject; var Value: String);
begin
value := wdesc6;
end;

procedure TFRelMovDiario.Desc7Print(sender: TObject; var Value: String);
begin
Value := wdesc7;
end;

procedure TFRelMovDiario.Desc8Print(sender: TObject; var Value: String);
begin
Value := wdesc8;
end;

procedure TFRelMovDiario.Desc9Print(sender: TObject; var Value: String);
begin
Value := wdesc9;
end;

procedure TFRelMovDiario.Desc10Print(sender: TObject; var Value: String);
begin
Value := wdesc10;
end;

procedure TFRelMovDiario.Desc11Print(sender: TObject; var Value: String);
begin
Value := wdesc11;
end;

procedure TFRelMovDiario.Desc12Print(sender: TObject; var Value: String);
begin
Value := wdesc12;
end;

procedure TFRelMovDiario.Tot7Print(sender: TObject; var Value: String);
begin
if wtot7 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot7) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot8Print(sender: TObject; var Value: String);
begin
if wtot8 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot8) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot9Print(sender: TObject; var Value: String);
begin
if wtot9 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot9) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot10Print(sender: TObject; var Value: String);
begin
if wtot10 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot10) ;
 end else begin
   value := '';
end;

end;

procedure TFRelMovDiario.Tot11Print(sender: TObject; var Value: String);
begin
if wtot11 <> 0 then BEGIN
   value := formatfloat('###,###,###,##0.00',wtot11) ;
 end else begin
   value := '';
end;
end;


procedure TFRelMovDiario.Tot12Print(sender: TObject; var Value: String);
begin
if wtot12 <> 0 then begin
   value := formatfloat('###,###,###,##0.00',wtot12) ;
 end else begin
   value := '';
end;
end;

end.

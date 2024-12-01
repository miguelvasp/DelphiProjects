unit RelMovBanc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc, Wwtable,
  wwstorep;

type
  TFlstMovBanc = class(TForm)
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
    STP_CALCSALD: TwwStoredProc;
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
    QRBand3: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure LST_MovBancBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure LST_MovBancAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstMovBanc: TFlstMovBanc;
  SaldoAnterior : real ;
  SaldoAtual    : real ;
  Saldo : real;

implementation

uses cppmenu , FiltLstMovBanc ;
{$R *.DFM}

procedure TFlstMovBanc.FormCreate(Sender: TObject);
begin
   SaldoAtual := 0 ;
   SaldoAnterior := 0 ;

   try
   begin
     STP_CALCSALD1.ParamByName('@Banco').Value   := strBanco ;
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


   Q_MOVBANC.Close ;
   Q_MOVBANC.Sql.Clear ;
   Q_MOVBANC.Sql.Add('select a.*, B.BAN_NOME ');
   Q_MOVBANC.SQL.ADD('from cpamovi A , ');
   Q_MOVBANC.SQL.ADD('CPABANC B where MOV_BANC = ' + '''' + strBanco + '''' ) ;
   Q_MOVBANC.Sql.Add('  and A.MOV_BANC = B.BAN_CODI ') ;
   Q_MOVBANC.Sql.Add(' and Convert(char(08),MOV_DATA,112) >= ' ) ;
   Q_MOVBANC.Sql.Add('''' + formatdatetime('YYYYMMDD',datai) + '''' ) ;
   if Dataf <> 0.0 then begin
      Q_MOVBANC.Sql.Add(' and Convert(char(08),MOV_DATA,112) <=' ) ;
      Q_MOVBANC.Sql.Add('''' + formatdatetime('YYYYMMDD',dataf) + '''' ) ;
   end ;
   Q_MOVBANC.Sql.Add('ORDER BY CONVERT(CHAR(10),MOV_DATA,112), MOV_SINAL, MOV_DCTO');
   Q_MOVBANC.Open ;
end;

procedure TFlstMovBanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_MovBanc.close;
  action:=cafree;
end;

procedure TFlstMovBanc.QRDBText4Print(sender: TObject; var Value: String);
begin
  if Q_movBancMOV_SINAL.asstring = '+' then value := ''
  else value := '-' ;
end;

procedure TFlstMovBanc.QRDBText7Print(sender: TObject; var Value: String);
begin
  if Q_movBancMOV_SINAL.asstring = '+' then
       SaldoAtual := SaldoAtual + Q_MOVBANCMOV_VALOR.asfloat
  else
  SaldoAtual := SaldoAtual - Q_MOVBANCMOV_VALOR.asfloat ;
end;

procedure TFlstMovBanc.LST_MovBancBeforePrint(Sender: TCustomQuickRep;
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

procedure TFlstMovBanc.QRLabel6Print(sender: TObject; var Value: String);
begin
   value := formatfloat('###,###,###,##0.00',SaldoAnterior) ;
   saldo := SaldoAnterior;
end;

procedure TFlstMovBanc.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
data : string;
begin
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
                QRBand3.height := 36;
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

procedure TFlstMovBanc.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   QRBand3.height := 17;
end;

procedure TFlstMovBanc.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
//   saldo := 0;
end;

procedure TFlstMovBanc.QRLabel16Print(sender: TObject; var Value: String);
begin
   value := formatfloat('###,###,###,##0.00',SaldoAtual) ;
   SaldoAtual := 0 ;
end;

procedure TFlstMovBanc.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ////saldo := 0;
end;

procedure TFlstMovBanc.QRLabel18Print(sender: TObject; var Value: String);
begin
   qrlabel18.Caption := '';
end;

procedure TFlstMovBanc.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 ///// saldo := 0;
end;

procedure TFlstMovBanc.LST_MovBancAfterPrint(Sender: TObject);
begin
    saldo := 0;
end;

end.

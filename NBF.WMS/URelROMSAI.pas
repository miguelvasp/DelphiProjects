unit URelROMSAI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery;

type
  TFRelROMSAI = class(TForm)
    ROM: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape12: TQRShape;
    QRDBText10: TQRDBText;
    QRShape9: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape5: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand3: TQRBand;
    Q_PROD: TwwQuery;
    Q_AUX: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_COD: TStringField;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape8: TQRShape;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_TRANSTRANS_raza: TStringField;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelROMSAI: TFRelROMSAI;
  TOTPALLET : integer ;
  TOTUE : integer ;
  TOTUV : real ;
  TOTALUV : real ;
  SALDO : string ; 
implementation
uses USenha,UAbTabelas,UManifesto;
{$R *.DFM}

procedure TFRelROMSAI.FormCreate(Sender: TObject);
var
     NUMPAG : real ;
     STR : integer ;
     TOT : integer ;
     VLRITENS : integer ;
     VLRPAG : integer ;

begin
     TOTPALLET := 0 ;
     TOTUV := 0 ;
     TOTALUV := 0 ;
     TOTUE := 0 ;


     VLRPAG   := 21;
     VLRITENS :=   FManifesto.Q_ESTQ.recordcount  ;
     NUMPAG   :=  (VLRITENS / VLRPAG) ;
     STR      :=  round(NUMPAG) ;

     TOT :=  (STR * VLRPAG) ;

     If (TOT >= VLRITENS) then begin
          QRLabel20.caption := inttostr(STR) ;
     end Else BEGIN
          TOT := 0 ;
          TOT := (STR + 1) ;
          QRLabel20.caption := inttostr(TOT) ;
     End;


    Q_PROD.open ;
    Q_TRANS.open ; 
end;

procedure TFRelROMSAI.QRBand2BeforePrint(Sender: TQRCustomBand;
var PrintBand: Boolean);
var
  UE : real ;
begin

      If (FManifesto.Q_ESTQESTQ_QTDE_RETIRA.asfloat =
          Q_PRODPRO_QTDE_PALLETUV.asfloat) then begin
          QRLabel22.caption := '1' ;
          QRLabel23.caption := '-' ;
          QRLabel24.caption := '-' ;
      end else begin
          QRLabel22.caption := '0' ;

          UE := {INT}(FManifesto.Q_ESTQESTQ_QTDE_RETIRA.asfloat/Q_PRODQTDE_UVUE.asfloat);
          SALDO := formatfloat('0.000',(UE * Q_PRODQTDE_UVUE.asfloat)) ;

          IF  (SALDO =  formatfloat('0.000',(FManifesto.Q_ESTQESTQ_QTDE_RETIRA.asfloat))) then
               QRLabel23.caption :=  formatfloat('0',(UE))
          else
              QRLabel23.caption :=  floatTOSTR(int(UE));

          Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select * from  ESTOQUE ') ;
          Q_AUX.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring ) ;
          Q_AUX.Sql.Add(' and MANI_ID = ' + FManifesto.Q_ESTQMANI_ID.asstring ) ;
          Q_AUX.Sql.Add(' and ESTQ_ID = ' + FManifesto.Q_ESTQestq_ID.asstring ) ;
          Q_AUX.Sql.Add(' order by ESTQ_QTDE_RETIRA ');
          Q_AUX.open ;


          QRLabel24.caption :=  formatfloat('###,###,##0.000',(Q_AUX.fieldbyname('ESTQ_QTDE_RETIRA').asfloat - (UE*Q_PRODQTDE_UVUE.asfloat))) ;


      end ;




end;

procedure TFRelROMSAI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PROD.close ;
  Q_TRANS.close ; 
  action := cafree ;
end;

procedure TFRelROMSAI.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

     Qrlabel26.caption := inttostr(TOTPALLET) ;
     Qrlabel27.caption := inttostr(TOTUE) ;
     Qrlabel28.caption := formatfloat('###,###,##0.000',TOTUV) ;
     Qrlabel29.caption := formatfloat('###,###,##0.000',TOTalUV) ;
end;

procedure TFRelROMSAI.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTPALLET:= TOTPALLET + strtoint(QRLabel22.caption) ;
  If (QRLabel24.caption = '-') then
     TOTUV    := TOTUV + 0
    else
    TOTUV    := TOTUV + strtofloat(QRLabel24.caption) ;

  TOTALUV  := TOTALUV + FManifesto.Q_ESTQESTQ_QTDE_RETIRA.asfloat;


  If (QRLabel23.caption = '-') then
     TOTUE := TOTUE +  0
   else
     TOTUE := TOTUE + strtoint(QRLabel23.caption) ;
end;

procedure TFRelROMSAI.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTPALLET := 0 ;
  TOTUV := 0 ;
  TOTALUV := 0 ;
  TOTUE := 0 ;
end;

end.

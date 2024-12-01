unit UfrmRelManiGeral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc, ADODB;

type
  TfrmRelManiGeral = class(TForm)
    ROM: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand2: TQRBand;
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
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape8: TQRShape;
    Q_PROD: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_AUX: TwwQuery;
    Q_AREAux: TwwQuery;
    Q_AREAuxAR_ID: TAutoIncField;
    Q_AREAuxAR_NOME: TStringField;
    Q_POS2: TwwQuery;
    Q_POS2POS_COD: TStringField;
    Q_POS2AR_ID: TIntegerField;
    Q_POS2POS_UTILIZADO: TStringField;
    Q_POS2POS_ID: TAutoIncField;
    DS_ESTQ: TwwDataSource;
    Q_PROD2: TwwQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_UNIDVEND2: TwwQuery;
    Q_UNIDVEND2UVEN_ID: TAutoIncField;
    Q_UNIDVEND2UVEN_NOME: TStringField;
    Q_ESTQ: TwwQuery;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQUVENdesc: TStringField;
    Q_ESTQAreaDESC: TStringField;
    Q_ESTQPOSdesc: TStringField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQPAR_ID: TIntegerField;
    QRDBText1: TQRDBText;
    Q_ESTQPRO_COD: TStringField;
    qrAux: TADOQuery;
    qrAuxNFS_GERAL: TStringField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQMARCADOR: TStringField;
    Q_ESTQESTQ_ESCOLHEULOTE: TStringField;
    Q_ESTQQTDE_GERAL: TFloatField;
    Q_ESTQPRO_ID_1: TAutoIncField;
    Q_ESTQCLIN_ID: TIntegerField;
    Q_ESTQPRO_DESC: TStringField;
    Q_ESTQTPRO_ID: TIntegerField;
    Q_ESTQPRO_ORIGEM: TStringField;
    Q_ESTQUVEN_ID_1: TIntegerField;
    Q_ESTQUVEN_ID_EXP: TIntegerField;
    Q_ESTQQTDE_UVUE: TFloatField;
    Q_ESTQPRO_QTDE_PALLET: TIntegerField;
    Q_ESTQPRO_QTDE_PALLETUV: TFloatField;
    Q_ESTQPRO_PESO: TFloatField;
    Q_ESTQPRO_VOLUME: TFloatField;
    Q_ESTQPRO_VOLUME_PALLET: TFloatField;
    Q_ESTQPRO_ALTURA: TIntegerField;
    Q_ESTQPRO_LASTRO: TIntegerField;
    Q_ESTQPRO_VALIDDIAS: TIntegerField;
    Q_ESTQMARCADOR_1: TStringField;
    Q_ESTQPRO_PESO_LIQ: TFloatField;
    Q_ESTQPRO_DESCONTINUA: TStringField;
    Q_ESTQPRO_COMPR: TFloatField;
    Q_ESTQPRO_LARG: TFloatField;
    Q_ESTQPRO_ALT: TFloatField;
    Q_ESTQPRO_REDUZICMS: TFloatField;
    Q_ESTQPRO_ISENCAO: TStringField;
    Q_ESTQPRO_ICMS: TFloatField;
    Q_ESTQPRO_CST1: TStringField;
    Q_ESTQPRO_CST2: TStringField;
    Q_ESTQPRO_CST3: TStringField;
    Q_ESTQPRO_CST4: TStringField;
    Q_ESTQPRO_CST5: TStringField;
    Q_ESTQPRO_CST6: TStringField;
    Q_ESTQULTIMO_PRECO: TFloatField;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    lbTotalPAges: TQRLabel;
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
  frmRelManiGeral: TfrmRelManiGeral;
  TOTPALLET : integer ;
  TOTUE : integer ;
  TOTUV : real ;
  TOTALUV : real ;
  SALDO : string ;

implementation

uses UFManifesto_Geral, UMenu;

{$R *.DFM}

procedure TfrmRelManiGeral.FormCreate(Sender: TObject);
var
     NUMPAG : real ;
     STR : integer ;
     TOT : integer ;
     VLRITENS : integer ;
     VLRPAG : integer ;

begin



     Q_ESTQ.close;
     Q_ESTQ.Params[0].AsInteger := FManifesto_Geral.qrManiMANI_ID.AsInteger;
     Q_ESTQ.Open;

     qrAux.Close;
     qrAux.Parameters[0].Value :=  FManifesto_Geral.qrManiMANI_ID.AsInteger;
     qrAux.Open;

     QRMemo1.Lines.Text := qrAuxNFS_GERAL.Value;
     

     TOTPALLET := 0 ;
     TOTUV := 0 ;
     TOTALUV := 0 ;
     TOTUE := 0 ;


     VLRPAG   := 21;
     VLRITENS :=   Q_ESTQ.recordcount  ;
     NUMPAG   :=  (VLRITENS / VLRPAG) ;
     STR      :=  round(NUMPAG) ;

     TOT :=  (STR * VLRPAG) ;

     If (TOT >= VLRITENS) then begin
         // QRLabel20.caption := inttostr(STR) ;
     end Else BEGIN
          TOT := 0 ;
          TOT := (STR + 1) ;
        //  QRLabel20.caption := inttostr(TOT) ;
     End;


    Q_PROD.open ;


end;

procedure TfrmRelManiGeral.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  UE : real ;
  UV : Real;
begin

      //QRDBText1.Caption := Q_ESTQPROcod.AsString;

      If (Q_ESTQESTQ_QTDE_RETIRA.asfloat =
          Q_ESTQPRO_QTDE_PALLETUV.asfloat) then begin
          QRLabel22.caption := '1' ;
          QRLabel23.caption := '0' ;
          QRLabel24.caption := '0' ;
      end else begin
          QRLabel22.caption := '0' ;

          if Q_ESTQQTDE_UVUE.AsString = '' then
                UE := 0
          else
                UE := {INT}(Q_ESTQESTQ_QTDE_RETIRA.AsInteger div Q_ESTQQTDE_UVUE.AsInteger);
          SALDO := formatfloat('0.000',(UE * Q_ESTQQTDE_UVUE.asfloat)) ;

          if UE < 0 then UE :=  0;
          IF  (SALDO =  formatfloat('0.000',(Q_ESTQESTQ_QTDE_RETIRA.asfloat))) then
               QRLabel23.caption :=  formatfloat('0',(UE))
          else
              QRLabel23.caption :=  floatTOSTR(int(UE));

        {  Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select * from  ESTOQUE ') ;
          Q_AUX.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring ) ;
          Q_AUX.Sql.Add(' and MANI_ID = ' + Q_ESTQMANI_ID.asstring ) ;
          Q_AUX.Sql.Add(' and ESTQ_ID = ' + Q_ESTQestq_ID.asstring ) ;
          Q_AUX.Sql.Add(' order by ESTQ_QTDE_RETIRA ');
          Q_AUX.open ;     }
          UV :=  (Int(UE)*Q_ESTQQTDE_UVUE.asfloat);
          UV :=  (Q_ESTQESTQ_QTDE_RETIRA.Value - uv);
          IF UV < 0 THEN UV := 0;
          QRLabel24.caption :=  formatfloat('##0.000', UV) ;
      end ;


end;

procedure TfrmRelManiGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_PROD.close ;
  action := cafree ;
  frmRelManiGeral := nil;
end;

procedure TfrmRelManiGeral.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

     Qrlabel26.caption := inttostr(TOTPALLET) ;
     Qrlabel27.caption := inttostr(TOTUE) ;
     Qrlabel28.caption := formatfloat('##0.000',TOTUV) ;
     Qrlabel29.caption := formatfloat('##0.000',TOTalUV) ;

      QRMemo1.Lines := FManifesto_Geral.DBMemo1.Lines;
end;

procedure TfrmRelManiGeral.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTPALLET:= TOTPALLET + strtoint(QRLabel22.caption) ;
  If (QRLabel24.caption = '-') then
     TOTUV    := TOTUV + 0
    else
    TOTUV    := TOTUV + strtofloat(QRLabel24.caption) ;

  TOTALUV  := TOTALUV + Q_ESTQESTQ_QTDE_RETIRA.asfloat;


  If (QRLabel23.caption = '-') then
     TOTUE := TOTUE +  0
   else
     TOTUE := TOTUE + strtoint(QRLabel23.caption) ;
end;

procedure TfrmRelManiGeral.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTPALLET := 0 ;
  TOTUV := 0 ;
  TOTALUV := 0 ;
  TOTUE := 0 ;
end;

end.

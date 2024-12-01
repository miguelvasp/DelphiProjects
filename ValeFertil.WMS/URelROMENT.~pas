unit URelROMENT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, StdCtrls, QRExport, Db, Wwdatsrc, DBTables,
  Wwquery;

type
  TFRelROMENT = class(TForm)
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
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape12: TQRShape;
    QRDBText10: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    Q_PROD: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    Q_AUX: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_ESTQ: TwwQuery;
    Q_ESTQPROcod: TStringField;
    Q_ESTQPROdesc: TStringField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQAreaDESC: TStringField;
    Q_ESTQPOSdesc: TStringField;
    Q_ESTQESTQ_TAG: TIntegerField;
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
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODTPRO_ID: TIntegerField;
    Q_PRODPRO_ORIGEM: TStringField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_PRODPRO_PESO: TFloatField;
    Q_PRODPRO_VOLUME: TFloatField;
    Q_PRODPRO_VOLUME_PALLET: TFloatField;
    Q_PRODPRO_ALTURA: TIntegerField;
    Q_PRODPRO_LASTRO: TIntegerField;
    Q_PRODPRO_VALIDDIAS: TIntegerField;
    Q_PRODMARCADOR: TStringField;
    Q_PRODPRO_PESO_LIQ: TFloatField;
    Q_PRODPRO_DESCONTINUA: TStringField;
    Q_PRODPRO_COMPR: TFloatField;
    Q_PRODPRO_LARG: TFloatField;
    Q_PRODPRO_ALT: TFloatField;
    Q_POS: TwwQuery;
    Q_POSPOS_COD: TStringField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSPOS_ID: TAutoIncField;
    Q_AREA: TwwQuery;
    Q_AREAAR_NOME: TStringField;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    DS_ESTQ: TwwDataSource;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel32: TQRLabel;
    qrNotas: TwwQuery;
    qrNotasnfi_numero: TStringField;
    QRLabel35: TQRLabel;
    QRShape16: TQRShape;
    QRDBText14: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelROMENT: TFRelROMENT;
  TOTPALLET : integer ;
  TOTUE : integer ;
  TOTUV : real;
  TOTALUV : real ;
  SALDO : string ; 
implementation
uses USenha,UAbTabelas,UOS, URomaneioITENS, URomaneio    ;
{$R *.DFM}

procedure TFRelROMENT.FormCreate(Sender: TObject);
var
     NUMPAG : real   ;
     STR : integer   ;
     TOT : integer   ;
     VLRITENS : integer ;
     VLRPAG : integer   ;
begin


     Q_ESTQ.close;
     Q_ESTQ.Sql.Clear;
     Q_ESTQ.Sql.Add(' Select * from  ESTOQUE ') ;
     Q_ESTQ.Sql.Add(' where ROM_Id_eNT = ' + FRomaneio.Q_ROMROM_ID.asstring ) ;
     Q_ESTQ.Sql.Add(' and GEROU_OPER_ROMSAIDA = null' ) ;
     Q_ESTQ.Sql.Add(' order by PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc') ;
     Q_ESTQ.open ;


     VLRPAG   := 21;
     VLRITENS :=   {FRomaneioITENS.}Q_ESTQ.recordcount  ;
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
    Q_POS.open ;
    Q_AREA.open ;

  TOTPALLET := 0 ;
  TOTUV := 0 ;
  TOTALUV := 0 ;
  TOTUE := 0 ;
end;

procedure TFRelROMENT.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  UE : real ;

begin
           {iii}

      If ({FRomaneioITENS.}Q_ESTQESTQ_QTDE.asfloat =
          Q_PRODPRO_QTDE_PALLETUV.asfloat) then begin
          QRLabel22.caption := '1' ;
          ///QRLabel23.caption := '-' ;
          QRLabel24.caption := '-' ;

         QRLabel22.caption := '1' ;
         UE := (Q_ESTQESTQ_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat);
         QRLabel23.caption :=  FLOATTOSTR(UE);


      end else begin
          QRLabel22.caption := '0' ;

          UE := (Q_ESTQESTQ_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat);
          SALDO := formatfloat('0.000',(UE * Q_PRODQTDE_UVUE.asfloat)) ;

         IF  (SALDO =  formatfloat('0.000',(Q_ESTQESTQ_QTDE.asfloat))) then
               QRLabel23.caption :=  formatfloat('0',(UE))

            else
              QRLabel23.caption :=  floatTOSTR(int(UE));

          Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select * from  ESTOQUE ') ;
          Q_AUX.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring ) ;
          Q_AUX.Sql.Add(' and ROM_Id_eNT = ' + {FRomaneioITENS.}Q_ESTQROM_ID_ENT.asstring ) ;
          Q_AUX.Sql.Add(' and GEROU_OPER_ROMSAIDA is null ' ) ;
          Q_AUX.Sql.Add(' order by ESTQ_QTDE ');
          Q_AUX.open ;

          QRLabel24.caption :=  formatfloat('###,###,##0.000',(Q_AUX.fieldbyname('ESTQ_QTDE').asfloat - (UE*Q_PRODQTDE_UVUE.asfloat))) ;

     end ;


end;

procedure TFRelROMENT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PROD.close ;
  Q_POS.close ;
  Q_AREA.close ;
  Q_ESTQ.close;
  action := cafree ;
end;

procedure TFRelROMENT.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 { TOTPALLET := 0 ;
  TOTUV := 0 ;
  TOTALUV := 0 ;
  TOTUE := 0 ;}
end;

procedure TFRelROMENT.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Qrlabel26.caption := inttostr(TOTPALLET) ;

     Qrlabel27.caption := inttostr(TOTUE) ;
     //QRLabel27.caption := formatfloat('###,###,##0.000',(TOTUE)) ;

     Qrlabel28.caption := formatfloat('###,###,##0.000',(TOTUV)) ;
     Qrlabel29.caption := formatfloat('###,###,##0.000',(TOTALUV));
end;

procedure TFRelROMENT.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTPALLET:= TOTPALLET + strtoint(QRLabel22.caption) ;

  If (QRLabel24.caption = '-') then
     TOTUV    := TOTUV + 0
    else
    TOTUV    := TOTUV + strtofloat(QRLabel24.caption) ;

  TOTALUV  := TOTALUV + {FRomaneioITENS.}Q_ESTQESTQ_QTDE.asfloat;


  If (QRLabel23.caption = '-') then
     TOTUE := TOTUE +  0
   else
     TOTUE := TOTUE + strtoint(QRLabel23.caption) ;

end;

procedure TFRelROMENT.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTPALLET := 0 ;
  TOTUV := 0 ;
  TOTALUV := 0 ;
  TOTUE := 0 ;
end;

procedure TFRelROMENT.QRDBText14Print(sender: TObject; var Value: String);
var notas : string;
begin
  qrNotas.close;
  qrNotas.Params[0].AsInteger := Q_ESTQOS_ID_ORIG.Value;
  qrNotas.Open;

  while not qrNotas.Eof do
  begin
        notas := notas + qrNotasnfi_numero.Value + '/';
        qrNotas.Next;
  end;

  Value := notas;

end;

end.

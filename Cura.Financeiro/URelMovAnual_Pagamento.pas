unit URelMovAnual_Pagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, jpeg, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc,
  gtQrCtrls;

type
  TFRelMovAnual_Pagamento = class(TForm)
    DS_RELA: TwwDataSource;
    Q_RELA: TwwQuery;
    Q_RELACampo1: TStringField;
    Q_RELACampo2: TStringField;
    Q_RELAUSUARIO: TIntegerField;
    Q_RELAValor1: TFloatField;
    Q_RELAValor2: TFloatField;
    Q_RELAValor3: TFloatField;
    Q_RELAValor4: TFloatField;
    Q_RELAValor5: TFloatField;
    Q_RELAValor6: TFloatField;
    Q_RELAValor7: TFloatField;
    Q_RELAValor8: TFloatField;
    Q_RELAValor9: TFloatField;
    Q_RELAValor10: TFloatField;
    Q_RELAValor11: TFloatField;
    Q_RELAValor12: TFloatField;
    Q_RELATotal_Meses: TFloatField;
    Q_RELATotal_Geral: TFloatField;
    Q_RELAPercentual: TFloatField;
    Q_RELATotal_Mes1: TFloatField;
    Q_RELATotal_Mes2: TFloatField;
    Q_RELATotal_Mes3: TFloatField;
    Q_RELATotal_Mes4: TFloatField;
    Q_RELATotal_Mes5: TFloatField;
    Q_RELATotal_Mes6: TFloatField;
    Q_RELATotal_Mes7: TFloatField;
    Q_RELATotal_Mes8: TFloatField;
    Q_RELATotal_Mes9: TFloatField;
    Q_RELATotal_Mes10: TFloatField;
    Q_RELATotal_Mes11: TFloatField;
    Q_RELATotal_Mes12: TFloatField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape56: TQRShape;
    QRSDez: TQRShape;
    QRSNov: TQRShape;
    QRSOut: TQRShape;
    QRSSet: TQRShape;
    QRSAgo: TQRShape;
    QRSJul: TQRShape;
    QRSJun: TQRShape;
    QRSMai: TQRShape;
    QRSAbr: TQRShape;
    QRSMar: TQRShape;
    QRSFev: TQRShape;
    QRSJan: TQRShape;
    QRShape2: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape4: TQRShape;
    QRShape17: TQRShape;
    QRLabel19: TQRLabel;
    QRShape31: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    gtQRShape1: TgtQRShape;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    gtQRLabel8: TgtQRLabel;
    gtQRLabel12: TgtQRLabel;
    gtQRLabel13: TgtQRLabel;
    QRLabel22: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData6: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData4: TQRSysData;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText52: TQRDBText;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText3: TQRDBText;
    QRShape30: TQRShape;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

    Mes1 : string;
    Mes2 : string;
    Mes3 : string;
    Mes4 : string;
    Mes5 : string;
    Mes6 : string;
    Mes7 : string;
    Mes8 : string;
    Mes9 : string;
    Mes10 : string;
    Mes11 : string;
    Mes12 : string;
    Quebra : string ;
    NumeroMeses : integer ;

  end;

var
  FRelMovAnual_Pagamento: TFRelMovAnual_Pagamento;

implementation
uses  Unt_Senha, UFRelMovAnual_Pagamento, CPPMENU;

{$R *.DFM}

procedure TFRelMovAnual_Pagamento.FormCreate(Sender: TObject);
var dataaux : tdatetime ;
    SQL: STRING;
begin
   Q_RELA.open ;

   If  RECEB_OU_PAGTO = 'P' then  begin
         QRLabel2.caption := 'Relatório Gerencial de Movimentação Anual(Saída)';
         gtQRLabel5.caption := 'Fornecedor:';
         IF FFRelMovAnual_Pagamento.RadioGroup1.itemindex = 0 then  begin
            gtQRLabel4.caption :=  'Conta Gerencial' ;
            QRLabel23.caption :=  'Conta Gerencial' ;
         end ;

         IF FFRelMovAnual_Pagamento.RadioGroup1.itemindex = 1 then begin
            gtQRLabel4.caption :=  'Fornecedor'    ;
            QRLabel23.caption :=  'Fornecedor' ;
         end ;

         IF FFRelMovAnual_Pagamento.RadioGroup1.itemindex = 2 then begin
             gtQRLabel4.caption :=  'Operacional/Não Operacional/Financeira' ;
             QRLabel23.caption :=  'Operacional/Não Operacional/Financeira' ;
         end ;

         IF FFRelMovAnual_Pagamento.wwDBLookupCombo7.text <> '' then
           gtQRLabel2.caption :=  FFRelMovAnual_Pagamento.wwDBLookupCombo7.text
        else
           gtQRLabel2.caption := 'Não Preenchido'  ;

         IF FFRelMovAnual_Pagamento.cbo_CONTA_INI.text <> '' then
           gtQRLabel9.caption :=  FFRelMovAnual_Pagamento.cbo_CONTA_INI.text
        else
           gtQRLabel9.caption := 'Não Preenchido'  ;

         IF FFRelMovAnual_Pagamento.DATA_FINAL.text <> '' then
           gtQRLabel13.caption :=  FFRelMovAnual_Pagamento.DATA_FINAL.text
        else
           gtQRLabel13.caption := 'Não Preenchido' ;
   end else begin
          QRLabel2.caption := 'Relatório Gerencial de Movimentação Anual(Entrada)';
          gtQRLabel5.caption := 'Cliente:';
         IF FFRelMovAnual_Pagamento.RadioGroup2.itemindex = 0 then  begin
            gtQRLabel4.caption :=  'Conta Gerencial' ;
            QRLabel23.caption :=  'Conta Gerencial' ;
         end ;

         IF FFRelMovAnual_Pagamento.RadioGroup2.itemindex = 1 then begin
            gtQRLabel4.caption :=  'Cliente'    ;
            QRLabel23.caption :=  'Cliente' ;
         end ;

         IF FFRelMovAnual_Pagamento.RadioGroup1.itemindex = 2 then begin
             gtQRLabel4.caption :=  'Operacional/Não Operacional/Financeira' ;
             QRLabel23.caption :=  'Operacional/Não Operacional/Financeira' ;
         end ;

         IF FFRelMovAnual_Pagamento.wwDBLookupCombo1.text <> '' then
           gtQRLabel2.caption :=  FFRelMovAnual_Pagamento.wwDBLookupCombo1.text
        else
           gtQRLabel2.caption := 'Não Preenchido'  ;

         IF FFRelMovAnual_Pagamento.cbo_CONTA_INI.text <> '' then
           gtQRLabel9.caption :=  FFRelMovAnual_Pagamento.cbo_CONTA_INI.text
        else
           gtQRLabel9.caption := 'Não Preenchido'  ;

         IF FFRelMovAnual_Pagamento.DATA_FINAL.text <> '' then
           gtQRLabel13.caption :=  FFRelMovAnual_Pagamento.DATA_FINAL.text
        else
           gtQRLabel13.caption := 'Não Preenchido' ;


   end ; 


    QRLabel20.Caption:=  'JAN/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel31.caption:=  'FEV/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel37.caption:=  'MAR/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel38.caption:=  'ABR/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel39.caption:=  'MAI/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel40.caption:=  'JUN/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel41.caption:=  'JUL/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel42.caption:=  'AGO/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel43.caption:=  'SET/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel44.caption:=  'OUT/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel45.caption:=  'NOV/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;
    QRLabel46.caption:=  'DEZ/' + copy(FFRelMovAnual_Pagamento.DATA_FINAL.text,7,4) ;




  


end;

procedure TFRelMovAnual_Pagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

      
        Q_RELA.close;
        action := cafree;
end;

procedure TFRelMovAnual_Pagamento.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   IF Q_RELAValor1.asinteger = 0 then
       QRDBText1.enabled := false
      else
        QRDBText1.enabled := true ;

   IF Q_RELAValor2.asinteger = 0 then
       QRDBText2.enabled := false
      else
        QRDBText2.enabled := true ;

    IF Q_RELAValor3.asinteger = 0 then
       QRDBText4.enabled := false
      else
        QRDBText4.enabled := true ;

    IF Q_RELAValor4.asinteger = 0 then
       QRDBText6.enabled := false
      else
        QRDBText6.enabled := true ;

     IF Q_RELAValor5.asinteger = 0 then
       QRDBText8.enabled := false
      else
        QRDBText8.enabled := true ;

      IF Q_RELAValor6.asinteger = 0 then
       QRDBText10.enabled := false
      else
        QRDBText10.enabled := true ;

      IF Q_RELAValor7.asinteger = 0 then
        QRDBText12.enabled := false
      else
        QRDBText12.enabled := true ;

      IF Q_RELAValor8.asinteger = 0 then
        QRDBText15.enabled := false
      else
        QRDBText15.enabled := true ;

      IF Q_RELAValor9.asinteger = 0 then
        QRDBText17.enabled := false
      else
        QRDBText17.enabled := true ;

      IF Q_RELAValor10.asinteger = 0 then
        QRDBText19.enabled := false
      else
        QRDBText19.enabled := true ;

      IF Q_RELAValor11.asinteger = 0 then
        QRDBText21.enabled := false
      else
        QRDBText21.enabled := true ;

   IF Q_RELAValor12.asinteger = 0 then
       QRDBText23.enabled := false
      else
        QRDBText23.enabled := true ; 

end;

procedure TFRelMovAnual_Pagamento.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF Q_RELATotal_Mes1.asinteger = 0 then
       QRDBText7.enabled := false
      else
        QRDBText7.enabled := true ;

   IF Q_RELATotal_Mes2.asinteger = 0 then
       QRDBText9.enabled := false
      else
        QRDBText9.enabled := true ;

    IF Q_RELATotal_Mes3.asinteger = 0 then
       QRDBText11.enabled := false
      else
        QRDBText11.enabled := true ;

    IF Q_RELATotal_Mes4.asinteger = 0 then
       QRDBText13.enabled := false
      else
        QRDBText13.enabled := true ;

     IF Q_RELATotal_Mes5.asinteger = 0 then
       QRDBText14.enabled := false
      else
        QRDBText14.enabled := true ;

      IF Q_RELATotal_Mes6.asinteger = 0 then
       QRDBText16.enabled := false
      else
        QRDBText16.enabled := true ;

      IF Q_RELATotal_Mes7.asinteger = 0 then
        QRDBText18.enabled := false
      else
        QRDBText18.enabled := true ;

      IF Q_RELATotal_Mes8.asinteger = 0 then
        QRDBText20.enabled := false
      else
        QRDBText20.enabled := true ;

      IF Q_RELATotal_Mes9.asinteger = 0 then
        QRDBText22.enabled := false
      else
        QRDBText22.enabled := true ;

      IF Q_RELATotal_Mes10.asinteger = 0 then
        QRDBText24.enabled := false
      else
        QRDBText24.enabled := true ;

      IF Q_RELATotal_Mes11.asinteger = 0 then
        QRDBText25.enabled := false
      else
        QRDBText25.enabled := true ;

   IF Q_RELATotal_Mes12.asinteger = 0 then
       QRDBText27.enabled := false
      else
        QRDBText27.enabled := true ;
end;

end.

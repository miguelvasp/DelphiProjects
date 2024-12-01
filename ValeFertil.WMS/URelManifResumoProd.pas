unit URelManifResumoProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, Wwquery, gtQrCtrls, jpeg;

type
  TFRelManifResumoProd = class(TForm)
    RESUMO: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand3: TQRBand;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    Q_PROD: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand4: TQRBand;
    QRLabel13: TgtQRLabel;
    gtQRLabel1: TgtQRLabel;
    QRLabel15: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    QRLabel37: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    QRLabel12: TQRLabel;
    Q_AUX: TwwQuery;
    qrProEspecifico: TwwQuery;
    qrProEspecificoPALE_ID: TAutoIncField;
    qrProEspecificoCLIN_ID: TIntegerField;
    qrProEspecificoPRO_ID: TIntegerField;
    qrProEspecificoCLIF_ID: TIntegerField;
    qrProEspecificoPALE_LASTRO: TIntegerField;
    qrProEspecificoPALE_ALTURA: TIntegerField;
    qrProEspecificoPALE_QTDE_PALLET: TIntegerField;
    qrProEspecificoPALE_QTDE_PALLETUV: TFloatField;
    Q_PRODPRO_LASTRO: TIntegerField;
    Q_PRODPRO_ALTURA: TIntegerField;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure gtQRLabel5Print(sender: TObject; var Value: String);
    procedure gtQRLabel6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelManifResumoProd: TFRelManifResumoProd;
  CONTA_UE : real ;
  CONTA_PALLET :real ;
 
  SALDO : string ;
  SALDO_UV : real ;


  TOTUV : real ;
  TOTALUV : real ;

  TOTALPESO  : real;
  TOTALVOLUME  : real;
  TOTALPALLET : integer ;
  SALDO4 : real ;
  SALDO5 : real ;
  TOTALUE    : real ;
  TOTALGERALUV : real ;
  F_UV, F_UE : Real;
implementation
uses USenha, UAbTabelas, UManifesto ;
{$R *.DFM}

procedure TFRelManifResumoProd.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   //SALDO2 : string ;
   ///SALDO3 : string ;
   achei : Boolean;
   ALTURA, LASTRO, Pallet_Qtde, totalPalets, int_Aux,   saldox: Real;
  UE : real ;
begin
      { CONTA_UE := 0 ;
       CONTA_PALLET := 0 ;
       CONTA_PALLET := int(FManifesto.Q_RMPMRP_QTDE.asfloat/Q_PRODPRO_QTDE_PALLETUV.asfloat);

       if  CONTA_PALLET > 0 then
           Qrlabel22.caption :=  FLOATTOSTR(CONTA_PALLET)
         else Qrlabel22.caption := '-' ;


       IF (FManifesto.Q_RMPMRP_QTDE.asfloat -(CONTA_PALLET*Q_PRODPRO_QTDE_PALLETUV.asfloat)) > 0 then begin

           SALDO := (FManifesto.Q_RMPMRP_QTDE.asfloat -(CONTA_PALLET*Q_PRODPRO_QTDE_PALLETUV.asfloat));
           SALDO_UV := SALDO  ;

           CONTA_UE := int(SALDO_UV/Q_PRODQTDE_UVUE.asfloat) ;

           SALDO3 := formatfloat('0',(FManifesto.Q_RMPMRP_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat)) ;
           Qrlabel23.caption :=  formatfloat('0',SALDO_UV) ;

           SALDO := 0 ;
           SALDO := (strtoint(SALDO3)*Q_PRODQTDE_UVUE.asfloat) ;

           SALDO2 := formatfloat('0.000',SALDO_UV - SALDO);

           if (strtofloat(SALDO2) > 0) then
                 Qrlabel24.caption :=  SALDO2
            else Qrlabel24.caption := '-' ;


            SALDO4 := strtofloat(SALDO2)  ;
            SALDO5 := SALDO_UV  ;

       end else begin
           CONTA_UE := (CONTA_PALLET * Q_PRODPRO_QTDE_PALLET.asinteger);
           Qrlabel23.caption :=  '-' ;
           Qrlabel24.caption := '-' ;


            SALDO4 := 0 ;
            SALDO5 := 0 ;
       end ;   }




       qrProEspecifico.Close;
       qrProEspecifico.Params[0].AsInteger := FManifesto.Q_RMPPRO_ID.Value;
       qrProEspecifico.Params[1].AsInteger := FManifesto.Q_MANIFMANI_ID.Value;
       qrProEspecifico.Open;

       achei := True;

       if qrProEspecifico.IsEmpty then
           achei := False;

       ALTURA := 0;
       LASTRO := 0;
       totalPalets := 0;
       CONTA_PALLET := 0;
       SALDOx := 0;
       int_Aux := 0;

       if achei then //efetua os caluclos com a paletização especifica
       begin
            ALTURA := qrProEspecificoPALE_ALTURA.Value;
            LASTRO := qrProEspecificoPALE_LASTRO.Value;
       end else begin //efetua os calculos com a paletização normal
            ALTURA := Q_PRODPRO_ALTURA.Value;
            LASTRO := Q_PRODPRO_LASTRO.Value;
       end;   //end if achei


       //mostra como foi formado o palete
       QRLabel18.Caption := FloatToStr(LASTRO) + 'x' +  FloatToStr(ALTURA);

       Pallet_Qtde := ALTURA * LASTRO;
                            
       totalPalets := Int( (FManifesto.Q_RMPMRP_QTDE.AsInteger / Q_PRODQTDE_UVUE.AsInteger) / Pallet_Qtde );


       CONTA_UE := 0 ;
       CONTA_PALLET := 0 ;

      { miguel
      if achei then
            CONTA_PALLET := Q_RMPMRP_QTDEPALLET.Value
       else
            CONTA_PALLET := int(Q_RMPMRP_QTDE.asfloat/Q_PRODPRO_QTDE_PALLETUV.asfloat); }


       CONTA_PALLET := totalPalets;


       //informa q qtde de pallets
       if CONTA_PALLET > 0 then  begin
          Qrlabel12.caption :=  FLOATTOSTR(CONTA_PALLET)
       end else begin
          Qrlabel12.caption := '0' ;
       end;

       //calcula saldo de produtos
       SALDOx :=  FManifesto.Q_RMPMRP_QTDE.asfloat - (CONTA_PALLET * (Pallet_Qtde  * Q_PRODQTDE_UVUE.AsInteger));

       //informa UE
       int_Aux := (int(CONTA_PALLET) * (Pallet_Qtde  * Q_PRODQTDE_UVUE.AsInteger))/ Q_PRODQTDE_UVUE.AsInteger;

       //qtde UE
       QRLabel23.Caption := FormatFloat('0', int_Aux);
      // UE := ue + int_Aux;
       //qtde UV
       QRLabel24.Caption := FormatFloat('0', (CONTA_PALLET * (Pallet_Qtde  * Q_PRODQTDE_UVUE.AsInteger)));
       //UV := UV + (CONTA_PALLET * Pallet_Qtde);


       //tratamos as frações
       if saldox > 0 then begin
           //SALDO EM UE
           QRLabel21.Caption := FormatFloat('0', SALDOx / Q_PRODQTDE_UVUE.AsInteger);
           F_UE := F_UE + SALDOx / Q_PRODQTDE_UVUE.AsInteger ;
           //SALDO EM UV
           QRLabel25.Caption := FormatFloat('0', SALDOx );
           F_UV := F_UV + SALDOx;
       end else begin
           QRLabel21.Caption := '0';
           QRLabel25.Caption := '0';
       end;
























       ///////////////////////Comentado por Miguel

     { If (FManifesto.Q_RMPMRP_QTDE.asfloat =
          Q_PRODPRO_QTDE_PALLETUV.asfloat) then begin
          QRLabel12.caption := '1' ;
          QRLabel23.caption := '-' ;
          QRLabel24.caption := '-' ;
      end else begin
         // QRLabel12.caption := '0' ;

          //miguel
          QRLabel12.caption := FManifesto.Q_RMPMRP_QTDEPALLET.AsString;

          UE := (FManifesto.Q_RMPMRP_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat);
          SALDO := formatfloat('0.000',(UE * Q_PRODQTDE_UVUE.asfloat)) ;

          IF  (SALDO =  formatfloat('0.000',(FManifesto.Q_RMPMRP_QTDE.asfloat))) then
               QRLabel23.caption :=  formatfloat('0',(UE))
          else
              QRLabel23.caption :=  floatTOSTR(int(UE));

          Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select * from  MANIFESTO_RESUMOPRODUTO ') ;
          Q_AUX.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring ) ;
          Q_AUX.Sql.Add(' and MANI_ID = ' + FManifesto.Q_MANIFMANI_ID.asstring ) ;
          Q_AUX.Sql.Add(' and MRP_ID = ' + FManifesto.Q_RMPMRP_ID.asstring ) ;
          Q_AUX.Sql.Add(' order by MRP_QTDE ');
          Q_AUX.open ;


          QRLabel24.caption :=  formatfloat('###,###,##0.000',(Q_AUX.fieldbyname('MRP_QTDE').asfloat - (UE*Q_PRODQTDE_UVUE.asfloat))) ;
      end ;
                                      }

      ///////////////// fim comentario



end;

procedure TFRelManifResumoProd.FormCreate(Sender: TObject);
begin
     Q_PROD.open ;

     TOTALVOLUME := 0 ;
     TOTALPESO  := 0 ;
     TOTUV := 0 ;
     TOTALUV := 0 ;
     TOTALPALLET := 0 ;
     SALDO4 := 0 ;
     SALDO5 := 0 ;
     TOTALUE    := 0 ;
     TOTALGERALUV := 0 ;
     F_UV := 0;
     F_UE := 0;


end;

procedure TFRelManifResumoProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Q_PROD.close ;
   action := cafree  ;
   
end;

procedure TFRelManifResumoProd.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     TOTALVOLUME := 0 ;
     TOTALPESO  := 0 ;
     TOTALUV    := 0 ;
     TOTALPALLET := 0 ;
     SALDO4 := 0 ;
     SALDO5 := 0 ;
     TOTALUE    := 0 ;
     TOTALGERALUV := 0 ; 
end;

procedure TFRelManifResumoProd.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     TOTALVOLUME := (TOTALVOLUME + FManifesto.Q_RMPMRP_VOLUME.asfloat) ;
     TOTALPESO  := (TOTALPESO + FManifesto .Q_RMPMRP_PESO.asfloat)     ;          
    { TOTALUV  := (TOTALUV + SALDO4) ;
     TOTALUE  := (TOTALUE + SALDO5) ;
     TOTALPALLET  := (TOTALPALLET + FManifesto.Q_RMPMRP_QTDEPALLET.asinteger) ;
     TOTALGERALUV := (TOTALGERALUV  +  FManifesto.Q_RMPMRP_QTDE.asfloat );  }


      TOTALPALLET:= TOTALPALLET + strtoint(QRLabel12.caption) ;
  If (QRLabel24.caption = '-') then
     TOTUV    := TOTUV + 0
    else
    TOTUV    := TOTUV + strtofloat(QRLabel24.caption) ;

  TOTALUV  := TOTALUV + FManifesto.Q_RMPMRP_QTDE.asfloat;


  If (QRLabel23.caption = '-') then
     TOTALUE := TOTALUE +  0
   else
     TOTALUE := TOTALUE + strtoint(QRLabel23.caption) ;

end;

procedure TFRelManifResumoProd.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  gtQRLabel1.caption := formatfloat('###,###,##0.0000' ,TOTALPESO) ;
  QRLabel15.caption := formatfloat('###,###,##0.000000' ,TOTALVOLUME) ;
  gtQRLabel2.caption := formatfloat('0' ,TOTALPALLET) ;
  gtQRLabel3.caption := formatfloat('###,###,##0.000',TOTUV) ;
  gtQRLabel4.caption := floattostr(TOTALUE)    ;
  QRLabel37.caption := formatfloat('###,###,##0.000' ,TOTalUV) ;




end;

procedure TFRelManifResumoProd.gtQRLabel5Print(sender: TObject;
  var Value: String);
begin
  Value := FloatToStr(F_UE);
  F_UE := 0;
end;

procedure TFRelManifResumoProd.gtQRLabel6Print(sender: TObject;
  var Value: String);
begin
Value := FloatToStr(F_UV);
F_UV := 0;
end;

end.


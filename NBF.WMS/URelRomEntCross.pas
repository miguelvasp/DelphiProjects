unit URelRomEntCross;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc;

type
  TFRelRomEntCross = class(TForm)
    CROSS: TQuickRep;
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
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    Q_RMP: TwwQuery;
    Q_RMPPRO_ID: TIntegerField;
    Q_RMPPRO_COD: TStringField;
    Q_RMPPRO_DESC: TStringField;
    Q_RMPMRP_VOLUME: TFloatField;
    Q_RMPMRP_PESO: TFloatField;
    Q_RMPMRP_QTDEPALLET: TIntegerField;
    QRBand3: TQRBand;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    Q_PROD: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_COD: TStringField;
    DS_RMP: TwwDataSource;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_RMPMRP_QTDE: TFloatField;
    Q_PRODQTDE_UVUE: TFloatField;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText13: TQRDBText;
    Q_PRODPRO_LASTRO: TIntegerField;
    Q_PRODPRO_ALTURA: TIntegerField;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel1: TQRLabel;
    Q_RMPPAL_ID: TIntegerField;
    qrProEspecifico: TwwQuery;
    qrProEspecificoPALE_ID: TAutoIncField;
    qrProEspecificoCLIN_ID: TIntegerField;
    qrProEspecificoPRO_ID: TIntegerField;
    qrProEspecificoCLIF_ID: TIntegerField;
    qrProEspecificoPALE_LASTRO: TIntegerField;
    qrProEspecificoPALE_ALTURA: TIntegerField;
    qrProEspecificoPALE_QTDE_PALLET: TIntegerField;
    qrProEspecificoPALE_QTDE_PALLETUV: TFloatField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    LBOS: TQRLabel;
    QRMemo1: TQRMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRomEntCross: TFRelRomEntCross;
  CONTA_UE : real ;
  CONTA_PALLET :real ;
  SALDO : real ;
  SALDO_UV : real ;
implementation
uses UOS, UMenu ;
{$R *.DFM}

procedure TFRelRomEntCross.FormCreate(Sender: TObject);
begin


  { Q_RMP.close;
   Q_RMP.Sql.Clear;
   Q_RMP.Sql.Add(' Select * from OS_RESUMOPRODUTO') ;
   Q_RMP.Sql.Add(' where OS_ID =  ' + FOS.CDSOSOS_ID.asstring ) ;
   Q_RMP.Sql.Add(' and   CH     =  ' +  FMENU.SqlUsuariosCH.asstring  ) ;
   Q_RMP.Sql.Add(' order by  PRO_COD ' ) ;
   Q_RMP.open ;  }


   with Q_RMP do
   BEGIN
       CLOSE;
       SQL.Clear;
       SQL.Add(
           ' Select '+
           '         PRO_ID, '+
           '         PRO_COD, '+
           '         PRO_DESC, '+
           '         SUM(MRP_VOLUME) AS MRP_VOLUME, '+
           '         SUM(MRP_PESO) AS MRP_PESO, '+
           '         SUM(MRP_QTDEPALLET) AS MRP_QTDEPALLET, '+
           '         SUM(MRP_QTDE) AS MRP_QTDE,  '+
           '         PAL_ID   '+
           ' from  '+
           ' OS_RESUMOPRODUTO '
       );
       Sql.Add(' where OS_ID =  ' + FOS.CDSOSOS_ID.asstring ) ;
       Sql.Add(' and   CH     =  ' +  FMENU.SqlUsuariosCH.asstring  ) ;
       SQL.Add(
           ' GROUP BY  '+
           ' PRO_ID,     '+
           ' PRO_COD,      '+
           ' PRO_DESC,     '+
           ' PAL_ID  order by  PRO_COD '
       );
       Open;
   end;


   Q_PROD.open ;
end;

procedure TFRelRomEntCross.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_RMP.close ;
  Q_PROD.close ;
  action := cafree ;
end;

procedure TFRelRomEntCross.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var
   SALDO2 : string ;
   SALDO3 : string ;
begin
         // verifica se nao existe paletização especifica
        if Q_RMPPAL_ID.Value = 0 then begin
                 QRDBText7.Enabled := True;
                 QRDBText13.Enabled := True;
                 QRDBText8.Enabled := False;
                 QRDBText9.Enabled := False;
                 CONTA_UE := 0 ;
                 CONTA_PALLET := 0 ;
                 CONTA_PALLET := int(Q_RMPMRP_QTDE.asfloat/Q_PRODPRO_QTDE_PALLETUV.asfloat);

                 if  CONTA_PALLET > 0 then
                     Qrlabel22.caption :=  FLOATTOSTR(CONTA_PALLET)
                   else Qrlabel22.caption := '-' ;

                 IF (Q_RMPMRP_QTDE.asfloat -(CONTA_PALLET*Q_PRODPRO_QTDE_PALLETUV.asfloat)) > 0 then begin

                     SALDO := (Q_RMPMRP_QTDE.asfloat -(CONTA_PALLET*Q_PRODPRO_QTDE_PALLETUV.asfloat));
                     SALDO_UV := SALDO  ;

                     CONTA_UE := int(SALDO_UV/Q_PRODQTDE_UVUE.asfloat) ;

                     SALDO3 := formatfloat('0',(Q_RMPMRP_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat)) ;
                     Qrlabel23.caption :=  {SALDO3 }formatfloat('0',SALDO_UV) ;

                     SALDO := 0 ;
                     SALDO := (strtoint(SALDO3)*Q_PRODQTDE_UVUE.asfloat) ;

                     SALDO2 := formatfloat('0.000',SALDO_UV - SALDO);

                     if (strtofloat(SALDO2) > 0) then
                           Qrlabel24.caption :=  SALDO2
                      else Qrlabel24.caption := '-'{'0'} ;


                 end else begin
                     CONTA_UE := (CONTA_PALLET * Q_PRODPRO_QTDE_PALLET.asinteger);
                     Qrlabel23.caption :=  '-' ; {FLOATTOSTR(CONTA_UE); }
                     Qrlabel24.caption := '-' ;

                 end ;
        end else begin

        //buscamos o produto especifico
        qrProEspecifico.close;
        qrProEspecifico.Params[0].Value := Q_RMPPAL_ID.Value;
        qrProEspecifico.Open;


                 QRDBText7.Enabled := False;
                 QRDBText13.Enabled := False;
                 QRDBText8.Enabled := True;
                 QRDBText9.Enabled := True;



                 CONTA_UE := 0 ;
                 CONTA_PALLET := 0 ;
                 CONTA_PALLET := int(Q_RMPMRP_QTDE.asfloat/qrProEspecificoPALE_QTDE_PALLETUV.AsFloat);

                 if  CONTA_PALLET > 0 then
                     Qrlabel22.caption :=  FLOATTOSTR(CONTA_PALLET)
                   else Qrlabel22.caption := '-' ;

                 IF (Q_RMPMRP_QTDE.asfloat -(CONTA_PALLET*qrProEspecificoPALE_QTDE_PALLETUV.AsFloat)) > 0 then begin

                     SALDO := (Q_RMPMRP_QTDE.asfloat -(CONTA_PALLET*qrProEspecificoPALE_QTDE_PALLETUV.AsFloat));
                     SALDO_UV := SALDO  ;

                     CONTA_UE := int(SALDO_UV/Q_PRODQTDE_UVUE.asfloat) ;

                     SALDO3 := formatfloat('0',(Q_RMPMRP_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat)) ;
                     Qrlabel23.caption :=  {SALDO3 }formatfloat('0',SALDO_UV) ;

                     SALDO := 0 ;
                     SALDO := (strtoint(SALDO3)*Q_PRODQTDE_UVUE.asfloat) ;

                     SALDO2 := formatfloat('0.000',SALDO_UV - SALDO);

                     if (strtofloat(SALDO2) > 0) then
                           Qrlabel24.caption :=  SALDO2
                      else Qrlabel24.caption := '-'{'0'} ;


                 end else begin
                     CONTA_UE := (CONTA_PALLET * qrProEspecificoPALE_QTDE_PALLETUV.AsFloat);
                     Qrlabel23.caption :=  '-' ; {FLOATTOSTR(CONTA_UE); }
                     Qrlabel24.caption := '-' ;

                 end ;



        end;






end;

procedure TFRelRomEntCross.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  value := NOTASCROS ; 
end;

procedure TFRelRomEntCross.QRDBText6Print(sender: TObject;
  var Value: String);
begin
    Value := FOS.CDSOSOS_ID.asstring;
end;

end.

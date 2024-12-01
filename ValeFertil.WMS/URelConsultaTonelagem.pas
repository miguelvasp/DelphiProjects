unit URelConsultaTonelagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, gtQrCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  jpeg;

type
  TFRelConsultaTonelagem = class(TForm)
    TONELAGEM: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRShape1: TgtQRShape;
    QRLabel22: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    QRBand2: TQRBand;
    gtQRShape2: TgtQRShape;
    gtQRShape3: TgtQRShape;
    gtQRShape4: TgtQRShape;
    gtQRShape5: TgtQRShape;
    gtQRShape6: TgtQRShape;
    gtQRShape7: TgtQRShape;
    gtQRShape8: TgtQRShape;
    gtQRShape1: TgtQRShape;
    gtQRShape9: TgtQRShape;
    gtQRShape10: TgtQRShape;
    gtQRShape11: TgtQRShape;
    gtQRShape12: TgtQRShape;
    gtQRShape13: TgtQRShape;
    gtQRShape14: TgtQRShape;
    gtQRShape15: TgtQRShape;
    gtQRShape16: TgtQRShape;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    gtQRDBText6: TgtQRDBText;
    gtQRDBText7: TgtQRDBText;
    gtQRDBText8: TgtQRDBText;
    Q_TONE: TwwQuery;
    DS_TONE: TwwDataSource;
    Q_TONETON_ID: TAutoIncField;
    Q_TONECH: TIntegerField;
    Q_TONEData: TDateTimeField;
    Q_TONECLIN_ID1: TIntegerField;
    Q_TONERAZA1: TStringField;
    Q_TONECOL1: TFloatField;
    Q_TONECLIN_ID2: TIntegerField;
    Q_TONERAZA2: TStringField;
    Q_TONECOL2: TFloatField;
    Q_TONECLIN_ID3: TIntegerField;
    Q_TONERAZA3: TStringField;
    Q_TONECOL3: TFloatField;
    Q_TONECLIN_ID4: TIntegerField;
    Q_TONERAZA4: TStringField;
    Q_TONECOL4: TFloatField;
    Q_TONECLIN_ID5: TIntegerField;
    Q_TONERAZA5: TStringField;
    Q_TONECOL5: TFloatField;
    Q_TONECLIN_ID6: TIntegerField;
    Q_TONERAZA6: TStringField;
    Q_TONECOL6: TFloatField;
    Q_TONECLIN_ID7: TIntegerField;
    Q_TONERAZA7: TStringField;
    Q_TONECOL7: TFloatField;
    Q_TONECLIN_ID8: TIntegerField;
    Q_TONERAZA8: TStringField;
    Q_TONECOL8: TFloatField;
    Q_TONETOTAL: TFloatField;
    gtQRShape17: TgtQRShape;
    gtQRDBText9: TgtQRDBText;
    gtQRShape18: TgtQRShape;
    gtQRLabel1: TgtQRLabel;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText10: TgtQRDBText;
    gtQRDBText11: TgtQRDBText;
    gtQRDBText12: TgtQRDBText;
    gtQRDBText13: TgtQRDBText;
    gtQRDBText14: TgtQRDBText;
    gtQRDBText15: TgtQRDBText;
    gtQRDBText16: TgtQRDBText;
    gtQRDBText17: TgtQRDBText;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    gtQRShape19: TgtQRShape;
    gtQRLabel7: TgtQRLabel;
    gtQRShape20: TgtQRShape;
    gtQRDBText18: TgtQRDBText;
    Q_TONEIMPR_TOTAL: TStringField;
    Q_AUX: TwwQuery;
    gtQRLabel8: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    gtQRLabel10: TgtQRLabel;
    gtQRLabel11: TgtQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaTonelagem: TFRelConsultaTonelagem;
  BANDA2 : string  ;
  SALTAPAG : string ;

  RAZA1: string ;
  RAZA2: string ;
  RAZA3: string ;
  RAZA4: string ;
  RAZA5: string ;
  RAZA6: string ;
  RAZA7: string ;
  RAZA8: string ;
implementation
 uses UFConsultaTonelagem, UMenu;
{$R *.DFM}

procedure TFRelConsultaTonelagem.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

      { If (((Q_TONEIMPR_TOTAL.AsString = '') and (Q_TONEDATA.asstring <> ''))
          or (Q_TONEIMPR_TOTAL.AsString = 'S')) then begin
           gtQRShape19.enabled := true  ;
           gtQRLabel7.enabled := true ;
           gtQRDBText18.enabled := true ;
           gtQRShape20.enabled := true ;

           gtQRDBText18.top := 3 ;
           gtQRShape20.top  := 1 ;
           gtQRLabel7.top := 3 ;
           gtQRShape19.top  := 1 ;
       end else begin
           gtQRShape19.enabled := false  ;
           gtQRLabel7.enabled := false ;
           gtQRDBText18.enabled := false ;
           gtQRShape20.enabled := false ;
       end ;  }



       IF BANDA2 = '*'  then begin
          QRBand2.height := 20;
          gtQRShape1.enabled := true ;
          gtQRShape2.enabled := true ;
          gtQRShape3.enabled := true ;
          gtQRShape4.enabled := true ;
          gtQRShape5.enabled := true ;
          gtQRShape6.enabled := true ;
          gtQRShape7.enabled := true ;
          gtQRShape8.enabled := true ;
          gtQRShape17.enabled := true ;


            If (((Q_TONEIMPR_TOTAL.AsString = '') and (Q_TONEDATA.asstring <> ''))
               or (Q_TONEIMPR_TOTAL.AsString = 'S')) then
                gtQRShape19.enabled := true
              else
                gtQRShape19.enabled := false ;

             gtQRLabel1.enabled := true ;
             gtQRDBText2.enabled := true ;
             gtQRDBText3.enabled := true ;
             gtQRDBText4.enabled := true ;
             gtQRDBText5.enabled := true ;
             gtQRDBText6.enabled := true ;
             gtQRDBText7.enabled := true ;
             gtQRDBText8.enabled := true ;
             gtQRDBText9.enabled := true ;

            If (((Q_TONEIMPR_TOTAL.AsString = '') and (Q_TONEDATA.asstring <> ''))
               or (Q_TONEIMPR_TOTAL.AsString = 'S')) then
                gtQRLabel7.enabled := true
              else
                gtQRLabel7.enabled := false ;

              

          gtQRShape9.enabled := false ;
          gtQRShape10.enabled := false ;
          gtQRShape11.enabled := false ;
          gtQRShape12.enabled := false ;
          gtQRShape13.enabled := false ;
          gtQRShape14.enabled := false ;
          gtQRShape15.enabled := false ;
          gtQRShape16.enabled := false ;
          gtQRShape18.enabled := false ;
          gtQRShape20.enabled := false ;
          gtQRDBText1.enabled := false ;
          gtQRDBText10.enabled := false ;
          gtQRDBText11.enabled := false ;
          gtQRDBText12.enabled := false ;
          gtQRDBText13.enabled := false ;
          gtQRDBText14.enabled := false ;
          gtQRDBText15.enabled := false ;
          gtQRDBText16.enabled := false ;
          gtQRDBText17.enabled := false ;
          gtQRDBText18.enabled := false ;

           RAZA1:= '' ;
           RAZA2:= '' ;
           RAZA3:= '' ;
           RAZA4:= '' ;
           RAZA5:= '' ;
           RAZA6:= '' ;
           RAZA7:= '' ;
           RAZA8:= '' ;

          IF Q_TONERAZA1.asstring <> '' then RAZA1 := 'S' ;
          IF Q_TONERAZA2.asstring <> '' then RAZA2 := 'S' ;
          IF Q_TONERAZA3.asstring <> '' then RAZA3 := 'S' ;
          IF Q_TONERAZA4.asstring <> '' then RAZA4 := 'S' ;
          IF Q_TONERAZA5.asstring <> '' then RAZA5 := 'S' ;
          IF Q_TONERAZA6.asstring <> '' then RAZA6 := 'S' ;
          IF Q_TONERAZA7.asstring <> '' then RAZA7 := 'S' ;
          IF Q_TONERAZA8.asstring <> '' then RAZA8 := 'S' ;

       end else begin
          gtQRLabel1.enabled := false ;
          QRBand2.height := 20;

          gtQRShape9.top   := 1 ;
          gtQRShape10.top  := 1 ;
          gtQRShape11.top  := 1 ;
          gtQRShape12.top  := 1 ;
          gtQRShape13.top  := 1 ;
          gtQRShape14.top  := 1 ;
          gtQRShape15.top  := 1 ;
          gtQRShape16.top  := 1 ;
          gtQRShape18.top  := 1 ;
          gtQRShape20.top  := 1 ;
          gtQRDBText1.top  := 3 ;
          gtQRDBText10.top := 3 ;
          gtQRDBText11.top := 3 ;
          gtQRDBText12.top := 3 ;
          gtQRDBText13.top := 3 ;
          gtQRDBText14.top := 3 ;
          gtQRDBText15.top := 3 ;
          gtQRDBText16.top := 3 ;
          gtQRDBText17.top := 3 ;
          gtQRDBText18.top := 3 ;

          gtQRShape1.enabled := false ;
          gtQRShape2.enabled := false ;
          gtQRShape3.enabled := false ;
          gtQRShape4.enabled := false ;
          gtQRShape5.enabled := false ;
          gtQRShape6.enabled := false ;
          gtQRShape7.enabled := false ;
          gtQRShape8.enabled := false ;
          gtQRShape17.enabled := false ;
          gtQRLabel1.enabled := false ;
          gtQRDBText2.enabled := false ;
          gtQRDBText3.enabled := false ;

          gtQRDBText4.enabled := false ;
          gtQRDBText5.enabled := false ;

          gtQRDBText6.enabled := false ;
          gtQRDBText7.enabled := false ;
          gtQRDBText8.enabled := false ;
          gtQRDBText9.enabled := false ;

          gtQRShape9.enabled := true ;
          gtQRShape10.enabled := true ;
          gtQRShape11.enabled := true ;
          gtQRShape12.enabled := true ;
          gtQRShape13.enabled := true ;
          gtQRShape14.enabled := true ;
          gtQRShape15.enabled := true ;
          gtQRShape16.enabled := true ;
          gtQRShape18.enabled := true ;

          GtQRShape19.enabled := false;
          gtQRLabel7.enabled := false;
          If (((Q_TONEIMPR_TOTAL.AsString = '') and (Q_TONEDATA.asstring <> ''))
               or (Q_TONEIMPR_TOTAL.AsString = 'S')) then
               GtQRShape20.enabled := true
            else
               GtQRShape20.enabled := false;



          gtQRDBText1.enabled := true ;

          IF RAZA1 <> '' then
             gtQRDBText10.enabled := true ;
          IF RAZA2 <> '' then
             gtQRDBText11.enabled := true ;
          IF RAZA3 <> '' then
             gtQRDBText12.enabled := true ;
          IF RAZA4 <> '' then
             gtQRDBText13.enabled := true ;
          IF RAZA5 <> '' then
             gtQRDBText14.enabled := true ;
          IF RAZA6 <> '' then
             gtQRDBText15.enabled := true ;
          IF RAZA7 <> '' then
             gtQRDBText16.enabled := true ;
          IF RAZA8 <> '' then
             gtQRDBText17.enabled := true ;



            If (((Q_TONEIMPR_TOTAL.AsString = '') and (Q_TONEDATA.asstring <> ''))
               or (Q_TONEIMPR_TOTAL.AsString = 'S')) then
               gtQRDBText18.enabled := true
            else
               gtQRDBText18.enabled := false;


       end ;

       BANDA2 := ''  ;

       IF ((Q_TONEDATA.asstring = '') and (Q_TONECLIN_ID1.asstring = '')) then begin
            SALTAPAG := '*' ;
            gtQRLabel6.enabled := true ;
            gtQRLabel6.top := 3 ;
       end else gtQRLabel6.enabled := false ;





end;

procedure TFRelConsultaTonelagem.FormCreate(Sender: TObject);
var
  EXTENSO : string ;
begin
     RAZA1:= '' ;
     RAZA2:= '' ;
     RAZA3:= '' ;
     RAZA4:= '' ;
     RAZA5:= '' ;
     RAZA6:= '' ;
     RAZA7:= '' ;
     RAZA8:= '' ;

  IF FFConsultaTONELAGEM.combo_cliente.text <> '' then
     gtqrLabel2.caption :=  FFConsultaTONELAGEM.combo_cliente.text
  else
     gtqrLabel2.caption := 'Não Preenchido'  ;

  IF FFConsultaTONELAGEM.RadioGroup1.itemindex = 0 then
     gtQRLabel9.caption :=  'Sim'
  else
     gtQRLabel9.caption :=  'Não'     ;

  IF FFConsultaTONELAGEM.RadioGroup3.itemindex = 0 then
     gtQRLabel11.caption :=  'Entrega'
  else
     gtQRLabel11.caption :=  'Coleta'  ;


     EXTENSO := FormatDateTime('mmmm',(DataInicial)) + '/' + FormatDateTime('yyyy',DataInicial)    ;
     gtqrlabel5.caption :=   UPPERCASE(EXTENSO)      ;


     Q_TONE.close;
     Q_TONE.sql.clear;
     Q_TONE.sql.add('SELECT * from tonelagem');
     Q_TONE.sql.add('where CH = ' + FMenu.SqlUsuariosCH.asstring);
     Q_TONE.open ;
     
     BANDA2 := '*'  ;




end;

procedure TFRelConsultaTonelagem.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin

        IF SALTAPAG = '*' then begin
           QRBAND2.ForceNewPage := true ;
           SALTAPAG := '' ;
           BANDA2 := '*' ;

        end else  QRBAND2.ForceNewPage := false ;


       gtQRLabel1.enabled := false ;

end;

procedure TFRelConsultaTonelagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TONE.close;


  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE TONELAGEM WHERE CH = ' + FMenu.SqlUsuariosCH.asstring);
  Q_aux.ExecSql;


  action := cafree ; 
end;

end.

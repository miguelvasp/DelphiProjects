unit URelConsultaVeiculo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, gtQrCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  jpeg;   {}

type
  TFRelConsultaVeiculo = class(TForm)
    VEICULO: TQuickRep;
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
    Q_AUX: TwwQuery;
    gtQRLabel10: TgtQRLabel;
    gtQRLabel11: TgtQRLabel;
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
    Q_TONEIMPR_TOTAL: TStringField;
    QRBand3: TQRBand;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaVeiculo: TFRelConsultaVeiculo;
  BANDA2 : string  ;
  SALTAPAG : string ;
implementation
 uses UFConsultaTonelagem, UMenu, UFConsultaVeiculo;
{$R *.DFM}

procedure TFRelConsultaVeiculo.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin



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
          gtQRDBText10.enabled := true ;
          gtQRDBText11.enabled := true ;
          gtQRDBText12.enabled := true ;
          gtQRDBText13.enabled := true ;
          gtQRDBText14.enabled := true ;
          gtQRDBText15.enabled := true ;
          gtQRDBText16.enabled := true ;
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

procedure TFRelConsultaVeiculo.FormCreate(Sender: TObject);
var
  EXTENSO : string ;
begin

   Q_TONE.open ;
  IF FFConsultaVeiculo.combo_cliente.text <> '' then
     gtqrLabel2.caption :=  FFConsultaVeiculo.combo_cliente.text
  else
     gtqrLabel2.caption := 'Não Preenchido'  ;


  IF FFConsultaVeiculo.RadioGroup3.itemindex = 0 then
     gtQRLabel11.caption :=  'Entrega'
  else
     gtQRLabel11.caption :=  'Coleta'  ;


     EXTENSO := FormatDateTime('mmmm',(DataInicial)) + '/' + FormatDateTime('yyyy',DataInicial)    ;
     gtqrlabel5.caption :=   UPPERCASE(EXTENSO)      ;


     BANDA2 := '*'  ;

    



end;

procedure TFRelConsultaVeiculo.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        IF SALTAPAG = '*' then begin
           QRBAND2.ForceNewPage := true ;
           SALTAPAG := '' ;
           BANDA2 := '*' ;
       end else  QRBAND2.ForceNewPage := false ;
         gtQRLabel1.enabled := false ;
end;

procedure TFRelConsultaVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TONE.close;
  action := cafree ; 
end;

procedure TFRelConsultaVeiculo.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     SALTAPAG := '' ;
     BANDA2 := '*' ;
     QRBAND2.ForceNewPage := false
end;

end.

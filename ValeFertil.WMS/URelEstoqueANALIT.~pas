unit URelEstoqueANALIT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, gtQrCtrls, gtQRXport, gtQRXport_Doc,
  gtQRXport_RTF;

type
  TFRelEstoqueANALIT = class(TForm)
    ESTOQ: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel3: TgtQRLabel;
    QRLabel4: TgtQRLabel;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRSysData2: TgtQRSysData;
    QRSysData1: TgtQRSysData;
    QRLabel37: TgtQRLabel;
    QRLabel6: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel8: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRShape3: TgtQRShape;
    QRLabel1: TgtQRLabel;
    QRBand2: TQRBand;
    clin_id: TgtQRDBText;
    QRDBText12: TgtQRDBText;
    QRDBText2: TgtQRDBText;
    QRDBText1: TgtQRDBText;
    QRLabel9: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRLabel11: TgtQRLabel;
    QRLabel12: TgtQRLabel;
    QRDBText3: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText5: TgtQRDBText;
    QRDBText6: TgtQRDBText;
    QRLabel13: TgtQRLabel;
    QRLabel14: TgtQRLabel;
    QRLabel15: TgtQRLabel;
    QRLabel16: TgtQRLabel;
    QRLabel17: TgtQRLabel;
    QRDBText7: TgtQRDBText;
    QRLabel18: TgtQRLabel;
    QRDBText8: TgtQRDBText;
    QRBand3: TQRBand;
    QRLabel19: TgtQRLabel;
    QRLabel29: TgtQRLabel;
    QRLabel20: TgtQRLabel;
    QRLabel21: TgtQRLabel;
    gtQRRTFExport1: TgtQRRTFExport;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEstoqueANALIT: TFRelEstoqueANALIT;
  TOTALUV : real;
  TOTALPALLET : integer ;
  TOTALUE : integer ;
  UE : real ;
  SALDO : string ;
implementation
uses USenha,Umenu, UAbTabelas, UConsEstoque ;
{$R *.DFM}

procedure TFRelEstoqueANALIT.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      IF (FConsEstoque.cdsEstoquePRO_ID.asstring <> '') then begin
          FConsEstoque.cdsProduto.locate('PRO_ID',FConsEstoque.cdsEstoquePRO_ID.asstring,[]);
          If (FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat =
              FConsEstoque.cdsProdutoPRO_QTDE_PALLETUV.asfloat) then begin
              qrLabel15.caption := '1' ;
              UE := {INT}(FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat/FConsEstoque.cdsProdutoQTDE_UVUE.asfloat);
              qrLabel16.caption :=  FLOATTOSTR(UE);
          end else begin
              qrLabel15.caption := '0' ;
              UE := {INT}(FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat/FConsEstoque.cdsProdutoQTDE_UVUE.asfloat);
              SALDO := formatfloat('0.000',(UE * FConsEstoque.cdsProdutoQTDE_UVUE.asfloat)) ;

              ///qrLabel16.caption :=  FLOATTOSTR(UE);
              IF  (SALDO =  formatfloat('0.000',(FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat))) then
                qrLabel16.caption :=  formatfloat('0',(UE))
              else
                qrLabel16.caption :=  floatTOSTR(int(UE));
          end ;
      end ;

      {Alterado para adicionar os paletes q nao sejam avarias}
      if (FConsEstoque.cdsEstoqueAR_ID.Value <> 73) and (FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat > 0) then
              qrLabel15.caption := '1' ;

//          IF (FConsEstoque.Q_ESTQPRO_ID.asstring <> '') then begin
//          FConsEstoque.Q_PROD.locate('PRO_ID',FConsEstoque.Q_ESTQPRO_ID.asstring,[]);
//          If (FConsEstoque.Q_ESTQESTQ_QTDE.asfloat =
//              FConsEstoque.Q_PRODPRO_QTDE_PALLETUV.asfloat) then begin
//              qrLabel15.caption := '1' ;
//              UE := {INT}(FConsEstoque.Q_ESTQESTQ_QTDE.asfloat/FConsEstoque.Q_PRODQTDE_UVUE.asfloat);
//              qrLabel16.caption :=  FLOATTOSTR(UE);
//          end
//          else if (FConsEstoque.Q_ESTQAR_ID.Value <> 73) and (FConsEstoque.Q_ESTQESTQ_QTDE.asfloat > 0) then
//          begin
//              qrLabel15.caption := '1' ;
//              UE := {INT}(FConsEstoque.Q_ESTQESTQ_QTDE.asfloat/FConsEstoque.Q_PRODQTDE_UVUE.asfloat);
//              qrLabel16.caption :=  FLOATTOSTR(UE);
//          end
//          else
//          begin
//              qrLabel15.caption := '0' ;
//              UE := {INT}(FConsEstoque.Q_ESTQESTQ_QTDE.asfloat/FConsEstoque.Q_PRODQTDE_UVUE.asfloat);
//              SALDO := formatfloat('0.000',(UE * FConsEstoque.Q_PRODQTDE_UVUE.asfloat)) ;
//
//              ///qrLabel16.caption :=  FLOATTOSTR(UE);
//              IF  (SALDO =  formatfloat('0.000',(FConsEstoque.Q_ESTQESTQ_QTDE.asfloat))) then
//                qrLabel16.caption :=  formatfloat('0',(UE))
//              else
//                qrLabel16.caption :=  floatTOSTR(int(UE));
//          end ;
//      end ;
end;

procedure TFRelEstoqueANALIT.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 {TOTALUV := 0;
  TOTALPALLET := 0 ;
  TOTALUE := 0 ;  }
end;

procedure TFRelEstoqueANALIT.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTALUV := (TOTALUV + FConsEstoque.cdsEstoqueESTQ_QTDE.asfloat) ;
  TOTALPALLET :=  (TOTALPALLET + STRTOINT(QRLabel15.caption)) ;

  TOTALUE := (TOTALUE + STRTOINT(QRLabel16.caption))
end;

procedure TFRelEstoqueANALIT.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel29.caption := formatfloat('###,###,##0.000' ,TOTALUV) ;
  QRLabel20.caption := INTTOSTR(TOTALPALLET) ;
  QRLabel21.caption := INTTOSTR(TOTALUE) ;
end;

procedure TFRelEstoqueANALIT.FormCreate(Sender: TObject);
begin  
  TOTALUV := 0;
  TOTALPALLET := 0 ;
  TOTALUE := 0 ;
end;

procedure TFRelEstoqueANALIT.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTALUV := 0;
  TOTALPALLET := 0 ;
  TOTALUE := 0 ;
end;

end.

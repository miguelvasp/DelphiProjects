unit URelValores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, jpeg;

type
  TFRelValores = class(TForm)
    VALORES: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    Q_CALC: TwwQuery;
    DS_CALC: TwwDataSource;
    Q_CALCCALC_ID: TAutoIncField;
    Q_CALCOS_ID: TIntegerField;
    Q_CALCOS_SERVICO_ID: TIntegerField;
    Q_CALCOS_ESPEC_ID: TIntegerField;
    Q_CALCCTT_ID: TIntegerField;
    Q_CALCSER_ID: TIntegerField;
    Q_CALCTDOC_ID: TIntegerField;
    Q_CALCTDOC_TIPO: TStringField;
    Q_CALCORD_ID: TIntegerField;
    Q_CALCMANI_ID: TIntegerField;
    Q_CALCNFI_CODI: TIntegerField;
    Q_CALCCALC_GRANDEZA: TFloatField;
    Q_CALCUCOB_ID: TIntegerField;
    Q_CALCCALC_UNITARIO: TFloatField;
    Q_CALCCALC_TOTAL: TFloatField;
    Q_CALCNFTPROD_ID: TIntegerField;
    Q_CALCTPRO_ID: TIntegerField;
    Q_CALCSER_NOME: TStringField;
    Q_CALCUCOB_NOME: TStringField;
    Q_CALCTSER_NOME: TStringField;
    QRGroup1: TQRGroup;
    Q_CALC2: TwwQuery;
    Q_CALCTSER_ID: TAutoIncField;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    Q_NF: TwwQuery;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_CALC2NFnumero: TStringField;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    Q_CALC2CALC_ID: TAutoIncField;
    Q_CALC2OS_ID: TIntegerField;
    Q_CALC2OS_SERVICO_ID: TIntegerField;
    Q_CALC2OS_ESPEC_ID: TIntegerField;
    Q_CALC2CTT_ID: TIntegerField;
    Q_CALC2SER_ID: TIntegerField;
    Q_CALC2TDOC_ID: TIntegerField;
    Q_CALC2TDOC_TIPO: TStringField;
    Q_CALC2ORD_ID: TIntegerField;
    Q_CALC2MANI_ID: TIntegerField;
    Q_CALC2NFI_CODI: TIntegerField;
    Q_CALC2CALC_GRANDEZA: TFloatField;
    Q_CALC2UCOB_ID: TIntegerField;
    Q_CALC2CALC_UNITARIO: TFloatField;
    Q_CALC2CALC_TOTAL: TFloatField;
    Q_CALC2NFTPROD_ID: TIntegerField;
    Q_CALC2TPRO_ID: TIntegerField;
    Q_CALC2SER_NOME: TStringField;
    Q_CALC2UCOB_NOME: TStringField;
    Q_CALC2TSER_NOME: TStringField;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    Q_CALC2Subtotal: TFloatField;
    Q_CALC2TotalGeral: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelValores: TFRelValores;
  TOTAL : real ;
  TOTAL2 : real ;
  TOTALSTR : string ; 
implementation
uses UOS ; 
{$R *.DFM}

procedure TFRelValores.FormCreate(Sender: TObject);
begin

       Q_CALC.open ;
       Q_CALC2.open ;
       Q_NF.open ;
       TOTAL := 0.00 ;
end;

procedure TFRelValores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       Q_CALC.close ;
       Q_CALC2.close ;
       Q_NF.close ;
       action := cafree ;
end;

procedure TFRelValores.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.caption := Q_CALCTSER_NOME.asstring +  ' / ' + Q_CALCSER_NOME.asstring ;
end;

procedure TFRelValores.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   TOTALSTR := '' ;
   TOTALSTR := formatfloat('0.00',Q_CALC2CALC_TOTAL.asfloat)  ;


   TOTAL := (TOTAL + STRTOFLOAT(TOTALSTR)) ;

end;

procedure TFRelValores.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        TOTAL := 0 ;

end;

procedure TFRelValores.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabel14.caption := formatfloat('###,###,##0.00',TOTAL)    ;

     TOTALSTR := '' ;
     TOTALSTR := formatfloat('0.00',TOTAL)  ;
     TOTAL2 := (TOTAL2 + STRTOFLOAT(TOTALSTR)) ;
end;

procedure TFRelValores.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    TOTAL2 := 0 ;
end;

procedure TFRelValores.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      QRLabel17.caption := formatfloat('0.00',TOTAL2)    ;
end;

end.

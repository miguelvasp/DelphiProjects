unit URelConsProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, gtQRXport,
  gtQRXport_Doc, gtQRXport_RTF, gtQrCtrls;

type
  TFRelConsProduto = class(TForm)
    ConsNF: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TgtQRShape;
    QRShape3: TgtQRShape;
    QRImage1: TgtQRImage;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel9: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRLabel11: TgtQRLabel;
    QRLabel12: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TgtQRDBText;
    QRDBText2: TgtQRDBText;
    QRDBText3: TgtQRDBText;
    QRDBText4: TgtQRDBText;
    QRDBText5: TgtQRDBText;
    QRDBText6: TgtQRDBText;
    QRDBText7: TgtQRDBText;
    QRBand3: TQRBand;
    QRLabel13: TgtQRLabel;
    QRLabel14: TgtQRLabel;
    QRLabel15: TgtQRLabel;
    QRLabel16: TgtQRLabel;
    QRLabel17: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel18: TgtQRLabel;
    QRLabel19: TgtQRLabel;
    QRLabel20: TgtQRLabel;
    QRLabel21: TgtQRLabel;
    QRLabel22: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel25: TgtQRLabel;
    QRLabel26: TgtQRLabel;
    QRLabel27: TgtQRLabel;
    QRLabel28: TgtQRLabel;
    QRLabel29: TgtQRLabel;
    QRLabel30: TgtQRLabel;
    QRLabel31: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    Q_PAR: TwwQuery;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARPAR_CNPJ: TStringField;
    Q_PARPAR_INSC: TStringField;
    Q_PARPAR_ENDERECO: TStringField;
    Q_PARPAR_ENDERECO_COMPL: TStringField;
    Q_PARPAR_ENDERECO_BAIRRO: TStringField;
    Q_PARPAR_UF_SIGLA: TStringField;
    Q_PARPAR_CEP: TStringField;
    Q_PARPAR_TEL: TStringField;
    Q_PARPAR_FAX: TStringField;
    Q_PARPAR_EMAIL: TStringField;
    Q_PARMUN_ID: TIntegerField;
    Q_PARPAR_ID: TAutoIncField;
    DS_PAR: TwwDataSource;
    QRLabel34: TgtQRLabel;
    QRLabel35: TgtQRLabel;
    QRLabel36: TgtQRLabel;
    QRDBText8: TgtQRDBText;
    QRLabel37: TgtQRLabel;
    QRLabel38: TgtQRLabel;
    QRDBText9: TgtQRDBText;
    QRLabel39: TgtQRLabel;
    QRDBText10: TgtQRDBText;
    QRLabel40: TgtQRLabel;
    QRLabel41: TgtQRLabel;
    QRLabel42: TgtQRLabel;
    QRLabel43: TgtQRLabel;
    QRLabel44: TgtQRLabel;
    QRLabel45: TgtQRLabel;
    gtQRRTFExport1: TgtQRRTFExport;
    gtQRLabel1: TgtQRLabel;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRLabel2: TgtQRLabel;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsProduto: TFRelConsProduto;
  TOTALUV : real;
  TOTALPESO  : real;
  TOTALVALOR   : real;
  TOTALPALLET : integer ;
implementation
uses UConsultaNF,UFConsultaProduto, UConsultaProduto ;
{$R *.DFM}

procedure TFRelConsProduto.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     TOTALVALOR := (TOTALVALOR + FConsultaProduto .Q_CONSULNFI_TOTA.asfloat) ;
     TOTALPESO  := (TOTALPESO + FConsultaProduto .Q_CONSULPESOBRU.asfloat) ;
     TOTALUV  := (TOTALUV + FConsultaProduto .Q_CONSULQTDEUV.asfloat) ;
     TOTALPALLET  := (TOTALPALLET + FConsultaProduto .Q_CONSULQTDEPALLET.asinteger) ;
end;

procedure TFRelConsProduto.FormCreate(Sender: TObject);
begin
     Q_PAR.open ;
     TOTALVALOR := 0 ;
     TOTALPESO  := 0 ;
     TOTALUV    := 0 ;
     TOTALPALLET    := 0 ;

  case Tipo of
    1 : qrLABEL2.caption := 'Nota Fiscal de Saída' ;
    2 : qrLABEL2.caption := 'Nota Fiscal de Entrada' ;
    3 : qrLABEL2.caption := 'Nota Fiscal de Armazém' ;
    4 : qrLABEL2.caption := 'Nota Fiscal de Remetente' ;
  end ;

  If TIPO = 14 then begin
       QRDBText3.datafield := 'PAR_RAZA' ;
       QRDBText3.dataset := Q_PAR ;
  end ;
  
  IF PROD <> '' then  begin
     qrLabel29.caption := FFConsultaProduto .combo_produto.text   ;
     qrLabel30.caption := FFConsultaProduto .Q_PRODPRO_DESC.asstring   ;
  end else begin
     qrLabel29.caption :=  'Não Preenchido'   ;
     qrLabel30.caption :=  'Não Preenchido'   ;
  end ;

  IF REM <> '' then
     qrLabel26.caption :=  FFConsultaProduto .wwDBLookupCombo1.text  ;
  IF FFConsultaProduto .wwDBLookupCombo1.text = '' then 
     qrLabel26.caption := 'Não Preenchido'    ;

  IF NOTA <> '' then
     qrLabel25.caption :=  FFConsultaProduto .dbnf.text
  else
     qrLabel25.caption :='Não Preenchido' ;

  IF CLIF <> '' then
     qrLabel27.caption :=  FFConsultaProduto .combo_cliente_final.text
  else
     qrLabel27.caption := 'Não Preenchido'      ;

  IF CLI <> '' then
     qrLabel28.caption :=  FFConsultaProduto .combo_cliente.text
  else
     qrLabel28.caption := 'Não Preenchido'    ;

  IF VENCI <> 0.00 then
     qrLabel32.caption :=  FFConsultaProduto .DATA1.text
  else
     qrLabel32.caption := 'Não Preenchido'       ;

  IF VENCF <> 0.00 then
     qrLabel33.caption :=  FFConsultaProduto .DATA2.text
  else
     qrLabel33.caption := 'Não Preenchido' ;

  IF (TPROD <> '') and (TPROD <> '*')  then
     qrLabel35.caption :=  FFConsultaProduto .wwDBLookupCombo2.text
  else
    qrLabel35.caption := 'Não Preenchido' ;

  IF BATCH <> 0.00 then
     qrLabel41.caption :=  FFConsultaProduto .MaskEDIT1.text
  else
     qrLabel41.caption := 'Não Preenchido'       ;

  IF BATCHF <> 0.00 then
     qrLabel43.caption :=  FFConsultaProduto .MaskEDIt2.text
  else
     qrLabel43.caption := 'Não Preenchido' ;

  IF LOTE <> '' then
     qrLabel45.caption :=  FFConsultaProduto .wwdbedit1.text
  else
     qrLabel45.caption :='Não Preenchido' ;


end;

procedure TFRelConsProduto.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     TOTALVALOR := 0 ;
     TOTALPESO  := 0 ;
     TOTALUV    := 0 ;
     TOTALPALLET := 0 ;
end;

procedure TFRelConsProduto.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.caption := formatfloat('###,###,##0.00' ,TOTALVALOR) ;
  QRLabel15.caption := formatfloat('###,###,##0.000' ,TOTALPESO) ;
  QRLabel16.caption := formatfloat('###,###,##0.000' ,TOTALUV) ;
  QRLabel37.caption := inttostr(TOTALPALLET)    ;
end;

procedure TFRelConsProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Q_PAR.close ;
    action := cafree ;  
end;

end.

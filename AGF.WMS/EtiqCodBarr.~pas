unit EtiqCodBarr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, Barcode, ExtCtrls,Clipbrd, Db, DBTables, Wwtable,
  Wwquery, Wwdatsrc;

type
  TFEtiqCodBar = class(TForm)
    Quickrep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Q_ESTQ: TwwQuery;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQGEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQMARCADOR: TStringField;
    Q_ESTQPRO_COD: TStringField;
    Q_ESTQPRO_DESC: TStringField;
    Barcode1: TBarcode;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    Q_CLINBF: TwwQuery;
    DS_ESTQ: TwwDataSource;
    Q_CLINBFPRO_ID: TAutoIncField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_POS: TwwQuery;
    Q_POSPOS_COD: TStringField;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSPOS_ID: TAutoIncField;
    QRDBText7: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Quickrep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Quickrep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    NumeroVezes : Integer ;
  end;

var
  FEtiqCodBar: TFEtiqCodBar;

implementation
uses Ureletiq  ;
{$R *.DFM}


procedure TFEtiqCodBar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   {Barcode1.Digits := T_EtiquetaBarProduto.asstring;
   Barcode1.BarcodeCopy;
  QRImage1.Picture.Assign(Clipboard);}
  Barcode1.Digits := Q_ESTQESTQ_TAG.asstring;
  //else Barcode1.Digits := 'P'+FEtiqCodBarFilt.T_ItemLoteProduto.asstring ;

  Barcode1.BarcodeCopy;
  QRImage1.Picture.Assign(Clipboard);
end;

procedure TFEtiqCodBar.Quickrep1NeedData(Sender: TObject; var MoreData: Boolean);
begin
 { Tag := Tag + 1;
  MoreData := Tag <= T_EtiquetaBar.recordcount ; }

end;

procedure TFEtiqCodBar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Q_estq.close ;
 Q_CLINBF.close ;
 Q_POS.close ; 
 action := cafree ;
end;

procedure TFEtiqCodBar.FormCreate(Sender: TObject);
begin


   Q_ESTQ.SQL.clear ;
   Q_ESTQ.SQL.ADD('Select A.*,B.PRO_COD,B.PRO_DESC from    ');
   Q_ESTQ.SQL.ADD(' ESTOQUE A, PRODUTO B   ');
   Q_ESTQ.SQL.ADD('where A.PRO_ID = B.PRO_ID ');
   Q_ESTQ.SQL.ADD('and A.ESTQ_QTDE_RETIRA = ' + inttostr(0));
   if FRELETIQ.wwDBLookupCombo3.text <> '' then
         Q_ESTQ.SQL.ADD ( 'and A.ROM_ID_ENT =   ' + FRELETIQ.wwDBLookupCombo3.text ) ;
   if FRELETIQ.wwDBLookupCombo1.text <> '' then
         Q_ESTQ.SQL.ADD ( 'and A.ESTQ_TAG = ' + FRELETIQ.wwDBLookupCombo1.text  ) ;
   Q_ESTQ.SQL.ADD ( 'order by A.ESTQ_TAG');
   Q_ESTQ.Open ;
   Q_CLINBF.open ;
   Q_POS.open ;

   
end;

procedure TFEtiqCodBar.Quickrep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ////-Tag := 0 ;
end;

end.

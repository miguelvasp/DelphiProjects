unit URelProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, jpeg;

type
  TFRelProdutos = class(TForm)
    ROM: TQuickRep;
    QRBand1: TQRBand;
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
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape5: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_TPROD: TwwQuery;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODCLIN_ID: TIntegerField;
    Q_UNIDVEND2: TwwQuery;
    QRShape11: TQRShape;
    QRLabel30: TQRLabel;
    QRShape4: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape6: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    Q_UNIDVEND2UVEN_ID: TAutoIncField;
    Q_UNIDVEND2UVEN_NOME: TStringField;
    QRDBText11: TQRDBText;
    QRLabel34: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelProdutos: TFRelProdutos;

implementation
uses UFRelProdutos ;
{$R *.DFM}

procedure TFRelProdutos.FormCreate(Sender: TObject);
begin
   If (FFRelProdutos.RadioGroup1.itemindex = 1) then begin
       FFRelProdutos.Q_PROD.close ;
       FFRelProdutos.Q_PROD.Sql.Clear ;
       FFRelProdutos.Q_PROD.Sql.Add( ' select * from produto ' ) ;
       FFRelProdutos.Q_PROD.Sql.Add( ' where PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;
       if CLI <> '' then
             FFRelProdutos.Q_PROD.Sql.Add( 'and CLIN_ID =   ' + CLI ) ;
       if PROD <> '' then
             FFRelProdutos.Q_PROD.Sql.Add( 'and PRO_ID =   ' + PROd ) ;

       FFRelProdutos.Q_PROD.Sql.Add( 'order by PRO_DESC ' ) ;
       FFRelProdutos.Q_PROD.open;
   end else begin
       FFRelProdutos.Q_PROD.close ;
       FFRelProdutos.Q_PROD.Sql.Clear ;
       FFRelProdutos.Q_PROD.Sql.Add( ' select * from produto ' ) ;
       FFRelProdutos.Q_PROD.Sql.Add( ' where PRO_DESCONTINUA = ' + '''' + 'S' + '''') ;
       if CLI <> '' then
             FFRelProdutos.Q_PROD.Sql.Add( 'and CLIN_ID =   ' + CLI ) ;
       if PROD <> '' then
             FFRelProdutos.Q_PROD.Sql.Add( 'and PRO_ID =   ' + PROd ) ;
       FFRelProdutos.Q_PROD.Sql.Add( 'order by PRO_DESC ' ) ;
       FFRelProdutos.Q_PROD.open;
   end ;



   Q_TPROD.open ;
   Q_UNIDVEND.open ;
   Q_UNIDVEND2.open ;
end;

procedure TFRelProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_TPROD.close ;
   Q_UNIDVEND.close ;
   Q_UNIDVEND2.close ;
   action := cafree ;
end;

procedure TFRelProdutos.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if (FFRelProdutos.RadioGroup1.itemindex = 0) then
      QRLabel33.caption := 'Sim'
  else
      QRLabel33.caption := 'Não';

end;

procedure TFRelProdutos.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if (FFRelProdutos.Q_PRODPRO_ORIGEM.asstring = '0')
       then QRLabel34.caption := 'Nacional';
    if (FFRelProdutos.Q_PRODPRO_ORIGEM.asstring = '1')
       then QRLabel34.caption := 'Importado';
    if (FFRelProdutos.Q_PRODPRO_ORIGEM.asstring = '2')
       then QRLabel34.caption := 'Importado adquirido no Mercado Interno'  ;

end;

end.

unit URelSaldoProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, gtQRXport,
  gtQRXport_Doc, gtQRXport_Excel, jpeg;

type
  TFRelSaldoProdutos = class(TForm)
    RelSaldoProdutos: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    Q_PROD: TwwQuery;
    Q_CLIENTE: TwwQuery;
    Q_CLIENTECLIN_RAZA: TStringField;
    Q_CLIENTECLIN_ID: TAutoIncField;
    DS_CLIENTE: TwwDataSource;
    Q_PRODPRO_ID: TIntegerField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODQTDE: TFloatField;
    Q_PRODRETORNADA: TFloatField;
    Q_PRODSALDO: TFloatField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    QRDBText5: TQRDBText;
    gtQRExcelExport1: TgtQRExcelExport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelSaldoProdutos: TFRelSaldoProdutos;

implementation

uses USaldo_NF;

{$R *.DFM}

procedure TFRelSaldoProdutos.FormCreate(Sender: TObject);
begin
   Q_CLIENTE.SQL.Clear;
   Q_CLIENTE.SQL.ADD('SELECT CLIN_ID, CLIN_RAZA FROM CLIENTENBF ');
   Q_CLIENTE.SQL.ADD('WHERE CLIN_ID = ' +CLIN_ID);
   Q_CLIENTE.Open;

   WITH FSaldo_NF DO begin
       WITH Q_PROD DO begin
           CLOSE;
           SQL.Clear;
           SQL.Add(

           '   SELECT '+
           '           B.PRO_ID, '+
           '           B.PRO_DESC, '+
           '           SUM(B.INF_QTDE) QTDE, '+
           '           SUM(B.INF_QTDERETORNADA) RETORNADA, '+
           '           (SUM(B.INF_QTDE)-SUM(B.INF_QTDERETORNADA)) AS SALDO  '+
           '   FROM NF A INNER JOIN NF_ITENS B  '+
           '   ON A.NFI_CODI = B.NFI_CODI '               +
           ' where CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)))+
           ' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text)))+
           ' AND A.NFI_EMIT_CLI = ' + CLIENTE.LookupValue +
           ' AND A.TDOC_ID = 2 '     +
           ' GROUP BY B.PRO_ID, B.PRO_DESC ' +
           ' ORDER BY B.PRO_ID '
           );
       end;
   end;


   Q_PROD.Open;
end;

procedure TFRelSaldoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLIENTE.Close;
   Q_PROD.Close;
end;

end.

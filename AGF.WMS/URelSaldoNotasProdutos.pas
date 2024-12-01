unit URelSaldoNotasProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, Wwdatsrc, DBTables, Wwquery, ExtCtrls;

type
  TFRelSaldoNotasProdutos = class(TForm)
    RelSaldoNotasProdutos: TQuickRep;
    Q_CLIENTE: TwwQuery;
    Q_CLIENTECLIN_RAZA: TStringField;
    Q_CLIENTECLIN_ID: TAutoIncField;
    Q_NFITEM: TwwQuery;
    Q_NF: TwwQuery;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    DS_CLIENTE: TwwDataSource;
    DS_NF: TwwDataSource;
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
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    Q_NFITEMPRO_ID: TIntegerField;
    Q_NFITEMPRO_DESC: TStringField;
    Q_NFITEMQTDE: TFloatField;
    Q_NFITEMRETORNADA: TFloatField;
    Q_NFITEMSALDO: TFloatField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelSaldoNotasProdutos: TFRelSaldoNotasProdutos;

implementation

uses USaldo_NF;

{$R *.DFM}

procedure TFRelSaldoNotasProdutos.FormCreate(Sender: TObject);
begin
   Q_CLIENTE.SQL.CLEAR;
   Q_CLIENTE.SQL.ADD('SELECT CLIN_ID, CLIN_RAZA FROM CLIENTENBF');
   Q_CLIENTE.SQL.ADD('WHERE CLIN_ID = ' +CLIN_ID);
   Q_CLIENTE.OPEN;

  { if FSaldo_NF.NF.text <> '' then
   begin
        Q_NF.SQL.Clear;
        Q_NF.SQL.ADD('SELECT NFI_NUMERO, NFI_CODI FROM NF ');
        Q_NF.SQL.ADD(' WHERE NFI_CODI = ' +inttostr(NFI_CODI));
   end; }

   Q_NF.SQL.Clear;
        Q_NF.SQL.Add('SELECT NFI_NUMERO, NFI_CODI  FROM NF WHERE NFI_EMIT_CLI = :CLIN_ID');
        IF FSaldo_NF.Q_NFNFI_CODI.AsInteger <> 0 then
            Q_NF.SQL.Add('AND TDOC_ID = 2 AND NFI_CODI = ' +inttostr(NFI_CODI))
         else
            Q_NF.SQL.Add('AND TDOC_ID = 2 ') ;
        Q_NF.SQL.Add(' AND CONVERT(CHAR(10), NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(FSaldo_NF.MaskEdit1.Text))));
        Q_NF.SQL.Add(' AND CONVERT(CHAR(10), NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(FSaldo_NF.MaskEdit2.Text))));
        Q_NF.OPEN;


   Q_NFITEM.Open;

end;

procedure TFRelSaldoNotasProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLIENTE.Close;
   Q_NF.Close;
   Q_NFITEM.Close;
end;

end.

unit ufrmRelConsumoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, DBTables, Wwquery, ExtCtrls, QuickRpt,
  ADODB, Qrctrls;

type
  TfrmRelConsumoFornecedor = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Q_FORN: TwwQuery;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Button1: TButton;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    qrBusca: TADOQuery;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaData: TDateTimeField;
    qrBuscaReq_ID: TAutoIncField;
    qrBuscaFor_Codi: TStringField;
    qrBuscaQtde: TFloatField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelConsumoFornecedor: TfrmRelConsumoFornecedor;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelConsumoFornecedor.Button1Click(Sender: TObject);
begin
   with qrBusca do begin
       close;
       sql.clear;
       sql.add
       (
        '  SELECT '+
        '          D.MAT_DESC, '+
        '          A.Data, '+
        '          A.Req_ID, '+
        '          C.For_Codi,  '+
        '          sum(C.Qtde) as Qtde '+
        '  FROM Req_Capa A INNER JOIN Req_Item B  '+
        '  ON A.Req_ID = B.Req_ID INNER JOIN Req_Lote C  '+
        '  ON B.Req_Item_ID = C.Req_Item_ID INNER JOIN MATERIAIS D  '+
        '  ON B.Mat_ID = D.MAT_ID  '+
        '  WHERE 1 = 1  '
       );

       if MaskEdit1.Text <> '  /  /    ' then
          sql.Add('AND CONVERT(VARCHAR, A.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

       if MaskEdit2.Text <> '  /  /    ' then
          sql.Add('AND CONVERT(VARCHAR, A.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));

       if wwDBLookupCombo1.Text <> '' then
          sql.Add(' and C.FOR_CODI = ' + QuotedStr(wwDBLookupCombo1.LookupValue));

          sql.Add('group by D.MAT_DESC, A.Data ,A.Req_ID, C.For_Codi')  ;


       SQL.Add('ORDER BY D.MAT_DESC, A.DATA');
       Open;
   end;

   QuickRep1.Preview;


end;

procedure TfrmRelConsumoFornecedor.FormCreate(Sender: TObject);
begin
  Q_FORN.Open;
end;

procedure TfrmRelConsumoFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelConsumoFornecedor := nil;
end;

end.

unit URel_livro_Armazem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TfrmRelLivroArmazem = class(TForm)
    qrpEntradasSaidas: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    qrlbPeriodo: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand2: TQRBand;
    qrLivro: TwwQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrLivroDATA: TDateTimeField;
    qrLivroCLIENTE: TStringField;
    qrLivroPRODUTO: TIntegerField;
    qrLivroSALDO_ANT: TFloatField;
    qrLivroENTRADAS: TFloatField;
    qrLivroSAIDAS: TFloatField;
    qrLivroSALDO: TFloatField;
    qrLivroPRO_DESC: TStringField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    qrLivroPRO_COD: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSysData3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLivroArmazem: TfrmRelLivroArmazem;

implementation

uses ULivroArmazem;

{$R *.DFM}

procedure TfrmRelLivroArmazem.FormCreate(Sender: TObject);
var D1, D2 : TDateTime;
begin
  try
  D1 := StrToDateTime(frmLivroArmazem.MaskEdit1.Text);
  D2 := StrToDateTime(frmLivroArmazem.MaskEdit2.Text);
        qrLivro.close;
        qrLivro.SQL.Clear;
        qrLivro.SQL.Add(
             ' select  '+
             ' A.DATA   '+
             ' ,A.CLIENTE   '+
             ' ,A.PRODUTO   '+
             ' ,A.SALDO_ANT  '+
             ' ,A.ENTRADAS  '+
             ' ,A.SAIDAS  '+
             ' ,A.SALDO   '+
             ' ,A.VALOR   '+
             ' ,A.PARCIAL  '+
             ' ,B.PRO_DESC   '+
             ' ,B.PRO_COD  '+
             ' from livro_armazem A, PRODUTO B   '+
             ' where a.produto = b.pro_id '+
             ' AND CONVERT(VARCHAR, DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)) +
             ' AND CONVERT(VARCHAR, DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)) +
             ' ORDER BY ID'
        );
        qrLivro.open;
        qrlbPeriodo.Caption := 'Pesquisa de : '+FormatDateTime('DD/MM/YYYY',D1)+' Até '+FormatDateTime('DD/MM/YYYY',D2);
  except

  end;
end;

procedure TfrmRelLivroArmazem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrLivro.close;
  Action := caFree;
  frmRelLivroArmazem := nil;
end;

procedure TfrmRelLivroArmazem.QRSysData3Print(sender: TObject;
  var Value: String);
  var i : Integer;
begin
     try
         i := StrToInt(Value);
         Value := IntToStr(i + 1);
     except

     end;
end;

end.

unit URel_Livro_Armazem_Depositante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, jpeg;

type
  TfrmRel_Livro_Armazem_Depositante = class(TForm)
    qrLivro: TwwQuery;
    qrLivroDATA: TDateTimeField;
    qrLivroCLIENTE: TStringField;
    qrLivroPRODUTO: TIntegerField;
    qrLivroSALDO_ANT: TFloatField;
    qrLivroENTRADAS: TFloatField;
    qrLivroSAIDAS: TFloatField;
    qrLivroSALDO: TFloatField;
    qrLivroPRO_DESC: TStringField;
    qrLivroPRO_COD: TStringField;
    qrLivroVALOR: TFloatField;
    qrLivroPARCIAL: TFloatField;
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
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSysData3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel_Livro_Armazem_Depositante: TfrmRel_Livro_Armazem_Depositante;

implementation

uses ULivroArmazem, URel_livro_Armazem_INV;

{$R *.DFM}

procedure TfrmRel_Livro_Armazem_Depositante.FormCreate(Sender: TObject);
var D1, D2 : TDateTime;
begin
   try
    if (frmLivroArmazem.MaskEdit1.Text <> '  /  /    ') or (frmLivroArmazem.MaskEdit2.Text <> '  /  /    ') then
    begin
        D1 := StrToDateTime(frmLivroArmazem.MaskEdit1.Text);
        D2 := StrToDateTime(frmLivroArmazem.MaskEdit2.Text);
    end;


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

procedure TfrmRel_Livro_Armazem_Depositante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrLivro.close;
   Action := caFree;
   frmRel_Livro_Armazem_INV :=  nil;
end;

procedure TfrmRel_Livro_Armazem_Depositante.QRBand3AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  QRExpr1.Reset;
end;

procedure TfrmRel_Livro_Armazem_Depositante.QRSysData3Print(
  sender: TObject; var Value: String);
  var i : Integer;
begin
   try
      i := StrToInt(value);
      Value := IntToStr(i + 1);
   except

   end
end;

end.

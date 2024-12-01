unit ufrmRelOcorrencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdblook, Db, ADODB, Qrctrls, jpeg, QuickRpt, ExtCtrls;

type
  TfrmRelOcorrencias = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    qrFornecedor: TADOQuery;
    qrFornecedorFOR_CODI: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cboForn: TwwDBLookupCombo;
    Label3: TLabel;
    Button1: TButton;
    qrRel: TADOQuery;
    qrRelDt_Entrada: TDateTimeField;
    qrRelFor_Codi: TStringField;
    qrRelCONFERE_OCORRENCIA: TStringField;
    qrRelCONFERE_CONSEQUENCIA: TStringField;
    qrRelCONFERE_ACAO: TStringField;
    qrRelCONFERE_RESPONSAVEL: TStringField;
    qrRelCONFERE_OBS: TStringField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelOcorrencias: TfrmRelOcorrencias;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelOcorrencias.FormCreate(Sender: TObject);
begin
    qrFornecedor.Open;
end;

procedure TfrmRelOcorrencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelOcorrencias := nil;
end;

procedure TfrmRelOcorrencias.Button1Click(Sender: TObject);
begin
   with qrRel do begin
       Close;
       sql.Clear;
       sql.Add(
      '  SELECT '+
      '     A.Dt_Entrada, '+
      '     A.For_Codi,   '+
      '     A.CONFERE_OCORRENCIA,    '+
      '     A.CONFERE_CONSEQUENCIA,   '+
      '     A.CONFERE_ACAO, '+
      '     A.CONFERE_RESPONSAVEL, '+
      '     A.CONFERE_OBS  '+
      '  FROM REC_NF A  '+
       ' WHERE A.CONFERE_NC = ''S'' '
       );

       if MaskEdit1.Text <> '  /  /    ' then begin
           sql.Add(' and convert(varchar, A.DT_ENTRADA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));
       end;


       if MaskEdit2.Text <> '  /  /    ' then begin
           sql.Add(' and convert(varchar, A.DT_ENTRADA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));
       end;

       IF   cboForn.Text <> '' then
          sql.Add(' and A.FOR_CODI = ' + QuotedStr(cboForn.LookupValue));

       SQL.Add('ORDER BY A.DT_ENTRADA');

       Open;
   end;

   QuickRep1.Preview;


end;

end.

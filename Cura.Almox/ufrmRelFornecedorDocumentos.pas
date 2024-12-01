unit ufrmRelFornecedorDocumentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, StdCtrls, ExtCtrls, Db, ADODB, Mask;

type
  TfrmRelFornecedorDocumentos = class(TForm)
    RadioGroup1: TRadioGroup;
    qrRel: TADOQuery;
    qrRelID: TAutoIncField;
    qrRelFOR_CODI: TStringField;
    qrRelDOC_ID: TIntegerField;
    qrRelVENCIMENTO: TDateTimeField;
    qrRelOBS: TStringField;
    qrRelDOC_DESC: TStringField;
    QuickRep1: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    Button1: TButton;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    CheckBox1: TCheckBox;
    lbFiltros: TQRLabel;
    QRShape5: TQRShape;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFornecedorDocumentos: TfrmRelFornecedorDocumentos;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelFornecedorDocumentos.Button1Click(Sender: TObject);
var s : string;
begin
  with qrRel do begin
        close;
        sql.Clear;
        sql.Add(
           ' SELECT A.*, DOC_DESC '+
           ' FROM FORNECEDOR_DOCUMENTOS A INNER JOIN DocumentosQualidade B '+
           ' ON A.DOC_ID = B.DOC_ID '
        );
        s := 'Filtros: ';
        if RadioGroup1.ItemIndex = 0 then  s := s + 'Todos os documentos';
        
        if RadioGroup1.ItemIndex = 1 then begin
            sql.Add('where (convert(varchar, vencimento, 112) >= ' +QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))));
            sql.Add('and convert(varchar, vencimento, 112) <= ' +QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))));
            sql.Add(')');
            s := s + 'Documentos com vencimento entre ' + MaskEdit1.Text + ' até ' + MaskEdit2.Text;
            if CheckBox1.Checked then  begin
                sql.Add('  or isnull(convert(varchar, vencimento), '''') = '''' ');
                s := s + ' incluindo vencimento em branco';
            end;
        end;

        if RadioGroup1.ItemIndex = 2 then begin
            sql.Add('where isnull(convert(varchar, vencimento), '''') = '''' ');
            s := s + 'Documentos sem data de vencimento preenchida';
        end;
        sql.Add(' ORDER BY A.FOR_CODI,  B.DOC_DESC ');
        open;

  end;
  lbFiltros.Caption := s;
  QuickRep1.Preview;
end;

procedure TfrmRelFornecedorDocumentos.FormCreate(Sender: TObject);
begin
   Self.Width := 479  ; Self.Height := 300;
end;

procedure TfrmRelFornecedorDocumentos.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = 1 then begin
       MaskEdit1.Visible := True;
       MaskEdit2.Visible := True;
       CheckBox1.Visible := True;
       MaskEdit2.Text := '';
       MaskEdit1.Text := '';
       CheckBox1.Checked := False;
   end
   else begin
       MaskEdit1.Visible := False;
       MaskEdit2.Visible := False;
       CheckBox1.Visible := False;

   end;
end;

end.

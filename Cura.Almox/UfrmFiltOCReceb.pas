unit UfrmFiltOCReceb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, RzPanel, Mask, wwdblook, RzButton, QuickRpt, Db,
  ADODB, Qrctrls, Buttons;

type
  TfrmFiltOCReceb = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtOC1: TEdit;
    edtOC2: TEdit;
    RzGroupBox2: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    RzGroupBox3: TRzGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    RzGroupBox4: TRzGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edtNF1: TEdit;
    edtNF2: TEdit;
    RzGroupBox5: TRzGroupBox;
    RzGroupBox6: TRzGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    RzBitBtn1: TRzBitBtn;
    QuickRep1: TQuickRep;
    qrRel: TADOQuery;
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
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    qrRelORD_ID: TIntegerField;
    qrRelSTATUS: TStringField;
    qrRelFOR_CODI: TStringField;
    qrRelACHEI: TIntegerField;
    qrRelDT_CADASTRO: TDateTimeField;
    qrRelMAT_DESC: TStringField;
    qrRelMARCA_DESC: TStringField;
    qrRelQTDE_COMP: TFloatField;
    qrRelPRECO_UNIT: TFloatField;
    qrRelTOT_OC: TFloatField;
    qrRelUNI_COMP_ID: TIntegerField;
    qrRelREC_ID: TIntegerField;
    qrRelNFIS: TIntegerField;
    qrRelDT_ENTRADA: TDateTimeField;
    qrRelQTDE_REC: TFloatField;
    qrRelPREC_REC: TFloatField;
    qrRelTOT_REC: TFloatField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    lbu: TQRLabel;
    lbu2: TQRLabel;
    lbSaldo: TQRLabel;
    qrFornecedor: TADOQuery;
    qrFornecedorFOR_CODI: TStringField;
    qrFornecedorFOR_RAZA: TStringField;
    qrMaterial: TADOQuery;
    qrMaterialMAT_DESC: TStringField;
    qrMaterialMAT_ID: TAutoIncField;
    qrUnidade: TADOQuery;
    qrUnidadeUNI_ID: TAutoIncField;
    qrUnidadeUNI_SIGLA: TStringField;
    qrUnidadeUNI_DESC: TStringField;
    qrRelMAT_ID: TIntegerField;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRShape4: TQRShape;
    lbTOC: TQRLabel;
    lbTNF: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    lbDif: TQRLabel;
    rg1: TRadioGroup;
    btnGetMaterial: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure edtOC1Change(Sender: TObject);
    procedure edtNF1Change(Sender: TObject);
    function VerificaData(data : string) :  string;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure btnGetMaterialClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmFiltOCReceb: TfrmFiltOCReceb;
  MAT_ID, achei, contador : Integer;
  SALDO : Double;
  TOTALOC, TOTALNF :Double;

implementation

uses UMenu, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmFiltOCReceb.FormCreate(Sender: TObject);
begin
  Self.Height := 405;
  Self.Width  := 620;

  QuickRep1.Top := 630;
  qrFornecedor.Open;
  qrMaterial.Open;
  qrUnidade.Open;
  SALDO :=  0;
  MAT_ID := 0;

end;

procedure TfrmFiltOCReceb.RzBitBtn1Click(Sender: TObject);
var filtrox : string;
begin

 with qrRel do begin
     close;
     sql.Clear;
     sql.Add('SELECT * FROM REL_OC_RECEB where 1 = 1 ');
     filtrox := '';

     if rg1.ItemIndex = 1 then begin
         sql.Add(' AND (status = ''P'' or status = ''A'' )') ;
         filtrox := filtrox + ' STATUS: COM SALDO ';
     end;

     if edtOC1.Text <> '' then begin
        sql.Add('AND ORD_ID >= ' + edtOC1.Text);
        filtrox := filtrox + ' OC ' + edtOC1.Text;
     end;

     IF edtOC2.Text <> '' then begin
        SQL.Add('AND ORD_ID <= ' + edtOC2.Text);
        filtrox := filtrox + ' até ' + edtOC2.Text;
     end;

     if edtNF1.Text <> '' then  begin
        SQL.Add('AND NFIS >= ' + edtNF1.Text);
        filtrox := filtrox + '  NF ' + edtNF1.Text;
     end;

     if edtNF2.Text <> '' then  begin
        SQL.Add('AND NFIS <= ' + edtNF2.Text);
        filtrox := filtrox + ' até ' + edtNF2.Text;
     end;

     if MaskEdit1.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(CHAR(10), DT_CADASTRO, 112) >= ' + QuotedStr(VerificaData(MaskEdit1.Text)));
        filtrox := filtrox + '  Emissão OC '+ MaskEdit1.Text;
     end;

     if MaskEdit2.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(CHAR(10), DT_CADASTRO, 112) <= ' + QuotedStr(VerificaData(MaskEdit2.Text)));
        filtrox := filtrox + '  até OC '+ MaskEdit2.Text;
     end;

     if MaskEdit3.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(CHAR(10), DT_ENTRADA, 112) >= ' + QuotedStr(VerificaData(MaskEdit3.Text)));
        filtrox := filtrox + '  Entrada NF '+ MaskEdit3.Text;
     end;

     if MaskEdit4.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(CHAR(10), DT_ENTRADA, 112) <= ' + QuotedStr(VerificaData(MaskEdit4.Text)));
        filtrox := filtrox + '  até '+ MaskEdit4.Text;
     end;

     IF wwDBLookupCombo1.Text <> '' then begin
        SQL.Add('AND FOR_CODI = ' + QuotedStr(wwDBLookupCombo1.LookupValue));
        filtrox := filtrox + ' Fornecedor ' + wwDBLookupCombo1.Text;
     end;

     IF wwDBLookupCombo2.Text <> '' then begin
        SQL.Add('AND MAT_ID = ' + wwDBLookupCombo2.LookupValue);
        filtrox := filtrox + wwDBLookupCombo2.Text;
     end;

     SQL.Add('ORDER BY ORD_ID, MAT_DESC, ACHEI')  ;
 end;

 TOTALOC := 0;
 TOTALNF := 0;
 contador := 0;
 Filtros.Lines.Add(filtrox);
 qrRel.Open;
 QuickRep1.Preview;
end;

procedure TfrmFiltOCReceb.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrUnidade.Locate('UNI_ID', qrRelUNI_COMP_ID.Value, []);
  lbu.Caption := qrUnidadeUNI_SIGLA.Value;
  lbu2.Caption := qrUnidadeUNI_SIGLA.Value;


  //controle do saldo qd tiver mais de uma nota para o OC
  if MAT_ID = 0 then
     MAT_ID := qrRelMAT_ID.Value;
  //parametro de comparação
  achei := 1;

  if qrRelACHEI.Value > 1 then begin
     contador := contador + 1;

     if contador = 1 then
        SALDO := qrRelQTDE_COMP.Value;

     SALDO := SALDO - qrRelQTDE_REC.Value;

     lbSaldo.Caption := FloatToStr(SALDO);

     if contador = qrRelACHEI.Value then begin
         SALDO := 0;
         MAT_ID := qrRelMAT_ID.Value;
     end;

  end else begin
      MAT_ID := qrRelMAT_ID.Value;
      lbSaldo.Caption := FloatToStr(qrRelQTDE_COMP.Value - qrRelQTDE_REC.Value);
  end;

end;

procedure TfrmFiltOCReceb.edtOC1Change(Sender: TObject);
begin
  edtOC2.Text := edtOC1.Text;
end;



procedure TfrmFiltOCReceb.edtNF1Change(Sender: TObject);
begin
  edtNF2.Text := edtNF1.Text;
end;

function TfrmFiltOCReceb.VerificaData(data: string): string;
var
   datax : TDateTime;
   txt : string;
begin

   txt := '';
   try
       datax := StrToDate(data);
       txt := FormatDateTime('YYYYMMDD', datax);
       Result := txt;
   except
       Result := txt;
       ShowMessage('Data inválida');
       Abort;
   end;

end;

procedure TfrmFiltOCReceb.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTALOC := TOTALOC + qrRelTOT_OC.Value;
  TOTALNF := TOTALNF + qrRelTOT_REC.Value;
end;

procedure TfrmFiltOCReceb.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lbTOC.Caption := FormatFloat('###,###,##0.00', TOTALOC);
   lbTNF.Caption := FormatFloat('###,###,##0.00', TOTALNF);
   lbDif.Caption := FormatFloat('###,###,##0.00', TOTALOC - TOTALNF);
   TOTALOC := 0;
   TOTALNF := 0;
end;

procedure TfrmFiltOCReceb.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         wwDBLookupCombo2.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

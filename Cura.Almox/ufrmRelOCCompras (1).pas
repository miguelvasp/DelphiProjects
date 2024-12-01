unit ufrmRelOCCompras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, StdCtrls, wwdblook, QuickRpt, wwdbedit, Wwdotdot,
  Wwdbcomb, Qrctrls, Db, gtQrCtrls, ADODB;

type
  TfrmRelOCCompras = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    cboForn: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    cboMat: TwwDBLookupCombo;
    edtEmitIni: TMaskEdit;
    edtEmitFim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtEntIni: TMaskEdit;
    Label8: TLabel;
    edtEntFim: TMaskEdit;
    Label9: TLabel;
    cboEmpresa: TwwDBLookupCombo;
    cboStatus: TwwDBComboBox;
    Label10: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
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
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    qrBusca: TADOQuery;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    gtQRDBText6: TgtQRDBText;
    gtQRDBText7: TgtQRDBText;
    gtQRDBText8: TgtQRDBText;
    qrBuscaGRU_DESC: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaFOR_CODI: TStringField;
    qrBuscaORD_ID: TAutoIncField;
    qrBuscaDT_EMISSAO: TDateTimeField;
    qrBuscaDT_ENTREGA: TDateTimeField;
    qrBuscaQtde_Comp: TFloatField;
    qrBuscaQtde_Comp_Rec: TFloatField;
    qrBuscaPreco_Unit: TFloatField;
    QRShape3: TQRShape;
    gtQRLabel1: TgtQRLabel;
    qrFor: TADOQuery;
    qrForFOR_CODI: TStringField;
    qrGrupo: TADOQuery;
    qrGrupoGRU_ID: TAutoIncField;
    qrGrupoGRU_DESC: TStringField;
    qrMateriais: TADOQuery;
    qrEmpresa: TADOQuery;
    qrEmpresaFIL_DESC: TStringField;
    qrEmpresaFIL_CODI: TStringField;
    gtQRLabel2: TgtQRLabel;
    QRLabel14: TQRLabel;
    gtQRDBText9: TgtQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelOCCompras: TfrmRelOCCompras;
  total : real;
implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelOCCompras.FormCreate(Sender: TObject);
begin
    total := 0;
    qrFor.Open;
    qrGrupo.Open;
    qrMateriais.Open;
    qrEmpresa.Open;
end;

procedure TfrmRelOCCompras.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   gtQRLabel1.Caption := 'Valor Total: ' + FormatFloat('###,###,##0.00', total);
   total := 0;
end;

procedure TfrmRelOCCompras.Button1Click(Sender: TObject);
var filtro : string;
begin
   with qrBusca do begin
       Close;
       SQL.Clear;
       sql.Add(
           ' SELECT '+
           '         GM.GRU_DESC, '+
           '         M.MAT_DESC, '+
           '         F.FOR_CODI, '+
           '         OC.ORD_ID, '+
           '         OC.DT_EMISSAO,  '+
           '         OC.DT_ENTREGA,  '+
           '         OCI.Qtde_Comp, '+
           '         isnull(OCI.Qtde_Comp_Rec, 0)Qtde_Comp_Rec, '+
           '         OCI.Preco_Unit  '+
           ' FROM Ordem_Compra OC INNER JOIN Ordem_CompraItem OCI '+
           ' ON OC.ORD_ID = OCI.Ord_ID INNER JOIN MATERIAIS M  '+
           ' ON OCI.Mat_ID = M.MAT_ID INNER JOIN GRUPO_MATERIAL GM  '+
           ' ON M.GRU_ID = GM.GRU_ID INNER JOIN CPAFORN F   '+
           ' ON OC.FOR_CODI = F.FOR_CODI   '+
           ' WHERE 1 = 1 '
       ) ;

       filtro := '';
       if cboForn.Text <> '' then  begin
        sql.Add(' AND F.FOR_CODI = ' + QuotedStr(cboForn.LookupValue));
        filtro := filtro + 'Fornecedor: ' + cboForn.Text;
       end;
       IF cboGrupo.Text <> '' then  begin
        SQL.Add(' AND GM.GRU_ID = ' + cboGrupo.LookupValue);
        filtro := filtro + ' Grupo: ' + cboGrupo.Text;
       end;

       IF cboMat.Text <> '' then  begin
        SQL.Add(' AND M.MAT_ID = ' + cboMat.LookupValue);
        filtro := filtro + ' Material: ' + cboMat.Text;
       end;

       IF edtEmitIni.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(VARCHAR, OC.DT_EMISSAO, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtEmitIni.Text))));
        filtro := filtro + ' Emissão de: ' + edtEmitIni.Text;
       end;

       IF edtEmitFim.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(VARCHAR, OC.DT_EMISSAO, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtEmitFim.Text))));
        filtro := filtro + ' até: ' + edtEmitFim.Text;
       end;

       IF edtEntIni.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(VARCHAR, OC.DT_ENTREGA, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtEntIni.Text))));
        filtro := filtro + ' Entrada de: ' + edtEntIni.Text;
       end;

       IF edtEntFim.Text <> '  /  /    ' then begin
        SQL.Add('AND CONVERT(VARCHAR, OC.DT_ENTREGA, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtEntFim.Text))));
        filtro := filtro + ' até: ' + edtEntFim.Text;
       end;

       if cboEmpresa.Text <> '' then begin
        sql.Add('AND OC.FIL_CODI = ' + QuotedStr(cboEmpresa.LookupValue));
        filtro := filtro + ' Empresa: ' + cboEmpresa.Text;
       end;

       SQL.Add(' AND OC.STATUS = ' + QuotedStr(cboStatus.Value));
       filtro := filtro + ' Status: ' + cboStatus.Text;


       IF RadioGroup1.ItemIndex = 0 then
        SQL.Add('ORDER BY OC.ORD_ID');
       IF RadioGroup1.ItemIndex = 1 then
        SQL.Add('ORDER BY F.FOR_CODI');
       IF RadioGroup1.ItemIndex = 2 then
        sql.Add('ORDER BY GM.GRU_DESC, M.MAT_DESC');

       Open;
   end;
   Filtros.Lines.Clear;
   Filtros.Lines.Text := filtro;
   QuickRep1.Preview;



end;

procedure TfrmRelOCCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelOCCompras := nil;
end;

procedure TfrmRelOCCompras.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

  var qtde, receb, valor, totalRegistro : Real;
begin

 qtde := qrBuscaQtde_Comp.AsFloat        ;
 receb := qrBuscaQtde_Comp_Rec.AsInteger;
 valor:= qrBuscaPreco_Unit.AsFloat;

 totalRegistro := (qtde - receb) * valor;

 gtQRLabel2.Caption := FormatFloat('###,###,##0.00', totalRegistro);
   total  := total + (qrBuscaQtde_Comp.AsInteger - qrBuscaQtde_Comp_Rec.AsInteger) * qrBuscaPreco_Unit.AsFloat;

end;

end.

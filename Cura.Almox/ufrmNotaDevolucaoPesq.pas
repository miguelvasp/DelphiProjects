unit ufrmNotaDevolucaoPesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db, ADODB, wwdblook, Mask, StdCtrls, ComObj,
  Buttons;

type
  TfrmNotaDevolucaoPesq = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    edtNF: TEdit;
    Label1: TLabel;
    edtDe: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtAte: TMaskEdit;
    cboFornecedor: TwwDBLookupCombo;
    qrMaterial: TADOQuery;
    qrMaterialMAT_ID: TAutoIncField;
    qrMaterialMAT_DESC: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    cboMateriais: TwwDBLookupCombo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qrBusca: TADOQuery;
    qrBuscaIdNotaDevolucao: TAutoIncField;
    qrBuscaFornecedor: TStringField;
    qrBuscaNumero: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaMARCA_DESC: TStringField;
    qrBuscaQuantidade: TIntegerField;
    qrBuscaQtdeLote: TIntegerField;
    qrBuscaQtdeLoteBaixada: TIntegerField;
    DataSource1: TDataSource;
    qrBuscaData: TDateTimeField;
    qrExcel: TADOQuery;
    qrExcelData: TDateTimeField;
    qrExcelNumero: TStringField;
    qrExcelFornecedor: TStringField;
    qrExcelMaterial: TStringField;
    qrExcelMarca: TStringField;
    qrExcelLote: TStringField;
    qrExcelValidade: TDateTimeField;
    qrExcelQtde: TIntegerField;
    qrExcelQtdeBaixada: TIntegerField;
    dsExcel: TDataSource;
    btnGetMaterial: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotaDevolucaoPesq: TfrmNotaDevolucaoPesq;

implementation

uses UMenu, ufrmNotaDevolucaoCad, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmNotaDevolucaoPesq.FormShow(Sender: TObject);
begin
   qrForn.Open;
   qrMaterial.Open;
end;

procedure TfrmNotaDevolucaoPesq.wwDBGrid1DblClick(Sender: TObject);
begin
  if qrBuscaIdNotaDevolucao.AsString <> '' then begin
      frmNotaDevolucaoCad := TfrmNotaDevolucaoCad.Create(Self);
      frmNotaDevolucaoCad.edtCodigo.Text := qrBuscaIdNotaDevolucao.AsString;
      frmNotaDevolucaoCad.ShowModal;

  end;
end;

procedure TfrmNotaDevolucaoPesq.Button1Click(Sender: TObject);
begin
      frmNotaDevolucaoCad := TfrmNotaDevolucaoCad.Create(Self);
      frmNotaDevolucaoCad.edtCodigo.Text := '0';
      frmNotaDevolucaoCad.ShowModal;
end;

procedure TfrmNotaDevolucaoPesq.Button2Click(Sender: TObject);
begin
   with qrBusca do begin
       close;
       sql.Clear;
       sql.Add(
            '  SELECT  '+
            '  N.IdNotaDevolucao, n.Fornecedor, n.Data, n.Numero,M.CodigoMaterial + '' '' + M.MAT_DESC AS MAT_DESC, MR.MARCA_DESC, I.Quantidade, SUM(L.Qtde) AS QtdeLote, SUM(l.QtdeBaixada) as QtdeLoteBaixada  '+
            '  FROM NotaDevolucao N   '+
            '  LEFT JOIN NotaDevolucaoItem I ON N.IdNotaDevolucao = I.IdNotaDevolucao   '+
            '  LEFT JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID   '+
            '  LEFT JOIN MARCAS MR ON I.MARCA_ID = MR.MARCA_ID   '+
            '  LEFT JOIN NotaDevolucaoLote L ON I.IdNotaDevolucaoItem = L.IdNotaDevolucaoItem  WHERE 1 = 1 '

       );

       if edtNF.Text <> '' then
        sql.Add(' AND N.NUMERO = ' + QuotedStr(edtNF.Text));

       IF edtDe.Text <> '  /  /    ' then
        SQL.Add(' AND CONVERT(VARCHAR, N.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtDe.Text))));

       IF edtAte.Text <> '  /  /    ' then
        SQL.Add(' AND CONVERT(VARCHAR, N.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtAte.Text))));


       IF cboFornecedor.Text <> '' THEN
        SQL.Add(' AND FORNECEDOR = ' + QuotedStr(cboFornecedor.LookupValue));

       if cboMateriais.Text <> '' then
        sql.Add(' AND I.MAT_ID = ' + cboMateriais.LookupValue);

       sql.Add( '  GROUP BY N.IdNotaDevolucao, n.Fornecedor, n.Data, n.Numero,M.CodigoMaterial, M.MAT_DESC, MR.MARCA_DESC, I.Quantidade order by n.data desc' ) ;
       Open;

   end;
end;

procedure TfrmNotaDevolucaoPesq.Button3Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
   with qrExcel do begin
       Close;
       sql.Clear;
       sql.Add(
          ' SELECT N.Data, N.Numero, N.Fornecedor, M.MAT_DESC Material, MR.MARCA_DESC Marca, L.Lote, L.Validade, L.Qtde, L.QtdeBaixada '+
          ' FROM NotaDevolucao N   '+
          ' INNER JOIN NotaDevolucaoItem I ON N.IdNotaDevolucao = I.IdNotaDevolucao  '+
          ' INNER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID  '+
          ' INNER JOIN MARCAS MR ON I.MARCA_ID = MR.MARCA_ID  '+
          ' LEFT JOIN NotaDevolucaoLote L ON I.IdNotaDevolucaoItem = L.IdNotaDevolucaoItem  '
       );

       if edtNF.Text <> '' then
        sql.Add(' AND N.NUMERO = ' + QuotedStr(edtNF.Text));

       IF edtDe.Text <> '  /  /    ' then
        SQL.Add(' AND CONVERT(VARCHAR, N.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtDe.Text))));

       IF edtAte.Text <> '  /  /    ' then
        SQL.Add(' AND CONVERT(VARCHAR, N.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtAte.Text))));


       IF cboFornecedor.Text <> '' THEN
        SQL.Add(' AND FORNECEDOR = ' + QuotedStr(cboFornecedor.LookupValue));

       if cboMateriais.Text <> '' then
        sql.Add(' AND I.MAT_ID = ' + cboMateriais.LookupValue);

       SQL.Add(' ORDER BY N.NUMERO, M.MAT_DESC');

       Open;

   end;


   excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  dsExcel.DataSet.First;

  linha := 1;
  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;



  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;



end;

procedure TfrmNotaDevolucaoPesq.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrBuscaQtdeLoteBaixada.AsString <> '' then begin
       ABrush.Color := clLime;
       AFont.Color := clBlack;
   end;
end;

procedure TfrmNotaDevolucaoPesq.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMateriais.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

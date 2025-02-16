unit frmHistoricoEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Mask, StdCtrls, Buttons, ExtCtrls, RzPanel, RzRadGrp,
  wwdblook, RzTabs, Grids, Wwdbigrd, Wwdbgrid, ComObj;

type
  TfrmHistEstoque = class(TForm)
    qrGrupo: TADOQuery;
    qrLocal: TADOQuery;
    qrLocalDESCRICAO: TStringField;
    qrLocalLOCAL_ID: TAutoIncField;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisMAT_ID: TAutoIncField;
    QRMARCA: TADOQuery;
    QRMARCAMARCA_DESC: TStringField;
    QRMARCAMARCA_ID: TAutoIncField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cboMateriais: TwwDBLookupCombo;
    cboMarca: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    cboLocal: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label6: TLabel;
    edtData: TMaskEdit;
    qrBusca: TADOQuery;
    qrBuscaDataReferencia: TDateTimeField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaGRU_DESC: TStringField;
    qrBuscaUNI_SIGLA: TStringField;
    qrBuscaLocalDesc: TStringField;
    qrBuscaMarcaDesc: TStringField;
    qrBuscaQTDE: TFloatField;
    wwDBGrid1: TwwDBGrid;
    dsExcel: TDataSource;
    Button1: TButton;
    qrBuscaValorReposicaoUnitario: TFloatField;
    qrBuscaValorReposicaoTotal: TFloatField;
    qrBuscaValorCustoMedioUnitario: TFloatField;
    qrBuscaValorCustoMedioTotal: TFloatField;
    rzImobilizado: TRzRadioGroup;
    btnGetMaterial: TBitBtn;
    chkValor: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Buscar;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistEstoque: TfrmHistEstoque;

implementation

uses UMenu, ufrmRelEstoqueRetroativo, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmHistEstoque.Buscar;
var sql : WideString;
begin
  //

  sql := 'SELECT * FROM vwStoHistoricoEstoque WHERE CONVERT(VARCHAR, DataReferencia, 112) = ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtData.Text)));

  IF cboMateriais.Text <> '' then
        sql := sql + ' AND MAT_ID = ' + cboMateriais.LookupValue;

  if Edit1.Text <> '' THEN
        sql := sql + ' AND MAT_DESC LIKE ' + QuotedStr('%' + Edit1.Text + '%');

  if cboMarca.Text <> '' then
        sql := sql + ' AND MARCA_ID = ' + cboMarca.LookupValue;

  if cboGrupo.Text <> '' then
        sql := sql + ' AND GRU_ID = ' + cboGrupo.LookupValue;

  if cboLocal.Text <> '' then
        SQL := SQL + ' AND LOCAL_ID = ' + cboLocal.LookupValue;

  if rzImobilizado.ItemIndex = 1 then
             SQL := SQL + 'AND MAT_IMOBILIZADO = ''N'' ';

          if rzImobilizado.ItemIndex = 2 then
               SQL := SQL + 'AND MAT_IMOBILIZADO = ''S'' ';

  if chkValor.Checked then
        sql := SQL + ' AND ( ISNULL(ValorReposicaoUnitario, 0.00) > 0 AND ISNULL(ValorCustoMedioUnitario, 0.00) > 0 )'   ;


  sql := sql + ' ORDER BY LocalDesc, GRU_DESC, MAT_DESC';

  qrBusca.Close;
  qrBusca.SQL.Clear;
  qrBusca.SQL.Add(sql);
  qrBusca.Open;


end;

procedure TfrmHistEstoque.FormCreate(Sender: TObject);
begin
        edtData.Text := DateToStr(Now);
        qrMateriais.Open;
        QRMARCA.Open;
        qrGrupo.Open;
        qrLocal.Open;
end;

procedure TfrmHistEstoque.BitBtn1Click(Sender: TObject);
begin
   Buscar;
end;

procedure TfrmHistEstoque.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
    excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  dsExcel.DataSet.First;

  linha := 1;
  //escrevemos os cabe�alhos
 // for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
  //    Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
 // end;
  Excel.Cells[Linha, 1] := 'Data Referencia';
  Excel.Cells[Linha, 2] := 'Local';
  Excel.Cells[Linha, 3] := 'Grupo';
  Excel.Cells[Linha, 4] := 'Material';
  Excel.Cells[Linha, 5] := 'Marca';
  Excel.Cells[Linha, 6] := 'Un';
  Excel.Cells[Linha, 7] := 'Qtde';
  Excel.Cells[Linha, 8] := 'Valor Reposi��o Unit�rio';
  Excel.Cells[Linha, 9] := 'Valor total Reposi��o';
  Excel.Cells[Linha, 10] := 'Valor Custo M�dio Unit�rio';
   Excel.Cells[Linha, 11] := 'Valor total Custo M�dio';
  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsFloat;
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

procedure TfrmHistEstoque.BitBtn2Click(Sender: TObject);
var filtros : string;
begin

  filtros := 'Data Referencia: ' + edtData.Text;
  if cboMateriais.Text <> ''  then
        filtros := filtros + ' Material: ' + cboMateriais.Text;

  if cboMarca.Text <> '' then
        filtros := filtros + ' Marca: ' + cboMarca.Text;

  if cboGrupo.Text <> ''  then
        filtros := filtros + ' Grupo de Materiais: ' + cboGrupo.Text;

  if cboLocal.Text <> '' then
        filtros := filtros + ' Local: ' + cboLocal.Text;

    frmRelEstoqueRetroativo := TfrmRelEstoqueRetroativo.Create(Self);
    frmRelEstoqueRetroativo.lbPosicao.Caption := filtros;
  frmRelEstoqueRetroativo.QuickRep1.Preview;
end;

procedure TfrmHistEstoque.btnGetMaterialClick(Sender: TObject);
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

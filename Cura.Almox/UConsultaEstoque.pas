unit UConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzTabs, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  RzPanel, RzRadGrp, wwdblook, Buttons, ComObj;

type
  TfrmEstoque = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label1: TLabel;
    gridSintetico: TwwDBGrid;
    Qrbusca: TADOQuery;
    qrunidades: TADOQuery;
    qrunidadesuni_id: TAutoIncField;
    qrunidadesuni_SIGLA: TStringField;
    QRMARCA: TADOQuery;
    DataSource1: TDataSource;
    QRMARCAMARCA_ID: TAutoIncField;
    QRMARCAMARCA_DESC: TStringField;
    qrCusto: TADOQuery;
    qrCustoPRECO_UNIT: TFloatField;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    cboMateriais: TwwDBLookupCombo;
    rgStatus: TRzRadioGroup;
    Label2: TLabel;
    cboMarca: TwwDBLookupCombo;
    qrMarcasCombo: TADOQuery;
    cboGrupo: TwwDBLookupCombo;
    Label3: TLabel;
    qrGrupo: TADOQuery;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    qrLocal: TADOQuery;
    qrLocalLOCAL_ID: TAutoIncField;
    qrLocalDESCRICAO: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label5: TLabel;
    RzRadioGroup1: TRzRadioGroup;
    QrbuscaDS_LOC: TStringField;
    QrbuscaGRU_DESC: TStringField;
    QrbuscaMAT_DESC: TStringField;
    QrbuscaUNI_SIGLA: TStringField;
    QrbuscaMARCA_DESC: TStringField;
    QrbuscaQTDE: TFloatField;
    QrbuscaREPOSICAO: TFloatField;
    qrBuscaAnalitico: TADOQuery;
    qrBuscaAnaliticoQTDE: TFloatField;
    qrBuscaAnaliticoMAT_DESC: TStringField;
    qrBuscaAnaliticoGRU_DESC: TStringField;
    qrBuscaAnaliticoMARCA_DESC: TStringField;
    qrBuscaAnaliticoUNI_SIGLA: TStringField;
    qrBuscaAnaliticoDS_LOC: TStringField;
    qrBuscaAnaliticoN_Lote: TWideStringField;
    qrBuscaAnaliticoValid: TDateTimeField;
    qrBuscaAnaliticoREPOSICAO: TFloatField;
    RzRadioGroup2: TRzRadioGroup;
    gridAnalitico: TwwDBGrid;
    dsAnaliico: TDataSource;
    btnExcel: TButton;
    dsExcel: TDataSource;
    QrbuscaLocalArmazem: TStringField;
    qrBuscaAnaliticoLocalArmazem: TStringField;
    rzImobilizado: TRzRadioGroup;
    btnGetMaterial: TBitBtn;
    qrBuscaAnaliticoEstoqueMinimo: TBCDField;
    qrBuscaAnaliticoEstoqueMaximo: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QrbuscaCalcFields(DataSet: TDataSet);
    procedure cboMateriaisExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

uses UMenu, URelatorioEStoque, ufrmRelEstoqueAnalitico, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmEstoque := nil;
end;

procedure TfrmEstoque.FormCreate(Sender: TObject);
begin
  qrunidades.Open;
  QRMARCA.Open;
  qrMateriais.Open;
  qrGrupo.Open;
  qrMarcasCombo.Open;
  qrLocal.Open;
end;

procedure TfrmEstoque.QrbuscaCalcFields(DataSet: TDataSet);
begin
 { qrCusto.Close;
  qrCusto.Parameters[0].Value := QrbuscaMAT_ID.Value;
  qrCusto.Parameters[1].Value := QrbuscaMARCA_ID.AsInteger;
  qrCusto.Open;
  Qrbuscaultimo_custo.Value   := qrCustoPRECO_UNIT.Value;
  QrbuscaVlrTotal.AsFloat := QrbuscaQTDE.AsFloat * Qrbuscaultimo_custo.Value; }
end;

procedure TfrmEstoque.cboMateriaisExit(Sender: TObject);
begin
  if cboMateriais.Text = '' then
        cboMateriais.LookupValue := '';

  if cboMateriais.LookupValue <> '' then
        cboMateriais.Text := qrMateriaisMAT_DESC.Value;
end;

procedure TfrmEstoque.BitBtn1Click(Sender: TObject);
begin
  if RzRadioGroup1.ItemIndex = 0 then
  begin
      gridSintetico.Visible := True;
      gridSintetico.Align := alClient;
      gridAnalitico.Align := alNone;
      gridAnalitico.Visible := False;
      with Qrbusca do
      begin
          Close;
          SQL.Clear;
          SQL.Add(
              ' SELECT  '+
              ' 	DS_LOC,  '+
              ' 	GRU_DESC,  '+
              ' 	CodigoMaterial + '' '' + MAT_DESC AS MAT_DESC,  '+
              ' 	UNI_SIGLA, '+
              ' 	MARCA_DESC, LocalArmazem, '+
              ' 	SUM(ISNULL(QTDE, 0.00)) QTDE,  '+
              ' 	SUM(ISNULL(QTDE, 0.00) * ISNULL(DBO.FNGETVALORREPOSICAO(MAT_ID, MARCA_ID, DATA), 0.00)) AS REPOSICAO  '+
              ' FROM vwEstoque  WHERE 1 = 1 '
          );

          if rgStatus.ItemIndex = 0 then
                SQL.Add(' and QTDE  = 0');

          if rgStatus.ItemIndex = 1 then
                SQL.Add(' and QTDE  > 0');

          if cboMateriais.Text <> '' then
                SQL.Add(' and mat_id = ' + cboMateriais.LookupValue);


          IF Edit1.Text <> '' then
                SQL.Add('AND MAT_DESC LIKE ' + QuotedStr('%' + Edit1.Text + '%') );

          if cboMarca.Text <> '' then
                sql.Add(' and marca_id = ' + cboMarca.LookupValue);

          if cboGrupo.Text <> '' then
                sql.Add('and gru_id = ' + cboGrupo.LookupValue);

          if cboLocal.Text <> '' then
                sql.Add('and local_id = ' + cboLocal.LookupValue) ;

          if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');

          sql.Add('GROUP BY DS_LOC, GRU_DESC, CodigoMaterial, MAT_DESC, UNI_SIGLA, MARCA_DESC, LocalArmazem ');
          if RzRadioGroup2.ItemIndex = 0 then
                SQL.Add('ORDER BY GRU_DESC, MAT_DESC')
          else
                SQL.Add('ORDER BY MAT_DESC');
          Open;

      end;
  end
  else
  begin

      gridSintetico.Visible := FALSE;
      gridSintetico.Align := alNone;
      gridAnalitico.Align := alClient;
      gridAnalitico.Visible := True;
      with qrBuscaAnalitico do begin
          close;
          sql.Clear;
                    SQL.Add(
              ' SELECT  '+
              ' 	DS_LOC,  '+
              ' 	GRU_DESC,  '+
              ' 	E.CodigoMaterial + '' '' + E.MAT_DESC AS MAT_DESC,  '+
              ' 	UNI_SIGLA, '+
              ' 	MARCA_DESC, N_LOTE, VALID, E.LocalArmazem,MAT_ESTMIN EstoqueMinimo, MAT_ESTMAX EstoqueMaximo,'+
              ' 	SUM(ISNULL(QTDE, 0.00)) QTDE,  '+
              ' 	SUM(ISNULL(QTDE, 0.00) * ISNULL(DBO.FNGETVALORREPOSICAO(E.MAT_ID, MARCA_ID, DATA), 0.00)) AS REPOSICAO  '+
              ' FROM vwEstoque E INNER JOIN MATERIAIS M ON E.MAT_ID = M.MAT_ID WHERE 1 = 1 '
          );
          if rgStatus.ItemIndex = 0 then
                SQL.Add(' and E.QTDE  = 0');

          if rgStatus.ItemIndex = 1 then
                SQL.Add(' and E.QTDE  > 0');

          if cboMateriais.Text <> '' then
                SQL.Add(' and E.mat_id = ' + cboMateriais.LookupValue);

          IF Edit1.Text <> '' then
                SQL.Add('AND E.MAT_DESC LIKE ' + QuotedStr('%' + Edit1.Text + '%') );

          if cboMarca.Text <> '' then
                sql.Add(' and E.marca_id = ' + cboMarca.LookupValue);

          if cboGrupo.Text <> '' then
                sql.Add('and E.gru_id = ' + cboGrupo.LookupValue);

          if cboLocal.Text <> '' then
                sql.Add('and E.local_id = ' + cboLocal.LookupValue) ;

          if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND E.MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND E.MAT_IMOBILIZADO = ''S'' ');


          sql.Add('GROUP BY E.DS_LOC, E.GRU_DESC, E.CodigoMaterial, E.MAT_DESC, E.UNI_SIGLA, E.MARCA_DESC, E.N_LOTE, E.VALID,E.LocalArmazem,MAT_ESTMIN, MAT_ESTMAX ');

          if RzRadioGroup2.ItemIndex = 0 then
                SQL.Add('ORDER BY GRU_DESC, MAT_DESC')
          else
                SQL.Add('ORDER BY MAT_DESC');
          Open;
      end;
 

  end;
end;

procedure TfrmEstoque.BitBtn2Click(Sender: TObject);
var f : string;
begin
   f := '';
   if rgStatus.ItemIndex = 0 then
        f := 'Filtros: Status: Sem Saldo'
   else if rgStatus.ItemIndex = 1 then
        f := 'Filtros: Status: Com Saldo'
   else
        f := 'Filtros: Status: Todos';

   if cboMateriais.Text <> '' then
        f := f + '  -  Material: ' + cboMateriais.Text;

   if cboMarca.Text <> '' then
        f := f + '  -  Marca: ' + cboMarca.Text;

   if cboGrupo.Text <> '' then
        f := f + '  -  Grupo: ' + cboGrupo.Text;

   if cboLocal.Text <> '' then
        f := f + '  -  Local: ' + cboLocal.Text;

   if RzRadioGroup1.ItemIndex = 0 then begin
       frmRelatorioEStoque := TfrmRelatorioEStoque.Create(Self);
       frmRelatorioEStoque.lbFiltros.Caption := f;
       frmRelatorioEStoque.QuickRep1.Preview;
   end
   else
   begin
       frmRelEstoqueAnalitico := TfrmRelEstoqueAnalitico.Create(Self);
       frmRelEstoqueAnalitico.lbFiltros.Caption := f;
       frmRelEstoqueAnalitico.QuickRep1.Preview;
   end

end;

procedure TfrmEstoque.btnExcelClick(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

   linha := 1;

  if RzRadioGroup1.ItemIndex = 0 then begin
    dsExcel.DataSet := Qrbusca;
    Excel.Cells[Linha, 1] := 'Local';
    Excel.Cells[Linha, 2] := 'Grupo';
    Excel.Cells[Linha, 3] := 'Material';
    Excel.Cells[Linha, 4] := 'Marca';
    Excel.Cells[Linha, 5] := 'Local Armazen';
    Excel.Cells[Linha, 6] := 'Unidade';
    Excel.Cells[Linha, 7] := 'Qtde';
    Excel.Cells[Linha, 8] := 'Valor Reposição';
  end
  else begin
    dsExcel.DataSet := qrBuscaAnalitico;
    Excel.Cells[Linha, 1] := 'Local';
    Excel.Cells[Linha, 2] := 'Grupo';
    Excel.Cells[Linha, 3] := 'Material';
    Excel.Cells[Linha, 4] := 'Marca';
    Excel.Cells[Linha, 5] := 'Unidade';
    Excel.Cells[Linha, 6] := 'Lote';
    Excel.Cells[Linha, 7] := 'Validade';
    Excel.Cells[Linha, 8] := 'Qtde';
    Excel.Cells[Linha, 9] := 'Reposição';
    Excel.Cells[Linha, 10] := 'Total';
    Excel.Cells[Linha, 11] := 'Local Armazem';
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

procedure TfrmEstoque.btnGetMaterialClick(Sender: TObject);
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

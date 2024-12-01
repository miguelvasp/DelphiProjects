unit UConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzTabs, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  RzPanel, RzRadGrp, wwdblook, Buttons;

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
    qrBuscaAnaliticoTOTAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QrbuscaCalcFields(DataSet: TDataSet);
    procedure cboMateriaisExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qrBuscaAnaliticoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

uses UMenu, URelatorioEStoque, ufrmRelEstoqueAnalitico;

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
              ' 	MAT_DESC,  '+
              ' 	UNI_SIGLA, '+
              ' 	MARCA_DESC, '+
              ' 	SUM(ISNULL(QTDE, 0.00)) QTDE,  '+
              ' 	SUM(ISNULL(QTDE, 0.00) * ISNULL(REPOSICAO, 0.00)) AS REPOSICAO  '+
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
          sql.Add('GROUP BY DS_LOC, GRU_DESC, MAT_DESC, UNI_SIGLA, MARCA_DESC ');
          if RzRadioGroup2.ItemIndex = 0 then
                SQL.Add('ORDER BY GRU_DESC, MAT_DESC')
          else
                SQL.Add('ORDER BY MAT_DESC');
          Open;

      end;
  end
  else
  begin
    IF cboMateriais.Text <> '' then begin
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
              ' 	MAT_DESC,  '+
              ' 	UNI_SIGLA, '+
              ' 	MARCA_DESC, N_LOTE, VALID, '+
              ' 	SUM(ISNULL(QTDE, 0.00)) QTDE,  '+
              ' 	SUM(ISNULL(QTDE, 0.00) * ISNULL(REPOSICAO, 0.00)) AS REPOSICAO  '+
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
          sql.Add('GROUP BY DS_LOC, GRU_DESC, MAT_DESC, UNI_SIGLA, MARCA_DESC, N_LOTE, VALID ');

          if RzRadioGroup2.ItemIndex = 0 then
                SQL.Add('ORDER BY GRU_DESC, MAT_DESC')
          else
                SQL.Add('ORDER BY MAT_DESC');
          Open;
      end;
    end
    else
        ShowMessage('Para consulta anlítica é necessário informar o material');

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

procedure TfrmEstoque.qrBuscaAnaliticoCalcFields(DataSet: TDataSet);
begin
   qrBuscaAnaliticoTOTAL.Value := qrBuscaAnaliticoQTDE.Value * qrBuscaAnaliticoREPOSICAO.Value;
end;

end.

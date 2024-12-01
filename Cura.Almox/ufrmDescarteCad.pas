unit ufrmDescarteCad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Buttons, ExtCtrls, Db, RzTabs, ADODB, StdCtrls, wwdblook, Grids,
  Wwdbigrd, Wwdbgrid, DBTables, wwstorep, Mask;

type
  TfrmDescarteCad = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    dsCadastro: TDataSource;
    qrDescarte: TADOQuery;
    qrItens: TADOQuery;
    qrDescarteId: TAutoIncField;
    qrDescarteLocalID: TIntegerField;
    qrDescarteCC_ID: TIntegerField;
    qrDescarteData: TDateTimeField;
    qrDescarteCH: TIntegerField;
    qrMaterial: TADOQuery;
    qrMaterialMAT_DESC: TStringField;
    qrMaterialMAT_ID: TAutoIncField;
    qrMaterialUNI_SIGLA: TStringField;
    qrLocal: TADOQuery;
    qrLocalDescricao: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    Panel1: TPanel;
    Label14: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label9: TLabel;
    cboCCPesq: TwwDBLookupCombo;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    edtCodigo: TEdit;
    qrLocalizaEAN: TADOQuery;
    qrLocalizaEANMAT_ID: TAutoIncField;
    qrEstoque: TADOQuery;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisGRU_ID: TIntegerField;
    qrMateriaisUNI_ID: TIntegerField;
    qrMateriaisMAT_IPI: TFloatField;
    qrMateriaisMAT_CONTROLA: TStringField;
    qrMateriaisMAT_ESTMIN: TFloatField;
    qrMateriaisMAT_LOTEPED: TFloatField;
    qrMateriaisMAT_LOCACAO: TStringField;
    qrMateriaisCusto_Medio: TFloatField;
    qrMateriaisGENERICO: TStringField;
    qrMateriaisMAT_ATIVO: TStringField;
    qrMateriaisMAT_ESTMAX: TFloatField;
    qrMateriaisCONTROLA_GRUPO: TStringField;
    qrMateriaisCOD_BIONEXO: TStringField;
    qrMateriaisRelConsumo: TStringField;
    qrMateriaisCritico: TStringField;
    qrMateriaisMatLaboratorio: TStringField;
    qrMateriaisEAN: TStringField;
    qrMateriaisLocalArmazem: TStringField;
    qrMateriaisValorContrato: TFloatField;
    qrMateriaisUNI_ID_1: TAutoIncField;
    qrMateriaisUNI_SIGLA: TStringField;
    qrMateriaisUNI_DESC: TStringField;
    qrAux: TADOQuery;
    qrEstoqueId: TLargeintField;
    qrEstoqueQtde: TBCDField;
    qrEstoqueMAT_ID: TIntegerField;
    qrEstoqueMAT_DESC: TStringField;
    qrEstoqueGRU_DESC: TStringField;
    qrEstoqueGRU_ID: TIntegerField;
    qrEstoqueUNI_ID: TIntegerField;
    qrEstoqueMARCA_DESC: TStringField;
    qrEstoqueUNI_SIGLA: TStringField;
    qrEstoqueDS_LOC: TStringField;
    qrEstoqueMARCA_ID: TIntegerField;
    qrEstoqueN_Lote: TStringField;
    qrEstoqueValid: TDateTimeField;
    qrEstoqueREPOSICAO: TBCDField;
    qrEstoqueEAN: TStringField;
    qrEstoqueFor_Codi: TStringField;
    qrEstoqueCH: TIntegerField;
    qrEstoqueQtdeSolicitada: TIntegerField;
    qrItensId: TAutoIncField;
    qrItensIdDescarte: TIntegerField;
    qrItensMAT_ID: TIntegerField;
    qrItensMARCA_ID: TIntegerField;
    qrItensLOTE: TStringField;
    qrItensVALIDADE: TDateTimeField;
    qrItensQuantidade: TIntegerField;
    qrItensReposicao: TBCDField;
    qrItensStatus: TStringField;
    SP_AJALM: TwwStoredProc;
    qrItensFornecedor: TStringField;
    qrGrid: TADOQuery;
    DataSource1: TDataSource;
    dsDescarte: TDataSource;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrCentroCusto: TADOQuery;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoFinancSN: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    qrGridMAT_DESC: TStringField;
    qrGridMARCA_DESC: TStringField;
    qrGridQuantidade: TIntegerField;
    qrGridLOTE: TStringField;
    qrGridVALIDADE: TDateTimeField;
    qrGridStatus: TStringField;
    cboMotivo: TwwDBLookupCombo;
    qrMotivos: TADOQuery;
    qrMotivosId: TAutoIncField;
    qrMotivosDescricao: TStringField;
    Label2: TLabel;
    qrItensIdMotivoDescarte: TIntegerField;
    qrBarras: TADOQuery;
    qrBarrasID: TAutoIncField;
    qrBarrasMAT_ID: TIntegerField;
    qrBarrasN_LOTE: TStringField;
    qrBarrasVALIDADE: TDateTimeField;
    qrBarrasMARCA_ID: TIntegerField;
    qrBarrasFOR_CODI: TStringField;
    qrBarrasQTDE: TIntegerField;
    qrBarrasREC_ID: TIntegerField;
    qrBarrasIMPRESSAO: TStringField;
    qrBarrasQTDE_SEL: TIntegerField;
    qrBarrasREC_NF: TStringField;
    qrBarrasREC_DATA: TDateTimeField;
    qrMaterialEstoque: TADOQuery;
    qrMaterialEstoqueMAT_ID: TIntegerField;
    qrMaterialEstoqueMAT_DESC: TStringField;
    cboMaterialSeleciona: TwwDBLookupCombo;
    qrBuscaReposicao: TADOQuery;
    qrBuscaReposicaoReposicao: TBCDField;
    qrLocalReferente: TADOQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    Label3: TLabel;
    cboLocalReferente: TwwDBLookupCombo;
    qrDescarteLocalReferenteId: TIntegerField;
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure LerEAN;
    procedure LerCodigoBarras;
    procedure LerCombo;
    procedure BaixarEstoque;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescarteCad: TfrmDescarteCad;

implementation

uses UMenu, ufrmSelecionaLoteEAN;

{$R *.DFM}

procedure TfrmDescarteCad.btnFirstClick(Sender: TObject);
begin
   dsCadastro.DataSet.First;
end;

procedure TfrmDescarteCad.btnPriorClick(Sender: TObject);
begin
dsCadastro.DataSet.Prior;
end;

procedure TfrmDescarteCad.btnNextClick(Sender: TObject);
begin
dsCadastro.DataSet.Next;
end;

procedure TfrmDescarteCad.btnLastClick(Sender: TObject);
begin
dsCadastro.DataSet.Last;
end;

procedure TfrmDescarteCad.btnAddClick(Sender: TObject);
begin
dsCadastro.DataSet.Append;
end;

procedure TfrmDescarteCad.btnPostClick(Sender: TObject);
begin
dsCadastro.DataSet.Post;
end;

procedure TfrmDescarteCad.btnDeleteClick(Sender: TObject);
begin
dsCadastro.DataSet.Delete;
end;

procedure TfrmDescarteCad.SpeedButton5Click(Sender: TObject);
begin
dsCadastro.DataSet.Cancel;
end;

procedure TfrmDescarteCad.LerEAN;
var achei : Boolean;
ean, EANsemZero: string;
I : Integer;
begin

  if edtCodigo.Text = '' then begin
      ShowMessage('Informe o código');
      Abort;
  end;

  achei := False;
    ean := '';
    for i := 0 to Length(Trim(edtCodigo.Text)) do
    begin
        if achei = False then begin
            if (Trim(edtCodigo.Text)[i] <> ' ') then begin
              if   (Trim(edtCodigo.Text)[i] <> #0)    then
                ean := ean + Trim(edtCodigo.Text)[i];
            end
            else begin
                achei := True;
            end;
        end;

    end;

    if copy(ean, 1,1 ) = '0' then
        EANsemZero := Copy(ean, 2, Length(ean))
    else
        EANsemZero := ean;

    qrLocalizaEAN.Close;
    qrLocalizaEAN.Parameters[0].Value := ean;
    qrLocalizaEAN.Parameters[1].Value := EANsemZero    ;
    qrLocalizaEAN.Parameters[2].Value := ean;
    qrLocalizaEAN.Open;

    if qrLocalizaEANMAT_ID.AsString = '' then begin
        ShowMessage('Material não localizado');
        Abort;
    end;

   with qrAux do begin
       Close;
       sql.Clear;
       sql.Add('EXEC STP_DescarteMateriaisConsulta ' + FMenu.sqlUsuariosCH.AsString + ', ' + qrLocalizaEANMAT_ID.AsString + ', ' + qrDescarteLocalID.AsString);
       ExecSQL;
   end;


    with qrEstoque do begin
        Close;
        Parameters[0].Value := FMenu.sqlUsuariosch.AsInteger;
        Open;
    end;

   if qrEstoque.RecordCount = 0 then begin
        ShowMessage('Código EAN sem Estoque');
        edtCodigo.Text := '';
        edtCodigo.SetFocus;
        Abort;
   end
   else if qrEstoque.RecordCount > 0 then begin
        frmSelecionaLoteEAN := TfrmSelecionaLoteEAN.Create(Self);
        frmSelecionaLoteEAN.DataSource1.DataSet := qrEstoque;
        frmSelecionaLoteEAN.ShowModal;
   end ;

    qrMateriais.Close;
    qrMateriais.Parameters[0].Value := qrEstoqueMAT_ID.AsInteger;
    qrMateriais.Open;


    if qrEstoque.State in [dsedit] then
        qrEstoque.Post;

    qrEstoque.First;
    while not qrEstoque.Eof do begin

        if qrEstoqueQtdeSolicitada.AsInteger > 0 then begin

            qrItens.Append;
            qrItensIdDescarte.AsInteger := qrDescarteId.Asinteger;
            qrItensMAT_ID.Value := qrEstoqueMAT_ID.asinteger;
            qrItensMARCA_ID.Value := qrEstoqueMARCA_ID.asinteger;
            qrItensLOTE.Value := qrEstoqueN_Lote.AsString;
            qrItensVALIDADE.Value := qrEstoqueValid.AsDateTime;
            qrItensQuantidade.Value := qrEstoqueQtdeSolicitada.AsInteger;
            qrItensStatus.Value := 'A';
            qrItensFornecedor.Value := qrEstoqueFor_Codi.AsString;
            qrItensIdMotivoDescarte.Value := StrToInt(cboMotivo.LookupValue);

            qrItens.Post;
            BaixarEstoque;

        end;

        qrEstoque.Next;
    end;

   qrGrid.Close;
   qrGrid.Parameters[0].Value := qrDescarteId.AsInteger;
   qrGrid.Open;

   edtCodigo.Text := '';
   edtCodigo.SetFocus;

end;

procedure TfrmDescarteCad.BaixarEstoque;
begin
    SP_AJALM.ParamByName('@TD_ID').Value := 23;
    SP_AJALM.ParamByName('@DOCTO').Value := qrDescarteId.AsString;
    SP_AJALM.ParamByName('@N_LOTE').Value := qrItensLOTE.AsString;
    SP_AJALM.ParamByName('@QTDE').Value := qrItensQuantidade.AsFloat;
    SP_AJALM.ParamByName('@MAT_ID').Value := qrItensMAT_ID.AsString;
    SP_AJALM.ParamByName('@FOR_CODI').Value := qrItensFornecedor.AsString;
    SP_AJALM.ParamByName('@MOT_ID').Value := Null;
    SP_AJALM.ParamByName('@TIPO').Value := 'B';
    SP_AJALM.ParamByName('@USUARIO').Value := FMenu.sqlUsuariosNome.AsString;
    SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
    SP_AJALM.ParamByName('@DATAX').Value := Null;
    SP_AJALM.ParamByName('@MARCA_ID').Value := qrItensMARCA_ID.AsString;
    SP_AJALM.ParamByName('@LOCAL_ID').Value := qrDescarteLocalID.Value;
    SP_AJALM.ParamByName('@VALID').Value := formatdatetime('DD-MM-YYYY',strtodate(qrItensVALIDADE.AsString)) ;
    SP_AJALM.ExecProc;

    If SP_AJALM.ParamByName('@MSG').value <> 'OK' then
       MessageDlg(SP_AJALM.ParamByName('@MSG').Value,mtWarning,[MbOk],0)
    else begin

       qrBuscaReposicao.Close;
       qrBuscaReposicao.Parameters[0].Value := qrItensMAT_ID.AsInteger;
       qrBuscaReposicao.Parameters[1].Value := qrItensMARCA_ID.AsInteger;
       qrBuscaReposicao.Open;

       qrItens.Edit;
       qrItensReposicao.AsFloat := qrBuscaReposicaoReposicao.asfloat;
       qrItensStatus.Value := 'F';
       qrItens.Post;
    end;
end;

procedure TfrmDescarteCad.Button1Click(Sender: TObject);
begin
   if cboLocal.Text = '' then begin
       ShowMessage('Informe o Local');
       Abort;
   end;

   if cboCCPesq.Text = '' then begin
       ShowMessage('Informe o Centro de Custo');
       Abort;
   end;

   //qrDescarte.Append;
   qrDescarteCH.Value := FMenu.sqlUsuariosCH.AsInteger;
   qrDescarteData.Value := Now;
   qrDescarte.Post;

   Button1.Enabled := False;

   qrGrid.Close;
   qrGrid.Parameters[0].Value := qrDescarteId.AsInteger;
   qrGrid.Open;

   Button2.Enabled := True;

end;

procedure TfrmDescarteCad.FormShow(Sender: TObject);
begin
     qrMotivos.Open;

     qrMaterialEstoque.close;
     qrMaterialEstoque.Parameters[0].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
     qrMaterialEstoque.Open;

     
     qrLocal.close;
     qrLocal.Parameters[0].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
     qrLocal.Open;

     qrLocalReferente.Close;
     qrLocalReferente.Open;

     if FMenu.sqlUsuariosLOCAL_ID.AsInteger <> 1 then
        cboLocalReferente.Enabled := False;

     if qrLocalCONTROLA_ESTOQUE.AsString <> 'S' then begin
         ShowMessage('O local vinculado ao seu login não efetua controle de estoque!');
         Self.Close;
     end;

     qrCentroCusto.Close;
     qrCentroCusto.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
     qrCentroCusto.Open;

     qrDescarte.Open;
     qrDescarte.Last;

     if qrDescarte.RecordCount = 0 then begin
         Button2.Enabled := False;
     end
     else begin
         Button1.Enabled := False;
         qrGrid.Close;
         qrGrid.Parameters[0].Value := qrDescarteId.AsInteger;
         qrGrid.Open;

     end;

     qrItens.Open;
 
end;

procedure TfrmDescarteCad.Button2Click(Sender: TObject);
begin
   if cboMotivo.Text = '' then begin
       ShowMessage('Informe o motivo do descarte do material');
       Abort;
   end;

   if RadioGroup1.ItemIndex = 0 then
        LerEAN;

   if RadioGroup1.ItemIndex = 1 then
        LerCodigoBarras;

   if RadioGroup1.ItemIndex = 2 then
        LerCombo;

end;

procedure TfrmDescarteCad.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   IF qrGridStatus.AsString = 'Em Aberto' then
        ABrush.Color := clRed;
    IF qrGridStatus.AsString = 'Baixado' then
        ABrush.Color := clGreen;

end;

procedure TfrmDescarteCad.LerCodigoBarras;
begin
    qrBarras.Close;
    qrBarras.Parameters[0].Value := StrToInt(edtCodigo.Text);
    qrBarras.Open;

    if qrBarras.IsEmpty then begin
       ShowMessage('Material não encontrado');
    end
    else begin

        qrMateriais.Close;
        qrMateriais.Parameters[0].Value := qrBarrasMAT_ID.AsInteger;
        qrMateriais.Open;


        qrItens.Append;
        qrItensIdDescarte.AsInteger := qrDescarteId.Asinteger;
        qrItensMAT_ID.Value := qrBarrasMAT_ID.Value;
        qrItensMARCA_ID.Value := qrBarrasMARCA_ID.Value;
        qrItensLOTE.Value := qrBarrasN_LOTE.Value;
        qrItensVALIDADE.Value := qrBarrasVALIDADE.Value;
        qrItensQuantidade.Value := 1;
        qrItensStatus.Value := 'A';
        qrItensFornecedor.Value := qrBarrasFOR_CODI.Value;
        qrItensIdMotivoDescarte.Value := StrToInt(cboMotivo.LookupValue);
        qrItens.Post;


        BaixarEstoque;

        qrGrid.Close;
        qrGrid.Parameters[0].Value := qrDescarteId.AsInteger;
        qrGrid.Open;

        edtCodigo.Text := '';
        edtCodigo.SetFocus;

    end;
end;

procedure TfrmDescarteCad.LerCombo;
begin
 if cboMaterialSeleciona.Text = '' then begin
      ShowMessage('Informe o código');
      Abort;
  end;



   with qrAux do begin
       Close;
       sql.Clear;
       sql.Add('EXEC STP_DescarteMateriaisConsulta ' + FMenu.sqlUsuariosCH.AsString + ', ' + cboMaterialSeleciona.LookupValue + ', ' + qrDescarteLocalID.AsString);
       ExecSQL;
   end;


    with qrEstoque do begin
        Close;
        Parameters[0].Value := FMenu.sqlUsuariosch.AsInteger;
        Open;
    end;

   if qrEstoque.RecordCount = 0 then begin
        ShowMessage('Material sem Estoque');
        cboMaterialSeleciona.Text := '';
        Abort;
   end
   else if qrEstoque.RecordCount > 0 then begin
        frmSelecionaLoteEAN := TfrmSelecionaLoteEAN.Create(Self);
        frmSelecionaLoteEAN.DataSource1.DataSet := qrEstoque;
        frmSelecionaLoteEAN.ShowModal;
   end ;

    qrMateriais.Close;
    qrMateriais.Parameters[0].Value := qrEstoqueMAT_ID.AsInteger;
    qrMateriais.Open;


    if qrEstoque.State in [dsedit] then
        qrEstoque.Post;

    qrEstoque.First;
    while not qrEstoque.Eof do begin

        if qrEstoqueQtdeSolicitada.AsInteger > 0 then begin

            qrItens.Append;
            qrItensIdDescarte.AsInteger := qrDescarteId.Asinteger;
            qrItensMAT_ID.Value := qrEstoqueMAT_ID.asinteger;
            qrItensMARCA_ID.Value := qrEstoqueMARCA_ID.asinteger;
            qrItensLOTE.Value := qrEstoqueN_Lote.AsString;
            qrItensVALIDADE.Value := qrEstoqueValid.AsDateTime;
            qrItensQuantidade.Value := qrEstoqueQtdeSolicitada.AsInteger;
            qrItensStatus.Value := 'A';
            qrItensFornecedor.Value := qrEstoqueFor_Codi.AsString;
            qrItensIdMotivoDescarte.Value := StrToInt(cboMotivo.LookupValue);
            qrItens.Post;
            BaixarEstoque;

        end;

        qrEstoque.Next;
    end;

   qrGrid.Close;
   qrGrid.Parameters[0].Value := qrDescarteId.AsInteger;
   qrGrid.Open;

   cboMaterialSeleciona.Text := '';
   //cboMaterialSeleciona.SetFocus;
end;

procedure TfrmDescarteCad.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = 0 then begin
       edtCodigo.Visible := True;
       cboMaterialSeleciona.Visible := False;
   end;

   if RadioGroup1.ItemIndex = 1 then begin
       edtCodigo.Visible := True;
       cboMaterialSeleciona.Visible := False;
   end;

   if RadioGroup1.ItemIndex = 2 then begin
       edtCodigo.Visible := False;
       cboMaterialSeleciona.Visible := True;
   end;
end;

end.

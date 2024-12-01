unit UCOTACAO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RzTabs, Grids, Wwdbigrd, Wwdbgrid, Db, Mask,
  DBCtrls, ADODB, RzEdit, wwdblook, RzPanel, RzRadGrp, RzButton, RzRadChk;

type
  TfrmCotacao = class(TForm)
    pnlTools: TPanel;
    btnGeraAutomatico: TBitBtn;
    btnNovo: TBitBtn;
    pnlCadastro: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    qrCotacao: TADOQuery;
    qrCotacaoCOT_ID: TAutoIncField;
    qrCotacaoDATA_CRIACAO: TDateTimeField;
    qrCotacaoDATA_ENVIO: TDateTimeField;
    qrCotacaoCHAVE: TStringField;
    qrCotacaoSTATUS: TIntegerField;
    qrCotacaoOC_ENVIADA: TIntegerField;
    dsCotacao: TDataSource;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    qrItens: TADOQuery;
    qrItensITEM: TAutoIncField;
    qrItensCOT_ID: TIntegerField;
    qrItensMAT_ID: TIntegerField;
    qrItensQTDE_SOL: TFloatField;
    qrItensFORNECEDOR: TStringField;
    qrItensUNI_CONSUMO: TIntegerField;
    qrItensPRECO: TFloatField;
    qrItensQTDE_MOV: TFloatField;
    qrItensPRECO_UNITARIO: TFloatField;
    qrItensQTDE_CONVERSAO: TFloatField;
    qrItensUNI_COMPRA: TIntegerField;
    qrItensPRAZO_ENTREGA: TStringField;
    qrItensCOND_PGTO: TStringField;
    qrExecCotacao: TADOQuery;
    dsItens: TDataSource;
    qrFornecedor: TADOQuery;
    qrFornecedorFOR_CODI: TStringField;
    qrItensMATERIAL: TStringField;
    qrExecSolicitacao: TADOQuery;
    qrVerificaSolicitacao: TADOQuery;
    qrVerificaSolicitacaoACHEI: TIntegerField;
    qrItensSEL: TStringField;
    qrUnidade: TADOQuery;
    qrUnidadeUNI_ID: TAutoIncField;
    qrItensuni_comdesc: TStringField;
    qrUnidadeUNI_sigla: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    TabSheet3: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TabSheet2: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    pnlConsulta: TPanel;
    RzPageControl3: TRzPageControl;
    TabSheet4: TRzTabSheet;
    rgStatus: TRzRadioGroup;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    cboSearchMaterial: TwwDBLookupCombo;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    Label8: TLabel;
    MaskEdit2: TMaskEdit;
    Label9: TLabel;
    cboSearchFornecedor: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    qrBusca: TADOQuery;
    dsBusca: TDataSource;
    qrBuscaCOT_ID: TAutoIncField;
    qrBuscaDATA_CRIACAO: TDateTimeField;
    qrBuscaDATA_ENVIO: TDateTimeField;
    qrBuscaCHAVE: TStringField;
    qrBuscaSTATUS: TIntegerField;
    qrBuscaOC_ENVIADA: TIntegerField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaFORNECEDOR: TStringField;
    qrBuscaQTDE_SOL: TFloatField;
    qrOC: TADOQuery;
    qrOCORD_ID: TAutoIncField;
    qrOCDT_CADASTRO: TDateTimeField;
    qrOCUSUARIO: TStringField;
    qrOCCH_AUT: TIntegerField;
    qrOCCH_CANCEL: TIntegerField;
    qrOCFOR_CODI: TStringField;
    qrOCNUM_OCOM: TIntegerField;
    qrOCCOND_PGTO_ID: TIntegerField;
    qrOCOBS: TMemoField;
    qrOCDT_EMISSAO: TDateTimeField;
    qrOCDT_ENTREGA: TDateTimeField;
    qrOCSTATUS: TStringField;
    qrOCVALOR: TFloatField;
    qrOCALTERAR: TStringField;
    qrOCDT_CANCEL: TDateTimeField;
    qrOCVL_IPI: TFloatField;
    qrOCVL_TOT: TFloatField;
    qrOCDescTotal: TFloatField;
    qrOCVlrFrete: TFloatField;
    qrOCCOT_ID: TIntegerField;
    cboFornecedor: TwwDBLookupCombo;
    cboUniCompra: TwwDBLookupCombo;
    wwDBGrid3: TwwDBGrid;
    dsOC: TDataSource;
    btnEnviarCotacao: TBitBtn;
    btnOrdemCompra: TBitBtn;
    qrUnidadeMaterial: TADOQuery;
    qrUnidadeMaterialUNI_ID: TIntegerField;
    qrUnidadeMaterialUNI_SIGLA: TStringField;
    qrItensUNI_CONS: TStringField;
    qrConversao: TADOQuery;
    qrConversaoMATMARCA_CONVERSAO: TFloatField;
    RzGroupBox1: TRzGroupBox;
    Label4: TLabel;
    cboMaterial: TwwDBLookupCombo;
    Label5: TLabel;
    RzNumericEdit1: TRzNumericEdit;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    DBText1: TDBText;
    gbSolicitada: TRzGroupBox;
    gbOfertada: TRzGroupBox;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    DBText2: TDBText;
    RzGroupBox4: TRzGroupBox;
    Label20: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    btnSalvar: TBitBtn;
    Label21: TLabel;
    rgSolicitada: TRzRadioButton;
    rgOfertada: TRzRadioButton;
    qrItensCOMPRAR: TIntegerField;
    qrItensENTREGA: TDateTimeField;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    qrCondPagto: TADOQuery;
    qrCondPagtoCOND_PGTO_ID: TAutoIncField;
    qrCondPagtoDESCRICAO: TStringField;
    qrItensC_PAGAMENTO: TIntegerField;
    pnlGeracao: TPanel;
    qrBuscaSolicitacao: TADOQuery;
    qrBuscaSolicitacaoID: TAutoIncField;
    qrBuscaSolicitacaoCC_DESC: TStringField;
    qrBuscaSolicitacaoDATA: TDateTimeField;
    qrBuscaSolicitacaoUSUARIO: TIntegerField;
    qrBuscaSolicitacaoMAT_DESC: TStringField;
    qrBuscaSolicitacaoQTDE: TFloatField;
    qrBuscaSolicitacaoUNI_SIGLA: TStringField;
    qrBuscaSolicitacaoSTATUS: TIntegerField;
    qrBuscaSolicitacaoNOME: TStringField;
    wwDBGrid4: TwwDBGrid;
    dsBuscasolicitacao: TDataSource;
    qrBuscaSolicitacaoSEL: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn6: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn7: TBitBtn;
    qrSeleciona: TADOQuery;
    STP_GERA_OC: TADOStoredProc;
    Label22: TLabel;
    qrMarcas: TADOQuery;
    qrMarcasMARCA_ID: TIntegerField;
    qrMarcasMARCA_DESC: TStringField;
    qrItensMARCA_ID: TIntegerField;
    qrMaterialBusca: TADOQuery;
    qrMaterialBuscaMAT_ID: TAutoIncField;
    qrMaterialBuscaMAT_DESC: TStringField;
    qrFornecedorBusca: TADOQuery;
    qrFornecedorBuscaFOR_CODI: TStringField;
    qrMarcaLook: TADOQuery;
    qrMarcaLookMARCA_DESC: TStringField;
    Panel1: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    cboMarca: TwwDBLookupCombo;
    cboCondPagto: TwwDBLookupCombo;
    qrItensCP: TStringField;
    qrItensMarca: TStringField;
    qrUnidadeMaterialuni_desc: TStringField;
    rgOrdenarcao: TRzRadioGroup;
    BitBtn4: TBitBtn;
    edtCotacao: TEdit;
    Label25: TLabel;
    BitBtn8: TBitBtn;
    qryApagaitens: TADOQuery;
    sp1: TADOStoredProc;
    qrBuscaSolicitacaoMARCADOR: TStringField;
    Panel5: TPanel;
    RzBitBtn1: TRzBitBtn;
    qrItensAPAGAR: TStringField;
    BitBtn9: TBitBtn;
    qrItensORD_ID: TIntegerField;
    qrItensATENDEU: TStringField;
    qrItensMAT_DESC: TStringField;
    chkProdSC: TCheckBox;
    edtMaterial: TEdit;
    qrAux: TADOQuery;
    BitBtn10: TBitBtn;
    qrItensUlCompra: TFloatField;
    qrItensGENERICO: TStringField;
    Label26: TLabel;
    qrUniAdd: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    cboUniAdd: TwwDBLookupCombo;
    qrBuscaORD_ID: TIntegerField;
    qrMarcasMATMARCA_ID: TAutoIncField;
    qrMarcasMATMARCA_CONVERSAO: TFloatField;
    qrItensMATMARCA_ID: TIntegerField;
    qrConversaoMATMARCA_ID: TAutoIncField;
    qrConversaoMAT_ID: TIntegerField;
    qrConversaoMARCA_ID: TIntegerField;
    qrConversaoMATMARCA_EMBALAGEM: TStringField;
    qrConversaoUNI_ID: TIntegerField;
    qrConversaoMATMARCA_DT_ULTCOMP: TDateTimeField;
    qrConversaoMATMARCA_PRE_ULTCOMP: TFloatField;
    qrConversaoMATMARCA_DT_ULTCOTA: TDateTimeField;
    qrConversaoMATMARCA_PRE_ULTCOTA: TFloatField;
    qrMarcaLookMATMARCA_ID: TAutoIncField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qrBaixaSolicitacao: TADOQuery;
    qrBuscaSolicitacaoTIPO: TStringField;
    Label27: TLabel;
    qrBuscaSolicitacaoMOTIVO: TStringField;
    qrMarcaUpdate: TADOQuery;
    qrBuscaSolicitacaoITEM: TAutoIncField;
    btnBionexo: TBitBtn;
    qrBuscaSolicitacaoCOD_BIONEXO: TStringField;
    qrBuscaSolicitacaoMAT_ID: TAutoIncField;
    procedure AddItem(Material : Integer; Quantidade : Double; Cotacao : Integer ;unidade: Integer  );
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NovaCotacao;
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGeraAutomaticoClick(Sender: TObject);
    procedure cboMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure RzNumericEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MostraTela(status : Integer);
    Procedure Seleciona;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnEnviarCotacaoClick(Sender: TObject);
    procedure cboUniCompraDropDown(Sender: TObject);
    procedure cboUniCompraEnter(Sender: TObject);
    procedure qrItensBeforePost(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dsItensDataChange(Sender: TObject; Field: TField);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBEdit9Exit(Sender: TObject);
    procedure rgSolicitadaClick(Sender: TObject);
    procedure qrBuscaSolicitacaoAfterPost(DataSet: TDataSet);
    procedure qrBuscaSolicitacaoSELChange(Sender: TField);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnOrdemCompraClick(Sender: TObject);
    procedure cboMarcaEnter(Sender: TObject);
    procedure cboMarcaExit(Sender: TObject);
    procedure cboSearchMaterialExit(Sender: TObject);
    procedure cboSearchFornecedorExit(Sender: TObject);
    procedure cboCondPagtoExit(Sender: TObject);
    procedure qrItensUNI_COMPRAValidate(Sender: TField);
    procedure qrItensPRECO_UNITARIOValidate(Sender: TField);
    procedure wwDBGrid1ColExit(Sender: TObject);
    procedure rgOrdenarcaoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure qrItensSELChange(Sender: TField);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure chkProdSCClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qrItensCalcFields(DataSet: TDataSet);
    procedure cboMaterialCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure wwDBGrid4CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnBionexoClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }

    FIL_CODI : string;

  end;

var
  frmCotacao: TfrmCotacao;

implementation

uses UMenu, URELCOTACAO, UMapaCotacao, PesqOC, UOrdCom, ufrmSelEmpresa,
  ufrmBionexoUpload;

{$R *.DFM}

procedure TfrmCotacao.AddItem(Material: Integer; Quantidade: Double;
  Cotacao: Integer; unidade: Integer  );
begin
//
   qrExecCotacao.Parameters[0].Value := Material;
   qrExecCotacao.Parameters[1].Value := Quantidade;
   qrExecCotacao.Parameters[2].Value := Cotacao;
   qrExecCotacao.Parameters[3].Value := unidade;
   qrExecCotacao.ExecSQL;
end;

procedure TfrmCotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmCotacao := nil;
end;

procedure TfrmCotacao.NovaCotacao;
begin
        qrCotacao.Close;
        qrCotacao.ParameterS[0].Value := 0 ;
        qrCotacao.Open;
        qrCotacao.Append;
        qrCotacaoDATA_CRIACAO.Value := Date;
        qrCotacaoSTATUS.Value := 0;
        qrCotacao.Post;
end;

procedure TfrmCotacao.btnNovoClick(Sender: TObject);
begin
  MostraTela(1);
  NovaCotacao;
  qrItens.Close;
  qrItens.Parameters[0].Value := qrCotacaoCOT_ID.Value;
  qrItens.Open;
  cboMaterial.SetFocus;
end;

procedure TfrmCotacao.BitBtn3Click(Sender: TObject);
begin
   if (cboMaterial.LookupValue <> '') and (qrCotacaoCOT_ID.AsString <> '' ) and (chkProdSC.Checked = False) then
   begin
      AddItem(StrToInt(cboMaterial.LookupValue),RzNumericEdit1.Value, qrCotacaoCOT_ID.Value, StrToInt(cboUniAdd.LookupValue) );

   end;

   if (edtMaterial.Text <> '') and (qrCotacaoCOT_ID.AsString <> '' ) and (chkProdSC.Checked) then
   begin
       with qrAux do begin
           close;
           sql.Clear;
           sql.Add('Exec COTACAO2 :mat_id, :qtde, :cot_id, :desc, :unidade');
           Parameters[0].Value := FMenu.lbSemCadastro.Caption;
           Parameters[1].Value := RzNumericEdit1.Value;
           Parameters[2].Value := qrCotacaoCOT_ID.AsInteger;
           Parameters[3].Value := edtMaterial.Text;
           Parameters[4].Value := cboUniAdd.LookupValue;
           ExecSQL;
       end;
   end;


   qrItens.Close;
   qrItens.Open;

   RzNumericEdit1.Value := 0;
   cboMaterial.LookupValue := '';
   cboMaterial.Text := '';
   edtMaterial.Clear;
   if chkProdSC.Checked then
        edtMaterial.SetFocus
   else
        cboMaterial.SetFocus;
end;

procedure TfrmCotacao.FormCreate(Sender: TObject);
begin
  MostraTela(0);
  qrMateriais.Open;
  qrFornecedor.Open;
  qrUnidade.Open;
  qrMarcas.Open;
  qrMarcaLook.Open;
  qrMaterialBusca.Open;
  qrVerificaSolicitacao.Close;
  qrVerificaSolicitacao.Open;
  qrFornecedorBusca.Open;
  qrMaterialBusca.Open;

  qrCondPagto.Open;

  IF qrVerificaSolicitacaoACHEI.Value = 0 then
        btnGeraAutomatico.Enabled := False;
end;

procedure TfrmCotacao.btnGeraAutomaticoClick(Sender: TObject);
begin
{  try
    MostraTela(1);
    FMenu.ADOConnection.BeginTrans;
    btnNovo.Click;
    qrExecSolicitacao.Parameters[0].Value := qrCotacaoCOT_ID.Value;
    qrExecSolicitacao.ExecSQL;
    FMenu.ADOConnection.CommitTrans;
  except
    ON E : Exception DO
    begin
       MessageBox(0, 'Aconteceu um erro ao gerar as informações.', 'Erro', MB_ICONERROR or MB_OK);
       FMenu.ADOConnection.RollbackTrans;
    end;
  end;
  qrItens.Close;
  qrItens.Parameters[0].Value := qrCotacaoCOT_ID.Value;
  qrItens.Open;  }




  pnlGeracao.Visible := True;
  pnlGeracao.Align := alClient;
  pnlTools.Enabled := False;
  qrBuscaSolicitacao.Close;
  qrBuscaSolicitacao.Open;

end;

procedure TfrmCotacao.cboMaterialKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
        RzNumericEdit1.SetFocus;
end;

procedure TfrmCotacao.RzNumericEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BitBtn3.Click;
end;

procedure TfrmCotacao.MostraTela(status: Integer);
begin
//

if status = 0 then
begin
    pnlCadastro.Align := alNone;
    pnlCadastro.Width := 0;
    pnlConsulta.Align := alClient;
    btnEnviarCotacao.Visible := False;
    btnOrdemCompra.Visible := False;
end
else if status = 1 then
begin
    pnlConsulta.Align := alNone;
    pnlConsulta.Width := 0;
    pnlCadastro.Align := alClient;
    btnEnviarCotacao.Visible := True;
    btnOrdemCompra.Visible := True;
end;
end;

procedure TfrmCotacao.BitBtn1Click(Sender: TObject);
begin
        MostraTela(0);
end;

procedure TfrmCotacao.Seleciona;
begin
  if qrBuscaCOT_ID.AsString = '' then
        Abort;

  MostraTela(1);
  RzPageControl1.ActivePageIndex := 0;      
  qrCotacao.Close;
  qrCotacao.Parameters[0].Value := qrBuscaCOT_ID.Value;
  qrCotacao.Open;

  qrItens.Close;
  qrItens.Parameters[0].Value := qrBuscaCOT_ID.Value;
  qrItens.Open;

  qrOC.Close;
  qrOC.Parameters[0].Value := qrBuscaCOT_ID.Value;
  qrOC.Open;

    If qrCotacaoSTATUS.Value = 2 then
  begin
      btnEnviarCotacao.Enabled := False;
      btnOrdemCompra.Enabled := False;
  end
  else
  begin
      btnEnviarCotacao.Enabled := True;
      btnOrdemCompra.Enabled := True;
  end;

end;

procedure TfrmCotacao.BitBtn5Click(Sender: TObject);
begin
  Seleciona;
end;

procedure TfrmCotacao.wwDBGrid2DblClick(Sender: TObject);
begin
  Seleciona;
end;

procedure TfrmCotacao.BitBtn2Click(Sender: TObject);
VAR D1, D2 :TDateTime;
begin
  qrBusca.Close;
  qrBusca.SQL.Clear;
  qrBusca.SQL.Add(
        ' SELECT A.*, CASE WHEN B.GENERICO = ''S'' THEN B.MAT_DESC ELSE C.MAT_DESC END AS MAT_DESC, B.FORNECEDOR, B.QTDE_SOL, B.ORD_ID '+
        ' FROM TB_COTACAO A INNER JOIN ITEM_COTACAO B        '+
        ' ON A.COT_ID = B.COT_ID left outer JOIN MATERIAIS C ON     '+
        ' B.MAT_ID = C.MAT_ID  WHERE 1 = 1 '
  );


  // SE BUSCAR PELO NUMERO DA COTAÇÃO , DESCONSIDERA OS OUTROS FILTROS
  IF edtCotacao.Text <> '' then
        qrBusca.SQL.Add(' AND A.COT_ID = '+ edtCotacao.Text )
  else
  begin

          IF   rgStatus.ItemIndex < 3 then
                qrBusca.SQL.Add( ' AND A.STATUS = ' + IntToStr(rgStatus.ItemIndex));

          IF MaskEdit1.Text <> '  /  /    ' then
          BEGIN
             D1 :=  StrToDate(MaskEdit1.Text);
             qrBusca.SQL.Add(' AND CONVERT(CHAR(10), A.DATA_CRIACAO, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));
          end;

          IF MaskEdit2.Text <> '  /  /    ' then
          BEGIN
             D2 :=  StrToDate(MaskEdit2.Text);
             qrBusca.SQL.Add(' AND CONVERT(CHAR(10), A.DATA_CRIACAO, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));
          end;


          IF cboSearchMaterial.Text <> '' then
                qrBusca.SQL.Add('AND B.MAT_ID = ' + cboSearchMaterial.LookupValue );

          IF cboSearchFornecedor.Text <> '' then
                qrBusca.SQL.Add(' AND B.FORNECEDOR = ' + QuotedStr(cboSearchFornecedor.LookupValue));


  end;

  qrBusca.SQL.Add('ORDER BY A.COT_ID DESC');

  qrBusca.Open;
end;

procedure TfrmCotacao.BitBtn4Click(Sender: TObject);
begin
  if MessageBox(0, 'Deseja eliminar os itens selecionados?', 'Comfirmação', MB_ICONQUESTION or MB_YESNO) = 6 then
  begin
    //apagar os itens
    if qrItens.State = dsEdit then
        qrItens.Post;

    qrItens.Close;

      with qryApagaitens do
      begin
          close;
          sql.Clear;
          sql.Add('delete from item_cotacao where apagar = ''*'' and cot_id = ' + qrCotacaoCOT_ID.AsString);
          ExecSQL;
      end;

      
      qrItens.Open;
  end;
end;

procedure TfrmCotacao.btnEnviarCotacaoClick(Sender: TObject);
begin

    with qrMarcaUpdate do begin
        Close;
        sql.Clear;
        sql.Add(
          '  update ITEM_COTACAO SET MARCA_ID = (SELECT MARCA_ID FROM MATERIAL_MARCA WHERE MATMARCA_ID = ITEM_COTACAO.MATMARCA_ID)'+
          '  WHERE COT_ID = ' + qrItensCOT_ID.AsString
        );
        ExecSQL;
    end;



    frmRelCotacao := TfrmRelCotacao.Create(Self);
    frmRelCotacao.qrRel.Close;
    frmRelCotacao.qrRel.Parameters[0].Value := qrCotacaoCOT_ID.Value;
    frmRelCotacao.qrRel.Open;
    frmRelCotacao.QuickRep1.Preview;
end;

procedure TfrmCotacao.cboUniCompraDropDown(Sender: TObject);
begin
  {qrUnidadeMaterial.Close;
  qrUnidadeMaterial.Parameters[0].Value := qrItensMAT_ID.Value;
  qrUnidadeMaterial.Parameters[2].Value := qrItensMAT_ID.Value;
  qrUnidadeMaterial.Open;      }
end;

procedure TfrmCotacao.cboUniCompraEnter(Sender: TObject);
begin
  {qrUnidadeMaterial.Close;
  qrUnidadeMaterial.Parameters[0].Value := qrItensMAT_ID.Value;
  qrUnidadeMaterial.Parameters[1].Value := qrItensMAT_ID.Value;
  qrUnidadeMaterial.Open; }
end;

procedure TfrmCotacao.qrItensBeforePost(DataSet: TDataSet);
begin
     IF qrCotacaoSTATUS.Value = 2 then
     BEGIN
          MessageBox(0, PChar('Não é possível alterar o item!' + #13 + 'Cotação encerrada.'), 'Erro', MB_ICONINFORMATION or MB_OK);
          qrItens.cancel;
          Abort;
     end;



     IF qrItensATENDEU.Value = 'S' then
     BEGIN
          MessageBox(0, PChar('Não é possível alterar o item!' + #13 + 'Ordem de compra associada'), 'Erro', MB_ICONINFORMATION or MB_OK);
          qrItens.cancel;
          Abort;
     end;

          {

      if rgSolicitada.Checked then
     // if qrItensCOMPRAR.Value = 0 then
      begin
          if (qrItensQTDE_SOL.AsString = '') or (qrItensPRECO.AsString = '') then
          begin
                MessageBox(0, 'Preencha todas as informações!', 'Erro', MB_ICONINFORMATION or MB_OK);
                DBCheckBox1.Checked := False;
                qrItens.Cancel;
                Abort;
          end;
      end
      else
      begin
          if (qrItensQTDE_MOV.AsString  = '') or (qrItensQTDE_MOV.Value  = 0) or (wwDBLookupCombo2.Text = '') or (qrItensPRECO_UNITARIO.AsString = '') or (qrItensPRECO_UNITARIO.Value = 0) then
          begin
                MessageBox(0, 'Preencha todas as informações!', 'Erro', MB_ICONINFORMATION or MB_OK);
                DBCheckBox1.Checked := False;
                qrItens.Cancel;
                Abort;
          end;
      end;

      if  (qrItensENTREGA.AsString = '') or (qrItensC_PAGAMENTO.AsString = '')  or (qrItensMARCA_ID.AsString = '')    then
      begin
            MessageBox(0, 'Preencha todas as informações!', 'Erro', MB_ICONINFORMATION or MB_OK);
            DBCheckBox1.Checked := False;
            qrItens.Cancel;
            Abort;
      end;   }



    if qrItensPRECO_UNITARIO.AsString <> '' then
    begin
        qrConversao.Close;
       // qrConversao.Parameters[0].Value := qrItensMAT_ID.Value;
       // qrConversao.Parameters[1].Value := qrItensUNI_COMPRA.Value;
        qrConversao.Parameters[0].Value := qrItensMATMARCA_ID.AsInteger;
        qrConversao.Open;
        qrItens.Edit;
        if  qrConversaoMATMARCA_CONVERSAO.Value > 0 then
            qrItensQTDE_CONVERSAO.Value :=  qrConversaoMATMARCA_CONVERSAO.Value * qrItensQTDE_MOV.Value
        else
            qrItensQTDE_CONVERSAO.Value := 1;

        qrItensMARCA_ID.AsInteger := qrConversaoMARCA_ID.AsInteger;
    end;


 qrItens.Edit;
 IF qrItensQTDE_CONVERSAO.Value > 0 then
        qrItensPRECO.Value := qrItensPRECO_UNITARIO.Value / qrItensQTDE_CONVERSAO.Value ;
        
end;

procedure TfrmCotacao.btnSalvarClick(Sender: TObject);
begin
  if qrItens.State in [dsEdit, dsInsert] then
        qrItens.Post;
end;

procedure TfrmCotacao.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  IF qrItensSEL.Value = 'S' then
     ABrush.Color := clBtnFace;

  IF Highlight then
        AFont.Color := clBlue;
end;

procedure TfrmCotacao.dsItensDataChange(Sender: TObject; Field: TField);
begin
  try
  IF qrItensCOMPRAR.Value = 0 then
        rgSolicitada.Checked
  else
        rgOfertada.Checked;

  gbSolicitada.Enabled := rgSolicitada.Checked;
  gbOfertada.Enabled := rgOfertada.Checked;


  IF qrItensGENERICO.Value <> 'S' then begin
      if qrMarcaLook.active = false then
            qrMarcaLook.open;
      IF qrMarcaLook.Locate('MARCA_ID', qrItensMARCA_ID.Value, []) then
      cboMarca.Text := qrMarcaLookMARCA_DESC.Value
      else
      cboMarca.Text := '';
  end;
  
  except end;



  //busca as unidades
  with qrUnidadeMaterial do begin
      close;
      sql.Clear;
      if qrItensGENERICO.Value = 'S' then begin
          SQL.Add(
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES order by uni_sigla'
          );
          Open;
      end
      else begin
        if qrItensMAT_ID.AsString <> '' then begin
          SQL.Add(
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES '+
            '  WHERE UNI_ID in (SELECT UNI_ID FROM MATERIAIS WHERE MAT_ID = ' + qrItensMAT_ID.AsString  +  ') '+
            '  UNION  '+
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES '+
            '  WHERE UNI_ID in (SELECT UNI_ID FROM MATERIAL_MARCA WHERE MAT_ID = ' +  qrItensMAT_ID.AsString + ') '
          ) ;
          Open;
        end;
      end;
      

  end;





end;

procedure TfrmCotacao.DBCheckBox1Click(Sender: TObject);
begin
 // IF DBCheckBox1.Checked then
 // begin
      {if rgSolicitada.Checked then
     // if qrItensCOMPRAR.Value = 0 then
      begin
          if (qrItensQTDE_SOL.AsString = '') or (qrItensPRECO.AsString = '') then
          begin
                MessageBox(0, 'Preencha todas as informações!', 'Erro', MB_ICONINFORMATION or MB_OK);
                DBCheckBox1.Checked := False;
                Abort;
          end;
      end
      else
      begin
          if (qrItensQTDE_MOV.AsString  = '') or (qrItensQTDE_MOV.Value  = 0) or (wwDBLookupCombo2.Text = '') or (qrItensPRECO_UNITARIO.AsString = '') or (qrItensPRECO_UNITARIO.Value = 0) then
          begin
                MessageBox(0, 'Preencha todas as informações!', 'Erro', MB_ICONINFORMATION or MB_OK);
                DBCheckBox1.Checked := False;
                Abort;
          end;
      end;

      if  (qrItensENTREGA.AsString = '') or (qrItensC_PAGAMENTO.AsString = '')  or (qrItensMARCA_ID.AsString = '')    then
      begin
            MessageBox(0, 'Preencha todas as informações!', 'Erro', MB_ICONINFORMATION or MB_OK);
            DBCheckBox1.Checked := False;
            Abort;
      end;   }
  //end;
end;

procedure TfrmCotacao.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
//        qrConversao.Close;
//        qrConversao.Parameters[0].Value := qrItensMAT_ID.Value;
//        qrConversao.Parameters[1].Value := qrItensUNI_COMPRA.Value;
//        qrConversao.Open;
//
//        qrItensQTDE_CONVERSAO.Value :=  qrConversaoMATMARCA_CONVERSAO.Value * qrItensQTDE_MOV.Value;
end;

procedure TfrmCotacao.DBEdit9Exit(Sender: TObject);
begin
  if qrItensENTREGA.Value < Date then
  begin
       MessageBox(0, 'A data de entrega não pode ser menor a data atual!', 'Erro', MB_ICONINFORMATION or MB_OK);
       DBEdit9.SetFocus;
  end;
end;

procedure TfrmCotacao.rgSolicitadaClick(Sender: TObject);
begin
  gbSolicitada.Enabled := rgSolicitada.Checked;
  gbOfertada.Enabled := rgOfertada.Checked;
end;

procedure TfrmCotacao.qrBuscaSolicitacaoAfterPost(DataSet: TDataSet);
var cot : Integer;
begin
    //cot := qrBuscaSolicitacaoID.Value;
    cot := qrBuscaSolicitacaoITEM.AsInteger;
    qrBuscaSolicitacao.Close;
    qrBuscaSolicitacao.Open;
    qrBuscaSolicitacao.Locate('ITEM', cot, []);
end;

procedure TfrmCotacao.qrBuscaSolicitacaoSELChange(Sender: TField);
begin
     if qrBuscaSolicitacao.State in [dsEdit, dsInsert] then
        qrBuscaSolicitacao.Post;
end;

procedure TfrmCotacao.BitBtn7Click(Sender: TObject);
begin
  pnlGeracao.Align := alNone;
  pnlGeracao.Visible := False;
  pnlTools.Enabled := True;
end;

procedure TfrmCotacao.SpeedButton2Click(Sender: TObject);
begin
   qrSeleciona.Parameters[0].Value := 'S';
   qrSeleciona.ExecSQL;
   qrBuscaSolicitacao.Close;
   qrBuscaSolicitacao.Open;
end;

procedure TfrmCotacao.SpeedButton1Click(Sender: TObject);
begin
   qrSeleciona.Parameters[0].Value := 'N';
   qrSeleciona.ExecSQL;
   qrBuscaSolicitacao.Close;
   qrBuscaSolicitacao.Open;   
end;

procedure TfrmCotacao.BitBtn6Click(Sender: TObject);
begin
  IF qrBuscaSolicitacao.State in [dsEdit, dsInsert] then
        qrBuscaSolicitacao.Post;

   if MessageBox(0, 'Confirma geração de pedido de cotação com as informações selecionadas?', 'Confirmação', MB_ICONQUESTION or MB_YESNO) = 7 then
     Abort;
  pnlGeracao.Align := alNone;
  pnlGeracao.Visible := False;
  pnlTools.Enabled := True;
  try
    MostraTela(1);
    FMenu.ADOConnection.BeginTrans;
    btnNovo.Click;
    qrExecSolicitacao.Parameters[0].Value := qrCotacaoCOT_ID.Value;
    qrExecSolicitacao.ExecSQL;
    FMenu.ADOConnection.CommitTrans;
  except
    ON E : Exception DO
    begin
       MessageBox(0, PChar('Aconteceu um erro ao gerar as informações.' + #13 + E.Message), 'Erro', MB_ICONERROR or MB_OK);
       FMenu.ADOConnection.RollbackTrans;
    end;
  end;
  qrItens.Close;
  qrItens.Parameters[0].Value := qrCotacaoCOT_ID.Value;
  qrItens.Open;
end;

procedure TfrmCotacao.btnOrdemCompraClick(Sender: TObject);
begin

  FIL_CODI := '';

  IF qrItens.State in [dsEdit, dsInsert] then
        qrItens.Post;

  with qrAux do begin
     Close;
     sql.Clear;
     sql.Add('select count(*) as achei from item_cotacao where atendeu is null and sel = ''S'' and cot_id = ' + qrCotacaoCOT_ID.AsString);
     Open;
  end;

  if qrAux.FieldByName('ACHEI').AsInteger = 0 then begin
      MessageBox(Self.Handle, 'Nenhum item disponível para geração de OC', 'Informação', MB_OK);
      Abort;
  end;


  //seleciona a empresa para a qual vai gerar a ordem de compra.
  frmSelEmpresa := TfrmSelEmpresa.Create(Self);
  frmSelEmpresa.ShowModal;

  if FIL_CODI = '' then begin
      ShowMessage('É necessário selecionar a empresa para a geração de ordem de compra.');
      Abort;
  end;



  try
    FMenu.ADOConnection.BeginTrans;
    STP_GERA_OC.Parameters[0].Value := qrCotacaoCOT_ID.Value;
    STP_GERA_OC.Parameters[1].Value := FMenu.sqlUsuariosNome.Value;
    STP_GERA_OC.Parameters[2].Value := FMenu.sqlUsuariosCH.Value;
    STP_GERA_OC.Parameters[3].Value := FIL_CODI;
    STP_GERA_OC.Prepared := True;
    STP_GERA_OC.ExecProc;
    qrOC.Close;
    qrOC.Parameters[0].Value := qrCotacaoCOT_ID.Value;
    qrOC.Open;


    //damos baixa nas solicitações de compra
    qrOC.First;
    while not qrOC.Eof do begin

        qrBaixaSolicitacao.SQL.Clear;
        qrBaixaSolicitacao.sql.Add('Exec BAIXA_SOLICITACA ' + qrOCORD_ID.AsString );
        qrBaixaSolicitacao.ExecSQL;

        qrOC.next;
    end;

    qrOC.First;


    qrItens.Close;
    qrItens.Open;

    MessageBox(0, 'Operaçao gerada com sucesso.', 'Informação', MB_ICONEXCLAMATION or MB_OK);

    FMenu.ADOConnection.CommitTrans;
  except
    on e : Exception do
    begin
        FMenu.ADOConnection.RollbackTrans;
        MessageBox(0, PChar('Aconteceu um erro ao gerar as informações.' + #13 + e.Message),
        'Erro', MB_ICONERROR or MB_OK);
    end;
  end;
end;



procedure TfrmCotacao.cboMarcaEnter(Sender: TObject);
begin
   qrMarcas.Close;
   qrMarcas.Parameters[0].Value := qrItensMAT_ID.Value;
   qrMarcas.Open;
end;

procedure TfrmCotacao.cboMarcaExit(Sender: TObject);
begin
  if cboMarca.LookupValue <> '' then
        cboMarca.Text := qrMarcasMARCA_DESC.Value;
end;

procedure TfrmCotacao.cboSearchMaterialExit(Sender: TObject);
begin
    IF cboSearchMaterial.Text = '' then
        cboSearchMaterial.LookupValue := '';
  IF cboSearchMaterial.LookupValue <> '' then
        cboSearchMaterial.Text := qrMaterialBuscaMAT_DESC.Value;

end;

procedure TfrmCotacao.cboSearchFornecedorExit(Sender: TObject);
begin
     IF cboSearchFornecedor.Text = '' then
        cboSearchFornecedor.LookupValue := '';
   IF cboSearchFornecedor.LookupValue <> '' then
        cboSearchFornecedor.Text := qrFornecedorBuscaFOR_CODI.Value;


end;

procedure TfrmCotacao.cboCondPagtoExit(Sender: TObject);
begin
  cboCondPagto.Text := qrCondPagtoDESCRICAO.Value;
end;

procedure TfrmCotacao.qrItensUNI_COMPRAValidate(Sender: TField);
begin
       if qrItensMATMARCA_ID.AsString <> '' then begin
        qrConversao.Close;
        //qrConversao.Parameters[0].Value := qrItensMAT_ID.Value;
       // qrConversao.Parameters[1].Value := qrItensUNI_COMPRA.Value;
       qrConversao.Parameters[0].Value := qrItensMATMARCA_ID.Value;
        qrConversao.Open;
        qrItens.Edit;
        if  qrConversaoMATMARCA_CONVERSAO.Value > 0 then
            qrItensQTDE_CONVERSAO.Value :=  qrConversaoMATMARCA_CONVERSAO.Value  * qrItensQTDE_MOV.Value
        else
            qrItensQTDE_CONVERSAO.Value :=  1 ;
      end;

end;

procedure TfrmCotacao.qrItensPRECO_UNITARIOValidate(Sender: TField);
begin
        IF qrItensQTDE_CONVERSAO.Value > 0 then
        qrItensPRECO.Value := qrItensPRECO_UNITARIO.Value / qrItensQTDE_CONVERSAO.Value ;
end;

procedure TfrmCotacao.wwDBGrid1ColExit(Sender: TObject);
begin
   IF wwDBGrid1.SelectedField = qrItensPRECO_UNITARIO  then
   BEGIN
       qrItens.Edit;
        IF qrItensQTDE_CONVERSAO.Value > 0 then
        qrItensPRECO.Value := qrItensPRECO_UNITARIO.Value / qrItensQTDE_CONVERSAO.Value ;
   end;

   if wwDBGrid1.SelectedField = qrItensuni_comdesc then
   begin
        qrItens.Edit;

        if qrItensMATMARCA_ID.AsString <> '' then begin
            qrConversao.Close;
            //qrConversao.Parameters[0].Value := qrItensMAT_ID.Value;
            //qrConversao.Parameters[1].Value := qrItensUNI_COMPRA.Value;
            qrConversao.Parameters[0].Value := qrItensMATMARCA_ID.AsInteger;
            qrConversao.Open;
            if  (qrConversaoMATMARCA_CONVERSAO.Value > 0) and (qrItensUNI_COMPRA.Value <> qrItensUNI_CONSUMO.Value) then
                qrItensQTDE_CONVERSAO.Value :=  qrConversaoMATMARCA_CONVERSAO.Value  * qrItensQTDE_MOV.Value
            else
                qrItensQTDE_CONVERSAO.Value :=  1;
        end;
   end;

   if wwDBGrid1.SelectedField = qrItensQTDE_MOV then
   begin
          qrItens.Edit;
          qrMarcas.Close;
          qrMarcas.Parameters[0].Value := qrItensMAT_ID.Value;
          qrMarcas.Open;
          if qrMarcas.RecordCount = 1 then
                qrItensMARCA_ID.Value := qrMarcasMARCA_ID.Value;
   end;



end;

procedure TfrmCotacao.rgOrdenarcaoClick(Sender: TObject);
begin
    with qrItens do
    begin
        Close;
        sql.Clear;
        sql.Add('SELECT A.ITEM  '+
                ',A.COT_ID '+
                ',A.MAT_ID '+
                ',A.QTDE_SOL '+
                ',A.FORNECEDOR '+
                ',A.UNI_CONSUMO '+
                ',A.PRECO  '+
                ',A.QTDE_MOV '+
                ',A.PRECO_UNITARIO  '+
                ',A.QTDE_CONVERSAO  '+
                ',A.UNI_COMPRA   '+
                ',A.PRAZO_ENTREGA '+
                ',A.COND_PGTO '+
                ',A.SEL  '+
                ',A.COMPRAR '+
                ',A.ENTREGA '+
                ',A.C_PAGAMENTO  '+
                ',A.MARCA_ID '+
                ',A.ORD_ID   '+
                ',A.ATENDEU '+
                ',A.APAGAR '+
                ',A.GENERICO '+
                ',CASE WHEN A.GENERICO = ''S'' THEN A.MAT_DESC ELSE B.MAT_DESC END AS MAT_DESC '+
                'FROM ITEM_COTACAO A LEFT OUTER JOIN MATERIAIS B ON A.MAT_ID = B.MAT_ID '+
                ' WHERE COT_ID = ' + qrCotacaoCOT_ID.AsString);
        if rgOrdenarcao.ItemIndex = 0 then
                sql.Add(' order by  B.MAT_dESC');

        if rgOrdenarcao.ItemIndex = 1 then
                SQL.Add(' ORDER BY FORNECEDOR ');

        IF rgOrdenarcao.ItemIndex = 2 then
                SQL.Add(' ORDER BY SEL DESC') ;
        Open;
    end;
end;

procedure TfrmCotacao.BitBtn8Click(Sender: TObject);
begin
    sp1.Parameters[0].Value := qrCotacaoCOT_ID.Value;
    sp1.Prepared := True;
    sp1.ExecProc;

    frmMapaCotacao := TfrmMapaCotacao.Create(Self);
    frmMapaCotacao.lbCot.Caption := 'Cotação N° ' + qrCotacaoCOT_ID.AsString;
    frmMapaCotacao.QuickRep1.Preview;
end;

procedure TfrmCotacao.qrItensSELChange(Sender: TField);
begin
 //Verifica se todas as informações foram preenchidas

 if qrItensSEL.Value = 'S' then begin

       IF qrItensFORNECEDOR.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe o Fornecedor', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;
        IF qrItensPRECO.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe o Preço', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;
        IF qrItensPRECO_UNITARIO.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe o Preço unitário', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;
        IF qrItensMARCA_ID.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe a marca', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;

        IF qrItensENTREGA.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe a data de entrega', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;
        IF qrItensCP.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe a condição de pagamento', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;

       IF qrItensUNI_COMPRA.AsString = '' then begin
              MessageBox(Self.Handle, 'Informe a unidade de compra', 'Erro', MB_OK + MB_ICONERROR)  ;
              qrItensSEL.Value := 'N';
              Abort;
       end;


 end;

end;

procedure TfrmCotacao.RzBitBtn1Click(Sender: TObject);
begin
   IF qrOCORD_ID.AsString <> '' then begin
       ORD_ID := qrOCORD_ID.AsString;
       Application.CreateForm(TFOrdComp, FOrdComp);
       FOrdComp.ShowModal;
       FOrdComp.Release;
       ORD_ID:= '';
   end;
end;

procedure TfrmCotacao.BitBtn9Click(Sender: TObject);
begin
    frmRelCotacao := TfrmRelCotacao.Create(Self);
    with frmRelCotacao.qrRel do begin
        close;
        sql.Clear;
        sql.Add(
        '  SELECT   '+
        '          A.COT_ID,  '+
        '          C.MAT_DESC, '+
        '          sum(B.QTDE_SOL), '+
        '          E.FOR_RAZA, '+
        '          E.FOR_EMAI, '+
        '          E.FOR_TEL1, '+
        '          E.FOR_TEL2, '+
        '          D.UNI_SIGLA,'+
        '          F.MARCA_DESC  '+
        '  FROM TB_COTACAO A INNER JOIN ITEM_COTACAO B ON A.COT_ID = B.COT_ID  '+
        '           INNER JOIN MATERIAIS C ON B.MAT_ID = C.MAT_ID '+
        '           INNER JOIN UNIDADES D ON C.UNI_ID = D.UNI_ID  '+
        '           INNER JOIN CPAFORN E ON B.FORNECEDOR = E.FOR_CODI  '+
        '           LEFT OUTER JOIN MARCAS F ON B.MARCA_ID = F.MARCA_ID '+
        '  WHERE A.status in ( 1, 2 ) '+
        '     group by  A.COT_ID,  '+
        '          C.MAT_DESC, '+
        '          E.FOR_RAZA, '+
        '          E.FOR_EMAI, '+
        '          E.FOR_TEL1, '+
        '          E.FOR_TEL2, '+
        '          D.UNI_SIGLA,'+
        '          F.MARCA_DESC  '+
        '  ORDER BY E.FOR_RAZA '
        );
        Open;
    end;
    frmRelCotacao.QuickRep1.Preview;
end;

procedure TfrmCotacao.chkProdSCClick(Sender: TObject);
begin
  if chkProdSC.Checked then begin
      cboMaterial.Visible := False;
      edtMaterial.Visible := True;
      if edtMaterial.Visible then
        edtMaterial.SetFocus;
  end else begin
      edtMaterial.Visible := False;
      cboMaterial.Visible := True;
      if cboMaterial.Visible then
          cboMaterial.SetFocus;
  end;




    with qrUniAdd do begin
      close;
      sql.Clear;
      if chkProdSC.Checked then begin
          SQL.Add(
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES order by uni_sigla'
          )
      end;
      Open;

  end;





end;

procedure TfrmCotacao.BitBtn10Click(Sender: TObject);
begin
  if messagebox(Self.Handle, pchar('Deseja aplicar o fornecedor ' + trim(qrItensFORNECEDOR.AsString) + ' a todos os itens da cotação?'),
                'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then begin
        with qrAux do begin
            close;
            sql.Clear;
            sql.Add('update item_cotacao set fornecedor = ' + QuotedStr(qrItensFORNECEDOR.AsString));
            sql.Add('where cot_id = ' + qrCotacaoCOT_ID.AsString);
            ExecSQL;
        end;
        qrItens.close;
        qrItens.Open;
  end;
end;
procedure TfrmCotacao.qrItensCalcFields(DataSet: TDataSet);
begin
  with qrAux do begin
      CLOSE;
      sql.Clear;
      SQL.Add(
       ' select top 1 preco_unit from rec_item where mat_id = ' +  qrItensMAT_ID.AsString  +
       ' order by rec_id desc '
      );
      Open;
  end;
  qrItensUlCompra.Value := qrAux.FieldByname('preco_unit').AsFloat;
end;

procedure TfrmCotacao.cboMaterialCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  with qrUniAdd do begin
      close;
      sql.Clear;
      if chkProdSC.Checked then begin
          SQL.Add(
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES order by uni_sigla'
          )
      end
      else begin
          SQL.Add(
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES '+
            '  WHERE UNI_ID in (SELECT UNI_ID FROM MATERIAIS WHERE MAT_ID = :MAT_ID) '+
            '  UNION  '+
            '  SELECT UNI_ID, UNI_SIGLA, uni_desc FROM UNIDADES '+
            '  WHERE UNI_ID in (SELECT UNI_ID FROM MATERIAL_MARCA WHERE MAT_ID = :MAT_ID) '
          ) ;
          Parameters[0].Value := cboMaterial.LookupValue;
          Parameters[1].Value := cboMaterial.LookupValue;
      end;
      Open;

  end;
end;

procedure TfrmCotacao.Button1Click(Sender: TObject);
var PRAZO_ENTREGA: TDateTime;
    COND_PGTO : Integer;
begin

        PRAZO_ENTREGA := qrItensENTREGA.Value;
        COND_PGTO := qrItensC_PAGAMENTO.Value;




      { with qrAux DO   BEGIN
            Close;
            sql.Clear;
            sql.Add(
              '  UPDATE ITEM_COTACAO SET COND_PGTO = ' + QuotedStr(COND_PGTO) +
              '  ,PRAZO_ENTREGA = ' + QuotedStr(PRAZO_ENTREGA) +
              '  WHERE 	COT_ID = ' + qrCotacaoCOT_ID.AsString +
              '  AND ISNULL(COND_PGTO, '''') = ''''  ' +
              '  AND ISNULL(PRAZO_ENTREGA, '''') = '''' '
            );
            ExecSQL;
        end;
               }

        qrItens.First;
        while not qrItens.Eof do begin

            qrItens.Edit;
            if qrItensC_PAGAMENTO.AsString = '' then
                qrItensC_PAGAMENTO.Value := COND_PGTO;

            if qrItensENTREGA.AsString = '' then
                qrItensENTREGA.Value := PRAZO_ENTREGA;

            qrItens.Post;

            qrItens.Next;
        end;

        qrItens.Close;
        qrItens.Open;
        qrItens.First;

end;

procedure TfrmCotacao.Button2Click(Sender: TObject);
begin
   qrItens.First;
   while not qrItens.Eof do begin
       qrItens.Edit;
       qrItensSEL.Value := 'S';
       qrItens.Post;
       qrItens.Next;
   end;
   qrItens.First;
end;

procedure TfrmCotacao.Button3Click(Sender: TObject);
begin
   qrItens.First;
   while not qrItens.Eof do begin
       qrItens.Edit;
       qrItensSEL.Value := 'S';
       qrItens.Post;
       qrItens.Next;
   end;
   qrItens.First;
end;

procedure TfrmCotacao.wwDBGrid4CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    IF (qrBuscaSolicitacaoTIPO.AsString = 'E') or (qrBuscaSolicitacaoTIPO.AsString = 'U') then
        ABrush.Color := clRed
    else 
        ABrush.Color := clwindow;

   if Highlight then
      AFont.Color := clBlack
   else
     AFont.Color := clBlack;

end;

procedure TfrmCotacao.btnBionexoClick(Sender: TObject);
var Erro : Boolean;
begin
   Erro := False;
   qrBuscaSolicitacao.First;
//   while not qrBuscaSolicitacao.Eof do begin
//        if qrBuscaSolicitacaoMARCADOR.AsString <> '' then begin
//            if qrBuscaSolicitacaoCOD_BIONEXO.AsString = '' then begin
//                ShowMessage('Material não possio codigo BIONEXO: ' + qrBuscaSolicitacaoMAT_DESC.AsString);
//                Erro := True;
//                qrBuscaSolicitacao.Last;
//            end;
//        end;
//        qrBuscaSolicitacao.Next;
//   end;

   if Erro = False  then begin
       if MessageBox(Self.Handle, 'Deseja criar cotação BIONEXO com os materiais selecionados?', 'Confirmação', MB_YESNO) = 6 then
       begin
             frmBionexoUpload := TfrmBionexoUpload.Create(Self);
             with frmBionexoUpload do begin
                 qrBionexo.Close;
                 qrBionexo.Parameters[0].Value := 0;
                 qrBionexo.Open;

                 qrBionexo.Append;
                 qrBionexodata.Value := Now;
                 qrBionexousuario.Value := FMenu.sqlUsuariosNOME_COMPLETO.Value;
                 qrBionexo.Post;

                 qrBuscaSolicitacao.First;
                 while not qrBuscaSolicitacao.Eof do begin
                      if qrBuscaSolicitacaoMARCADOR.AsString <> '' then begin
                          qrItens.Append;
                          qrItensbioId.AsInteger := qrBionexobioId.AsInteger;
                          qrItensmat_id.Value := qrBuscaSolicitacaoMAT_ID.AsInteger;
                          qrItensmat_desc.Value := qrBuscaSolicitacaoMAT_DESC.AsString;
                          //qrItenscodBionexo.Value := qrBuscaSolicitacaoCOD_BIONEXO.AsString;
                          qrItensQtdeTotal.Value := qrBuscaSolicitacaoQTDE.Value;
                          qrItens.Post;
                          WITH qrAux do begin
                              Close;
                              SQL.Clear;
                              SQL.Add('update ITEM_SOLICITACAO set atendeu = ''S'' where ITEM = ' + qrBuscaSolicitacaoITEM.AsString);
                              ExecSQL;
                          end;
                      end;
                      qrBuscaSolicitacao.Next;
                 end;
                 pnlGeracao.Visible := False;
                 pnlTools.Enabled := True;
                 ShowModal;
             end;
       end;
   end;

end;

end.

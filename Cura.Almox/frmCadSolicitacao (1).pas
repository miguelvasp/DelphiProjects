unit frmCadSolicitacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzTabs, wwSpeedButton, wwDBNavigator, wwclearpanel, ExtCtrls, ImgList,
  wwdblook, Db, StdCtrls, Mask, DBCtrls, ADODB, wwdbedit, Wwdotdot,
  Wwdbcomb, JvExControls, JvComponent, JvEnterTab, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TfrmCadSolicitaca = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    qrSolicitacao: TADOQuery;
    qrSolicitacaoid: TAutoIncField;
    qrSolicitacaoUsuario: TIntegerField;
    qrSolicitacaoCC: TIntegerField;
    qrSolicitacaodata: TDateTimeField;
    qrSolicitacaostatus: TIntegerField;
    qrSolicitacaoCOT_ID: TIntegerField;
    qrSolicitacaoSEL: TStringField;
    qrSolicitacaoDT_PROGRAMACAO: TDateTimeField;
    qrSolicitacaoLOCAL_ID: TIntegerField;
    qrSolicitacaoTIPO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsSolicitacao: TDataSource;
    Label2: TLabel;
    qrCentroCusto: TADOQuery;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    cboCusto: TwwDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label5: TLabel;
    cboTipo: TwwDBComboBox;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    qrLocal: TADOQuery;
    qrLocalLOCAL_ID: TAutoIncField;
    qrLocalDESCRICAO: TStringField;
    qrUsuario: TADOQuery;
    qrUsuarioCH: TAutoIncField;
    qrUsuarioNOME: TStringField;
    JvEnterAsTab1: TJvEnterAsTab;
    Panel2: TPanel;
    Panel3: TPanel;
    wwDBGrid1: TwwDBGrid;
    qrItem: TADOQuery;
    qrItemSOL_ID: TIntegerField;
    qrItemITEM: TAutoIncField;
    qrItemMAT_ID: TIntegerField;
    qrItemUNIDADE: TIntegerField;
    qrItemQTDE: TFloatField;
    qrItemORD_ID: TIntegerField;
    qrItemMARCADOR: TStringField;
    qrItemATENDEU: TStringField;
    qrItemMAT_DESC: TStringField;
    qrItemGENERICO: TStringField;
    qrItemCOT_ID: TIntegerField;
    dsItem: TDataSource;
    chkSemCadastro: TDBCheckBox;
    cboMaterial: TwwDBLookupCombo;
    Label8: TLabel;
    qrMatCadastro: TADOQuery;
    StringField1: TStringField;
    qrMatCadastroESTOQUE: TFloatField;
    AutoIncField1: TAutoIncField;
    qrMatCadastrouni_id: TIntegerField;
    edtMaterial: TDBEdit;
    qrUnidades: TADOQuery;
    qrUnidadesUNI_ID: TIntegerField;
    qrUnidadesUNI_SIGLA: TStringField;
    qrUnidadesUNI_DESC: TStringField;
    cboUnidade: TwwDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    qrItemUNI_SIGLA: TStringField;
    qrItemMATERIAL: TStringField;
    qrSolicitacaoMOTIVO: TStringField;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    procedure qrSolicitacaoNewRecord(DataSet: TDataSet);
    procedure qrSolicitacaoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RzPageControl1Change(Sender: TObject);
    procedure CarregaUnidades(cadastro : string);
    procedure cboMaterialCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboMaterialExit(Sender: TObject);
    procedure edtMaterialExit(Sender: TObject);
    procedure chkSemCadastroClick(Sender: TObject);
    procedure dsItemDataChange(Sender: TObject; Field: TField);
    procedure qrItemBeforePost(DataSet: TDataSet);
    procedure qrItemNewRecord(DataSet: TDataSet);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure qrItemAfterPost(DataSet: TDataSet);
    procedure cboUnidadeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmCadSolicitaca: TfrmCadSolicitaca;

implementation

uses UMenu, UfrmRelSolicitacao, USolicitacao;

{$R *.DFM}

procedure TfrmCadSolicitaca.qrSolicitacaoNewRecord(DataSet: TDataSet);
begin
   qrSolicitacaoUsuario.Value := FMenu.sqlUsuariosCH.Value;
   qrSolicitacaodata.Value := Now;
   qrSolicitacaoTIPO.Value := 'N';
end;

procedure TfrmCadSolicitaca.qrSolicitacaoBeforePost(DataSet: TDataSet);
begin
   if cboLocal.Text = '' then begin
        MessageBox(Self.Handle, 'Informe o local', 'Erro', MB_OK + MB_ICONERROR);
        Abort;
   end;

   if cboCusto.Text = '' then begin
        MessageBox(Self.Handle, 'Informe o Centro de Custo', 'Erro', MB_OK + MB_ICONERROR);
        Abort;
   end;


end;

procedure TfrmCadSolicitaca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FMenu.N_SOLICITACAO := 0;
  Action := caFree;
  frmCadSolicitaca := nil;
end;

procedure TfrmCadSolicitaca.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  qrCentroCusto.Open;
  qrLocal.Open;
  qrUsuario.Open;
  qrSolicitacao.Parameters[0].Value := FMenu.N_SOLICITACAO;
  qrSolicitacao.Open;
  qrMatCadastro.Open;



  RzPageControl1.ActivePageIndex := 0;
  wwDBNavigator1.DataSource := dsSolicitacao;

  IF FMenu.N_SOLICITACAO = 0 then
        qrSolicitacao.Append;
end;

procedure TfrmCadSolicitaca.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrItemGENERICO.Value = 'S' then
        ABrush.Color := $009DFFFF;

   IF Highlight then
        AFont.Color := clBlue
   else
        AFont.Color := clBlue;
end;

procedure TfrmCadSolicitaca.RzPageControl1Change(Sender: TObject);
begin
  if qrSolicitacaoid.AsString = '' then begin
      RzPageControl1.ActivePageIndex := 0;
      MessageBox(Self.Handle, 'É necessário salvar as informações da Solicitação!', 'Erro', MB_OK + MB_ICONERROR);
      wwDBNavigator1.DataSource := dsSolicitacao;
  end;

  if RzPageControl1.ActivePageIndex = 0 then
        wwDBNavigator1.DataSource := dsSolicitacao
  else
  begin
        wwDBNavigator1.DataSource := dsItem;
        qrItem.Close;
        qrItem.Parameters[0].Value := qrSolicitacaoid.Value;
        qrItem.Open;
  end;
end;

procedure TfrmCadSolicitaca.CarregaUnidades(cadastro: string);
begin
        with qrUnidades do begin
            Close;
            sql.Clear;
            if cadastro = 'S' then begin
               SQL.Add(
                 '  SELECT '+
                 '  DISTINCT  A.UNI_ID, B.UNI_SIGLA, B.UNI_DESC '+
                 '  FROM MATERIAL_MARCA A INNER JOIN UNIDADES B ON A.UNI_ID = B.UNI_ID '
               );
               if cboMaterial.Text <> '' then
                  SQL.Add('WHERE A.MAT_ID = ' + cboMaterial.LookupValue);
            end else begin
               SQL.Add(
                 '  SELECT '+
                 '  DISTINCT  B.UNI_ID, B.UNI_SIGLA, B.UNI_DESC '+
                 '  FROM  UNIDADES B '
               );
            end;
            SQL.Add('ORDER BY B.UNI_SIGLA');
            Open;
        end;
end;

procedure TfrmCadSolicitaca.cboMaterialCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  CarregaUnidades('S');
end;

procedure TfrmCadSolicitaca.cboMaterialExit(Sender: TObject);
begin
  CarregaUnidades('S');
end;

procedure TfrmCadSolicitaca.edtMaterialExit(Sender: TObject);
begin
  CarregaUnidades('N');
end;

procedure TfrmCadSolicitaca.chkSemCadastroClick(Sender: TObject);
begin
    if RzPageControl1.ActivePageIndex = 1 then begin
        if chkSemCadastro.Checked then
        begin
           // cboMaterial.Text := '';
            cboMaterial.Visible := False;
            edtMaterial.Visible := True;
           // edtMaterial.Text := '';
            //if edtMaterial.Visible then
           //     edtMaterial.SetFocus;
        end
        else
        begin
            cboMaterial.Visible := True;
            //cboMaterial.Text := '';
            //edtMaterial.Text := '';
            edtMaterial.Visible := False;
           // if cboMaterial.Visible then
           //     cboMaterial.SetFocus;
        end;
    end;
end;

procedure TfrmCadSolicitaca.dsItemDataChange(Sender: TObject;
  Field: TField);
begin
if RzPageControl1.ActivePageIndex = 1 then begin

  IF qrItemGENERICO.Value = 'S' then begin
        CarregaUnidades('N');
        cboMaterial.Visible := False;
        edtMaterial.Visible := True;
  END else BEGIN
        CarregaUnidades('S');
        edtMaterial.Visible := False;
        cboMaterial.Visible := True;
  end;
end;


end;

procedure TfrmCadSolicitaca.qrItemBeforePost(DataSet: TDataSet);
begin
  if DBEdit2.Text = '' then
  begin
      MessageBox(Self.Handle, 'Informe a quantidade', 'Erro', MB_OK);
      Abort;
  end;

  if cboUnidade.Text = '' then
  begin
      MessageBox(Self.Handle, 'Informe a unidade', 'Erro', MB_OK);
      Abort;
  end;

  if (chkSemCadastro.Checked) and (edtMaterial.Text = '') then
  begin
      MessageBox(Self.Handle, 'Informe o material sem cadastro', 'Erro', MB_OK);
      Abort;
  end;

  if (chkSemCadastro.Checked = False) and (cboMaterial.Text = '') then
  begin
      MessageBox(Self.Handle, 'Informe o material', 'Erro', MB_OK);
      Abort;
  end;

  if qrSolicitacaoid.AsString = '' then
  begin
        MessageBox(Self.Handle, 'Item sem possibilidade de vinculo a solicitação', 'Erro', MB_OK);
        Abort;
  end;

  //pega o valor do id do material sem cadastro do menu
  if chkSemCadastro.Checked then
        qrItemMAT_ID.AsInteger := StrToInt(FMenu.lbSemCadastro.Caption);


end;

procedure TfrmCadSolicitaca.qrItemNewRecord(DataSet: TDataSet);
begin
  qrItemSOL_ID.Value := qrSolicitacaoid.Value;
  qrItemGENERICO.Value := 'N';
end;

procedure TfrmCadSolicitaca.wwDBNavigator1ButtonClick(Sender: TObject);
begin
    frmRelSolicitacao := TfrmRelSolicitacao.Create(Self);
    with frmRelSolicitacao do begin
        lbLocal.Caption := cboLocal.Text;
        lbCentro.Caption := cboCusto.Text;
        lbTipo.Caption := cboTipo.Text;
        QuickRep1.Preview;
        Close;
    end;
end;

procedure TfrmCadSolicitaca.qrItemAfterPost(DataSet: TDataSet);
begin
  qrItem.close;
  qrItem.Open;
end;

procedure TfrmCadSolicitaca.cboUnidadeEnter(Sender: TObject);
begin
    if RzPageControl1.ActivePageIndex = 1 then begin
        if chkSemCadastro.Checked then
        begin
           // cboMaterial.Text := '';
            cboMaterial.Visible := False;
            edtMaterial.Visible := True;
           // edtMaterial.Text := '';

        end
        else
        begin
            cboMaterial.Visible := True;
            //cboMaterial.Text := '';
            //edtMaterial.Text := '';
            edtMaterial.Visible := False;

        end;
    end;
end;

end.

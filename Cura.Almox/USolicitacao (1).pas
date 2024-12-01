unit USolicitacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwSpeedButton, wwDBNavigator, wwclearpanel, DBCtrls, Buttons, ImgList,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, Mask, RzPanel,
  RzRadGrp, RzTabs, Db, ADODB, RzButton, RzEdit;

type
  TfrmSolicitacao = class(TForm)
    pnlBusca: TPanel;
    pnlCadastro: TPanel;
    qrBusca: TADOQuery;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    rbStatus: TRzRadioGroup;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cboSearchCentro: TwwDBLookupCombo;
    Label4: TLabel;
    cboSearchMaterial: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    dsBusca: TDataSource;
    qrCentroCusto: TADOQuery;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    RzPageControl2: TRzPageControl;
    TabSheet2: TRzTabSheet;
    qrSolicitacao: TADOQuery;
    qrSolicitacaoid: TAutoIncField;
    qrSolicitacaoUsuario: TIntegerField;
    qrSolicitacaoCC: TIntegerField;
    qrSolicitacaoDATA: TDateTimeField;
    qrSolicitacaoSTATUS: TIntegerField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    dsSolicitacao: TDataSource;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    cboCentroCusto: TwwDBLookupCombo;
    Label10: TLabel;
    BitBtn3: TBitBtn;
    RzPageControl3: TRzPageControl;
    TabSheet3: TRzTabSheet;
    qrItens: TADOQuery;
    wwDBGrid2: TwwDBGrid;
    qrMatCadastro: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    dsItens: TDataSource;
    qrUnidades: TADOQuery;
    qrUnidadesUNI_ID: TAutoIncField;
    qrUnidadesUNI_SIGLA: TStringField;
    qrMatCadastrouni_id: TIntegerField;
    qrBuscaUnidade: TADOQuery;
    qrMatCadastroESTOQUE: TFloatField;
    ImageList1: TImageList;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    DBNavigator2: TDBNavigator;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    qrItensGENERICO: TStringField;
    qrItensMAT_DES: TStringField;
    qrItensQTDE: TFloatField;
    qrItensUNI_SIGLA: TStringField;
    qrItensMAT_ID: TIntegerField;
    qrItensitem: TAutoIncField;
    RzBitBtn3: TRzBitBtn;
    qrAux: TADOQuery;
    qrBuscaID: TAutoIncField;
    qrBuscaCC_Desc: TStringField;
    qrBuscaDescricao: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaQTDE: TFloatField;
    qrBuscaUNI_SIGLA: TStringField;
    qrBuscaORD_ID: TIntegerField;
    qrBuscaCOT_ID: TIntegerField;
    BitBtn5: TBitBtn;
    qrBuscaTIPO: TStringField;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label12: TLabel;
    btnImprimir: TBitBtn;
    qrBuscaMOTIVO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MudarPanel(estado : integer);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cboSearchCentroExit(Sender: TObject);
    procedure cboSearchMaterialExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cboCentroCustoExit(Sender: TObject);
    procedure qrSolicitacaoNewRecord(DataSet: TDataSet);
    procedure qrSolicitacaoBeforePost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsSolicitacaoDataChange(Sender: TObject; Field: TField);
    procedure qrItensBeforePost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure qrItensNewRecord(DataSet: TDataSet);
    procedure qrSolicitacaoAfterPost(DataSet: TDataSet);
    procedure chkCadClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmSolicitacao: TfrmSolicitacao;
  //N_SOLICITACAO : Integer;
implementation

uses UMenu, UfrmAddItemSol, frmCadSolicitacao, ufrmRelSolicitaoCompras;

{$R *.DFM}

procedure TfrmSolicitacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSolicitacao := nil;
end;

procedure TfrmSolicitacao.MudarPanel(estado : integer);
begin
  //estado 0 consulta; estado 1 cadastro
  if estado = 1 then
  begin
      pnlBusca.Align := alNone;
      pnlBusca.Width := 0;
      pnlCadastro.Align := alClient;
     // wwDBLookupCombo1.Visible := True;
  end
  else
  begin
      pnlCadastro.Align := alNone;
      pnlCadastro.Width := 0;
      pnlBusca.Align := alClient;
      
  end;
end;

procedure TfrmSolicitacao.FormCreate(Sender: TObject);
begin
  MudarPanel(0);
  qrCentroCusto.Open;
  qrMateriais.Open;
  qrMatCadastro.Open;
  qrUnidades.Open;
end;

procedure TfrmSolicitacao.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin


  if qrBuscaCOT_ID.AsString = '' then begin
        ABrush.Color := clWhite;
        IF qrBuscaTIPO.AsString = 'U' then
           ABrush.Color := clRed;
        IF qrBuscaTIPO.AsString = 'E' then
           ABrush.Color := clRed;
  end;
  IF (qrBuscaCOT_ID.AsString <> '') and (qrBuscaORD_ID.AsString = '') THEN
        ABrush.Color := $00BBC8CC;
  IF qrBuscaORD_ID.AsString <> '' THEN
        ABrush.Color := $00A8FFFF;

  AFont.Color := clBlack;
end;

procedure TfrmSolicitacao.cboSearchCentroExit(Sender: TObject);
begin
  if cboSearchCentro.Text = '' then
        cboSearchCentro.LookupValue := '';

  if cboSearchCentro.LookupValue <> '' then
        cboSearchCentro.Text := qrCentroCustoCC_Desc.Value;
end;

procedure TfrmSolicitacao.cboSearchMaterialExit(Sender: TObject);
begin
  if cboSearchMaterial.Text = '' then
        cboSearchMaterial.LookupValue := '';

  if cboSearchMaterial.LookupValue <> '' then
        cboSearchMaterial.Text := qrMateriaisMAT_DESC.Value;
end;

procedure TfrmSolicitacao.BitBtn1Click(Sender: TObject);
var d1, d2 :TDateTime;
begin
      if MaskEdit1.Text <> '  /  /    ' then
        d1 := StrToDate(MaskEdit1.Text);

      if MaskEdit2.Text <> '  /  /    ' then
        d2 := StrToDate(MaskEdit2.Text);


       with qrBusca do
       begin
           Close;
           sql.Clear;
           sql.Add(
             '   SELECT '+
             '     S.ID, '+
             '     C.CC_Desc, '+
             '     L.Descricao,  '+
             '     CASE  '+
             '             WHEN I.GENERICO = ''S'' THEN I.MAT_DESC  '+
             '             WHEN I.GENERICO IS NULL THEN M.MAT_DESC '+
             '             ELSE M.MAT_DESC '+
             '     END AS MAT_DESC, '+
             '     I.QTDE, '+
             '     U.UNI_SIGLA, '+
             '     I.ORD_ID,  '+
             '     I.COT_ID, S.TIPO, S.MOTIVO    '+
             '   FROM   SOLICITACAO  S left outer JOIN ITEM_SOLICITACAO I ON S.ID = I.SOL_ID  '+
             '        LEFT OUTER JOIN MATERIAIS M ON I.MAT_ID = M.MAT_ID  '+
             '        LEFT OUTER JOIN CENTRO_CUSTO	C ON C.CC_ID = S.CC  '+
             '        LEFT OUTER JOIN LOCAL L ON S.LOCAL_ID = L.LOCAL_ID  '+
             '        LEFT OUTER JOIN UNIDADES U ON I.UNIDADE = U.UNI_ID  '
           );

           IF FMenu.sqlUsuariosGER_COMPRAS.AsString = 'S' then
                SQL.Add('WHERE 1 = 1 ')
           else
                SQL.Add('WHERE S.USUARIO = ' + FMenu.sqlUsuariosCH.AsString);

           IF MaskEdit1.Text <> '  /  /    ' then
                SQL.Add(' AND CONVERT(CHAR(10), S.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

           IF MaskEdit2.Text <> '  /  /    ' then
                SQL.Add(' AND CONVERT(CHAR(10), S.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));

           if rbStatus.ItemIndex = 0  then
                SQL.Add('AND I.COT_ID IS NULL');
           if rbStatus.ItemIndex = 1  then
                SQL.Add('AND I.COT_ID IS NOT NULL AND I.ORD_ID IS NULL');
           if rbStatus.ItemIndex = 2  then
                SQL.Add('AND I.ORD_ID IS NOT NULL');

           if ComboBox1.ItemIndex > 0 then begin
               sql.Add('and S.TIPO = ' + QuotedStr(Copy(ComboBox1.Text, 1, 1)));
           end;

           if cboSearchCentro.Text <> '' then
                SQL.Add('AND S.CC = ' + cboSearchCentro.LookupValue);

           IF cboSearchMaterial.Text <> '' then
                SQL.Add('AND M.MAT_ID = ' + cboSearchMaterial.LookupValue);

           Open;
       end;
end;

procedure TfrmSolicitacao.cboCentroCustoExit(Sender: TObject);
begin
  if cboCentroCusto.LookupValue <> '' then
        cboCentroCusto.Text := qrCentroCustoCC_Desc.Value;
end;

procedure TfrmSolicitacao.qrSolicitacaoNewRecord(DataSet: TDataSet);
begin
  qrSolicitacaoUsuario.Value := FMenu.sqlUsuariosCH.Value;
  qrSolicitacaoDATA.Value := Date;
  qrSolicitacaoSTATUS.Value := 0;
end;

procedure TfrmSolicitacao.qrSolicitacaoBeforePost(DataSet: TDataSet);
begin
   if cboCentroCusto.Text = '' then
   begin
      MessageBox(0, 'Centro de custo é campo obrigatório!', 'Erro', MB_ICONERROR or MB_OK);
      Abort;
   end;
end;

procedure TfrmSolicitacao.BitBtn3Click(Sender: TObject);
begin
  if qrSolicitacao.State in [dsInsert, dsEdit] then
  begin
     qrSolicitacao.Post;
     qrItens.Close;
     qrItens.Parameters[0].Value := qrSolicitacaoid.Value;
     qrItens.Open;
  end;
end;

procedure TfrmSolicitacao.SpeedButton1Click(Sender: TObject);
begin
  MudarPanel(1);
  qrSolicitacao.close;
  qrSolicitacao.Parameters[0].Value := 0;
  qrSolicitacao.Open;
  qrSolicitacao.Append;
  cboCentroCusto.SetFocus;
end;

procedure TfrmSolicitacao.dsSolicitacaoDataChange(Sender: TObject;
  Field: TField);
begin
  qrItens.Close;
  qrItens.Open;
end;

procedure TfrmSolicitacao.qrItensBeforePost(DataSet: TDataSet);
begin




  

  {IF qrItensMAT_ID.AsString = '' then
  begin
     MessageBox(0, 'Material é campo de preenchimento obrigatório!', 'Erro', MB_ICONERROR or MB_OK);
     Abort;
  end;  }

  {IF qrItensQTDE.AsString = '' then
  begin
     MessageBox(0, 'quantidade é campo de preenchimento obrigatório!', 'Erro', MB_ICONERROR or MB_OK);
     Abort;
  end; }

end;

procedure TfrmSolicitacao.BitBtn2Click(Sender: TObject);
begin

  if qrBuscaID.AsString = '' then    Abort;


   FMenu.N_SOLICITACAO := qrBuscaID.Value;
 frmCadSolicitaca := TfrmCadSolicitaca.Create(Self);

 frmCadSolicitaca.ShowModal;

end;

procedure TfrmSolicitacao.BitBtn4Click(Sender: TObject);
begin
   MudarPanel(0);
end;

procedure TfrmSolicitacao.SBT_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSolicitacao.qrItensNewRecord(DataSet: TDataSet);
begin
   qrItensGENERICO.Value := 'N';
//   wwDBLookupCombo1.Visible := True;
end;

procedure TfrmSolicitacao.qrSolicitacaoAfterPost(DataSet: TDataSet);
begin
  //wwDBLookupCombo1.Visible := True;
end;

procedure TfrmSolicitacao.chkCadClick(Sender: TObject);
begin
  {if chkCad.Checked then begin
        edtMaterial.Visible := True;
        wwDBLookupCombo1.Visible := False;
        //edtMaterial.SetFocus;
  end
  else
  begin
      wwDBLookupCombo1.Visible := True;
      edtMaterial.Visible := False;
      //wwDBLookupCombo1.SetFocus;
  end; }
end;

procedure TfrmSolicitacao.RzBitBtn1Click(Sender: TObject);
begin
  frmAddItemSol := TfrmAddItemSol.Create(Self);
  frmAddItemSol.lbItem.Caption := '0';
  frmAddItemSol.ShowModal;

  qrItens.Close;
  qrItens.Open;

  RzBitBtn1.SetFocus;
end;

procedure TfrmSolicitacao.RzBitBtn2Click(Sender: TObject);
begin
  frmAddItemSol := TfrmAddItemSol.Create(Self);
  with frmAddItemSol do begin
      wwDBLookupCombo1.LookupValue := qrItensMAT_ID.AsString;
      edtMat.Text := qrItensMAT_DES.Value;
      edtQtde.Text := qrItensQTDE.AsString;
      lbItem.Caption := qrItensitem.AsString;
      if qrItensGENERICO.AsString = 'S' then begin
        CheckBox1.Checked := true;
        wwDBLookupCombo1.Visible := False;
        edtMat.Visible := True;
      end;
        ShowModal;
  end;
  qrItens.Close;
  qrItens.Open;
  RzBitBtn1.SetFocus;

end;

procedure TfrmSolicitacao.wwDBGrid2DblClick(Sender: TObject);
begin
  if qrItensMAT_ID.AsString <> '' then
     RzBitBtn2.Click;   
end;

procedure TfrmSolicitacao.RzBitBtn3Click(Sender: TObject);
begin

  if MessageBox(Self.Handle, 'Deseja eliminar o registro selecionado?', 'Confirmação', MB_YESNO) = 7 then
        Abort;

  if qrItensitem.AsString <> '' then begin
      with qrAux do begin
          Close;
          sql.Clear;
          sql.Add('delete from item_solicitacao where item = ' + qrItensitem.AsString);
          ExecSQL;
      end;
      qrItens.Close;
      qrItens.Open;
  end;
end;

procedure TfrmSolicitacao.BitBtn5Click(Sender: TObject);
begin

  FMenu.N_SOLICITACAO := 0;
 frmCadSolicitaca := TfrmCadSolicitaca.Create(Self);

 frmCadSolicitaca.ShowModal;
end;

procedure TfrmSolicitacao.btnImprimirClick(Sender: TObject);
var filtros : WideString;
begin
  filtros := '';
  case rbStatus.ItemIndex of
   0 : filtros := 'Solicitações em aberto ';
   1 : filtros := 'Solicitações com pedido de cotação ';
   2 : filtros := 'Solicitações atendidas ';
  end;

  if MaskEdit1.Text <> '  /  /    ' then
        filtros :=  filtros + ' Periódo de ' + MaskEdit1.Text;
  if MaskEdit2.Text <> '  /  /    ' then
        filtros :=  filtros + ' Até ' + MaskEdit2.Text;

  if cboSearchCentro.Text <> '' then
        filtros := filtros + ' Centro de custo: ' + cboSearchCentro.Text;

  if cboSearchMaterial.Text <> '' then
        filtros := filtros + ' Material: ' + cboSearchMaterial.Text;

  if ComboBox1.Text <> '' then
        filtros := filtros + ' Tipo de Solicitação : ' + ComboBox1.Text;

   frmRelSolicitaoCompras := TfrmRelSolicitaoCompras.Create(Self);
   frmRelSolicitaoCompras.Filtros.Lines.Text := filtros;
   frmRelSolicitaoCompras.QuickRep1.Preview;
   frmRelSolicitaoCompras.Close;
end;

end.

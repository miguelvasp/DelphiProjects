unit UfrmSolicitacaoMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, jpeg, ExtCtrls, RzTabs, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid,
  Mask, wwdbedit, StdCtrls, wwdblook, DBCtrls, Wwdotdot, Wwdbcomb;

type
  TfrmSolicitacaoMateriais = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btnImprimir: TSpeedButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    qrSolicitacao: TADOQuery;
    qrSolicitacaoSOL_ID: TAutoIncField;
    qrSolicitacaoDATA: TDateTimeField;
    qrSolicitacaoCC_ID: TIntegerField;
    pnlConsulta: TPanel;
    dsGeral: TDataSource;
    qrItens: TADOQuery;
    qrItensITEM: TAutoIncField;
    qrItensMAT_ID: TIntegerField;
    qrItensQTDE_SOL: TFloatField;
    qrItensQTDE_ATENDIDA: TFloatField;
    qrItensSALDO: TFloatField;
    qrItensSTATUS: TStringField;
    qrItensMAT_DESC: TStringField;
    dsSol: TDataSource;
    dsItens: TDataSource;
    Label1: TLabel;
    cboMaterial: TwwDBLookupCombo;
    edtQtde: TwwDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label5: TLabel;
    cboCentroCusto: TwwDBLookupCombo;
    Label6: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label7: TLabel;
    qrSolicitacaoUSUARIO: TStringField;
    Panel2: TPanel;
    DBText1: TDBText;
    Label8: TLabel;
    qrCCCad: TADOQuery;
    qrCCCadCC_ID: TAutoIncField;
    qrCCCadCC_Desc: TStringField;
    qrCCPesq: TADOQuery;
    qrCCPesqCC_ID: TAutoIncField;
    qrCCPesqCC_Desc: TStringField;
    qrMaterial: TADOQuery;
    qrMaterialMAT_ID: TAutoIncField;
    qrMaterialMAT_DESC: TStringField;
    qrItensSOL_ID: TIntegerField;
    qrItensSTATUS_DESC: TStringField;
    qrMatPesq: TADOQuery;
    qrMatPesqMAT_ID: TAutoIncField;
    qrMatPesqMAT_DESC: TStringField;
    wwDBGrid2: TwwDBGrid;
    dsBusca: TDataSource;
    qrBuscaSOL_ID: TAutoIncField;
    qrBuscaDATA: TDateTimeField;
    qrBuscaUSUARIO: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaQTDE_SOL: TFloatField;
    qrBuscaSALDO: TFloatField;
    rgStatus: TRadioGroup;
    cboCCPesq: TwwDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label12: TLabel;
    cboMatPesq: TwwDBLookupCombo;
    btnVisualizar: TButton;
    btnBuscar: TButton;
    edtSol: TEdit;
    Label13: TLabel;
    qrBuscaCC_Desc: TStringField;
    qrStatus: TADOQuery;
    qrStatusACHEI: TIntegerField;
    Button1: TButton;
    btnCopiar: TSpeedButton;
    STP_Copia: TADOStoredProc;
    qrAux: TADOQuery;
    qrSolicitacaoLOCAL_ID: TIntegerField;
    cboUsuarios: TwwDBLookupCombo;
    Label2: TLabel;
    qrUsuarios: TADOQuery;
    qrUsuariosNOME: TStringField;
    Label14: TLabel;
    cboLocal: TwwDBLookupCombo;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    Label15: TLabel;
    cboAprovador: TwwDBLookupCombo;
    qrItensUNI_SIGLA: TStringField;
    qrUnidade: TADOQuery;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    qrMaterialUNI_SIGLA: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cboTipo: TwwDBComboBox;
    Label17: TLabel;
    qrSolicitacaoCOPIA_DE: TIntegerField;
    qrSolicitacaoAPROVADOR: TStringField;
    qrSolicitacaoDT_APROVACAO: TDateTimeField;
    qrSolicitacaoTIPO: TStringField;
    qrSolicitacaoMOTIVO: TStringField;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    cboTp: TComboBox;
    Label19: TLabel;
    qrBuscaSTATUS: TStringField;
    qrBuscaTIPO: TStringField;
    Panel6: TPanel;
    qrSolicitacaoCANCELADO: TStringField;
    qrBuscaCANCELADO: TStringField;
    Button2: TButton;
    DBText2: TDBText;
    qrItensOBS: TStringField;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    Button3: TButton;
    qrSolicitacaoCONCLUIDO: TStringField;
    qryLocalUsuario: TADOQuery;
    qryLocalUsuarioLOCAL_ID: TIntegerField;
    qryLocalUsuarioDescricao: TStringField;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure dsGeralDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure OcultaPanel;
    procedure cboMaterialExit(Sender: TObject);
    procedure qrItensNewRecord(DataSet: TDataSet);
    procedure qrItensBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dsBuscaDataChange(Sender: TObject; Field: TField);
    procedure qrSolicitacaoNewRecord(DataSet: TDataSet);
    procedure btnVisualizarClick(Sender: TObject);
    procedure qrItensAfterPost(DataSet: TDataSet);
    procedure dsSolDataChange(Sender: TObject; Field: TField);
    procedure qrSolicitacaoBeforePost(DataSet: TDataSet);
    procedure cboMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure RzPageControl1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button2Click(Sender: TObject);
    procedure qrSolicitacaoCANCELADOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSolicitacaoMateriais: TfrmSolicitacaoMateriais;

implementation

uses UMenu, UfrmRelRequisicaoUsuarios, ufrmRelSaldosRequisicao,
  UfrmAddItemSol, ufrmAdicionaItensSol;

{$R *.DFM}

procedure TfrmSolicitacaoMateriais.FormCreate(Sender: TObject);
begin
  if FMenu.sqlUsuariosadmRequisicao.AsString = 'S' then begin
   qrCCCad.Open;
  end
  else begin
     qrCCCad.sql.Clear;
     qrCCCad.sql.Add(
       ' SELECT * FROM CENTRO_CUSTO '  +
       ' where CC_ID in (select CC_ID from UsuarioAlmoxCentros where ch = ' + FMenu.sqlUsuariosCH.AsString + ')' +
       ' ORDER BY CC_Desc '
     );
     qrCCCad.Open;
  end;
   qrCCPesq.Open;
   qrMaterial.Open;
   qrMatPesq.Open;
   qrUsuarios.Open;
   qrLocal.Open;

   qryLocalUsuario.Close;
   qryLocalUsuario.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
   qryLocalUsuario.Open;

   pnlConsulta.Align := alClient;
   dsGeral.DataSet := qrSolicitacao;

   btnNovo.Enabled := True;
   btnEditar.Enabled := True;
   btnSalvar.Enabled := False;
   btnCancelar.Enabled := False;
   btnExcluir.Enabled := False;
   btnPesquisa.Enabled := False;
   btnImprimir.Enabled := True;
   btnCopiar.Enabled := True;

end;

procedure TfrmSolicitacaoMateriais.RzPageControl1Change(Sender: TObject);
begin
    //antes de mudar o dataset salva se estiver em edit



      if dsGeral.DataSet.State in [dsInsert, dsEdit] then begin
         btnSalvar.Click;
       end else begin

    Application.ProcessMessages;
    if RzPageControl1.ActivePageIndex = 0 then begin
        dsGeral.DataSet := qrSolicitacao;
    end else begin
        dsGeral.DataSet := qrItens;
    end;

    //RETORNA OS BOTOES AO ESTADO PADRAO
   btnNovo.Enabled := True;
   btnEditar.Enabled := True;
   btnSalvar.Enabled := False;
   btnCancelar.Enabled := False;
   btnExcluir.Enabled := True;
   btnPesquisa.Enabled := True;
   btnImprimir.Enabled := True;
   end;


end;

procedure TfrmSolicitacaoMateriais.dsGeralDataChange(Sender: TObject;
  Field: TField);
begin
   if dsGeral.DataSet.State in [dsEdit, dsInsert] then begin
       btnNovo.Enabled := False;
       btnEditar.Enabled := False;
       btnSalvar.Enabled := True;
       btnCancelar.Enabled := True;
       btnExcluir.Enabled := False;
       btnPesquisa.Enabled := False;
       btnImprimir.Enabled := False;
       btnCopiar.Enabled := False;
   end
   else begin
       btnNovo.Enabled := True;
       btnEditar.Enabled := True;
       btnSalvar.Enabled := False;
       btnCancelar.Enabled := False;
       btnExcluir.Enabled := True;
       btnPesquisa.Enabled := True;
       btnImprimir.Enabled := True;
       btnCopiar.Enabled := True;
   end;
end;

procedure TfrmSolicitacaoMateriais.btnNovoClick(Sender: TObject);
begin
   OcultaPanel;
   if dsGeral.DataSet.active = False then
        dsGeral.DataSet.Open;
   dsGeral.DataSet.Append;
end;

procedure TfrmSolicitacaoMateriais.btnEditarClick(Sender: TObject);
begin
   OcultaPanel;
   dsGeral.DataSet.Edit;
end;

procedure TfrmSolicitacaoMateriais.btnSalvarClick(Sender: TObject);
begin
   dsGeral.DataSet.Post;
end;

procedure TfrmSolicitacaoMateriais.btnCancelarClick(Sender: TObject);
begin
  
        dsGeral.DataSet.Cancel;
end;

procedure TfrmSolicitacaoMateriais.btnExcluirClick(Sender: TObject);
begin
   qrStatus.Close;
   qrStatus.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
   qrStatus.Open;

   IF qrStatusACHEI.Value > 0 then begin
       ShowMessage('Não é possível efetuar sua solicitação');
       //dsGeral.DataSet.Cancel;
       Abort;
   end;











    if MessageBox(Self.Handle, 'Deseja excluir o registro?', 'Confirmação',
                   MB_YESNO + MB_ICONQUESTION) = 6 then begin

       if(RzPageControl1.ActivePageIndex = 0) OR (pnlConsulta.Align = ALCLIENT) then begin
           //CANCELA NO LUGAR DE EXCLUIR

               qrSolicitacao.Edit;
               qrSolicitacaoCANCELADO.Value := 'S';
               qrSolicitacao.Post;


           Abort;

           with qrAux do begin
               Close;
               sql.Clear;
               sql.Add('delete from ITEM_SOLMATERIAL where sol_id = ' + qrItensSOL_ID.AsString);
               ExecSQL;
           end;

           with qrAux do begin
               Close;
               sql.Clear;
               sql.Add('delete from SolMaterial where sol_id = ' + qrItensSOL_ID.AsString);
               ExecSQL;
           end;
           pnlConsulta.Align := alClient;
           btnBuscar.Click;
       end else begin
           with qrAux do begin
               Close;
               sql.Clear;
               sql.Add('delete from ITEM_SOLMATERIAL where item = ' + qrItensITEM.AsString);
               ExecSQL;
               qrItens.close;
               qrItens.Open;
           end;
       end;
    end;
end;

procedure TfrmSolicitacaoMateriais.btnPesquisaClick(Sender: TObject);
begin
   dsGeral.DataSet := qrSolicitacao;
   pnlConsulta.Align := alClient;
end;

procedure TfrmSolicitacaoMateriais.OcultaPanel;
begin
   pnlConsulta.Align := alNone;
   pnlConsulta.Width := 0;
end;

procedure TfrmSolicitacaoMateriais.cboMaterialExit(Sender: TObject);
begin
   if qrItens.State in [dsedit, dsInsert] then begin
       if cboMaterial.Text <> '' then  begin
          cboMaterial.Text := qrMaterialMAT_DESC.Value;
          qrItensUNI_SIGLA.AsString := qrMaterialUNI_SIGLA.AsString;
       end;

   end;
end;

procedure TfrmSolicitacaoMateriais.qrItensNewRecord(DataSet: TDataSet);
begin
   qrItensSOL_ID.Value := qrSolicitacaoSOL_ID.Value;
   qrItensQTDE_ATENDIDA.Value := 0;
   qrItensSTATUS.Value := 'A';
end;

procedure TfrmSolicitacaoMateriais.qrItensBeforePost(DataSet: TDataSet);
begin
if qrSolicitacaoCANCELADO.Value = 'S' then begin
       ShowMessage('Solicitação cancelada');
       Abort;
   end;





   qrStatus.Close;
   qrStatus.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
   qrStatus.Open;

   IF qrStatusACHEI.Value > 0 then begin
       ShowMessage('Não é possível efetuar alterações');
       dsGeral.DataSet.Cancel;
       Abort;
   end;

   if  cboMaterial.Text = '' then begin
       ShowMessage('Informe o material');
       Abort;
   end;



   if edtQtde.Text = '' then begin
       ShowMessage('Informe a quantidade');
       Abort;
   end;


   qrItensSALDO.Value := qrItensQTDE_SOL.Value - qrItensQTDE_ATENDIDA.Value;

end;

procedure TfrmSolicitacaoMateriais.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then begin
       //Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmSolicitacaoMateriais.wwDBGrid2DblClick(Sender: TObject);
begin
    btnVisualizar.Click;
end;

procedure TfrmSolicitacaoMateriais.btnBuscarClick(Sender: TObject);
var status : string;
d1, d2 : TDateTime;
begin
  case rgStatus.ItemIndex of
      1 : status := 'A';
      2 : status := 'P';
      3 : status := 'T';
  end;

  if MaskEdit1.Text <> '  /  /    ' then begin
      d1 := StrToDate(MaskEdit1.Text);
  end;



  WITH qrBusca DO begin
      Close;
      SQL.Clear;
      SQL.Add(
        '  SELECT TOP 1000 '+
        '          S.SOL_ID, '+
        '          S.DATA, '+
        '          S.USUARIO, '+
        '          M.MAT_DESC, '+
        '          I.QTDE_SOL, '+
        '          I.SALDO, '+
        '          I.STATUS, CC.CC_Desc, '+
        ' case WHEN TIPO = ''U'' THEN ''URGENTE'' WHEN TIPO = ''E'' THEN ''EMERGÊNCIA'' END AS TIPO, S.CANCELADO '+
        '  FROM SolMaterial S LEFT OUTER JOIN ITEM_SOLMATERIAL I '+
        '  ON S.SOL_ID = I.SOL_ID LEFT OUTER JOIN MATERIAIS M  '+
        '  ON I.MAT_ID = M.MAT_ID INNER JOIN CENTRO_CUSTO CC '+
        '  ON S.CC_ID = CC.CC_ID WHERE 1 = 1 '

      );

      //verifica se administra as requisições
      if FMenu.sqlUsuariosadmRequisicao.AsString <> 'S' then BEGIN
        sql.Add('  AND (S.USUARIO =  ' + QuotedStr(FMenu.sqlUsuariosNome.AsString));
        sql.Add(' OR CC.CC_ID IN (SELECT CC_ID FROM UsuarioAlmoxCentros WHERE CH = 1))');
      end;




      IF edtSol.Text <> '' then
          SQL.Add('AND S.SOL_ID = ' + edtSol.Text);

      if MaskEdit1.Text <> '  /  /    ' then begin
          d1 := StrToDate(MaskEdit1.Text);
          SQL.Add('AND CONVERT(CHAR(10), S.DATA, 112) >= ' + FormatDateTime('YYYYMMDD', D1));
      end;

      if MaskEdit2.Text <> '  /  /    ' then begin
          d2 := StrToDate(MaskEdit2.Text);
          SQL.Add('AND CONVERT(CHAR(10), S.DATA, 112) <= ' + FormatDateTime('YYYYMMDD', D2));
      end;

      IF cboCCPesq.Text <> '' then
          SQL.Add('AND S.CC_ID = ' + cboCCPesq.LookupValue);

      IF cboMatPesq.Text <> '' then
          SQL.Add('AND I.MAT_ID = ' + cboMatPesq.LookupValue);

      if cboUsuarios.Text <> '' then
         sql.Add('AND S.USUARIO = ' + QuotedStr(cboUsuarios.Text));

      if cboLocal.Text <> '' then
         sql.Add('and local_id = ' + cboLocal.LookupValue);

      if cboAprovador.Text <> '' then
        sql.Add('and aprovador = ' + QuotedStr(cboAprovador.Text));

      if (rgStatus.ItemIndex > 0) and (rgStatus.ItemIndex < 4) then  begin
        sql.Add(' and I.status = ' + QuotedStr(status));
        sql.Add(' and isnull(CANCELADO, '''') <> ''S'' ');
      end;

      if rgStatus.ItemIndex = 4 then begin
        sql.Add(' and I.status in (''A'', ''P'')');
        sql.Add(' and isnull(CANCELADO, '''') <> ''S'' ');
      end;

      IF rgStatus.ItemIndex = 5  then
        SQL.Add('AND S.CANCELADO = ''S''');


      if cboTp.Text <> '' then begin
          sql.Add(' and TIPO = ' + QuotedStr(Copy(cboTp.Text, 1, 1)));
      end;

      SQL.Add('ORDER BY S.DATA DESC');
      Open;
  end;

  btnVisualizar.Enabled := True;

end;

procedure TfrmSolicitacaoMateriais.dsBuscaDataChange(Sender: TObject;
  Field: TField);
begin
   qrSolicitacao.Close;
   qrSolicitacao.Parameters[0].Value := qrBuscaSOL_ID.Value;
   qrSolicitacao.Open;
end;

procedure TfrmSolicitacaoMateriais.qrSolicitacaoNewRecord(
  DataSet: TDataSet);
begin
    qrSolicitacaoDATA.Value := Now;
    qrSolicitacaoUSUARIO.Value := FMenu.sqlUsuariosNome.Value;
    qrSolicitacaoLOCAL_ID.Value := FMenu.sqlUsuariosLOCAL_ID.Value;
    qrSolicitacaoTIPO.Value := 'N';
    cboTipo.Text := 'Normal';
end;

procedure TfrmSolicitacaoMateriais.btnVisualizarClick(Sender: TObject);
begin
   if qrBuscaSOL_ID.AsString <> '' then begin
       OcultaPanel;
   end;
end;

procedure TfrmSolicitacaoMateriais.qrItensAfterPost(DataSet: TDataSet);
begin
   qrItens.Close;
   qrItens.Open;
end;

procedure TfrmSolicitacaoMateriais.dsSolDataChange(Sender: TObject;
  Field: TField);
begin
   if qrSolicitacaoCONCLUIDO.Value = 'S' then
      Button3.Enabled := False
   ELSE
      Button3.Enabled := TRUE;


   if qrSolicitacaoCONCLUIDO.Value = 'S' then begin
       TabSheet1.Enabled := False;
       TabSheet2.Enabled := False;
   end
   else
   BEGIN
       TabSheet1.Enabled := True;
       TabSheet2.Enabled := True;
   end;

   qrItens.Close;
   qrItens.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
   qrItens.Open;
end;

procedure TfrmSolicitacaoMateriais.qrSolicitacaoBeforePost(
  DataSet: TDataSet);
begin
   if qrSolicitacaoCANCELADO.Value = 'S' then begin
       ShowMessage('Solicitação cancelada');
       Abort;
   end;

//   if qrSolicitacaoCONCLUIDO.Value = 'S' then begin
//       ShowMessage('Solicitação encaminhada para almoxarifado, não pde ser alterada');
//       Abort;
//   end;
   qrSolicitacaoLOCAL_ID.Value := FMenu.sqlUsuariosLOCAL_ID.Value;
   qrStatus.Close;
   qrStatus.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
   qrStatus.Open;

   IF qrStatusACHEI.Value > 0 then begin
       ShowMessage('Não é possível efetuar alterações');
       dsGeral.DataSet.Cancel;
       Abort;
   end;

   if cboCentroCusto.Text = '' then begin
       ShowMessage('Informe o centro de custo');
       Abort;
   end;


end;

procedure TfrmSolicitacaoMateriais.cboMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then edtQtde.SetFocus;
end;

procedure TfrmSolicitacaoMateriais.edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   begin
     if qrItens.State in [dsEdit, dsInsert] then begin
         qrItens.Post;
     end;
   end;
end;

procedure TfrmSolicitacaoMateriais.RzPageControl1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
    //  if dsGeral.DataSet.State in [dsInsert, dsEdit] then begin
    //     ShowMessage('Salve as informações antes de mudar de tela');
     //    Abort;
    //  end;
end;

procedure TfrmSolicitacaoMateriais.Button1Click(Sender: TObject);
begin

if qrSolicitacaoCANCELADO.Value = 'S' then begin
       ShowMessage('Solicitação cancelada');
       Abort;
   end;
    cboMaterial.SetFocus;
    dsGeral.DataSet.Append;
end;

procedure TfrmSolicitacaoMateriais.btnCopiarClick(Sender: TObject);
begin
   if qrSolicitacaoSOL_ID.AsString <> '' then begin
       if MessageBox(Self.Handle, 'Deseja copiar a Solicitaçao de Materiais?', 'Confirmação',
                   MB_YESNO + MB_ICONQUESTION) = 6 then begin

             STP_Copia.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
             STP_Copia.ExecProc;

             with qrAux do begin
                 close;
                 sql.Clear;
                 sql.Add('SELECT MAX(SOL_ID) AS SOL_ID FROM SolMaterial WHERE COPIA_DE = ' + qrSolicitacaoSOL_ID.AsString);
                 Open;
             end;

             pnlConsulta.Align := alClient;
             edtSol.Text := qrAux.FieldByName('SOL_ID').AsString;
             btnBuscar.Click;

       end;//end if msg
   end;
end;

procedure TfrmSolicitacaoMateriais.btnImprimirClick(Sender: TObject);
begin
  if pnlConsulta.Align = alClient then begin
      frmRelSaldosRequisicao := TfrmRelSaldosRequisicao.Create(Self);
      frmRelSaldosRequisicao.qrBusca.SQL.Clear;
      frmRelSaldosRequisicao.qrBusca.SQL := qrBusca.SQL;
      frmRelSaldosRequisicao.qrBusca.Open;
      frmRelSaldosRequisicao.QuickRep1.Preview;
      frmRelSaldosRequisicao.Close;
      Abort;
  end;

  if qrBusca.IsEmpty = False then begin
        frmRelRequisicaoUsuarios := TfrmRelRequisicaoUsuarios.Create(Self);
        frmRelRequisicaoUsuarios.qrRel.Close;
        frmRelRequisicaoUsuarios.qrRel.Parameters[0].Value := qrBuscaSOL_ID.Value;
        frmRelRequisicaoUsuarios.qrRel.Open;
        frmRelRequisicaoUsuarios.QuickRep1.Preview;
        frmRelRequisicaoUsuarios.Close;
  end;
end;

procedure TfrmSolicitacaoMateriais.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrBuscaSTATUS.AsString = 'A' then ABrush.Color := clLime;
   if qrBuscaSTATUS.AsString = 'P' then ABrush.Color := clYellow;
   if qrBuscaSTATUS.AsString = 'T' then ABrush.Color := clWhite;
   if qrBuscaCANCELADO.AsString = 'S' then ABrush.Color := clRed;

   if Highlight then AFont.Color := clBlack else AFont.Color := clBlack;

end;

procedure TfrmSolicitacaoMateriais.Button2Click(Sender: TObject);
begin
   if qrSolicitacaoCANCELADO.Value = 'S' then begin
       ShowMessage('Solicitação cancelada');
       Abort;
   end;

    frmAdicionaItensSol := tfrmAdicionaItensSol.Create(Self);
    frmAdicionaItensSol.ShowModal;
end;

procedure TfrmSolicitacaoMateriais.qrSolicitacaoCANCELADOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = 'S' then
        Text := 'Solicitação Cancelada';
end;

procedure TfrmSolicitacaoMateriais.Button3Click(Sender: TObject);
begin
   IF MessageBox(Self.Handle, 'Após confirmar a solicitação não poderá ser alterada, deseja continuar?', 'Informação', MB_YESNO) = 7 then
                Abort;

   qrSolicitacao.Edit;
   qrSolicitacaoCONCLUIDO.Value := 'S';
   qrSolicitacao.Post;
   TabSheet1.Enabled := False;
   TabSheet2.Enabled := False;
end;

end.

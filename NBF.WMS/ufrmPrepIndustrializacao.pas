unit ufrmPrepIndustrializacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, DBCtrls, StdCtrls, ExtCtrls, wwdblook, RzTabs, Grids,
  Wwdbigrd, Wwdbgrid, ComCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmPrepIndustrializacao = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    qrPreparacao: TADOQuery;
    qrPreparacaoPREP_ID: TAutoIncField;
    qrPreparacaoPREP_DATA: TDateTimeField;
    qrPreparacaoOS_ID: TIntegerField;
    qrPreparacaoSTATUS: TStringField;
    dsPreparacao: TDataSource;
    lbCliente: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    cboProduto: TwwDBLookupCombo;
    edtQtde: TEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Button2: TButton;
    qrItens: TADOQuery;
    qrItensITEM: TAutoIncField;
    qrItensPRO_ID: TIntegerField;
    qrItensPRO_COD: TStringField;
    qrItensPRO_DESC: TStringField;
    qrItensQTDE: TBCDField;
    qrItensQTDE_BAIXADA: TBCDField;
    dsItens: TDataSource;
    qrAux: TADOQuery;
    qrProdutosKit: TADOQuery;
    qrProdutosKitPRO_ID: TAutoIncField;
    qrProdutosKitPRO_COD: TStringField;
    qrProdutosKitPRO_DESC: TStringField;
    Button3: TButton;
    btnConfirma: TButton;
    lbStatus: TLabel;
    qrIndustrializacaoItens: TADOQuery;
    qrIndustrializacaoItensITEM: TAutoIncField;
    qrIndustrializacaoItensPREP_ID: TIntegerField;
    qrIndustrializacaoItensPRO_ID: TIntegerField;
    qrIndustrializacaoItensQTDE: TBCDField;
    qrIndustrializacaoItensQTDE_BAIXADA: TBCDField;
    Label5: TLabel;
    STP_VERIFICA: TADOStoredProc;
    Panel3: TPanel;
    Label8: TLabel;
    qrFaltantes: TADOQuery;
    wwDBGrid3: TwwDBGrid;
    dsFaltantes: TDataSource;
    qrFaltantesPREP_ID: TIntegerField;
    qrFaltantesPRO_COD: TStringField;
    qrFaltantesPRO_COD_BAIXA: TStringField;
    qrFaltantesSOMA_QTDE: TBCDField;
    qrFaltantesQTDE_TOTAL: TBCDField;
    qrResumo: TADOQuery;
    dsResumo: TDataSource;
    qrResumoPRO_COD: TStringField;
    qrResumoPRO_COD_BAIXA: TStringField;
    qrResumoPRO_DESC: TStringField;
    qrResumoQTDE: TBCDField;
    qrResumoNFI_NUMERO: TStringField;
    qrResumoINSUMO: TStringField;
    qrFaltantesQTDE_FALTANTE: TBCDField;
    STP_NF_COBRANCA: TADOStoredProc;
    STP_NF_RETORNO: TADOStoredProc;
    qrNFItens: TADOQuery;
    qrNFItensINF_CODI: TAutoIncField;
    qrNFItensINF_ITEM: TIntegerField;
    qrNFItensNFI_CODI: TIntegerField;
    qrNFItensPRO_ID: TIntegerField;
    qrNFItensPRO_COD: TStringField;
    qrNFItensPRO_DESC: TStringField;
    qrNFItensINF_QTDE: TFloatField;
    qrNFItensINF_PUNI: TFloatField;
    qrNFItensINF_AIPI: TFloatField;
    qrNFItensINF_VIPI: TFloatField;
    qrNFItensINF_TOTA: TFloatField;
    qrNFItensINF_PESOLIQ: TFloatField;
    qrNFItensINF_PESO: TFloatField;
    qrNFItensINF_VOL: TFloatField;
    qrNFItensINF_AICM: TFloatField;
    qrNFItensINF_BICM: TFloatField;
    qrNFItensINF_VICM: TFloatField;
    qrNFItensUVEN_ID: TIntegerField;
    qrNFItensINF_QTDERETORNADA: TFloatField;
    qrNFItensINF_NFE: TIntegerField;
    qrNFItensINF_QTDERETORNADASALDO: TFloatField;
    qrNFItensESTQ_LOTE1: TStringField;
    qrNFItensESTQ_LOTE1_QTDE: TFloatField;
    qrNFItensESTQ_LOTE2: TStringField;
    qrNFItensESTQ_LOTE2_QTDE: TFloatField;
    qrNFItensINF_CST: TStringField;
    qrNFItensUNIDADE: TStringField;
    qrNFItensNCM: TStringField;
    qrResumoINF_CODI: TIntegerField;
    TabSheet3: TRzTabSheet;
    wwDBGrid4: TwwDBGrid;
    qrNF: TADOQuery;
    qrNFNFI_NUMERO: TStringField;
    qrNFCFA_CODI: TStringField;
    qrNFCFA_DCFO: TStringField;
    qrNFSTATUS: TStringField;
    dsNF: TDataSource;
    Button4: TButton;
    cboTipoDoc: TwwDBComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dsPreparacaoDataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    CODIGO : string;
  public
    { Public declarations }
    pOS_ID : Integer;
    pCLIN_ID : Integer;
  end;

var
  frmPrepIndustrializacao: TfrmPrepIndustrializacao;

implementation

uses UMenu, UOS, ufrmRetornaInsumo;

{$R *.DFM}

procedure TfrmPrepIndustrializacao.Button2Click(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Deseja eliminar o box?', 'Confirmação', MB_YESNO) = 7 then
        Abort;

   if qrItensITEM.AsString <> '' then begin
       with qrAux do begin
           Close;
           sql.Clear;
           sql.Add('delete from OS_INDUSTRIALIZACAO_ITEM  where item = ' + qrItensITEM.AsString);
           ExecSQL;
       end;

       qrItens.Close;
       qrItens.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
       qrItens.Open;

       qrProdutosKit.Close;
       qrProdutosKit.Parameters[0].Value := FOS.cdsOSCLIN_ID.AsInteger;
       qrProdutosKit.Parameters[1].Value := qrPreparacaoPREP_ID.AsInteger;
       qrProdutosKit.Open;

   end;
end;

procedure TfrmPrepIndustrializacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmPrepIndustrializacao := nil;
end;

procedure TfrmPrepIndustrializacao.FormCreate(Sender: TObject);
begin

  qrPreparacao.Close;
  qrPreparacao.Parameters[0].Value := FOS.cdsOSOS_ID.AsInteger;
  qrPreparacao.Open;

  RzPageControl1.ActivePageIndex := 0;
  CODIGO := '';
end;

procedure TfrmPrepIndustrializacao.dsPreparacaoDataChange(Sender: TObject;
  Field: TField);
begin
    qrItens.Close;
    qrItens.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
    qrItens.Open;

    qrProdutosKit.Close;
    qrProdutosKit.Parameters[0].Value := FOS.cdsOSCLIN_ID.AsInteger;
    qrProdutosKit.Parameters[1].Value := qrPreparacaoPREP_ID.AsInteger;
    qrProdutosKit.Open;

    qrResumo.CLOSE;
    qrResumo.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
    qrResumo.Open;

    qrNF.close;
    qrNF.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
    qrnf.Open;

    qrFaltantes.close;
    qrFaltantes.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
    qrFaltantes.Open;

    if qrPreparacaoSTATUS.AsString = 'A' then begin
        btnConfirma.Visible := True;
        lbStatus.Visible := False;
        GroupBox1.Visible := True;
    end
    else
    begin
        btnConfirma.Visible := False;
        IF qrPreparacaoPREP_ID.AsString <> '' then
           lbStatus.Visible := True;
        GroupBox1.Visible := False;
    end;

end;

procedure TfrmPrepIndustrializacao.Button3Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Deseja criar uma nova preparação?', 'Confirmação', MB_YESNO) = 6 then begin
       qrPreparacao.Append;
       qrPreparacaoOS_ID.AsInteger := FOS.cdsOSOS_ID.AsInteger;
       qrPreparacaoPREP_DATA.AsDateTime := Now;
       qrPreparacaoSTATUS.AsString := 'A';
       qrPreparacao.Post;
   end;
end;

procedure TfrmPrepIndustrializacao.Button1Click(Sender: TObject);
begin

   if cboProduto.Text = '' then begin
       ShowMessage('Informe o Produto');
       Abort;
   end;

   if edtQtde.Text = '' then begin
       ShowMessage('Informe a quantidade');
       Abort;
   end;

   qrIndustrializacaoItens.Close;
   qrIndustrializacaoItens.Open;

   qrIndustrializacaoItens.Append;
   qrIndustrializacaoItensPREP_ID.Value := qrPreparacaoPREP_ID.AsInteger;
   qrIndustrializacaoItensPRO_ID.Value := StrToInt(cboProduto.LookupValue);
   qrIndustrializacaoItensQTDE.Value := StrToFloat(edtQtde.Text);
   qrIndustrializacaoItensQTDE_BAIXADA.Value := 0.00;
   qrIndustrializacaoItens.Post;

   qrItens.Close;
   qrItens.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
   qrItens.Open;

   qrProdutosKit.Close;
   qrProdutosKit.Parameters[0].Value := FOS.cdsOSCLIN_ID.AsInteger;
   qrProdutosKit.Parameters[1].Value := qrPreparacaoPREP_ID.AsInteger;
   qrProdutosKit.Open;

   cboProduto.Text := '';
   edtQtde.Text := '';
   cboProduto.SetFocus;


end;

procedure TfrmPrepIndustrializacao.btnConfirmaClick(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Deseja verificar os produtos e emitir as notas fiscais?', 'Confirmação', MB_YESNO) = 7 then
        Abort;


 // Panel2.Caption := 'Verificando produtos';


  //apagamos os dados das tabelas auxiliares
  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add('delete from INDUSTRIALIZACAO_BAIXA where prep_id = ' + qrPreparacaoPREP_ID.AsString);
      ExecSQL;
  end;

  //atualizamos o campo INF_QTDERESERVA PARA ZERO
  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add('UPDATE NF_ITENS SET INF_QTDERESERVADA = 0');
      ExecSQL;
  end;

  
  //criamos as tabelas temporarias
  qrItens.Last;
 // ProgressBar1.Max := qrItens.RecordCount;
  //ProgressBar1.Position := 0;
  qrItens.First;
  while not qrItens.Eof do begin

        STP_VERIFICA.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
        STP_VERIFICA.Parameters[1].Value := qrItensPRO_ID.AsInteger;
        STP_VERIFICA.Parameters[2].Value := qrItensPRO_COD.AsString;
        STP_VERIFICA.Parameters[3].Value := StrToInt(cboTipoDoc.Value);
        STP_VERIFICA.ExecProc;

        qrItens.Next;
        Application.ProcessMessages;
  end;

  qrResumo.CLOSE;
  qrResumo.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
  qrResumo.Open;

  qrFaltantes.close;
  qrFaltantes.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
  qrFaltantes.Open;

  if qrFaltantes.IsEmpty = False then begin
      ShowMessage('A preparação apresentou itens sem estoque, veja a listagem');
      RzPageControl1.ActivePageIndex := 1;
      Abort;
  end;
  

  IF MessageBox(Self.Handle, 'Deseja emitir as notas de cobrança e retorno de industrialização?', 'Confirmação', MB_YESNO) = 7 then
        Abort;


  //emissao de notas fiscais.
  //criar campo prep_id nas notas para eventuais alterações.
  FMenu.ADOConnection.BeginTrans;

  try

        //emite a nota de cobrança
        STP_NF_COBRANCA.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
        STP_NF_COBRANCA.Parameters[1].Value := FOS.cdsOSCLIN_ID.AsInteger;
        STP_NF_COBRANCA.Parameters[2].Value := FOS.cdsOSOS_ID.AsInteger;
        STP_NF_COBRANCA.ExecProc;


        //emite a nota de retorno dos produtos e insumos E BAIXA ESTOQUE
        STP_NF_RETORNO.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
        STP_NF_RETORNO.Parameters[1].Value := FOS.cdsOSCLIN_ID.AsInteger;
        STP_NF_RETORNO.Parameters[2].Value := FOS.cdsOSOS_ID.AsInteger;
        STP_NF_RETORNO.Parameters[3].Value := 'f';
        STP_NF_RETORNO.ExecProc;

        //BAIXAMOS O STATUS DA PREPARAÇÃO
        qrPreparacao.Edit;
        qrPreparacaoSTATUS.AsString := 'E';
        qrPreparacao.Post;


        //EFETUAMOS A BAIXA DAS NOTAS DE ENTRADA
        qrResumo.First;
        while not qrResumo.Eof do begin
            qrNFItens.Close;
            qrNFItens.Parameters[0].Value := qrResumoINF_CODI.AsInteger;
            qrNFItens.Open;

            qrNFItens.Edit;
            qrNFItensINF_QTDERETORNADASALDO.AsFloat := qrNFItensINF_QTDE.AsFloat - (qrNFItensINF_QTDERETORNADA.AsFloat + qrResumoQTDE.AsFloat);
            qrNFItensINF_QTDERETORNADA.AsFloat := qrNFItensINF_QTDERETORNADA.AsFloat + qrResumoQTDE.AsFloat;
            qrNFItens.Post;

            qrResumo.Next;
        end;

        qrNFItens.Close;

        //SE NAO DEU ERRO COMITAMOS A TRANSAÇÃO PARA CONFIRMAR OS DADOS.
        FMenu.ADOConnection.CommitTrans;
  except
      ON E : Exception DO BEGIN
          FMenu.ADOConnection.RollbackTrans;
          ShowMessage('Aconteceu um erro: ' + e.Message);
      end;
  end;


end;

procedure TfrmPrepIndustrializacao.Button4Click(Sender: TObject);
begin
  frmRetornaInsumo := TfrmRetornaInsumo.Create(Self);
  frmRetornaInsumo.ShowModal;
end;

end.

unit UMenu;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, StdCtrls, jpeg, ExtCtrls, ComCtrls, Wwquery,
  ImgList, ADODB, Buttons, OleCtrls, SHDocVw, HTTPApp, MSHTML, Mask,
  DBCtrls, ShellAPI;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;

    Tabelas: TMenuItem;
    Fornecedores: TMenuItem;
    GrupodeMateriais: TMenuItem;
    Materiais: TMenuItem;
    Unidades: TMenuItem;
    Sec_Basefin: TSession;
    N1: TMenuItem;
    CondPag: TMenuItem;
    Cadastros: TMenuItem;
    Sair: TMenuItem;
    OrdemdeCompra: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Motivos: TMenuItem;
    Locais: TMenuItem;
    Almoxarifado: TMenuItem;
    Ajuste: TMenuItem;
    Marcas: TMenuItem;
    EntradaNF: TMenuItem;
    Kardex: TMenuItem;
    Requisicao: TMenuItem;
    N2: TMenuItem;
    CentrosdeCustos: TMenuItem;
    Busca: TMenuItem;
    TipodeDocumento: TMenuItem;
    DevForn: TMenuItem;
    Inventario: TMenuItem;
    Usuarios: TMenuItem;
    CONSUMOMATERIAIS: TMenuItem;
    ImageList1: TImageList;
    ESTOQUE_MINIMO: TMenuItem;
    lbVersao: TLabel;
    qrVersao: TwwQuery;
    qrAtualizaVersao: TwwQuery;
    qrVersaoNUMERO: TIntegerField;
    Database1: TDatabase;
    UPD_MATFORN: TUpdateSQL;
    ADOConnection: TADOConnection;
    Compras: TMenuItem;
    SOLICITACAO: TMenuItem;
    COTACAO: TMenuItem;
    ESTOQUE: TMenuItem;
    qrVersaoCONEXAO: TStringField;
    chkCentral: TCheckBox;
    chkControlaEstoque: TCheckBox;
    qrLocal: TADOQuery;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrLocais: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    qrLocaisLocal_ID: TAutoIncField;
    qrLocaisDescricao: TStringField;
    qrLocaisDisponivelSN: TStringField;
    Transferencia: TMenuItem;
    AlteraSenha: TMenuItem;
    qrFoto: TADOQuery;
    qrFotoParam_ID: TAutoIncField;
    qrFotoPIS: TFloatField;
    qrFotoCofins: TFloatField;
    qrFotoNum_Inv: TIntegerField;
    qrFotoUsu_Inv: TStringField;
    qrFotoFor_Codi_Inv: TStringField;
    qrFotoFoto: TBlobField;
    qrFotoEmp_Nome: TStringField;
    qrFotoParam_end: TStringField;
    qrFotoParam_bairro: TStringField;
    qrFotoParam_cep: TStringField;
    qrFotoParam_cidade: TStringField;
    qrFotoParam_uf: TStringField;
    qrFotoParam_tel: TStringField;
    qrFotoParam_site: TStringField;
    qrFotoVersao: TFloatField;
    VALIDADE: TMenuItem;
    REL_CONF_REQUISICAO: TMenuItem;
    qrAux: TADOQuery;
    lbSemCadastro: TLabel;
    lbUnidade: TLabel;
    REL_OC_RECEB: TMenuItem;
    Requisicao_Adm: TMenuItem;
    btnSolicitacao: TButton;
    Button2: TButton;
    Requisicao_usu: TMenuItem;
    Requisicao_imp: TMenuItem;
    Requisicao_aprov: TMenuItem;
    CURVA_ABC: TMenuItem;
    N4: TMenuItem;
    REL_OC: TMenuItem;
    DocsQualidade: TMenuItem;
    N5: TMenuItem;
    RelDocsFornecedor: TMenuItem;
    ConsumoFornecedor: TMenuItem;
    AnaliseCompras: TMenuItem;
    LoteValidade: TMenuItem;
    EstoqueMaximo: TMenuItem;
    Ocorrencias: TMenuItem;
    CBARRAS: TMenuItem;
    CONSEQUENCIA: TMenuItem;
    LiberaMaterial: TMenuItem;
    RelIntervalo: TMenuItem;
    ConfereRequisicao: TMenuItem;
    RelTransferencia: TMenuItem;
    EstoqueRetro: TMenuItem;
    ConsultaInvetarioMaterial: TMenuItem;
    RelTransfCustos: TMenuItem;
    Divergencias: TMenuItem;
    qrBusca: TADOQuery;
    qrBuscaData: TDateTimeField;
    qrBuscaSolicitante: TStringField;
    qrBuscaLOCAL: TStringField;
    qrBuscaMaterial: TStringField;
    qrBuscastatus: TStringField;
    qrBuscadivid: TAutoIncField;
    bionexoUpload: TMenuItem;
    bionexoDownload: TMenuItem;
    RelMateriaisInativos: TMenuItem;
    Relatorios1: TMenuItem;
    RequisicaoEstoqueMaxMin: TMenuItem;
    Image1: TImage;
    RequisicaoSimplificada: TMenuItem;
    NFeXML: TMenuItem;
    RelatriodeRastreabilidade: TMenuItem;
    CorrigeValoresRequisicao: TMenuItem;
    AtualizaEstoqueRetroativo: TMenuItem;
    RelatriodeControledeAcessos: TMenuItem;
    RelatoriodeRequisicao: TMenuItem;
    btnAtualizaLocal: TButton;
    TrocarLocaldeEstoque: TMenuItem;
    DataSource1: TDataSource;
    dsLocal: TDataSource;
    sqlUsuarios: TADOQuery;
    sqlUsuariosCH: TAutoIncField;
    sqlUsuariosNome: TStringField;
    sqlUsuariosSenha: TStringField;
    sqlUsuariosAlmoxarifado: TStringField;
    sqlUsuariosAjuste: TStringField;
    sqlUsuariosInventario: TStringField;
    sqlUsuariosKardex: TStringField;
    sqlUsuariosRequisicao: TStringField;
    sqlUsuariosBusca: TStringField;
    sqlUsuariosCadastros: TStringField;
    sqlUsuariosFornecedores: TStringField;
    sqlUsuariosEntradaNF: TStringField;
    sqlUsuariosDevForn: TStringField;
    sqlUsuariosOrdemdeCompra: TStringField;
    sqlUsuariosUsuarios: TStringField;
    sqlUsuariosTabelas: TStringField;
    sqlUsuariosGrupodeMateriais: TStringField;
    sqlUsuariosMateriais: TStringField;
    sqlUsuariosCentrosdeCustos: TStringField;
    sqlUsuariosCondPag: TStringField;
    sqlUsuariosLocais: TStringField;
    sqlUsuariosMotivos: TStringField;
    sqlUsuariosMarcas: TStringField;
    sqlUsuariosTipodeDocumento: TStringField;
    sqlUsuariosUnidades: TStringField;
    sqlUsuariosSair: TStringField;
    sqlUsuariosCONSUMOMATERIAIS: TStringField;
    sqlUsuariosESTOQUE_MINIMO: TStringField;
    sqlUsuariosCOMPRAS: TStringField;
    sqlUsuariosSOLICITACAO: TStringField;
    sqlUsuariosCOTACAO: TStringField;
    sqlUsuariosESTOQUE: TStringField;
    sqlUsuariosLOCAL_ID: TIntegerField;
    sqlUsuariosTransferencia: TStringField;
    sqlUsuariosalterasenha: TStringField;
    sqlUsuariosVALIDADE: TStringField;
    sqlUsuariosREL_CONF_REQUISICAO: TStringField;
    sqlUsuariosREL_OC_RECEB: TStringField;
    sqlUsuariosGER_COMPRAS: TStringField;
    sqlUsuariosRequisicao_Adm: TStringField;
    sqlUsuariosRequisicao_usu: TStringField;
    sqlUsuariosRequisicao_imp: TStringField;
    sqlUsuariosRequisicao_aprov: TStringField;
    sqlUsuariosCURVA_ABC: TStringField;
    sqlUsuariosREL_OC: TStringField;
    sqlUsuariosDocsQualidade: TStringField;
    sqlUsuariosRelDocsFornecedor: TStringField;
    sqlUsuariosadmRequisicao: TStringField;
    sqlUsuariosConsumoFornecedor: TStringField;
    sqlUsuariosAnaliseCompras: TStringField;
    sqlUsuariosLoteValidade: TStringField;
    sqlUsuariosEstoqueMaximo: TStringField;
    sqlUsuariosOcorrencias: TStringField;
    sqlUsuariosCBARRAS: TStringField;
    sqlUsuariosRelNaoConformidades: TStringField;
    sqlUsuariosCONSEQUENCIA: TStringField;
    sqlUsuariosLiberaMaterial: TStringField;
    sqlUsuariosRelIntervalo: TStringField;
    sqlUsuariosConfereRequisicao: TStringField;
    sqlUsuariosRelTransferencia: TStringField;
    sqlUsuariosEstoqueRetro: TStringField;
    sqlUsuariosNOME_COMPLETO: TStringField;
    sqlUsuariosConsultaInvetarioMaterial: TStringField;
    sqlUsuariosRelTransfCustos: TStringField;
    sqlUsuariosDivergencias: TStringField;
    sqlUsuariosbionexoDownload: TStringField;
    sqlUsuariosbionexoUpload: TStringField;
    sqlUsuariosRelMateriaisInativos: TStringField;
    sqlUsuariosRelatorios1: TStringField;
    sqlUsuariosRequisicaoEstoqueMaxMin: TStringField;
    sqlUsuariosRequisicaoSimplificada: TStringField;
    sqlUsuariosNFeXML: TStringField;
    sqlUsuariosRelatriodeRastreabilidade: TStringField;
    sqlUsuariosCorrigeValoresRequisicao: TStringField;
    sqlUsuariosAtualizaEstoqueRetroativo: TStringField;
    sqlUsuariosRelatriodeControledeAcessos: TStringField;
    sqlUsuariosRelatoriodeRequisicao: TStringField;
    sqlUsuariosUsuarioAtivo: TStringField;
    sqlUsuariosTrocarLocaldeEstoque: TStringField;
    sqlUsuariosAnaliseEstoquesExcelNet: TStringField;
    AnaliseEstoquesExcelNet: TMenuItem;
    ContaGerencialEntrada: TMenuItem;
    sqlUsuariosContaGerencialEntrada: TStringField;
    NotaDevolucaoFornecedor: TMenuItem;
    sqlUsuariosNotaDevolucaoFornecedor: TStringField;
    AlteraValidadeLote: TMenuItem;
    sqlUsuariosAlteraValidadeLote: TStringField;
    MotivoDescarte: TMenuItem;
    sqlUsuariosMotivoDescarte: TStringField;
    sqlUsuariosDescarteMateriais: TStringField;
    DescarteMateriais: TMenuItem;
    DevolucaoMateriais: TMenuItem;
    sqlUsuariosDevolucaoMateriais: TStringField;
    RelatorioRecebimentoMateriais: TMenuItem;
    sqlUsuariosRelatorioRecebimentoMateriais: TStringField;
    sqlUsuariosAprovaEntregaOCAtrasada: TStringField;
    RelCalculoConsumoGrace: TMenuItem;
    btnGetMaterial: TBitBtn;
    sqlUsuariosRelCalculoConsumoGrace: TStringField;
    sqlUsuariosExcluirNF: TStringField;
    qrVersaoAmbiente: TStringField;
    DataSource2: TDataSource;
    DBText1: TDBText;
    DataSource3: TDataSource;
    procedure FornecedoresClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GrupodeMateriaisClick(Sender: TObject);
    procedure MateriaisClick(Sender: TObject);
    procedure UnidadesClick(Sender: TObject);
    procedure CondPagClick(Sender: TObject);
    procedure OrdemdeCompraClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MotivosClick(Sender: TObject);
    procedure LocaisClick(Sender: TObject);
    procedure AjusteClick(Sender: TObject);
    procedure MarcasClick(Sender: TObject);
    procedure EntradaNFClick(Sender: TObject);
    procedure KardexClick(Sender: TObject);
    procedure RequisicaoClick(Sender: TObject);
    procedure CentrosdeCustosClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure TipodeDocumentoClick(Sender: TObject);
    procedure DevFornClick(Sender: TObject);
    procedure InventarioClick(Sender: TObject);
    procedure UsuariosClick(Sender: TObject);
    procedure CONSUMOMATERIAISClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ESTOQUE_MINIMOClick(Sender: TObject);

    procedure Controla_versao;
    procedure qrVersaoAfterPost(DataSet: TDataSet);
    procedure SOLICITACAOClick(Sender: TObject);
    procedure COTACAOClick(Sender: TObject);
    procedure ESTOQUEClick(Sender: TObject);
    procedure TransferenciaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RecarregaUsuario ;
    procedure AlteraSenhaClick(Sender: TObject);
    procedure VALIDADEClick(Sender: TObject);
    procedure ADOConnectionBeforeConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure REL_CONF_REQUISICAOClick(Sender: TObject);
    procedure REL_OC_RECEBClick(Sender: TObject);
    procedure Requisicao_AdmClick(Sender: TObject);
    procedure Requisicao_usuClick(Sender: TObject);
    procedure Requisicao_impClick(Sender: TObject);
    procedure Requisicao_aprovClick(Sender: TObject);
    procedure CURVA_ABCClick(Sender: TObject);
    procedure REL_OCClick(Sender: TObject);
    procedure DocsQualidadeClick(Sender: TObject);
    procedure RelDocsFornecedorClick(Sender: TObject);
    procedure ConsumoFornecedorClick(Sender: TObject);
    procedure AnaliseComprasClick(Sender: TObject);
    procedure LoteValidadeClick(Sender: TObject);
    procedure EstoqueMaximoClick(Sender: TObject);
    procedure OcorrenciasClick(Sender: TObject);
    procedure CBARRASClick(Sender: TObject);
    procedure CONSEQUENCIAClick(Sender: TObject);
    procedure LiberaMaterialClick(Sender: TObject);
    procedure RelIntervaloClick(Sender: TObject);
    procedure ConfereRequisicaoClick(Sender: TObject);
    procedure RelTransferenciaClick(Sender: TObject);
    procedure EstoqueRetroClick(Sender: TObject);
    procedure ConsultaInvetarioMaterialClick(Sender: TObject);
    procedure RelTransfCustosClick(Sender: TObject);
    procedure DivergenciasClick(Sender: TObject);
    procedure bionexoUploadClick(Sender: TObject);
    procedure bionexoDownloadClick(Sender: TObject);
    procedure RelMateriaisInativosClick(Sender: TObject);
    procedure RequisicaoEstoqueMaxMinClick(Sender: TObject);
    procedure RequisicaoSimplificadaClick(Sender: TObject);
    procedure NFeXMLClick(Sender: TObject);
    procedure RelatriodeRastreabilidadeClick(Sender: TObject);
    procedure CorrigeValoresRequisicaoClick(Sender: TObject);
    procedure AtualizaEstoqueRetroativoClick(Sender: TObject);
    procedure RelatriodeControledeAcessosClick(Sender: TObject);
    procedure RelatoriodeRequisicaoClick(Sender: TObject);
    procedure btnAtualizaLocalClick(Sender: TObject);
    procedure TrocarLocaldeEstoqueClick(Sender: TObject);
    procedure AnaliseEstoquesExcelNetClick(Sender: TObject);
    procedure ContaGerencialEntradaClick(Sender: TObject);
    procedure NotaDevolucaoFornecedorClick(Sender: TObject);
    procedure AlteraValidadeLoteClick(Sender: TObject);
    procedure MotivoDescarteClick(Sender: TObject);
    procedure DescarteMateriaisClick(Sender: TObject);
    procedure DevolucaoMateriaisClick(Sender: TObject);
    procedure RelatorioRecebimentoMateriaisClick(Sender: TObject);
    procedure RelCalculoConsumoGraceClick(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

   procedure Proc_HabilitaMenu(p_Menu: TMainMenu);
  public
    FUsuario : string ;
    N_SOLICITACAO : Integer;
    StrEtiqueta : string [1] ;
    TP_REQUISICAO : string;
    function CGC( STXT : String) : Boolean;
    function CPF( STXT : String) : Boolean;

    { Public declarations }
  end;
  Procedure CENTRO(Form : TForm; Centra : Boolean);

var
  FMenu: TFMenu;

implementation
uses Unt_SENHA,Fornec, UGrMateriais, UMateriais, UUnidades,
  UMatFornecedores, UCondPagto, UOrdCom, UMotivos, ULocais, UAjusEst,
  U_ConsulEstq,UMarcas,UEntrNF, UReceb, UAjusAlm, UKardex, URecebPesq,
  URequisicaoPesq, UCCs, UBDinAlm, UTpDocumento, UDvSel, PesqOC, UPrepInv,
  UUsuarios, UEstoque, UEstoque_minimo, USolicitacao, UCOTACAO,
  UConsultaEstoque, UTransferencia, UTrocaSenha, UBuscaFornecedor,
  UfrmConsultaValidade, UPesqMateriais, UfrmFiltOCReceb, frmCadSolicitacao,
  UfrmSolicitacaoMateriais, UfrmAprovaRequisicao, UfrmCurvaABC,
  ufrmRelOCCompras, frmDocsQualidade, ufrmRelFornecedorDocumentos,
  ufrmRelConsumoFornecedor, ufrmAcompanhaCompras, ufrmConsultaLotes,
  ufrmEstoqueMaximo, ufrmRelOcorrencias, ufrmImprimeEtiqueta,
  ufrmCadConsequencias, ufrmLiberaMaterialRequisicao,
  ufrmRelIntervaloRequisicao, ufrmConfereRequisicao, ufrmRelTransferencia,
  ufrmEstoqueRetroativo, ufrmConsultaInvetarioMaterial, ufrmPesqDivergencia,
  ufrmBionexoUpload, ufrmPesqBionexoUpload, ufrmPesqBionexoDownload,
  frmHistoricoEstoque, UfrmRelMateriaisInativos,
  UfrmConsultaEstoqueMinMaxRequisicao, UfrmRequisicaoSimplificada,
  ufrmNFeXMLPesq, ufrmConsultaValidadeRastreabilidade,
  UfrmCorrigeValoresRequisicao, UfrmAtualizaEstoqueRetroativo,
  ufrmControledeAcessos, ufrmRelatoriodeRequisicao, ufrmTrocaLocal,
  UfrmContaGerencialEntrada, ufrmNotaDevolucaoPesq, ufrmAlteraLoteValidade,
  ufrmMotivoDescarte, frmDescartePesq, ufrmDevolucaoMaterialRequisicaoNova,
  ufrmRelatorioRecebimentoMateriais, ufrmRelCalculoMovimentacaoConsumoGrace;

{$R *.DFM}

procedure TFMenu.FornecedoresClick(Sender: TObject);
begin

     { Application.CreateForm(TFFornecedores, FFornecedores);
      FFornecedores.ShowModal;
      FFornecedores.Release; }

      frmBuscaFornecedor := TfrmBuscaFornecedor.Create(Self);
      frmBuscaFornecedor.ShowModal;

end;

procedure TFMenu.SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if MessageDlg('Deseja realmente finalizar o sistema?', mtConfirmation,
                [mbyes,mbno], 0) = mrno then
        abort;
    Database1.Connected := false;

    
end;

procedure TFMenu.FormShow(Sender: TObject);
var Altura, Largura, X, Y : Integer;
versao : string;

document : IHTMLDocument2;
S : string;
begin
 

//        CENTRO(Self,False);

   //redimensionar o form com as medidas da tela, tirando 30 para ao menu iniciar
   //deu problema o menu maximizado com os idiotas q ocultam o menu iniciar
   //miguel



  { FMenu.Height := Screen.Height - 30;
   FMenu.Width := Screen.Width;
   FMenu.Top := 0;
   FMenu.Left := 0; }

   Altura := fmenu.Height;
   Largura := fmenu.Width;
   
   X := Altura div 2;
   Y := Largura div 2;
   Image1.Left := y - (Image1.Width div 2);
   Image1.Top := x - (Image1.Height div 2);
   Application.CreateForm(TDfm_Senha, Dfm_Senha);
   Dfm_Senha.showModal ;

   Dfm_Senha.release ;

   Proc_HabilitaMenu(MainMenu1);
   //StatusBar1.Panels[3].Text :=' Usuário: ' + StrUsuario;
   StatusBar1.Panels[3].Text :=' Usuário logado: ' + sqlUsuariosNOME_COMPLETO.AsString;
   with qrLocais do begin
       Close;
       sql.Clear;
       sql.Add('SELECT * FROM LOCAL WHERE LOCAL_ID = ' + sqlUsuariosLOCAL_ID.AsString);
       Open;
   end;


   //qrLocais.Locate('LOCAL_ID', AsInteger, []);
   StatusBar1.Panels[2].Text := 'Local Selecionado: ' + qrLocaisDescricao.AsString;
   Controla_versao;

   FMenu.Caption := 'SISTEMA DE ALMOXARIFADO - Versão: ' +  FormatFloat('0.0', StrToFloat(lbVersao.Caption) / 10);
   FMenu.Caption := StringReplace(FMenu.Caption,',','.',[rfReplaceAll]);

   qrFoto.Open;

   with qrAux do begin
       close;
       sql.Clear;
       sql.Add('select mat_id, uni_id from materiais where generico = ''S'' ');
       Open;
   end;

   lbSemCadastro.Caption := qrAux.FieldByName('Mat_id').AsString;
   lbUnidade.Caption := qrAux.FieldByName('uni_id').AsString;
   qrAux.close;



   IF sqlUsuariosadmRequisicao.AsString = 'S' then begin
       qrBusca.Close;
       qrBusca.Open;
       if qrBusca.IsEmpty = False then
         ShowMessage('Existem mensagens de divergência de requisição de materiais');
   end;

end;


function TFMenu.CGC( STXT : String) : Boolean;
Var
  A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
  DC : String[2];
  RT : Boolean;
begin
  RT := true;
  A:= StrtoInt(copy(STXT,1,1));
  B:= StrtoInt(copy(STXT,2,1));
  C:= StrtoInt(copy(STXT,3,1));
  D:= StrtoInt(copy(STXT,4,1));
  E:= StrtoInt(copy(STXT,5,1));
  F:= StrtoInt(copy(STXT,6,1));
  G:= StrtoInt(copy(STXT,7,1));
  H:= StrtoInt(copy(STXT,8,1));
  I:= StrtoInt(copy(STXT,9,1));
  J:= StrtoInt(copy(STXT,10,1));
  K:= StrtoInt(copy(STXT,11,1));
  L:= StrtoInt(copy(STXT,12,1));
  X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
  M:= 11-((X)-(11*((X div 11))));
  if M > 9 then
     M:=0;
  Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
  N:= 11-((Y)-(11*((Y div 11))));
  if N > 9 then
     N:=0;
  DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
  if DC <> copy(STXT,13,2) then
   Begin
     RT := false;
   end;
   CGC := RT;
end;

function TFMenu.CPF( STXT : String) : Boolean;
Var
  CP1,CP2,CP3,CPF1,CPF2,DC,A : String[15];
  ACUMULA,CONTADOR,B,X,R,U,Y,V : Integer;
  RT : Boolean;
begin
  RT := true;
  CP1:= copy(STXT,1,3);
  CP2:= copy(STXT,4,3);
  CP3:= copy(STXT,7,3);
  CPF1:= CP1+CP2+CP3;
  ACUMULA:= 0;
  for Contador:=2 to 10 do
    Begin
    A:= copy(CPF1,11-CONTADOR,1);
    B:= Strtoint(A) * CONTADOR;
    ACUMULA:=ACUMULA + B;
  End;
  X:= ACUMULA * 10;
  R:= X-(X div 11)*11;
  If R = 10 then
     U:= 0
    Else
  U:= R;
  CPF2:= CPF1 + copy(IntToStr(U),1,1);
  ACUMULA:= 0;
  For Contador:=2 to 11 do
    Begin
      A:= copy(CPF2,12-CONTADOR,1);
      B:= Strtoint(A) * CONTADOR;
      ACUMULA:=ACUMULA + B;
  end;
  Y:= ACUMULA * 10;
  R:= Y-(Y div 11)*11;
  If R = 10 then
     V:= 0
    Else
  V:= R;
  DC:= copy(INTTOSTR(U),1,1)+ copy(INTTOSTR(V),1,1);
  if DC <> copy(STXT,10,2) then
    Begin
      RT := false;
    end;

  CPF := RT;
end;

Procedure CENTRO(Form : TForm; Centra : Boolean);
Begin
        if Centra then
                Begin
                Form.Top  := (Screen.Height - Form.Height) div 2;
                Form.Left := (Screen.Width  - Form.Width ) div 2;
                end
        else
                begin
                Form.Constraints.MinHeight := 572;
                Form.Constraints.MinWidth  := 800;
                Form.Constraints.MaxHeight := 572;
                Form.Constraints.MaxWidth  := 800;
                Form.Top  := 0;
                Form.Left := 0;
                end;
end;
procedure TFMenu.Proc_HabilitaMenu(p_Menu: TMainMenu);
var a, b, c, d, e: integer;
begin
   SqlUsuarios.Open ;
   SqlUsuarios.Locate('NOME',StrUSuario,[loCaseInsensitive]) ;
   Screen.Cursor := crHourGlass;
   // Montamos um loop do Menu com até 5 leveis para podermos habilitar/desabilitar
   // o item no menu
   for a := 0 to p_Menu.items.count -1 do begin
      // Verificamos se de acordo com o usuário devemos habilitar ou não o item
//      if p_Menu.Items[a].Tag = 1 then begin
         // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
         if p_Menu.Items[a].caption <> '-' then  begin
             if sqlUsuarios.FieldByName(p_Menu.Items[a].Name).AsString = 'S' then
                p_Menu.Items[a].visible := True
             else
                p_Menu.Items[a].visible := False;
         end ;
//      end;
      // Verificamos se este item possui filhos, level 2
      if p_Menu.items[a].count > 0 then begin
         for b := 0 to p_Menu.items[a].count -1 do begin
            // Verificamos se de acordo com o usuário devemos marcar ou não o item
//            if p_Menu.Items[a].Items[b].Tag = 1 then begin
               // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
               if p_Menu.Items[a].Items[b].caption <> '-' then begin
                   if sqlUsuarios.FieldByName(p_Menu.Items[a].Items[b].Name).AsString = 'S' then
                      p_Menu.Items[a].Items[b].visible := True
                   else
                      p_Menu.Items[a].Items[b].visible := False;
               end ;
//            end;
            // Verificamos se este item possui filhos, level 3
            if p_Menu.items[a].items[b].count > 0 then begin
               for c := 0 to p_Menu.items[a].items[b].count -1 do begin
                  // Verificamos se de acordo com o usuário devemos marcar ou não o item
  //                if p_Menu.Items[a].Items[b].Items[c].Tag = 1 then begin
                     // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                    if p_Menu.Items[a].Items[b].Items[c].Caption <>'-' then begin
                         if sqlUsuarios.FieldByName(p_Menu.Items[a].Items[b].Items[c].Name).AsString = 'S' then
                            p_Menu.Items[a].Items[b].Items[c].visible := True
                         else
                            p_Menu.Items[a].Items[b].Items[c].visible := False;
                     end ;
//                  end;
                  // Verificamos se este item possui filhos, level 4
                  if p_Menu.items[a].items[b].items[c].count > 0 then begin
                     for d := 0 to p_Menu.items[a].items[b].items[c].count -1 do begin
                        // Verificamos se de acordo com o usuário devemos marcar ou não o item
//                        if p_Menu.Items[a].Items[b].Items[c].Items[d].Tag = 1 then begin
                           // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                           if p_Menu.Items[a].Items[b].Items[c].Items[d].caption <> '-' then begin
                               if sqlUsuarios.FieldByName(p_Menu.Items[a].Items[b].Items[c].Items[d].Name).AsString = 'S' then
                                  p_Menu.Items[a].Items[b].Items[c].Items[d].visible := True
                               else
                                  p_Menu.Items[a].Items[b].Items[c].Items[d].visible := False;
                           end ;
//                        end;
                        // Verificamos se este item possui filhos, level 5
                        if p_Menu.items[a].items[b].items[c].items[d].count > 0 then begin
                           for e := 0 to p_Menu.items[a].items[b].items[c].items[d].count do begin
                              // Verificamos se de acordo com o usuário devemos marcar ou não o item
//                              if p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Tag = 1 then begin
                                 // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                                if p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].caption <> '-' then begin
                                     if sqlUsuarios.FieldByName(p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Name).AsString = 'S' then
                                        p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].visible := True
                                     else
                                        p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].visible := False;
                                end ;
//                              end;
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;
   Screen.Cursor := crDefault;


   qrLocal.close;
   qrLocal.Parameters[0].Value := sqlUsuariosLOCAL_ID.Value;
   qrLocal.Open;

   if qrLocalCONSUMO.Value = 'S' then
        chkCentral.Checked := True;

   if qrLocalCONTROLA_ESTOQUE.Value = 'S' then
        chkControlaEstoque.Checked := True;


               if FMenu.qrLocalCONSUMO.Value <> 'S' then
               begin
                    qrLocais.Close;
                    qrLocais.sql.Clear;
                    qrLocais.sql.add('SELECT * FROM LOCAL WHERE LOCAL_ID  in (select local_id from UsuariosAlmoxLocais where ch = ' + sqlUsuariosCH.AsString + ')');
                    qrLocais.sql.Add(' order by descricao ');
                    qrLocais.Open;
               end;



   //SqlUsuarios.close ;
end;


procedure TFMenu.GrupodeMateriaisClick(Sender: TObject);
begin
        Application.CreateForm(TFGrMateriais, FGrMateriais);
        FGrMateriais.ShowModal;
        FGrMateriais.Release;       
end;

procedure TFMenu.MateriaisClick(Sender: TObject);
begin
        {Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.ShowModal;
        FMateriais.Release; }
        frmPesqMateriais := TfrmPesqMateriais.Create(Self);
        frmPesqMateriais.ShowModal;
end;

procedure TFMenu.UnidadesClick(Sender: TObject);
begin
        Application.CreateForm(TFUnidades, FUnidades);
        FUnidades.ShowModal;
        FUnidades.Release;
end;

procedure TFMenu.CondPagClick(Sender: TObject);
begin
        Application.CreateForm(TFCondPagto, FCondPagto);
        FCondPagto.ShowModal;
        FCondPagto.Release;
end;

procedure TFMenu.OrdemdeCompraClick(Sender: TObject);
begin

       Application.CreateForm(TFPesqOrdComp, FPesqOrdComp);
       FPesqOrdComp.ShowModal;
       FPesqOrdComp.Release;

end;

procedure TFMenu.Timer1Timer(Sender: TObject);
begin
     StatusBar1.Panels[0].Text :=
     FormatDateTime('dd/mm/yyyy',Date);

     StatusBar1.Panels[1].Text :=
     FormatDateTime('hh:mm:ss',Time);
end;

procedure TFMenu.MotivosClick(Sender: TObject);
begin
        Application.CreateForm(TFMotivos, FMotivos);
        FMotivos.ShowModal;
        FMotivos.Release;
end;

procedure TFMenu.LocaisClick(Sender: TObject);
begin
        Application.CreateForm(TFLocais, FLocais);
        FLocais.ShowModal;
        FLocais.Release;
end;

procedure TFMenu.AjusteClick(Sender: TObject);
begin

        Application.CreateForm(TFAjustAlm, FAjustAlm);
        FAjustAlm.ShowModal;
        FAjustAlm.Release;

end;

procedure TFMenu.MarcasClick(Sender: TObject);
begin
        Application.CreateForm(TFMarcas, FMarcas);
        FMarcas.ShowModal;
        FMarcas.Release;
end;

procedure TFMenu.EntradaNFClick(Sender: TObject);
begin
        
        Application.CreateForm(TFRecebPesq, FRecebPesq);
        FRecebPesq.ShowModal;
        FRecebPesq.Release;

end;

procedure TFMenu.KardexClick(Sender: TObject);
begin
        Application.CreateForm(TFKardex, FKardex);
        FKardex.ShowModal;
        FKardex.Release;

end;

procedure TFMenu.RequisicaoClick(Sender: TObject);
begin

        Application.CreateForm(tFRequisicaoPesq, FRequisicaoPesq);
        FRequisicaoPesq.ShowModal;
        FRequisicaoPesq.Release;

end;

procedure TFMenu.CentrosdeCustosClick(Sender: TObject);
begin
        Application.CreateForm(tFCCs, FCCs);
        FCCs.ShowModal;
        FCCs.Release;
end;

procedure TFMenu.BuscaClick(Sender: TObject);
begin
        Application.CreateForm(tFBDinAlm, FBDinAlm);
        FBDinAlm.ShowModal;
        FBDinAlm.Release;

end;

procedure TFMenu.TipodeDocumentoClick(Sender: TObject);
begin

        Application.CreateForm(tFTpDocumento, FTpDocumento);
        FTpDocumento.ShowModal;
        FTpDocumento.Release;

end;


procedure TFMenu.DevFornClick(Sender: TObject);
begin

        Application.CreateForm(TFDvSel, FDvSel);
        FDvSel.ShowModal;
        FDvSel.Release;

end;

procedure TFMenu.InventarioClick(Sender: TObject);
begin

        Application.CreateForm(TFPrepInv, FPrepInv);
        FPrepInv.ShowModal;
        FPrepInv.Release;

end;

procedure TFMenu.UsuariosClick(Sender: TObject);
begin
        Application.CreateForm(TFUsuarios, FUsuarios);
        FUsuarios.ShowModal;
        FUsuarios.Release;
end;

procedure TFMenu.CONSUMOMATERIAISClick(Sender: TObject);
begin

  frmConsultaEstoque := TfrmConsultaEstoque.Create(Self);
  frmConsultaEstoque.ShowModal;
  frmConsultaEstoque.Release;

end;

procedure TFMenu.FormResize(Sender: TObject);
var Altura, Largura, X, Y : Integer;
begin
//        CENTRO(Self,False);

   //redimensionar o form com as medidas da tela, tirando 30 para ao menu iniciar
   //deu problema o menu maximizado com os idiotas q ocultam o menu iniciar
   //miguel

   {FMenu.Height := Screen.Height - 30;
   FMenu.Width := Screen.Width;
   FMenu.Top := 0;
   FMenu.Left := 0; }

   Altura := fmenu.Height;
   Largura := fmenu.Width;
   
   X := Altura div 2;
   Y := Largura div 2;
   Image1.Left := y - (Image1.Width div 2) ;
   Image1.Top := x - (Image1.Height div 2) - 20;

end;

procedure TFMenu.ESTOQUE_MINIMOClick(Sender: TObject);
begin
    frmEstoque_minimo := TfrmEstoque_minimo.Create(Self);
    frmEstoque_minimo.ShowModal;    
end;

procedure TFMenu.Controla_versao;
VAR
  VersaoBanco , VersaoSistema : Integer;
begin
///
   qrVersao.Close;
   qrVersao.Open;

   if qrVersaoNUMERO.AsString = '' then
        VersaoBanco := 0
   else
        VersaoBanco := qrVersaoNUMERO.Value;

   VersaoSistema := StrToInt(lbVersao.Caption);

   if VersaoSistema > VersaoBanco then
   begin
      qrVersao.Edit;
      qrVersaoNUMERO.Value := StrToInt(lbVersao.Caption);
      qrVersao.Post;
   end;

   if VersaoBanco > VersaoSistema then
   begin
        MessageBox(0, 'A versão do sistema não é a mais atual, por favor atualizar a versão', 'Informação', MB_ICONSTOP or MB_OK);
        Application.Terminate;
   end;  


end;

procedure TFMenu.qrVersaoAfterPost(DataSet: TDataSet);
begin
   try
      FMenu.DATABASE1.ApplyUpdates([qrVersao]) ;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
end;

procedure TFMenu.SOLICITACAOClick(Sender: TObject);
begin
  frmSolicitacao := TfrmSolicitacao.Create(Self);
  frmSolicitacao.ShowModal;
end;

procedure TFMenu.COTACAOClick(Sender: TObject);
begin
  frmCotacao := TfrmCotacao.Create(Self);
  frmCotacao.ShowModal;
end;

procedure TFMenu.ESTOQUEClick(Sender: TObject);
begin
        frmEstoque := TfrmEstoque.Create(Self);
        frmEstoque.ShowModal;
end;

procedure TFMenu.TransferenciaClick(Sender: TObject);
begin
//    frmTransferencia := TfrmTransferencia.Create(Self);
 //   frmTransferencia.ShowModal;
end;

procedure TFMenu.SpeedButton1Click(Sender: TObject);
begin
        Application.CreateForm(tFBDinAlm, FBDinAlm);
        FBDinAlm.ShowModal;
        FBDinAlm.Release;
end;

procedure TFMenu.RecarregaUsuario;
begin
   SqlUsuarios.close;
   SqlUsuarios.Open ;
   SqlUsuarios.Locate('NOME',StrUSuario,[loCaseInsensitive]) ;
end;

procedure TFMenu.AlteraSenhaClick(Sender: TObject);
begin
   frmAlteraSenha := TfrmAlteraSenha.Create(Self);
   frmAlteraSenha.ShowModal;
end;

procedure TFMenu.VALIDADEClick(Sender: TObject);
begin
    frmConsultaValidade := TfrmConsultaValidade.Create(Self);
    frmConsultaValidade.ShowModal;
end;

procedure TFMenu.ADOConnectionBeforeConnect(Sender: TObject);
begin
  ADOConnection.ConnectionString := 'FILE NAME=C:\almox.udl';
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
  ADOConnection.Close;
end;

procedure TFMenu.REL_CONF_REQUISICAOClick(Sender: TObject);
begin
  frmConsultaEstoque := TfrmConsultaEstoque.Create(Self);
  frmConsultaEstoque.Caption := 'Relatório de Conferência de Requisição';
  frmConsultaEstoque.lbTpRelatorio.Caption := '0';
  frmConsultaEstoque.ShowModal;
  frmConsultaEstoque.Release;
end;

procedure TFMenu.REL_OC_RECEBClick(Sender: TObject);
begin
  frmFiltOCReceb :=  TfrmFiltOCReceb.Create(Self);
  frmFiltOCReceb.ShowModal;
end;

procedure TFMenu.Requisicao_AdmClick(Sender: TObject);
begin
    Application.CreateForm(tFRequisicaoPesq, FRequisicaoPesq);
    FRequisicaoPesq.chkLibera.Checked := True;
    FRequisicaoPesq.ShowModal;
    FRequisicaoPesq.Release;
end;

procedure TFMenu.Requisicao_usuClick(Sender: TObject);
begin
 frmSolicitacaoMateriais := TfrmSolicitacaoMateriais.Create(Self);
 frmSolicitacaoMateriais.ShowModal;
end;

procedure TFMenu.Requisicao_impClick(Sender: TObject);
begin
   TP_REQUISICAO := 'R';
   frmAprovaRequisicao := TfrmAprovaRequisicao.Create(Self);
   frmAprovaRequisicao.ShowModal;
   TP_REQUISICAO := '';
end;

procedure TFMenu.Requisicao_aprovClick(Sender: TObject);
begin
   TP_REQUISICAO := 'A';
   frmAprovaRequisicao := TfrmAprovaRequisicao.Create(Self);
   frmAprovaRequisicao.ShowModal;
   TP_REQUISICAO := '';
end;

procedure TFMenu.CURVA_ABCClick(Sender: TObject);
begin
  frmCurvaABC := TfrmCurvaABC.Create(Self);
  frmCurvaABC.ShowModal;
end;

procedure TFMenu.REL_OCClick(Sender: TObject);
begin
    frmRelOCCompras := TfrmRelOCCompras.Create(Self);
    frmRelOCCompras.ShowModal;
end;

procedure TFMenu.DocsQualidadeClick(Sender: TObject);
begin
    frmDocsQualidadee := TfrmDocsQualidadee.Create(Self);
    frmDocsQualidadee.ShowModal;
end;

procedure TFMenu.RelDocsFornecedorClick(Sender: TObject);
begin
  frmRelFornecedorDocumentos := TfrmRelFornecedorDocumentos.Create(Self);
  frmRelFornecedorDocumentos.ShowModal;
end;

procedure TFMenu.ConsumoFornecedorClick(Sender: TObject);
begin
  frmRelConsumoFornecedor := TfrmRelConsumoFornecedor.Create(Self);
  frmRelConsumoFornecedor.ShowModal;
end;

procedure TFMenu.AnaliseComprasClick(Sender: TObject);
begin
    frmAcompanhaCompras := TfrmAcompanhaCompras.Create(Self);
    frmAcompanhaCompras.ShowModal;
end;

procedure TFMenu.LoteValidadeClick(Sender: TObject);
begin
    frmConsultaLotes := TfrmConsultaLotes.Create(Self);
   frmConsultaLotes.ShowModal;
end;

procedure TFMenu.EstoqueMaximoClick(Sender: TObject);
begin
    frmEstoqueMaximo := TfrmEstoqueMaximo.Create(Self);
    frmEstoqueMaximo.ShowModal;
end;

procedure TFMenu.OcorrenciasClick(Sender: TObject);
begin
   frmRelOcorrencias := TfrmRelOcorrencias.Create(Self);
   frmRelOcorrencias.Height := 227;
   frmRelOcorrencias.Width := 443;
   frmRelOcorrencias.ShowModal;
end;

procedure TFMenu.CBARRASClick(Sender: TObject);
begin
    frmImprimeEtiquetas := TfrmImprimeEtiquetas.Create(Self);
    frmImprimeEtiquetas.ShowModal;
end;

procedure TFMenu.CONSEQUENCIAClick(Sender: TObject);
begin
    frmCadConsequencias := TfrmCadConsequencias.Create(Self);
    frmCadConsequencias.ShowModal;
end;

procedure TFMenu.LiberaMaterialClick(Sender: TObject);
begin
  frmLiberaMaterialRequisicao := TfrmLiberaMaterialRequisicao.Create(Self);
  frmLiberaMaterialRequisicao.ShowModal;
end;

procedure TFMenu.RelIntervaloClick(Sender: TObject);
begin
   frmRelIntervaloRequisicao := TfrmRelIntervaloRequisicao.Create(Self);
   frmRelIntervaloRequisicao.ShowModal;
end;

procedure TFMenu.ConfereRequisicaoClick(Sender: TObject);
begin
   frmConfereRequisicao := TfrmConfereRequisicao.Create(Self);
   frmConfereRequisicao.ShowModal;
end;

procedure TFMenu.RelTransferenciaClick(Sender: TObject);
begin
   frmRelTransferencia := TfrmRelTransferencia.Create(Self);
   frmRelTransferencia.ShowModal;
end;

procedure TFMenu.EstoqueRetroClick(Sender: TObject);
begin
//   frmEstoqueRetroativo := TfrmEstoqueRetroativo.Create(Self);
//   frmEstoqueRetroativo.ShowModal;

 frmHistEstoque := TfrmHistEstoque.Create(Self);
 frmHistEstoque.ShowModal;
end;

procedure TFMenu.ConsultaInvetarioMaterialClick(Sender: TObject);
begin
    frmConsultaInvetarioMaterial := TfrmConsultaInvetarioMaterial.Create(Self);
    frmConsultaInvetarioMaterial.ShowModal;
end;

procedure TFMenu.RelTransfCustosClick(Sender: TObject);
begin
  frmConsultaEstoque := TfrmConsultaEstoque.Create(Self);
  frmConsultaEstoque.rgValor.ItemIndex := 1;
  frmConsultaEstoque.rgValor.Visible := False;
  frmConsultaEstoque.btnImprimir.Visible := False;
  frmConsultaEstoque.Height := 335;
  frmConsultaEstoque.Caption := 'Materiais transferidos x Custos';
  //frmConsultaEstoque.Button1.Visible := True;
  frmConsultaEstoque.btnTransferencia.Visible := True;
  frmConsultaEstoque.ShowModal;
  frmConsultaEstoque.Release;
end;

procedure TFMenu.DivergenciasClick(Sender: TObject);
begin
    frmPesqDivergencia := TfrmPesqDivergencia.Create(Self);
    frmPesqDivergencia.ShowModal;
end;

procedure TFMenu.bionexoUploadClick(Sender: TObject);
begin
    frmPesqBionexoUpload := TfrmPesqBionexoUpload.Create(Self);
    frmPesqBionexoUpload.ShowModal;
end;

procedure TFMenu.bionexoDownloadClick(Sender: TObject);
begin
    frmPesqBionexoDownload := TfrmPesqBionexoDownload.Create(Self);
    frmPesqBionexoDownload.ShowModal;
end;

procedure TFMenu.RelMateriaisInativosClick(Sender: TObject);
begin
   frmRelMateriaisInativos := TfrmRelMateriaisInativos.Create(Self);
   frmRelMateriaisInativos.ShowModal;
end;

procedure TFMenu.RequisicaoEstoqueMaxMinClick(Sender: TObject);
begin
  frmConsultaEstoqueMinMaxRequisicao := TfrmConsultaEstoqueMinMaxRequisicao.Create(Self);
  frmConsultaEstoqueMinMaxRequisicao.ShowModal;
end;

procedure TFMenu.RequisicaoSimplificadaClick(Sender: TObject);
begin
    frmRequisicaoSimplificada := tfrmRequisicaoSimplificada.create(Self);
    frmRequisicaoSimplificada.showmodal;
end;

procedure TFMenu.NFeXMLClick(Sender: TObject);
begin
  frmNFeXMLPesq := tfrmNFeXMLPesq.Create(Self);
  frmNFeXMLPesq.ShowModal;
end;

procedure TFMenu.RelatriodeRastreabilidadeClick(Sender: TObject);
begin
  frmConsultaValidadeRastreabilidade := TfrmConsultaValidadeRastreabilidade.Create(Self);
  frmConsultaValidadeRastreabilidade.ShowModal;
end;

procedure TFMenu.CorrigeValoresRequisicaoClick(Sender: TObject);
begin
   frmCorrigeValoresRequisicao :=  TfrmCorrigeValoresRequisicao.Create(Self);
   frmCorrigeValoresRequisicao.ShowModal;
end;

procedure TFMenu.AtualizaEstoqueRetroativoClick(Sender: TObject);
begin
    frmAtualizaEstoqueRetroativo := tfrmAtualizaEstoqueRetroativo.create(self);
    frmAtualizaEstoqueRetroativo.ShowModal;
end;

procedure TFMenu.RelatriodeControledeAcessosClick(Sender: TObject);
begin
   frmControledeAcessos := tfrmControledeAcessos.Create(self);
   frmControledeAcessos.showmodal;
end;

procedure TFMenu.RelatoriodeRequisicaoClick(Sender: TObject);
begin
   frmRelatoriodeRequisicao := tfrmRelatoriodeRequisicao.create(self);
   frmRelatoriodeRequisicao.showmodal;
end;

procedure TFMenu.btnAtualizaLocalClick(Sender: TObject);
begin
  
   with qrLocais do begin
       Close;
       sql.Clear;
       sql.Add('SELECT * FROM LOCAL WHERE LOCAL_ID = ' + sqlUsuariosLOCAL_ID.AsString);
       Open;
   end;

   qrLocal.close;
   qrLocal.Parameters[0].Value := sqlUsuariosLOCAL_ID.Value;
   qrLocal.Open;

   if qrLocalCONSUMO.Value = 'S' then
        chkCentral.Checked := True;

   if qrLocalCONTROLA_ESTOQUE.Value = 'S' then
        chkControlaEstoque.Checked := True;

   StatusBar1.Panels[2].Text := 'Local Selecionado: ' + qrLocaisDescricao.AsString;

   ShowMessage('Local selecionado: ' + qrLocaisDescricao.AsString);


end;

procedure TFMenu.TrocarLocaldeEstoqueClick(Sender: TObject);
begin
   frmTrocaLocal := tfrmTrocaLocal.Create(Self);
   frmTrocaLocal.ShowModal;
end;

procedure TFMenu.AnaliseEstoquesExcelNetClick(Sender: TObject);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(ExtractFilePath(Application.ExeName) + 'AnaliseEstoque\WindowsFormsApp1.exe');
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, pchar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW,
    nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    ShowMessage('Não foi possível localizar o recurso!');
  end;
end;

procedure TFMenu.ContaGerencialEntradaClick(Sender: TObject);
begin
   frmContaGerencialEntrada := TfrmContaGerencialEntrada.Create(Self);
   frmContaGerencialEntrada.ShowModal;
end;

procedure TFMenu.NotaDevolucaoFornecedorClick(Sender: TObject);
begin
     frmNotaDevolucaoPesq := TfrmNotaDevolucaoPesq.Create(Self);
     frmNotaDevolucaoPesq.ShowModal;
end;

procedure TFMenu.AlteraValidadeLoteClick(Sender: TObject);
begin
   frmAlteraLoteValidade := TfrmAlteraLoteValidade.Create(Self);
   frmAlteraLoteValidade.ShowModal;
end;

procedure TFMenu.MotivoDescarteClick(Sender: TObject);
begin
    frmMotivoDescarte := TfrmMotivoDescarte.create(self);
    frmMotivoDescarte.ShowModal;
end;

procedure TFMenu.DescarteMateriaisClick(Sender: TObject);
begin
    FDescartePesq := TFDescartePesq.Create(Self);
    FDescartePesq.ShowModal;
end;

procedure TFMenu.DevolucaoMateriaisClick(Sender: TObject);
begin

   frmDevolucaoMaterialRequisicaoNova := TfrmDevolucaoMaterialRequisicaoNova.create(self);
   frmDevolucaoMaterialRequisicaoNova.showmodal;

end;

procedure TFMenu.RelatorioRecebimentoMateriaisClick(Sender: TObject);
begin
   frmRelatorioRecebimentoMateriais := TfrmRelatorioRecebimentoMateriais.Create(Self);
   frmRelatorioRecebimentoMateriais.ShowModal;
end;

procedure TFMenu.RelCalculoConsumoGraceClick(Sender: TObject);
begin
    frmRelCalculoMovimentacaoConsumoGrace := tfrmRelCalculoMovimentacaoConsumoGrace.create(Self);
    frmRelCalculoMovimentacaoConsumoGrace.showmodal;
end;

procedure TFMenu.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if qrVersaoAmbiente.AsString = 'Homologação'   then
        Self.Color := clYellow;
end;

end.



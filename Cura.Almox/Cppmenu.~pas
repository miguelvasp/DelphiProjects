
unit CPPMENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, Menus, ExtCtrls, DBTables, Wwquery, ComCtrls, jpeg, DBCtrls,
  ExtDlgs, QuickRpt, Qrctrls, ADODB;

type
  TFMenu = class(TForm)
    Database1: TDatabase;
    MainMenu: TMainMenu;
    Tabelas: TMenuItem;
    Sair: TMenuItem;
    CentrosdeCusto: TMenuItem;
    ContasBancarias: TMenuItem;
    DescontoAcrescimo: TMenuItem;
    ContasGerencial: TMenuItem;
    Moedas: TMenuItem;
    N1: TMenuItem;
    Listagens: TMenuItem;
    ListCentrosCusto: TMenuItem;
    ListContasBancarias: TMenuItem;
    ListContasGerenciais: TMenuItem;
    ListDescontoAcrescimo: TMenuItem;
    ListMoedas: TMenuItem;
    Cadastros: TMenuItem;
    Clientes: TMenuItem;
    Fornecedores: TMenuItem;
    N2: TMenuItem;
    ListagensCadastros: TMenuItem;
    ListClientes: TMenuItem;
    ListFornecedores: TMenuItem;
    Recebimentos: TMenuItem;
    CadastroRecebimento: TMenuItem;
    RelatorioRecebimento: TMenuItem;
    Pagamentos: TMenuItem;
    CadastroPagamento: TMenuItem;
    RelatorioPagamento: TMenuItem;
    Movimentacao: TMenuItem;
    CadastroMovimentcao: TMenuItem;
    RelatorioMovimentacao: TMenuItem;
    TransAplicResg: TMenuItem;
    DataDebitoCredito: TMenuItem;
    Cheques: TMenuItem;
    CadastroCheque: TMenuItem;
    ChequesBorderos: TMenuItem;
    EmissaoCheques: TMenuItem;
    Cancelamentos: TMenuItem;
    RelatoriosCheques: TMenuItem;
    ConsultaCheques: TMenuItem;
    ListMovimentacao: TMenuItem;
    Session1: TSession;
    Utilitarios: TMenuItem;
    Parametros: TMenuItem;
    ContasContabeis: TMenuItem;
    Portadores: TMenuItem;
    ConciliacaoBancaria: TMenuItem;
    sqlUsuarios: TwwQuery;
    Usuarios: TMenuItem;
    N5: TMenuItem;
    Etiquetas: TMenuItem;
    N6: TMenuItem;
    LeituraBanco1: TMenuItem;
    GeraBanco1: TMenuItem;
    Portadores1: TMenuItem;
    ContasContabeis1: TMenuItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ChequePre: TMenuItem;
    sqlUsuariosCH: TAutoIncField;
    sqlUsuariosNOME: TStringField;
    sqlUsuariosSENHA: TStringField;
    sqlUsuariosTabelas: TStringField;
    sqlUsuariosCentrosdeCusto: TStringField;
    sqlUsuariosContasBancarias: TStringField;
    sqlUsuariosPortadores: TStringField;
    sqlUsuariosContasContabeis: TStringField;
    sqlUsuariosContasGerencial: TStringField;
    sqlUsuariosDescontoAcrescimo: TStringField;
    sqlUsuariosMoedas: TStringField;
    sqlUsuariosListagens: TStringField;
    sqlUsuariosListCentrosCusto: TStringField;
    sqlUsuariosListContasBancarias: TStringField;
    sqlUsuariosListContasGerenciais: TStringField;
    sqlUsuariosListDescontoAcrescimo: TStringField;
    sqlUsuariosListMoedas: TStringField;
    sqlUsuariosCadastros: TStringField;
    sqlUsuariosClientes: TStringField;
    sqlUsuariosFornecedores: TStringField;
    sqlUsuariosListagensCadastros: TStringField;
    sqlUsuariosListClientes: TStringField;
    sqlUsuariosListFornecedores: TStringField;
    sqlUsuariosRecebimentos: TStringField;
    sqlUsuariosCadastroRecebimento: TStringField;
    sqlUsuariosRelatorioRecebimento: TStringField;
    sqlUsuariosPagamentos: TStringField;
    sqlUsuariosCadastroPagamento: TStringField;
    sqlUsuariosRelatorioPagamento: TStringField;
    sqlUsuariosMovimentacao: TStringField;
    sqlUsuariosCadastroMovimentcao: TStringField;
    sqlUsuariosTransAplicResg: TStringField;
    sqlUsuariosDataDebitoCredito: TStringField;
    sqlUsuariosConciliacaoBancaria: TStringField;
    sqlUsuariosRelatorioMovimentacao: TStringField;
    sqlUsuariosListMovimentacao: TStringField;
    sqlUsuariosListTransferencia: TStringField;
    sqlUsuariosCheques: TStringField;
    sqlUsuariosCadastroCheque: TStringField;
    sqlUsuariosChequesBorderos: TStringField;
    sqlUsuariosEmissaoCheques: TStringField;
    sqlUsuariosCancelamentos: TStringField;
    sqlUsuariosRelatoriosCheques: TStringField;
    sqlUsuariosConsultaCheques: TStringField;
    sqlUsuariosUtilitarios: TStringField;
    sqlUsuariosParametros: TStringField;
    sqlUsuariosUSuarios: TStringField;
    sqlUsuariosEtiquetas: TStringField;
    sqlUsuariosSair: TStringField;
    sqlUsuariosMovimentoDiario: TStringField;
    sqlUsuariosLeituraBanco1: TStringField;
    sqlUsuariosGeraBanco1: TStringField;
    sqlUsuariosPortadores1: TStringField;
    sqlUsuariosContasContabeis1: TStringField;
    sqlUsuariosPagamentos1: TStringField;
    sqlUsuariosChequePre: TStringField;
    FluxodeCaixa: TMenuItem;
    sqlUsuariosfluxodecaixa: TStringField;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Q_FOTO: TwwQuery;
    Q_FOTOFOTO: TBlobField;
    DS_FOTO: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    UPD_FOTO: TUpdateSQL;
    Q_FOTOParam_ID: TAutoIncField;
    DBImage2: TDBImage;
    UnidadesdaFederao: TMenuItem;
    sqlUsuariosUnidadesdaFederao: TStringField;
    Empresas: TMenuItem;
    sqlUsuariosEmpresas: TStringField;
    sqlUsuariosFeriados: TStringField;
    sqlUsuariosFormasdePagamento: TStringField;
    sqlUsuariosLayoutCheques: TStringField;
    sqlUsuariosListFeriados: TStringField;
    sqlUsuariosListFormaPagamento: TStringField;
    sqlUsuariosListLayoCheques: TStringField;
    sqlUsuariosLoteRecebimento: TStringField;
    sqlUsuariosLotePagamento: TStringField;
    sqlUsuariosNotasFiscais1: TStringField;
    sqlUsuariosSubconta: TStringField;
    sqlUsuariosRateio: TStringField;
    ContaentreEmpresas: TMenuItem;
    sqlUsuariosContaentreEmpresas: TStringField;
    sqlUsuariosRelatoriodeRateios: TStringField;
    sqlUsuariosBANCOFOR: TStringField;
    bancofor: TMenuItem;
    sqlUsuariosRelatoriodeContas: TStringField;
    GerMov: TMenuItem;
    sqlUsuariosGerMov: TStringField;
    Pagamentos1: TMenuItem;
    RelatoriodeContas: TMenuItem;
    RelatoriodeRateios: TMenuItem;
    Label3: TLabel;
    Eminf: TMenuItem;
    sqlUsuarioseminf: TStringField;
    Image2: TImage;
    sqlUsuariosGerencialdePagamentosAnual1: TStringField;
    GerencialdePagamentosAnual1: TMenuItem;
    Relatrios1: TMenuItem;
    GerencialdeMovimentaoAnual1: TMenuItem;
    sqlUsuariosGerencialdeMovimentaoAnual1: TStringField;
    sqlUsuariosRelatrios1: TStringField;
    Label2: TLabel;
    Image4: TImage;
    qrUpdateVersao: TwwQuery;
    BlobField1: TBlobField;
    AutoIncField1: TAutoIncField;
    Q_FOTOVersao: TFloatField;
    lbVersao: TLabel;
    sqlUsuariosRelTranferencia: TStringField;
    RelTranferencia: TMenuItem;

    qrConciliacao: TwwQuery;
    qrConciliacaodata: TDateTimeField;
    Q_AUX: TwwQuery;
    chkFluxoAberto: TCheckBox;
    LIBERACONCILIACAO: TMenuItem;
    sqlUsuariosLIBERACONCILIACAO: TStringField;
    sqlUsuariosBaixaCartao: TStringField;
    BaixaCartao: TMenuItem;
    sqlUsuariosAtualizaDebito: TStringField;
    sqlUsuariosAtualizaCredito: TStringField;
    AtualizaDebito: TMenuItem;
    AtualizaCredito: TMenuItem;
    Label4: TLabel;
    Edit1: TEdit;
    sqlUsuariosNF_MULTIMED: TStringField;
    sqlUsuariosLancamentoCaixa: TStringField;
    LancamentoCaixa: TMenuItem;
    ADOConnection1: TADOConnection;
    RelReceCentroCusto: TMenuItem;
    sqlUsuariosRelReceCentroCusto: TStringField;
    sqlUsuariosRelPagaCentroCusto: TStringField;
    RelPagaCentroCusto: TMenuItem;
    sqlUsuariosDespesas: TStringField;
    Despesas: TMenuItem;
    sqlUsuariosRetornoCNAB: TStringField;
    RetornoCNAB: TMenuItem;
    FaturamentoMultimed: TMenuItem;
    sqlUsuariosFaturamentoMultimed: TStringField;
    Image3: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure CentrosdeCustoClick(Sender: TObject);
    procedure ContasBancariasClick(Sender: TObject);
    procedure FormasdePagamentoClick(Sender: TObject);
    procedure FeriadosClick(Sender: TObject);
    procedure LayoutChequesClick(Sender: TObject);
    procedure DescontoAcrescimoClick(Sender: TObject);
    procedure ContasGerencialClick(Sender: TObject);
    procedure MoedasClick(Sender: TObject);
    procedure ListCentrosCustoClick(Sender: TObject);
    procedure ListContasBancariasClick(Sender: TObject);
    procedure ListMoedasClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure ListClientesClick(Sender: TObject);
    procedure ListFornecedoresClick(Sender: TObject);
    procedure CadastroRecebimentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadastroPagamentoClick(Sender: TObject);
    procedure TransAplicResgClick(Sender: TObject);
    procedure CadastroMovimentcaoClick(Sender: TObject);
    procedure CadastroChequeClick(Sender: TObject);
    procedure ListMovimentacaoClick(Sender: TObject);
    procedure ListTransferenciaClick(Sender: TObject);
    procedure ParametrosClick(Sender: TObject);
    procedure ListContasGerenciaisClick(Sender: TObject);
    procedure ListDescontoAcrescimoClick(Sender: TObject);
    procedure ListFeriadosClick(Sender: TObject);
    procedure ListFormaPagamentoClick(Sender: TObject);
    procedure ListLayoChequesClick(Sender: TObject);
    procedure ContasContabeisClick(Sender: TObject);
    procedure ChequesBorderosClick(Sender: TObject);
    procedure PortadoresClick(Sender: TObject);
    procedure LoteRecebimentoClick(Sender: TObject);
    procedure LotePagamentoClick(Sender: TObject);
    procedure ConciliacaoBancariaClick(Sender: TObject);
    procedure UsuariosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EtiquetasClick(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure MovimentoDiarioClick(Sender: TObject);
    procedure LeituraBanco1Click(Sender: TObject);
    procedure GeraBanco1Click(Sender: TObject);
    procedure Portadores1Click(Sender: TObject);
    procedure ContasContabeis1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PagamentosxClick(Sender: TObject);
    procedure ChequePreClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RelatorioRecebimentoClick(Sender: TObject);
    procedure FluxodeCaixaClick(Sender: TObject);
    procedure RelatoriosChequesClick(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure Q_FOTOAfterPost(DataSet: TDataSet);
    procedure UnidadesdaFederaoClick(Sender: TObject);
    procedure EmpresasClick(Sender: TObject);
    procedure SubcontaClick(Sender: TObject);
    procedure RateioClick(Sender: TObject);
    procedure ContaentreEmpresasClick(Sender: TObject);
    procedure RelatoriodeRateiosClick(Sender: TObject);
    procedure bancoforClick(Sender: TObject);
    procedure RelatoriodeContasClick(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure GerMovClick(Sender: TObject);
    procedure Pagamentos2Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure RateiosClick(Sender: TObject);
    procedure EminfClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure GerencialdePagamentosAnual1Click(Sender: TObject);
    procedure GerencialdeMovimentaoAnual1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RelTranferenciaClick(Sender: TObject);
    procedure LimpaEmpresas;
    procedure LIBERACONCILIACAOClick(Sender: TObject);
    procedure BaixaCartaoClick(Sender: TObject);
    procedure AtualizaDebitoClick(Sender: TObject);
    procedure AtualizaCreditoClick(Sender: TObject);
    procedure NF_MULTIMEDClick(Sender: TObject);
    procedure LancamentoCaixaClick(Sender: TObject);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure RelReceCentroCustoClick(Sender: TObject);
    procedure RelPagaCentroCustoClick(Sender: TObject);
    procedure DespesasClick(Sender: TObject);
    procedure RetornoCNABClick(Sender: TObject);
    procedure FaturamentoMultimedClick(Sender: TObject);
  private
    { Private declarations }
    procedure Proc_HabilitaMenu(p_Menu: TMainMenu);
    procedure Verifica_Versao;

  public
    FUsuario : string ;
    StrEtiqueta : string [1] ;
    function CGC( STXT : String) : Boolean;
    function CPF( STXT : String) : Boolean;
    function Conciliacao(conta: string; data : TDateTime ) : Boolean;
    { Public declarations }
  end;
  Procedure CENTRO(Form : TForm; Centra : Boolean);

var
  FMenu  : TFMenu;
  MyList : string[4];
  CodigoCliente : string ;
  gs_rece : string ;
  gs_paga : string ;
  RECEB_OU_PAGTO : string ;

implementation

uses CPPCCUS, CPPBANC, CPPPGTO, CPPFERI, CPPLAYC, CPPDIFE, CPPCONT,
     CPPMOED, CPPMLIS, CPPMLCB, CPPMLMO, CPPMLI2,Cppmlisold,CPPFILFER ,
     PesqReceb, CPPMRRE, Clientes, Fornec, MenuLis2, ListClie, ListCli2, ListFor2, ListForn ,
     Pagamentos , Transfer , MovBancaria , Cheques ,RelMovBanc ,RelTransf ,RelFPagtos , RelFRec , PesqPagtos,
     CPPRECE , U_Parametro, U_DataDebCred, ContCont, U_ChBor , U_CGERAN , U_CGERSINT  , U_VENCAN , U_VENCSINT, U_FornAn ,
     U_FornSint , U_CCusAn , U_CCusint  , U_DTPGAN , U_DTPGSint , U_RbGerAn , U_RbGerSint ,
     U_RbVencAn,U_RbVencSint,U_RbCliAn,U_RbCliSint,U_RbCCUSAn,U_RbCCUSint ,
     U_RbDocAn,U_RbDocSint,U_RbDRsint,U_RbDRan , UPesqCCus ,UPesqCCont , UpesqCBan , UpesqCGer,
     UPesqFer , UPesqDAcr , UPesqFPg , UPesqMoe ,U_Local_Cob,
     LoteRecebimento, PesqClie , LotePagamento ,ConcBancaria, Usuarios,
     FiltEtiqueta, RecNotasFiscais, Unt_Senha, FiltLstMovBanc, RelMovDiarioFilt,
  UleituraBanco, UGeraBanco, UFILTRO_PORTADORES , UCCONT, URelChequePreFilt,
  URelFluxoCaixaFilt, RelFPagto, PesqForn, UFiltRelChq, UPar_PagFor,
  UUnFederacao, UEmpresas, USubcontas, URateios, UPesq_ContasBancarias,
  UPesq_Rateios, UBancoFor, UPesq_Contas, URelMovGer, UPesq_MovGer,UEMITENF,Usplash,
  UFRelMovAnual_Pagamento, U_Funcoes, Splash, U_PesqMovBanc, UPesqCheq,
  UfrmTransferencia, UReverteConciliacao, ufrmPgtoCartao,
  ufrmRecebimentoMultimed, UfrmLancamentoCaixa, UfrmRelReceCentroCusto,
  UfrmDespesas, UfrmRetornoCNAB, UfrmFaturamentoMultimed;
    {$R *.DFM}

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if MessageDlg('Deseja realmente finalizar o sistema?', mtConfirmation,
                [mbyes,mbno], 0) = mrno then
        abort;
  Database1.Connected := false;
  Q_FOTO.CLOSE;
  Action := CaFree;
end;

procedure TFMenu.Button3Click(Sender: TObject);
begin
  FMenu.Close;
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


procedure TFMenu.SairClick(Sender: TObject);
begin
Close;
end;

procedure TFMenu.CentrosdeCustoClick(Sender: TObject);
begin
  FCCusto := TFCCusto.Create(Self);
  FCCusto.ShowModal;
  FCCusto.Release;
end;

procedure TFMenu.ContasBancariasClick(Sender: TObject);
begin
  FCBancarias := TFCBancarias.Create(Self);
  FCBancarias.ShowModal;
  FCBancarias.release;
end;

procedure TFMenu.FormasdePagamentoClick(Sender: TObject);
begin
  FFPgto := TFFPgto.Create(Self);
  FFPgto.ShowModal;
  FFPgto.release;
end;

procedure TFMenu.FeriadosClick(Sender: TObject);
begin
  FFeriados := TFFeriados.Create(Self);
  FFeriados.ShowModal;
  FFeriados.release;
end;                       

procedure TFMenu.LayoutChequesClick(Sender: TObject);
begin
  FLCheques := TFLCheques.Create(Self);
  FLCheques.ShowModal;
  FLCheques.release ;
end;

procedure TFMenu.DescontoAcrescimoClick(Sender: TObject);
begin
  FDescAcres := TFDescAcres.Create(Self);
  FDescAcres.ShowModal;
  FDescAcres.release;
end;

procedure TFMenu.ContasGerencialClick(Sender: TObject);
begin
  FCGerenciais := TFCGerenciais.Create(Self);
  FCGerenciais.ShowModal;
  FCGerenciais.Release;
end;

procedure TFMenu.MoedasClick(Sender: TObject);
begin
  FMoedas := TFMoedas.Create(Self);
  FMoedas.ShowModal;
  FMoedas.Release ;
end;

procedure TFMenu.ListCentrosCustoClick(Sender: TObject);
begin

  MyList := 'CCUS';
  Application.Createform(TFMenuList, FMenuList);
  FMenuList.ShowModal;

end;

procedure TFMenu.ListContasBancariasClick(Sender: TObject);
begin
  Application.Createform(TFMenulistCBan, FMenulistCBan);
  FMenulistCBan.ShowModal;
  FMenulistCBan.RELEASE;
end;

procedure TFMenu.ListMoedasClick(Sender: TObject);
begin
  FMenuListMoedas := TFMenuListMoedas.Create(Self);
  FMenuListMoedas.ShowModal;
  FMenuListMoedas.Release ;

end;

procedure TFMenu.ClientesClick(Sender: TObject);
begin
  CodigoCliente := '' ;
  Application.Createform(TFPesqClie, FPesqClie);
  FPesqClie.ShowModal;
  FPesqClie.RELEASE;
end;

procedure TFMenu.FornecedoresClick(Sender: TObject);
begin
  Application.Createform(TFPesqForn, FPesqForn);
  FPesqForn.ShowModal;
  FPesqForn.RELEASE;
end;

procedure TFMenu.ListClientesClick(Sender: TObject);
begin
  StrEtiqueta := '1' ;
  MyList := 'CLIE';
  Application.Createform(TFMenuList2, FMenuList2);
  FMenuList2.ShowModal;
  FMenuList2.RELEASE;
end;

procedure TFMenu.ListFornecedoresClick(Sender: TObject);
begin

  MyList := 'FORN';
  Application.Createform(TFMenuList2, FMenuList2);
  FMenuList2.ShowModal;
  FMenuList2.release;

end;

procedure TFMenu.CadastroRecebimentoClick(Sender: TObject);
begin
  gs_rece := '' ;
  FPesqReceb := TFPesqReceb.Create(Self);
  FPesqReceb.ShowModal;
  FPesqReceb.release ;

end;

procedure TFMenu.FormCreate(Sender: TObject);
var I : integer;
begin
//  Q_FOTO.OPEN;
//  Q_FOTO.RevertRecord;

{  FSPLASHSCREEN.Show;
  FSPLASHSCREEN.Update;}
(*  for I := 1 to 3 do
  begin
    try
    begin
      Database1.Connected := true;
      FUsuario := DATABASE1.Params.Values['USER NAME'];
    end
    except on E:EdbEngineError do
      begin
        MessageDlg('Acesso negado.',mtInformation,[mbOk], 0);
      end
    end;
  end;  *)

{  FSPLASHSCREEN.Close;}
(*  if not Database1.Connected then Abort; *)
// StatusBar1.Panels[2].Text := Fusuario ;


end;

procedure TFMenu.CadastroPagamentoClick(Sender: TObject);
begin
  gs_paga := '' ;
  FPesqPagtos := TFPesqPagtos.Create(Self);
  FPesqPagtos.ShowModal;
  FPesqPagtos.Release ;

end;

procedure TFMenu.TransAplicResgClick(Sender: TObject);
begin
// chamada da tela de transferencias
  FTransf := TFTransf.Create(self);
  FTransf.ShowModal;
  FTransf.release;
end;

procedure TFMenu.CadastroMovimentcaoClick(Sender: TObject);
begin
  {FMovBanc := TFMovBanc.Create(Self);
  FMovBanc.ShowModal;
  FMovBanc.Release;  }

   Application.CreateForm(TFPesqMovBanc, FPesqMovBanc);
   FPesqMovBanc.ShowModal ;
   FPesqMovBanc.Release ;
end;

procedure TFMenu.CadastroChequeClick(Sender: TObject);
begin
//  FChq := TFChq.Create(Self);
//  FChq.ShowModal;
//  FChq.Release;

   Application.CreateForm(TFPesqCheq, FPesqCheq);
   FPesqCheq.ShowModal;
   FPesqCheq.Release;
end;

procedure TFMenu.ListMovimentacaoClick(Sender: TObject);
begin

  Application.Createform(TFFiltLstMovBanc, FFiltLstMovBanc);
  FFiltLstMovBanc.ShowModal;
  FFiltLstMovBanc.close;
  FFiltLstMovBanc.release;
    
{
  Application.Createform(TFParPagFor, FParPagFor);
  FParPagFor.ShowModal;
  FParPagFor.close ;
  FParPagFor.release ;
  }
end;


procedure TFMenu.ListTransferenciaClick(Sender: TObject);
begin
  Application.Createform(TFLstTransf, FLstTransf);
  FLstTransf.Lst_Transf.Preview;
  FLstTransf.close;
  FLstTransf.Release;

end;

procedure TFMenu.ParametrosClick(Sender: TObject);
begin

  FParametro := TFParametro.Create(Self);
  FParametro.ShowModal;

end;

procedure TFMenu.ListContasGerenciaisClick(Sender: TObject);
begin

  MyList := 'CONT';
  Application.Createform(TFMenuList, FMenuList);
  FMenuList.ShowModal;

end;

procedure TFMenu.ListDescontoAcrescimoClick(Sender: TObject);
begin
  MyList := 'DIFE';
  Application.Createform(TFMenuList, FMenuList);
  FMenuList.ShowModal;

end;

procedure TFMenu.ListFeriadosClick(Sender: TObject);
begin

  Application.Createform(TLst_Fer_Filt, Lst_Fer_Filt);
  Lst_Fer_Filt.showmodal;
  Lst_Fer_Filt.Release;


end;

procedure TFMenu.ListFormaPagamentoClick(Sender: TObject);
begin
  MyList := 'PGTO';
  Application.Createform(TFMenuList, FMenuList);
  FMenuList.ShowModal;

end;

procedure TFMenu.ListLayoChequesClick(Sender: TObject);
begin
  MyList := 'LAYO';
  Application.Createform(TFMenuList, FMenuList);
  FMenuList.ShowModal;

end;

procedure TFMenu.ContasContabeisClick(Sender: TObject);
begin
  FContaContabil := TFContaContabil.Create(Self);
  FContaContabil.ShowModal;
  FContaContabil.Release;
end;

procedure TFMenu.ChequesBorderosClick(Sender: TObject);
begin

  FChBor := TFChBor.Create(Self);
  FChBor.ShowModal;
  FChBor.Release   ;

end;

procedure TFMenu.PortadoresClick(Sender: TObject);
begin
  Dfm_LocalCob := TDfm_LocalCob.Create(Self);
  Dfm_LocalCob.ShowModal;
  Dfm_LocalCob.Release  ;

end;

procedure TFMenu.LoteRecebimentoClick(Sender: TObject);
begin

  FLoteRecebimento := TFLoteRecebimento.Create(Self);
  FLoteRecebimento.ShowModal;
  FLoteRecebimento.Release   ;

end;

procedure TFMenu.LotePagamentoClick(Sender: TObject);
begin
  FLotePagamento := TFLotePagamento.Create(Self);
  FLotePagamento.ShowModal;
  FLotePagamento.Release   ;

end;

procedure TFMenu.ConciliacaoBancariaClick(Sender: TObject);
begin
  FConcBancaria := TFConcBancaria.Create(Self);
  FConcBancaria.ShowModal;
  FConcBancaria.Release  ;

end;
procedure TFMenu.Proc_HabilitaMenu(p_Menu: TMainMenu);
var a, b, c, d, e: integer;
begin
   SqlUsuarios.Open ;
   SqlUsuarios.Locate('NOME',FUsuario,[loCaseInsensitive]) ;
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
                            p_Menu.Items[a].Items[b].Items[c].visible := False ;
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
   //SqlUsuarios.close ;

   //deixamos os menus invisiveis    - Miguel
   EmissaoCheques.Visible := False;
   Cancelamentos.Visible := False;
   ConsultaCheques.Visible := False;


end;

procedure TFMenu.UsuariosClick(Sender: TObject);
begin
  FRUsuarios := TFRUsuarios.Create(Self);
  FRUsuarios.ShowModal;
  FRUsuarios.Release ;
end;

procedure TFMenu.FormShow(Sender: TObject);
begin

   FMenu.Caption := FMenu.Caption + StringReplace(lbVersao.Caption, ',','.', [rfReplaceAll]);
   {frmSplash := TfrmSplash.Create(Self);
   frmSplash.ShowModal; }

   
   Application.CreateForm(TDfm_Senha, Dfm_Senha);
   Dfm_Senha.showModal ;
   Dfm_Senha.release ;
   Verifica_Versao;
   FMenu.Height := Screen.Height;
   FMenu.Width := Screen.Width;
   Proc_HabilitaMenu(MainMenu);

   StatusBar1.Panels[3].Text :=' Usuário: ' + StrUsuFinan;


end;

procedure TFMenu.EtiquetasClick(Sender: TObject);
begin

  StrEtiqueta := '2' ;
  FEtiqueta := TFEtiqueta.Create(Self);
  FEtiqueta.ShowModal;
  FEtiqueta.Release ;

end;

procedure TFMenu.NotasFiscais1Click(Sender: TObject);
begin
  Application.Createform(TNotasFiscais_Filt, NotasFiscais_Filt);
  NotasFiscais_Filt.ShowModal;
  NotasFiscais_Filt.Release;
end;

procedure TFMenu.MovimentoDiarioClick(Sender: TObject);
begin
  Application.Createform(TFRelMovDiarioFilt, FRelMovDiarioFilt);
  FRelMovDiarioFilt.ShowModal;
  FRelMovDiarioFilt.Release;

end;

procedure TFMenu.LeituraBanco1Click(Sender: TObject);
begin
// Leitura Banco
   Application.CreateForm(TFLeituraBanco,FLeituraBanco);
   FLeituraBanco.showmodal ;
   FLeituraBanco.Release;
end;

procedure TFMenu.GeraBanco1Click(Sender: TObject);
begin
// Geração Banco
   Application.CreateForm(TFGeraBanco,FGeraBanco);
   FGeraBanco.showmodal ;
   FGeraBanco.Release;
end;

procedure TFMenu.Portadores1Click(Sender: TObject);
begin
   Application.CreateForm(TFFILTROPORT,FFILTROPORT);
   FFILTROPORT.showmodal ;
   FFILTROPORT.Release;
end;

procedure TFMenu.ContasContabeis1Click(Sender: TObject);
begin
   Application.CreateForm(TFCCont,FCCONT);
   FCCONT.showmodal ;
   FCCONT.Release;
end;

procedure TFMenu.Timer1Timer(Sender: TObject);
begin
      StatusBar1.Panels[0].Text :=
     FormatDateTime('dd/mm/yyyy',Date);
//------------------------------------------------------------------------------
     StatusBar1.Panels[1].Text :=
     FormatDateTime('hh:mm:ss',Time);
end;

procedure TFMenu.PagamentosxClick(Sender: TObject);
begin
   Application.Createform(TLst_Pagtos_Filt, Lst_Pagtos_Filt);
   Lst_Pagtos_Filt.ShowModal;
   Lst_Pagtos_Filt.Release;

end;

procedure TFMenu.ChequePreClick(Sender: TObject);
begin
   Application.Createform(TFRelChequePreFilt, FRelChequePreFilt);
   FRelChequePreFilt.ShowModal;
   FRelChequePreFilt.Release;
end;

procedure TFMenu.FormActivate(Sender: TObject);
//var Altura, Largura, X, Y : Integer;
begin
//        CENTRO(Self,False);

  { Altura := FMenu.Height;
   Largura := FMenu.Width;
   X := Altura div 2;
   Y := Largura div 2;
   DBImage1.Left := x - (DBImage1.Width div 2);
   DBImage1.Top := Y - (DBImage1.Height div 2); }


end;

procedure TFMenu.RelatorioRecebimentoClick(Sender: TObject);
begin

   Application.Createform(TLst_Receb_Filt, Lst_Receb_Filt);
   lst_Receb_Filt.ShowModal;
   lst_Receb_Filt.Release;  

end;

procedure TFMenu.FluxodeCaixaClick(Sender: TObject);
begin
   Application.CreateForm(TFRelFluxoCaixaFilt, FRelFluxoCaixaFilt);
   FRelFluxoCaixaFilt.ShowModal;
   FRelFluxoCaixaFilt.Release;
end;

procedure TFMenu.RelatoriosChequesClick(Sender: TObject);
begin
   Application.CreateForm(TFFiltRelChq, FFiltRelChq);
   FFiltRelChq.ShowModal;
   FFiltRelChq.Release;
end;

procedure TFMenu.DBImage1DblClick(Sender: TObject);
begin
      If (StrUsuFinan = 'SA') or (StrUsuFinan = 'ADMFIN') or (StrUsuFinan = 'RUBENS')then
      Begin
              If OpenPictureDialog1.Execute Then
              Try
                 Q_FOTO.OPEN;
                 Q_FOTO.edit;
                 Q_FOTOFoto.LoadFromFile( OpenPictureDialog1.FileName );
                 Q_FOTO.post;
                 
              Except
                 On EInvalidGraphic Do ShowMessage('Arquivo Com Problemas')
              End;
      End;
end;

procedure TFMenu.Q_FOTOAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_FOTO]);
  end;
  except
    begin
      Q_FOTO.RevertRecord;
    end;
  end;
  Q_FOTO.Close;
  Q_FOTO.Open;

end;

procedure TFMenu.UnidadesdaFederaoClick(Sender: TObject);
begin
  FUnFederacao := TFUnFederacao.Create(Self);
  FUnFederacao.ShowModal;
  FUnFederacao.Release ;
end;

procedure TFMenu.EmpresasClick(Sender: TObject);
begin
  FEmpresas := tFEmpresas.Create(Self);  {}
  FEmpresas.ShowModal;
  FEmpresas.release;
end;

procedure TFMenu.SubcontaClick(Sender: TObject);
begin
  FSubContas := TFSubContas.Create(Self);
  FSubContas.ShowModal;
  FSubContas.Release;
end;

procedure TFMenu.RateioClick(Sender: TObject);
begin
  FRateios := TFRateios.Create(Self);
  FRateios.ShowModal;
  FRateios.Release;

end;

procedure TFMenu.ContaentreEmpresasClick(Sender: TObject);
begin
   Application.Createform(tFPesq_ContasBancarias, FPesq_ContasBancarias);
   FPesq_ContasBancarias.ShowModal;
   FPesq_ContasBancarias.Release;
end;

procedure TFMenu.RelatoriodeRateiosClick(Sender: TObject);
begin
   Application.Createform(TFPesq_Rateios, FPesq_Rateios);
   FPesq_Rateios.ShowModal;
   FPesq_Rateios.Release;

end;

procedure TFMenu.bancoforClick(Sender: TObject);
begin
  FBANCOFOR := TFBANCOFOR.Create(Self);
  FBANCOFOR.ShowModal;
  FBANCOFOR.Release;

end;

procedure TFMenu.RelatoriodeContasClick(Sender: TObject);
begin
   Application.Createform(TFPesq_contas, FPesq_contas);
   FPesq_contas.ShowModal;
   FPesq_contas.Release;

end;

procedure TFMenu.Pagamentos1Click(Sender: TObject);
begin
   Application.Createform(TLst_Pagtos_Filt, Lst_Pagtos_Filt);
   Lst_Pagtos_Filt.ShowModal;
   Lst_Pagtos_Filt.Release;
end;

procedure TFMenu.GerMovClick(Sender: TObject);
begin
   Application.Createform(TFPesq_MovGer, FPesq_MovGer);
   FPesq_MovGer.ShowModal;
   FPesq_MovGer.Release;


end;

procedure TFMenu.Pagamentos2Click(Sender: TObject);
begin
   Application.Createform(TLst_Pagtos_Filt, Lst_Pagtos_Filt);
   Lst_Pagtos_Filt.ShowModal;
   Lst_Pagtos_Filt.Release;
end;

procedure TFMenu.ContasaPagar1Click(Sender: TObject);
begin
   Application.Createform(TFPesq_contas, FPesq_contas);
   FPesq_contas.ShowModal;
   FPesq_contas.Release;

end;

procedure TFMenu.RateiosClick(Sender: TObject);
begin
   Application.Createform(TFPesq_Rateios, FPesq_Rateios);
   FPesq_Rateios.ShowModal;
   FPesq_Rateios.Release;

end;

procedure TFMenu.EminfClick(Sender: TObject);
begin
        APPLICATION.CREATEFORM(TFEMITENF,FEMITENF);
        FEMITENF.SHOWMODAL;
        FEMITENF.RELEASE;
end;

procedure TFMenu.Image2Click(Sender: TObject);
begin
        Application.createform(tfsplash, fsplash);
        Fsplash.showmodal;
        Fsplash.release;
end;

procedure TFMenu.GerencialdePagamentosAnual1Click(Sender: TObject);
begin
        
        RECEB_OU_PAGTO := 'P' ;
        Application.createform(TFFRelMovAnual_Pagamento, FFRelMovAnual_Pagamento);
        FFRelMovAnual_Pagamento.showmodal;
        FFRelMovAnual_Pagamento.release;
        RECEB_OU_PAGTO := '' ;
end;

procedure TFMenu.GerencialdeMovimentaoAnual1Click(Sender: TObject);
begin
        RECEB_OU_PAGTO := 'R' ;
        Application.createform(TFFRelMovAnual_Pagamento, FFRelMovAnual_Pagamento);
        FFRelMovAnual_Pagamento.showmodal;
        FFRelMovAnual_Pagamento.release;
        RECEB_OU_PAGTO := '' ;
end;

procedure TFMenu.FormResize(Sender: TObject);
var Altura, Largura, X, Y : Integer;
begin
//        CENTRO(Self,False);

   //redimensionar o form com as medidas da tela, tirando 30 para ao menu iniciar
   //deu problema o menu maximizado com os idiotas q ocultam o menu iniciar
   //miguel

   FMenu.Height := Screen.Height - 30;
   FMenu.Width := Screen.Width;
   FMenu.Top := 0;
   FMenu.Left := 0;

   Altura := fmenu.Height;
   Largura := fmenu.Width;
   
   X := Altura div 2;
   Y := Largura div 2;
   Image3.Left := y - (Image3.Width div 2);
   Image3.Top := x - (Image3.Height div 2);

   Image4.Top := Altura - 80 - Image4.Height;
   Image4.Left := Largura - 30 - Image4.Width;




end;

procedure TFMenu.Verifica_Versao;
var Versao : Double;
begin
  Versao := StrToFloat(lbVersao.Caption);

  if Versao < Q_FOTOVersao.Value then
  begin
     MessageBox(Self.Handle, PCHAR('VERSÃO ANTIGA DO SISTEMA!'+#13+'VERSÃO CORRETA: '+ Q_FOTOVersao.AsString + ' FAVOR ATUALIZAR'), 'Erro', MB_OK + MB_ICONERROR);
     Application.Terminate;
  end;

  if Versao > Q_FOTOVersao.Value then
  begin
      qrUpdateVersao.Params[0].AsFloat := Versao;
      qrUpdateVersao.ExecSQL;
  end;

end;

procedure TFMenu.RelTranferenciaClick(Sender: TObject);
begin
    frmTransferencia := TfrmTransferencia.Create(self);
    frmTransferencia.ShowModal;
end;



function TFMenu.Conciliacao(conta: string; data : TDateTime ): Boolean;
var conciliado : Boolean;

begin   //esta rotina verifica se foi efetuada a conciliação bancaria, se for desconsidera a movimentação
   conciliado := False;

   qrConciliacao.close;
   qrConciliacao.Params[0].AsString := conta;
   qrConciliacao.Open;

   if data <= qrConciliacaodata.Value then
        conciliado := True;

   Result := conciliado;
end;

procedure TFMenu.LimpaEmpresas;
begin

        with q_Aux do
        begin
            close;
            sql.clear;
            sql.add('DELETE FROM EMP_TEMP WHERE USUARIO = ' + sqlUsuariosCH.AsString);
            ExecSQL;
        end;
end;

procedure TFMenu.LIBERACONCILIACAOClick(Sender: TObject);
begin
  frmReverteConciliacao := TfrmReverteConciliacao.Create(Self);
  frmReverteConciliacao.ShowModal;
end;

procedure TFMenu.BaixaCartaoClick(Sender: TObject);
begin
    frmPgtoCartao := TfrmPgtoCartao.Create(Self);
    frmPgtoCartao.ShowModal;
end;

procedure TFMenu.AtualizaDebitoClick(Sender: TObject);
begin
  FDataDebCred := TFDataDebCred.Create(Self);
  FDataDebCred.lbTipo.Caption := 'D';
  FDataDebCred.Caption := 'Atualização de Débito';
  FDataDebCred.lbClin.Caption := 'Fornecedor';
  FDataDebCred.cboForn.Visible := True;
  FDataDebCred.ShowModal;
  FDataDebCred.release;
end;

procedure TFMenu.AtualizaCreditoClick(Sender: TObject);
begin
  FDataDebCred := TFDataDebCred.Create(Self);
  FDataDebCred.lbTipo.Caption := 'C';
  FDataDebCred.Caption := 'Atualização de Crédito';
  FDataDebCred.lbClin.Caption := 'Cliente';
  FDataDebCred.cboCliente.Visible := True;
  FDataDebCred.ShowModal;
  FDataDebCred.release;
end;

procedure TFMenu.NF_MULTIMEDClick(Sender: TObject);
begin
   frmRecebimentoMultimed := TfrmRecebimentoMultimed.Create(self);
   frmRecebimentoMultimed.ShowModal;
end;

procedure TFMenu.LancamentoCaixaClick(Sender: TObject);
begin
   frmLancamentoCaixa := TfrmLancamentoCaixa.Create(Self);
   frmLancamentoCaixa.ShowModal;
end;

procedure TFMenu.ADOConnection1BeforeConnect(Sender: TObject);
begin
  ADOConnection1.ConnectionString := 'FILE NAME=C:\ALMOX.udl';
end;

procedure TFMenu.RelReceCentroCustoClick(Sender: TObject);
begin
   frmRelReceCentroCusto := tfrmRelReceCentroCusto.Create(Self);
   frmRelReceCentroCusto.lbTipo.Caption := 'R';
   frmRelReceCentroCusto.ShowModal;
end;

procedure TFMenu.RelPagaCentroCustoClick(Sender: TObject);
begin
frmRelReceCentroCusto := tfrmRelReceCentroCusto.Create(Self);
    frmRelReceCentroCusto.lbTipo.Caption := 'P';
   frmRelReceCentroCusto.ShowModal;
end;

procedure TFMenu.DespesasClick(Sender: TObject);
begin
   ///
   frmDespesas := TfrmDespesas.Create(Self);
   frmDespesas.ShowModal;
end;

procedure TFMenu.RetornoCNABClick(Sender: TObject);
begin
  frmRetornoCNAB := tfrmRetornoCNAB.create(self) ;
  frmRetornoCNAB.showmodal;
end;

procedure TFMenu.FaturamentoMultimedClick(Sender: TObject);
begin
    frmFaturamentoMultimed := TfrmFaturamentoMultimed.Create(Self);
    frmFaturamentoMultimed.ShowModal;
end;

end.




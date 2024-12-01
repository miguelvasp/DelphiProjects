
unit UMenu;
interface
  {KKl/;/;/;jj/0llK}
  {KKl/;/;/;jj/0llK}
  {KKl/;/;/;jj/0llK
  }

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Menus, StdCtrls, Buttons, Db,
   Wwdatsrc,
   DBTables,
   FileCtrl,
  Wwtable,
  Wwquery,
  ADODB,
  jpeg,
  ComObj, JvExControls, JvComponent, JvOutlookBar, ShellAPI;
type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    CHAMADA1: TMenuItem;
    CHAMADA1A: TMenuItem;
    CHAMADA4: TMenuItem;
    SAIR: TMenuItem;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    CHAMADA1E: TMenuItem;
    CHAMADA1G: TMenuItem;
    CHAMADA1C: TMenuItem;
    CHAMADA1L: TMenuItem;
    CHAMADA1K: TMenuItem;
    CHAMADA1F: TMenuItem;
    CHAMADA1H: TMenuItem;
    CHAMADA1J: TMenuItem;
    CHAMADA1I: TMenuItem;
    CHAMADA1M: TMenuItem;
    CHAMADA2A: TMenuItem;
    CHAMADA2C: TMenuItem;
    CHAMADA2D: TMenuItem;
    CHAMADA2E: TMenuItem;
    CHAMADA1N: TMenuItem;
    CHAMADA3A: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    CHAMADA2: TMenuItem;
    CHAMADA3: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CHAMADA1O: TMenuItem;
    CHAMADA1P: TMenuItem;
    CHAMADA1B: TMenuItem;
    CHAMADA3B: TMenuItem;
    CHAMADA3C: TMenuItem;
    T_EMPR: TwwTable;
    T_EMPRRAZ: TStringField;
    T_EMPRCOD_EMP: TAutoIncField;
    T_EMPRCGC: TStringField;
    T_EMPRINSC: TStringField;
    T_EMPREND: TStringField;
    T_EMPRCID: TStringField;
    T_EMPREST: TStringField;
    T_EMPRCEP: TStringField;
    T_EMPRPAIS: TStringField;
    T_EMPRDDD: TStringField;
    T_EMPRFON: TStringField;
    T_EMPRFAX: TStringField;
    T_EMPRRAMO: TStringField;
    T_EMPRMAIL: TStringField;
    T_EMPRHOME: TStringField;
    T_EMPRTIPO: TStringField;
    T_EMPRNUMFUNC: TIntegerField;
    T_EMPRDCAD: TDateField;
    T_FUNC: TwwTable;
    T_FUNCFLAG: TStringField;
    T_FUNCNUMQUEST: TIntegerField;
    T_FUNCNOME: TStringField;
    T_FUNCDATCAD: TDateField;
    T_FUNCDescEmpr: TStringField;
    T_FUNCNUMEMPR: TIntegerField;
    T_FUNCSEXO: TStringField;
    T_FUNCCARGO: TStringField;
    T_FUNCFUNCAO: TStringField;
    T_FUNCNIVEL: TStringField;
    T_FUNCAREA: TStringField;
    T_FUNCCARANT: TStringField;
    T_FUNCFUNANT: TStringField;
    T_FUNCESC: TStringField;
    T_FUNCDATNASC: TDateField;
    T_FUNCEND: TStringField;
    T_FUNCCID: TStringField;
    T_FUNCEST: TStringField;  {55}
    T_FUNCCEP: TStringField;
    T_FUNCDDD: TStringField;
    T_FUNCFONE: TStringField;
    T_FUNCFAX: TStringField;
    T_FUNCJARESP: TBooleanField;
    T_FUNCQUANDO: TStringField;
    T_FUNCCOMQUEM: TStringField;
    T_FUNCGRUPAL: TStringField;
    T_FUNCANINDIV: TMemoField;
    T_FUNCFLAGGRUPO: TStringField;
    T_FUNCQUESTID: TStringField;
    DS_EMPR: TwwDataSource;
    SaveDialog1: TSaveDialog;
    T_ACUM: TwwTable;
    T_ACUMNUMEMPRESA: TIntegerField;
    T_ACUMNUMQUES: TIntegerField;
    T_ACUMLETRAFUNC: TStringField;
    T_ACUMSEQFUNC: TIntegerField;
    T_ACUMNOTA: TIntegerField;
    DS_FUNC: TwwDataSource;
    DS_ACUM: TwwDataSource;
    T_GABA: TwwTable;
    T_GABALETFUNC: TStringField;
    T_GABANOTA: TIntegerField;
    T_GABAGRUPO: TStringField;
    T_GABADESCRITIVO: TMemoField;
    T_GABAGANHA: TMemoField;
    T_GABAPERDE: TMemoField;
    T_GABAATITUDE: TMemoField;
    T_GABAGESTAO: TMemoField;
    T_GABAGAPS: TMemoField;
    T_GABAACOESDES: TMemoField;
    T_FUNCOES: TwwTable;
    T_FUNCOESLETRAFUNC: TStringField;
    T_FUNCOESDESCFUNCAO: TStringField;
    T_FUNCOESINFERIOR: TIntegerField;
    T_FUNCOESSUPERIOR: TIntegerField;
    DS_FUNCOES: TwwDataSource;
    CHAMADA1D: TMenuItem;
    T_FUNC_LEITURA: TwwTable;
    T_FUNC_LEITURANUMEMPR: TIntegerField;
    T_FUNC_LEITURANUMQUEST: TIntegerField;
    T_FUNC_LEITURANOME: TStringField;
    T_FUNC_LEITURASEXO: TStringField;
    T_FUNC_LEITURACARGO: TStringField;
    T_FUNC_LEITURAFUNCAO: TStringField;
    T_FUNC_LEITURANIVEL: TStringField;
    T_FUNC_LEITURAAREA: TStringField;
    T_FUNC_LEITURACARANT: TStringField;
    T_FUNC_LEITURAFUNANT: TStringField;
    T_FUNC_LEITURAESC: TStringField;
    T_FUNC_LEITURADATNASC: TDateField;
    T_FUNC_LEITURAEND: TStringField;
    T_FUNC_LEITURACID: TStringField;
    T_FUNC_LEITURAEST: TStringField;
    T_FUNC_LEITURACEP: TStringField;
    T_FUNC_LEITURADDD: TStringField;
    T_FUNC_LEITURAFONE: TStringField;
    T_FUNC_LEITURAFAX: TStringField;
    T_FUNC_LEITURADATCAD: TDateField;
    T_FUNC_LEITURAJARESP: TBooleanField;
    T_FUNC_LEITURAQUANDO: TStringField;
    T_FUNC_LEITURACOMQUEM: TStringField;
    T_FUNC_LEITURAGRUPAL: TStringField;
    T_FUNC_LEITURAFLAG: TStringField;
    T_FUNC_LEITURAANINDIV: TMemoField;
    T_FUNC_LEITURAPERFIL: TIntegerField;
    T_FUNC_LEITURAFLAGGRUPO: TStringField;
    T_FUNC_LEITURACONTADOR: TIntegerField;
    T_FUNC_LEITURAQUESTID: TStringField;
    CHAMADA3D: TMenuItem;
    CHAMADA2F: TMenuItem;
    CHAMADA2F1: TMenuItem;
    T_PROV: TwwTable;
    T_PROVCENAPE: TStringField;
    T_PROVUF: TStringField;
    T_PROVNome: TStringField;
    T_PROVSexo: TStringField;
    T_PROVCargo: TStringField;
    T_PROVEndereco: TStringField;
    T_PROVData: TStringField;
    CHAMADA3F: TMenuItem;
    CHAMADA3F1: TMenuItem;
    T_FUNC2: TwwTable;
    T_FUNC2NUMEMPR: TIntegerField;
    T_FUNC2NUMQUEST: TIntegerField;
    T_FUNC2NOME: TStringField;
    T_FUNC2SEXO: TStringField;
    T_FUNC2CARGO: TStringField;
    T_FUNC2FUNCAO: TStringField;
    T_FUNC2NIVEL: TStringField;
    T_FUNC2AREA: TStringField;
    T_FUNC2CARANT: TStringField;
    T_FUNC2FUNANT: TStringField;
    T_FUNC2ESC: TStringField;
    T_FUNC2DATNASC: TDateField;
    T_FUNC2END: TStringField;
    T_FUNC2CID: TStringField;
    T_FUNC2EST: TStringField;
    T_FUNC2CEP: TStringField;
    T_FUNC2DDD: TStringField;
    T_FUNC2FONE: TStringField;
    T_FUNC2FAX: TStringField;
    T_FUNC2DATCAD: TDateField;
    T_FUNC2JARESP: TBooleanField;
    T_FUNC2QUANDO: TStringField;
    T_FUNC2COMQUEM: TStringField;
    T_FUNC2GRUPAL: TStringField;
    T_FUNC2FLAG: TStringField;
    T_FUNC2ANINDIV: TMemoField;
    T_FUNC2PERFIL: TIntegerField;
    T_FUNC2FLAGGRUPO: TStringField;
    T_FUNC2CONTADOR: TIntegerField;
    T_FUNC2QUESTID: TStringField;
    T_FUNC2REGIONAL: TStringField;
    T_REG: TwwTable;
    T_REGREGIONAL: TStringField;
    T_REGLOCAL: TStringField;
    CHAMADA2F2: TMenuItem;
    CHAMADA2B: TMenuItem;
    CHAMADA3E: TMenuItem;
    T_GRUPO: TwwTable;
    T_GRUPOGrupo: TStringField;
    T_GRUPOEmpresa: TIntegerField;
    T_GRUPOPessoa: TIntegerField;
    T_GRUPODescPessoa: TStringField;
    T_GRUPODataUtiliz: TDateField;
    T_GRUPONumVezUtiliz: TIntegerField;
    T_AMOST: TwwTable;
    T_AMOSTAmostra: TStringField;
    T_AMOSTEmpresa: TIntegerField;
    T_AMOSTPessoa: TIntegerField;
    T_AMOSTPerfil: TIntegerField;
    T_AMOSTDescPessoa: TStringField;
    T_AMOSTTipoAmostraBench: TStringField;
    T_AMOSCOM: TwwTable;
    T_AMOSCOMAmostra: TStringField;
    T_AMOSCOMEmpresa: TIntegerField;
    T_AMOSCOMPerfil: TIntegerField;
    T_AMOSCOMCompetencia: TIntegerField;
    T_AMOSCOMDescCompetencia: TStringField;
    T_INDICADR: TwwTable;
    T_INDICADRCOD_PERF: TIntegerField;
    T_INDICADRCOD_SEQ: TIntegerField;
    T_INDICADRDES_IND: TStringField;
    T_INDICADRDESCR: TMemoField;
    T_INDICADRFLAG: TStringField;
    T_INDICADRPESO: TIntegerField;
    DS_AMOST: TwwDataSource;
    T_FUNC4: TwwTable;
    T_FUNC4NUMEMPR: TIntegerField;
    T_FUNC4NUMQUEST: TIntegerField;
    T_FUNC4NOME: TStringField;
    CHAMADA4A: TMenuItem;
    CHAMADA2F3: TMenuItem;
    CHAMADA4B: TMenuItem;
    DS_Usuario: TwwDataSource;
    SqlUsuarios: TwwQuery;
    CHAMADA2F4: TMenuItem;
    SqlUsuariosCH: TAutoIncField;
    SqlUsuariosNOME: TStringField;
    SqlUsuariosSENHA: TStringField;
    SqlUsuariosCHAMADA1: TStringField;
    SqlUsuariosCHAMADA1A: TStringField;
    SqlUsuariosCHAMADA1B: TStringField;
    SqlUsuariosCHAMADA1C: TStringField;
    SqlUsuariosCHAMADA1D: TStringField;
    SqlUsuariosCHAMADA1E: TStringField;
    SqlUsuariosCHAMADA1F: TStringField;
    SqlUsuariosCHAMADA1G: TStringField;
    SqlUsuariosCHAMADA1H: TStringField;
    SqlUsuariosCHAMADA1I: TStringField;
    SqlUsuariosCHAMADA1J: TStringField;
    SqlUsuariosCHAMADA1K: TStringField;    {}
    SqlUsuariosCHAMADA1L: TStringField;
    SqlUsuariosCHAMADA1M: TStringField;
    SqlUsuariosCHAMADA1N: TStringField;
    SqlUsuariosCHAMADA1O: TStringField;
    SqlUsuariosCHAMADA1P: TStringField;
    SqlUsuariosCHAMADA2: TStringField;
    SqlUsuariosCHAMADA2A: TStringField;
    SqlUsuariosCHAMADA2B: TStringField;
    SqlUsuariosCHAMADA2C: TStringField;
    SqlUsuariosCHAMADA2D: TStringField;
    SqlUsuariosCHAMADA2E: TStringField;
    SqlUsuariosCHAMADA2F: TStringField;
    SqlUsuariosCHAMADA2F1: TStringField;
    SqlUsuariosCHAMADA2F2: TStringField;
    SqlUsuariosCHAMADA2F3: TStringField;
    SqlUsuariosCHAMADA2F4: TStringField;
    SqlUsuariosCHAMADA3: TStringField;
    SqlUsuariosCHAMADA3A: TStringField;
    SqlUsuariosCHAMADA3B: TStringField;
    SqlUsuariosCHAMADA3C: TStringField;
    SqlUsuariosCHAMADA3D: TStringField;
    SqlUsuariosCHAMADA3E: TStringField;
    SqlUsuariosCHAMADA3F: TStringField;
    SqlUsuariosCHAMADA3F1: TStringField;
    SqlUsuariosCHAMADA4: TStringField;
    SqlUsuariosCHAMADA4A: TStringField;
    SqlUsuariosCHAMADA4B: TStringField;
    SqlUsuariosSAIR: TStringField;
    CHAMADA3G: TMenuItem;
    SqlUsuariosCHAMADA3G: TStringField;
    Chamada5: TMenuItem;
    CHAMADA5A: TMenuItem;
    SqlUsuariosCHAMADA5: TStringField;
    SqlUsuariosCHAMADA5A: TStringField;
    CHAMADA5B: TMenuItem;
    SqlUsuariosCHAMADA5B: TStringField;
    CHAMADA3H: TMenuItem;
    SqlUsuariosCHAMADA3H: TStringField;
    CHAMADA3I: TMenuItem;
    SqlUsuariosCHAMADA3I: TStringField;
    CHAMADA5C: TMenuItem;
    SqlUsuariosCHAMADA5C: TStringField;
    CHAMADA3J: TMenuItem;
    SqlUsuariosCHAMADA3J: TStringField;
    Q_PAR: TwwQuery;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARVERSAO: TStringField;
    CHAMADA5D: TMenuItem;
    SqlUsuariosCHAMADA5D: TStringField;
    Q_ACU: TwwQuery;
    CHAMADA1Q: TMenuItem;
    SqlUsuariosCHAMADA1Q: TStringField;
    CHAMADA3G1: TMenuItem;
    CHAMADA3G2: TMenuItem;
    SqlUsuariosCHAMADA3G1: TStringField;
    SqlUsuariosCHAMADA3G2: TStringField;
    CHAMADA3G3: TMenuItem;
    SqlUsuariosCHAMADA3G3: TStringField;
    CHAMADA5E: TMenuItem;
    SqlUsuariosCHAMADA5E: TStringField;
    CHAMADA5F: TMenuItem;
    SqlUsuariosCHAMADA5F: TStringField;
    SqlUsuariosCHAMADA5G: TStringField;
    SqlUsuariosCHAMADA5H: TStringField;
    CHAMADA5G: TMenuItem;
    CHAMADA5H: TMenuItem;
    SqlUsuariosCHAMADA5I: TStringField;
    CHAMADA5I: TMenuItem;
    CHAMADA5J: TMenuItem;
    CHAMADA5K: TMenuItem;
    SqlUsuariosCHAMADA5J: TStringField;
    SqlUsuariosCHAMADA5K: TStringField;
    SALDONF: TMenuItem;
    SqlUsuariosSALDONF: TStringField;
    CHAMADA4C: TMenuItem;
    SqlUsuariosCHAMADA4C: TStringField;
    CHAMADA4D: TMenuItem;
    SqlUsuariosCHAMADA4D: TStringField;
    CHAMADA4E: TMenuItem;
    SqlUsuariosCHAMADA4E: TStringField;
    CHAMADA4F: TMenuItem;
    SqlUsuariosCHAMADA4F: TStringField;
    CHAMADA4G: TMenuItem;
    SqlUsuariosCHAMADA4G: TStringField;
    CHAMADA3K: TMenuItem;
    SqlUsuariosCHAMADA3K: TStringField;
    CHAMADA6K: TMenuItem;
    SqlUsuariosCHAMADA6K: TStringField;
    ExcluirReentrega1: TMenuItem;
    SqlUsuariosExcluirReentrega1: TStringField;
    GeraoEDIDucco1: TMenuItem;
    SqlUsuariosGeraoEDIDucco1: TStringField;
    LivroFiscal1: TMenuItem;
    SqlUsuariosLivroFiscal1: TStringField;
    LivroArmazem: TMenuItem;
    SqlUsuariosLivroArmazem: TStringField;
    lbVersao: TLabel;
    Q_AUX: TwwQuery;
    EXPNF: TMenuItem;
    SqlUsuariosEXPNF: TStringField;
    REL_TRANSPORTE: TMenuItem;
    SqlUsuariosREL_TRANSPORTE: TStringField;
    SqlUsuariosREL_KARDEX: TStringField;
    Rel_kardex: TMenuItem;
    EDI_OCOREN: TMenuItem;
    TB_OCOREN: TMenuItem;
    SqlUsuariosEDI_OCOREN: TStringField;
    SqlUsuariosTB_OCOREN: TStringField;
    ADOConnection: TADOConnection;
    SqlUsuariosREL_MANIFESTO: TStringField;
    REL_MANIFESTO: TMenuItem;
    SqlUsuariosALTERA_MANIFESTO: TStringField;
    lbOs_id: TLabel;
    NF_COLETA: TMenuItem;
    SqlUsuariosNF_COLETA: TStringField;
    mnuFrete: TMenuItem;
    PgtoFrete: TMenuItem;
    DescontosFrete: TMenuItem;
    SqlUsuariosmnuFrete: TStringField;
    SqlUsuariosPgtoFrete: TStringField;
    SqlUsuariosDescontosFrete: TStringField;
    ConciliaodeFrete: TMenuItem;
    SqlUsuariosConciliaodeFrete: TStringField;
    PRE_CARGA: TMenuItem;
    SqlUsuariosPRE_CARGA: TStringField;
    chkPreCarga: TCheckBox;
    Button1: TButton;
    MANIFESTO_RATEIA: TMenuItem;
    SqlUsuariosMANIFESTO_RATEIA: TStringField;
    SqlUsuariosFATURA_GENERICA: TStringField;
    FATURA_GENERICA: TMenuItem;
    CTRC_GENERICO: TMenuItem;
    SqlUsuariosCTRC_GENERICO: TStringField;
    REL_OTIMIZA_CARGA: TMenuItem;
    SqlUsuariosREL_OTIMIZA_CARGA: TStringField;
    SqlUsuariosRemanejaSN: TStringField;
    SqlUsuariosTRANSACAODIARIA: TStringField;
    TRANSACAODIARIA: TMenuItem;
    MANIFESTO_GERAL: TMenuItem;
    SqlUsuariosMANIFESTO_GERAL: TStringField;
    ADOQuery1: TADOQuery;
    wwQuery1: TwwQuery;
    wwQuery1ACHEI: TIntegerField;
    ADOQuery1ACHEI: TIntegerField;
    LIBERA_POSICAO: TMenuItem;
    SqlUsuariosLIBERA_POSICAO: TStringField;
    SqlUsuariosALTERA_NF: TStringField;
    ALTERA_NF: TMenuItem;
    Edit1: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Admin: TMenuItem;
    SqlUsuariosAdmin: TStringField;
    qrExcel: TADOQuery;
    TRANSF_CODIGO: TMenuItem;
    SqlUsuariosTRANSF_CODIGO: TStringField;
    RASTREABILIDADE: TMenuItem;
    SqlUsuariosRASTREABILIDADE: TStringField;
    SqlUsuariosEXPORT_MANIFESTO: TStringField;
    EXPORT_MANIFESTO: TMenuItem;
    SqlUsuariosEstoqueInovatti: TStringField;
    EstoqueInovatti: TMenuItem;
    SqlUsuariosRELTRANSPORTE2: TStringField;
    RELTRANSPORTE2: TMenuItem;
    ClientesNBFRel: TMenuItem;
    ClientesFinaisRel: TMenuItem;
    SqlUsuariosClientesNBFRel: TStringField;
    SqlUsuariosClientesFinaisRel: TStringField;
    SqlUsuariosRELFRETECARGIL: TStringField;
    RELFRETECARGIL: TMenuItem;
    SqlUsuariosConfirmaCTRC: TStringField;
    ConfirmaCTRC: TMenuItem;
    SqlUsuariosNotasEntradaxRemessa: TStringField;
    NotasEntradaxRemessa: TMenuItem;
    NFS_Conhecimento: TMenuItem;
    SqlUsuariosNFS_Conhecimento: TStringField;
    CorrigeCTRComplementar: TMenuItem;
    SqlUsuariosCorrigeCTRComplementar: TStringField;
    FechamentodeFrete: TMenuItem;
    SqlUsuariosFechamentodeFrete: TStringField;
    tpProdColeta: TMenuItem;
    SqlUsuariostpProdColeta: TStringField;
    SqlUsuariosAlteraClientes: TStringField;
    eDocs: TMenuItem;
    SqlUsuarioseDocs: TStringField;
    ContaCorrente: TMenuItem;
    SqlUsuariosContaCorrente: TStringField;
    Permanencia: TMenuItem;
    SqlUsuariosPermanencia: TStringField;
    LiberaOD: TMenuItem;
    SqlUsuariosLiberaOD: TStringField;
    SqlUsuariosEstoqueNF: TStringField;
    EstoqueNF: TMenuItem;
    SqlUsuariosNFSEConfig: TStringField;
    NFSEConfig: TMenuItem;
    EDICafe: TMenuItem;
    SqlUsuariosEDICafe: TStringField;
    SqlUsuariosEDIConembDIAGIO: TStringField;
    EDIConembDIAGIO: TMenuItem;
    ContratoFrete: TMenuItem;
    SqlUsuariosContratoFrete: TStringField;
    RelRomaneioEntradaEstoque: TMenuItem;
    SqlUsuariosRelRomaneioEntradaEstoque: TStringField;
    JvOutlookBar1: TJvOutlookBar;
    Image1: TImage;
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure CHAMADA1AClick(Sender: TObject);
    procedure CHAMADA1EClick(Sender: TObject);
    procedure CHAMADA1GClick(Sender: TObject);
    procedure CHAMADA1CClick(Sender: TObject);
    procedure CHAMADA1LClick(Sender: TObject);
    procedure CHAMADA1KClick(Sender: TObject);
    procedure CHAMADA1FClick(Sender: TObject);
    procedure CHAMADA1HClick(Sender: TObject);
    procedure CHAMADA1JClick(Sender: TObject);
    procedure CHAMADA1IClick(Sender: TObject);
    procedure CHAMADA1MClick(Sender: TObject);
    procedure CHAMADA2AClick(Sender: TObject);
    procedure CHAMADA2CClick(Sender: TObject);
    procedure CHAMADA2DClick(Sender: TObject);
    procedure CHAMADA2EClick(Sender: TObject);
    procedure CHAMADA1NClick(Sender: TObject);
    procedure CHAMADA3AClick(Sender: TObject);
    procedure CHAMADA1OClick(Sender: TObject);
    procedure CHAMADA1PClick(Sender: TObject);
    procedure CHAMADA1BClick(Sender: TObject);
    procedure CHAMADA3BClick(Sender: TObject);
    procedure CHAMADA3CClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CHAMADA1DClick(Sender: TObject);
    procedure CHAMADA3DClick(Sender: TObject);
    procedure CHAMADA2F1Click(Sender: TObject);
    procedure CHAMADA3F1Click(Sender: TObject);
    procedure CHAMADA2F2Click(Sender: TObject);
    procedure CHAMADA2BClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CHAMADA3EClick(Sender: TObject);
    procedure CHAMADA4AClick(Sender: TObject);
    procedure CHAMADA2F3Click(Sender: TObject);
    procedure CHAMADA4BClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CHAMADA2F4Click(Sender: TObject);
    procedure CHAMADA5AClick(Sender: TObject);
    procedure CHAMADA5BClick(Sender: TObject);
    procedure CHAMADA3HClick(Sender: TObject);
    procedure CHAMADA3IClick(Sender: TObject);
    procedure CHAMADA5CClick(Sender: TObject);
    procedure CHAMADA3JClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure CHAMADA5DClick(Sender: TObject);
    procedure CHAMADA1QClick(Sender: TObject);
    procedure CHAMADA3G1Click(Sender: TObject);
    procedure CHAMADA3G2Click(Sender: TObject);
    procedure CHAMADA3G3Click(Sender: TObject);
    procedure CHAMADA5EClick(Sender: TObject);
    procedure CHAMADA5FClick(Sender: TObject);
    procedure CHAMADA5GClick(Sender: TObject);
    procedure CHAMADA5HClick(Sender: TObject);
    procedure CHAMADA5IClick(Sender: TObject);
    procedure CHAMADA5JClick(Sender: TObject);
    procedure CHAMADA5KClick(Sender: TObject);
    procedure SALDONFClick(Sender: TObject);
    procedure CHAMADA4CClick(Sender: TObject);
    procedure CHAMADA4DClick(Sender: TObject);
    procedure CHAMADA4EClick(Sender: TObject);
    procedure CHAMADA4FClick(Sender: TObject);
    procedure CHAMADA4GClick(Sender: TObject);
    procedure CHAMADA3KClick(Sender: TObject);
    procedure CHAMADA6KClick(Sender: TObject);
    procedure ExcluirReentrega1Click(Sender: TObject);
    procedure GeraoEDIDucco1Click(Sender: TObject);
    procedure LivroFiscal1Click(Sender: TObject);
    procedure LivroArmazemClick(Sender: TObject);
    procedure EXPNFClick(Sender: TObject);
    procedure REL_TRANSPORTEClick(Sender: TObject);
    procedure Rel_kardexClick(Sender: TObject);
    procedure EDI_OCORENClick(Sender: TObject);
    procedure TB_OCORENClick(Sender: TObject);
    procedure ADOConnectionBeforeConnect(Sender: TObject);
    procedure REL_MANIFESTOClick(Sender: TObject);
    procedure NF_COLETAClick(Sender: TObject);
    procedure PgtoFreteClick(Sender: TObject);
    procedure DescontosFreteClick(Sender: TObject);
    procedure ConciliaodeFreteClick(Sender: TObject);
    procedure PRE_CARGAClick(Sender: TObject);
    procedure MANIFESTO_RATEIAClick(Sender: TObject);
    procedure FATURA_GENERICAClick(Sender: TObject);
    procedure CTRC_GENERICOClick(Sender: TObject);
    procedure REL_OTIMIZA_CARGAClick(Sender: TObject);
    procedure TRANSACAODIARIAClick(Sender: TObject);
    procedure MANIFESTO_GERALClick(Sender: TObject);
    procedure LIBERA_POSICAOClick(Sender: TObject);
    procedure ALTERA_NFClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AdminClick(Sender: TObject);
    procedure TRANSF_CODIGOClick(Sender: TObject);
    procedure RASTREABILIDADEClick(Sender: TObject);
    procedure EXPORT_MANIFESTOClick(Sender: TObject);
    procedure EstoqueInovattiClick(Sender: TObject);
    procedure RELTRANSPORTE2Click(Sender: TObject);
    procedure ClientesNBFRelClick(Sender: TObject);
    procedure ClientesFinaisRelClick(Sender: TObject);
    procedure RELFRETECARGILClick(Sender: TObject);
    procedure ConfirmaCTRCClick(Sender: TObject);
    procedure NotasEntradaxRemessaClick(Sender: TObject);
    procedure NFS_ConhecimentoClick(Sender: TObject);
    procedure CorrigeCTRComplementarClick(Sender: TObject);
    procedure FechamentodeFreteClick(Sender: TObject);
    procedure tpProdColetaClick(Sender: TObject);
    procedure eDocsClick(Sender: TObject);
    procedure ContaCorrenteClick(Sender: TObject);
    procedure PermanenciaClick(Sender: TObject);
    procedure LiberaODClick(Sender: TObject);
    procedure EstoqueNFClick(Sender: TObject);
    procedure NFSEConfigClick(Sender: TObject);
    procedure EDICafeClick(Sender: TObject);
    procedure EDIConembDIAGIOClick(Sender: TObject);
    procedure ContratoFreteClick(Sender: TObject);
    procedure RelRomaneioEntradaEstoqueClick(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons1Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons3Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons4Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons5Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons6Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons7Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons8Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons9Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons10Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons11Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons12Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons13Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons14Click(Sender: TObject);
  private
    procedure Proc_HabilitaMenu(p_MENU: TMainMenu);
    { Private declarations }

   public
    { Public declarations }
  end;

var
  FMenu: TFMenu;
  EXISTE : string ;
  MANIFESTO : string ;
  REME : string ;
  NumeroPedido : Integer ;
  TIPOEMAIL : STRING ;
  NOVO_MANIFESTO : Integer;
  
implementation
uses Usenha,URegiao, UArea, UTpDocumento,UTpVeiculo, UUF, UUnidCob, UUnidVenda,
     UTpOS,   UTpServico, UServico, UTpContato, UCliente, UClienteFinal ,UContrato,
     UTransp, UContaGER ,  UOS, UPARAMETRO, UCodFAT, UTexPadrao, UMunicipio ,UFGeraManifesto,
     USeleManifesto, UFConsEstoque, UFRelCOntrato , UFRelManifesto,
     URELManifesto, UFRelProdutos, URomRemaneja, URelETIQ, UFRelFornecedores,
     UUsuarios, UFRelMotoristaT, UFaturamento, UFConsultaNF, UFConsultaOS,UNFRetornoSimb,
     UInventario, UKardex , UNFArmazem, UFConsMANIFESTO ,UCond, UFatura,
  UNFServico, UFConsultaProduto, UFHistNF ,UFConsultaPosicao,UFConsultaTAG, UFConsultaPagFrete,
  UFConsultaTonelagem, UFConsultaVeiculo, USaldo_NF, UGeraFiscal,
  UGeraFiscal2, UImprConhe, UGeraFiscal3, UImprNF, UGeraPamcary, UNFGenerica,
  UFConsultaCTRC, UExcluiReentrega, UGeraEDI, ULivroFiscal, ULivroArmazem,
  UfrmExportaNFCafe, U_Funcoes, URel_Transporte, UfrmKardexCliente,
  UfrmEDIOcoren, UOcorrencias, UREL_MANIFESTO_FILT, UCons_nfcoletadas,
  Splash, UfrmPgtoFrete, UfrmDespesasFrete, UfrmConciliacaoFrete,
  UfrmPreCarga, UfrmCTRCGererico, UfrmRateiaManifesto, UfrmFaturaGenerica,
  UfrmRelOtimizaCargas, frmTransacaoDiaria, UFManifesto_Geral,
  UfrmLiberaPosicao, ufrmAlteraNota, UfrmAdministrar, UfrmTransfCodigo,
  UfrmRastreabilidade, UfrmExportaManifesto, UfrmInvetarioCargil,
  UfrmRelTransporte2, frmPesqNfServico, UfrmRelClienteNBF,
  UfrmRelClienteFinal, UfrmRelFreteCargil, ufrmConfirmaConhecimento,
  UfrmExportaPAMCARD, ufrmLeituraRetornoPamcard, ufrmNotasEntradaxRemessa,
  ufrmRelInventarioNBFSaoBernardo, ufrmRetornaInsumo,
  ufrmNFS_ConhecimentoBusca, ufrmCorrigeConhecimentoComplementar,
  ufrmFechamentoFrete, ufrmTipoProdColeta, ufrmEdocs, ufrmContaCorrente,
  ufrmControlePermanencia, ufrmLiberaOS, ufrmEstoqueNF,
  ufrmCte_NFSE_Configuracao, UGeraEDICafe3Coracoes, ufrmEDIDiageo,
  UfrmContratoFretePesq, UfrmRelRomaneioEntradaEstoque ;


{$R *.DFM}

procedure TFMenu.SAIRClick(Sender: TObject);
begin

   Application.Terminate;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
    //Var i : Integer;
begin
    If MessageDlg('Confirma a Finalização do Sistema ?',MtConfirmation,[MbYes,
        MbNo],0)=MrYes Then
       Begin
             Try
                Begin
                      ///Q_USUA2.close ;
                      FSenha.Dtb_BaseDados.Close;
                      FSenha.Session1.Close;
                      ADOConnection.Close;
                       FMENU.SQLUsuarios.close ;
                       Action := cafree ;
                       FSplash.Close;
                       FSenha.Close;
                       Application.Terminate;

                End
                Except
                   Begin
                        MessageDlg('Não foi possivel Fechar o Aplicativo',MtError,[mbok],0);
                        Action := Canone;
                   End;
                End;
        End

    Else abort ;

     {l}                    
end ;

procedure TFMenu.Timer1Timer(Sender: TObject);
begin
           StatusBar1.Panels[0].Text :=
     //FormatDateTime('dd/mm/yyyy',Date);
     FormatDateTime('DDDD, D "de" MMMM "de" yyyy',date)    ;
//------------------------------------------------------------------------------
     StatusBar1.Panels[1].Text :=
     FormatDateTime('hh:mm:ss',Time);

end;

procedure TFMenu.CHAMADA1AClick(Sender: TObject);
begin
     //Image1.visible := false;
     Application.Createform(TFRegiao, FRegiao);
     FRegiao.Position := poDesktopCenter;
     FRegiao.ShowModal;
     FRegiao.Release;
     //Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1EClick(Sender: TObject);
begin
     //Image1.visible := false;
     Application.Createform(TFAREA, FAREA);
     FArea.Position := poDesktopCenter;
     FAREA.ShowModal;
     FAREA.Release;
     //Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1GClick(Sender: TObject);
begin
    //Image1.visible := false;
     Application.Createform(TFTpDocumento, FTpDocumento);
     FTpDocumento.Position := poDesktopCenter;
     FTpDocumento.ShowModal;
     FTpDocumento.Release;
     //Image1.visible := true       ;

end;

procedure TFMenu.CHAMADA1CClick(Sender: TObject);
begin
     //Image1.visible := false;
     Application.Createform(TFTpVeiculo, FTpVeiculo);
     FTpVeiculo.Position := poDesktopCenter;
     FTpVeiculo.ShowModal;
     FTpVeiculo.Release;
    // Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1LClick(Sender: TObject);
begin
    // Image1.visible := false;
     Application.Createform(TFUF, FUF);
     fuf.Position := poDesktopCenter;
     FUF.ShowModal;
     FUF.Release;
    // Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1KClick(Sender: TObject);
begin
     //Image1.visible := false;
     Application.Createform(TFUnidCob, FUnidCob);
     FUnidCob.Position := poDesktopCenter;
     FUnidCob.ShowModal;
     FUnidCob.Release;
     //Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1FClick(Sender: TObject);
begin
     //Image1.visible := false;
     Application.Createform(TFUnidVENDA, FUnidVENDA);
     FUnidVenda.Position := poDesktopCenter;
     FUnidVENDA.ShowModal;
     FUnidVENDA.Release;
    // Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1HClick(Sender: TObject);
begin
     // Image1.visible := false;
     Application.Createform(TFTpOS, FTpOS);
     FTpOS.Position := poDesktopCenter;
     FTpOS.ShowModal;
     FTpOS.Release;
     //Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1JClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFTpServico, FTpServico);
     FTpServico.Position := poDesktopCenter;
     FTpServico.ShowModal;
     FTpServico.Release;
     Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1IClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFServico, FServico);
     FServico.Position := poDesktopCenter;
     FServico.ShowModal;
     FServico.Release;
     Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA1MClick(Sender: TObject);
begin

     Image1.visible := false;
     Application.Createform(TFTpContato, FTpContato);
     FTpContato.Position := poDesktopCenter;
     FTpContato.ShowModal;
     FTpContato.Release;
     Image1.visible := true    ; {}             
end;

procedure TFMenu.CHAMADA2AClick(Sender: TObject);
begin
     Image1.visible := false;
     REME := '' ;
     Application.Createform(TFCLIENTE, FCLIENTE);
     FCliente.Position := poDesktopCenter;
     FCLIENTE.ShowModal;
     FCLIENTE.Release;
     Image1.visible := true ;
end;

procedure TFMenu.CHAMADA2CClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFCLIENTEfinal, FCLIENTEfinal);
    FClienteFINAL.Position := poDesktopCenter;
    FCLIENTEfinal.ShowModal;
    FCLIENTEfinal.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA2DClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFContrato, FContrato);
    FContrato.Position := poDesktopCenter;
    FContrato.ShowModal;     
    FContrato.Release;                   
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA2EClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFTRANSP, FTRANSP);
    FTransp.Position := poDesktopCenter;
    FTRANSP.ShowModal;
    FTRANSP.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA1NClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFContaGER, FContaGER);
    FContaGER.Position := poDesktopCenter;
    FContaGER.ShowModal;
    FContaGER.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA3AClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFOS, FOS);
    FOS.Position := poDesktopCenter;
    FOS.ShowModal;
    FOS.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA1OClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFCodFAT, FCodFAT);
    FCodFAT.Position := poDesktopCenter;
    FCodFAT.ShowModal;
    FCodFAT.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA1PClick(Sender: TObject);
begin
    Image1.visible := false  ;
    Application.Createform(TFTexPadrao, FTexPadrao);
    FTexPadrao.Position := poDesktopCenter;
    FTexPadrao.ShowModal     ;
    FTexPadrao.Release       ;
    Image1.visible := true   ;
end;

procedure TFMenu.CHAMADA1BClick(Sender: TObject);
begin
    Image1.visible := false   ;
    Application.Createform(TFMunicipio, FMunicipio);
    FMunicipio.Position := poDesktopCenter;
    FMunicipio.ShowModal      ;
    FMunicipio.Release        ;
    Image1.visible := true    ;
end;

procedure TFMenu.CHAMADA3BClick(Sender: TObject);
begin

    Image1.visible := false   ;
    Application.Createform(TFFGeraManifesto, FFGeraManifesto);
    FFGeraManifesto.Position := poDesktopCenter;
    FFGeraManifesto.ShowModal ;
    FFGeraManifesto.Release   ;
    Image1.visible := true    ;

end;

procedure TFMenu.CHAMADA3CClick(Sender: TObject);
begin

    Image1.visible := false;
    {Application.Createform(TFManifesto, FManifesto);
    FManifesto.ShowModal;
    FManifesto.Release  ;}
    Application.Createform(TFSeleManifesto, FSeleManifesto);
    FSeleManifesto.Position := poDesktopCenter;
    FSeleManifesto.ShowModal;
    FSeleManifesto.Release;
    Image1.visible := true;

end;

procedure TFMenu.BitBtn1Click(Sender: TObject);
{var
  ARQTXT : textfile ;
  StrTexto : string ;
  Observacoes : string ;
  GRUPO : string ;
  Const  BRANCOS = '                                        ' ;    }
begin

     frmExportaPAMCARD := TfrmExportaPAMCARD.Create(Self);
     frmExportaPAMCARD.ShowModal;
     { T_EMPR.Close;
      T_EMPR.wwfilter.Clear;
      T_EMPR.filterActivate;
      T_EMPR.wwfilter.add(' COD_EMP =' + inttostr(12) ) ;
      T_EMPR.open;      }



     { If SaveDialog1.execute then begin
          assignfile(ARQTXT,SaveDialog1.filename) ;
          rewrite(ARQTXT) ;  }


          {T_FUNC.Open;
          T_FUNC.first ;
          while not (T_FUNC.Eof) and (T_FUNCNUMEMPR.asstring = T_EMPRCOD_EMP.asstring) do begin
              StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) ;


              T_ACUM.open ;
              T_FUNCOES.open ;
              T_GABA.open ;

              T_ACUM.first ;
              while not (T_ACUM.Eof) and (T_ACUMNUMEMPRESA.asstring = T_EMPRCOD_EMP.asstring)and
                                         (T_ACUMNUMQUES.asstring = T_FUNCNUMQUEST.asstring)  do begin

                   If StrTexto = '' then begin
                       StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                       StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   end  Else StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));

                 {Observacoes    := Funcoes.MUDALETR(Q_ONFIONF_DESC.AsString);

                 while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                      Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                 end;  }

                   {Observacoes    := T_GABADESCRITIVO.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := StrTexto + 'HABILIDADE           '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes    := '' ;

                   Observacoes    := T_GABAATITUDE.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                   StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   StrTexto := StrTexto + 'ATITUDE              '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes    := '' ;

                   Observacoes    := T_GABAGESTAO.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                   StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   StrTexto := StrTexto + 'GESTAO               '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes    := '' ;

                   Observacoes    := T_GABAGAPS.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                   StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   StrTexto := StrTexto + 'GAPS                 '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes := '' ;


                   Observacoes    := T_GABAACOESDES.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                   StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   StrTexto := StrTexto + 'ACOESDESENVOLVIMENTO '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes := '' ;

                   Observacoes    := T_GABAGANHA.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                   StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   StrTexto := StrTexto + 'GANHAEFICACIA        '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes := '' ;


                   Observacoes    := T_GABAPERDE.asstring;
                   while Pos(chr(13)+chr(10),Observacoes) > 0 do begin  // enter
                        Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                   end;
                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring));
                   StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                   StrTexto := StrTexto + 'PERDEEFICACIA        '  +  Observacoes ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;
                   Observacoes := '' ;


                   {StrTexto := StrTexto + 'HABILIDADE           '  +  T_GABADESCRITIVO.asstring;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;

                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring)) ;
                   StrTexto := StrTexto + 'ATITUDE              '  +  T_GABAATITUDE.asstring ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;

                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring)) ;
                   StrTexto := StrTexto + 'GESTAO               '  +  T_GABAGESTAO.asstring ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;   ///***9

                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring)) ;
                   StrTexto := StrTexto + 'GAPS                 '  +  T_GABAGAPS.asstring ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;

                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring)) ;
                   StrTexto := StrTexto + 'ACOESDESENVOLVIMENTO '  +  T_GABAACOESDES.asstring ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;

                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring)) ;
                   StrTexto := StrTexto + 'GANHAEFICACIA        '  +  T_GABAGANHA.asstring ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;

                   StrTexto := '@' + T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring)) ;
                   StrTexto := StrTexto + 'PERDEEFICACIA        '  +  T_GABAPERDE.asstring ;
                   writeln(ArqTXT,StrTexto) ;
                   StrTexto := '' ;  }


                   ///writeln(ArqTXT,StrTexto) ;
                   ///StrTexto := '' ;
                   {T_ACUM.next ;
              end ;}


             {T_FUNC.next ;
          end ; }

          {T_FUNCOES.OPEN ;
          T_FUNCOES.first ;
          while not T_FUNCOES.eof do begin
              STRTEXTO := T_FuncoesLETRAFUNC.asstring  +
                     T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30-length(T_FuncoesDESCFUNCAO.asstring)) +
                     T_FuncoesINFERIOR.asstring  +
                     T_FuncoesSUPERIOR.asstring  ;

              writeln(AGF,StrTexto) ;

             T_FUNCOES.next ;
          end;
          closefile(AGF);  }

       {   T_FUNCOES.OPEN ;
          T_GABA.open ;
          T_FUNCOES.first ;
          while not T_FUNCOES.eof do begin

                while not (T_GABA.eof) and
                          (T_GABALETFUNC.asstring = T_FUNCOESLETRAFUNC.asstring) do begin

                    If StrTexto = '' then
                       StrTexto := T_GABALETFUNC.asstring ;


                    Observacoes    := T_GABADESCRITIVO.asstring;
                    while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;

                    StrTexto := StrTexto + 'HABILIDADE           '  + T_GABANOTA.asstring + Observacoes  ;
                    ////StrTexto := StrTexto  + T_FuncoesDESCFUNCAO.asstring + copy(BRANCOS,1,30 -length(T_FuncoesDESCFUNCAO.asstring));
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;

                    Observacoes    := T_GABAATITUDE.asstring;
                    while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;

                    StrTexto := T_GABALETFUNC.asstring ;
                    StrTexto := StrTexto + 'ATITUDE              '  + T_GABANOTA.asstring +  Observacoes + CHR(09) ;
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;

                    Observacoes    := T_GABAGESTAO.asstring;
                    while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;

                    StrTexto := T_GABALETFUNC.asstring ;
                    StrTexto := StrTexto + 'GESTAO               '  + T_GABANOTA.asstring +  Observacoes + CHR(09) ;
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;

                    Observacoes    := T_GABAGAPS.asstring;
                    while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;
                    StrTexto := T_GABALETFUNC.asstring ;
                    StrTexto := StrTexto + 'GAPS                 '  + T_GABANOTA.asstring +  Observacoes + CHR(09) ;
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;

                    Observacoes    := T_GABAACOESDES.asstring;
                    while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;

                    StrTexto := T_GABALETFUNC.asstring ;
                    StrTexto := StrTexto + 'ACOESDESENVOLVIMENTO '  + T_GABANOTA.asstring +  Observacoes + CHR(09) ;
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;

                    Observacoes    := T_GABAGANHA.asstring;
                   while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;

                    StrTexto := T_GABALETFUNC.asstring ;
                    StrTexto := StrTexto + 'GANHAEFICACIA        '  + T_GABANOTA.asstring +  Observacoes + CHR(09) ;
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;

                    Observacoes    := T_GABAPERDE.asstring;
                    while Pos(chr(13)+ chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(13)+chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(10),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(10), Observacoes)] := ' ';
                    end;
                    while Pos(chr(09),Observacoes) > 0 do begin  // enter
                         Observacoes[Pos(chr(09), Observacoes)] := ' ';
                    end;
                    StrTexto := T_GABALETFUNC.asstring ;
                    StrTexto := StrTexto + 'PERDEEFICACIA        '  + T_GABANOTA.asstring +  Observacoes + CHR(09) ;
                    writeln(ArqTXT,StrTexto) ;
                    StrTexto := '' ;
                    Observacoes    := '' ;


                    T_GABA.next ;
                 end ;
             T_FUNCOES.next ;
          end;  }

    { T_FUNC.Open;
          T_ACUM.open ;
          T_FUNC.first ;
          while not (T_FUNC.Eof) and (T_FUNCNUMEMPR.asstring = T_EMPRCOD_EMP.asstring) do begin
              StrTexto := T_FUNCQUESTID.asstring + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring)) ;

              while not (T_ACUM.Eof) and (T_ACUMNUMEMPRESA.asstring = T_EMPRCOD_EMP.asstring)and
                                         (T_ACUMNUMQUES.asstring = T_FUNCNUMQUEST.asstring)  do begin

                     StrTexto := T_FUNCQUESTID.asstring
                       + copy(BRANCOS,1,14 -length(T_FUNCQUESTID.asstring))
                      + T_ACUMLETRAFUNC.asstring + T_ACUMNOTA.asstring ;

                     writeln(ARQTXT,StrTexto) ;


                  T_ACUM.next ;
              end ;

             T_FUNC.next ;
          end ;
          closefile(ARQTXT);


      end ;

      T_EMPR.close ;
      T_FUNC.close ;
      T_ACUM.close ;
      T_FUNCOES.close ;
      T_GABa.close ;     }



      {LEITURA}
     {OBSERVACOES := 'D:\WINVECA\BASE\CLAUDIA_CENAPE_Real.txt';
     AssignFile(ArqTxt,OBSERVACOES);
     Reset(ArqTxt);

     T_FUNC_LEITURA.open ;
     while not Eof(ArqTxt) do begin
           Readln(ArqTxt, Strtexto);

           IF  T_FUNC_LEITURA.findkey(['12',trim(copy(Strtexto,1,12))]) then begin
               T_FUNC_LEITURA.edit ;
               T_FUNC_LEITURAQUESTID.asstring := trim(copy(Strtexto,53,9)) ;
               T_FUNC_LEITURA.post;
           end ;
     end ;
     T_FUNC_LEITURA.close ;
     closefile(ArqTxt) ; }

     {13.500}
     {OBSERVACOES := 'D:\WINVECA\BaseVeca.txt';
     AssignFile(ArqTxt,OBSERVACOES);
     Reset(ArqTxt);

     T_PROV.open ;
     while not Eof(ArqTxt) do begin
           Readln(ArqTxt, Strtexto);

           T_PROV.append ;
           T_PROVCENAPE.asstring := TRIM(copy(Strtexto,1,10)) ;
           T_PROVUF.asstring := copy(Strtexto,11,2) ;
           T_PROVNOME.asstring := copy(Strtexto,13,40) ;
           T_PROVSEXO.asstring := copy(Strtexto,53,1) ;
           T_PROVCARGO.asstring := copy(Strtexto,54,30) ;
           T_PROVDATA.asstring := copy(Strtexto,84,10) ;
           T_PROVENDERECO.asstring := copy(Strtexto,94,30) ;
           T_PROV.post;
     end ;
     T_PROV.close ;
     closefile(ArqTxt); }

     {Gravar a REGIONAL}
     {OBSERVACOES := 'D:\WINVECA\locais_Veca.txt';
     AssignFile(ArqTxt,OBSERVACOES);
     Reset(ArqTxt);

     T_REG.open ;
     while not Eof(ArqTxt) do begin
           Readln(ArqTxt, Strtexto);

          T_REG.append ;
          T_REGREGIONAL.asstring := trim(copy(Strtexto,1,30)) ;
          T_REGLOCAL.asstring := trim(copy(Strtexto,31,30)) ;
          T_REG.post;

     end ;
     T_REG.close ;
     closefile(ArqTxt); }

     {T_REG.close ;
     T_REG.open ;

     T_func2.open ;
     T_func2.first ;
     while not (T_func2.eof) do begin
           If  T_REG.findkey([T_func2END.asstring]) then begin
               T_func2.edit ;
               T_func2REGIONAL.asstring := T_REGREGIONAL.asstring ;
               T_func2.post;
           end ;

          T_func2.next ;
     end ;
     T_func2.close ;    }
     ///Gravar a REGIONAL}

    //grupo
     {T_GRUPO.open ;
     T_AMOST.open ;
     T_AMOSCOM.open ;
     T_INDICADR.open ;
     T_FUNC4.open ; }

     {T_GRUPO.first ;
     while not T_GRUPO.eof do begin
           GRUPO := '';
           T_AMOST.append ;
           T_AMOSTAMOSTRA.asstring := T_GRUPOGrupo.asstring ;
           T_AMOSTempresa.asstring := T_GRUPOempresa.asstring ;
           T_AMOSTPessoa.asstring := T_GRUPOPessoa.asstring ;

           T_FUNC4.findkey([T_AMOSTPessoa.asstring]) ;
           T_AMOSTDescPessoa.asstring := T_FUNC4NOME.asstring ;

           GRUPO := copy(T_GRUPOGrupo.asstring,17,1) ;
           If GRUPO= 'E' then
               T_AMOSTPerfil.asinteger := 290 ;
           If GRUPO= 'J' then
               T_AMOSTPerfil.asinteger := 291 ;
           If GRUPO= 'P' then
               T_AMOSTPerfil.asinteger := 288 ;
           T_AMOST.post;

         T_GRUPO.next ;
     end ;  }


      {T_AMOST.Close;
      T_AMOST.wwfilter.Clear;
      T_AMOST.filterActivate;
      T_AMOST.wwfilter.add(' Amostra =' + '''' + 'Prop_DIR_REDE_1_E' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_1_P' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_1_J' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_2_E' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_2_P' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_2_J' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_3_E' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_3_P' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_3_J' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_4_E' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_4_P' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_4_J' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_5_E' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_5_P' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_5_J' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_6_E' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_6_P' + '''' ) ;
      T_AMOST.wwfilter.add(' or  Amostra =' + '''' + 'Prop_DIR_REDE_6_J' + '''' ) ;
      T_AMOST.open; }
    { GRUPO := '' ;
     T_AMOST.first ;
     while not (T_AMOST.eof) do begin
             GRUPO := copy(T_AMOSTAmostra.asstring,1,13) ;
         IF (GRUPO = 'Prop_DIR.REDE') then begin
              while not (T_INDICADR.eof) and
                        (T_INDICADRCOD_PERF.asstring = T_AMOSTPerfil.asstring)do begin

                       T_AMOSCOM.append ;
                       T_AMOSCOMAMOSTRA.asstring := T_AMOSTAmostra.asstring ;
                       T_AMOSCOMempresa.asstring := T_AMOSTempresa.asstring ;
                       T_AMOSCOMPERFIL.asstring := T_INDICADRCOD_PERF.asstring ;
                       T_AMOSCOMCOMPETENCIA.asstring := T_INDICADRCOD_seq.asstring ;
                       T_AMOSCOMDescCompetencia.asstring := T_INDICADRDES_IND.asstring ;
                       T_AMOSCOM.post;

                  T_INDICADR.Next ;
              end ;
         end ;
         T_AMOST.next ;
     end ;
     T_GRUPO.close ;
     T_AMOST.close ;
     T_AMOSCOM.close ;
     T_INDICADR.close ;
     T_FUNC4.close ;  }




end;

procedure TFMenu.CHAMADA1DClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFParametro, FParametro);
    FParametro.Position := poDesktopCenter;
    FParametro.ShowModal;
    FParametro.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA3DClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFFConsEstoque, FFConsEstoque);
    FFConsEstoque.Position := poDesktopCenter;
    FFConsEstoque.ShowModal;
    FFConsEstoque.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA2F1Click(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFFRelCOntrato, FFRelCOntrato);
    FFRelContrato.Position := poDesktopCenter;
    FFRelCOntrato.ShowModal;
    FFRelCOntrato.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA3F1Click(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFFRelManifesto, FFRelManifesto);
    FFRelManifesto.Position := poDesktopCenter;
    FFRelManifesto.ShowModal;
    FFRelManifesto.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA2F2Click(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFFRelPRODUTOS, FFRelPRODUTOS);
    FFRelProdutos.Position := poDesktopCenter;
    FFRelPRODUTOS.ShowModal;
    FFRelPRODUTOS.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA2BClick(Sender: TObject);
begin
     Image1.visible := false;
     REME := 'S' ;
     Application.Createform(TFCLIENTE, FCLIENTE);
     FCliente.Position := poDesktopCenter;
     FCLIENTE.ShowModal;
     FCLIENTE.Release;
     Image1.visible := true       ;
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
  REME := '' ;
  ADOConnection.Close;

  //Monta itens dos favoritos
  
end;

procedure TFMenu.CHAMADA3EClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFRomRemaneja,FRomRemaneja);
     FRomRemaneja.Position := poDesktopCenter;
     FRomRemaneja.ShowModal;
     FRomRemaneja.Release;
     Image1.visible := true;
end;

procedure TFMenu.CHAMADA4AClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFRelETIQ,FRelETIQ);
     FRelETIQ.Position := poDesktopCenter;
     FRelETIQ.ShowModal;
     FRelETIQ.Release;
     Image1.visible := true;
end;

procedure TFMenu.CHAMADA2F3Click(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFFRelFornecedores, FFRelFornecedores);
     FFRelFornecedores.Position := poDesktopCenter;
     FFRelFornecedores.ShowModal;
     FFRelFornecedores.Release;
     Image1.visible := true       ;
end;



procedure TFMenu.CHAMADA4BClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFUSUARIOS,FUSUARIOS);
     FUsuarios.Position := poDesktopCenter;
     FUSUARIOS.ShowModal;
     FUSUARIOS.Release;
     Image1.visible := true       ;
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
  //              if p_Menu.Items[a].Items[b].Items[c].Tag = 1 then begin
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
   ////SqlUsuarios.close ;
end;



procedure TFMenu.FormShow(Sender: TObject);
begin

  FMenu.Caption := FMenu.Caption + lbVersao.Caption;
  {FMenu.Top := 0;
  FMenu.Left := 0;
  FMenu.Height := Screen.Height - 30;
  FMenu.Width := Screen.Width;  }
  Proc_HabilitaMenu(MainMenu1);

end;

procedure TFMenu.CHAMADA2F4Click(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFRelMotoristaT, FRelMotoristaT);
    FRelMotoristaT.Position := poDesktopCenter;
    FRelMotoristaT.ShowModal;
    FRelMotoristaT.Release;
    Image1.visible := true;
end;

procedure TFMenu.CHAMADA5AClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFFConsultaNF, FFConsultaNF);
    FFConsultaNF.Position := poDesktopCenter;
    FFConsultaNF.ShowModal;
    FFConsultaNF.Release;
    Image1.visible := true;
end;

procedure TFMenu.CHAMADA5BClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFFConsultaOS, FFConsultaOS);
    FFConsultaOS.Position := poDesktopCenter;
    FFConsultaOS.ShowModal;
    FFConsultaOS.Release;
    Image1.visible := true;
end;

procedure TFMenu.CHAMADA3HClick(Sender: TObject);
begin
    Image1.visible := false;     
    Application.CreateForm(TFNFRetornoSimb, FNFRetornoSimb);
    FNFRetornoSimb.Position := poDesktopCenter;
    FNFRetornoSimb.ShowModal;
    FNFRetornoSimb.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA3IClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFInventario, FInventario);
    FInventario.ShowModal;
    FInventario.Release;
    Image1.visible := true;
end;
procedure TFMenu.CHAMADA5CClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFKardex, FKardex);
    FKardex.Position := poDesktopCenter;
    FKardex.ShowModal;
    FKardex.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA3JClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFNFArmazem, FNFArmazem);
    FNFArmazem.Position := poDesktopCenter;
    FNFArmazem.ShowModal;
    FNFArmazem.Release;
    Image1.visible := true ;
end;

procedure TFMenu.FormPaint(Sender: TObject);
Var
   Sistema, Banco : Double;
 Altura, Largura, X, Y : Integer;
begin


  // Image4.Top := Altura - 80 - Image4.Height;
  // Image4.Left := Largura - 30 - Image4.Width;
  Q_PAR.open ;
  Sistema := StrToFloat(lbVersao.Caption);
  if Q_PARVERSAO.asstring <> '' then
      Banco := StrToFloat(Q_PARVERSAO.asstring)
  else
      Banco := 0;

  if Sistema > Banco then
  begin
      Q_AUX.Params[0].AsString := FloatToStr(Sistema);
      Q_AUX.ExecSQL;
      Q_PAR.close;
      Q_PAR.Open;
  end;
  if Sistema < Banco then
  begin
      MessageDlg('A Versão desta máquina não é a mais recente, favor atualizar para a versão: '+lbVersao.Caption+'!',mtWarning,[mbok],0);
      Q_PAR.close ;
      FSenha.Dtb_BaseDados.Close;
      FSenha.Session1.Close;
      FMENU.SQLUsuarios.close ;
      Application.Terminate;
  end;

  {
  IF  Q_PARVERSAO.asstring <> FMenu.caption then begin

      MessageDlg('A Versão desta máquina não é a mais recente, favor atualizar!',mtWarning,[mbok],0);
      Q_PAR.close ;
      FSenha.Dtb_BaseDados.Close;
      FSenha.Session1.Close;
      FMENU.SQLUsuarios.close ;
      //Action := cafree ;
      Application.Terminate;

  end ;
      }

end;

procedure TFMenu.CHAMADA5DClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFFConsMANIFESTO, FFConsMANIFESTO);
    FFConsManifesto.Position := poDesktopCenter;
    FFConsMANIFESTO.ShowModal;
    FFConsMANIFESTO.Release;
    Image1.visible := true ;     {}
end;

procedure TFMenu.CHAMADA1QClick(Sender: TObject);
begin
    Image1.visible := false;
    Application.CreateForm(TFCond, FCond);
    FCond.Position := poDesktopCenter;
    FCond.ShowModal;
    FCond.Release;
    Image1.visible := true;
end;

procedure TFMenu.CHAMADA3G1Click(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFFaturamento, FFaturamento);
    FFaturamento.Position := poDesktopCenter;
    FFaturamento.ShowModal;
    FFaturamento.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA3G2Click(Sender: TObject);
begin
    Image1.visible := false;
    Application.Createform(TFFatura, FFatura);
    FFatura.Position := poDesktopCenter;
    FFatura.ShowModal;
    FFatura.Release;
    Image1.visible := true;
end;

procedure TFMenu.CHAMADA3G3Click(Sender: TObject);
begin
   {Image1.visible := false;
   application.createform(TFNFServico , FNFServico);
   FNFServico.Position := poDesktopCenter;
   FNFServico.SHOWMODAL ;
   FNFServico.RELEASE ;
   FNFServico.CLOSE ;
   Image1.visible := true   ;}

   fPesqNfServico := TfPesqNfServico.Create(Self);
   fPesqNfServico.ShowModal;



end;

procedure TFMenu.CHAMADA5EClick(Sender: TObject);
begin

  Image1.visible := false;
  application.createform(TFFConsultaProduto , FFConsultaProduto);
  FFConsultaProduto.Position := poDesktopCenter;
  FFConsultaProduto.SHOWMODAL ;
  FFConsultaProduto.RELEASE ;
  FFConsultaProduto.CLOSE ;
  Image1.visible := true ;



end;

procedure TFMenu.CHAMADA5FClick(Sender: TObject);
begin
 Image1.visible := false;
  application.createform(TFFHistNF , FFHistNF);
  FFHistNF.Position := poDesktopCenter;
  FFHistNF.SHOWMODAL ;
  FFHistNF.RELEASE ;
  FFHistNF.CLOSE ;
  Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA5GClick(Sender: TObject);
begin
  Image1.visible := false;
  application.createform(TFFConsultaPosicao , FFConsultaPosicao);
  FFConsultaPosicao.Position := poDesktopCenter;
  FFConsultaPosicao.SHOWMODAL ;
  FFConsultaPosicao.RELEASE ;
  FFConsultaPosicao.CLOSE ;
  Image1.visible := true       ;
end;


procedure TFMenu.CHAMADA5HClick(Sender: TObject);
begin
  Image1.visible := false;
  application.createform(TFFConsultaTAG , FFConsultaTAG);
  FFConsultaTAG.Position := poDesktopCenter;
  FFConsultaTAG.SHOWMODAL ;
  FFConsultaTAG.RELEASE ;
  FFConsultaTAG.CLOSE   ;
  Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA5IClick(Sender: TObject);
begin
  Image1.visible := false;
  Application.createform(TFFConsultaPagFrete , FFConsultaPagFrete);
  FFConsultaPagFrete.Position := poDesktopCenter;
  FFConsultaPagFrete.SHOWMODAL ;
  FFConsultaPagFrete.RELEASE ;
  FFConsultaPagFrete.CLOSE ;
  Image1.visible := true       ;
end;

procedure TFMenu.CHAMADA5JClick(Sender: TObject);
begin
  Image1.visible := false;
  Application.createform(TFFConsultaTonelagem , FFConsultaTonelagem);
  FFConsultaTonelagem.Position := poDesktopCenter;
  FFConsultaTonelagem.SHOWMODAL ;
  FFConsultaTonelagem.RELEASE ;
  FFConsultaTonelagem.CLOSE ;
   Image1.visible := true;
end;

procedure TFMenu.CHAMADA5KClick(Sender: TObject);
begin
  Image1.visible := false;
  Application.createform(TFFConsultaVEICULO, FFConsultaVEICULO);
  FFConsultaVeiculo.Position := poDesktopCenter;
  FFConsultaVEICULO.SHOWMODAL ;
  FFConsultaVEICULO.RELEASE ;

  FFConsultaVEICULO.CLOSE ;
  Image1.visible := true;
end;

procedure TFMenu.SALDONFClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFSaldo_NF,FSaldo_NF); 
     FSaldo_NF.Position := poDesktopCenter;
     FSaldo_NF.ShowModal;
     FSaldo_NF.Release;
     Image1.visible := true;
end;

procedure TFMenu.CHAMADA4CClick(Sender: TObject);
begin
     Image1.visible := false;
     Application.Createform(TFGeraFiscal,FGeraFiscal);
     FGeraFiscal.Position := poDesktopCenter;
     FGeraFiscal.ShowModal;
     FGeraFiscal.Release;
     Image1.visible := true;
end;

procedure TFMenu.CHAMADA4DClick(Sender: TObject);
begin
   Image1.visible := false;
   Application.CreateForm(TFGeraFiscal2, FGeraFiscal2);
   FGeraFiscal2.Position := poDesktopCenter;
   FGeraFiscal2.ShowModal;
   FGeraFiscal2.Release;
   Image1.visible := true;
end;

procedure TFMenu.CHAMADA4EClick(Sender: TObject);
begin
   {
   Image1.visible := false;
   Application.CreateForm(TFImprConhe, FImprConhe);
   FImprConhe.ShowModal;
   FImprConhe.Release;
   Image1.visible := true       ;
    }

   Image1.visible := false;
   Application.CreateForm(TFImprNF, FImprNF);
   FImprNF.Position := poDesktopCenter;
   FImprNF.ShowModal;
   FImprNF.Release;
   Image1.visible := true       ;

end;
procedure TFMenu.CHAMADA4FClick(Sender: TObject);
begin

   Image1.visible := false;
   Application.CreateForm(TFGeraFiscal3, FGeraFiscal3);
   FGeraFiscal3.Position := poDesktopCenter;
   FGeraFiscal3.ShowModal;
   FGeraFiscal3.Release;
   Image1.visible := true;

end;

procedure TFMenu.CHAMADA4GClick(Sender: TObject);
begin
   Application.CreateForm(TFGeraPamcary, FGeraPamcary);
   FGeraPamcary.Position := poDesktopCenter;
   FGeraPamcary.ShowModal;

   FGeraPamcary.Release;   {ggg}
end;

procedure TFMenu.CHAMADA3KClick(Sender: TObject);
begin
   Application.CreateForm(TFNFGenerica, FNFGenerica);
   FNFGenerica.Position := poDesktopCenter;
   FNFGenerica.ShowModal;
   FNFGenerica.Release;
end;

procedure TFMenu.CHAMADA6KClick(Sender: TObject);
begin
   Image1.visible := false;
   Application.CreateForm(TFFConsultaCTRC, FFConsultaCTRC);
   FFConsultaCTRC.Position := poDesktopCenter;
   FFConsultaCTRC.ShowModal;
   FFConsultaCTRC.Release;
   Image1.visible := TRUE;
end;

procedure TFMenu.ExcluirReentrega1Click(Sender: TObject);
begin
   Image1.visible := false;
   Application.CreateForm(TFExcluiReentrega, FExcluiReentrega);
   FExcluiReentrega.Position := poDesktopCenter;
   FExcluiReentrega.ShowModal;
   FExcluiReentrega.Release;
   Image1.visible := TRUE;
end;

procedure TFMenu.GeraoEDIDucco1Click(Sender: TObject);
begin
   Image1.visible := false;
   Application.CreateForm(TFGeraEDI, FGeraEDI);
   FGeraEDI.Position := poDesktopCenter;
   FGeraEDI .ShowModal;                         
   FGeraEDI.Release;
   Image1.visible := TRUE;  
end;

procedure TFMenu.LivroFiscal1Click(Sender: TObject);
begin
   Image1.visible := false;
   Application.CreateForm(TFLIVROFISCAL, FLIVROFISCAL);
   FLivroFiscal.Position := poDesktopCenter;
   FLIVROFISCAL .ShowModal;
   FLIVROFISCAL.Release;
   Image1.visible := TRUE;
end;


procedure TFMenu.LivroArmazemClick(Sender: TObject);
begin

     frmLivroArmazem := TfrmLivroArmazem.Create(self) ;
     frmLivroArmazem.ShowModal;

end;

procedure TFMenu.EXPNFClick(Sender: TObject);
begin
    frmExportaNFCafe := TfrmExportaNFCafe.Create(self);
    frmExportaNFCafe.ShowModal;
    frmExportaNFCafe.Release;       
    frmExportaNFCafe := nil;
end;

procedure TFMenu.REL_TRANSPORTEClick(Sender: TObject);
begin
    frmRel_Transporte := TfrmRel_Transporte.Create(Self);
    frmRel_Transporte.ShowModal;
end;

procedure TFMenu.Rel_kardexClick(Sender: TObject);
begin
     frmKardexCliente := TfrmKardexCliente.Create(Self);
     frmKardexCliente.ShowModal;
end;

procedure TFMenu.EDI_OCORENClick(Sender: TObject);
begin
    frmEDIOcoren := TfrmEDIOcoren.Create(Self);
    frmEDIOcoren.ShowModal;
end;

procedure TFMenu.TB_OCORENClick(Sender: TObject);
begin
    frmOcorrencias := TfrmOcorrencias.Create(self);
    frmOcorrencias.ShowModal;
end;

procedure TFMenu.ADOConnectionBeforeConnect(Sender: TObject);
var caminho : string;
begin

   caminho := ExtractFilePath(Application.ExeName);

   ADOConnection.close;
   if FSenha.RadioGroup1.ItemIndex = 0 then
      ADOConnection.ConnectionString := 'FILE NAME='+ caminho+'NBF.UDL'
   else  begin
      ADOConnection.ConnectionString := 'FILE NAME='+ caminho+'CERRADO.UDL';
      FMenu.Color := clBlue;
      Image1.AutoSize := False;
      Image1.Width := 0;
      Image1.Height := 0;
   end;
end;

procedure TFMenu.REL_MANIFESTOClick(Sender: TObject);
begin
    frmREL_MANIFESTO_FILT := TfrmREL_MANIFESTO_FILT.Create(Self);
    frmREL_MANIFESTO_FILT.ShowModal;
end;

procedure TFMenu.NF_COLETAClick(Sender: TObject);
begin
    frmNotasColeta := TfrmNotasColeta.Create(Self);
    frmNotasColeta.ShowModal;
end;

procedure TFMenu.PgtoFreteClick(Sender: TObject);
begin
  frmPgtoFrete := TfrmPgtoFrete.Create(Self);
  frmPgtoFrete.ShowModal;
end;

procedure TFMenu.DescontosFreteClick(Sender: TObject);
begin
   frmDespesasFrete := TfrmDespesasFrete.Create(Self);
   frmDespesasFrete.ShowModal;
end;

procedure TFMenu.ConciliaodeFreteClick(Sender: TObject);
begin
  frmConciliacaoFrete := TfrmConciliacaoFrete.Create(Self);
  frmConciliacaoFrete.ShowModal;
end;

procedure TFMenu.PRE_CARGAClick(Sender: TObject);
begin
  frmPreCarga := TfrmPreCarga.Create(Self);
  frmPreCarga.ShowModal;
end;

procedure TFMenu.MANIFESTO_RATEIAClick(Sender: TObject);
begin
  frmRateiaManifesto := TfrmRateiaManifesto.Create(Self);
  frmRateiaManifesto.ShowModal;
end;

procedure TFMenu.FATURA_GENERICAClick(Sender: TObject);
begin
  frmFaturaGenerica := TfrmFaturaGenerica.Create(Self);
  frmFaturaGenerica.Show;
end;

procedure TFMenu.CTRC_GENERICOClick(Sender: TObject);
begin
  frmCTRCGererico := TfrmCTRCGererico.Create(Self);
  frmCTRCGererico.ShowModal;
end;

procedure TFMenu.REL_OTIMIZA_CARGAClick(Sender: TObject);
begin
  frmRelOtimizaCargas := TfrmRelOtimizaCargas.Create(Self);
  frmRelOtimizaCargas.ShowModal;
end;

procedure TFMenu.TRANSACAODIARIAClick(Sender: TObject);
begin
   FTransacaoDiaria := TFTransacaoDiaria.Create(Self);
   FTransacaoDiaria.ShowModal;
end;

procedure TFMenu.MANIFESTO_GERALClick(Sender: TObject);
begin
    FManifesto_Geral := TFManifesto_Geral.Create(Self);
    FManifesto_Geral.ShowModal;
end;

procedure TFMenu.LIBERA_POSICAOClick(Sender: TObject);
begin
 frmLiberaPosicao := TfrmLiberaPosicao.Create(self);
 frmLiberaPosicao.ShowModal;
end;

procedure TFMenu.ALTERA_NFClick(Sender: TObject);
begin
  frmAlteraNota := TfrmAlteraNota.create(self);
  frmAlteraNota.ShowModal;
end;

procedure TFMenu.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Text := Funcoes.Crypt('C', Edit1.Text);
end;

procedure TFMenu.FormResize(Sender: TObject);
var Altura, Largura, X, Y : Integer;
begin
//        CENTRO(Self,False);

   //redimensionar o form com as medidas da tela, tirando 30 para ao menu iniciar
   //deu problema o menu maximizado com os idiotas q ocultam o menu iniciar
   //miguel

  // FMenu.Height := Screen.Height - 30;
   //FMenu.Width := Screen.Width;
  // FMenu.Top := 0;
  // FMenu.Left := 0;

   Altura := fmenu.Height;
   Largura := fmenu.Width;
   
   X := Altura div 2;
   Y := Largura div 2;
   Image1.Left := y - (Image1.Width div 2);
   Image1.Top := x - (Image1.Height div 2) - 60;

  // Image4.Top := Altura - 80 - Image4.Height;
  // Image4.Left := Largura - 30 - Image4.Width;

end;

procedure TFMenu.AdminClick(Sender: TObject);
begin
     frmAdministrativo := TfrmAdministrativo.Create(Self);
     frmAdministrativo.ShowModal;
end;

procedure TFMenu.TRANSF_CODIGOClick(Sender: TObject);
begin
  frmTransfCodigo := TfrmTransfCodigo.Create(Self);
  frmTransfCodigo.ShowModal;
end;

procedure TFMenu.RASTREABILIDADEClick(Sender: TObject);
begin
  frmRastreabilidade := TfrmRastreabilidade.Create(Self);
  frmRastreabilidade.ShowModal;
end;

procedure TFMenu.EXPORT_MANIFESTOClick(Sender: TObject);
begin
    frmExportaManifesto := TfrmExportaManifesto.Create(Self);
    frmExportaManifesto.ShowModal;
end;

procedure TFMenu.EstoqueInovattiClick(Sender: TObject);
begin
   frmInventarioCargil := TfrmInventarioCargil.Create(Self);
   frmInventarioCargil.ShowModal;
end;

procedure TFMenu.RELTRANSPORTE2Click(Sender: TObject);
begin
   frmRelTransporte2 := TfrmRelTransporte2.Create(Self);
  frmRelTransporte2.ShowModal;
end;

procedure TFMenu.ClientesNBFRelClick(Sender: TObject);
begin
     frmRelClienteNBF := TfrmRelClienteNBF.Create(Self);
     frmRelClienteNBF.ShowModal;
end;

procedure TFMenu.ClientesFinaisRelClick(Sender: TObject);
begin
  frmRelClienteFinal := TfrmRelClienteFinal.Create(Self);
  frmRelClienteFinal.ShowModal;
end;

procedure TFMenu.RELFRETECARGILClick(Sender: TObject);
begin
    frmRelFreteCargil := TfrmRelFreteCargil.Create(Self);
    frmRelFreteCargil.ShowModal;
end;

procedure TFMenu.ConfirmaCTRCClick(Sender: TObject);
begin
    frmConfirmaConhecimento := TfrmConfirmaConhecimento.Create(Self);
    frmConfirmaConhecimento.ShowModal;
end;

procedure TFMenu.NotasEntradaxRemessaClick(Sender: TObject);
begin
  frmNotasEntradaxRemessa := TfrmNotasEntradaxRemessa.Create(Self);
  frmNotasEntradaxRemessa.ShowModal;
end;

procedure TFMenu.NFS_ConhecimentoClick(Sender: TObject);
begin
   frmNFS_ConhecimentoBusca := TfrmNFS_ConhecimentoBusca.Create(Self);
   frmNFS_ConhecimentoBusca.ShowModal;
end;

procedure TFMenu.CorrigeCTRComplementarClick(Sender: TObject);
begin
   frmCorrigeConhecimentoComplementar := TfrmCorrigeConhecimentoComplementar.Create(Self);
   frmCorrigeConhecimentoComplementar.ShowModal;
end;

procedure TFMenu.FechamentodeFreteClick(Sender: TObject);
begin
     frmFechamentoFrete := TfrmFechamentoFrete.Create(Self);
     frmFechamentoFrete.ShowModal;
end;

procedure TFMenu.tpProdColetaClick(Sender: TObject);
begin
    frmTipoProdColeta := TfrmTipoProdColeta.Create(Self);
    frmTipoProdColeta.ShowModal;
end;

procedure TFMenu.eDocsClick(Sender: TObject);
begin
    frmEdocs := TfrmEdocs.Create(Self);
    frmEdocs.ShowModal;
end;

procedure TFMenu.ContaCorrenteClick(Sender: TObject);
begin
    frmContaCorrente := TfrmContaCorrente.Create(Self);
    frmContaCorrente.ShowModal;
end;

procedure TFMenu.PermanenciaClick(Sender: TObject);
begin
    frmControlePermanencia := TfrmControlePermanencia.Create(Self);
    frmControlePermanencia.ShowModal;
end;

procedure TFMenu.LiberaODClick(Sender: TObject);
begin
   frmLiberaOS := TfrmLiberaOS.Create(Self);
   frmLiberaOS.ShowModal;
end;

procedure TFMenu.EstoqueNFClick(Sender: TObject);
begin
  frmEstoqueNF := tfrmEstoqueNF.create(Self) ;
frmEstoqueNF.showmodal;
end;

procedure TFMenu.NFSEConfigClick(Sender: TObject);
begin
    frmNFSE_CteConfig := TfrmNFSE_CteConfig.Create(Self);
    frmNFSE_CteConfig.ShowModal;
end;

procedure TFMenu.EDICafeClick(Sender: TObject);
begin
  FGeraEDICafe := TFGeraEDICafe.Create(Self);
  FGeraEDICafe.ShowModal;
end;

procedure TFMenu.EDIConembDIAGIOClick(Sender: TObject);
begin
   frmEDIDiageo := TfrmEDIDiageo.Create(Self);
   frmEDIDiageo.ShowModal;
end;

procedure TFMenu.ContratoFreteClick(Sender: TObject);
begin
    frmContratoFretePesq := tfrmContratoFretePesq.create(Self);
    frmContratoFretePesq.ShowModal;
end;

procedure TFMenu.RelRomaneioEntradaEstoqueClick(Sender: TObject);
begin
    frmRelRomaneioEntradaEstoque := TfrmRelRomaneioEntradaEstoque.create(Self);
    frmRelRomaneioEntradaEstoque.showmodal;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons0Click(Sender: TObject);
begin
   if CHAMADA3A.Visible = False then Abort;
     Image1.visible := false;
    Application.Createform(TFOS, FOS);
    FOS.Position := poDesktopCenter;
    FOS.ShowModal;
    FOS.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons1Click(Sender: TObject);
begin
  if CHAMADA2E.Visible = False then Abort;

     Image1.visible := false;
    Application.Createform(TFTRANSP, FTRANSP);
    FTransp.Position := poDesktopCenter;
    FTRANSP.ShowModal;
    FTRANSP.Release;
    Image1.visible := true   ;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
begin
   if CHAMADA3B.Visible = False then Abort;

    Image1.visible := false   ;
    Application.Createform(TFFGeraManifesto, FFGeraManifesto);
    FFGeraManifesto.Position := poDesktopCenter;
    FFGeraManifesto.ShowModal ;
    FFGeraManifesto.Release   ;
    Image1.visible := true    ;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons3Click(Sender: TObject);
begin
 // manifesto CHAMADA3C
    if CHAMADA3C.Visible = False then Abort;
    Image1.visible := false;
    {Application.Createform(TFManifesto, FManifesto);
    FManifesto.ShowModal;
    FManifesto.Release  ;}
    Application.Createform(TFSeleManifesto, FSeleManifesto);
    FSeleManifesto.Position := poDesktopCenter;
    FSeleManifesto.ShowModal;
    FSeleManifesto.Release;
    Image1.visible := true;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons4Click(Sender: TObject);
begin

     if CHAMADA3E.Visible = False then Abort;
     Image1.visible := false;
     Application.Createform(TFRomRemaneja,FRomRemaneja);
     FRomRemaneja.Position := poDesktopCenter;
     FRomRemaneja.ShowModal;
     FRomRemaneja.Release;
     Image1.visible := true;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons5Click(Sender: TObject);
begin
 
if CHAMADA3J.Visible = False then Abort;
    Image1.visible := false;
    Application.CreateForm(TFNFArmazem, FNFArmazem);
    FNFArmazem.Position := poDesktopCenter;
    FNFArmazem.ShowModal;
    FNFArmazem.Release;
    Image1.visible := true ;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons6Click(Sender: TObject);
begin
 
if CHAMADA3K.Visible = False then Abort;
   Application.CreateForm(TFNFGenerica, FNFGenerica);
   FNFGenerica.Position := poDesktopCenter;
   FNFGenerica.ShowModal;
   FNFGenerica.Release;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons7Click(Sender: TObject);
begin
 
     if CHAMADA5A.Visible = False then Abort;
    Image1.visible := false;
    Application.CreateForm(TFFConsultaNF, FFConsultaNF);
    FFConsultaNF.Position := poDesktopCenter;
    FFConsultaNF.ShowModal;
    FFConsultaNF.Release;
    Image1.visible := true;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons8Click(Sender: TObject);
begin
 
if CHAMADA3D.Visible = False then Abort;
    Image1.visible := false;
    Application.Createform(TFFConsEstoque, FFConsEstoque);
    FFConsEstoque.Position := poDesktopCenter;
    FFConsEstoque.ShowModal;
    FFConsEstoque.Release;
    Image1.visible := true       ;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons9Click(Sender: TObject);
begin

    if RELTRANSPORTE2.Visible = False then Abort;
   frmRelTransporte2 := TfrmRelTransporte2.Create(Self);
  frmRelTransporte2.ShowModal;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons10Click(Sender: TObject);
begin
 
if CHAMADA4E.Visible = False then Abort;
   Image1.visible := false;
   Application.CreateForm(TFImprNF, FImprNF);
   FImprNF.Position := poDesktopCenter;
   FImprNF.ShowModal;
   FImprNF.Release;
   Image1.visible := true       ;
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons11Click(Sender: TObject);
begin

if eDocs.Visible = False then Abort;
     PAth := ExtractFilePath(Application.ExeName) + '\CTe 3.0\CTe.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);

end;

procedure TFMenu.JvOutlookBar1Pages0Buttons12Click(Sender: TObject);
begin
if eDocs.Visible = False then Abort;
	    PAth := ExtractFilePath(Application.ExeName) + '\NF-e 4.0\NFe20.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons13Click(Sender: TObject);
begin
if eDocs.Visible = False then Abort;
PAth := ExtractFilePath(Application.ExeName) + '\LeitorNfe\LeitorNFe.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);
end;

procedure TFMenu.JvOutlookBar1Pages0Buttons14Click(Sender: TObject);
begin
  if eDocs.Visible = False then Abort;
     	  PAth := ExtractFilePath(Application.ExeName) + '\MDFe\MDFe.exe';
    ShellExecute(handle, nil, Pchar(PAth),nil,nil, SW_SHOWNORMAL);
end;

end.

unit Clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwdotdot,
  Wwdbcomb, ComCtrls, Tabnotbk, Wwtable, wwstorep;

type
  TFClientes = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Fonte: TDBNavigator;
    Q_CLIE: TwwQuery;
    DS_CLIE: TwwDataSource;
    UPD_CLIE: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    STP_CLICGCDUPL: TStoredProc;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    Q_CLIECLI_CEST: TStringField;
    Q_CLIECLI_CCEP: TStringField;
    Q_CLIECLI_CTEL: TStringField;
    Q_CLIECLI_CTE2: TStringField;
    Q_CLIECLI_CFAX: TStringField;
    Q_CLIECLI_CGER: TStringField;
    Q_CLIECLI_CGC: TStringField;
    Q_CLIECLI_APELIDO: TStringField;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_INIC: TDateTimeField;
    Q_CLIECLI_PESS: TStringField;
    Q_CLIECLI_INSC: TStringField;
    Q_CLIECLI_RAAT: TStringField;
    Q_CLIECLI_VEND: TStringField;
    Q_CLIECLI_REPR: TStringField;
    Q_CLIECLI_TRAN: TStringField;
    Q_CLIECLI_CONT: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    Q_CLIECLI_FEMA: TStringField;
    Q_CLIECLI_FCON: TStringField;
    Q_CLIECPD_CODI: TStringField;
    Q_CLIECLI_CEND: TStringField;
    Q_CLIECLI_CMUN: TStringField;
    Q_CLIECLI_CEMA: TStringField;
    Q_CLIECLI_CCON: TStringField;
    Q_CLIECLI_LOCCOB: TStringField;
    Q_CLIECLI_SCRE: TStringField;
    Q_CLIECLI_LCRE: TFloatField;
    Q_CLIECLI_UCOM: TDateTimeField;
    Q_CLIECLI_MCOM: TDateTimeField;
    Q_CLIECLI_VUCO: TFloatField;
    Q_CLIECLI_VUCD: TFloatField;
    Q_CLIECLI_VMCO: TFloatField;
    Q_CLIECLI_VMCD: TFloatField;
    Q_CLIECLI_ATRA: TIntegerField;
    Q_CLIECLI_VATR: TFloatField;
    Q_CLIECLI_CODI: TIntegerField;
    wwQ_Tran: TwwQuery;
    wwDS_Tran: TwwDataSource;
    wwQ_TranTRA_APELIDO: TStringField;
    wwQ_TranTRA_CODI: TStringField;
    wwQ_Banc: TwwQuery;
    wwDS_Banc: TwwDataSource;
    wwQ_BancBAN_CODI: TStringField;
    wwQ_BancBAN_NOME: TStringField;
    wwQ_BancBAN_AGEN: TStringField;
    wwQ_CTCO: TwwQuery;
    wwDS_CTCO: TwwDataSource;
    wwQ_CTCOCTC_CODI: TStringField;
    wwQ_CTCOCTC_DESC: TStringField;
    wwQ_Clie: TwwQuery;
    wwQ_ClieCLI_APELIDO: TStringField;
    wwQ_Repr: TwwQuery;
    wwDS_Repr: TwwDataSource;
    wwQ_ReprREP_CODI: TStringField;
    wwQ_ReprREP_RAZA: TStringField;
    Q_CLIECLI_CBAN: TStringField;
    wwQ_Ufed: TwwQuery;
    wwDS_Ufed: TwwDataSource;
    wwQ_UfedUFE_CODI: TStringField;
    wwQ_UfedUFE_DESC: TStringField;
    wwQ_Vend: TwwQuery;
    wwDS_Vend: TwwDataSource;
    wwQ_VendVEN_CODI: TStringField;
    wwQ_VendVEN_NOME: TStringField;
    wwQ_Raat: TwwQuery;
    wwDS_Raat: TwwDataSource;
    wwQ_RaatRAT_DESC: TStringField;
    wwQ_RaatRAT_CODI: TStringField;
    wwQ_Cger: TwwQuery;
    wwDataSource2: TwwDataSource;
    wwQ_CgerCON_CODI: TStringField;
    wwQ_CgerCON_DESC: TStringField;
    Q_CLIECLI_FILI: TStringField;
    Q_CLIECLI_ACRES: TFloatField;
    Q_CLIEObservacoes: TStringField;
    TBN_CLIE: TTabbedNotebook;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label69: TLabel;
    Label50: TLabel;
    Label72: TLabel;
    Label76: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    DBE_CLI_FEND: TwwDBEdit;
    DBE_CLI_FMUN: TwwDBEdit;
    DBE_CLI_FCEP: TwwDBEdit;
    DBE_CLI_FTEL: TwwDBEdit;
    DBE_CLI_FTE2: TwwDBEdit;
    DBE_CLI_FFAX: TwwDBEdit;
    DBE_CLI_FEMA: TwwDBEdit;
    DBE_CLI_FCON: TwwDBEdit;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    DB_ITEM: TwwDBLookupCombo;
    wwDBComboBox3: TwwDBComboBox;
    DBE_CLI_RAZA: TwwDBEdit;
    DBE_CLI_ATIV: TwwDBEdit;
    DBE_CLI_CGC: TwwDBEdit;
    DBE_CLI_INSC: TwwDBEdit;
    DBLC_CLI_RAAT: TwwDBLookupCombo;
    DBLC_CLI_VEND: TwwDBLookupCombo;
    DBLC_DBE_REPR: TwwDBLookupCombo;
    DBLC_CLI_TRAN: TwwDBLookupCombo;
    DBLC_CLI_CONT: TwwDBLookupCombo;
    DBCB_CLI_PESS: TwwDBComboBox;
    DBLC_CLI_CGER: TwwDBLookupCombo;
    BDE_FANTASIA: TwwDBEdit;
    wwDBComboBox4: TwwDBComboBox;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    Panel4: TPanel;
    Label25: TLabel;
    Label32: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label70: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label31: TLabel;
    DBE_CLI_CEND: TwwDBEdit;
    DBE_CLI_CMUN: TwwDBEdit;
    DBLC_CLI_CEST: TwwDBLookupCombo;
    DBE_CLI_CCEP: TwwDBEdit;
    DBE_CLI_CTEL: TwwDBEdit;
    DBE_CLI_CTE2: TwwDBEdit;
    DBE_CLI_CFAX: TwwDBEdit;
    DBE_CLI_CEMA: TwwDBEdit;
    DBE_CLI_CCON: TwwDBEdit;
    wwDBLookupCombo13: TwwDBLookupCombo;
    wwDBEdit4: TwwDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox3: TGroupBox;
    Label29: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    DBE_CLI_UCOM: TwwDBEdit;
    DBE_CLI_VUCO: TwwDBEdit;
    DBE_CLI_VUCD: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBE_CLI_MCOM: TwwDBEdit;
    DBE_CLI_VMCO: TwwDBEdit;
    DBE_CLI_VMCD: TwwDBEdit;
    GroupBox5: TGroupBox;
    Label49: TLabel;
    Label51: TLabel;
    DBE_CLI_ATRA: TwwDBEdit;
    DBE_CLI_VATR: TwwDBEdit;
    GroupBox6: TGroupBox;
    Label52: TLabel;
    DBE_CLI_LCRE: TwwDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    wwQ_ClieCLI_CODI: TAutoIncField;
    Q_LCOB: TwwQuery;
    Q_LCOBLCO_CODI: TStringField;
    Q_LCOBLCO_BANC: TStringField;
    Q_LCOBBANC_CODI: TStringField;
    Q_CLIECLI_ESPE: TStringField;
    Label41: TLabel;
    Label68: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    Label74: TLabel;
    wwDBEdit9: TwwDBEdit;
    Q_CLIECLI_DTIN: TDateTimeField;
    Q_Vendas: TwwQuery;
    DS_Vendas: TwwDataSource;
    DS_VenAnual: TwwDataSource;
    Q_VendasCliente: TIntegerField;
    Q_VendasMesAno: TStringField;
    Q_VendasAnoMes: TStringField;
    Q_VendasValorVendas: TFloatField;
    Q_VenANual: TwwQuery;
    Q_VenANualXANO: TStringField;
    Q_VenANualValorVendas: TFloatField;
    GroupBox7: TGroupBox;
    Label66: TLabel;
    wwDBGrid3: TwwDBGrid;
    Q_CART: TwwQuery;
    DS_CART: TwwDataSource;
    Q_CARTXNUMERO: TIntegerField;
    Q_CARTCOLUMN2: TIntegerField;
    Q_CARTXVALOR: TFloatField;
    GroupBox8: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    STP_DIVIDACLIENTE: TwwStoredProc;
    Label67: TLabel;
    Label71: TLabel;
    Label78: TLabel;
    Panel7: TPanel;
    wwDBGrid4: TwwDBGrid;
    Q_RECE: TwwQuery;
    DS_RECE: TwwDataSource;
    Q_RECEREC_CODI: TIntegerField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_BANC: TStringField;
    Q_RECEREC_EMIS: TDateTimeField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEREC_NBAN: TStringField;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Q_PORT: TwwQuery;
    Q_PORTlco_banc: TStringField;
    Q_RECEAtraso: TIntegerField;
    Panel10: TPanel;
    Q_OBCL: TwwQuery;
    DS_OBCL: TwwDataSource;
    UPD_OBCL: TUpdateSQL;
    Q_OBCLOCL_CLIE: TIntegerField;
    Q_OBCLOCL_DESC: TMemoField;
    DBMemo1: TDBMemo;
    Q_CDPG: TwwQuery;
    Q_CDPGcdp_codi: TStringField;
    Q_CDPGcdp_desc: TStringField;
    Panel6: TPanel;
    Label73: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label87: TLabel;
    Label88: TLabel;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    Q_FATU: TwwQuery;
    Q_FATUNFI_NFIS: TIntegerField;
    Q_FATUNFI_DEMI: TDateTimeField;
    Q_FATUNFI_TOTA: TFloatField;
    DS_FATU: TwwDataSource;
    wwDBGrid5: TwwDBGrid;
    Q_RECEREC_HIST: TStringField;
    DBLK_CliApelido: TwwDBLookupCombo;
    DBRadioGroup4: TDBRadioGroup;
    Label44: TLabel;
    wwDBEdit19: TwwDBEdit;
    Label79: TLabel;
    wwDBEdit20: TwwDBEdit;
    Label84: TLabel;
    wwDBEdit21: TwwDBEdit;
    Label85: TLabel;
    wwDBEdit22: TwwDBEdit;
    Label42: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label60: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label61: TLabel;
    wwDBEdit11: TwwDBEdit;
    Label62: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label80: TLabel;
    wwDBEdit23: TwwDBEdit;
    Label81: TLabel;
    wwDBComboBox6: TwwDBComboBox;
    Label82: TLabel;
    wwDBEdit24: TwwDBEdit;
    Label83: TLabel;
    wwDBEdit25: TwwDBEdit;
    wwQ_CgerDS: TStringField;
    Q_AUXUPDATE: TwwQuery;
    Label75: TLabel;
    pnl1: TPanel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAtualizar: TSpeedButton;
    Q_CLIECLI_CANA: TStringField;
    Q_CLIECLI_CONTICM: TStringField;
    qrDescontos: TwwQuery;
    qrDescontosDIF_DESC: TStringField;
    qrDescontosDIF_CODI: TStringField;
    wwDBLookupCombo8: TwwDBLookupCombo;
    dsDescontoCliente: TDataSource;
    qrDescontosCliente: TwwQuery;
    qrDescontosClienteID: TAutoIncField;
    qrDescontosClienteCLI_CODI: TIntegerField;
    qrDescontosClienteDIF_CODI: TStringField;
    wwDBGrid1: TwwDBGrid;
    qrDescontosClienteDesconto: TStringField;
    updDescontos: TUpdateSQL;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_CLIEAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DS_CLIEStateChange(Sender: TObject);
    procedure Q_CLIEAfterDelete(DataSet: TDataSet);
    procedure Q_CLIEBeforeDelete(DataSet: TDataSet);
    procedure Q_CLIEAfterCancel(DataSet: TDataSet);
    procedure DS_CLIEDataChange(Sender: TObject; Field: TField);
    procedure DBE_CLI_CGCEnter(Sender: TObject);
    procedure Q_CLIECLI_PESSValidate(Sender: TField);
    procedure TBN_CLIEChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_CLIENewRecord(DataSet: TDataSet);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_CLIECLI_CGCValidate(Sender: TField);
    procedure Q_CLIEBeforePost(DataSet: TDataSet);
    procedure DBE_CLI_FCONExit(Sender: TObject);
    procedure DBLC_CLI_BANCExit(Sender: TObject);
    procedure DBE_CLI_LCREExit(Sender: TObject);
    procedure DBLC_CLI_VENDChange(Sender: TObject);
    procedure DBLC_CLI_TRANChange(Sender: TObject);
    procedure DBLC_DBE_REPRChange(Sender: TObject);
    procedure DBLC_CLI_RAATChange(Sender: TObject);
    procedure DBLC_CLI_CONTChange(Sender: TObject);
    procedure DBLC_CLI_CGERChange(Sender: TObject);
    procedure DBLC_DBE_FESTChange(Sender: TObject);
    procedure DBLC_CLI_CESTChange(Sender: TObject);
    procedure Q_CLIEBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CLI_CODIEnter(Sender: TObject);
    procedure DBE_CLI_RAZAExit(Sender: TObject);
    procedure DBE_CLI_RAZAEnter(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure DBE_CLI_ATIVExit(Sender: TObject);
    procedure DBE_CLI_ATIVEnter(Sender: TObject);
    procedure DBE_CLI_CGCExit(Sender: TObject);
    procedure DBE_CLI_INSCExit(Sender: TObject);
    procedure DBE_CLI_INSCEnter(Sender: TObject);
    procedure DBLC_CLI_RAATEnter(Sender: TObject);
    procedure DBLC_CLI_RAATExit(Sender: TObject);
    procedure DBLC_CLI_VENDExit(Sender: TObject);
    procedure DBLC_CLI_VENDEnter(Sender: TObject);
    procedure DBLC_DBE_REPREnter(Sender: TObject);
    procedure DBLC_DBE_REPRExit(Sender: TObject);
    procedure DBLC_CLI_TRANExit(Sender: TObject);
    procedure DBLC_CLI_TRANEnter(Sender: TObject);
    procedure DBLC_CLI_CONTEnter(Sender: TObject);
    procedure DBLC_CLI_CONTExit(Sender: TObject);
    procedure DBLC_CLI_CGERExit(Sender: TObject);
    procedure DBLC_CLI_CGEREnter(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure DBE_CLI_FMUNEnter(Sender: TObject);
    procedure DBE_CLI_FMUNExit(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FTE2Exit(Sender: TObject);
    procedure DBE_CLI_FTE2Enter(Sender: TObject);
    procedure DBE_CLI_FFAXEnter(Sender: TObject);
    procedure DBE_CLI_FFAXExit(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure DBE_CLI_FCONEnter(Sender: TObject);
    procedure DBE_CLI_CENDEnter(Sender: TObject);
    procedure DBE_CLI_CENDExit(Sender: TObject);
    procedure DBE_CLI_CMUNExit(Sender: TObject);
    procedure DBE_CLI_CMUNEnter(Sender: TObject);
    procedure DBLC_CLI_CESTEnter(Sender: TObject);
    procedure DBLC_CLI_CESTExit(Sender: TObject);
    procedure DBE_CLI_CCEPExit(Sender: TObject);
    procedure DBE_CLI_CCEPEnter(Sender: TObject);
    procedure DBE_CLI_CTELEnter(Sender: TObject);
    procedure DBE_CLI_CTELExit(Sender: TObject);
    procedure DBE_CLI_CTE2Exit(Sender: TObject);
    procedure DBE_CLI_CTE2Enter(Sender: TObject);
    procedure DBE_CLI_CFAXEnter(Sender: TObject);
    procedure DBE_CLI_CFAXExit(Sender: TObject);
    procedure DBE_CLI_CEMAExit(Sender: TObject);
    procedure DBE_CLI_CEMAEnter(Sender: TObject);
    procedure DBE_CLI_CCONEnter(Sender: TObject);
    procedure DBE_CLI_CCONExit(Sender: TObject);
    procedure DBLC_CLI_BANCEnter(Sender: TObject);
    procedure DBE_CLI_CCBAEnter(Sender: TObject);
    procedure DBE_CLI_CCBAExit(Sender: TObject);
    procedure DBE_CLI_SCREEnter(Sender: TObject);
    procedure DBE_CLI_SCREExit(Sender: TObject);
    procedure DBE_CLI_LCREEnter(Sender: TObject);
    procedure BDE_FANTASIAExit(Sender: TObject);
    procedure BDE_FANTASIAEnter(Sender: TObject);
    procedure CKB_ConsClick(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Q_RECECalcFields(DataSet: TDataSet);
    procedure Q_OBCLAfterPost(DataSet: TDataSet);
    procedure Q_OBCLAfterDelete(DataSet: TDataSet);
    procedure Q_OBCLNewRecord(DataSet: TDataSet);
    procedure wwDBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_CLIEAfterOpen(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure qrDescontosClienteAfterPost(DataSet: TDataSet);
    procedure qrDescontosClienteBeforePost(DataSet: TDataSet);
    procedure BDE_FANTASIAKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CLI_RAZAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;
  RAZAOSOCIAL : STRING;

implementation

uses CppMenu, PesqClie, U_Funcoes, Unt_Splash1;
var L_MUDOU : Boolean;
    L_ALTER : boolean;

{$R *.DFM}

procedure TFClientes.SBT_SAIRClick(Sender: TObject);
begin
     FClientes.Close;
end;

procedure TFClientes.Q_CLIEAfterPost(DataSet: TDataSet);
Var
   WData_Cli_Inic, WData_Cli_Ucom, WData_Cli_Mcom : TdateTime;
   sCodigo : String;
begin
     try
        begin
             WData_Cli_Ucom := Q_ClieCLI_UCOM.AsDateTime;
             Wdata_Cli_Mcom := Q_ClieCLI_MCOM.AsDateTime;
             WData_Cli_Inic := Q_ClieCLI_INIC.AsDateTime;
             sCodigo := Q_CLIECLI_APELIDO.AsString;
             FMenu.DATABASE1.ApplyUpdates([Q_CLIE]);
        end;
        except
        On E:EdbEngineError do
           begin
              MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
              E.Message,MtError,[MbOk],0);
           end;
        end;



    // Q_CLIE.Close;
    // Q_Clie.Open;
   ///  Q_CLIE.locate('CLI_APELIDO',sCodigo,[loCaseInsensitive]);
end;

procedure TFClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CLIE.Close;
   Q_RECE.Close;
   Q_Port.close ;
   Q_CART.Close ;
   Q_Vendas.Close ;
   Q_VenAnual.Close ;
   wwQ_RAAT.Close;
   wwQ_UFED.Close;
   wwQ_VEND.close;
   wwQ_REPR.Close;
   wwQ_TRAN.Close;
   wwQ_CTCO.Close;
   wwQ_CGER.Close;
   wwQ_Clie.close;
   Q_CDPG.Close;
   Q_LCob.close ;
   ACTION := caFREE ;
end;

procedure TFClientes.DS_CLIEStateChange(Sender: TObject);
begin

   if (Q_CLIE.State = dsEdit) or (Q_CLIE.State = dsInsert) then
     begin
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
        if Q_CLIE.State  = dsEdit then
          begin

            LBL_STATUS.Caption := 'ALTERAÇÃO';

          end
        else
          begin

            LBL_STATUS.Caption := 'INCLUSÃO';
            TBN_CLIE.PageIndex := 0;
//            DBE_CLI_CODI.Enabled := true;
//            DBE_CLI_CODI.SetFocus;

          end;
        LBL_STATUS.Visible := true;
     end
   else
     begin
        SBT_SAIR.Enabled   := true;
        SBT_REFR.Enabled   := true;
        LBL_STATUS.Visible := false;
     end;
end;

procedure TFClientes.Q_CLIEAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CLIE]);
    end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
end;

procedure TFClientes.Q_CLIEBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFClientes.Q_CLIEAfterCancel(DataSet: TDataSet);
begin
 { DBE_CLI_CODI.Enabled := false;}
end;

procedure TFClientes.DS_CLIEDataChange(Sender: TObject; Field: TField);
begin

if not (Q_CLIE.State in [dsInsert]) then
begin
    qrDescontosCliente.Close;
    qrDescontosCliente.Params[0].AsInteger := Q_CLIECLI_CODI.Value;
    qrDescontosCliente.Open;
end;

(*   if not (DS_CLIE.State in [dsInsert,dsEdit]) then
   begin
     L_ALTER := true ;
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='1') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='1')) then CKB_Cons.ItemIndex := 0;

     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='2') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='2')) then CKB_Cons.ItemIndex := 1;

     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='3') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='3')) then CKB_CONS.ItemIndex := 2;

     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='4') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='4')) then CKB_CONS.ItemIndex := 3;

     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='5') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='5')) then CKB_CONS.ItemIndex := 4;

     L_ALTER := false ;

   end; *)



end;

procedure TFClientes.DBE_CLI_CGCEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;

     if Q_CLIECLI_PESS.AsString = '' then
      begin
         MessageDlg('Preencha o tipo de pessoa antes de preencher o CNPJ/CPF.', mtInformation,
               [mbOk], 0);
         Abort;
      end;

     if (Q_CLIECLI_PESS.AsString = 'F') then
       begin
         Q_CLIECLI_CGC.EditMask := '!999.999.999/99;0;_';
       end
     else
       begin
         if (Q_CLIECLI_PESS.AsString = 'J') then
           begin
             Q_CLIECLI_CGC.EditMask := '!999.999.999/9999-99;0;_';
           end
         else
           begin
             Q_CLIECLI_CGC.EditMask := '';
           end;
       end;

end;

procedure TFClientes.Q_CLIECLI_PESSValidate(Sender: TField);
begin
   if not ((Q_CLIECLI_PESS.AsString = 'F') or
           (Q_CLIECLI_PESS.AsString = 'J') or
           (Q_CLIECLI_PESS.AsString = 'E')) then
   begin
     MessageDlg('Tipo de Pessoa Inválida',mtInformation,[mbOk], 0);
     Abort;
   end;
end;

procedure TFClientes.TBN_CLIEChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     L_MUDOU := false;
     Q_Vendas.close ;
     Q_VenAnual.close ;
     Q_Fatu.close ;
     Q_Rece.Close ;

     if newtab = 2 then begin
        Q_CART.Open ;
        try
          STP_DIVIDACLIENTE.ParamByName('@Cliente').AsInteger := Q_CLIECLI_CODI.AsInteger;
          STP_DIVIDACLIENTE.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
          STP_DIVIDACLIENTE.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
          STP_DIVIDACLIENTE.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
          STP_DIVIDACLIENTE.ExecProc;
        finally
        end;
        Label67.caption := inttostr(STP_DIVIDACLIENTE.Parambyname('@NumeroDuplicatas').asinteger );
        Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaReais').asfloat );
        Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaDolar').asfloat );
     end else Q_CART.Close ;
     if newtab = 0 then begin
        Q_CART.Close ;
        Fonte.datasource := Ds_Clie ;
        fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbPost,nbCancel];
     end else begin
        Q_Vendas.Open;
        Q_VenAnual.Open;
        fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbPost,nbCancel] ;
        Fonte.datasource := Ds_Vendas ;
     end ;
     if newtab = 3 then begin
        Q_RECE.Open  ;
        Q_FATU.Open ;
        Fonte.datasource := ds_rece ;
     end ;
     if newtab = 4 then begin
        fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbPost,nbCancel];
        Fonte.datasource := ds_OBCL ;
        Q_OBCL.CLOSE;
        Q_OBCL.OPEN;
     end ;

     if ((NewTab = 1) and (DS_CLIE.State = dsInsert)) then
     begin
        if Q_CLIECLI_CEND.AsString = '' then Q_CLIECLI_CEND.AsString := Q_CLIECLI_FEND.AsString;
        if Q_CLIECLI_CMUN.AsString = '' then Q_CLIECLI_CMUN.AsString := Q_CLIECLI_FMUN.AsString;
        if ((Q_CLIECLI_CEST.AsString = '') and (Q_CLIECLI_FEST.AsString <> '')) then Q_CLIECLI_CEST.AsString := Q_CLIECLI_FEST.AsString;
        if Q_CLIECLI_CCEP.AsString = '' then Q_CLIECLI_CCEP.AsString := Q_CLIECLI_FCEP.AsString;
        if Q_CLIECLI_CTEL.AsString = '' then Q_CLIECLI_CTEL.AsString := Q_CLIECLI_FTEL.AsString;
        if Q_CLIECLI_CTE2.AsString = '' then Q_CLIECLI_CTE2.AsString := Q_CLIECLI_FTE2.AsString;
        if Q_CLIECLI_CFAX.AsString = '' then Q_CLIECLI_CFAX.AsString := Q_CLIECLI_FFAX.AsString;
        if Q_CLIECLI_CEMA.AsString = '' then Q_CLIECLI_CEMA.AsString := Q_CLIECLI_FEMA.AsString;
        if Q_CLIECLI_CCON.AsString = '' then Q_CLIECLI_CCON.AsString := DBE_CLI_FCON.Text;
     end;
     L_MUDOU := true;


     if NewTab = 5 then
     begin
         Fonte.DataSource := dsDescontoCliente;
     end;

end;

procedure TFClientes.SBT_REFRClick(Sender: TObject);
begin

     Q_CLIE.Close;
     wwQ_RAAT.Close;
     wwQ_UFED.Close;
     wwQ_VEND.Close;
     wwQ_TRAN.Close;
     wwQ_REPR.Close;
     wwQ_CTCO.Close;
     wwQ_CGER.Close;
     wwQ_BANC.Close;

     wwQ_VEND.Open;
     wwQ_REPR.Open;
     wwQ_TRAN.Open;
     wwQ_CTCO.Open;
     wwQ_RAAT.Open;
     wwQ_CGER.Open;
     wwQ_UFED.Open;
     Q_CLIE.Open;
     wwQ_BANC.Open;

end;

procedure TFClientes.Q_CLIENewRecord(DataSet: TDataSet);
begin
//     CKB_Cons.ItemIndex:=-1;
     //Q_CLIECLI_CONTICM.AsString := 'S'
end;

procedure TFClientes.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
     if (Button in [nbFirst,nbPrior,nbNext,nbLast]) then
        begin
           if (Q_CLIECLI_PESS.AsString = 'F') then
              Q_CLIECLI_CGC.EditMask := '!999.999.999/99;0;_'
           else
              if (Q_CLIECLI_PESS.AsString = 'J') then
                Q_CLIECLI_CGC.EditMask := '!999.999.999/9999-99;0;_'
              else Q_CLIECLI_CGC.EditMask := '';
           L_ALTER := true ;
//           If Q_CLIECLI_CANA.AsString = '1' Then CKB_Cons.ItemIndex := 0;
//           If Q_CLIECLI_CANA.AsString = '2' Then CKB_Cons.ItemIndex := 1;
//           If Q_CLIECLI_CANA.AsString = '3' Then CKB_Cons.ItemIndex := 2;
//           If Q_CLIECLI_CANA.AsString = '4' Then CKB_Cons.ItemIndex := 3;
//           If Q_CLIECLI_CANA.AsString = '5' Then CKB_Cons.ItemIndex := 4;
           L_ALTER := false ;
           try
             STP_DIVIDACLIENTE.ParamByName('@Cliente').AsInteger := Q_CLIECLI_CODI.AsInteger;
             STP_DIVIDACLIENTE.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
             STP_DIVIDACLIENTE.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
             STP_DIVIDACLIENTE.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
             STP_DIVIDACLIENTE.ExecProc;
           finally
           end;
           Label67.caption := inttostr(STP_DIVIDACLIENTE.Parambyname('@NumeroDuplicatas').asinteger );
           Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaReais').asfloat );
           Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaDolar').asfloat );

        end;

     Case Button Of
          NbInsert : Begin
                       if TBN_CLIE.pageindex <> 5 then begin
                           BDE_FANTASIA.Enabled:=True;
                           BDE_FANTASIA.SetFocus;
                       end ;
                      End;
          NbEdit : Begin
                      if TBN_CLIE.pageindex <> 5 then begin
                         BDE_FANTASIA.Enabled:=True;
                      end ;   
                   End;
     End;


end;

procedure TFClientes.Q_CLIECLI_CGCValidate(Sender: TField);
var RT : Integer;
begin
  if ((Q_CLIECLI_PESS.AsString = 'J') and (DBE_CLI_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_CLI_CGC.Text)) then
      begin
       MessageDlg('CNPJ Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_CLIECLI_PESS.AsString = 'F') and (DBE_CLI_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_CLI_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;

   try
     STP_CLICGCDUPL.ParamByName('@V_CLI_CODI').AsInteger := Q_CLIECLI_CODI.AsInteger;
     STP_CLICGCDUPL.ParamByName('@V_CLI_CGC').AsString := Q_CLIECLI_CGC.AsString;
     STP_CLICGCDUPL.ExecProc;
   finally
     RT := STP_CLICGCDUPL.ParamByName('Result').AsInteger
   end;

   if (RT = 1) then
    begin
      MessageDlg('CNPJ/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      Abort;
    end;




end;


procedure TFClientes.Q_CLIEBeforePost(DataSet: TDataSet);
begin
   If DBE_CLI_RAZA.Text = '' then Begin
      MessageDlg('Razão Social é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_CLI_RAZA.SetFocus;
      Abort;
   End;
   If DBCB_CLI_PESS.Text = '' then Begin
      MessageDlg('F/J/E é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBCB_CLI_PESS.SetFocus;
      Abort;
   End;
   If DBE_CLI_FMUN.Text = '' then Begin
      MessageDlg('Município é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_CLI_FMUN.SetFocus;
      Abort;
   End;
   If DBLC_DBE_FEST.Text = '' then Begin
      MessageDlg('UF é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBLC_DBE_FEST.SetFocus;
      Abort;
   End;
   {If WWDBCOMBOBOX3.Text = '' then Begin
      MessageDlg('Contr.ICM de Inf.para Faturamento é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      WWDBCOMBOBOX3.SetFocus;
      Abort;
   End;   }
    if Q_CLIECLI_CEND.AsString = '' then
       Q_CLIECLI_CEND.AsString := Q_CLIECLI_FEND.AsString;
    if Q_CLIECLI_CMUN.AsString = '' then
       Q_CLIECLI_CMUN.AsString := Q_CLIECLI_FMUN.AsString;
    if ((Q_CLIECLI_CEST.AsString = '')  and
       (Q_CLIECLI_FEST.AsString <> '')) then
       Q_CLIECLI_CEST.AsString := Q_CLIECLI_FEST.AsString;
    if Q_CLIECLI_CCEP.AsString = '' then Q_CLIECLI_CCEP.AsString := Q_CLIECLI_FCEP.AsString;
    if Q_CLIECLI_CTEL.AsString = '' then Q_CLIECLI_CTEL.AsString := Q_CLIECLI_FTEL.AsString;
    if Q_CLIECLI_CTE2.AsString = '' then Q_CLIECLI_CTE2.AsString := Q_CLIECLI_FTE2.AsString;
    if Q_CLIECLI_CFAX.AsString = '' then Q_CLIECLI_CFAX.AsString := Q_CLIECLI_FFAX.AsString;
    if Q_CLIECLI_CEMA.AsString = '' then Q_CLIECLI_CEMA.AsString := Q_CLIECLI_FEMA.AsString;
    if Q_CLIECLI_CCON.AsString = '' then Q_CLIECLI_CCON.AsString := DBE_CLI_FCON.Text;
//    If CKB_Cons.ItemIndex = 0 Then Q_CLIECLI_CANA.AsString := '1';
//    If CKB_Cons.ItemIndex = 1 Then Q_CLIECLI_CANA.AsString := '2';
//    If CKB_Cons.ItemIndex = 2 Then Q_CLIECLI_CANA.AsString := '3';
//    If CKB_Cons.ItemIndex = 3 Then Q_CLIECLI_CANA.AsString := '4';

    if (((Q_CLIECLI_PESS.AsString = 'F') or (Q_CLIECLI_PESS.AsString = 'J'))
       and (Q_CLIECLI_CGC.AsString = '')) then
       begin
            MessageDlg('CNPJ/CPF Não Preenchido.',mtInformation,[mbOk], 0);
            TBN_CLIE.PageIndex := 0;
            DBE_CLI_CGC.SetFocus;
            Abort;
       end;
    if (Q_CLIECLI_RAZA.AsString = '') then
       begin
            MessageDlg('Razão Social Não Preenchida.',mtInformation,[mbOk], 0);
            TBN_CLIE.PageIndex := 0;
            DBE_CLI_RAZA.SetFocus;
            Abort;
       end;
     if (Q_CLIECLI_PESS.AsString = '') then
       begin
         MessageDlg('Tipo de Pessoa Não Preenchida.',mtInformation,[mbOk], 0);
         TBN_CLIE.PageIndex := 0;
         DBCB_CLI_PESS.SetFocus;
         Abort;
       end;
     {if (Q_CLIECLI_CANA.AsString = '') then
       begin
         MessageDlg('Canal de Consumo Não Preenchido.',mtInformation,[mbOk], 0);
         TBN_CLIE.PageIndex := 0;
         DBRadioGroup4.SetFocus;
         Abort;
       end;     }

       if RAZAOSOCIAL <> Q_CLIECLI_RAZA.asstring then
       Begin
         WITH Q_AUXUPDATE DO
         BEGIN

           close;
           sql.clear;
           sql.add( 'update cparece set REC_RAZA = :novarazao   ');
           sql.add(' where REC_RAZA = :razao ');
           Params[0].Value := Q_CLIECLI_RAZA.asstring;
           params[1].Value := RAZAOSOCIAL;
           ExecSQL;
         END;
       end;

end;

procedure TFClientes.DBE_CLI_FCONExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
{
     if (DS_CLIE.State in [dsInsert]) then
      begin
          if not (L_MUDOU) then TBN_CLIE.PageIndex := 1;
          L_MUDOU := false;
      end;
}      
end;

procedure TFClientes.DBLC_CLI_BANCExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
     if (DS_CLIE.State in [dsInsert]) then
      begin
           if not (L_MUDOU) then TBN_CLIE.PageIndex := 2;
           L_MUDOU := false;
      end;
end;

procedure TFClientes.DBE_CLI_LCREExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
     if (DS_CLIE.State in [dsInsert]) then
      begin
           if not (L_MUDOU) then TBN_CLIE.PageIndex := 0;
           L_MUDOU := false;
      end;
end;

procedure TFClientes.DBLC_CLI_VENDChange(Sender: TObject);
begin
     if ((DBLC_CLI_VEND.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_VEND.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_TRANChange(Sender: TObject);
begin
     if ((DBLC_CLI_TRAN.Text = '') and (DS_CLIE.State in [dsInsert,dsEdit]))then
      begin
        Q_CLIECLI_TRAN.Clear;
      end;
end;

procedure TFClientes.DBLC_DBE_REPRChange(Sender: TObject);
begin
     if ((DBLC_DBE_REPR.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_REPR.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_RAATChange(Sender: TObject);
begin
     if ((DBLC_CLI_RAAT.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_RAAT.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_CONTChange(Sender: TObject);
begin
     if ((DBLC_CLI_CONT.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CONT.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_CGERChange(Sender: TObject);
begin
     if ((DBLC_CLI_CGER.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CGER.Clear;
      end;
end;

procedure TFClientes.DBLC_DBE_FESTChange(Sender: TObject);
begin
     if ((DBLC_DBE_FEST.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_FEST.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_CESTChange(Sender: TObject);
begin
     if ((DBLC_CLI_CEST.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CEST.Clear;
      end;
end;

procedure TFClientes.Q_CLIEBeforeInsert(DataSet: TDataSet);
begin
//   DBE_CLI_CODI.Enabled := true;
//   DBE_CLI_CODI.SetFocus;
end;

procedure TFClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) then
        begin
//             Key := #0;
             Perform(WM_Nextdlgctl,0,0);
        end;
end;

procedure TFClientes.DBE_CLI_CODIEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_RAZAExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_RAZAEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBCB_CLI_PESSEnter(Sender: TObject);
begin
     (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFClientes.DBCB_CLI_PESSExit(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := ClWindow;
   Q_CLIECLI_CGC.EditMask := '' ;
   case DBCB_CLI_PESS.itemindex of
      0 : Q_CLIECLI_CGC.EditMask := '!999.999.999/99;0;_' ;
      1 : Q_CLIECLI_CGC.EditMask := '!999.999.999/9999-99;0;_';
   end ;


end;

procedure TFClientes.DBE_CLI_ATIVExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_ATIVEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CGCExit(Sender: TObject);
var RT : Integer;
begin
   (Sender as TwwDBEdit).Color := ClWindow;
  if ((Q_CLIECLI_PESS.AsString = 'J') and (DBE_CLI_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_CLI_CGC.Text)) then
      begin
       MessageDlg('CNPJ Inválido.',mtInformation,[mbOk], 0);
       DBE_CLI_CGC.setfocus ;
       Abort;
      end;
   end
 else
   begin
     if ((Q_CLIECLI_PESS.AsString = 'F') and (DBE_CLI_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_CLI_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
           DBE_CLI_CGC.setfocus ;
           Abort;
         end;
      end;
   end;

   try
     STP_CLICGCDUPL.ParamByName('@V_CLI_CODI').AsInteger := Q_CLIECLI_CODI.AsInteger;
     STP_CLICGCDUPL.ParamByName('@V_CLI_CGC').AsString := Q_CLIECLI_CGC.AsString;
     STP_CLICGCDUPL.ExecProc;
   finally
     RT := STP_CLICGCDUPL.ParamByName('Result').AsInteger
   end;

   if (RT = 1) then
    begin
      MessageDlg('CNPJ/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      DBE_CLI_CGC.setfocus ;
      Abort;
    end;
end;

procedure TFClientes.DBE_CLI_INSCExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_INSCEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBLC_CLI_RAATEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_CLI_RAATExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_VENDExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_VENDEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_DBE_REPREnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_DBE_REPRExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_TRANExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_TRANEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_CLI_CONTEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_CLI_CONTExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_CGERExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_CGEREnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_DBE_FESTEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_DBE_FESTExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FENDExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FENDEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FMUNEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FMUNExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FCEPExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FCEPEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FTELEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FTELExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FTE2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FTE2Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FFAXEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FFAXExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FEMAExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_FEMAEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_FCONEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CENDEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CENDExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CMUNExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CMUNEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBLC_CLI_CESTEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBLC_CLI_CESTExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CCEPExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CCEPEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CTELEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CTELExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CTE2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CTE2Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CFAXEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CFAXExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CEMAExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_CEMAEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CCONEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CCONExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBLC_CLI_BANCEnter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CCBAEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_CCBAExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_SCREEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.DBE_CLI_SCREExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFClientes.DBE_CLI_LCREEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;


procedure TFClientes.BDE_FANTASIAExit(Sender: TObject);
Var
   sDescricao : String;
begin
   (Sender as TwwDBEdit).Color := ClWindow;
   sDescricao :=BDE_FANTASIA.TEXT;
   if (Q_Clie.State = dsInsert) or (Q_Clie.State = dsEdit) then
      Begin
         wwQ_CLIE.close ;
         wwQ_CLIE.Sql.Clear ;
         wwQ_Clie.sql.Add('SELECT CLI_APELIDO,CLI_CODI  FROM CPACLIE ' );
         wwQ_CLIE.Sql.Add(' where CLI_APELIDO = ' + '''' + BDE_FANTASIA.TEXT + '''' ) ;
         wwQ_CLIE.Open ;
         If (not wwQ_Clie.eof)  and  ( wwQ_CLIECLI_CODI.asstring <> Q_CLIECLI_CODI.asstring ) then Begin
           MessageDlg('Nome fantasia já cadastrado',MtError,[mbok],0);
           Q_CLIECLI_APELIDO.AsString:='';
           BDE_FANTASIA.TEXT:='';
           wwQ_CLIE.close ;
           BDE_FANTASIA.SetFocus;
         End;
         wwQ_CLIE.close ;
      End;
end;

procedure TFClientes.BDE_FANTASIAEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClientes.CKB_ConsClick(Sender: TObject);
begin
(*   if (DS_CLIE.State in [dsInsert,dsEdit]) then
   begin
     L_ALTER := true ;
     if CKB_Cons.ItemIndex = 0 then
        Q_CLIECLI_CANA.AsString := '1';

     if CKB_Cons.ItemIndex = 1 then
        Q_CLIECLI_CANA.AsString := '2';

     if CKB_CONS.ItemIndex = 2 then
        Q_CLIECLI_CANA.AsString := '2';

     if CKB_CONS.ItemIndex = 3 then
        Q_CLIECLI_CANA.AsString := '4';

     if CKB_CONS.ItemIndex = 4 then
        Q_CLIECLI_CANA.AsString := '5';
     L_ALTER := false ;
   end;

  if not L_ALTER then fonte.btnclick(nbedit); *)
end;

procedure TFClientes.wwDBComboBox4Exit(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := ClWindow;
end;

procedure TFClientes.wwDBComboBox4Enter(Sender: TObject);
begin
     (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFClientes.SpeedButton1Click(Sender: TObject);
begin
// Carrega os dados de Clientes
   Q_CLIE.Close ;
   Q_CLIE.Sql.Clear ;
   Q_CLIE.Sql.Add('SELECT ' ) ;
   Q_CLIE.Sql.Add('CLI_APELIDO,CLI_RAZA,CLI_INIC,CLI_PESS,CLI_CGC,CLI_INSC, ' ) ;
   Q_CLIE.Sql.Add('CLI_RAAT,CLI_VEND,CLI_REPR,CLI_TRAN,CLI_CONT,CLI_CGER, ' ) ;
   Q_CLIE.Sql.Add('CLI_FEND,CLI_FMUN,CLI_FEST,CLI_FCEP,CLI_FTEL,CLI_FTE2, ' ) ;
   Q_CLIE.Sql.Add('CLI_FFAX,CLI_FEMA,CLI_FCON,CPD_CODI,CLI_CONTICM,CLI_CANA, ' ) ;
   Q_CLIE.Sql.Add('CLI_CEND,CLI_CMUN,CLI_CEST,CLI_CCEP,CLI_CTEL,CLI_CTE2, ' ) ;
   Q_CLIE.Sql.Add('CLI_CFAX,CLI_CEMA,CLI_CCON,CLI_LOCCOB,CLI_SCRE,CLI_LCRE, ' ) ;
   Q_CLIE.Sql.Add('CLI_UCOM,CLI_MCOM,CLI_VUCO,CLI_VUCD, CLI_VMCO, CLI_VMCD,CLI_ESPE, ' ) ;
   Q_CLIE.Sql.Add('CLI_ATRA, CLI_VATR,CLI_CODI,CLI_CBAN,CLI_FILI,CLI_ACRES,Observacoes, ' ) ;
   Q_CLIE.Sql.Add('CLI_DTIN' ) ;
   Q_CLIE.Sql.Add(' FROM CPACLIE order by cli_apelido ')  ;
   q_clie.open;
// Ajusta o posicionamento do Panel de Localização rápida
  // Panel6.Top  := ((Screen.Height - Panel6.Height) div 2)-50;
 //  Panel6.Left := (Screen.Width  - Panel6.Width ) div 2;
   //Panel6.width  := 425;
   //Panel6.Height := 95;
   Panel2.enabled := false;
//   wwQ_CLIE.open;
   TBN_CLIE.enabled := false ;
   Panel6.enabled := true ;
   Panel6.visible := true ;
   dblk_cliapelido.setfocus;
end;


procedure TFClientes.SpeedButton5Click(Sender: TObject);
begin
   Panel6.visible := false ;
   TBN_CLIE.enabled := true;
   Panel2.enabled := true ;
end;


procedure TFClientes.SpeedButton6Click(Sender: TObject);
begin
    if ( dblk_cliapelido.text <> '') or
       (wwDBEdit17.text <> '') or
       (wwDBEdit18.text <> '') then begin
        Q_CLIE.Close ;
        Q_CLIE.Sql.Clear ;
        Q_CLIE.Sql.Add('SELECT ' ) ;
        Q_CLIE.Sql.Add('CLI_APELIDO,CLI_RAZA,CLI_INIC,CLI_PESS,CLI_CGC,CLI_INSC, ' ) ;
        Q_CLIE.Sql.Add('CLI_RAAT,CLI_VEND,CLI_REPR,CLI_TRAN,CLI_CONT,CLI_CGER, ' ) ;
        Q_CLIE.Sql.Add('CLI_FEND,CLI_FMUN,CLI_FEST,CLI_FCEP,CLI_FTEL,CLI_FTE2, ' ) ;
        Q_CLIE.Sql.Add('CLI_FFAX,CLI_FEMA,CLI_FCON,CPD_CODI,CLI_CONTICM,CLI_CANA, ' ) ;
        Q_CLIE.Sql.Add('CLI_CEND,CLI_CMUN,CLI_CEST,CLI_CCEP,CLI_CTEL,CLI_CTE2, ' ) ;
        Q_CLIE.Sql.Add('CLI_CFAX,CLI_CEMA,CLI_CCON,CLI_LOCCOB,CLI_SCRE,CLI_LCRE, ' ) ;
        Q_CLIE.Sql.Add('CLI_UCOM,CLI_MCOM,CLI_VUCO,CLI_VUCD, CLI_VMCO, CLI_VMCD,CLI_ESPE, ' ) ;
        Q_CLIE.Sql.Add('CLI_ATRA, CLI_VATR,CLI_CODI,CLI_CBAN,CLI_FILI,CLI_ACRES,Observacoes, ' ) ;
        Q_CLIE.Sql.Add('CLI_DTIN' ) ;
        Q_CLIE.Sql.Add(' FROM CPACLIE ' ) ;
//        if  wwDBEdit16.text <> '' then
//            Q_CLIE.Sql.Add(' WHERE CLI_APELIDO like ''' + '%'+ wwDBEdit16.text + '%'+ '''');
        if  dblk_cliapelido.text <> '' then
            Q_CLIE.Sql.Add(' WHERE CLI_APELIDO like ''' + '%'+ dblk_cliapelido.text + '%'+ '''');

        if  wwDBEdit17.text <> '' then
            Q_CLIE.Sql.Add(' WHERE CLI_RAZA like ''' + '%'+ wwDBEdit17.text + '%'+ '''');
        if  wwDBEdit18.text <> '' then
            Q_CLIE.Sql.Add(' WHERE CLI_CGC like ''' + '%'+ wwDBEdit18.text + '%'+ '''');
        Q_CLIE.Open ;

         try
           STP_DIVIDACLIENTE.ParamByName('@Cliente').AsInteger := Q_CLIECLI_CODI.AsInteger;
           STP_DIVIDACLIENTE.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
           STP_DIVIDACLIENTE.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
           STP_DIVIDACLIENTE.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
           STP_DIVIDACLIENTE.ExecProc;
         finally
         end;
         Label67.caption := inttostr(STP_DIVIDACLIENTE.Parambyname('@NumeroDuplicatas').asinteger );
         Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaReais').asfloat );
         Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaDolar').asfloat );

         TBN_CLIE.enabled := true;
         Panel6.visible := false ;
         Panel2.enabled := true ;
     end ;
end;


procedure TFClientes.Q_RECECalcFields(DataSet: TDataSet);
var Numero : double ;

begin
  if Q_ReceREC_VENC.asdatetime >  Date then
     Q_RECEAtraso.asinteger := 0
  else begin
     Numero := Date - Q_ReceRec_Venc.asdatetime ;
     Q_ReceAtraso.asinteger := strtoint(formatfloat('0', Numero)) ;
 end ;
end;


procedure TFClientes.Q_OBCLAfterPost(DataSet: TDataSet);
begin
  try
     begin
          FMenu.DATABASE1.ApplyUpdates([Q_OBCL]);
     end;
     except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
     end;
     Q_OBCL.Close;
     Q_OBCL.Open;

end;

procedure TFClientes.Q_OBCLAfterDelete(DataSet: TDataSet);
begin
  try
     begin
          FMenu.DATABASE1.ApplyUpdates([Q_OBCL]);
     end;
     except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
     end;
     Q_OBCL.Close;
     Q_OBCL.Open;

end;

procedure TFClientes.Q_OBCLNewRecord(DataSet: TDataSet);
begin
  Q_OBCLOCL_CLIE.asinteger := Q_CLIECLI_CODI.asinteger ;
end;


procedure TFClientes.wwDBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then begin
      if ( dblk_cliapelido.text <> '') or
//      if (wwDBEdit16.text <> '') or
         (wwDBEdit17.text <> '') or
         (wwDBEdit18.text <> '') then begin
          Q_CLIE.Close ;
          Q_CLIE.Sql.Clear ;
          Q_CLIE.Sql.Add('SELECT ' ) ;
          Q_CLIE.Sql.Add('CLI_APELIDO,CLI_RAZA,CLI_INIC,CLI_PESS,CLI_CGC,CLI_INSC, ' ) ;
          Q_CLIE.Sql.Add('CLI_RAAT,CLI_VEND,CLI_REPR,CLI_TRAN,CLI_CONT,CLI_CGER, ' ) ;
          Q_CLIE.Sql.Add('CLI_FEND,CLI_FMUN,CLI_FEST,CLI_FCEP,CLI_FTEL,CLI_FTE2, ' ) ;
          Q_CLIE.Sql.Add('CLI_FFAX,CLI_FEMA,CLI_FCON,CPD_CODI,CLI_CONTICM,CLI_CANA, ' ) ;
          Q_CLIE.Sql.Add('CLI_CEND,CLI_CMUN,CLI_CEST,CLI_CCEP,CLI_CTEL,CLI_CTE2, ' ) ;
          Q_CLIE.Sql.Add('CLI_CFAX,CLI_CEMA,CLI_CCON,CLI_LOCCOB,CLI_SCRE,CLI_LCRE, ' ) ;
          Q_CLIE.Sql.Add('CLI_UCOM,CLI_MCOM,CLI_VUCO,CLI_VUCD, CLI_VMCO, CLI_VMCD,CLI_ESPE, ' ) ;
          Q_CLIE.Sql.Add('CLI_ATRA, CLI_VATR,CLI_CODI,CLI_CBAN,CLI_FILI,CLI_ACRES,Observacoes, ' ) ;
          Q_CLIE.Sql.Add('CLI_DTIN' ) ;
          Q_CLIE.Sql.Add(' FROM CPACLIE ' ) ;
//          if  wwDBEdit16.text <> '' then
//              Q_CLIE.Sql.Add(' WHERE CLI_APELIDO like ''' + '%'+ wwDBEdit16.text + '%'+ '''')
         if  dblk_cliapelido.text <> '' then
            Q_CLIE.Sql.Add(' WHERE CLI_APELIDO like ''' + '%'+ dblk_cliapelido.text + '%'+ '''')
          else if  wwDBEdit17.text <> '' then
              Q_CLIE.Sql.Add(' WHERE CLI_RAZA like ''' + '%'+ wwDBEdit17.text + '%'+ '''')
          else  if  wwDBEdit18.text <> '' then
              Q_CLIE.Sql.Add(' WHERE CLI_CGC = ' + '''' +wwDBEdit18.text+ '''');
          Q_CLIE.Open ;

      try
        STP_DIVIDACLIENTE.ParamByName('@Cliente').AsInteger := Q_CLIECLI_CODI.AsInteger;
        STP_DIVIDACLIENTE.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
        STP_DIVIDACLIENTE.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
        STP_DIVIDACLIENTE.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
        STP_DIVIDACLIENTE.ExecProc;
      finally
      end;
      Label67.caption := inttostr(STP_DIVIDACLIENTE.Parambyname('@NumeroDuplicatas').asinteger );
      Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaReais').asfloat );
      Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDACLIENTE.Parambyname('@ValorDividaDolar').asfloat );

      TBN_CLIE.enabled := true;
      Panel6.visible := false ;
      Panel2.enabled := true ;
   end ;

  end ;
end;

procedure TFClientes.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFClientes.FormCreate(Sender: TObject);
begin
   TBN_CLIE.PageIndex := 0;
   L_MUDOU := false ;
   L_ALTER := false ;

     //If Self.Tag = 0 Then
        ///Begin

            ///// Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 12;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     Q_LCob.open ;

                     Dfm_Splash1.Gauge1.Progress := 2;
                     wwQ_RAAT.Open;
                     qrDescontos.Open;

                     Dfm_Splash1.Gauge1.Progress := 3;
                     wwQ_UFED.Open;

                     Dfm_Splash1.Gauge1.Progress := 4;
                     wwQ_VEND.Open;

                     Dfm_Splash1.Gauge1.Progress := 5;
                     wwQ_REPR.Open;

                     Dfm_Splash1.Gauge1.Progress := 6;
                     wwQ_TRAN.Open;

                     Dfm_Splash1.Gauge1.Progress := 7;
                     wwQ_CTCO.Open;

                     Dfm_Splash1.Gauge1.Progress := 8;
                     wwQ_CGER.Open;

//                     Dfm_Splash1.Gauge1.Progress := 9;
//                     wwQ_BANC.Open;

                     Dfm_Splash1.Gauge1.Progress := 9;
                     Q_CDPG.Open;

                     Dfm_Splash1.Gauge1.Progress := 10;
                     Q_Port.Open;

                     Dfm_Splash1.Gauge1.Progress := 11;
                     Q_OBCL.Open;

                     Dfm_Splash1.Gauge1.Progress := 12;

                      Q_CLIE.Close ;
                      Q_CLIE.Sql.Clear ;
                      Q_CLIE.Sql.Add('SELECT ' ) ;
                      Q_CLIE.Sql.Add('CLI_APELIDO,CLI_RAZA,CLI_INIC,CLI_PESS,CLI_CGC,CLI_INSC, ' ) ;
                      Q_CLIE.Sql.Add('CLI_RAAT,CLI_VEND,CLI_REPR,CLI_TRAN,CLI_CONT,CLI_CGER, ' ) ;
                      Q_CLIE.Sql.Add('CLI_FEND,CLI_FMUN,CLI_FEST,CLI_FCEP,CLI_FTEL,CLI_FTE2, ' ) ;
                      Q_CLIE.Sql.Add('CLI_FFAX,CLI_FEMA,CLI_FCON,CPD_CODI,CLI_CONTICM,CLI_CANA, ' ) ;
                      Q_CLIE.Sql.Add('CLI_CEND,CLI_CMUN,CLI_CEST,CLI_CCEP,CLI_CTEL,CLI_CTE2, ' ) ;
                      Q_CLIE.Sql.Add('CLI_CFAX,CLI_CEMA,CLI_CCON,CLI_LOCCOB,CLI_SCRE,CLI_LCRE, ' ) ;
                      Q_CLIE.Sql.Add('CLI_UCOM,CLI_MCOM,CLI_VUCO,CLI_VUCD, CLI_VMCO, CLI_VMCD,CLI_ESPE, ' ) ;
                      Q_CLIE.Sql.Add('CLI_ATRA, CLI_VATR,CLI_CODI,CLI_CBAN,CLI_FILI,CLI_ACRES,Observacoes, ' ) ;
                      Q_CLIE.Sql.Add('CLI_DTIN' ) ;
                      Q_CLIE.Sql.Add(' FROM CPACLIE ' ) ;
                      Q_CLIE.Sql.Add(' WHERE CLI_CODI = ' + CodigoCliente ) ;
                      Q_CLIE.Sql.Add(' ORDER BY CLI_APELIDO ' ) ;
                      Q_CLIE.Open;

                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                       //// Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
            //// If Self.Tag = 2 Then Self.Close;
        ////End;

end;

procedure TFClientes.Q_CLIEAfterOpen(DataSet: TDataSet);
begin

   RAZAOSOCIAL := Q_CLIECLI_RAZA.AsString;

end;

procedure TFClientes.btnAddClick(Sender: TObject);
begin
  Fonte.BtnClick(nbInsert);
end;

procedure TFClientes.btnAtualizarClick(Sender: TObject);
begin
  Fonte.BtnClick(nbRefresh);
end;

procedure TFClientes.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFClientes.btnDeleteClick(Sender: TObject);
begin
   Fonte.BtnClick(nbDelete);
end;

procedure TFClientes.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFClientes.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFClientes.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFClientes.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  Fonte.BtnClick(nbPost);
end;

procedure TFClientes.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

procedure TFClientes.qrDescontosClienteAfterPost(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([qrDescontosCliente]);
      qrDescontosCliente.Close;
      qrDescontosCliente.Open;
    end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
end;

procedure TFClientes.qrDescontosClienteBeforePost(DataSet: TDataSet);
begin
        qrDescontosClienteCLI_CODI.Value := Q_CLIECLI_CODI.Value;
end;

procedure TFClientes.BDE_FANTASIAKeyPress(Sender: TObject; var Key: Char);
begin
       If Key = #39 then begin
          showmessage('Não é permitida a inclusão do caracter apóstrofo, favor substituí-lo ');
          BDE_FANTASIA.Text := '';
       end;

end;

procedure TFClientes.DBE_CLI_RAZAKeyPress(Sender: TObject; var Key: Char);
begin
       If Key = #39 then begin
          showmessage('Não é permitida a inclusão do caracter apóstrofo, favor substituí-lo ');
          DBE_CLI_RAZA.Text := '';
       end;

end;

end.

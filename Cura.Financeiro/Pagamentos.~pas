unit Pagamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Tabnotbk, DBCtrls, Buttons, StdCtrls, ExtCtrls, Db, DBTables,
  Wwquery, Wwdatsrc, Mask, wwdbedit, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  Wwtable, Wwdotdot, Wwdbcomb, wwstorep, DBGrids, ADODB, wwSpeedButton,
  wwDBNavigator, wwclearpanel;

type
  TFPagamentos = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    SBT_REFR: TSpeedButton;
    Fonte: TDBNavigator;
    DS_Pagtos: TwwDataSource;
    Q_Pagtos: TwwQuery;
    Q_CONT: TwwQuery;
    Q_CTCO: TwwQuery;
    Q_FORN: TwwQuery;
    Q_BANC: TwwQuery;
    Q_MOED: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CTCOCTC_CODI: TStringField;
    Q_CTCOCTC_DESC: TStringField;
    Q_MOEDMOE_SIGL: TStringField;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    UPD_Pagtos: TUpdateSQL;
    Q_Det: TwwQuery;
    DS_Det: TwwDataSource;
    Q_Dife: TwwQuery;
    Q_DifeDIF_CODI: TStringField;
    Q_DifeDIF_DESC: TStringField;
    UPD_Det: TUpdateSQL;
    Q_Bx: TwwQuery;
    DS_Bx: TwwDataSource;
    UPD_Bx: TUpdateSQL;
    Q_BxNumero: TIntegerField;
    Q_BxSequencia: TIntegerField;
    Q_BxData: TDateTimeField;
    Q_BxDocumento: TStringField;
    Q_BxAbater: TFloatField;
    Q_BxDescAcresc: TFloatField;
    Q_BxValorPago: TFloatField;
    Q_BxDataDebito: TDateTimeField;
    Q_BxTipoBaixa: TStringField;
    Q_BxHistorico: TStringField;
    Q_BxBancoConta: TStringField;
    Panel8: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    Label22: TLabel;
    Label26: TLabel;
    wwDBGrid1: TwwDBGrid;
    Panel9: TPanel;
    LBL_STATUS: TLabel;
    DBLC_REC_FILI: TwwDBLookupCombo;
    Label31: TLabel;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit4: TwwDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label39: TLabel;
    Label15: TLabel;
    Label40: TLabel;
    Panel4: TPanel;
    Panel11: TPanel;
    wwDBEdit17: TwwDBEdit;
    Label27: TLabel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Label24: TLabel;
    Label25: TLabel;
    wwDBEdit18: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label23: TLabel;
    wwDBEdit10: TwwDBEdit;
    TBN_BAIX: TTabbedNotebook;
    Panel6: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label35: TLabel;
    Panel7: TPanel;
    wwDBEdit25: TwwDBEdit;
    Label32: TLabel;
    wwDBEdit28: TwwDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    wwDBEdit29: TwwDBEdit;
    wwDBEdit26: TwwDBEdit;
    Label34: TLabel;
    wwDBEdit23: TwwDBEdit;
    wwDBEdit30: TwwDBEdit;
    Label30: TLabel;
    Label38: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Label33: TLabel;
    Label41: TLabel;
    Panel12: TPanel;
    wwDBGrid2: TwwDBGrid;
    wwDBEdit20: TwwDBEdit;
    Q_PagtosNumero: TIntegerField;
    Q_PagtosDocumento: TStringField;
    Q_PagtosFornecedor: TStringField;
    Q_PagtosRazao: TStringField;
    Q_PagtosContaGerencial: TStringField;
    Q_PagtosValorTitulo: TFloatField;
    Q_PagtosDescAcresc: TFloatField;
    Q_PagtosValorLiquido: TFloatField;
    Q_PagtosVencimento: TDateTimeField;
    Q_PagtosBancoConta: TStringField;
    Q_PagtosEmissao: TDateTimeField;
    Q_PagtosMoeda: TStringField;
    Q_PagtosDataMoeda: TDateTimeField;
    Q_PagtosMoedaOriginal: TStringField;
    Q_PagtosDataMoedaOriginal: TDateTimeField;
    Q_PagtosValorOriginal: TFloatField;
    Q_PagtosVencimentoPrevisto: TDateTimeField;
    Q_PagtosFlag: TStringField;
    Q_PagtosSituacao: TStringField;
    Q_PagtosHistorico: TStringField;
    TBN_PAGA: TTabbedNotebook;
    Q_PagtosSaldo: TFloatField;
    Q_AUXI: TwwQuery;
    STP_VERUTIL: TStoredProc;
    ds_ccus: TwwDataSource;
    Q_DBX: TwwQuery;
    Panel13: TPanel;
    Panel14: TPanel;
    Label8: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DS_DBX: TwwDataSource;
    UPD_DBX: TUpdateSQL;
    Q_DBXNumero: TIntegerField;
    Q_DBXSequenciaBx: TIntegerField;
    Q_DBXSequencia: TIntegerField;
    Q_DBXCodDescAcres: TStringField;
    Q_DBXData: TDateTimeField;
    Q_DBXDescAcresc: TFloatField;
    Q_DBXHistorico: TStringField;
    DBE_IRE_VDIF2: TDBEdit;
    Label44: TLabel;
    DBLC_IDR_DIFE: TwwDBLookupCombo;
    Label45: TLabel;
    DBE_IDR_VALO: TDBEdit;
    DBE_IDR_HIST: TDBEdit;
    Label46: TLabel;
    DBE_IDR_DATA: TDBEdit;
    Label47: TLabel;
    Panel15: TPanel;
    wwDBGrid3: TwwDBGrid;
    DBE_REC_CODI2: TDBEdit;
    DBE_REC_DESC2: TDBEdit;
    DBE_REC_CODI3: TDBEdit;
    DBT_IRE_VTOT: TDBText;
    Q_PagtosFilial: TStringField;
    Q_DifeDIF_SINAL: TStringField;
    Q_MOEDMOE_NOME: TStringField;
    Q_FORNFOR_CGER: TStringField;
    Q_DetNumero: TIntegerField;
    Q_DetSequencia: TIntegerField;
    Q_DetCodDescAcres: TStringField;
    Q_DetData: TDateTimeField;
    Q_DetDescAcresc: TFloatField;
    Q_DetHistorico: TStringField;
    SpeedButton1: TSpeedButton;
    Panel16: TPanel;
    Label73: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    STP_PAGSALD: TStoredProc;
    STP_ATUASALD: TStoredProc;
    Label48: TLabel;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    Q_FILI: TwwQuery;
    Q_PARA: TwwQuery;
    Q_PARAPAR_MOED: TStringField;
    Q_PARAFilialPaga: TStringField;
    Q_PagtosConferencia: TStringField;
    SpeedButton2: TSpeedButton;
    Q_RECEB: TwwQuery;
    Q_RECEBRecNf_Sequencia: TIntegerField;
    Q_RECEBOFOR_CODI: TStringField;
    Q_RECEBLOC_CODI: TStringField;
    Q_RECEBPc_Sequencia: TIntegerField;
    Q_RECEBRecNf_NumNF: TStringField;
    Q_RECEBCDP_CODI: TStringField;
    Q_RECEBRecNf_DtEmissao: TDateTimeField;
    Q_RECEBRecNf_DtRecebimento: TDateTimeField;
    Q_RECEBORecNf_CFO: TStringField;
    Q_RECEBRecNf_VlrTotalMerc: TFloatField;
    Q_RECEBRecNf_VlrFrete: TFloatField;
    Q_RECEBRecNf_VlrSeguro: TFloatField;
    Q_RECEBRecNf_VlrDespesas: TFloatField;
    Q_RECEBRecNf_BaseCalcICMS: TFloatField;
    Q_RECEBRecNf_ValorICMS: TFloatField;
    Q_RECEBRecNf_AliqICMS: TFloatField;
    Q_RECEBRecNf_BaseCalcIPI: TFloatField;
    Q_RECEBRecNf_ValorIPI: TFloatField;
    Q_RECEBRecNf_TotalNF: TFloatField;
    Q_RECEBRecNf_CodTribCMS: TStringField;
    Q_RECEBRecNf_CodTribIPI: TStringField;
    Q_RECEBRecNf_SerieNF: TStringField;
    Q_RECEBRecNf_Procedencia: TStringField;
    Q_RECEBRecNf_Recebedor: TStringField;
    Q_RECEBRecNf_TipoFrete: TStringField;
    Q_RECEBRecNf_Confirma: TStringField;
    Q_RECEBTipoEntrada: TStringField;
    Q_RECEBRecNf_CFO: TStringField;
    Q_RECEBFOR_CODI: TStringField;
    Q_RECEBRecNf_TipoEntrada: TStringField;
    Q_RECEBCLI_CODI: TIntegerField;
    Q_RECEBRecNf_NossaNf: TStringField;
    Q_RECEBPFatura: TIntegerField;
    Q_RECEBNFatura: TIntegerField;
    Q_RECEBPFat: TStringField;
    DS_RECEB: TwwDataSource;
    Panel17: TPanel;
    wwDBGrid5: TwwDBGrid;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    Label14: TLabel;
    Label16: TLabel;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBEdit7: TwwDBEdit;
    Label12: TLabel;
    Label18: TLabel;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Label19: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBE_IRE_SEQU2: TDBEdit;
    DBE_REC_CODI4: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label52: TLabel;
    cboFluxo: TwwDBComboBox;
    Q_PagtosFlag_Fluxo: TStringField;
    cboSt: TwwDBComboBox;
    Label53: TLabel;
    Q_PagtosTp_Pag: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    Label54: TLabel;
    Q_BxForma_Pag: TStringField;
    DS_FORN: TwwDataSource;
    Label55: TLabel;
    lbConta: TLabel;
    Q_FORNNUMERO: TIntegerField;
    Q_FORNAGENCIA: TStringField;
    Q_FORNCONTA: TStringField;
    Panel18: TPanel;
    Label57: TLabel;
    DBEdit3: TDBEdit;
    Label58: TLabel;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_CONTG: TwwQuery;
    Q_CONTGPACON_ID: TAutoIncField;
    Q_CONTGNUMERO: TIntegerField;
    Q_CONTGCON_CODI: TStringField;
    Q_CONTGPERCENTUAL: TIntegerField;
    Q_CONTGVALOR: TFloatField;
    Q_CONTGCON_DESC: TStringField;
    DS_CONTG: TwwDataSource;
    wwDBGrid4: TwwDBGrid;
    Q_AUX: TwwQuery;
    Label59: TLabel;
    DBEdit4: TDBEdit;
    wwDBGrid6: TwwDBGrid;
    Label60: TLabel;
    wwDBLookupCombo9: TwwDBLookupCombo;
    Label61: TLabel;
    wwDBEdit16: TwwDBEdit;
    UPD_CONTG: TUpdateSQL;
    Q_CONTCCON_CODI: TStringField;
    Q_CONTCCON_DESC: TStringField;
    Q_AUX1: TwwQuery;
    DS_AUX1: TwwDataSource;
    Q_AUX1SOMAPERC: TIntegerField;
    Q_SQL: TwwQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    Q_AUX1NUMERO: TIntegerField;
    Q_SOMA: TwwQuery;
    Q_SOMAVALOR: TFloatField;
    Q_SOMANUMERO: TIntegerField;
    Q_AUX1VALOR: TFloatField;
    Panel19: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBGrid7: TwwDBGrid;
    Label64: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Q_CONTC: TwwQuery;
    Q_CONTB: TwwQuery;
    DS_CONTB: TwwDataSource;
    Q_CONTBIPACON_ID: TAutoIncField;
    Q_CONTBNUMERO: TIntegerField;
    Q_CONTBCON_CODI: TStringField;
    Q_CONTBVALOR: TFloatField;
    Q_CONTBCON_DESC: TStringField;
    Q_CONTBSEQUENCIA: TIntegerField;
    wwDBEdit19: TwwDBEdit;
    Label65: TLabel;
    wwDBEdit21: TwwDBEdit;
    Label66: TLabel;
    Q_PagtosBARRAS: TStringField;
    btExc: TSpeedButton;
    Panel10: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    SpeedButton9: TSpeedButton;
    Q_deleta: TwwQuery;
    Q_auxiliar: TwwQuery;
    Q_auxiliar1: TwwQuery;
    SpeedButton10: TSpeedButton;
    MaskEdit2: TMaskEdit;
    CheckBox1: TCheckBox;
    Q_AUX2: TwwQuery;
    STP_INSERE_CPAMOVI_DEBCRED: TwwStoredProc;
    Q_AUX8: TwwQuery;
    DataSource1: TDataSource;
    Q_FORN2: TwwQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    pnl1: TPanel;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAtualizar: TSpeedButton;
    ListBox3: TListBox;
    ListBox2: TListBox;
    SpeedButton11: TSpeedButton;
    qrBancoForn: TwwQuery;
    qrBancoFornban_agen: TStringField;
    qrBancoFornban_conta: TStringField;
    Q_Pagtosvalor_dolar: TFloatField;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Q_Pagtosvalor_dolar_real: TFloatField;
    Label67: TLabel;
    DBEdit8: TDBEdit;
    qrAux: TwwQuery;
    Q_Bxtx_dolar: TFloatField;
    Q_Bxvalor_dolar: TFloatField;
    Label68: TLabel;
    DBEdit9: TDBEdit;
    Label69: TLabel;
    DBEdit10: TDBEdit;
    qrDescontoS: TwwQuery;
    qrGeraDescontos: TwwQuery;
    btnGeraPagamentos: TButton;
    qrGeraPagamentos: TwwQuery;
    Q_DetCP: TIntegerField;
    ds_dife: TDataSource;
    Q_DifeDIF_FORN: TStringField;
    qrAux2: TwwQuery;
    edtCompetencia: TMaskEdit;
    Label70: TLabel;
    Q_PagtosDT_COMPETENCIA: TDateTimeField;
    qrConta: TwwQuery;
    qrContaFB_ID: TAutoIncField;
    qrContaBAN_ID: TIntegerField;
    qrContaBAN_AGEN: TStringField;
    qrContaBAN_CONTA: TStringField;
    qrContaFOR_CODI: TStringField;
    qrContaPADRAOSN: TStringField;
    qrContaBAN_DIGITOCC: TStringField;
    wwDBLookupCombo11: TwwDBLookupCombo;
    Label56: TLabel;
    qrCentroCusto: TwwQuery;
    Q_PagtosIdCentroCusto: TIntegerField;
    qrCentroCusto2: TADOQuery;
    qrCentroCusto2CC_Desc: TStringField;
    qrCentroCusto2CC_ID: TAutoIncField;
    DBNavigator1: TDBNavigator;
    Label71: TLabel;
    cboCentroCusto: TwwDBLookupCombo;
    Label72: TLabel;
    DBEdit11: TDBEdit;
    wwDBGrid8: TwwDBGrid;
    qrListaCentroCusto: TADOQuery;
    qrListaCentroCustoCC_Desc: TStringField;
    qrListaCentroCustoPercentual: TBCDField;
    qrListaCentroCustoId: TAutoIncField;
    qrListaCentroCustoIdCentroCusto: TIntegerField;
    qrListaCentroCustoNumero: TIntegerField;
    dsListaCentroCusto: TDataSource;
    qrDespesas: TADOQuery;
    qrDespesasIdDespesa: TAutoIncField;
    qrDespesasNome: TStringField;
    wwDBLookupCombo12: TwwDBLookupCombo;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    dsPgtoDespesas: TDataSource;
    qrPgtoDespesas: TADOQuery;
    qrPgtoDespesasId: TAutoIncField;
    qrPgtoDespesasNumero: TIntegerField;
    qrPgtoDespesasIdDespesa: TIntegerField;
    qrPgtoDespesasValor: TBCDField;
    qrPgtoDespesasNOME: TStringField;
    wwDBGrid9: TwwDBGrid;
    Label74: TLabel;
    DBEdit12: TDBEdit;
    Label75: TLabel;
    Q_FORNIdCentroCusto: TIntegerField;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoFinancSN: TStringField;
    procedure Q_PagtosAfterDelete(DataSet: TDataSet);
    procedure Q_PagtosAfterPost(DataSet: TDataSet);
    procedure Q_PagtosBeforeDelete(DataSet: TDataSet);
    procedure Q_DetAfterDelete(DataSet: TDataSet);
    procedure Q_DetAfterPost(DataSet: TDataSet);
    procedure Q_DetNewRecord(DataSet: TDataSet);
    procedure Q_BxNewRecord(DataSet: TDataSet);
    procedure Q_BxAfterDelete(DataSet: TDataSet);
    procedure Q_BxAfterPost(DataSet: TDataSet);
    procedure Q_BxBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_PagtosBeforePost(DataSet: TDataSet);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure Q_BxBeforePost(DataSet: TDataSet);
    procedure Q_DetBeforePost(DataSet: TDataSet);
    procedure wwDBEdit25Exit(Sender: TObject);
    procedure DS_BxStateChange(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
    procedure wwDBEdit26Exit(Sender: TObject);
    procedure TBN_PAGAChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure DS_PagtosStateChange(Sender: TObject);
    procedure DS_DetStateChange(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure Q_DBXAfterDelete(DataSet: TDataSet);
    procedure Q_DBXAfterPost(DataSet: TDataSet);
    procedure Q_DBXNewRecord(DataSet: TDataSet);
    procedure TBN_BAIXChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure Q_DBXBeforePost(DataSet: TDataSet);
    procedure Q_PagtosNewRecord(DataSet: TDataSet);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FonteBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit29Exit(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure DBLC_IDR_DIFEExit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TBN_BAIXClick(Sender: TObject);
    procedure TBN_PAGAClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBE_IDR_VALOExit(Sender: TObject);
    procedure Q_BxBeforeInsert(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Q_CONTGAfterDelete(DataSet: TDataSet);
    procedure Q_CONTGAfterPost(DataSet: TDataSet);
    procedure Q_CONTGBeforeDelete(DataSet: TDataSet);
    procedure Q_CONTGNewRecord(DataSet: TDataSet);
    procedure btExcClick(Sender: TObject);
    procedure Q_PagtosAfterScroll(DataSet: TDataSet);
    procedure wwDBEdit28Exit(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure wwDBEdit21Exit(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Q_PagtosAfterOpen(DataSet: TDataSet);
    procedure DBEdit10Exit(Sender: TObject);
    procedure btnGeraPagamentosClick(Sender: TObject);
    procedure DS_DetDataChange(Sender: TObject; Field: TField);
    procedure ds_difeDataChange(Sender: TObject; Field: TField);
    procedure edtCompetenciaEnter(Sender: TObject);
    procedure edtCompetenciaChange(Sender: TObject);
    procedure DS_PagtosDataChange(Sender: TObject; Field: TField);
    procedure qrListaCentroCustoBeforePost(DataSet: TDataSet);
    procedure qrListaCentroCustoAfterPost(DataSet: TDataSet);
    procedure qrPgtoDespesasBeforePost(DataSet: TDataSet);
    procedure qrPgtoDespesasAfterPost(DataSet: TDataSet);
  private
    Procedure Repete_Lancamento;
    procedure Mostra_conversao(status : Integer);
  public
    { Public declarations }
    Strbanco : string ;
  end;

var
  FPagamentos: TFPagamentos;
  FECHAR: BOOLEAN;
  NumeroBx:String;
  SeqBx:String;
  codipaga:string;
  EMISSAO_DATA  : STring ;

  NumPgto : string;

  CP : Integer;
  
  dataEMISSAO  : string;  
  mesEMISSAO : integer;
  anoEMISSAO : integer;
implementation
uses CPPMENU, PesqPagtos , Unt_Splash1, U_FUNCOES ;
{$R *.DFM}


procedure TFPagamentos.Q_PagtosAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_Pagtos]);
    qrAux2.Params[0].AsInteger := CP;
    qrAux2.ExecSQL;
  except
    Q_Pagtos.RevertRecord;
  end;

end;

procedure TFPagamentos.Q_PagtosAfterPost(DataSet: TDataSet);
var   iCodigo : Integer;
     sCodigo : String ;
     SQL: STRING;
begin
  SCodigo := wwdbedit1.text ;
  wwdbedit1.enabled := false ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Pagtos]);
  end;
  except
    begin
      Q_Pagtos.RevertRecord;
    end;
  end;

  try
    STP_PAGSALD.ParamByName( '@Codigo' ).Value := strtoint(sCodigo) ;

    IF DBRadioGroup1.Value = 'T'  then
      STP_PAGSALD.ParamByName( '@TIPO' ).Value := 'T'
     else
      STP_PAGSALD.ParamByName( '@TIPO' ).Value := 'VAZIO'   ;

    STP_PAGSALD.ExecProc;
  finally
  end;

  Q_Pagtos.Close;
  Q_Pagtos.Sql.Clear ;
  Q_Pagtos.Sql.Add('select * from cpapaga where Numero = ' + SCodigo ) ;
  Q_pagtos.Open ;
  wwdbedit11.Enabled := false;
  wwdbedit7.Enabled :=false;

   Q_AUX.SQL.CLEAR;
   Q_AUX.SQL.ADD('DELETE FROM  CPAPACON WHERE NUMERO = ' + Q_PagtosNumero.AsString );
   Q_AUX.EXECSQL;

   //gera os centros de custo do fornecedor
   Q_AUX.SQL.CLEAR;
   Q_AUX.SQL.ADD('EXEC STP_GeraCentroCustoPagamento @Numero = ' + Q_PagtosNumero.AsString + ', @FOR_CODI = ' + QuotedStr(Q_PagtosFornecedor.AsString));
   Q_AUX.EXECSQL;

    qrListaCentroCusto.Close;
  qrListaCentroCusto.Parameters[0].Value := Q_PagtosNumero.AsInteger;
  qrListaCentroCusto.Open;

   Q_AUX.CLOSE;
   Q_AUX.SQL.CLEAR;
   Q_AUX.SQL.ADD('SELECT COUNT(PACON_ID) HA FROM  CPAPACON WHERE NUMERO = ' + Q_PagtosNumero.AsString );


    Q_AUX.OPEN;


    IF Q_AUX.FIELDBYNAME('HA').ASSTRING = '0'  THEN BEGIN

       SQL:= ' INSERT  CPAPACON   ' +
             '	        (NUMERO,    ' +
	     '          CON_CODI,      ' +
	     '          PERCENTUAL,     ' +
	     '          VALOR)           ' +
             ' SELECT 	B.NUMERO,           ' +
             '	        A.CON_CODI_DEST,     ' +
             '	        A.PERCENTUAL,                ' +
             ' 	        B.VALORTITULO * A.PERCENTUAL / 100 VALOR   ' +
             ' FROM 	CPACONTG A,                    ' +
             '	        CPAPAGA  B                           ' +
             ' WHERE    A.CON_CODI_ORIG = B.CONTAGERENCIAL    ' ;

           IF  Q_PagtosNumero.AsString <> '' THEN BEGIN

             SQL:= SQL + ' AND     B.NUMERO = ' + Q_PagtosNumero.AsString;

             q_aux.close;
             Q_AUX.SQL.CLEAR;
             Q_aux.SQL.ADD(SQL);
             Q_AUX.ExecSQL;

            END;
     END;
     if wwDBLookupCombo4.Text = Q_PARAPAR_MOED.asstring then
        Mostra_conversao(2)
     else
        Mostra_conversao(1);



end;

procedure TFPagamentos.Q_PagtosBeforeDelete(DataSet: TDataSet);
begin
  {
  while not Q_Det.eof do Q_Det.delete ;
  while not Q_BX.eof do begin
     while not Q_DBX.eof do Q_DBX.delete ;
     Q_BX.delete ;
  end;
    }

  /////////// MIGUEL /////////////////////
  CP := Q_PagtosNumero.Value;

  Q_BX.Last;
  IF  Q_Bx.RecordCount > 0 then
  begin
     MessageBox(Self.Handle, 'Este pagamento possui baixas favor verificar!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
  end;
end;

procedure TFPagamentos.Q_DetAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_Det]);
  except
    Q_Det.RevertRecord;
  end;

end;

procedure TFPagamentos.Q_DetAfterPost(DataSet: TDataSet);
var sCodigo : string ;
begin
 SCodigo := wwdbedit1.text ;
 
   if Q_DetDescAcresc.Value = 0 then
   begin
     MessageDlg('Valor tem que ser informado',mtInformation,[mbOk], 0);
     wwDBEdit10.SetFocus;
     abort;
   end;


 try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Det]);
  end;
  except
    begin

      Q_Det.RevertRecord;
    end;
  end;
  Q_Det.Close;
  Q_Det.Open;
  Q_Det.locate('Numero',sCodigo,[loCaseInsensitive]);
end;

procedure TFPagamentos.Q_DetNewRecord(DataSet: TDataSet);
begin
  Q_DETNumero.AsInteger := Q_PagtosNumero.AsInteger;
end;

procedure TFPagamentos.Q_BxNewRecord(DataSet: TDataSet);
begin
  Q_BxNumero.AsInteger := Q_PagtosNumero.AsInteger;
end;

procedure TFPagamentos.Q_BxAfterDelete(DataSet: TDataSet);
var     SQL :String;

begin
  try

    FMenu.DATABASE1.ApplyUpdates([Q_Bx]);
  except
    Q_Bx.RevertRecord;
  end;
  Q_Bx.close;
  Q_Bx.Open;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := StrBanco;
    STP_ATUASALD.ExecProc;
  finally
  end;
  strBanco := '';

  SQL := ' DELETE FROM CPAIPACON WHERE NUMERO = ' + NumeroBx +
         ' AND         SEQUENCIA = ' + SeqBx;
  Q_AUX.SQL.CLEAR;
  Q_AUX.SQL.ADD(SQL);
  If (NumeroBx <> '') and (SeqBx <> '') then
          Q_AUX.EXECSQL;

  Q_PAGTOS.Close ;
  Q_PAGTOS.Open  ;
end;

procedure TFPagamentos.Q_BxAfterPost(DataSet: TDataSet);
var SCodigo : string ;
    StrBanco : string ;
    SQL: STRING;
begin
try

  Q_FORN.locate('FOR_CODI',wwDBLookupCombo1.text,[loCaseInsensitive]);
  sCodigo := DBE_REC_CODI3.text ;
  StrBanco := Q_BxBancoConta.asstring ;
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Bx]);
  end;
  except
    begin
      Q_Bx.RevertRecord;
    end;
  end;

   IF (wwDBEdit28.text = '  /  /    ') OR (wwDBEdit28.text = '') then  begin
      //if (Q_BX.State = dsEdit) then begin
         //Q_BxDataDebito.asstring := '' ;

         Q_AUX.SQL.CLEAR;
         Q_AUX.SQL.ADD(' delete from cpamovi where mov_sequ = ' + Q_BxSequencia.AsString );
         Q_AUX.sql.Add('and MOV_SINAL = ''-'' ');
         Q_AUX.EXECSQL;
     // end ;
   end ;


  try
    STP_PAGSALD.ParamByName( '@Codigo' ).Value := Q_PAgtosNumero.asinteger  ;

    IF DBRadioGroup1.Value = 'T'  then
      STP_PAGSALD.ParamByName( '@TIPO' ).Value := 'T'
     else
      STP_PAGSALD.ParamByName( '@TIPO' ).Value := 'VAZIO'   ;

    STP_PAGSALD.ExecProc;
  finally
  end;

  Q_Pagtos.Close;
  Q_Pagtos.Sql.Clear ;
  Q_Pagtos.Sql.Add('select * from cpapaga where Numero = ' + SCodigo ) ;
  Q_pagtos.Open ;


  {erro aqui}

  Q_Bx.Close;
  Q_Bx.Open;
  Q_Bx.Last ;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := StrBanco ;
    STP_ATUASALD.ExecProc;
  finally
  end;
  Q_Pagtos.edit ;
  Q_PagtosConferencia.asstring := 'S' ;
  Q_Pagtos.Post ;

   Q_AUX.CLOSE;
   Q_AUX.SQL.CLEAR;
   Q_AUX.SQL.ADD('SELECT COUNT(IPACON_ID) HA FROM  CPAIPACON WHERE NUMERO = ' + Q_PagtosNumero.AsString );
   Q_AUX.OPEN;


           

        Q_aux8.Close;
        Q_aux8.Sql.Clear ;
        Q_aux8.Sql.Add('     SELECT max(sequENCIA)  as MAXSEQ ') ;
        Q_aux8.Sql.Add('     FROM   cpaipag  ') ;
        Q_aux8.Sql.Add('     WHERE  numero = ' + SCodigo ) ;
        Q_aux8.Open ;

       {
        Q_auxiliar.Close;
        Q_auxiliar.Sql.Clear ;
        Q_auxiliar.Sql.Add('     SELECT 	count(*)  as QTDE ') ;
        Q_auxiliar.Sql.Add('     FROM 	CPAMOVI A,  ') ;
        Q_auxiliar.Sql.Add('          	CPABANC B   ') ;
        Q_auxiliar.Sql.Add('     WHERE 	A.MOV_BANC = B.BAN_CODI ') ;
        Q_auxiliar.Sql.Add('     AND A.MOV_SEQU = ' + Q_aux8.fieldbyname('MAXSEQ').asstring ) ;
        Q_auxiliar.Sql.Add('     AND A.MOV_SINAL = ' + '''' + '-' + '''' ) ;
        Q_auxiliar.Open ;


        IF Q_auxiliar.fieldbyname('QTDE').asinteger = 0  then begin

            IF Q_BxDataDebito.asstring <> '' then begin

                Q_auxiliar.Close;
                Q_auxiliar.Sql.Clear ;
                Q_auxiliar.Sql.Add('select MAX(SEQUENCIA) as maior from cpaipag where Numero = ' + SCodigo ) ;
                Q_auxiliar.Open ;

                try

                STP_INSERE_CPAMOVI_DEBCRED.ParamByName('@V_NUMERO').Value :=   SCodigo ;
                STP_INSERE_CPAMOVI_DEBCRED.ParamByName('@SEQUENCIA').Value := Q_auxiliar.fieldbyname('maior').asstring ;
                STP_INSERE_CPAMOVI_DEBCRED.ExecProc;

                finally
                end;

            end ;
        end ; }



        //****************************************************************************


 {   IF Q_AUX.FIELDBYNAME('HA').ASSTRING = '0'  THEN BEGIN

       SQL:= ' INSERT  CPAIPACON  (NUMERO,  ' +
	     '	                   CON_CODI, ' +
	     '	                   VALOR)     ' +
	     '         SELECT	   A.NUMERO,    ' +
	     '	                   A.CON_CODI,    ' +
	     '                     B.VALORPAGO * A.PERCENTUAL / 100 VALORBAIXA  ' +
             '          FROM       CPAPACON A,   ' +
	     '                     CPAIPAG B    ' +
             '          WHERE      A.NUMERO = B.NUMERO ' ;

           IF  Q_PagtosNumero.AsString <> '' THEN BEGIN

             SQL:= SQL + ' AND      B.NUMERO = ' + Q_PagtosNumero.AsString;

             Q_AUX.close;
             Q_AUX.SQL.CLEAR;
             Q_aux.SQL.ADD(SQL);
             Q_AUX.ExecSQL;

            END;
     END;
    

     }
  // verificação dos lançamentos - miguel

  Q_Bx.First;
  while not Q_Bx.Eof do
  begin
        NumPgto := IntToStr(Q_BxSequencia.Value);

        Q_auxiliar.Close;
        Q_auxiliar.Sql.Clear ;
        Q_auxiliar.Sql.Add('     SELECT 	count(*)  as QTDE ') ;
        Q_auxiliar.Sql.Add('     FROM 	CPAMOVI A,  ') ;
        Q_auxiliar.Sql.Add('          	CPABANC B   ') ;
        Q_auxiliar.Sql.Add('     WHERE 	A.MOV_BANC = B.BAN_CODI ') ;
        Q_auxiliar.Sql.Add('     AND A.MOV_SEQU = ' + NumPgto ) ;
        Q_auxiliar.Sql.Add('     AND A.MOV_SINAL = ' + '''' + '-' + '''' ) ;
        Q_auxiliar.Open ;
        Q_Bx.Locate('Sequencia', NumPgto, []);

        IF Q_auxiliar.fieldbyname('QTDE').asinteger = 0  then begin


           // IF Q_BxDataDebito.asstring <> '' then
           IF Q_BxDataDebito.Text <> '' then
            begin

                Q_auxiliar.Close;
                Q_auxiliar.Sql.Clear ;
                Q_auxiliar.Sql.Add('select MAX(SEQUENCIA) as maior from cpaipag where Numero = ' + SCodigo ) ;
                Q_auxiliar.Open ;

                try

                STP_INSERE_CPAMOVI_DEBCRED.ParamByName('@V_NUMERO').Value :=   SCodigo ;
                STP_INSERE_CPAMOVI_DEBCRED.ParamByName('@SEQUENCIA').Value := NumPgto ;
                STP_INSERE_CPAMOVI_DEBCRED.ExecProc;

                finally
                end;

            end ;
        end ;

        Q_Bx.Next;        
  end;



          {
          verificamos se os valores pagos em dolares já foram pagos, e atualizamos o saldo para zero
        }
        if wwDBLookupCombo4.Text <> Q_PARAPAR_MOED.asstring then
        begin
            with qrAux do
            begin
                close;
                sql.Clear;
                sql.Add(' select case when sum(valor_DOLAR) is null  then 0 else sum(valor_DOLAR) end  as vpago from cpaipag ');
                sql.Add(' where numero = ' + Q_PagtosNumero.AsString);
                Open;
            end;

            if Q_Pagtosvalor_dolar.Value <= qrAux.FieldByName('vpago').AsFloat then
            begin
                  with qrAux do
                  begin
                      close;
                      sql.Clear;
                      sql.Add(' update cpapaga set saldo = 0 ');
                      sql.Add(' where numero = ' + Q_PagtosNumero.AsString);
                      ExecSQL;
                  end;
            end;

        end;



end;

procedure TFPagamentos.Q_BxBeforeDelete(DataSet: TDataSet);
begin
     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if FMenu.Conciliacao(Q_BxBancoConta.asstring, Q_BxData.Value) then
     begin
        MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
        Abort;
     end;

     ///////////////////////////////////////////////////////////////////////////////////////////////////////


  Strbanco := Q_BxBancoConta.asstring ;
  NumeroBx := Q_BxNumero.AsString;
  SeqBx := Q_BxSequencia.AsString;
  while not Q_DBX.eof do
  Begin
        Q_DBX.delete
  End;

end;

procedure TFPagamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var soma: Real;
begin
   TBN_BAIX.PageIndex:= 0;

        qrListaCentroCusto.Last;
     IF qrListaCentroCusto.RecordCount > 0 then
     begin
         qrListaCentroCusto.First;
         while not qrListaCentroCusto.Eof do begin
             soma := soma + qrListaCentroCustoPercentual.AsFloat;
             qrListaCentroCusto.Next;
         end;

         if soma <> 100 then begin
             ShowMessage('A soma do percentual dos centros de custo deve ser de 100%');
             Abort;
         end;


     end;



   IF FECHAR = TRUE THEN BEGIN

        if MessageDlg( 'Deseja realmente sair ?',
           mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
            Q_pagtos.close;
            Q_det.close;
            Q_Bx.close;
            Q_cont.close;
            Q_ctco.close;
            Q_Forn.close;
            Q_banc.close;
            Q_PARA.close;
            Q_moed.close;
            Q_Dife.close;
            Q_dBx.close;
            Q_FILI.Close;
            Q_FORN2.Close;

            action:=cafree;
        end
        else
        abort;
   END;
end;

procedure TFPagamentos.FormCreate(Sender: TObject);
var SQLL:String;
begin

  SQLL :=
  'SELECT 		CASE WHEN (CAST(GETDATE() AS FLOAT) - 38607 < 3) THEN 1 '+
  '			ELSE 0 END RES ';

  Q_AUX.SQL.CLEAR;
  Q_AUX.SQL.ADD(SQLL);
  Q_AUX.OPEN;

  If Q_AUX.FieldByName('RES').AsinteGer = 1 then
        btExc.Visible := True
  Else
        btExc.Visible := False;  

  Q_CONTC.OPEN;
  FECHAR:= FALSE;
  
  TBN_Paga.OnChange  := nil;
  TBN_BAIX.OnChange  := nil;
  TBN_Paga.PageIndex := 0;
  TBN_BAIX.PageIndex := 0;
  TBN_Paga.OnChange  := TBN_PagaChange;
  TBN_BAIX.OnChange  := TBN_BAIXChange;

    ///If Self.Tag = 0 Then
        ///Begin

             ////Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 12;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     Q_cont.open;
                     Dfm_Splash1.Gauge1.Progress := 2;
                     Q_ctco.open;
                     Dfm_Splash1.Gauge1.Progress := 3;
                     Q_Forn.Open;
                     Dfm_Splash1.Gauge1.Progress := 4;
                     Q_banc.open;
                     Dfm_Splash1.Gauge1.Progress := 5;
                     Q_moed.open;
                     Dfm_Splash1.Gauge1.Progress := 6;
                     Q_Dife.open;
                     Dfm_Splash1.Gauge1.Progress := 7  ;
                     Q_FILI.OPEN;
                     Dfm_Splash1.Gauge1.Progress := 8;
                     Q_PARA.open;
                     Dfm_Splash1.Gauge1.Progress := 9;
                     Q_Bx.open;
                     Dfm_Splash1.Gauge1.Progress := 10;
                     Q_DBx.open;
                     Dfm_Splash1.Gauge1.Progress := 11;
                     Q_det.open;
                     Dfm_Splash1.Gauge1.Progress := 12   ;    {}

                     Q_PAGTOS.Sql.Clear ;
                     Q_PAGTOS.Sql.Add(' select * from cpapaga where Numero = ' + gs_paga) ;
                     Q_PAGTOS.Open ;

                     /////if gs_paga = '0' then Q_Pagtos.insert ;


                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        ////Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
             ////If Self.Tag = 2 Then Self.Close;
        ////End;




       Q_FORN2.OPEN;

       //evita que entre no modo edit ao abrir o form por causa da data de competencia
       if Q_Pagtos.State = dsEdit then
          Q_Pagtos.Cancel;

       qrCentroCusto2.Open;
       qrDespesas.Open;

        qrPgtoDespesas.close;
       qrPgtoDespesas.Parameters[0].Value := Q_PagtosNumero.AsInteger;
       qrPgtoDespesas.Open;

       qrListaCentroCusto.close;
       qrListaCentroCusto.Parameters[0].Value := Q_PagtosNumero.AsInteger;
       qrListaCentroCusto.Open;

end;

procedure TFPagamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
//    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;


procedure TFPagamentos.SBT_SAIRClick(Sender: TObject);

var rValor : real;
var sMensagem : string[ 150 ];
var bOK : boolean;     { Indica se pode fechar o form ou não }
Var SQL:String;
begin
  bOK := True;
  if TBN_Paga.PageIndex = 1 then
  begin
    rValor := 0;
    if Q_Pagtosnumero.AsString <> '' then begin
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT ROUND(SUM(DescAcresc),2) as valor FROM CPADPAG WHERE numero = '+Q_Pagtosnumero.AsString+'' );
          Open;
          rValor := fieldbyname('valor').AsFloat;
        end;
    end ;

        Q_AUX2.close ;
        Q_AUX2.sql.Clear;
        Q_AUX2.SQL.Add( 'SELECT round(DescAcresc,2) as XVALOR from CPAPAGA ' ) ;
        Q_AUX2.SQL.Add( 'where Numero  =' +Q_Pagtosnumero.AsString );
        Q_AUX2.open ;

    ///if Q_PagtosDescAcresc.Value <> rValor then
    if Q_AUX2.fieldbyname('XVALOR').asfloat <> rValor then
    begin
      sMensagem := 'Valor do Desconto/Acréscimo não confere com o Detalhamento.';
      sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
      sMensagem := sMensagem + FloatToStr( rValor );
      if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
      begin
        Fonte.DataSource := DS_Pagtos;
        Fonte.BtnClick( nbEdit );
        Q_PagtosDescAcresc.Value := StrToFloat(FormatFloat('#######0.0000', rValor));
        Fonte.BtnClick( nbPost );
        FPagamentos.Close;
      end
      else
        bOK := False;
    end;
  end;

   Q_AUX1.CLOSE;
   Q_AUX1.OPEN;

  if not bOK then
  begin
    SBT_SAIR.Down := False;
    Fonte.DataSource := DS_Det;
  end
  else IF not Q_AUX1.Eof  THEN begin
        If MessageDlg('Há Rateios para Contas Gerenciais que não completam 100%, caso escolha por sair, estes rateios serão apagados. Deseja Prosseguir?',
           MtError,[mbYes,mbNo],0) = mrYes then
           Begin
             SQL := ' DELETE FROM CPAPACON WHERE NUMERO IN ' +
             ' (SELECT		NUMERO ' +
             ' FROM		CPAPACON ' +
             ' GROUP BY	NUMERO  ' +
             ' HAVING		SUM(PERCENTUAL) <> 100 OR SUM(PERCENTUAL) IS NULL) ';

             Q_SQL.SQL.CLEAR;
             Q_SQL.SQL.ADD(SQL);
             Q_SQL.EXECSQL;

             FPagamentos.Close;
           END;
  END ELSE
          FPagamentos.Close;

end;

procedure TFPagamentos.Q_PagtosBeforePost(DataSet: TDataSet);
var   iCodigo : Integer;
     sCodigo : String ;
     Obj_Consulta:TwwQuery;
begin

  Q_PagtosDT_COMPETENCIA.Value := StrToDate('01/' + edtCompetencia.Text);

  if Q_Pagtos.State = dsInsert then begin
     Obj_Consulta:=TwwQuery.Create(Self);
     Obj_Consulta.DataBaseName:='Financeiro';
     Obj_Consulta.SessionName:='Sec_BaseFin';
     Obj_Consulta.Sql.Add('SELECT MAX(Numero) As Novo_Codi FROM CPAPAGA');
     Obj_Consulta.Open;
     sCodigo := Obj_Consulta.FieldbyName('Novo_Codi').AsString;

     Obj_Consulta.Close;
     Obj_Consulta.Destroy;

     If sCodigo = '' then
        sCodigo := '0';
     Try
        iCodigo:=StrToInt(sCodigo);
        INC(iCodigo);
        sCodigo:=IntToStr(iCodigo);
     Except
        sCodigo :='';
     End;
     wwDBEdit1.text := sCodigo ;
     wwdbedit1.enabled := false ;
     Q_PagtosNumero.asstring    := sCodigo ;

     Q_PagtosValorLiquido.Value := StrToFloat(FormatFloat('#######0.0000',Q_PagtosValorTitulo.Value)) +
                                   StrToFloat(FormatFloat('#######0.0000',Q_PagtosDescAcresc.Value));

     Q_PagtosSaldo.value        :=  Q_PagtosValorLiquido.value ;
  end;

  Q_PAGTOSConferencia.asstring := 'S' ;


  If wwDBLookupCombo3.Text = '' then
  Begin
        If (Q_PAGTOS.State = dsBrowse) or (Q_PAGTOS.State = dsInactive) then
                Q_PAGTOS.Edit;
        Q_PAGTOSBancoConta.AsString := '';
  End;


    
//  Q_PAGTOSVALORLIQUIDO.Value := StrToFloat(FormatFloat('#######0.0000',Q_PAGTOSVALORTITULO.Value)) +
//                                 StrToFloat(FormatFloat('#######0.0000',Q_PAGTOSDESCACRESC.Value));
//   if wwDBlookupCombo1.text <> '' then begin
//      Q_FORN.locate('FOR_CODI',wwDBLookupCombo1.text,[loCaseInsensitive]);
//      wwDBEdit4.text := Q_FORNFOR_RAZA.asstring ;
//      Q_PagtosRazao.asstring := Q_FORNFOR_RAZA.asstring ;
//      wwDBEdit4.enabled := false ;
//   end else wwDBEdit4.enabled := true ;
   if wwDBlookupCombo1.text = '' then
      wwDBEdit4.enabled := true
   else Begin
        Q_FORN.LOCATE('FOR_CODI',Q_PagtosFornecedor.asstring,[]);
        Q_PagtosRazao.asstring := Q_FORNFOR_RAZA.asstring ;
   End;

  if wwdbedit4.text = '' then begin
     MessageDlg('Razão Social em Branco !',mterror, [mbOk], 0);
     wwdbedit4.setfocus ;
     abort ;
  end;
  if wwdbedit9.text = '' then begin
     MessageDlg('Vencimento em Branco !',mterror, [mbOk], 0);
     wwdbedit9.setfocus ;
     abort ;
  end;
  if wwdbedit3.text = '' then begin
     MessageDlg('Emissão em Branco !',mterror, [mbOk], 0);
     wwdbedit3.setfocus ;
     abort ;
  end;
  if wwdblookupcombo8.text = '' then begin
     MessageDlg('Moeda em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo8.setfocus ;
     abort ;
  end;
  if wwdblookupcombo4.text = '' then begin
     MessageDlg('Moeda Original em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo4.setfocus ;
     abort ;
  end;

{  if (wwDBLookupCombo3.text = '') and (Q_Pagtos.State = dsInsert) then begin
     MessageDlg('Banco em Branco !',mterror, [mbOk], 0);
     wwdbedit5.setfocus ;
     abort ;
  end;
  }

  if wwdbedit5.text = '' then begin
     MessageDlg('Vcto. Previsto em Branco !',mterror, [mbOk], 0);
     wwdbedit5.setfocus ;
     abort ;
  end;
(*  if Q_Pagtos.State = dsInsert then begin
    FPesqPagtos.Q_PPagtos.insert ;
    FPesqPagtos.Q_PPagtosNumero.asstring         := Q_PagtosNumero.asstring ;
    FPesqPagtos.Q_PPagtosFornecedor.asstring     := Q_PagtosFornecedor.asstring;
    FPesqPagtos.Q_PPagtosDocumento.asstring      := Q_PagtosDocumento.asstring ;
    FPesqPagtos.Q_PPagtosRazao.asstring          := Q_PagtosRazao.asstring ;
    FPesqPagtos.Q_PPagtosContaGerencial.asstring :=  Q_PagtosContaGerencial.asstring ;
    FPesqPagtos.Q_PPagtosValorTitulo.asfloat     := Q_PagtosValorTitulo.asfloat;
    FPesqPagtos.Q_PPagtosValorLiquido.asfloat    := Q_PagtosValorLiquido.asfloat;
    FPesqPagtos.Q_PPagtosVencimento.asdatetime   := Q_PagtosVencimento.asdatetime ;
    FPesqPagtos.Q_PPagtosBancoConta.asstring     := Q_PagtosBancoConta.asstring ;
    FPesqPagtos.Q_PPagtosVencimentoPrevisto.asdatetime  := Q_PagtosVencimentoPrevisto.asdatetime ;
    FPesqPagtos.Q_PPagtosSaldo.asfloat  :=  Q_PagtosSaldo.asfloat ;
    FPesqPagtos.Q_PPagtosFilial.asstring := Q_PagtosFilial.asstring ;
    FPesqPagtos.Q_PPagtos.post ;

  END ; *)

  if TBN_PAGA.pageindex = 0 then begin
     Q_AUXI.close ;
     Q_AUXI.Sql.Clear ;
     Q_AUXI.Sql.Add('select Numero, Documento from cpapaga ' ) ;
     Q_AUXI.Sql.Add(' where Documento  = ' + '''' + wwDBEdit2.text + '''' ) ;
     Q_AUXI.Sql.Add(' and  Fornecedor  = ' + '''' + wwDBLookupCombo1.text + '''' ) ;
     Q_AUXI.Open ;
     if (not Q_AUXI.eof ) and (Q_AUXI.fieldbyname('Numero').asstring <> Q_PagtosNumero.asstring ) then begin
        MessageDlg('Nota Fiscal já cadastrada no Cp. No. ' + Q_AUXI.fieldbyname('Numero').asstring , mtInformation,
           [mbOk], 0);
        wwDBEdit2.setfocus ;
        abort ;
     end ;
  end ;
  Q_CONTC.OPEN;

end;

procedure TFPagamentos.wwDBLookupCombo1Change(Sender: TObject);
begin
{    if wwDBlookupCombo1.text <> '' then begin
       Q_FORN.locate('FOR_CODI',wwDBLookupCombo1.text,[loCaseInsensitive]);
       wwDBEdit4.text := Q_FORNFOR_RAZA.asstring ;
       Label56.Caption:= Q_FORNNUMERO.AsString + ' - ' + Q_FORNAGENCIA.AsString + ' - ' + Q_FORNCONTA.AsString;
       wwDBEdit4.enabled := false ;
    end else wwDBEdit4.enabled := true ; }
end;


procedure TFPagamentos.Q_BxBeforePost(DataSet: TDataSet);
begin

     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if Q_BxDataDebito.AsString <> '' then begin
     if FMenu.Conciliacao(Q_BxBancoConta.asstring, Q_BxDataDebito.Value) then
     begin
        MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
        Abort;
     end;
     end;
     ///////////////////////////////////////////////////////////////////////////////////////////////////////

  if wwdbedit23.text = '' then begin
     MessageDlg('Data em Branco !',mterror, [mbOk], 0);
     wwdbedit23.setfocus ;
     abort ;
  end;
  if wwdbedit25.text = '' then begin
     MessageDlg('A Abater em Branco !',mterror, [mbOk], 0);
     wwdbedit25.setfocus ;
     abort ;
  end;
  if wwdbedit28.text = '' then begin
     MessageDlg('Data Débito em Branco !',mterror, [mbOk], 0);
     wwdbedit28.setfocus ;
     abort ;
  end;

  if wwdblookupcombo7.text = '' then begin
     MessageDlg('Banco/Conta em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo7.setfocus ;
     abort ;
  end;

  Q_BXVALORPAGO.Value := StrToFloat(FormatFloat('#######0.0000',Q_BXABATER.Value)) +
                            StrToFloat(FormatFloat('#######0.0000',Q_BxDescAcresc.Value));


  IF DBRadioGroup1.Value = 'P'  then begin {}
     IF  (Q_BxAbater.asfloat >= Q_PagtosValorLiquido.asfloat) then begin
         MessageDlg('Total é maior que Valor do Título ou então para utilizar o mesmo valor do Título, mude para Baixa Total ! ', mtInformation,[mbOk], 0);
         DBRadioGroup1.setfocus ;
         abort;
     end ;
  end;

  
   if DBEdit9.Visible then
   begin
      Q_Bx.Edit;
      Q_BxAbater.Value := Q_Bxtx_dolar.Value * Q_Bxvalor_dolar.Value;
   end;


end;

procedure TFPagamentos.Q_DetBeforePost(DataSet: TDataSet);
var iMySinal : Integer;

begin

  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1 ;

   if (DS_Det.State in [dsInsert,dsEdit]) then
     Q_DetDescAcresc.Value := abs(Q_DetDescAcresc.Value) * iMySinal;


end;







procedure TFPagamentos.wwDBEdit25Exit(Sender: TObject);
begin
   if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
    Q_BXVALORPAGO.Value := StrToFloat(FormatFloat('#######0.0000',Q_BXABATER.Value));

   if (dbradiogroup1.Value = 'T') and (Q_BXAbater.asfloat  < Q_PagtosSaldo.asfloat  )   and
      ((Q_BX.state = dsedit) or (Q_BX.state = dsinsert) )
     then
     begin
       MessageDlg('O valor informado não pode ser menor que o Saldo!',mterror, [mbOk], 0);
       wwdbedit25.setfocus ;
       abort ;
     end;

  if (dbradiogroup1.Value = 'P') and (Q_BXAbater.asfloat  >= Q_PagtosSaldo.asfloat  )   and
     ( (Q_BX.state = dsedit)  or ( Q_BX.state = dsinsert )) then
     begin
       MessageDlg('O valor informado é igual ou superior ao Saldo!',mterror, [mbOk], 0);
       wwdbedit25.setfocus ;
       abort ;
     end;



    end;

procedure TFPagamentos.DS_BxStateChange(Sender: TObject);
begin
  if (Q_BX.State = dsEdit) or (Q_BX.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_BX.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else begin
      Q_BXTIPOBAIXA.Value := 'T';
      Q_BXDATA.Value := Q_PAGTOSVENCIMENTO.Value;
      Q_BXDESCACRESC.Value := 0;
      Q_BXABATER.Value := StrToFloat( FormatFloat( '#######0.0000', Q_PAGTOSSALDO.Value));
      Q_BXVALORPAGO.Value := StrToFloat( FormatFloat( '#######0.0000', Q_BXABATER.Value));
      if Q_PagtosBancoConta.asstring <>  '' then
         Q_BXBancoConta.value := Q_PagtosBancoConta.AsString ;
      DBRadioGroup1.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
   end;
   LBL_STATUS.Visible := true
  end else begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;
end;

procedure TFPagamentos.SBT_REFRClick(Sender: TObject);
var  sCodigo : String ;
     sCodigo1 : string;
begin
  SCodigo := wwdbedit1.text ;
  sCodigo1 := DBE_IRE_SEQU2.text ;
  Q_PAGTOS.close;
  Q_DET.close;
  Q_BX.close;
  Q_DBX.close;
  Q_PAGTOS.open;
  Q_DET.open;
  Q_BX.open;
  Q_DBX.Open;
  Q_CONTB.CLOSE;
  Q_CONTB.OPEN;
  if TBN_PAGA.pageindex = 0 then begin
      Q_Pagtos.Close;
      Q_Pagtos.Sql.Clear ;
      Q_Pagtos.Sql.Add('select * from cpapaga where Numero = ' + SCodigo ) ;
      Q_pagtos.Open ;
  end ;
  if TBN_PAGA.pageindex = 1 then
     Q_Det.locate('Numero',sCodigo,[loCaseInsensitive]);
  if TBN_PAGA.pageindex = 2 then begin
     Q_Bx.locate('Numero',sCodigo,[loCaseInsensitive]);
     Q_DBX.locate('Numero;SequenciaBx',VarArrayOf([sCodigo, sCodigo1]), [loPartialKey]);
  end;

end;

procedure TFPagamentos.wwDBEdit26Exit(Sender: TObject);
begin
  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
   Q_BXVALORPAGO.Value := StrToFloat(FormatFloat('#######0.0000',Q_BXABATER.Value)) +
                            StrToFloat(FormatFloat('#######0.0000',Q_BXDESCACRESC.Value));

end;

procedure TFPagamentos.TBN_PAGAChange(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);

var rValor    : real;
var sMensagem : string[ 150 ];
SQL: STRING;
begin
  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    AllowChange := false;
  end;

  if TBN_PAGA.PageIndex = 3 then
    if Q_PagtosSaldo.value < 0 then   // Saldo
    begin
      MessageDlg('Total Pago maior que Valor do Título', mtInformation,[mbOk], 0);
      AllowChange := false;
    end;

  if (AllowChange) then
    case NewTab of
      0 : Fonte.DataSource := DS_Pagtos;
      1 : Fonte.DataSource := DS_DET;
      2 : FONTE.DataSource := DS_CONTG;
      3 : Fonte.DataSource := DS_Bx;
    end;

  if NewTab <> 1 then
  begin
    if AllowChange then
      if TBN_PAGA.PageIndex = 1 then
      begin
        rValor := 0;
        if Q_PagtosNumero.AsString <> '' then begin
            with Q_AUXI do
            begin
              Close;
              SQL.Clear;
              SQL.Add( 'SELECT  ROUND(SUM(DescAcresc),2)  as valor FROM CPADPAG WHERE Numero ='+Q_PagtosNumero.AsString );
              Open;
              rValor := Q_AUXI.fieldbyname('valor').asfloat;
            end;
        end ;



        Q_AUX2.close ;
        Q_AUX2.sql.Clear;
        Q_AUX2.SQL.Add( 'SELECT round(DescAcresc,2) as XVALOR from CPAPAGA ' ) ;
        Q_AUX2.SQL.Add( 'where Numero  =' +Q_Pagtosnumero.AsString );
        Q_AUX2.open ;

        if Q_AUX2.fieldbyname('XVALOR').asfloat <> rValor then
       /// if Q_PagtosDescAcresc.Value <> rValor then
        begin
          sMensagem := 'Valor do Desconto / Acréscimo não confere com o Detalhamento.';
          sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
          sMensagem := sMensagem + FloatToStr( rValor );
          if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
          begin
            Fonte.DataSource := DS_Pagtos;
            Fonte.BtnClick( nbEdit );
            Q_PagtosDescAcresc.Value := StrToFloat(FormatFloat('#######0.0000', rValor));
            Fonte.BtnClick( nbPost );
            case NewTab of
              0 : Fonte.DataSource := DS_Pagtos;
              1 : Fonte.DataSource := DS_DET;
              2 : FONTE.DataSource := DS_CONTG;
              3 : Fonte.DataSource := DS_Bx;
            end;
          end
          else
          begin
            AllowChange := False;
            Fonte.DataSource := DS_Pagtos;
          end;
        end;
      end
  end
  else
    if Q_pagtosDescAcresc.Value = 0 then
      if Q_Det.RecordCount = 0 then begin
        MessageDlg( 'Desconto/Acréscimo igual a zero.', mtInformation, [mbOk], 0);
        AllowChange := False;
        Fonte.DataSource := DS_Pagtos;
      end else  begin
        if MessageDlg( 'Desconto/Acréscimo igual a Zero. Apaga Registros ?',
                       mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          Fonte.ConfirmDelete := False;
          if Q_PagtosNumero.AsString <> '' then begin
              with Q_AUXI do begin
                Close;
                Sql.Clear;
                SQL.Add( 'DELETE FROM CPADPAG WHERE Numero ='+Q_PagtosNumero.AsString );
                ExecSQL;
              end;
          end ;
          Q_Det.Close;
          Q_Det.Open;
          AllowChange := False;
          Fonte.ConfirmDelete := True;
          Fonte.DataSource := DS_Pagtos;
        end;
      end;

  if AllowChange then
    if NewTab = 3 then TBN_BAIX.PageIndex := 0;


   

end;

procedure TFPagamentos.DS_PagtosStateChange(Sender: TObject);
begin
    if (Q_Pagtos.State = dsEdit) or (Q_Pagtos.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_Pagtos.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      Q_PagtosSituacao.Value := 'A';
      wwDBEdit2.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
    end;
    LBL_STATUS.Visible := true
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;

  if wwDBLookupCombo4.Text = Q_PARAPAR_MOED.asstring then
     Mostra_conversao(2)
  else
     Mostra_conversao(1);
end;

procedure TFPagamentos.DS_DetStateChange(Sender: TObject);
begin
(*    if (Q_Det.State = dsEdit) or (Q_Det.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_Det.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      wwDBLookupCombo6.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
    end;
    LBL_STATUS.Visible := true
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;*)
end;


procedure TFPagamentos.wwDBEdit5Exit(Sender: TObject);
var sMensagem : string[ 100 ];
var sAuxData  : string[ 10 ];
begin
  SMensagem := '' ;
  sAuxData:= DateToStr( StrToDateTime( wwDBEdit5.Text ) );
  if StrToDateTime( wwDBEdit5.Text ) <> 0 then
  begin
    if DayOfWeek(StrToDateTime(sAuxData)) = 1 then
      sMensagem := 'Vencimento é Domingo'
    else
      if DayOfWeek(StrToDateTime(sAuxData)) = 7 then
        sMensagem := 'Vencimento é Sábado'
      else
      begin
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT * FROM CPAFERI WHERE FER_DATA ='''+
                   FormatDateTime('MM/DD/YYYY',StrToDateTime(sAuxData))+'''');
          Open;
        end;
        if not Q_AUXI.eof then
          sMensagem := 'Vencimento é Feriado';
      end;
    if sMensagem <> '' then
    begin
      try
        STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).Value := StrToDate(sAuxData);
        STP_VERUTIL.ExecProc;
      finally
        sAuxData := FormatDateTime('DD/MM/YYYY',STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).AsDate);
      end;
//      if MessageDlg( sMensagem + ' Alterar para ' + FormatDateTime('DD/MM/YYYY',StrToDateTime(sAuxData)),
//         mtInformation, [mbNo,mbYes], 0) = mrYes then
//      begin
//        Q_PagtosVencimentoPrevisto.Value := StrToDate(sAuxData);
//        Q_PagtosVencimento.Value := StrToDate(sAuxData);
//      end;
    end;
  end;
  if DS_Pagtos.State in [dsInsert,dsEdit] then
  if wwDBEdit5.text <> '  /  /    ' then begin
     Q_PAGTOSVENCIMENTO.Value := strtodate(wwDBEdit5.text);
     wwDBEdit9.text :=   wwDBEdit5.text ;
     end;
     wwDBLookupCombo4.Setfocus;
end;


procedure TFPagamentos.wwDBEdit9Exit(Sender: TObject);

var sMensagem : string[ 100 ];
var sAuxData  : string[ 10 ];
begin
  SMensagem := '' ;
  sAuxData:= DateToStr( StrToDateTime( wwDBEdit9.Text ) );
  if StrToDateTime( wwDBEdit9.Text ) <> 0 then
  begin
    if DayOfWeek(StrToDateTime(sAuxData)) = 1 then
      sMensagem := 'Vencimento é Domingo'
    else
      if DayOfWeek(StrToDateTime(sAuxData)) = 7 then
        sMensagem := 'Vencimento é Sábado'
      else
      begin
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT * FROM CPAFERI WHERE FER_DATA ='''+
                   FormatDateTime('MM/DD/YYYY',StrToDateTime(sAuxData))+'''');
          Open;
        end;
        if not Q_AUXI.eof then
          sMensagem := 'Vencimento é Feriado';
      end;
    if sMensagem <> '' then
    begin
      try
        STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).Value := StrToDate(sAuxData);
        STP_VERUTIL.ExecProc;
      finally
        sAuxData := FormatDateTime('DD/MM/YYYY',STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).AsDate);
      end;
//      if MessageDlg( sMensagem + ' Alterar para ' + FormatDateTime('DD/MM/YYYY',StrToDateTime(sAuxData)),
//         mtInformation, [mbNo,mbYes], 0) = mrYes then
//      begin
//        Q_PagtosVencimento.Value := StrToDate(sAuxData);
//        wwDBLookupCombo8.Setfocus;
//      end
//      else
//        wwDBLookupCombo8.Setfocus;
    end
  end
  else
  begin
    MessageDlg('Obrigatório informar o vencimento.', mtInformation,[mbOk], 0);
    wwDBEdit9.Setfocus;
  end;
end;


procedure TFPagamentos.wwDBLookupCombo6Exit(Sender: TObject);
begin
  if wwDBLookupCombo6.text = '' then
  begin
    MessageDlg( 'Este campo não pode ser deixado em branco.',mtInformation,[mbOk], 0);
    wwDBLookupCombo6.SetFocus;
  end else   wwDBLookupCombo6.text := Q_DIFEDIF_DESC.asstring ;
end;



procedure TFPagamentos.wwDBEdit12Exit(Sender: TObject);
begin
   if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
    Q_PagtosValorLiquido.Value := StrToFloat(FormatFloat('#######0.0000',Q_PagtosValorTitulo.Value)) +
                            StrToFloat(FormatFloat('#######0.0000',Q_PagtosDescAcresc.Value));
end;

procedure TFPagamentos.wwDBEdit13Exit(Sender: TObject);
begin
  if (Q_PagtosValorTitulo.Value = 0) and ((Q_Pagtos.state = dsedit ) or (Q_pagtos.State = dsinsert ))  then
  begin
    MessageDlg( 'Valor do Título tem que ser informado.',mtInformation,[mbOk], 0);
    wwDBEdit13.SetFocus;
  end
  ELSE BEGIN
       Q_pagtos.POST;
  END;
end;





procedure TFPagamentos.Q_DBXAfterDelete(DataSet: TDataSet);
begin
   try
    FMenu.DATABASE1.ApplyUpdates([Q_DBX]);
  except
    Q_DBX.RevertRecord;
  end;
end;

procedure TFPagamentos.Q_DBXAfterPost(DataSet: TDataSet);
var SCodigo : string ;
    Scodigo1 : string ;
begin
    sCodigo  := DBE_REC_CODI3.text ;
    sCodigo1 := DBE_IRE_SEQU2.text ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_DBX]);
  end;
  except
    begin

      Q_DBX.RevertRecord;
    end;
  end;

  try
    STP_PAGSALD.ParamByName( '@Codigo' ).Value := strtoint(sCodigo)  ;

    IF DBRadioGroup1.Value = 'T'  then
      STP_PAGSALD.ParamByName( '@TIPO' ).Value := 'T'
     else
      STP_PAGSALD.ParamByName( '@TIPO' ).Value := 'VAZIO'   ;

    STP_PAGSALD.ExecProc;
  finally
  end;

  Q_DBX.Close;
  Q_DBX.Open;
  Q_DBX.locate('Numero;SequenciaBx',VarArrayOf([sCodigo, sCodigo1]), [loPartialKey]);

  Q_BX.edit ;
  Q_BXDescAcresc.asfloat := Q_BXDescAcresc.asfloat ;
  Q_BXVALORPAGO.Value := StrToFloat(FormatFloat('#######0.0000',Q_BXABATER.Value)) +
                         StrToFloat(FormatFloat('#######0.0000',Q_DBXDescAcresc.Value));


  Q_BX.post;
end;

procedure TFPagamentos.Q_DBXNewRecord(DataSet: TDataSet);
begin
    Q_DBXNumero.AsInteger := Q_BXNumero.AsInteger;
    Q_DBXSequenciaBX.AsInteger := Q_BXSequencia.AsInteger;
end;

procedure TFPagamentos.TBN_BAIXChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);

var rValor    : real;
var sMensagem : string[ 150 ];

begin
  FECHAR:= FALSE;

  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    AllowChange := false;
  end;

  if TBN_BAIX.PageIndex = 1 then
    if Q_PagtosSaldo.Value < 0 then
    begin
      MessageDlg('Total Pago maior que Valor do Título', mtInformation,[mbOk], 0);
      AllowChange := false;
    end;

  if (AllowChange) then
    case NewTab of
      0 : Fonte.DataSource := DS_Bx;
      1 : Fonte.DataSource := DS_DBx;
    end;

  if NewTab <> 1 then
  begin
    if AllowChange then
      if TBN_BAIX.PageIndex = 1 then
      begin
        rValor := 0;
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT SUM(DESCACRESC) as NOVO FROM CPAIDPA WHERE Numero ='+Q_BXNumero.AsString+
                   ' AND SequenciaBx ='+Q_BXSequencia.AsString+'' );
          Open;
          rValor := Q_AUXI.fieldbyname('NOVO').AsFloat;
        end;
        if Q_BXDescAcresc.Value <> rValor then
        begin
          sMensagem := 'Valor do Desconto/Acréscimo não confere com o Detalhamento.';
          sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
          sMensagem := sMensagem + FloatToStr( rValor );
          if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
          begin
            Fonte.DataSource := DS_BX;
            Fonte.BtnClick( nbEdit );
            Q_BXDescAcresc.Value := StrToFloat(FormatFloat('#######0.0000',rValor));
            Fonte.BtnClick( nbPost );
            FECHAR := TRUE;         //THIAGO
            case NewTab of
              0 : Fonte.DataSource := DS_BX;
              1 : Fonte.DataSource := DS_DBX;
            end;
          end
          else
          begin
            AllowChange := False;
            Fonte.DataSource := DS_DBX;
          end;
        end;
      end
  end
  else
    if Q_BXDescAcresc.Value = 0 then
      if Q_DBX.RecordCount = 0 then
      begin
        MessageDlg( 'Desconto/Acréscimo igual a zero.', mtInformation, [mbOk], 0);
        AllowChange := False;
        Fonte.DataSource := DS_BX;
      end
      else
      begin
        if MessageDlg( 'Desconto/Acréscimo igual a Zero. Apaga Registros ?',
                       mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          Fonte.ConfirmDelete := False;
          with Q_AUXI do
          begin
            Close;
            Sql.Clear;
            SQL.Add( 'DELETE FROM CPAIDPA WHERE Numero ='+Q_BXNumero.AsString+
                     ' AND SequenciaBX ='+Q_BXSequencia.AsString+'' );
            ExecSQL;
          end;
          Q_DBX.Close;
          Q_DBX.Open;
          AllowChange := False;
          Fonte.ConfirmDelete := True;
          Fonte.DataSource := DS_BX;
        end;
      end;
end;






procedure TFPagamentos.FonteClick(Sender: TObject; Button: TNavigateBtn);
var Obj_Soma : TwwQuery ;
    VValor   : real ;
    sCodigo : String ;
begin
  Obj_Soma:=TwwQuery.Create(Self);
  Obj_Soma.DataBaseName:='Financeiro';
  Obj_Soma.SessionName:='Sec_BaseFin';
  if (Button in [nbCancel]) and (Fonte.datasource = ds_pagtos) then
  begin
      wwDBEdit2.setfocus ;
  end ;
  if (Button in [nbCancel]) and (Fonte.datasource = ds_bx) then
  begin
    DBRadioGroup1.setfocus ;
  end ;

  if Button in [nbPost] then
  begin
    if Fonte.DataSource = DS_Pagtos then begin
       Obj_Soma.Sql.Add('SELECT SUM(DescAcresc) As XValor FROM CPADPAG where Numero = ' + Q_PagtosNumero.asstring );
       Obj_Soma.open;
       VValor := 0 ;
       if Obj_Soma.FieldbyName('XValor').AsString <> '' then begin
          VValor := Obj_Soma.Fieldbyname('XValor').asfloat ;
       end;
       if (Q_PagtosDescAcresc.Value <> 0) and (VValor <> Q_PagtosDescAcresc.value)  then
          TBN_Paga.PageIndex := 1
    end else
      if Fonte.DataSource = DS_BX then begin
        Obj_Soma.Sql.Add('SELECT SUM(DescAcresc) As XValor FROM CPAIDPA where Numero = ' + Q_PagtosNumero.asstring );
        Obj_Soma.open;
        VValor := 0 ;
        if Obj_Soma.FieldbyName('XValor').AsString <> '' then begin
           VValor := Obj_Soma.Fieldbyname('XValor').asfloat ;
        end;
        if (Q_BXDescAcresc.Value <> 0) and (VValor <> Q_BXDescAcresc.value)  then
          TBN_BAIX.Pageindex := 1;
      end;
   end;
//  SCodigo := wwDBEdit1.text ;
  {if (Button in [nbdelete]) then  begin
     Q_Pagtos.Close;
     Q_Det.Close;
     Q_Bx.Close;
     Q_Dbx.Close;

     Q_DBx.Open;
     Q_Det.Open;
     Q_Bx.Open;

     Q_Pagtos.Sql.Clear ;
     Q_Pagtos.Sql.Add('select * from cpapaga where Numero = ' + '0' ) ;
     Q_pagtos.Open ;
  end;  }

end;

procedure TFPagamentos.wwDBLookupCombo4Exit(Sender: TObject);
begin
{  if wwDBLookupCombo4.Text = Q_PARAPAR_MOED.asstring then begin
     wwDBEdit11.enabled := false ;
     wwDBEdit8.setfocus ;
  end else wwDBEdit11.enabled := true ;
  if wwDBLookupCombo8.text = '' then
     wwDBLookupCombo8.text := wwDBLookupCombo4.text ; }

     wwDBLookupCombo8.Text := wwDBLookupCombo4.Text;
     if wwDBEdit11.Visible then
     begin
         wwDBEdit11.SetFocus;
         if Q_PagtosVencimentoPrevisto.AsString <> '' then
            Q_PagtosDataMoedaOriginal.Value := Q_PagtosVencimentoPrevisto.Value;
     end;
end;



procedure TFPagamentos.Q_DBXBeforePost(DataSet: TDataSet);
var iMySinal : Integer;
begin
  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1;

   if (DS_DBX.State in [dsInsert,dsEdit]) then
     Q_DBXDescAcresc.Value := Q_DBXDescAcresc.Value * iMySinal;


   if (Q_DBXDescAcresc.Value = 0) and ( ( Q_DBX.state = dsedit )  or  ( Q_DBX.state = dsinsert ) )  then
   begin
     MessageDlg('Valor tem que ser informado.',mtInformation,[mbOk], 0);
     DBE_IDR_VALO.SetFocus;
   end;


end;

procedure TFPagamentos.Q_PagtosNewRecord(DataSet: TDataSet);
begin
  Q_PAGTOSMOEDAORIGINAL.asstring := Q_PARAPAR_MOED.asstring ;
  Q_PAGTOSFILIAL.asstring        := Q_PARAFilialPaga.asstring ;
  Q_PAGTOSConferencia.asstring := 'S' ;
  Q_PAGTOSFlag_Fluxo.AsString := 'S';
  Q_FILI.locate('FIL_CODI',Q_PARAFilialPaga.asstring ,[]) ;
  Mostra_conversao(2);
end;

procedure TFPagamentos.wwDBEdit8Exit(Sender: TObject);
begin
  if (DS_pagtos.State in [dsInsert]) or (DS_pagtos.State in [dsedit]) then BEGIN
     Q_pagtosvalortitulo.Value := StrToFloat(FormatFloat('#######0.0000',Q_pagtosvalororiginal.Value));
     Q_Pagtosvalor_dolar_real.Value := Q_Pagtosvalor_dolar.Value;
     Q_pagtos.POST;
  END;
  Q_FORN.locate('FOR_CODI',wwDBLookupCombo1.text,[loCaseInsensitive]);


end;

procedure TFPagamentos.wwDBLookupCombo8Exit(Sender: TObject);
begin
  {if wwDBLookupCombo8.Text = Q_PARAPAR_MOED.asstring then begin
     wwDBEdit7.enabled := false ;
     wwDBEdit13.setfocus ;
  end else wwDBEdit7.enabled := true ;  }
end;

procedure TFPagamentos.wwDBLookupCombo1Exit(Sender: TObject);
begin
   if wwDBlookupCombo1.text <> '' then begin
   {   Q_FORN.locate('FOR_CODI',wwDBLookupCombo1.lookupvalue,[loCaseInsensitive]);
      wwDBlookupCombo1.text := Q_FORNFOR_CODI.asstring ;        }

    if wwDBlookupCombo1.text <> '' then begin
       Q_FORN.locate('FOR_CODI',wwDBLookupCombo1.text,[loCaseInsensitive]);
       wwDBEdit4.text := Q_FORNFOR_RAZA.asstring ;
       //Label56.Caption:= Q_FORNNUMERO.AsString + ' - ' + Q_FORNAGENCIA.AsString + ' - ' + Q_FORNCONTA.AsString;
       qrBancoForn.close;
       qrBancoForn.Params[0].AsString := Q_FORNFOR_CODI.Value;
       qrBancoForn.Open;

      // label56.Caption := qrBancoFornban_agen.Value + '-'+qrBancoFornban_conta.Value;
       if Q_FORNIdCentroCusto.AsString <> '' then   begin
           wwDBLookupCombo11.LookupValue := Q_FORNIdCentroCusto.AsString;
           qrCentroCusto.Locate('CC_ID', Q_FORNIdCentroCusto.AsString, []);
           wwDBLookupCombo11.Text := qrCentroCustoCC_Desc.asstring;
       end;

       wwDBEdit4.enabled := false ;
       wwDBLookupCombo2.SetFocus;
    end else wwDBEdit4.enabled := true ;
      if Q_CONT.locate('CON_CODI',Q_FORNFOR_CGER.asstring,[loCaseInsensitive]) then begin
         wwDBLookupCombo2.lookupvalue := Q_FORNFOR_CGER.asstring ;
         wwDBLookupCombo2.TEXT := Q_CONTCON_DESC.asstring ;
      end ;
   end;

   //verifica se o fornecedore tem descontos cadastrados. v 6.3 do sistema
   qrDescontoS.Close;
   qrDescontoS.Params[0].AsString := Q_PagtosFornecedor.Value;
   qrDescontoS.Open;

   IF qrDescontoS.FIELDBYNAME('DESCONTOS').AsInteger > 0 then
        SpeedButton9.Visible := TRUE
   else
        SpeedButton9.Visible := False;

   qrDescontoS.CLOSE;



   


end;



procedure TFPagamentos.SpeedButton1Click(Sender: TObject);
begin
   // Ajusta o posicionamento do Panel de Localização rápida
   wwDBEdit14.text := '' ;
   wwDBEdit15.text := '' ;

   with Panel16 do
        Begin
       // Top  := (Screen.Height - Height) div 2;
      //  Left := (Screen.Width  - Width ) div 2;
        Enabled := True;
        Visible := True;
        end;
   Panel2.enabled := False;
   Panel1.enabled := False;
   TBN_PAGA.enabled := False;
   TBN_BAIX.enabled := False;
   wwDBEdit15.SetFocus;

end;

procedure TFPagamentos.SpeedButton6Click(Sender: TObject);
var sCodigo : string ;
begin
     sCodigo := Q_PagtosNumero.asstring ;
      if wwDBEdit14.text <> '' then begin
         Q_Pagtos.Close;
         Q_Pagtos.Sql.Clear ;
         Q_Pagtos.Sql.Add('select * from cpapaga where Documento = ' + '''' + wwDBEdit14.text+ ''''  ) ;
         Q_pagtos.Open ;
         if Q_Pagtos.Eof then begin
            MessageDlg('Título não encontrado !',mtInformation,[mbOk], 0);
            Q_Pagtos.Close;
            Q_Pagtos.Sql.Clear ;
            Q_Pagtos.Sql.Add('SELECT * FROM CPAPAGA where Numero = '+  sCodigo ) ;
            Q_Pagtos.Open ;
            abort ;
         end ;
      end  else begin
            if wwDBEdit15.text <> '' then begin
               Q_Pagtos.Close;
               Q_Pagtos.Sql.Clear ;
               Q_Pagtos.Sql.Add('select * from cpapaga where Numero = ' + wwDBEdit15.text ) ;
               Q_pagtos.Open ;
               if Q_Pagtos.Eof then begin
                  MessageDlg('Título não encontrado !',mtInformation,[mbOk], 0);
                  Q_Pagtos.Close;
                  Q_Pagtos.Sql.Clear ;
                  Q_Pagtos.Sql.Add('SELECT * FROM CPAPAGA where Numero = '+ sCodigo ) ;
                  Q_Pagtos.Open ;
                  abort ;
               end ;
            end ;
      end ;
   wwDBEdit14.text := '' ;
   wwDBEdit15.text := '' ;
   TBN_PAGA.enabled := true;
   TBN_BAIX.enabled := true;
   Panel1.enabled := true ;
   Panel16.visible := false ;
   Panel2.enabled := true ;


end;

procedure TFPagamentos.SpeedButton5Click(Sender: TObject);
begin
   Panel16.visible := false ;
   TBN_PAGA.enabled := true;
   TBN_BAIX.enabled := true;
   Panel2.enabled := true ;
   Panel1.enabled := true ;

end;

procedure TFPagamentos.FonteBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
var Obj_Verifica : TwwQuery ;
begin
  if Button in [nbdelete] then  begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
       Abort;
  end;
{*  if (Button in [nbpost]) and ( Fonte.datasource = DS_Pagtos)  then  begin
     // Verifica duplicação de notas
     Obj_Verifica:=TwwQuery.Create(Self);
     Obj_Verifica.DataBaseName:='Financeiro';
     Obj_Verifica.SessionName:='Sec_BaseFin';
     Obj_Verifica.Sql.Clear;
     Obj_Verifica.Sql.Add('select Numero,Documento,Fornecedor from cpapaga ');
     Obj_Verifica.Sql.Add(' where Documento = '+ ''''+ Q_PagtosDocumento.asstring + '''') ;
     Obj_Verifica.Sql.Add(' and Fornecedor = '+ ''''+ Q_PagtosFornecedor.asstring + '''') ;
     Obj_Verifica.Open ;
     if (not Obj_Verifica.eof) and (OBJ_Verifica.fieldbyname('Numero').asstring <> Q_PagtosNumero.asstring) then begin
        MessageDlg('Título já cadastrado no CP. : ' + Obj_Verifica.fieldbyname('Numero').asstring ,mterror, [mbOk], 0);
        wwDBEdit2.setfocus ;
        Obj_Verifica.close;
        Obj_Verifica.destroy ;
        Abort;
     end else begin
        Obj_Verifica.close;
        Obj_Verifica.destroy ;
     end;
  end;     *}

end;

procedure TFPagamentos.wwDBEdit2Exit(Sender: TObject);
begin
(*  if (Q_Pagtos.state = dsedit ) or (Q_Pagtos.State = dsinsert ) then begin
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add('select Numero, Documento from cpapaga ' ) ;
      Q_AUX.Sql.Add(' where Documento  = ' + '''' + wwDBEdit2.text + '''' ) ;
      Q_AUX.Open ;
      if (not Q_QUX.eof ) and (Q_AUXNumero.asstring <> Q_PagtosNumero.asstring ) then begin
         MessageDlg('Nota Fiscal já cadastrada no Cp. No. ' + Q_AUXNumero.asstring , mtInformation,
               [mbOk], 0);
         wwDBEdit2.setfocus ;
      end ;
  end ; *)
end;

procedure TFPagamentos.wwDBEdit14KeyPress(Sender: TObject; var Key: Char);
var sCodigo : string ;
begin
   sCodigo := Q_PagtosDocumento.asstring ;
   if (Key = #13) then begin
      if wwDBEdit14.text <> '' then begin
         Q_Pagtos.Close;
         Q_Pagtos.Sql.Clear ;
         Q_Pagtos.Sql.Add('select * from cpapaga where Documento = ' + '''' +  wwDBEdit14.text+ ''''  ) ;
         Q_pagtos.Open ;
         if Q_Pagtos.Eof then begin
            MessageDlg('Título não encontrado !',mtInformation,[mbOk], 0);
            Q_Pagtos.Close;
            Q_Pagtos.Sql.Clear ;
            Q_Pagtos.Sql.Add('SELECT * FROM CPAPAGA where Numero = '+  sCodigo  ) ;
            Q_Pagtos.Open ;
            abort ;
         end ;
      end ;
      TBN_PAGA.enabled := true;
      TBN_BAIX.enabled := true;
      Panel16.visible := false ;
      Panel1.enabled := true ;
      Panel2.enabled := true ;
   end ;

end;

procedure TFPagamentos.wwDBEdit15KeyPress(Sender: TObject; var Key: Char);
var sCodigo : string ;
begin
   sCodigo := Q_PagtosNumero.asstring ;
   if (Key = #13) then begin
      if wwDBEdit15.text <> '' then begin
         Q_Pagtos.Close;
         Q_Pagtos.Sql.Clear ;
         Q_Pagtos.Sql.Add('select * from cpapaga where Numero = ' + wwDBEdit15.text ) ;
         Q_pagtos.Open ;
         if Q_Pagtos.Eof then begin
            MessageDlg('Título não encontrado !',mtInformation,[mbOk], 0);
            Q_Pagtos.Close;
            Q_Pagtos.Sql.Clear ;
            Q_Pagtos.Sql.Add('SELECT * FROM CPAPAGA where Numero = ' + sCodigo  ) ;
            Q_Pagtos.Open ;
            abort ;
         end ;
      end ;
      TBN_PAGA.enabled := true;
      TBN_BAIX.enabled := true;
      Panel16.visible := false ;
      Panel1.enabled := true ;
      Panel2.enabled := true ;
   end ;

end;

procedure TFPagamentos.wwDBEdit29Exit(Sender: TObject);
begin
   if (Q_BxDocumento.asstring = '' )  and ( (Q_BX.State = dsinsert  ) or (Q_BX.state = dsedit ) ) then
   begin
     MessageDlg('Informe o número do Documento !' ,mtInformation,[mbOk], 0);
     wwDBEdit29.SetFocus;
     abort;
   end;

end;

procedure TFPagamentos.wwDBLookupCombo2Exit(Sender: TObject);
begin
   wwDBlookupCombo2.text := Q_CONTCON_DESC.asstring ;
end;

procedure TFPagamentos.wwDBLookupCombo7Exit(Sender: TObject);
begin
   wwDBLookupCombo7.text := Q_BANCBAN_NOME.asstring ;
end;

procedure TFPagamentos.DBLC_IDR_DIFEExit(Sender: TObject);
begin
   DBLC_IDR_DIFE.text := Q_DIFEDIF_DESC.asstring ;
end;

procedure TFPagamentos.wwDBLookupCombo3Exit(Sender: TObject);
begin


  ////wwDBlookupCombo3.text := Q_BANCBAN_NOME.asstring ;



end;

procedure TFPagamentos.FormShow(Sender: TObject);
begin
   wwDBEdit2.setfocus ;

   qrCentroCusto.open;
   Mostra_conversao(2);
   if wwDBLookupCombo4.Text = Q_PARAPAR_MOED.asstring then
        Mostra_conversao(2)
   else
        Mostra_conversao(1);


   //verifica se o fornecedore tem descontos cadastrados. v 6.3 do sistema
   qrDescontoS.Close;
   qrDescontoS.Params[0].AsString := Q_PagtosFornecedor.Value;
   qrDescontoS.Open;

   IF qrDescontoS.FIELDBYNAME('DESCONTOS').AsInteger > 0 then
        SpeedButton9.Visible := TRUE
   else
        SpeedButton9.Visible := False;

   qrDescontoS.CLOSE;        

end;

procedure TFPagamentos.TBN_BAIXClick(Sender: TObject);
VAR SQL: STRING;
begin
  if TBN_BAIX.PageIndex = 1 then Q_DBX.first ;

   SQL:= ' SELECT  A.*,     ' +
	 '         B.CON_DESC   ' +
         ' FROM    CPAIPACON A, ' +
	 '         CPACONT  B     ' +
         ' WHERE   B.CON_CODI = A.CON_CODI ' ;


     IF Q_PagtosContaGerencial.AsString <> '' THEN BEGIN
        SQL:= SQL + ' AND A.NUMERO = ' +  ''''  + Q_PagtosNumero.ASSTRING + '''' ;

     IF Q_BxSequencia.AsString <>  '' THEN
         SQL:= SQL + ' AND A.SEQUENCIA = ' +  ''''  + Q_BxSequencia.AsString + '''' ;



       Q_CONTB.CLOSE;
       //Q_CONTB.SQL.CLEAR;
       //Q_contB.sql.add(sql);
       Q_CONTB.OPEN;

    END;


end;

procedure TFPagamentos.TBN_PAGAClick(Sender: TObject);
VAR SQL: STRING;
begin
  codipaga := q_pagtosnumero.asstring;
  if TBN_PAGA.PageIndex = 2 then Q_BX.first ;
  if TBN_PAGA.PageIndex = 3 then Q_BX.first ;

    SQL:= ' SELECT       A.*,   ' +
	  '              B.CON_DESC  ' +
          ' FROM 	 CPAPACON A,  ' +
	  '              CPACONT  B   ' +
          ' WHERE        B.CON_CODI = A.CON_CODI ' ;


    IF Q_PagtosContaGerencial.AsString <> '' THEN BEGIN
       SQL:= SQL + ' AND A.NUMERO = ' +  ''''  + Q_PagtosNumero.ASSTRING + '''' ;



       Q_CONTG.CLOSE;
       Q_CONTG.SQL.CLEAR;
       Q_contg.sql.add(sql);
       Q_CONTG.OPEN;

    END;


end;

procedure TFPagamentos.SpeedButton2Click(Sender: TObject);
begin
  Q_RECEB.close ;
  Q_RECEB.Sql.Clear ;
  Q_RECEB.Sql.Add('select * from recebimento_nf ' ) ;
  Q_RECEB.Sql.Add('where convert(char(10),NFatura) = ' ) ;
  Q_RECEB.Sql.Add(' substring( ' + '''' + Q_PAGTOSDocumento.asstring + '''' + ',1 ,(datalength(rtrim(ltrim(' ) ;
  Q_RECEB.Sql.Add('''' + Q_PAGTOSDocumento.asstring+ '''' + ' )))-1)) ' ) ;
  Q_RECEB.Sql.Add( ' order by recnf_sequencia ' );
  Q_RECEB.Open ;

  Panel1.enabled := False;
  Panel8.enabled := False;

   with Panel17 do
        Begin
        Top := (Screen.Height - Height) div 2;
        Left:= (Screen.Width  - Width ) div 2;
        Visible := True;
        end;
end;

procedure TFPagamentos.SpeedButton3Click(Sender: TObject);
begin
   Q_RECEB.close ; 
   Panel17.visible := false ;
   Panel1.enabled  := true   ;
   Panel8.enabled  := true   ;

   Panel1.BringToFront;
   Panel8.BringToFront;

end;

procedure TFPagamentos.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFPagamentos.DBE_IDR_VALOExit(Sender: TObject);
begin

   IF Q_DBXDescAcresc.asfloat < 0 then begin
      MessageDlg('Não coloque Valor negativo. Verificação será automática através do Tipo do Desc./Acrésc. !  ', mtInformation,[mbOk], 0);
      DBE_IDR_VALO.text := '' ;
      abort;
   end ;


end;

procedure TFPagamentos.Q_BxBeforeInsert(DataSet: TDataSet);
begin
    IF Q_PAGTOSSALDO.asfloat = 0 then begin
       MessageDlg('Título Pago integralmente. Saldo ZERO !',mterror, [mbOk], 0); 
       abort ;
    end ;
end;

procedure TFPagamentos.SpeedButton4Click(Sender: TObject);
var
data : string;
mes : integer;
ano : integer;
begin
   if Q_PAGTOS.recordcount = 0 then
   begin
        MessageDlg('Não há nenhum lançamento posicionado para repetição.',
        mtInformation, [mbok], 0);
        abort;
   end;


   {   if CheckBox1.checked = false  then
      EMISSAO_DATA := 'N'
    else
      EMISSAO_DATA := 'S' ; }


   if (copy(formatdatetime('MM/DD/YYYY',Q_PagtosVencimento.value),0,2) = '01') and
      (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_PagtosVencimento.value),0,2)) > 28) then
        data := '28/'
   else
   if (strtoint(copy(formatdatetime('MM/DD/YYYY',Q_PagtosVencimento.value),0,2)) in [3,5,7,8,10]) and
      (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_PagtosVencimento.value),0,2)) = 31 ) then
        data := '30/'
   else
        data := copy(Q_PagtosVencimento.AsString,0,3);


 {  IF    EMISSAO_DATA = 'S' then begin
           if (copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2) = '01') and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_PagtosEmissao.value),0,2)) > 28) then
                dataEMISSAO := '28/'
           else
           if (strtoint(copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2)) in [3,5,7,8,10]) and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_PagtosEmissao.value),0,2)) = 31 ) then
                dataEMISSAO := '30/'
           else
                dataEMISSAO := copy(Q_PagtosEmissao.AsString,0,3);
   end ;  }








   if copy(formatdatetime('MM/DD/YYYY',Q_PagtosVencimento.value),0,2) = '12' then
        data := data + '01/'
   else
   begin
        mes := strtoint(copy(formatdatetime('MM/DD/YYYY',Q_PagtosVencimento.value),0,2))+1;
        if mes < 10 then
                data := data +'0' +inttostr(mes) +'/'
        else
                data := data +inttostr(mes) +'/';
   end;
   if copy(formatdatetime('MM/DD/YYYY',Q_PagtosVencimento.value),0,2) = '12' then
        ano := strtoint(copy(formatdatetime('YYYYMMDD',Q_PagtosVencimento.value),0,4))+1
   else
        ano := strtoint(copy(formatdatetime('YYYYMMDD',Q_PagtosVencimento.value),0,4));

 { IF    EMISSAO_DATA = 'S' then begin
           if copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2) = '12' then
                dataEMISSAO := dataEMISSAO + '01/'
           else
           begin
                mesEMISSAO := strtoint(copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2))+1;
                if mesEMISSAO < 10 then
                        dataEMISSAO := dataEMISSAO +'0' +inttostr(mesEMISSAO) +'/'
                else
                        dataEMISSAO := dataEMISSAO +inttostr(mesEMISSAO) +'/';
           end;
           if copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2) = '12' then
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_PagtosEmissao.value),0,4))+1
           else
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_PagtosEmissao.value),0,4));
  end ;
   dataEMISSAO := dataEMISSAO + inttostr(anoEMISSAO);
   MaskEdit2.Text := dataEMISSAO; }

   data := data + inttostr(ano);
   MaskEdit1.Text := data;
   
   TBN_PAGA.enabled := false;
   SpeedButton2.enabled := false;
   Fonte.enabled := false;
   SpeedButton1.enabled := false;
   SBT_REFR.enabled := false;
   Panel10.Visible := true;
   Panel10.BringToFront;
   ListBox3.Clear;
   ListBox2.Clear;
end;

procedure TFPagamentos.SpeedButton8Click(Sender: TObject);
begin
   SpeedButton2.enabled := true;
   Fonte.enabled := true;
   SpeedButton1.enabled := true;
   SBT_REFR.enabled := true;
   Panel10.Visible := false;
   TBN_PAGA.enabled := true;
end;

procedure TFPagamentos.SpeedButton7Click(Sender: TObject);
var
parcelas : integer;
i : integer;
numdoc : string;
data : tdatetime;
data_EMISSAO :  tdatetime;
datas : string;
datas_EMISSAO : string ;
auxs : string;
auxi : integer;
virano : boolean;
codi : integer;
F : TextFile;
loc : string;
previsto : string;
MES : INTEGER;
Emissao, VENCIMENTO, VENCIMENTOPREV : TdateTime;
begin

     emissao :=  Q_PagtosEmissao.Value;
     VENCIMENTO := Q_PagtosVencimento.Value;
     VENCIMENTOPREV := Q_PagtosVencimentoPrevisto.Value;


   if (edit4.Text = '') or (maskedit1.Text = '  /  /    ') then
   begin
        MessageDlg('Preencha todos os campos', mtInformation, [mbok], 0);
        abort;
   end;

      //////////////////
    if CheckBox1.checked = false  then
      EMISSAO_DATA := 'N'
    else
      EMISSAO_DATA := 'S' ;

    IF    EMISSAO_DATA = 'S' then begin
           if (copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2) = '01') and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_PagtosEmissao.value),0,2)) > 28) then
                dataEMISSAO := '28/'
           else
           if (strtoint(copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2)) in [3,5,7,8,10]) and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_PagtosEmissao.value),0,2)) = 31 ) then
                dataEMISSAO := '30/'
           else
                dataEMISSAO := copy(Q_PagtosEmissao.AsString,0,3);
    end ;

    IF    EMISSAO_DATA = 'S' then begin
           if copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2) = '12' then
                dataEMISSAO := dataEMISSAO + '01/'
           else
           begin
                mesEMISSAO := strtoint(copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2))+1;
                if mesEMISSAO < 10 then
                        dataEMISSAO := dataEMISSAO +'0' +inttostr(mesEMISSAO) +'/'
                else
                        dataEMISSAO := dataEMISSAO +inttostr(mesEMISSAO) +'/';
           end;
           if copy(formatdatetime('MM/DD/YYYY',Q_PagtosEmissao.value),0,2) = '12' then
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_PagtosEmissao.value),0,4))+1
           else
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_PagtosEmissao.value),0,4));
   end ;
   //dataEMISSAO := dataEMISSAO + inttostr(anoEMISSAO);
   MaskEdit2.Text := DateToStr(Emissao);

      /////////////////







   parcelas := strtoint(edit4.text)+1;
   data := strtodate(Maskedit1.text);
   datas := formatdatetime('DD/MM/YYYY',data);

   data_EMISSAO  := strtodate(Maskedit2.text);
   datas_EMISSAO  := formatdatetime('DD/MM/YYYY',data_EMISSAO);

   previsto := formatdatetime('DD/MM/YYYY',Q_PAGTOSVENCIMENTOPREVISTO.value);
   virano := false;


   for I := 2 to parcelas do
   begin
        numdoc := Q_PagtosDocumento.AsString +' ' +inttostr(i) +'/' +inttostr(parcelas);

        if i > 2 then
        begin
                ////VENCIMENTO/////
                data := strtodate(datas);
                if (copy(formatdatetime('MM/DD/YYYY',data),0,2) = '01') and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) > 28) then
                        datas := '28/'
                else
                if (strtoint(copy(formatdatetime('MM/DD/YYYY',data),0,2)) in [3,5,7,8,10]) and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) = 31 ) then
                        datas := '30/'
                else
                        datas := copy(formatdatetime('DD/MM/YYYY',data),0,3);

                auxs := copy(formatdatetime('MM/DD/YYYY',data),0,2);
                auxi := strtoint(auxs) + 1;
                if auxi = 13 then                                  
                begin
                        auxi := 1;
                        virano := true;
                end;                
                auxs := inttostr(auxi);

                if length(auxs) = 1 then
                        datas := datas + '0' +auxs +'/'
                else
                        datas := datas +auxs +'/';

                auxs := copy(formatdatetime('YYYYMMDD',data),0,4);
                if virano then
                        auxi := strtoint(auxs) + 1
                else
                        auxi := strtoint(auxs);
                datas := datas + inttostr(auxi);
                datas_emissao := formatdatetime('DD/MM/YYYY',(IncMonth(emissao, i-1)))     ;
                ////VENCIMENTO//////

                  ////EMISSAO/////
                {data_EMISSAO := strtodate(dataEMISSAO);
                if (copy(formatdatetime('MM/DD/YYYY',data_EMISSAO),0,2) = '01') and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data_EMISSAO),0,2)) > 28) then
                        datas_EMISSAO := '28/'
                else
                if (strtoint(copy(formatdatetime('MM/DD/YYYY',data_EMISSAO),0,2)) in [3,5,7,8,10]) and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data_EMISSAO),0,2)) = 31 ) then
                        datas_EMISSAO := '30/'
                else
                        datas_EMISSAO := copy(formatdatetime('DD/MM/YYYY',data_EMISSAO),0,3);

                auxs := copy(formatdatetime('MM/DD/YYYY',data_EMISSAO),0,2);
                auxi := strtoint(auxs) + 1;
                if auxi = 13 then                                  
                begin
                        auxi := 1;
                        virano := true;
                end;                
                auxs := inttostr(auxi);

                if length(auxs) = 1 then
                        datas_EMISSAO := datas_EMISSAO + '0' +auxs +'/'
                else
                        datas_EMISSAO := datas_EMISSAO +auxs +'/';

                auxs := copy(formatdatetime('YYYYMMDD',data_EMISSAO),0,4);
                if virano then
                        auxi := strtoint(auxs) + 1
                else
                        auxi := strtoint(auxs);
                datas_EMISSAO := datas_EMISSAO + inttostr(auxi);}
                ////EMISSAO//////
        end;
        
        ///////PREVISTO////////
      { PREVISTO := formatdatetime('DD/MM/YYYY',(IncMonth(VENCIMENTO, i-1))) ;
       DATAS := formatdatetime('DD/MM/YYYY',(IncMonth(VENCIMENTOPREV, i-1))) ;

        data := strtodate(previsto);
        if (copy(formatdatetime('MM/DD/YYYY',data),0,2) = '01') and
           (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) > 28) then
                previsto := '28/'
        else
        if (strtoint(copy(formatdatetime('MM/DD/YYYY',data),0,2)) in [3,5,7,8,10]) and
           (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) = 31 ) then
                previsto := '30/'
        else
                previsto := copy(formatdatetime('DD/MM/YYYY',data),0,3);

        auxs := copy(formatdatetime('MM/DD/YYYY',data),0,2);
        auxi := strtoint(auxs) + 1;
        if auxi = 13 then                                  
        begin
                auxi := 1;
                virano := true;
        end;                
        auxs := inttostr(auxi);

        if length(auxs) = 1 then
                previsto := previsto + '0' +auxs +'/'
        else
                previsto := previsto +auxs +'/';

        auxs := copy(formatdatetime('YYYYMMDD',data),0,4);
        if virano then
        Begin
                auxi := strtoint(auxs) + 1;
                virano := false //Daniel
        End else
                auxi := strtoint(auxs);
        previsto := previsto + inttostr(auxi); }
        //////PREVISTO///////////

        Q_AUXI.SQL.Clear;
        Q_AUXI.SQL.Add('SELECT MAX(NUMERO) AS CODIGO FROM CPAPAGA');
        Q_AUXI.Open;

        codi := Q_AUXI.fieldbyname('CODIGO').asinteger + 1;

        IF EMISSAO_DATA = 'N' then begin
              Q_AUXI.SQL.Clear;
              Q_AUXI.SQL.Add('INSERT INTO CPAPAGA (NUMERO, DOCUMENTO, FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, VENCIMENTO, ');
              Q_AUXI.SQL.Add('BANCOCONTA, EMISSAO, MOEDA, DATAMOEDA, MOEDAORIGINAL, DATAMOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('VALORORIGINAL, VENCIMENTOPREVISTO, HISTORICO, FLAG, SITUACAO, SALDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, FLAG_FLUXO)');
              Q_AUXI.SQL.Add('SELECT ' +inttostr(codi) +',' +'''' +numdoc +'''' +', FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' +datas +'''' +',103), ');
              Q_AUXI.SQL.Add('BANCOCONTA, EMISSAO, MOEDA, DATAMOEDA, MOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('DATAMOEDAORIGINAL, VALORORIGINAL, ' );
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' +previsto +'''' +',103), ');
              Q_AUXI.SQL.Add('HISTORICO, FLAG, SITUACAO, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, ''S'' FROM CPAPAGA ');
              Q_AUXI.SQL.Add('WHERE NUMERO = ' +'''' +Q_PagtosNumero.asstring +'''');
              Q_AUXI.ExecSQL;
        END ELSE BEGIN
              Q_AUXI.SQL.Clear;
              Q_AUXI.SQL.Add('INSERT INTO CPAPAGA (NUMERO, DOCUMENTO, FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, VENCIMENTO, ');
              Q_AUXI.SQL.Add('BANCOCONTA, EMISSAO, MOEDA, DATAMOEDA, MOEDAORIGINAL, DATAMOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('VALORORIGINAL, VENCIMENTOPREVISTO, HISTORICO, FLAG, SITUACAO, SALDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, FLAG_FLUXO)');
              Q_AUXI.SQL.Add('SELECT ' +inttostr(codi) +',' +'''' +numdoc +'''' +', FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' +datas +'''' +',103), ');
              Q_AUXI.SQL.Add('BANCOCONTA,CONVERT(SMALLDATETIME,'+'''' +datas_EMISSAO +'''' +',103), MOEDA, DATAMOEDA, MOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('DATAMOEDAORIGINAL, VALORORIGINAL, ' );
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' +previsto +'''' +',103), ');
              Q_AUXI.SQL.Add('HISTORICO, FLAG, SITUACAO, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, ''S'' FROM CPAPAGA ');
              Q_AUXI.SQL.Add('WHERE NUMERO = ' +'''' +Q_PagtosNumero.asstring +'''');
              Q_AUXI.ExecSQL;
        END ;



        Q_AUXI.SQL.Clear;
        Q_AUXI.SQL.Add('SELECT * FROM CPADPAG WHERE NUMERO = ' +Q_PagtosNumero.asstring);
        Q_AUXI.Open;

        if Q_AUXI.recordcount > 0 then
        begin
                Q_AUXI.SQL.Clear;
                Q_AUXI.SQL.Add('INSERT INTO CPADPAG (NUMERO, CODDESCACRES, DATA, DESCACRESC, ');
                Q_AUXI.SQL.Add('HISTORICO) SELECT ' +inttostr(codi) +', CODDESCACRES, DATA, DESCACRESC, ');
                Q_AUXI.SQL.Add('HISTORICO FROM CPADPAG WHERE NUMERO = ' +Q_PagtosNumero.asstring);
                Q_AUXI.ExecSQL;
        end;
   end;
   loc := Q_PagtosDocumento.asstring +' 1/' +inttostr(strtoint(edit4.text)+1);
   Q_AUXI.SQL.Clear;
   Q_AUXI.SQL.Add('UPDATE CPAPAGA SET DOCUMENTO = ');
   Q_AUXI.SQL.Add('''' +Q_PagtosDocumento.asstring +' 1/' +inttostr(strtoint(edit4.text)+1) +'''');
   Q_AUXI.SQL.Add('WHERE NUMERO = ' +'''' +Q_PagtosNumero.asstring +'''');
   Q_AUXI.ExecSQL;
   Q_PAGTOS.SQL.Clear;
   Q_PAGTOS.SQL.Add('SELECT * FROM CPAPAGA WHERE DOCUMENTO = ' +'''' +loc +'''');
   Q_PAGTOS.Open;
   MessageDlg('Repetição efetuada com sucesso!', mtInformation, [mbok], 0);
   SpeedButton2.enabled := true;
   Fonte.enabled := true;
   SpeedButton1.enabled := true;
   SBT_REFR.enabled := true;
   Panel10.Visible := false;
   TBN_PAGA.enabled := true;
end;

procedure TFPagamentos.Q_CONTGAfterDelete(DataSet: TDataSet);
begin
try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CONTG]);
    end;
  except
    begin
       Q_CONTG.RevertRecord;
    end;
  end;
end;

procedure TFPagamentos.Q_CONTGAfterPost(DataSet: TDataSet);
VAR SQL: STRING;
    NUMERO: STRING;
    PAN   : STRING;
begin

     NUMERO:= Q_CONTGNUMERO.AsString ;
     PAN:=    Q_CONTGPACON_ID.ASSTRING;
try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_CONTG]);
  end;
  except
    begin
      Q_CONTG.RevertRecord;
    end;
  end;

     IF PAN = '' THEN BEGIN

        SQL:= ' SELECT MAX(PACON_ID) MAIOR FROM CPAPACON  ' ;


              Q_AUXI.CLOSE;
              Q_AUXI.SQL.CLEAR;
              Q_AUXI.SQL.Add(SQL);
              Q_AUXI.OPEN;

         PAN:= Q_AUXI.FieldByName('MAIOR').ASSTRING;

      END;

            SQL:= ' UPDATE   CPAPACON SET VALOR =  ' +
                  ' (SELECT  B.VALORTITULO * '+ Q_CONTGPERCENTUAL.AsString + ' / 100 VALOR ' +
                  '   FROM   CPAPACON A,   ' +
                  '          CPAPAGA B     ' +
                  '   WHERE  A.NUMERO = B.NUMERO  ' +
                  '   AND    A.NUMERO = ' + Q_PagtosNumero.ASSTRING +
                  '   AND    A.PACON_ID = '+  PAN + ')' +
                  ' WHERE    NUMERO = ' + Q_PagtosNumero.ASSTRING +
                  ' AND      PACON_ID = '+ PAN ;


              Q_AUXI.CLOSE;
              Q_AUXI.SQL.CLEAR;
              Q_AUXI.SQL.Add(SQL);
              Q_AUXI.ExecSQL;


  Q_CONTG.Close;
  Q_CONTG.Open;
  Q_CONTG.Locate('PACON_ID',PAN,[]);

   Q_AUX1.CLOSE;
   Q_AUX1.OPEN;
   Q_SOMA.close;
   Q_SOMA.open;
   
end;

procedure TFPagamentos.Q_CONTGBeforeDelete(DataSet: TDataSet);
begin
 if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFPagamentos.Q_CONTGNewRecord(DataSet: TDataSet);
begin
        Q_CONTGNUMERO.AsString:= Q_PagtosNumero.ASSTRING;
end;

procedure TFPagamentos.btExcClick(Sender: TObject);
var SQL:String;
begin
        SQL := ' DELETE FROM CPAIPACON WHERE NUMERO = ' + Q_PagtosNumero.AsString;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.EXECSQL;

        Q_CONTB.Close;
        Q_CONTB.Open;

end;

procedure TFPagamentos.Q_PagtosAfterScroll(DataSet: TDataSet);
begin
        //Label56.Caption:= Q_FORNNUMERO.AsString + ' - ' + Q_FORNAGENCIA.AsString + ' - ' + Q_FORNCONTA.AsString;
end;

procedure TFPagamentos.wwDBEdit28Exit(Sender: TObject);
begin

   IF wwDBEdit28.text = '  /  /    ' then  begin
      if (Q_BX.State = dsEdit) then begin
         Q_BxDataDebito.asstring := '' ;

        { Q_AUX.SQL.CLEAR;
         Q_AUX.SQL.ADD(' delete from cpamovi where mov_sequ = ' + Q_BxSequencia.AsString );
         Q_AUX.EXECSQL;  }
      end ;
   end ;

end;

procedure TFPagamentos.SpeedButton9Click(Sender: TObject);
{var sql,sql1,deleta,sinal:string;
    valo,iMySinal,aliquota,valor1:real;
    codi:integer;  }
    var desconto : Double;
begin

   Q_Det.Last;
   if Q_Det.RecordCount > 0 then
   begin
       MessageBox(Self.Handle, 'Já foram gerados descontos para este pagamento!','Informação', MB_OK + MB_ICONEXCLAMATION);
       Abort;
   end;


   try
       FMenu.Database1.StartTransaction;
       qrGeraDescontos.Params[0].AsInteger := Q_PagtosNumero.Value;
       qrGeraDescontos.Params[1].AsString := Q_PagtosFornecedor.Value;
       qrGeraDescontos.ExecSQL;
       FMenu.Database1.Commit;
   except
       BEGIN
           MessageBox(Self.Handle, 'Aconteceu um erro ao tentar gerar os descontos', 'Erro', MB_OK + MB_ICONERROR);
           FMenu.Database1.Rollback;
           Abort;
       end;
   end;


   q_det.close;
   q_det.open;
   Q_Det.First;

   desconto := 0;
   while not Q_Det.Eof do
   begin
        desconto := desconto + Q_DetDescAcresc.Value;
        Q_Det.Next;
   end ;
   Q_Pagtos.Edit;
   Q_pagtosDescAcresc.Value :=  desconto;
   Q_Pagtos.Post;

    {codi := q_pagtosnumero.value;
    valo := q_pagtosvalortitulo.value;
    sql := 'select min(dif_limite)limite from cpadife ';
    Q_auxiliar.close;
    q_auxiliar.sql.Clear;
    q_auxiliar.sql.add(sql);
    q_auxiliar.Open;
    if valo < q_auxiliar.fieldbyname('limite').value then begin
       showmessage('Nenhum registro será gerado automaticamente');
       deleta := 'delete from cpadpag where numero = '+inttostr(codi);
       q_deleta.close;
       q_deleta.SQL.clear;
       q_deleta.sql.add(deleta);
       q_deleta.execsql;
       q_pagtos.edit;
       q_pagtosdescacresc.asstring := '';
       q_pagtos.post;
    end
    else begin
        sql:=   'select des.dif_limite,'+
                '     des.dif_codi dificodi,'+
                '     des.dif_desc descdifi,'+
                '     des.dif_aliq ,'+
                '     des.dif_sinal sinal,'+
                '     (pag.valortitulo * des.dif_aliq)/100 valor,'+
                '     pag.numero codipaga '+
                'from cpadife des,cpapaga pag '+
                'where des.dif_retfonte = ''S'' '+
                '      and pag.numero = '+inttostr(codi);
        Q_auxiliar.close;
        q_auxiliar.sql.Clear;
        q_auxiliar.sql.add(sql);
        q_auxiliar.Open;
        valor1 := 0;
        while not q_auxiliar.eof do begin
                aliquota := 0;
                if valo >= q_auxiliar.fieldbyname('dif_limite').value then begin
                        if q_auxiliar.fieldbyname('sinal').value = '+' then begin
                           iMySinal := 1
                        end
                        else begin
                           iMySinal := -1;
                        end;
                   aliquota := q_auxiliar.fieldbyname('dif_aliq').value * (iMySinal);
                   valor1 := valor1 + ((valo * aliquota)/100);
                   q_pagtos.edit;
                   q_pagtosdescacresc.value := valor1;
                   q_pagtos.post;
                end;
                q_auxiliar.next;
        end;
        deleta := 'delete from cpadpag where numero = '+inttostr(codi);
        q_deleta.close;
        q_deleta.SQL.clear;
        q_deleta.sql.add(deleta);
        q_deleta.execsql;
        q_auxiliar.first;

        while not q_auxiliar.eof do begin
                if valo >= q_auxiliar.fieldbyname('dif_limite').value then begin
                   sql1:= 'insert INTO cpadpag (numero, coddescacres, data, descacresc, historico) '+
                          '                values ('+q_auxiliar.fieldbyname('codipaga').asstring+','+
                          '                       '+''''+q_auxiliar.fieldbyname('dificodi').asstring+''''+','+
                          '                       '+''''+FormatDateTime('MM/DD/YYYY',(DATE))+''''+',';
                          if q_auxiliar.fieldbyname('sinal').value = '+' then begin
                             iMySinal := 1
                          end
                          else begin
                             iMySinal := -1;
                          end;
                   sinal := floattostr(q_auxiliar.fieldbyname('VALOR').value * iMySinal);
                   sql1 := sql1 + ' '+(Funcoes.Converte(sinal,',','.'))+','+
                                  ' '+''''+q_auxiliar.fieldbyname('descdifi').asstring+''''+' )';
                   q_auxiliar1.Close;
                   q_auxiliar1.sql.clear;
                   q_auxiliar1.sql.add(sql1);
                   q_auxiliar1.execsql;
                end;
                Q_auxiliar.Next;
        end;
     q_auxiliar.close;
     q_auxiliar1.close;
     q_deleta.close;
     q_det.close;
     q_det.open;
     q_det.locate('numero',inttostr(codi),[]);
    end;   }

end;

procedure TFPagamentos.SpeedButton10Click(Sender: TObject);
var sql:string;
achei : Boolean;
begin
Q_Det.First;
while not Q_Det.Eof do
begin
    if Q_DetCP.AsString <> '' then
    begin
        MessageBox(Self.Handle, 'Existem descontos/acrescimos com pagamentos gerados!', 'Informação', MB_OK + MB_ICONWARNING);
        Abort;
    end;
    Q_Det.Next;
end;

        if messagedlg('Confirma exclusão de todos os Descontos/Acréscimos ?',mtinformation,mbokcancel,0)
           = mrok then begin
           sql := 'Delete from cpadpag where numero = '+codipaga;
           q_deleta.close;
           q_deleta.SQL.clear;
           q_deleta.sql.add(sql);
           q_deleta.execsql;
           q_det.close;
           q_det.open;
        end;
end;

procedure TFPagamentos.btnAddClick(Sender: TObject);
begin
  Fonte.BtnClick(nbInsert);
end;

procedure TFPagamentos.btnAtualizarClick(Sender: TObject);
begin
  Fonte.BtnClick(nbRefresh);
end;

procedure TFPagamentos.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFPagamentos.btnDeleteClick(Sender: TObject);
begin
   Fonte.BtnClick(nbDelete);
end;

procedure TFPagamentos.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFPagamentos.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFPagamentos.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFPagamentos.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  Fonte.BtnClick(nbPost);
end;

procedure TFPagamentos.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

procedure TFPagamentos.Repete_Lancamento;
    var
         Parcelas, i : Integer;
         Emissao, Venc, VencPrev : TDateTime;
         strEmissao : string;
         strVencimentoPrev : string;
         strVencimento : string;
         Codi : Integer;
         numdoc : String;
         loc : String;

begin

        if Edit4.Text = '' then
        begin
            MessageBox(Self.Handle, 'O número de parcelas deve ser informado!', 'Erro', MB_OK + MB_ICONERROR);
            Abort;
        end;


        Parcelas := StrToInt(Edit4.Text);
        Emissao := IncMonth(Q_PagtosEmissao.Value,1);

        if IncMonth(Q_PagtosVencimento.Value,1) <> StrToDate(MaskEdit1.Text) then
             Venc := StrToDate(MaskEdit1.Text)
        else
             Venc := IncMonth(Q_PagtosVencimento.Value,1);


        {gerando um array com as datas}
        for i := 0 to Parcelas - 1 do
        begin
            ListBox2.Items.Add(FormatDateTime('DD/MM/YYYY',IncMonth(Venc,i)));
            ListBox3.Items.Add(FormatDateTime('DD/MM/YYYY',IncMonth(Emissao,i)));
        end;



        for i := 0 to Parcelas - 1 do
        begin
              Q_AUXI.close;
              Q_AUXI.SQL.Clear;
              Q_AUXI.SQL.Add('SELECT MAX(NUMERO) AS CODIGO FROM CPAPAGA');
              Q_AUXI.Open;
              codi := Q_AUXI.fieldbyname('CODIGO').asinteger + 1;
              numdoc := Q_PagtosDocumento.AsString +' ' +inttostr(i+2) +'/' +inttostr(parcelas + 1);



              IF CheckBox1.Checked = False then begin
              Q_AUXI.SQL.Clear;
              Q_AUXI.SQL.Add('INSERT INTO CPAPAGA (NUMERO, DOCUMENTO, FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, VENCIMENTO, ');
              Q_AUXI.SQL.Add('BANCOCONTA, EMISSAO, MOEDA, DATAMOEDA, MOEDAORIGINAL, DATAMOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('VALORORIGINAL, VENCIMENTOPREVISTO, HISTORICO, FLAG, SITUACAO, SALDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, FLAG_FLUXO, DT_COMPETENCIA)');
              Q_AUXI.SQL.Add('SELECT ' +inttostr(codi) +',' +'''' +numdoc +'''' +', FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' + ListBox2.Items[I] +'''' +',103), ');
              Q_AUXI.SQL.Add('BANCOCONTA, EMISSAO, MOEDA, DATAMOEDA, MOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('DATAMOEDAORIGINAL, VALORORIGINAL, ' );
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' + ListBox2.Items[I] +'''' +',103), ');
              Q_AUXI.SQL.Add('HISTORICO, FLAG, SITUACAO, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, ''S'', DT_COMPETENCIA FROM CPAPAGA ');
              Q_AUXI.SQL.Add('WHERE NUMERO = ' +'''' +Q_PagtosNumero.asstring +'''');
              Q_AUXI.ExecSQL;
        END ELSE BEGIN
              Q_AUXI.SQL.Clear;
              Q_AUXI.SQL.Add('INSERT INTO CPAPAGA (NUMERO, DOCUMENTO, FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, VENCIMENTO, ');
              Q_AUXI.SQL.Add('BANCOCONTA, EMISSAO, MOEDA, DATAMOEDA, MOEDAORIGINAL, DATAMOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('VALORORIGINAL, VENCIMENTOPREVISTO, HISTORICO, FLAG, SITUACAO, SALDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, FLAG_FLUXO, DT_COMPETENCIA)');
              Q_AUXI.SQL.Add('SELECT ' +inttostr(codi) +',' +'''' +numdoc +'''' +', FORNECEDOR, RAZAO, ');
              Q_AUXI.SQL.Add('CONTAGERENCIAL, VALORTITULO, DESCACRESC, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' + ListBox2.Items[I] +'''' +',103), ');
              Q_AUXI.SQL.Add('BANCOCONTA,CONVERT(SMALLDATETIME,'+'''' + ListBox3.Items[I] +'''' +',103), MOEDA, DATAMOEDA, MOEDAORIGINAL, ');
              Q_AUXI.SQL.Add('DATAMOEDAORIGINAL, VALORORIGINAL, ' );
              Q_AUXI.SQL.Add('CONVERT(SMALLDATETIME,'+'''' + ListBox2.Items[I] +'''' +',103), ');
              Q_AUXI.SQL.Add('HISTORICO, FLAG, SITUACAO, VALORLIQUIDO, ');
              Q_AUXI.SQL.Add('FILIAL, CONFERENCIA, ''S'',  DATEADD ( MONTH ,' + IntToStr(i+1) +', DT_COMPETENCIA )     FROM CPAPAGA ');
              Q_AUXI.SQL.Add('WHERE NUMERO = ' +'''' +Q_PagtosNumero.asstring +'''');
              Q_AUXI.ExecSQL;
               END;


        Q_AUXI.SQL.Clear;
        Q_AUXI.SQL.Add('SELECT * FROM CPADPAG WHERE NUMERO = ' +Q_PagtosNumero.asstring);
        Q_AUXI.Open;

        if Q_AUXI.recordcount > 0 then
        begin
                Q_AUXI.SQL.Clear;
                Q_AUXI.SQL.Add('INSERT INTO CPADPAG (NUMERO, CODDESCACRES, DATA, DESCACRESC, ');
                Q_AUXI.SQL.Add('HISTORICO) SELECT ' +inttostr(codi) +', CODDESCACRES, DATA, DESCACRESC, ');
                Q_AUXI.SQL.Add('HISTORICO FROM CPADPAG WHERE NUMERO = ' +Q_PagtosNumero.asstring);
                Q_AUXI.ExecSQL;
        end;
   end;
   loc := Q_PagtosDocumento.asstring +' 1/' +inttostr(strtoint(edit4.text)+1);
   Q_AUXI.SQL.Clear;
   Q_AUXI.SQL.Add('UPDATE CPAPAGA SET DOCUMENTO = ');
   Q_AUXI.SQL.Add('''' +Q_PagtosDocumento.asstring +' 1/' +inttostr(strtoint(edit4.text)+1) +'''');
   Q_AUXI.SQL.Add('WHERE NUMERO = ' +'''' +Q_PagtosNumero.asstring +'''');
   Q_AUXI.ExecSQL;
   Q_PAGTOS.SQL.Clear;
   Q_PAGTOS.SQL.Add('SELECT * FROM CPAPAGA WHERE DOCUMENTO = ' +'''' +loc +'''');
   Q_PAGTOS.Open;


         MessageDlg('Repetição efetuada com sucesso!', mtInformation, [mbok], 0);
         SpeedButton2.enabled := true;
         Fonte.enabled := true;
         SpeedButton1.enabled := true;
         SBT_REFR.enabled := true;
         Panel10.Visible := false;
         TBN_PAGA.enabled := true;

end;

procedure TFPagamentos.SpeedButton11Click(Sender: TObject);
begin
  Repete_Lancamento;
end;

procedure TFPagamentos.wwDBEdit21Exit(Sender: TObject);
Var I, Size : Integer;
    C1, C2 : string;
    barras : string;
    achei : Boolean;
begin
  {verifica codigo de barras}
   barras := StringReplace(wwDBEdit21.Text,'.','',[rfReplaceall]);
   for i := 1 to Length(barras) do
   begin
        IF  barras[i] in ['0'..'9'] then
           achei := True;
   end;

   if achei = True then
   begin

        C1 := wwDBEdit21.Text;
        C2 := '';
        for i := 0 to Length(C1) do
         if (C1[i] in ['0'..'9']) then
           C2 := C2 + C1[i];

         if length(c2) <> 47 then
         begin
              MessageBox(Self.Handle, pchar('Código de Barras Inválido!!!!'+
              #13+ 'O código deve possuir 47 caracteres, este erro pode causar problemas ao gerar o pagamento escritural!'), 'Erro', MB_OK + MB_ICONERROR);
              wwDBEdit21.SetFocus;
         end;
   end
   else
      Q_PagtosBARRAS.AsString := '';
end;

procedure TFPagamentos.Mostra_conversao(status: Integer);
begin
   if status = 1 then
   begin
       label1.Visible := True;
       label1.Caption := 'Valor '+ wwDBLookupCombo4.Text;
       label17.Visible := True;
       label12.Visible := True;
       label67.Visible := True;
       label67.Caption := 'Valor '+ wwDBLookupCombo4.Text;
       wwDBEdit11.Visible := True;
       wwDBEdit7.Visible := True;
       DBEdit5.Visible := True;
       DBEdit8.Visible := True;

       label13.Left := 407;
       label18.Left := 407;
       label20.Left := 407;
       wwDBEdit8.Left := 407;
       wwDBEdit13.Left := 407;
       DBEdit1.Left := 407;

       label10.Left := 497;
       label19.Left := 497;
       label21.Left := 497;
       wwDBEdit6.Left := 497;
       wwDBEdit12.Left := 497;
       DBEdit2.Left := 497;

       SpeedButton9.Left := 640;

       //BAIXAS
       label68.Visible := True;
       label69.Visible := True;
       label69.Caption := 'A Abater ' + wwDBLookupCombo4.Text;
       DBEdit9.Visible := True;
       DBEdit10.Visible := True;

       Label32.Left := 541;
       wwDBEdit25.Left := 541;
       Label33.Left := 639;
       wwDBEdit26.Left := 639;

   end
   else
   begin
       label1.Visible := False;
       label1.Caption := 'Valor '+ wwDBLookupCombo4.Text;
       label17.Visible := False;
       label12.Visible := False;
       label67.Visible := False;
       label67.Caption := 'Valor '+ wwDBLookupCombo4.Text;
       wwDBEdit11.Visible := False;
       wwDBEdit7.Visible := False;
       DBEdit5.Visible := False;
       DBEdit8.Visible := False;

       label13.Left := 407-168;
       label18.Left := 407-168;
       label20.Left := 407-168;
       wwDBEdit8.Left := 407-168;
       wwDBEdit13.Left := 407-168;
       DBEdit1.Left := 407-168;

       label10.Left := 497-168;
       label19.Left := 497-168;
       label21.Left := 497-168;
       wwDBEdit6.Left := 497-168;
       wwDBEdit12.Left := 497-168;
       DBEdit2.Left := 497-168;

       SpeedButton9.Left := 640-168;

       //BAIXAS
       label68.Visible := False;
       label69.Visible := False;
       label69.Caption := 'A Abater ' + wwDBLookupCombo4.Text;
       DBEdit9.Visible := False;
       DBEdit10.Visible := False;

       Label32.Left := 541-150;
       wwDBEdit25.Left := 541-150;
       Label33.Left := 639-150;
       wwDBEdit26.Left := 639-150;
   end;
end;

procedure TFPagamentos.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if wwDBLookupCombo4.Text <> Q_PARAPAR_MOED.asstring then
     Mostra_conversao(1)
else
     Mostra_conversao(2);

     wwDBLookupCombo8.Text := wwDBLookupCombo4.Text;
end;

procedure TFPagamentos.wwDBEdit11Exit(Sender: TObject);
begin
        Q_Pagtos.Edit;
        Q_PagtosDataMoeda.Value := Q_PagtosDataMoedaOriginal.Value;

        if Q_PagtosDataMoedaOriginal.AsString = '' then
        begin
            ShowMessage('Informe a data de conversão!');
            wwDBEdit11.SetFocus;
        end;
end;

procedure TFPagamentos.DBEdit5Exit(Sender: TObject);
var taxa : Double;
    valor : Double;
    reais : Double;
    dt_conversao : TDateTime;
begin

  dt_conversao := Q_PagtosDataMoedaOriginal.Value;
  with qrAux do
  begin
      close;
      sql.Clear;
      sql.Add('SELECT TOP 1 CMO_VALO AS TX_CAMBIO FROM CPACMOE WHERE CONVERT(CHAR(10), CMO_DATA, 112) <= '''+ FormatDateTime('YYYYMMDD', dt_conversao) + ''''+
              'AND CMO_MOED = ''' + wwDBLookupCombo4.Text +   ''' ORDER BY CMO_DATA desc');
      Open;
  end;

  taxa := qrAux.fieldbyname('TX_CAMBIO').AsFloat;
  valor := Q_Pagtosvalor_dolar.Value;

  reais := valor * taxa;

  Q_Pagtos.Edit;
  Q_PagtosValorOriginal.Value := reais;
  Q_PagtosValorTitulo.Value := reais;

end;

procedure TFPagamentos.Q_PagtosAfterOpen(DataSet: TDataSet);
begin
if wwDBLookupCombo4.Text = Q_PARAPAR_MOED.asstring then
   Mostra_conversao(1)
else
   Mostra_conversao(2);
end;

procedure TFPagamentos.DBEdit10Exit(Sender: TObject);
var taxa : Double;
    valor : Double;
    reais : Double;
begin

  taxa := Q_Bxtx_dolar.Value;
  valor := Q_Bxvalor_dolar.Value;

  reais := valor * taxa;

  Q_BxAbater.Value := reais;

end;

procedure TFPagamentos.btnGeraPagamentosClick(Sender: TObject);
begin
 if MessageBox(Self.Handle, 'Confirma geração de pagamentos?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
 begin
     try
         FMenu.Database1.StartTransaction;
         qrGeraPagamentos.Params[0].AsInteger := Q_PagtosNumero.Value;
         qrGeraPagamentos.ExecSQL;
         Q_Det.Close;
         Q_Det.Open;
         FMenu.Database1.Commit;
     except
         begin
            MessageBox(Self.Handle, 'Aconteceu um erro ao tentar gravar as informações!', 'Confirmação', MB_OK + MB_ICONERROR);
            FMenu.Database1.Rollback;
         end;
     end;

 end;
end;

procedure TFPagamentos.DS_DetDataChange(Sender: TObject; Field: TField);
begin
  if Q_DetCP.AsString = '' then
        btnGeraPagamentos.Enabled := True
  else
        btnGeraPagamentos.Enabled := False;
end;

procedure TFPagamentos.ds_difeDataChange(Sender: TObject; Field: TField);
begin
        if Q_DifeDIF_FORN.Value = '' then
                btnGeraPagamentos.Enabled := False
        else
                btnGeraPagamentos.Enabled := True;
end;

procedure TFPagamentos.edtCompetenciaEnter(Sender: TObject);
var d : TDateTime;
begin
        if wwDBEdit3.Text <> '' then begin
        d := StrToDate(wwDBEdit3.Text);
        if edtCompetencia.Text = '  /    ' then
                edtCompetencia.Text := FormatDateTime('MM/yyyy', d);
    end;
end;

procedure TFPagamentos.edtCompetenciaChange(Sender: TObject);
begin
     Q_Pagtos.Edit;
end;

procedure TFPagamentos.DS_PagtosDataChange(Sender: TObject; Field: TField);
begin
  if Q_PagtosDT_COMPETENCIA.AsString <> '' then
      edtCompetencia.Text := FormatDateTime('MM/YYYY', Q_PagtosDT_COMPETENCIA.Value);


  if Q_PagtosFornecedor.AsString <> '' then begin
      with qrConta do begin
          CLOSE;
          SQL.Clear;
          SQL.Add(
            '  SELECT * FROM FORNECEDOR_BANCO WHERE FOR_CODI = ' + QuotedStr(Q_PagtosFornecedor.AsString) +
            '  ORDER BY PADRAOSN DESC '
          );
          Open;
      end;
      lbConta.Caption :=  qrContaBAN_AGEN.AsString + ' - ' + qrContaBAN_CONTA.AsString;
  end;

end;

procedure TFPagamentos.qrListaCentroCustoBeforePost(DataSet: TDataSet);
begin
  qrListaCentroCustoNumero.Value := Q_PagtosNumero.AsInteger;
end;

procedure TFPagamentos.qrListaCentroCustoAfterPost(DataSet: TDataSet);
begin
  qrListaCentroCusto.Close;
  qrListaCentroCusto.Parameters[0].Value := Q_PagtosNumero.AsInteger;
  qrListaCentroCusto.Open;
end;

procedure TFPagamentos.qrPgtoDespesasBeforePost(DataSet: TDataSet);
begin
   qrPgtoDespesasNumero.Value := Q_PagtosNumero.AsInteger;
end;

procedure TFPagamentos.qrPgtoDespesasAfterPost(DataSet: TDataSet);
begin
 qrPgtoDespesas.close;
       qrPgtoDespesas.Parameters[0].Value := Q_PagtosNumero.AsInteger;
       qrPgtoDespesas.Open;
end;

end.


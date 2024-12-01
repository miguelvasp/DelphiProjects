unit UNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Wwdotdot, Wwdbcomb, StdCtrls, Mask, wwdbedit, DBCtrls,
  ComCtrls, Tabnotbk, Buttons, ExtCtrls, Db, DBTables, Wwdatsrc, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, wwstorep, Wwtable, wwDialog, wwidlg;

type
  TFNF = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    DBNavigator1: TDBNavigator;
    TabbedNotebook1: TTabbedNotebook;
    Label18: TLabel;
    DBText4: TDBText;
    Panel1: TPanel;
    Label1: TLabel;
    DBE_NFI_CODI: TwwDBEdit;
    GroupBox1: TGroupBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Label23: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label26: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label29: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label3: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit5: TwwDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label11: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label12: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label13: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label14: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label16: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label27: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label2: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    DBG_INFI: TwwDBGrid;
    DBLC_INF_PROD: TwwDBLookupCombo;
    Q_NF: TwwQuery;
    DS_NF: TwwDataSource;
    DBText1: TDBText;
    Q_TDOC: TwwQuery;
    Q_TDOCTDOC_EMIT: TStringField;
    Q_TDOCTDOC_DEST: TStringField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_CLIF: TwwQuery;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_CLIFNBFINAL_ID: TAutoIncField;
    Q_CLIFCLIF_ID: TIntegerField;
    Q_CLIFCLIN_ID: TIntegerField;
    Q_CLIFNBFINAL_DT_INCL: TDateTimeField;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Q_CLINdest: TwwQuery;
    Q_CLINdestCLIN_RAZA: TStringField;
    Q_CLINdestCLIN_ID: TAutoIncField;
    Q_CLIFdest: TwwQuery;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Q_CLIFINAL: TwwQuery;
    Q_CLIFINALCLIF_ID: TAutoIncField;
    Q_CLIFINALCLIF_RAZA: TStringField;
    Q_CLIF2: TwwQuery;
    DS_CLIF2: TwwDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    DS_CLIF: TwwDataSource;
    Q_CLIF2NBFINAL_ID: TAutoIncField;
    Q_CLIF2CLIF_ID: TIntegerField;
    Q_CLIF2CLIN_ID: TIntegerField;
    Q_CLIF2NBFINAL_DT_INCL: TDateTimeField;
    Q_CLIF2CLIF_RAZA: TStringField;
    Q_UF: TwwQuery;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_AUX: TwwQuery;
    Panel3: TPanel;
    Label7: TLabel;
    Label36: TLabel;
    SpeedButton2: TSpeedButton;
    wwDBLookupCombo8: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    Q_CLIFdest2: TwwQuery;
    Q_CLIFdest2NBFINAL_ID: TAutoIncField;
    Q_CLIFdest2CLIF_ID: TIntegerField;
    Q_CLIFdest2CLIN_ID: TIntegerField;
    Q_CLIFdest2NBFINAL_DT_INCL: TDateTimeField;
    Q_CLIFdest2CLIF_RAZA: TStringField;
    wwDBLookupCombo9: TwwDBLookupCombo;
    DBText5: TDBText;
    DBText6: TDBText;
    DS_CLIFdest: TwwDataSource;
    DS_CLIFdest2: TwwDataSource;
    BitBtn1: TBitBtn;
    wwdbedit17: TEdit;
    Q_CLIFdest2CLIF_ID_1: TAutoIncField;
    Q_CLIFdest2CLIF_PESSOA: TStringField;
    Q_CLIFdest2CLIF_NOME: TStringField;
    Q_CLIFdest2CLIF_CGCCPF: TStringField;
    Q_CLIFdest2CLIF_INSCRG: TStringField;
    Q_CLIFdest2CLIF_ENDERECO: TStringField;
    Q_CLIFdest2CLIF_ENDERECO_COMPL: TStringField;
    Q_CLIFdest2CLIF_ENDERECO_BAIRRO: TStringField;
    Q_CLIFdest2CLIF_MUNICIPIO: TStringField;
    Q_CLIFdest2UF_SIGLA: TStringField;
    Q_CLIFdest2CLIF_CEP: TStringField;
    Q_CLIFdest2CLIF_TEL1: TStringField;
    Q_CLIFdest2CLIF_TEL2: TStringField;
    Q_CLIFdest2CLIF_FAX: TStringField;
    Q_CLIFdest2CLIF_EMAIL: TStringField;
    Q_CLIFdest2CLIF_CONTATO: TStringField;
    Q_CEP: TwwQuery;
    Label8: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Q_PAR: TwwQuery;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARPAR_CNPJ: TStringField;
    Q_PARPAR_INSC: TStringField;
    Q_PARPAR_ENDERECO: TStringField;
    Q_PARPAR_ENDERECO_COMPL: TStringField;
    Q_PARPAR_ENDERECO_BAIRRO: TStringField;
    Q_PARPAR_UF_SIGLA: TStringField;
    Q_PARPAR_CEP: TStringField;
    Q_PARPAR_TEL: TStringField;
    Q_PARPAR_FAX: TStringField;
    Q_PARPAR_EMAIL: TStringField;
    DS_PAR: TwwDataSource;
    DBText9: TDBText;
    Label9: TLabel;
    DBText10: TDBText;
    Q_INF: TwwQuery;
    DS_INF: TwwDataSource;
    Q_INFINF_CODI: TAutoIncField;
    Q_INFNFI_CODI: TIntegerField;
    Q_INFPRO_DESC: TStringField;
    Q_INFINF_QTDE: TFloatField;
    Q_INFINF_PUNI: TFloatField;
    Q_INFINF_AIPI: TFloatField;
    Q_INFINF_VIPI: TFloatField;
    Q_INFINF_TOTA: TFloatField;
    Q_INFINF_PESO: TFloatField;
    Q_INFINF_AICM: TFloatField;
    Q_INFINF_VICM: TFloatField;
    Q_INFUVEN_ID: TIntegerField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_PESO: TFloatField;
    Q_PRODPRO_VOLUME: TFloatField;
    Q_PRODPRO_VOLUME_PALLET: TFloatField;         
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODTPRO_ID: TIntegerField;
    Q_PRODUVEN_ID: TIntegerField;
    DS_PROD: TwwDataSource;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_INFUVEN_DESC: TStringField;
    Label10: TLabel;
    wwDBEdit13: TwwDBEdit;
    Label15: TLabel;
    DBText11: TDBText;
    UPD_INF: TUpdateSQL;
    Panel4: TPanel;
    Label17: TLabel;
    DBText12: TDBText;
    Label19: TLabel;
    DBText13: TDBText;
    Label20: TLabel;
    DBText14: TDBText;
    GroupBox5: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBCB_CFA_TIPI: TwwDBComboBox;
    DBEdit5: TDBEdit;
    Label35: TLabel;
    Label37: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit3: TDBEdit;
    GroupBox10: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    DBE_NFI_PLAC: TwwDBEdit;
    DBLC_NFI_UFVE: TwwDBLookupCombo;
    DBCB_NFI_TFRE: TwwDBComboBox;
    DBE_NFI_DSAI: TwwDBEdit;
    DBE_NFI_MARC: TwwDBEdit;
    DBE_NFI_QTDE: TwwDBEdit;
    DBE_NFI_ESPE: TwwDBEdit;
    DBE_NFI_PLIQ: TwwDBEdit;
    DBE_NFI_PBRU: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    Q_NFNFI_TFRE: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFTDOC_ID: TIntegerField;
    Q_NFNFI_EMIT_ORIG: TStringField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_DEST_ORIG: TStringField;
    Q_NFNFI_DEST_CLI: TIntegerField;
    Q_NFNFI_DEST_NOME: TStringField;
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_DEST_ENDERECO: TStringField;
    Q_NFNFI_DEST_COMPL: TStringField;
    Q_NFNFI_DEST_BAIRRO: TStringField;
    Q_NFNFI_DEST_UF_SIGLA: TStringField;
    Q_NFNFI_DEST_CEP: TStringField;
    Q_NFNFI_DEST_TEL: TStringField;
    Q_NFNFI_DEST_FAX: TStringField;
    Q_NFNFI_DEST_CGC: TStringField;
    Q_NFNFI_DEST_INSCRG: TStringField;
    Q_NFNFI_DEST_INSCTRB: TStringField;
    Q_NFNFI_DEST_PESS: TStringField;
    Q_NFNFI_VFRE: TFloatField;
    Q_NFNFI_VSEG: TFloatField;
    Q_NFNFI_BIPI: TFloatField;
    Q_NFNFI_VIPI: TFloatField;
    Q_NFNFI_BICM: TFloatField;
    Q_NFNFI_VICM: TFloatField;
    Q_NFNFI_VMER: TFloatField;
    Q_NFNFI_TOTA: TFloatField;
    Q_NFNFI_DSAI: TDateTimeField;
    Q_NFNFI_HSAI: TDateTimeField;
    Q_NFNFI_TRAN: TStringField;
    Q_NFNFI_PLAC: TStringField;
    Q_NFNFI_UF_SIGLA: TStringField;
    Q_NFNFI_MARC: TStringField;
    Q_NFNFI_QTDE: TIntegerField;
    Q_NFNFI_ESPE: TStringField;
    Q_NFNFI_PLIQ: TFloatField;
    Q_NFNFI_PBRU: TFloatField;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_CLIFNBFINAL_COD_CLIN: TStringField;
    Q_CLIF2NBFINAL_COD_CLIN: TStringField;
    Q_CLIFdestNBFINAL_COD_CLIN: TStringField;
    Q_CLIFdest2NBFINAL_COD_CLIN: TStringField;
    Q_FAT: TwwQuery;
    Q_FATCFA_DCFO: TStringField;
    Q_FATCFA_DCCF: TStringField;
    Q_FATTDOC_ID: TIntegerField;
    Q_FATCFA_TPA1: TStringField;
    Q_FATCFA_TPA2: TStringField;
    Q_FATCFA_TPA3: TStringField;
    Q_FATCFA_TICM: TStringField;
    Q_FATCFA_RICM: TFloatField;
    Q_FATCFA_FICM: TStringField;
    Q_FATCFA_IIPI: TStringField;
    Q_FATCFA_TIPI: TStringField;
    Q_FATCFA_FISS: TStringField;
    Q_FATCFA_AISS: TFloatField;
    Q_FATCFA_GDUP: TStringField;
    DS_FAT: TwwDataSource;
    Q_NFNFI_VDES: TFloatField;
    Q_NFCFA_ID: TIntegerField;
    Q_FATCFA_ID: TAutoIncField;
    UPD_NF: TUpdateSQL;
    BitBtn3: TBitBtn;
    Label21: TLabel;
    Q_NFOS_ID: TIntegerField;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    DS_MUNI: TwwDataSource;
    Label24: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Q_NFMUN_ID: TIntegerField;
    Q_CLIFdest2MUN_ID: TIntegerField;
    Q_PARMUN_ID: TIntegerField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Label28: TLabel;
    wwDBEdit11: TwwDBEdit;
    Q_INFINF_VOL: TFloatField;
    Q_INFPRO_ID: TIntegerField;
    Q_PARPAR_ID: TAutoIncField;
    Q_CLIFdestNBFINAL_ID: TAutoIncField;
    Q_CLIFdestCLIF_ID: TIntegerField;
    Q_CLIFdestCLIN_ID: TIntegerField;
    Q_CLIFdestNBFINAL_DT_INCL: TDateTimeField;
    Q_CLIFdestCLIF_RAZA: TStringField;
    DBText15: TDBText;
    DBRadioGroup4: TDBRadioGroup;
    Q_NFNFI_MOVESTQ: TStringField;
    Q_NFNFI_MARCADOR: TStringField;
    Q_NFMANI_ID: TIntegerField;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_VOL: TFloatField;
    Q_FATCFA_CODI: TStringField;
    Q_NFCFACODI: TStringField;
    Q_PRODPRO_PESO_LIQ: TFloatField;
    Q_INFINF_PESOLIQ: TFloatField;
    Q_INFINF_BICM: TFloatField;
    Panel5: TPanel;
    DBText16: TDBText;
    Panel6: TPanel;
    DBText17: TDBText;
    Panel7: TPanel;
    Label40: TLabel;
    Panel8: TPanel;
    Label41: TLabel;
    Panel9: TPanel;
    Label42: TLabel;
    Q_NFNFI_TRANS: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    Label43: TLabel;
    DBMemo2: TDBMemo;
    Q_NFTEXTO_LIVRE: TMemoField;
    Q_NFNFI_COBRAR: TStringField;
    Q_NFNFI_DTENTREGA_FIM: TDateTimeField;
    Q_NFNFI_ENTREGA: TStringField;
    Q_AUX2: TwwQuery;
    Q_NFNFI_NUMERO: TStringField;
    Panel10: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    Q_CLIFdest2CLIF_MUNICIPIO2: TStringField;
    Q_CLIFdest2CLIF_CARGAPALLET: TStringField;
    Q_CLIFdest2CLIE_ENDERECO: TStringField;
    Q_CLIFdest2CLIE_ENDERECO_COMPL: TStringField;
    Q_CLIFdest2CLIE_ENDERECO_BAIRRO: TStringField;
    Q_CLIFdest2CLIE_MUNICIPIO: TStringField;
    Q_CLIFdest2CLIE_MUN_ID: TIntegerField;
    Q_CLIFdest2CLIE_UF_SIGLA: TStringField;
    Q_CLIFdest2CLIE_CEP: TStringField;
    Q_NFNFI_CLONE: TStringField;
    Label44: TLabel;
    Label45: TLabel;
    Q_NFNFI_QTDEPALLET: TIntegerField;
    Q_INFINF_QTDERETORNADA: TFloatField;
    Q_INFINF_ITEM: TIntegerField;
    Q_CLIFdestCLIF_ENDERECO: TStringField;
    Q_NFNFI_RETORNADA: TStringField;
    Q_NFNFI_NFRS_REJEITADA: TStringField;
    STP_NFExNFR: TwwStoredProc;
    Q_NFNFI_GEROUNFE: TStringField;
    SpeedButton5: TSpeedButton;
    STP_NFRCOT: TwwStoredProc;
    Q_NFNFI_REDESPACHO: TStringField;
    GroupBox4: TGroupBox;
    wwDBComboBox1: TwwDBComboBox;
    wwDBLookupCombo16: TwwDBLookupCombo;
    Label48: TLabel;
    Q_TRANS2: TwwQuery;
    Q_TRANS2TRANS_FANTASIA: TStringField;
    Q_TRANS2TRANS_ID: TAutoIncField;
    Q_TRANS2MUN_ID: TIntegerField;
    Q_NFNFI_QTDEUV: TFloatField;
    Q_NFTPRO_ID: TIntegerField;
    Q_NFNFI_MARCADOR_NFRS: TStringField;
    Q_NFORD_ID: TIntegerField;
    Q_NFTRANS_ID: TIntegerField;
    Q_TRANS2TRANS_RAZA: TStringField;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_INFPRO_cod: TStringField;
    Q_NFNFI_DISCRIM: TStringField;
    STP_NF: TwwStoredProc;
    Q_NF55: TwwQuery;
    wwSearchDialog1: TwwSearchDialog;
    Q_NF55NFI_CODI: TAutoIncField;
    Q_NF55NFI_EMIT_CLi: TIntegerField;
    Q_NF55NFI_DEST_CLI: TIntegerField;
    Q_NF55NFI_ENTREGA: TStringField;
    Q_NF55NFI_DTENTREGA_FIM: TDateTimeField;
    Q_NF55NFI_COBRAR: TStringField;
    Q_NF55NFI_DEST_RAZA: TStringField;
    Q_NF55NFI_NUMERO: TStringField;
    Q_NF55OS_ID: TIntegerField;
    Q_NF55NFI_REDESPACHO: TStringField;
    Q_NF55CLIN_RAZA: TStringField;
    Q_PARULT_NF: TIntegerField;
    Panel11: TPanel;
    Panel12: TPanel;
    Label49: TLabel;
    wwDBLookupCombo11: TwwDBLookupCombo;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Q_FAT60: TwwQuery;
    Q_FAT60CFA_ID: TAutoIncField;
    Q_FAT60CFA_CODI: TStringField;
    Q_FAT60CFA_DCFO: TStringField;
    Q_FAT60CFA_RICM: TFloatField;
    Q_FAT60TIPODETRIB: TStringField;
    Label50: TLabel;
    wwDBEdit15: TwwDBEdit;
    Q_NFNFI_LOAD: TStringField;
    Label51: TLabel;
    wwDBEdit16: TwwDBEdit;
    Q_NFNFI_SERIE: TStringField;
    Q_INFESTQ_LOTE1: TStringField;
    Q_INFESTQ_LOTE1_QTDE: TFloatField;
    Q_INFESTQ_LOTE2: TStringField;
    Q_INFESTQ_LOTE2_QTDE: TFloatField;
    Q_INFINF_CST: TStringField;
    Q_NFNFI_STATUS: TStringField;
    Q_CNPJ: TwwQuery;
    Q_CNPJCLIF_ID: TAutoIncField;
    LB: TLabel;
    ds1: TDataSource;
    Q_CLIFdestCNPJCPF: TStringField;
    DBCheckBox1: TDBCheckBox;
    Q_NFBLOQUEIO: TStringField;
    Q_INFPRODUTOCODIGO: TStringField;
    Label52: TLabel;
    wwDBEdit18: TwwDBEdit;
    lbl1: TLabel;
    dbedt1: TDBEdit;
    Q_NFCHAVE_NFE: TStringField;
    Q_INFrastro_nlote: TStringField;
    Q_INFrastro_qlote: TFloatField;
    Q_INFrastro_dfab: TDateTimeField;
    Q_INFrastro_dvenc: TDateTimeField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_NFAfterPost(DataSet: TDataSet);
    procedure Q_NFNewRecord(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure DS_NFDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBLookupCombo8Enter(Sender: TObject);
    procedure wwDBEdit17Enter(Sender: TObject);
    procedure wwDBEdit17Exit(Sender: TObject);
    procedure Q_NFAfterDelete(DataSet: TDataSet);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo9Enter(Sender: TObject);
    procedure wwDBLookupCombo9Exit(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure Q_INFAfterDelete(DataSet: TDataSet);
    procedure Q_INFAfterPost(DataSet: TDataSet);
    procedure DBLC_INF_PRODExit(Sender: TObject);
    procedure Q_INFNewRecord(DataSet: TDataSet);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure DBG_INFIColExit(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure DBE_NFI_PLACEnter(Sender: TObject);
    procedure DBE_NFI_DSAIEnter(Sender: TObject);
    procedure DBE_NFI_MARCEnter(Sender: TObject);
    procedure DBE_NFI_QTDEEnter(Sender: TObject);
    procedure DBE_NFI_ESPEEnter(Sender: TObject);
    procedure DBE_NFI_PLIQEnter(Sender: TObject);
    procedure DBE_NFI_PBRUEnter(Sender: TObject);
    procedure DBLC_NFI_UFVEEnter(Sender: TObject);
    procedure DBCB_NFI_TFREEnter(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure DBE_NFI_PLACExit(Sender: TObject);
    procedure DBE_NFI_DSAIExit(Sender: TObject);
    procedure DBE_NFI_MARCExit(Sender: TObject);
    procedure DBE_NFI_QTDEExit(Sender: TObject);
    procedure DBE_NFI_ESPEExit(Sender: TObject);
    procedure DBE_NFI_PLIQExit(Sender: TObject);
    procedure DBE_NFI_PBRUExit(Sender: TObject);
    procedure DBLC_NFI_UFVEExit(Sender: TObject);
    procedure DBCB_NFI_TFREExit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBCB_CFA_TIPIEnter(Sender: TObject);
    procedure DBCB_CFA_TIPIExit(Sender: TObject);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure Q_NFBeforePost(DataSet: TDataSet);
    procedure Q_NFBeforeScroll(DataSet: TDataSet);
    procedure Q_NFBeforeEdit(DataSet: TDataSet);
    procedure Q_NFBeforeDelete(DataSet: TDataSet);
    procedure Q_INFBeforeScroll(DataSet: TDataSet);
    procedure Q_INFBeforeEdit(DataSet: TDataSet);
    procedure Q_INFBeforeDelete(DataSet: TDataSet);
    procedure Q_INFBeforePost(DataSet: TDataSet);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure wwDBLookupCombo16Enter(Sender: TObject);
    procedure wwDBLookupCombo16Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Q_NFBeforeInsert(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure ds1DataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo6Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNF: TFNF;

implementation
uses USenha,UOS, UAbTabelas, UManifesto, UConsultaNF, UNFRetornoSimb,
  UFConsultaNF,U_FUNCOES,
  UFConsultaProduto,
  UConsultaProduto  ;
{$R *.DFM}

procedure TFNF.SpeedButton3Click(Sender: TObject);
var
  NOTA : string ;
begin

  IF  PESQUISANF = '*' then begin
      FConsultaNf.Q_CONSUL.close;
      FConsultaNf.Q_CONSUL.open ;
      
  end ;


   IF ((MANIFESTONF <> '*') and
      (PESQUISANF  <>  '*') and
      (PESQUISANF2 <>  '*') and
      (RETORNOSIMB <>  '*') and
      (Q_NFNFI_CLONE.asstring <> 'S')) then begin


        If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then  Q_NF.post ;
        If (Q_INF.state = dsedit ) or (Q_INF.state = dsinsert )  then  Q_INF.post ;

        IF Q_NFNFI_REDESPACHO.asstring = 'S' then begin

           IF wwDBLookupCombo16.text = '' then begin
               TabbedNotebook1.pageindex := 2 ;
               MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
               wwDBLookupCombo16.setfocus ;
               abort ;
            end ;

        end ;




        
        IF  Q_NFNFI_CODI.asstring  <> '' then begin
            NOTA :=    Q_NFNFI_CODI.asstring;

            Q_AUX.close ;
            Q_AUX.Sql.Clear ;
            Q_AUX.Sql.Add('SELECT Count(*) as CONTAREG from NF_ITENS ') ;
            Q_AUX.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring  ) ;
            Q_AUX.Open ;

            IF Q_AUX.fieldbyname('CONTAREG').asinteger = 0 then begin
                MessageDlg('Nota Fiscal sem item !',mtWarning,[mbok],0);
                abort ;
            end ;

            {STP_NF.ParamByName('@NF').Value    :=  Q_NFNFI_CODI.asinteger ;
            STP_NF.ParamByName('@CFO').Value    := Q_NFCFA_ID.asinteger ;
            STP_NF.ParamByName('@CLIN_ID').Value    := FOS.CDSOSCLIN_ID.asinteger ;
            STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
            STP_NF.Execproc;

            Q_NF.close ;
            Q_NF.open ;

            Q_NF.LOCATE('NFI_CODI', NOTA,[]); }

            IF Q_NFNFI_TOTA.asfloat = 0 then begin
                MessageDlg('Nota Fiscal sem valor total !',mtWarning,[mbok],0);
                abort ;
            end ;

            IF Q_NFNFI_PBRU.asfloat <= 0 then begin
                MessageDlg('Falta Peso Bruto !',mtWarning,[mbok],0);
                abort ;
            end ;
        end ;


   end ;
   close ;       
end;



procedure TFNF.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

       SpeedButton5.enabled := false ;
       T_ACEN.open ;








    IF ((MANIFESTONF = '*') or
        (PESQUISANF = '*') or
        (PESQUISANF2 = '*') or
        (RETORNOSIMB = '*') or
        (Q_NFNFI_CLONE.asstring = 'S')) then begin
        Q_PAR.datasource := nil ;
        Q_PAR.close;
        Q_PAR.Sql.Clear;
        Q_PAR.Sql.Add('Select *  from PARAMETRO') ;
        Q_PAR.open ;



        BitBtn3.enabled := false;

        Q_CLIFdest2.datasource := nil ;
        Q_CLIFdest2.close;
        Q_CLIFdest2.Sql.Clear;
        Q_CLIFdest2.Sql.Add('select A.*,B.* from Cliente_NBFinal A,ClienteFINAL B where');
        Q_CLIFdest2.Sql.Add('B.CLIF_ID = A.CLIF_ID');
        Q_CLIFdest2.Sql.Add('order by A.NBFINAL_COD_CLIN') ;
        Q_CLIFdest2.open ;
                                             
        Q_TDOC.datasource := nil;
        Q_TDOC.close;
        Q_TDOC.Sql.Clear;
        Q_TDOC.Sql.Add('Select TDOC_EMIT,TDOC_DEST from TPDOC');
        ////Q_TDOC.Sql.Add('where TDOC_ID = ' + inttostr(1));
        Q_TDOC.open ;


        Q_CLIFdest.datasource :=nil ;
        Q_CLIFdest.close;
        Q_CLIFdest.Sql.Clear;
        Q_CLIFdest.Sql.Add('select A.*,B.CLIF_RAZA,B.CLIF_ENDERECO,  B.CLIF_CGCCPF AS CNPJCPF');
        Q_CLIFdest.Sql.Add('from Cliente_NBFinal A,ClienteFINAL B ');
        Q_CLIFdest.Sql.Add('where ');
        Q_CLIFdest.Sql.Add('B.CLIF_ID = A.CLIF_ID ');
        Q_CLIFdest.Sql.Add('order by B.CLIF_RAZA ');
        Q_CLIFdest.open ;


        Q_CLIF2.datasource :=nil ;
        Q_CLIF2.close;
        Q_CLIF2.Sql.Clear;
        Q_CLIF2.Sql.Add('select A.*,B.CLIF_RAZA  from Cliente_NBFinal A,ClienteFINAL B where') ;
        Q_CLIF2.Sql.Add('B.CLIF_ID = A.CLIF_ID  ');
        Q_CLIF2.Sql.Add('order by A.NBFINAL_COD_CLIN ');
        Q_CLIF2.open ;


        Q_NF.datasource := nil;
        Q_NF.close;
        Q_NF.Sql.Clear;
        Q_NF.Sql.Add('Select * from NF where');
        IF ((PESQUISANF = '*')or(PESQUISANF2 = '*')) then  begin

           If (PESQUISANF2 = '') then  begin

                IF (FConsultaNF.Q_CONSULNFI_CODI.asstring <> '') then
                  Q_NF.Sql.Add('NFI_CODI = ' +  FConsultaNF.Q_CONSULNFI_CODI.asstring )
                 else
                  Q_NF.Sql.Add('NFI_CODI = ' +  FConsultaNF.Q_CONSULNFI_CODI.asstring )  ;

                DBTEXT16.DataField := '';
                DBTEXT16.DataSource := nil;
                DBTEXT16.DataSource := FConsultaNF.DS_CONSUL;
                DBTEXT16.DataField := 'DESC_CLI' ;

                DBTEXT17.DataField := '';
                DBTEXT17.DataSource := nil;
                DBTEXT17.DataSource := FConsultaNF.DS_CONSUL;
                DBTEXT17.DataField := 'NFI_DEST_RAZA' ;
           end else begin
                IF (FConsultaProduto.Q_CONSULNFI_CODI.asstring <> '') then
                  Q_NF.Sql.Add('NFI_CODI = ' +  FConsultaProduto.Q_CONSULNFI_CODI.asstring )
                 else
                  Q_NF.Sql.Add('NFI_CODI = ' +  FConsultaProduto.Q_CONSULNFI_CODI.asstring )  ;

                DBTEXT16.DataField := '';
                DBTEXT16.DataSource := nil;
                DBTEXT16.DataSource := FConsultaProduto.DS_CONSUL;
                DBTEXT16.DataField := 'DESC_CLI' ;

                DBTEXT17.DataField := '';
                DBTEXT17.DataSource := nil;
                DBTEXT17.DataSource := FConsultaProduto.DS_CONSUL;
                DBTEXT17.DataField := 'NFI_DEST_RAZA' ;       
           end ;
        end else begin
           IF MANIFESTONF = '*' then
              Q_NF.Sql.Add('NFI_CODI = ' +  FManifesto.Q_NFNFI_CODI.asstring ) ;
           IF RETORNOSIMB = '*' then  begin
              DBTEXT16.DataField := '';
              DBTEXT16.DataSource := nil;
              DBTEXT16.DataSource := FNFRetornoSIMB.DS_CLINBF;
              DBTEXT16.DataField := 'CLIN_RAZA' ;

              DBTEXT17.DataField := '';
              DBTEXT17.DataSource := nil;
              DBTEXT17.DataSource := FNFRetornoSIMB.DS_NF2;
              DBTEXT17.DataField := 'CLIF_RAZA' ;
              Q_NF.Sql.Add('NFI_CODI = ' +  FNFRetornoSIMB.Q_NF2NFI_CODI.asstring ) ;
           end ;

        end ;

        Q_NF.Sql.Add('order by NFI_CODI') ;
        Q_NF.open ;

        IF ((PESQUISANF = '*') or (PESQUISANF2 = '*')){ and (TIPO = 14) or (TIPO = 3) }then  begin


           IF  (FFConsultaNF.RadioGroup1.itemindex = 3) or (FFConsultaNF.RadioGroup1.itemindex = 4) or
               (FFConsultaNF.RadioGroup1.itemindex = 5)  then begin
                  IF (FFConsultaNF.RadioGroup1.itemindex = 3) then begin
                      Label40.caption := 'Nota Fiscal de Retorno Simbólico' ;
                      Label41.caption := 'Nota Fiscal de Retorno Simbólico' ;
                      Label42.caption := 'Nota Fiscal de Retorno Simbólico' ;

                     ///SpeedButton1.enabled := true ;
                  end ;

                  IF (FFConsultaNF.RadioGroup1.itemindex = 4) then begin
                      Label40.caption := 'Nota Fiscal de Armazém' ;
                      Label41.caption := 'Nota Fiscal de Armazém' ;
                      Label42.caption := 'Nota Fiscal de Armazém' ;

                      //SpeedButton1.enabled := true ;
                  end ;

                  IF (FFConsultaNF.RadioGroup1.itemindex = 5) then begin

                      Label40.caption := 'Nota Fiscal de Remessa Conta Ordem Terceiros' ;
                      Label41.caption := 'Nota Fiscal de Remessa Conta Ordem Terceiros' ;
                      Label42.caption := 'Nota Fiscal de Remessa Conta Ordem Terceiros' ;

                      //SpeedButton1.enabled := true ;
                  end ;
                  DBTEXT16.DataField := '';
                  DBTEXT16.DataSource := nil;
                  DBTEXT16.DataSource := DS_PAR;
                  DBTEXT16.DataField := 'PAR_RAZA' ;


                  If (PESQUISANF2 = '')  then  begin

                      DBTEXT17.DataField := '';
                      DBTEXT17.DataSource := nil;
                      DBTEXT17.DataSource := FConsultaNF.DS_CONSUL;
                      DBTEXT17.DataField := 'NFI_DEST_RAZA' ;
                  end else begin
                      DBTEXT17.DataField := '';
                      DBTEXT17.DataSource := nil;
                      DBTEXT17.DataSource := FConsultaPRODUTO.DS_CONSUL;
                      DBTEXT17.DataField := 'NFI_DEST_RAZA' ;
                  end ;


                  DBRadioGroup4.visible := false ;
           end ;
        end else begin
          IF ((PESQUISANF = '*') or (PESQUISANF2 = '*')) and (TIPO = 1)  then  begin
             Label40.caption := 'Nota Fiscal de Saída' ;
             Label41.caption := 'Nota Fiscal de Saída' ;
             Label42.caption := 'Nota Fiscal de Saída' ;
          end ;
          IF ((PESQUISANF = '*') or (PESQUISANF2 = '*')) and (TIPO = 2)  then  begin
             Label40.caption := 'Nota Fiscal de Entrada' ;
             Label41.caption := 'Nota Fiscal de Entrada' ;
             Label42.caption := 'Nota Fiscal de Entrada' ;
          end ;
          IF ((PESQUISANF = '*') or (PESQUISANF2 = '*'))and (TIPO = 4)  then  begin
             Label40.caption := 'Nota Fiscal de Remetente' ;
             Label41.caption := 'Nota Fiscal de Remetente' ;
             Label42.caption := 'Nota Fiscal de Remetente' ;
          end ;

          IF ((PESQUISANF = '*') or (PESQUISANF2 = '*')) and (TIPO = 15)  then  begin
             Label40.caption := 'Nota Fiscal de Remessa Conta Ordem Terceiros' ;
             Label41.caption := 'Nota Fiscal de Remessa Conta Ordem Terceiros' ;
             Label42.caption := 'Nota Fiscal de Remessa Conta Ordem Terceiros' ;


          end ;
        end ;

        Q_PROD.datasource := nil ;
        panel5.visible := true ;
        panel6.visible := true ;
        BitBtn1.visible := false ;
        panel7.visible := true ;
        panel9.visible := true ;
        panel8.visible := true ;

    end else begin
             
          IF (FOS.Q_TDOCTDOC_ID.asinteger = 1) or
             (FOS.Q_TDOCTDOC_ID.asinteger = 3) then
              wwDBComboBox1.enabled := true
          else   wwDBComboBox1.enabled := false ;



         IF (FOS.Q_TDOCTDOC_ID.asinteger = 1) then  begin
             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add(' Select count(*) as FORAESTADO from  CLIENTENBF ') ;
             Q_AUX.Sql.Add(' where UF_SIGLA <> ' + '''' + 'SP' + '''') ;
             Q_AUX.Sql.Add(' and  CLIn_ID='+FOS.CDSOSCLIN_ID.asstring) ;
             Q_AUX.open ;
             If Q_AUX.fieldbyname('FORAESTADO').asinteger > 0 then
                SpeedButton5.enabled := true
             else
                SpeedButton5.enabled := false;
         end ;

         IF (FOS.Q_TDOCTDOC_ID.asinteger = 4) or
            (FOS.Q_TDOCTDOC_ID.asinteger = 2) then
            GroupBox3.enabled := false
         else
            GroupBox3.enabled := true ;

         Q_PAR.open ;
         Q_PROD.open;
         Q_CLIF2.open  ;
         Q_CLIFdest.open  ;
         Q_CLIFdest2.open  ;
         Q_TDOC.open ;

         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add('SELECT count(*) AS QTCONF FROM OS B,ROMANEIO C  ');
         Q_AUX.Sql.Add('WHERE B.OS_ID = C.OS_ID ') ;
         Q_AUX.Sql.Add(' and B.OS_ID = ' + FOS.CDSOSOS_ID.asstring ) ;
         /////Q_AUX.Sql.Add(' and C.ROM_CONFIRMA = ' + '''' + 'S' + '''' ) ;
         Q_AUX.open  ;

         IF (Q_AUX.fieldbyname('QTCONF').asinteger = 0){ and
            (Q_NFMANI_ID.asstring = '')} then begin

             Panel1.enabled := true  ;
             //DBG_INFI.enabled := true  ;
             DBG_INFI.ReadOnly := False  ;
             Panel4.enabled := true  ;

             IF (FOS.Q_TDOCTDOC_ID.asinteger = 2) then begin
                 Q_AUX.close ;
                 Q_AUX.Sql.Clear ;
                 Q_AUX.Sql.Add('SELECT count(*) AS QTDE_REMET FROM OS B,NF C  ');
                 Q_AUX.Sql.Add('WHERE B.OS_ID = C.OS_ID ') ;
                 Q_AUX.Sql.Add(' and C.TDOC_ID = ' +inttostr(4) ) ;
                 Q_AUX.Sql.Add(' and C.OS_ID = ' +  FOS.CDSOSOS_ID.asstring ) ;
                 Q_AUX.Sql.Add(' and C.NFI_GEROUNFE is null');
                 Q_AUX.open  ;
                 DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel]  ;

                 IF (Q_AUX.fieldbyname('QTDE_REMET').asinteger > 0) then begin
                     Panel1.enabled := true  ;
                     DBG_INFI.ReadOnly := False  ;
                     Panel4.enabled := true  ;
                     DBNavigator1.enabled   := true ;
                     ///DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbpost,nbcancel]  ;

                     If MessageDlg('Existem NFs de Remetente associadas a esta OS, gostaria de gerar Notas Fiscais de Entrada a partir das mesmas ?',MtConfirmation,[MbYes,
                        MbNo],0)=MrYes Then  begin
                         try
                           Begin
                             STP_NFExNFR.ParamByName('@OS').Value   := FOS.CDSOSOS_ID.asinteger ;
                             STP_NFExNFR.ParamByName('@NFI_EMIT_CLI').Value  := FOS.CDSOSCLIN_id.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_CLI').Value  := 999 ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_NOME').Value   := Q_PARPAR_NOME.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_RAZA').Value   := Q_PARPAR_RAZA.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_ENDERECO').Value   :=  Q_PARPAR_ENDERECO.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_COMPL').Value  := Q_PARPAR_ENDERECO_COMPL.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_BAIRRO').Value  := Q_PARPAR_ENDERECO_BAIRRO.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_UF_SIGLA').Value :=  Q_PARPAR_UF_SIGLA.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_CEP').Value  :=  Q_PARPAR_CEP.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_TEL').Value  :=  Q_PARPAR_TEL.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_FAX').Value := Q_PARPAR_FAX.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_CGC').Value  := Q_PARPAR_CNPJ.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_INSCRG').Value  := Q_PARPAR_INSC.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_PESS').Value := 'J' ;
                             STP_NFExNFR.ParamByName('@MUN_ID').Value  :=  Q_PARMUN_ID.asinteger ;
                             STP_NFExNFR.Execproc   ;



                            End
                          except
                            begin
                             MessageDlg('Geração da Nota Fiscal de Entrada a partir de NFR, com erro !',mtInformation,[mbOk], 0);
                             abort  ;
                            end;
                          end;
                     END;

                 end else begin
                     Panel1.enabled := true  ;
                     DBG_INFI.enabled := true  ;
                     Panel4.enabled := true  ;
                     DBNavigator1.enabled   := true ;
                    /// DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbpost,nbcancel]  ;
                 end ;

             end ;


         end else begin
             IF ((FOS.Q_TDOCTDOC_ID.asinteger = 4) or
                 (FOS.Q_TDOCTDOC_ID.asinteger = 1)) then begin
                  DBNavigator1.enabled   := true ;
                  DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbcancel{,nbinsert,nbdelete,nbpost,nbcancel}];
                  Panel1.enabled := false  ;
                  DBG_INFI.enabled := false  ;
                  ///Panel4.enabled := false  ;


             end ;

            { IF (FOS.CDSTDOCTDOC_ID.asinteger = 1) then begin
                  DBNavigator1.enabled   := FALSE ;
                  DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbpost,nbcancel];

             end ; }

             IF (FOS.Q_TDOCTDOC_ID.asinteger = 2) then begin
                 DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel]  ;

                 Q_AUX.close ;
                 Q_AUX.Sql.Clear ;
                 Q_AUX.Sql.Add('SELECT count(*) AS QTDE_REMET FROM OS B,NF C  ');
                 Q_AUX.Sql.Add('WHERE B.OS_ID = C.OS_ID ') ;
                 Q_AUX.Sql.Add(' and C.TDOC_ID = ' +inttostr(4) ) ;
                 Q_AUX.Sql.Add(' and C.OS_ID = ' +  FOS.CDSOSOS_ID.asstring ) ;
                 Q_AUX.Sql.Add(' and C.NFI_GEROUNFE is null');
                 Q_AUX.open  ;

                 IF (Q_AUX.fieldbyname('QTDE_REMET').asinteger > 0) then begin
                     Panel1.enabled := true  ;
                     DBG_INFI.enabled := true  ;
                     Panel4.enabled := true  ;
                     DBNavigator1.enabled   := true ;
                     ////DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbpost,nbcancel]  ;

                     If MessageDlg('Existem NFs de Remetente associadas a esta OS, gostaria de gerar Notas Fiscais de Entrada a partir das mesmas ?',MtConfirmation,[MbYes,
                        MbNo],0)=MrYes Then  begin
                         try
                           Begin
                             STP_NFExNFR.ParamByName('@OS').Value   := FOS.CDSOSOS_ID.asinteger ;
                             STP_NFExNFR.ParamByName('@NFI_EMIT_CLI').Value  := FOS.CDSOSCLIN_id.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_CLI').Value  := 999 ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_NOME').Value   := Q_PARPAR_NOME.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_RAZA').Value   := Q_PARPAR_RAZA.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_ENDERECO').Value   :=  Q_PARPAR_ENDERECO.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_COMPL').Value  := Q_PARPAR_ENDERECO_COMPL.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_BAIRRO').Value  := Q_PARPAR_ENDERECO_BAIRRO.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_UF_SIGLA').Value :=  Q_PARPAR_UF_SIGLA.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_CEP').Value  :=  Q_PARPAR_CEP.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_TEL').Value  :=  Q_PARPAR_TEL.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_FAX').Value := Q_PARPAR_FAX.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_CGC').Value  := Q_PARPAR_CNPJ.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_INSCRG').Value  := Q_PARPAR_INSC.asstring ;
                             STP_NFExNFR.ParamByName('@NFI_DEST_PESS').Value := 'J' ;
                             STP_NFExNFR.ParamByName('@MUN_ID').Value  :=  Q_PARMUN_ID.asinteger ;
                             STP_NFExNFR.Execproc   ;
                            End
                          except
                            begin
                             MessageDlg('Geração da Nota Fiscal de Entrada a partir de NFR, com erro !',mtInformation,[mbOk], 0);
                             abort  ;
                            end;
                          end;
                     END;

                 end else begin
                     //Panel1.enabled := false  ;
                     //DBG_INFI.enabled := false  ;
                     //DBNavigator1.enabled   := FALSE ;
                     //DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel];
                     Panel1.enabled := true  ;
                     DBG_INFI.enabled := true  ;
                     Panel4.enabled := true  ;
                     DBNavigator1.enabled   := true ;
                     ////DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbpost,nbcancel]  ;
                 end ;

             end ;
         end ;
        BitBtn3.enabled := true;
        panel5.visible := false ;
        panel6.visible := false ;
    end  ;

    Q_CLIN.open  ;
    Q_CLIF.open  ;
    Q_CLIFINAL.open ;


    Q_CLINdest.open ;
    Q_UF.open  ;

    Q_UNIDVEND.open ;
    Q_FAT.open ;

    ///IF (RETORNOSIMB = '*') then TabbedNotebook1.pageindex := 1
      //else
      TabbedNotebook1.pageindex := 0 ;

    {If (FOS.CDSTDOCTDOC_ID.asinteger = 1) then
       DBRadioGroup1.visible := true
     else  DBRadioGroup1.visible := false ;
                                               }
   IF ((MANIFESTONF = '') and (PESQUISANF = '') and (PESQUISANF2 = '') and (RETORNOSIMB = '')) then begin

         If (FOS.Q_TDOCTDOC_ID.asinteger = 1) or
            (FOS.Q_TDOCTDOC_ID.asinteger = 3) then
           DBRadioGroup1.visible := true
         else  DBRadioGroup1.visible := false ;

           If  (FOS.Q_TDOCTDOC_ID.asinteger = 2) and
               (FOS.cdsCTTCTT_TERCEIRO.asstring = 'S') then
                DBRadioGroup4.visible := true
             else
                DBRadioGroup4.visible := false;

               //////EMITENTE
           If (Q_TDOCTDOC_EMIT.asstring = 'R') and
              (FOS.Q_TDOCTDOC_ID.asinteger = 4) then begin
               DBTeXt1.visible := false  ;
               DBTeXt8.visible := false  ;
               wwDBLookupCombo2.visible := true ;
               wwDBLookupCombo5.visible := false ;
               DBTeXt3.visible := false  ;
               wwDBLookupCombo7.visible := false ;
               DBTeXt2.visible := false  ;
               BitBtn1.visible := false ;
               Label2.caption := 'Nome';
               Label2.left := 65;

               ////BitBtn1.visible := false ;

           end else begin
               If (Q_TDOCTDOC_EMIT.asstring = 'F') then begin
                   IF (FOS.CDSCLINCLIN_UTIL_COD.asstring = 'S') then begin
                       DBTeXt1.visible := false  ;
                       DBTeXt8.visible := false  ;
                       wwDBLookupCombo2.visible := false ;
                       wwDBLookupCombo5.visible := false ;
                       DBTeXt3.visible := false  ;
                       wwDBLookupCombo7.visible := true ;

                       If Q_NFNFI_EMIT_CLI.asstring = '' then
                          DBTeXt2.visible := false
                       else
                          DBTeXt2.visible := true ;
                       Label2.caption := 'Código/Nome';
                       Label2.left := 23;
                       ////BitBtn1.visible := true ;

                   end else begin
                       DBTeXt1.visible := false  ;
                       DBTeXt8.visible := false  ;
                       wwDBLookupCombo2.visible := false ;
                       wwDBLookupCombo5.visible := true ;
                       If Q_NFNFI_EMIT_CLI.asstring = '' then
                          DBTeXt3.visible := false
                       else
                          DBTeXt3.visible := true ;
                       wwDBLookupCombo7.visible := false ;
                       DBTeXt2.visible := false  ;
                       Label2.caption := 'Nome/Código';
                       Label2.left := 23;
                       ////BitBtn1.visible := true ;
                   end ;
               end ;
               If (Q_TDOCTDOC_EMIT.asstring = 'N') then begin
                   DBTeXt8.visible := true  ;
                   DBTeXt1.visible := false  ;
                   wwDBLookupCombo2.visible := false ;
                   wwDBLookupCombo5.visible := false ;
                   DBTeXt3.visible := false  ;
                   wwDBLookupCombo7.visible := false ;
                   DBTeXt2.visible := false  ;
                   Label2.caption := 'Nome';
                   Label2.left := 65;
               end ;
               IF (Q_TDOCTDOC_EMIT.asstring = 'C') and
                  (FOS.Q_TDOCTDOC_ID.asinteger <> 4) then begin
                   DBTeXt1.visible := true  ;
                   DBTeXt8.visible := false  ;
                   wwDBLookupCombo2.visible := false ;
                   wwDBLookupCombo5.visible := false ;
                   DBTeXt3.visible := false  ;
                   wwDBLookupCombo7.visible := false ;
                   DBTeXt2.visible := false  ;
                   Label2.caption := 'Nome';
                   Label2.left := 65;
                  ///// BitBtn1.visible := false ;
               end  ;
           end ;
               //////EMITENTE


              ///////DESTINATARIO
           If (Q_TDOCTDOC_DEST.asstring = 'C') then begin
               wwdbedit4.visible := false ;
               wwDBLookupCombo4.visible := false ;
               wwDBLookupCombo6.visible := false ;

               DBTeXt6.visible := false ;
               wwDBLookupCombo9.visible := false ;
               DBTeXt5.visible := false ;
               DBTeXt9.visible := true ;

               DBTEXT9.DataField := '';
               DBTEXT9.DataSource := nil;
               DBTEXT9.DataSource := FOS.DS_OS;
               DBTEXT9.DataField := 'CLIN_RAZA' ;

               Label3.caption := 'Nome' ;
               Label3.left := 122        ;
              //// BitBtn1.visible := false ;
           end else begin
               If (Q_TDOCTDOC_DEST.asstring = 'F') then begin
                   IF (FOS.CDSCLINCLIN_UTIL_COD.asstring = 'S') then begin
                       wwdbedit4.visible := false ;
                       wwDBLookupCombo4.visible := false ;
                       wwDBLookupCombo6.visible := false ;
                       DBTeXt6.visible := false ;
                       wwDBLookupCombo9.visible := true ;
                       If Q_NFNFI_DEST_CLI.asstring = '' then
                          DBTeXt5.visible := false
                       else
                          DBTeXt5.visible := true ;
                       Label3.caption := 'Código/Nome';
                       Label3.left := 80;
                       DBTeXt9.visible := false ;
                       ////BitBtn1.visible := true ;
                   end else begin
                       wwdbedit4.visible := false ;
                       DBTeXt9.visible := false ;
                       wwDBLookupCombo4.visible := false ;
                       wwDBLookupCombo9.visible := false ;
                       DBTeXt5.visible := false ;
                       wwDBLookupCombo6.visible := true ;

                       If Q_NFNFI_DEST_CLI.asstring = '' then
                          DBTeXt6.visible := false
                       else
                          DBTeXt6.visible := true ;


                       Label3.caption := 'Nome/Código';
                       Label3.left := 80;
                       /////BitBtn1.visible := true ;
                   end ;
               end ;
               If (Q_TDOCTDOC_dest.asstring = 'N') then begin
                   wwdbedit4.visible := false ;
                   wwDBLookupCombo4.visible := false ;
                   wwDBLookupCombo6.visible := false ;
                   DBTeXt6.visible := false ;
                   wwDBLookupCombo9.visible := false ;
                   DBTeXt5.visible := false ;
                   DBTeXt9.visible := true ;
                   Label3.caption := 'Nome' ;
                   Label3.left := 122        ;

               end ;
               IF (Q_TDOCTDOC_dest.asstring = 'O') then begin
                   wwdbedit4.visible := true ;
                   wwDBLookupCombo4.visible := false ;
                   wwDBLookupCombo6.visible := false ;
                   DBTeXt6.visible := false ;
                   DBTeXt9.visible := false ;
                   wwDBLookupCombo9.visible := false ;
                   DBTeXt5.visible := false ;
                   Label3.caption := 'Nome' ;
                   Label3.left := 122        ;
                   /////BitBtn1.visible := false ;
               end  ;
           end ;
               //////DESTINATARIO
   end ;
   // if button in [nbInsert] then  begin
      If (Q_TDOCTDOC_EMIT.asstring = 'F') or
         (Q_TDOCTDOC_DEST.asstring = 'F') then
         BitBtn1.visible := true else  BitBtn1.visible := false ;
   ////end ;   }




end;

procedure TFNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_TDOC.close ;
  Q_CLIN.close ;
  Q_CLIF.close  ;
  Q_CLIF2.close ;
  Q_CLIFINAL.close ;
  Q_NF.close ;
  Q_PAR.close;
  T_ACEN.close ; 

  Q_CLINdest.close ;
  Q_CLIFdest.close  ;
  Q_CLIFdest2.close  ;
  Q_CEP.close ;
  Q_UF.close ;
  Q_INF.close;
  Q_PROD.close ;
  Q_UNIDVEND.close ;
  Q_FAT.close ;
  Q_MUNI.close;
  Q_TRANS2.close ;

   MANIFESTONF := '' ;
   RETORNOSIMB := '' ;
   PESQUISANF  :=  '';
   PESQUISANF2 :=  '';
  action := cafree  ;
end;

procedure TFNF.Q_NFAfterPost(DataSet: TDataSet);
var
  STRNF : string ; {121212}
begin
   STRNF := Q_NFNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF.close ;
   Q_NF.Open ;

   if STRNF = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(NFI_CODI) as Numero from NF ' ) ;
     Q_AUX.open ;
     STRNF := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_NF.locate('NFI_CODI',STRNF,[])    ;


end;

procedure TFNF.Q_NFNewRecord(DataSet: TDataSet);
begin
  Q_NFNFI_DEMI.asdatetime := now ;
  Q_NFTDOC_ID.asstring := FOS.Q_TDOCTDOC_ID.asstring ;
  Q_NFNFI_VFRE.asfloat :=  0.00;
  Q_NFNFI_VSEG.asfloat :=  0.00;
  Q_NFNFI_BIPI.asfloat :=  0.00;
  Q_NFNFI_VIPI.asfloat :=  0.00;
  Q_NFNFI_BICM.asfloat :=  0.00;
  Q_NFNFI_VICM.asfloat :=  0.00;
  Q_NFNFI_VMER.asfloat :=  0.00;
  Q_NFNFI_TOTA.asfloat :=  0.00;
  Q_NFNFI_PLIQ.asfloat :=  0.00;
  Q_NFNFI_PBRU.asfloat :=  0.00;
  Q_NFNFI_VDES.asfloat :=  0.00;
  Q_NFBLOQUEIO.AsString := 'N';
  Q_NFOS_ID.asstring :=   FOS.CDSOSOS_ID.asstring ;
  DBRadioGroup1.value := 'S' ;
  Q_NFNFI_COBRAR.asstring := 'S' ;
  Q_NFNFI_CLONE.asstring := 'N' ;
  Q_NFNFI_RETORNADA.asstring := 'N' ;
  Q_NFNFI_REDESPACHO.asstring := 'N' ;

  IF Q_NFTDOC_ID.asinteger = 2 then
      Q_NFNFI_STATUS.asstring := 'E' ;


  IF (Q_TDOCTDOC_EMIT.asstring = 'N') then Q_NFNFI_EMIT_CLI.asstring := '999';
  IF (Q_TDOCTDOC_DEST.asstring = 'N') then Q_NFNFI_DEST_CLI.asstring := '999';

  IF (Q_TDOCTDOC_EMIT.asstring = 'C') then Q_NFNFI_EMIT_CLI.asstring := FOS.CDSOSCLIN_ID.asstring ;
  IF (Q_TDOCTDOC_DEST.asstring = 'C') then Q_NFNFI_DEST_CLI.asstring := FOS.CDSOSCLIN_ID.asstring ;

  If (FOS.Q_TDOCTDOC_ID.asinteger <> 2) then
      Q_NFNFI_MOVESTQ.asstring := 'S' ;

  If (FOS.Q_TDOCTDOC_ID.asinteger = 2) then begin
      if (FOS.CDSCTTCTT_TERCEIRO.asstring = 'N') then
         Q_NFNFI_MOVESTQ.asstring := 'S' ;
  end ;

end;

procedure TFNF.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 2;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     FAbTabelas.Gauge1.Progress            := 1;
                     FNF.Q_NF.Open;


                     FAbTabelas.Gauge1.Progress            := 2;
                     FNF.Q_INF.Open;

                 

                     FAbTabelas.Gauge1.Progress            := 3;
                     FNF.Q_MUNI.Open;

                     FAbTabelas.Gauge1.Progress            := 4;
                     FNF.Q_TRANS2.Open;

                     If (Q_TDOCTDOC_dest.asstring = 'N') then begin
                         IF  (Q_NFNFI_CODI.asstring = '') then begin
                             Q_NF.edit  ;
                             Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_PARPAR_ENDERECO.asstring ;
                             Q_NFNFI_DEST_COMPL.text := Q_PARPAR_ENDERECO_COMPL.asstring ;
                             Q_NFNFI_DEST_BAIRRO.text := Q_PARPAR_ENDERECO_BAIRRO.asstring ;
                             //Q_NFNFI_DEST_MUNICIPIO.text :=  Q_PARPAR_MUNICIPIO.asstring ;
                             Q_NFMUN_ID.asinteger :=  Q_PARMUN_ID.asinteger ;

                             Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_PARPAR_UF_SIGLA.asstring ;
                             Q_NFNFI_DEST_CEP.asstring :=  Q_PARPAR_CEP.asstring ;
                             Q_NFNFI_DEST_TEL.asstring :=  Q_PARPAR_TEL.asstring ;
                             Q_NFNFI_DEST_FAX.asstring := Q_PARPAR_FAX.asstring ;
                             Q_NFNFI_DEST_CGC.asstring := Q_PARPAR_CNPJ.asstring ;
                             Q_NFNFI_DEST_PESS.asstring := 'J' ;
                             Q_NFNFI_DEST_INSCRG.asstring := Q_PARPAR_INSC.asstring ;
                             Q_NFNFI_DEST_RAZA.asstring :=  Q_PARPAR_RAZA.asstring ;
                         end ; 
                     end ;

                     If (Q_TDOCTDOC_dest.asstring = 'C') then begin
                         IF  (Q_NFNFI_CODI.asstring = '') then begin
                             Q_NF.edit  ;
                             Q_NFNFI_DEST_ENDERECO.asstring  :=  FOS.CDSCLINCLIN_ENDERECO.asstring ;
                             Q_NFNFI_DEST_COMPL.text := FOS.CDSCLINCLIN_ENDERECO_COMPL.asstring ;
                             Q_NFNFI_DEST_BAIRRO.text := FOS.CDSCLINCLIN_ENDERECO_BAIRRO.asstring ;
                             //Q_NFNFI_DEST_MUNICIPIO.text :=  FOS.CDSCLINCLIN_MUNICIPIO.asstring ;
                             Q_NFMUN_ID.asinteger :=  FOS.CDSCLINMUN_ID.asinteger ;

                             Q_NFNFI_DEST_UF_SIGLA.asstring :=  FOS.CDSCLINUF_SIGLA.asstring ;
                             Q_NFNFI_DEST_CEP.asstring :=  FOS.CDSCLINCLIN_CEP.asstring ;
                             Q_NFNFI_DEST_TEL.asstring :=  FOS.CDSCLINCLIN_TEL1.asstring ;
                             Q_NFNFI_DEST_FAX.asstring := FOS.CDSCLINCLIN_FAX.asstring ;
                             Q_NFNFI_DEST_CGC.asstring := FOS.CDSCLINCLIN_CGCCPF.asstring ;
                             Q_NFNFI_DEST_PESS.asstring := FOS.CDSCLINCLIN_PESSOA.asstring ;
                             Q_NFNFI_DEST_INSCRG.asstring := FOS.CDSCLINCLIN_INSCRG.asstring ;
                             Q_NFNFI_DEST_RAZA.asstring :=  FOS.CDSCLINCLIN_RAZA.asstring ;
                         end ;
                     end ;

                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             FAbTabelas.Close;
             FAbTabelas.Release;
             If Self.Tag = 2 Then Self.Close;

             If (Q_NF.state = dsbrowse) then begin
                  If (Q_NFNFI_DEST_PESS.asstring <> '') then begin
                     ///wwDBEdit1.setfocus ;
                     ////DBNavigator1.setfocus ;
                  end ;
             end ;

    end  ;
end;

procedure TFNF.DS_NFDataChange(Sender: TObject; Field: TField);
begin


   IF ((MANIFESTONF = '') and (PESQUISANF = '') and (PESQUISANF2 = '') and (RETORNOSIMB = '')) then begin

            IF FOS.Q_TDOCTDOC_ID.asstring <> '' then begin
                Q_AUX.close ;
                Q_AUX.Sql.Clear ;
                Q_AUX.Sql.Add('SELECT Count(*) as CONTAREG from NF ') ;
                Q_AUX.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring  ) ;
                Q_AUX.Sql.Add(' and TDOC_ID = ' + FOS.Q_TDOCTDOC_ID.asstring  ) ;
                Q_AUX.Open ;



                IF Q_AUX.fieldbyname('CONTAREG').asinteger = 0 then begin
                   SpeedButton4.enabled := false ;
                   SpeedButton3.enabled := true  ;
                end else begin
                   SpeedButton4.enabled := true ;
                    If (TabbedNotebook1.pageindex = 2) then
                        SpeedButton3.enabled := true
                         else
                        SpeedButton3.enabled := false ;
                end ;
            end ;


           IF wwDBComboBox1.itemindex = 0 then
              wwDBEdit14.enabled := false
           else
             wwDBEdit14.enabled := true ;

                //miguel, liberei os botoes  nbpost e deixei o painel 4 liberado mesmo com manifesto

           IF (FOS.Q_TDOCTDOC_ID.asinteger = 1) then begin
                IF Q_NFMANI_ID.asstring <> '' then   begin
                  DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,{nbdelete,}nbpost,nbcancel] ;
                  Panel1.enabled := false  ;
                  DBG_INFI.enabled := false  ;
                  //Panel4.enabled := false  ;
                end else begin
                  DBNavigator1.VisibleButtons   := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel]  ;
                  Panel1.enabled := true  ;
                  DBG_INFI.enabled := true  ;
                  Panel4.enabled := true  ;
                end ;
           end ;


              IF (FOS.Q_TDOCTDOC_ID.asinteger = 2) then begin
                   Q_AUX.close ;
                   Q_AUX.Sql.Clear ;
                   Q_AUX.Sql.Add('SELECT count(*) AS QTCONF FROM OS B,ROMANEIO C  ');
                   Q_AUX.Sql.Add('WHERE B.OS_ID = C.OS_ID ') ;
                   Q_AUX.Sql.Add(' and B.OS_ID = ' + FOS.CDSOSOS_ID.asstring ) ;
                   Q_AUX.open  ;

                   IF (Q_AUX.fieldbyname('QTCONF').asinteger = 0) then begin
                       Panel1.enabled := true  ;
                       DBG_INFI.enabled := true  ;
                       Panel4.enabled := true  ;
                   end else begin
                     IF (FOS.Q_TDOCTDOC_ID.asinteger = 4) then begin
                          DBNavigator1.enabled   := true ;
                          Panel1.enabled := false  ;
                          DBG_INFI.enabled := false  ;
                     end ;

                     Q_AUX.close ;
                     Q_AUX.Sql.Clear ;
                     Q_AUX.Sql.Add('SELECT count(*) AS QTDE_REMET FROM OS B,NF C  ');
                     Q_AUX.Sql.Add('WHERE B.OS_ID = C.OS_ID ') ;
                     Q_AUX.Sql.Add(' and C.TDOC_ID = ' +inttostr(4) ) ;
                     Q_AUX.Sql.Add(' and C.OS_ID = ' +  FOS.CDSOSOS_ID.asstring ) ;
                     Q_AUX.open  ;

                     IF (Q_AUX.fieldbyname('QTDE_REMET').asinteger > 0) then begin
                         Panel1.enabled := true  ;
                         DBG_INFI.enabled := true  ;
                         Panel4.enabled := true  ;
                         DBNavigator1.enabled   := true ;
                         DBNavigator1.VisibleButtons    := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel]  ;

                     end else begin
                         Panel1.enabled := false  ;
                         DBG_INFI.enabled := false  ;
                         DBNavigator1.enabled   := true ;
                         DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast{,nbinsert,nbdelete,nbpost},nbcancel];
                     end ;

              end ;
           end ;

          If (Q_TDOCTDOC_EMIT.asstring = 'F') then begin
                   IF (FOS.CDSCLINCLIN_UTIL_COD.asstring = 'S') then begin

                       If Q_NFNFI_EMIT_CLI.asstring = '' then
                          DBTeXt2.visible := false
                       else
                          DBTeXt2.visible := true ;

                   end else begin

                       If Q_NFNFI_EMIT_CLI.asstring = '' then
                          DBTeXt3.visible := false
                       else
                          DBTeXt3.visible := true ;
                   end ;
           end ;

           If (Q_TDOCTDOC_DEST.asstring = 'F') then begin

                   IF (FOS.CDSCLINCLIN_UTIL_COD.asstring = 'S') then begin

                       If Q_NFNFI_DEST_CLI.asstring = '' then
                          DBTeXt5.visible := false
                       else
                          DBTeXt5.visible := true ;

                   end else begin

                       If Q_NFNFI_DEST_CLI.asstring = '' then
                          DBTeXt6.visible := false
                       else
                          DBTeXt6.visible := true ;
                   end ;
           end ;
   end else    SpeedButton4.enabled := false ;
   ///Q_FATCFA_CODI.EditMask := '9.999;0;_'





end;

procedure TFNF.BitBtn1Click(Sender: TObject);
begin
    Panel3.visible := true ;
    Panel2.enabled := false ;
    Panel1.enabled := false ;
    TabbedNotebook1.enabled := false ;
    wwDBLookupCombo8.text := '' ;

end;

procedure TFNF.wwDBLookupCombo5Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow ;

   

   If (wwDBLookupCombo9.visible = true) then begin
       wwDBLookupCombo9.setfocus ;
       abort ;
   end ;

   If (wwDBLookupCombo6.visible = true) then begin
       wwDBLookupCombo6.setfocus ;
       abort ;
   end ;

   If (wwDBLookupCombo4.visible = true) then begin
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   If (wwDBEdit4.visible = true) then begin
       wwDBEdit4.setfocus ;
       abort ;
   end ;


   If wwDBLookupCombo5.text <> '' then
     wwDBLookupCombo5.text := Q_CLIFCLIF_RAZA.asstring  ;



   wwDBEdit5.setfocus ;

end;

procedure TFNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFNF.wwDBLookupCombo8Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;      

end;

procedure TFNF.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
   if button in [nbInsert] then  begin
       If (TabbedNotebook1.pageindex = 0) then begin
            If (Q_TDOCTDOC_dest.asstring = 'N') then begin
                   Q_NF.edit  ;
                   Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_PARPAR_ENDERECO.asstring ;
                   Q_NFNFI_DEST_COMPL.text := Q_PARPAR_ENDERECO_COMPL.asstring ;
                   Q_NFNFI_DEST_BAIRRO.text := Q_PARPAR_ENDERECO_BAIRRO.asstring ;
                   //Q_NFNFI_DEST_MUNICIPIO.text :=  Q_PARPAR_MUNICIPIO.asstring ;
                   Q_NFMUN_ID.asinteger :=  Q_PARMUN_ID.asinteger ;    
                   Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_PARPAR_UF_SIGLA.asstring ;
                   Q_NFNFI_DEST_CEP.asstring :=  Q_PARPAR_CEP.asstring ;
                   Q_NFNFI_DEST_TEL.asstring :=  Q_PARPAR_TEL.asstring ;
                   Q_NFNFI_DEST_FAX.asstring := Q_PARPAR_FAX.asstring ;
                   Q_NFNFI_DEST_CGC.asstring := Q_PARPAR_CNPJ.asstring ;
                   Q_NFNFI_DEST_PESS.asstring := 'J' ;
                   Q_NFNFI_DEST_INSCRG.asstring := Q_PARPAR_INSC.asstring ;
                   Q_NFNFI_DEST_RAZA.asstring :=  Q_PARPAR_RAZA.asstring ;
           end ;

           If (Q_TDOCTDOC_dest.asstring = 'C') then begin
                   Q_NF.edit  ;
                   Q_NFNFI_DEST_ENDERECO.asstring  :=  FOS.CDSCLINCLIN_ENDERECO.asstring ;
                   Q_NFNFI_DEST_COMPL.text := FOS.CDSCLINCLIN_ENDERECO_COMPL.asstring ;
                   Q_NFNFI_DEST_BAIRRO.text := FOS.CDSCLINCLIN_ENDERECO_BAIRRO.asstring ;
                   //Q_NFNFI_DEST_MUNICIPIO.text :=  FOS.CDSCLINCLIN_MUNICIPIO.asstring ;
                   Q_NFMUN_ID.asinteger :=  FOS.CDSCLINMUN_ID.asinteger ;

                   Q_NFNFI_DEST_UF_SIGLA.asstring :=  FOS.CDSCLINUF_SIGLA.asstring ;
                   Q_NFNFI_DEST_CEP.asstring :=  FOS.CDSCLINCLIN_CEP.asstring ;
                   Q_NFNFI_DEST_TEL.asstring :=  FOS.CDSCLINCLIN_TEL1.asstring ;
                   Q_NFNFI_DEST_FAX.asstring := FOS.CDSCLINCLIN_FAX.asstring ;
                   Q_NFNFI_DEST_CGC.asstring := FOS.CDSCLINCLIN_CGCCPF.asstring ;
                   Q_NFNFI_DEST_PESS.asstring := FOS.CDSCLINCLIN_PESSOA.asstring ;
                   Q_NFNFI_DEST_INSCRG.asstring := FOS.CDSCLINCLIN_INSCRG.asstring ;
                   Q_NFNFI_DEST_RAZA.asstring :=  FOS.CDSCLINCLIN_RAZA.asstring ;
           end ;
           wwDBEdit13.setfocus ;
       end ;
   end ;


   if (Button in [nbFirst,nbPrior,nbNext,nbLast]) then begin
      if (Q_NFNFI_DEST_PESS.AsString = 'F') then
          Q_NFNFI_DEST_CGC.EditMask := '!999.999.999/99;0;_'
      else
         if (Q_NFNFI_DEST_PESS.AsString = 'J') then
              Q_NFNFI_DEST_CGC.EditMask := '!999.999.999/9999-99;0;_'
         else Q_NFNFI_DEST_CGC.EditMask := '';
   end ;

   if button in [nbInsert] then  begin
       If (TabbedNotebook1.pageindex = 1) then
          DBG_INFI.setfocus ;
   end ;

end;

procedure TFNF.BitBtn2Click(Sender: TObject);
begin
       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  CLIENTE_NBFINAL ') ;
       Q_AUX.Sql.Add(' where CLIF_ID = ' + Q_CLIFINALCLIF_ID.asstring ) ;
       Q_AUX.Sql.Add(' and   CLIN_ID = ' + FOS.CDSOSCLIN_ID.asstring ) ;
       Q_AUX.open ;

       If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
          MessageDlg('Cliente Final: ' + Q_CLIFINALCLIF_RAZA.asstring + ' já está cadastrado para o Cliente NBF: ' + FOS.CDSCLINCLIN_RAZA.asstring + '!',mtWarning,[mbok],0);
          wwDBLookupCombo8.SetFocus;
          abort ;
       end ;



      IF (wwDBLookupCombo8.text <> '') then begin
         if MessageDlg('Confirma a inclusão do Cliente Final: ' + Q_CLIFINALCLIF_RAZA.asstring
                         + ', para o Cliente NBF:' + FOS.CDSCLINCLIN_RAZA.asstring + '  ?  '
                        ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin


             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add(' insert into CLIENTE_NBFINAL (CLIF_ID,CLIN_ID,NBFINAL_DT_INCL,NBFINAL_COD_CLIN) ') ;   ////PAR_INDICE,PAR_REAJUSTADA,PAR_VENCE
             Q_AUX.Sql.Add(' values ( ' );
             Q_AUX.Sql.Add( ''''+ Q_CLIFINALCLIF_ID.asstring +'''' + ',');
             Q_AUX.Sql.Add( ''''+ FOS.CDSOSCLIN_ID.asstring   +'''' + ',');
             Q_AUX.Sql.Add( ''''+ FormatDateTime('mm/dd/yyyy',NOW) + '''' + ',');
             Q_AUX.Sql.Add( ''''+ wwDBEdit17.text + ''''+ ')' );
             Q_AUX.ExecSql;

             
             If (Q_TDOCTDOC_EMIT.asstring = 'F') then begin
                 Q_CLIF.close ;
                 Q_CLIF.open  ;
                 Q_CLIF.locate('CLIF_ID;CLIN_ID',VarArrayOf([Q_CLIFINALCLIF_ID.asstring,FOS.CDSOSCLIN_ID.asstring]), []);

                 Q_CLIF2.close ;
                 Q_CLIF2.open  ;
                 Q_CLIF2.locate('CLIF_ID;CLIN_ID',VarArrayOf([Q_CLIFINALCLIF_ID.asstring,FOS.CDSOSCLIN_ID.asstring]), []);
             end ;
             
             If (Q_TDOCTDOC_DEST.asstring = 'F') then begin
                 Q_CLIFdest.close ;
                 Q_CLIFdest.open  ;
                 Q_CLIFdest.locate('CLIF_ID;CLIN_ID',VarArrayOf([Q_CLIFINALCLIF_ID.asstring,FOS.CDSOSCLIN_ID.asstring]), []);

                 Q_CLIFdest2.close ;
                 Q_CLIFdest2.open  ;
                 Q_CLIFdest2.locate('CLIF_ID;CLIN_ID',VarArrayOf([Q_CLIFINALCLIF_ID.asstring,FOS.CDSOSCLIN_ID.asstring]), []);
             end ;

             Panel3.visible := false ;
             Panel2.enabled := true ;
             Panel1.enabled := true ;
             TabbedNotebook1.enabled := true ;

         end ;
      end ;


end;

procedure TFNF.SpeedButton2Click(Sender: TObject);
begin
    Panel3.visible := false ;
    Panel2.enabled := true ;
    Panel1.enabled := true ;
    TabbedNotebook1.enabled := true ;
end;

procedure TFNF.wwDBLookupCombo8Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFNF.wwDBEdit17Enter(Sender: TObject);
begin
  (Sender as Tedit).Color := ClAqua;
end;

procedure TFNF.wwDBEdit17Exit(Sender: TObject);
begin
   (Sender as Tedit).Color := Clwindow ;
end;

procedure TFNF.Q_NFAfterDelete(DataSet: TDataSet);
var
  STRNF : string ; {121212}
begin
   STRNF := Q_NFNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF.close ;
   Q_NF.Open ;

   If (StrNF <> '') then begin
       Q_NF.close ;
       Q_NF.Open ;
       Q_NF.locate('NFI_CODI',StrNF,[]);
   end ;


end;

procedure TFNF.wwDBLookupCombo7Enter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFNF.wwDBLookupCombo7Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
    

   If (wwDBLookupCombo9.visible = true) then begin
       wwDBLookupCombo9.setfocus ;
       abort ;
   end ;

   If (wwDBLookupCombo6.visible = true) then begin
       wwDBLookupCombo6.setfocus ;
       abort ;
   end ;

   If (wwDBLookupCombo4.visible = true) then begin
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   If (wwDBEdit4.visible = true) then begin
       wwDBEdit4.setfocus ;
       abort ;
   end ;

   
  If wwDBLookupCombo7.text <> '' then
     wwDBLookupCombo7.text := Q_CLIF2NBFINAL_COD_CLIN.asstring  ;


   wwDBEdit5.setfocus ;

end;

procedure TFNF.wwDBLookupCombo5Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFNF.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;

 
   If (wwDBLookupCombo9.visible = true) then begin
       wwDBLookupCombo9.setfocus ;
       abort ;
   end ;

   If (wwDBLookupCombo6.visible = true) then begin
       wwDBLookupCombo6.setfocus ;
       abort ;
   end ;

   If (wwDBLookupCombo4.visible = true) then begin
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   If (wwDBEdit4.visible = true) then begin
       wwDBEdit4.setfocus ;
       abort ;
   end ;
   
  If wwDBLookupCombo2.text <> '' then
     wwDBLookupCombo2.text := Q_CLINCLIN_RAZA.asstring  ;

   wwDBEdit5.setfocus ;

end;

procedure TFNF.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFNF.wwDBLookupCombo9Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua ;
end;

procedure TFNF.wwDBLookupCombo9Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;

  If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then  begin

      If (Q_NFNFI_DEST_ENDERECO.asstring <> '') then begin
          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
           else
             ABORT ;
      end ;

        IF  (Q_CLIfdest2CLIE_ENDERECO.asstring <> '') and
            (Q_CLIFdest2CLIE_CEP.asstring <> '') then begin

             Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_CLIfdest2CLIE_ENDERECO.asstring ;
             Q_NFNFI_DEST_COMPL.text := Q_CLIfdest2CLIE_ENDERECO_COMPL.asstring ;
             Q_NFNFI_DEST_BAIRRO.text := Q_CLIfdest2CLIE_ENDERECO_BAIRRO.asstring ;

             Q_NFMUN_ID.asinteger :=  Q_CLIfdest2CLIE_MUN_ID.asinteger ;

             Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_CLIfdest2CLIE_UF_SIGLA.asstring ;
             Q_NFNFI_DEST_CEP.asstring :=  Q_CLIfdest2CLiE_CEP.asstring ;
             Q_NFNFI_DEST_TEL.asstring :=  Q_CLIFdest2CLIF_TEL1.asstring ;
             Q_NFNFI_DEST_FAX.asstring := Q_CLIFdest2CLIF_fax.asstring ;
             Q_NFNFI_DEST_CGC.asstring := Q_CLIFdest2CLIF_CGCCPF.asstring ;
             Q_NFNFI_DEST_PESS.asstring := Q_CLIFdest2CLIF_PESSOA.asstring ;
             Q_NFNFI_DEST_INSCRG.asstring := Q_CLIFdest2CLIF_INSCRG.asstring ;
             Q_NFNFI_DEST_RAZA.asstring :=  Q_CLIFdest2CLIF_RAZA.asstring ;
             wwDBEdit3.setfocus ;
        end else begin
             Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_CLIfdest2CLIf_ENDERECO.asstring ;
             Q_NFNFI_DEST_COMPL.text := Q_CLIfdest2CLIf_ENDERECO_COMPL.asstring ;
             Q_NFNFI_DEST_BAIRRO.text := Q_CLIfdest2CLIf_ENDERECO_BAIRRO.asstring ;

             Q_NFMUN_ID.asinteger :=  Q_CLIfdest2MUN_ID.asinteger ;

             Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_CLIfdest2UF_SIGLA.asstring ;
             Q_NFNFI_DEST_CEP.asstring :=  Q_CLIfdest2CLif_CEP.asstring ;
             Q_NFNFI_DEST_TEL.asstring :=  Q_CLIFdest2CLIF_TEL1.asstring ;
             Q_NFNFI_DEST_FAX.asstring := Q_CLIFdest2CLIF_fax.asstring ;
             Q_NFNFI_DEST_CGC.asstring := Q_CLIFdest2CLIF_CGCCPF.asstring ;
             Q_NFNFI_DEST_PESS.asstring := Q_CLIFdest2CLIF_PESSOA.asstring ;
             Q_NFNFI_DEST_INSCRG.asstring := Q_CLIFdest2CLIF_INSCRG.asstring ;
             Q_NFNFI_DEST_RAZA.asstring :=  Q_CLIFdest2CLIF_RAZA.asstring ;
             wwDBEdit3.setfocus ;
        end ;


          Q_NFNFI_DEST_CGC.EditMask := '' ;
       if Q_NFNFI_DEST_PESS.asstring = 'F' then
          Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
       else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';

   end ;


    If wwDBLookupCombo9.text <> '' then
     wwDBLookupCombo9.text := Q_CLIFdest2NBFINAL_COD_CLIN.asstring  ;



end;

procedure TFNF.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua   ;
  wwDBLookupCombo6.Selected.Text := 'CNPJCPF	15	CNPJCPF	F';
end;

procedure TFNF.wwDBLookupCombo6Exit(Sender: TObject);
begin

  IF  Q_NF.State IN [dsInsert, dsedit] then
        wwDBLookupCombo6.Selected.Text := 'CLIF_RAZA	50	Cliente Final	F';

  (Sender as TwwDBLookupCombo).Color := Clwindow ;

  If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then  begin

      If (Q_NFNFI_DEST_ENDERECO.asstring <> '') then begin
            if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
            else
                ABORT ;
      end ;


     IF Q_CLIFdestCLIF_ID.asstring <> '' then begin
         Q_CLIfdest2.locate('CLIF_ID',Q_CLIFdestCLIF_ID.asstring,[])    ;

         IF (Q_CLIfdest2CLIE_ENDERECO.asstring <> '') and
            (Q_CLIfdest2CLIE_CEP.asstring      <> '') then begin

              Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_CLIfdest2CLIE_ENDERECO.asstring ;
              Q_NFNFI_DEST_COMPL.text := Q_CLIfdest2CLIE_ENDERECO_COMPL.asstring ;
              Q_NFNFI_DEST_BAIRRO.text := Q_CLIfdest2CLIE_ENDERECO_BAIRRO.asstring ;
              //Q_NFNFI_DEST_MUNICIPIO.text :=  Q_CLIfdest2CLIf_MUNICIPIO.asstring ;
              Q_NFMUN_ID.asinteger :=  Q_CLIfdest2CLIE_MUN_ID.asinteger ;

              Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_CLIfdest2CLIE_UF_SIGLA.asstring ;
              Q_NFNFI_DEST_CEP.asstring :=  Q_CLIfdest2CLiE_CEP.asstring ;
              Q_NFNFI_DEST_TEL.asstring :=  Q_CLIFdest2CLIF_TEL1.asstring ;
              Q_NFNFI_DEST_FAX.asstring := Q_CLIFdest2CLIF_fax.asstring ;
              Q_NFNFI_DEST_CGC.asstring := Q_CLIFdest2CLIF_CGCCPF.asstring ;
              Q_NFNFI_DEST_PESS.asstring := Q_CLIFdest2CLIF_PESSOA.asstring ;
              Q_NFNFI_DEST_INSCRG.asstring := Q_CLIFdest2CLIF_INSCRG.asstring ;
              Q_NFNFI_DEST_RAZA.asstring :=  Q_CLIFdest2CLIF_RAZA.asstring ;
              wwDBEdit3.setfocus ;

         end else begin
               Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_CLIfdest2CLIf_ENDERECO.asstring ;
               Q_NFNFI_DEST_COMPL.text := Q_CLIfdest2CLIf_ENDERECO_COMPL.asstring ;
               Q_NFNFI_DEST_BAIRRO.text := Q_CLIfdest2CLIf_ENDERECO_BAIRRO.asstring ;
               //Q_NFNFI_DEST_MUNICIPIO.text :=  Q_CLIfdest2CLIf_MUNICIPIO.asstring ;
               Q_NFMUN_ID.asinteger :=  Q_CLIfdest2MUN_ID.asinteger ;

               Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_CLIfdest2UF_SIGLA.asstring ;
               Q_NFNFI_DEST_CEP.asstring :=  Q_CLIfdest2CLif_CEP.asstring ;
               Q_NFNFI_DEST_TEL.asstring :=  Q_CLIFdest2CLIF_TEL1.asstring ;
               Q_NFNFI_DEST_FAX.asstring := Q_CLIFdest2CLIF_fax.asstring ;
               Q_NFNFI_DEST_CGC.asstring := Q_CLIFdest2CLIF_CGCCPF.asstring ;
               Q_NFNFI_DEST_PESS.asstring := Q_CLIFdest2CLIF_PESSOA.asstring ;
               Q_NFNFI_DEST_INSCRG.asstring := Q_CLIFdest2CLIF_INSCRG.asstring ;
               Q_NFNFI_DEST_RAZA.asstring :=  Q_CLIFdest2CLIF_RAZA.asstring ;
               wwDBEdit3.setfocus ;
         end ;

              Q_NFNFI_DEST_CGC.EditMask := '' ;
           if Q_NFNFI_DEST_PESS.asstring = 'F' then
              Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
           else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';
     end ;
   end ;

   If wwDBLookupCombo6.text <> '' then
     wwDBLookupCombo6.text := Q_CLIFdestCLIF_RAZa.asstring  ;

end;

procedure TFNF.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFNF.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;

  If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then  begin

      If (Q_NFNFI_DEST_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
            else
                ABORT ;
      end ;


     Q_NFNFI_DEST_ENDERECO.asstring  :=  Q_CLIfdest2CLIf_ENDERECO.asstring ;
     Q_NFNFI_DEST_COMPL.text := Q_CLIfdest2CLIf_ENDERECO_COMPL.asstring ;
     Q_NFNFI_DEST_BAIRRO.text := Q_CLIfdest2CLIf_ENDERECO_BAIRRO.asstring ;
     //Q_NFNFI_DEST_MUNICIPIO.text :=  Q_CLIfdest2CLIf_MUNICIPIO.asstring ;

     Q_NFNFI_DEST_UF_SIGLA.asstring :=  Q_CLIfdest2UF_SIGLA.asstring ;
     Q_NFNFI_DEST_CEP.asstring :=  Q_CLIfdest2CLif_CEP.asstring ;
     Q_NFNFI_DEST_TEL.asstring :=  Q_CLIFdest2CLIF_TEL1.asstring ;
     Q_NFNFI_DEST_FAX.asstring := Q_CLIFdest2CLIF_fax.asstring ;
     Q_NFNFI_DEST_CGC.asstring := Q_CLIFdest2CLIF_CGCCPF.asstring ;
     Q_NFNFI_DEST_PESS.asstring := Q_CLIFdest2CLIF_PESSOA.asstring ;
     Q_NFNFI_DEST_INSCRG.asstring := Q_CLIFdest2CLIF_INSCRG.asstring ;
     Q_NFNFI_DEST_RAZA.asstring :=  Q_CLIFdest2CLIF_RAZA.asstring ;
     wwDBEdit3.setfocus ;

          Q_NFNFI_DEST_CGC.EditMask := '' ;
       if Q_NFNFI_DEST_PESS.asstring = 'F' then
          Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
       else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';

   end ;


  If wwDBLookupCombo4.text <> '' then
     wwDBLookupCombo4.text := Q_CLINdestCLIN_RAZa.asstring  ;

end;

procedure TFNF.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := Claqua  ;
end;

procedure TFNF.wwDBEdit4Exit(Sender: TObject);
begin
   ///GROUPBOX3.enabled := true ;

  (Sender as TwwDBedit).Color := Clwindow ;
end;

procedure TFNF.wwDBLookupCombo3Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua ;
end;

procedure TFNF.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua ;
end;

procedure TFNF.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow  ;
end;

procedure TFNF.wwDBLookupCombo3Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow  ;

  If wwDBLookupCombo3.text <> '' then
     wwDBLookupCombo3.text := Q_FATCFA_CODI.asstring  ;


    ///DBRadioGroup1.setfocus ; 


end;

procedure TFNF.wwDBComboBox4Exit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := Clwindow;
   Q_NFNFI_DEST_CGC.EditMask := '' ;
   if wwDBComboBox4.text = 'Física' then
      Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
   else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';

end;

procedure TFNF.wwDBComboBox4Enter(Sender: TObject);
begin
    (Sender as TwwDBcombobox).Color := Claqua ;
end;

procedure TFNF.wwDBEdit5Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit5Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
  Q_NFNFI_DEST_CGC.EditMask := '' ;
   if wwDBComboBox4.text = 'Física' then
      Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
   else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';
end;

procedure TFNF.wwDBEdit1Exit(Sender: TObject);
Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;
begin

  IF (Q_NF.state = dsINSERT) or (Q_NF.state = dsedit)  then begin


      if ((copy(wwDBEdit1.text,1,1)) = ' ' ) then begin
           MessageDlg('Preencha todos os dígitos!',mtWarning,[mbok],0);
           wwDBEdit1.SetFocus;
           abort ;
      end ;

      if wwDBComboBox4.text = 'Jurídica' then
         begin
            A:= StrtoInt(copy(wwDBEdit1.Text,1,1));
            B:= StrtoInt(copy(wwDBEdit1.Text,2,1));
            C:= StrtoInt(copy(wwDBEdit1.Text,3,1));
            D:= StrtoInt(copy(wwDBEdit1.Text,4,1));
            E:= StrtoInt(copy(wwDBEdit1.Text,5,1));
            F:= StrtoInt(copy(wwDBEdit1.Text,6,1));
            G:= StrtoInt(copy(wwDBEdit1.Text,7,1));
            H:= StrtoInt(copy(wwDBEdit1.Text,8,1));
            I:= StrtoInt(copy(wwDBEdit1.Text,9,1));
            J:= StrtoInt(copy(wwDBEdit1.Text,10,1));
            K:= StrtoInt(copy(wwDBEdit1.Text,11,1));
            L:= StrtoInt(copy(wwDBEdit1.Text,12,1));
            X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
            M:= 11-((X)-(11*((X div 11))));
            if M > 9 then
               M:=0;
               Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
               N:= 11-((Y)-(11*((Y div 11))));
            if N > 9 then
               N:=0;
               DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
               if DC <> copy(wwDBEdit1.Text,13,2) then

                  Begin
                     MessageDlg('Digito de controle não confere.', mtInformation,
                     [mbOk], 0);
                     wwDBEdit1.Clear;
                     wwDBEdit1.Setfocus;
                   end
         end
      else
         begin
            A:= StrtoInt(copy(wwDBEdit1.Text,1,1));
            B:= StrtoInt(copy(wwDBEdit1.Text,2,1));
            C:= StrtoInt(copy(wwDBEdit1.Text,3,1));
            D:= StrtoInt(copy(wwDBEdit1.Text,4,1));
            E:= StrtoInt(copy(wwDBEdit1.Text,5,1));
            F:= StrtoInt(copy(wwDBEdit1.Text,6,1));
            G:= StrtoInt(copy(wwDBEdit1.Text,7,1));
            H:= StrtoInt(copy(wwDBEdit1.Text,8,1));
            I:= StrtoInt(copy(wwDBEdit1.Text,9,1));
            X:= (2*I+3*H+4*G+5*F+6*E+7*D+8*C+9*B+10*A)*10;
            M:= X-((11*((X div 11))));
            if M > 9 then
               M:=0;
            Y:= (2*M+3*I+4*H+5*G+6*F+7*E+8*D+9*C+10*B+11*A)*10 ;
            N:= Y-((11*((Y div 11))));
            if N > 9 then
               N:=0;
            DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
            if DC <> copy(wwDBEdit1.Text,10,2) then
               Begin
                  MessageDlg('Digito de controle não confere.', mtInformation,
                  [mbOk], 0);
                  wwDBEdit1.Clear;
                  wwDBEdit1.Setfocus;
               end
        end          ;
  end ; 

     (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit2Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit6Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit7Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit12Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit8Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit9Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit10Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit2Exit(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit6Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;

  If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then  begin
         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit6.text + ''''  ) ;
         Q_CEP.Open ;

         Q_NFNFI_DEST_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         ////Q_NFNFI_DEST_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;

         IF Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_NFMUN_ID.asinteger  := Q_MUNIMUN_ID.asinteger ;
             Q_NFNFI_DEST_UF_SIGLA.asstring := Q_MUNIUF_SIGLA.asstring ;

         end else begin
             Q_NFMUN_ID.asinteger  := 0 ;
             Q_NFNFI_DEST_UF_SIGLA.asstring := '0' ;
         end ;      
         Q_NFNFI_DEST_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
         ///Q_NFNFI_DEST_UF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwdbedit12.setfocus ;
     end ;

end;

procedure TFNF.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit8Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.Q_INFAfterDelete(DataSet: TDataSet);
///var
//StrITEM : string ;
begin
  // StrITEM := Q_INFINF_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_INF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

    // If (StrITEM <> '') then begin
    //     Q_INF.close ;
    //     Q_INF.Open ;
    //     Q_INF.locate('INF_CODI',StrITEM,[]);
    // end ;

    If Q_INFNFI_CODI.asstring <> '' then begin
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select SUM(INF_QTDE) as TOT from NF_ITENS ' ) ;
         Q_AUX.Sql.Add( ' where NFI_CODI = ' + Q_INFNFI_CODI.asstring);
         Q_AUX.open ;
         Label47.caption := formatfloat('###,###,##0.000',Q_AUX.fieldbyname('TOT').asfloat) ;
         Label45.caption :=  Q_NFNFI_QTDEPALLET.asstring ;
    end else  begin
         Label47.caption :=  '0';
         label45.caption :=  '0';
    end ;

end;

procedure TFNF.Q_INFAfterPost(DataSet: TDataSet);
var
StrITEM : string ;
begin
   StrITEM := Q_INFINF_ITEM.asstring   ;
   try

           FSenha.Dtb_BaseDados.ApplyUpdates([Q_INF])

   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   


   If (StrITEM <> '') then begin
       Q_INF.close ;
       Q_INF.Open ;
       Q_INF.locate('INF_ITEM',StrITEM,[]);
   end ;


   If Q_INFNFI_CODI.asstring <> '' then begin
      /// Q_INF.close ;
      /// Q_INF.Open  ;

      //// Q_INF.locate('NFI_CODI;INF_ITEM',vararrayof([Q_INFNFI_CODI.asstring,Q_INFINF_ITEM.asstring]),[]) ;


       Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add( ' select SUM(INF_QTDE) as TOT from NF_ITENS ' ) ;
       Q_AUX.Sql.Add( ' where NFI_CODI = ' + Q_INFNFI_CODI.asstring);
       Q_AUX.open ;
       Label47.caption := formatfloat('###,###,##0.000',Q_AUX.fieldbyname('TOT').asfloat) ;
       Label45.caption :=  Q_NFNFI_QTDEPALLET.asstring ;
   end else  begin
       Label47.caption :=   '0';
       label45.caption := '0' ;
   end ;

end;

procedure TFNF.DBLC_INF_PRODExit(Sender: TObject);
VAR AUX : string;
begin
  {If not Q_PROD.locate('PRO_ID',Q_INFPRO_ID.asstring,[]) then begin
       DBLC_INF_PROD.text := '' ;
       DBLC_INF_PROD.setfocus ;
       abort ;
  end;}




  If ((Q_INF.state = dsedit ) or (Q_INF.state = dsinsert )) and
      (DBLC_INF_PROD.text <> '') then begin


       if not Q_PROD.Locate('PRO_COD',DBLC_INF_PROD.Text,[] ) then begin
         MessageDlg('Produto não cadastrado !',mtInformation,[mbOk], 0);
          DBLC_INF_PROD.setfocus;
          abort  ;
       end;



      Q_AUX2.close;
      Q_AUX2.Sql.Clear;
      Q_AUX2.Sql.Add('Select count(*) as QTDE_PRODUTO from  NF_ITENS A,NF B ') ;
      Q_AUX2.Sql.Add(' where A.PRO_ID = ' + Q_PRODPRO_ID.asstring   ) ;
      Q_AUX2.Sql.Add(' and A.NFI_CODI = B.NFI_CODI '  ) ;
      Q_AUX2.Sql.Add(' and A.NFI_CODI = ' +Q_NFNFI_CODI.asstring ) ;
      Q_AUX2.Sql.Add(' and B.OS_ID = ' + Q_NFOS_ID.asstring ) ;
      Q_AUX2.open ;


     If (Q_AUX2.fieldbyname('QTDE_PRODUTO').asfloat > 0)  then begin

          MessageDlg('Produto já cadastrado !',mtInformation,[mbOk], 0);
          DBLC_INF_PROD.setfocus;
          abort  ;

     end ;







      Q_INFPRO_DESC.asstring := Q_PRODPRO_DESC.asstring ;

      Q_INFPRO_ID.asinteger   := Q_PRODPRO_ID.asinteger  ;
      Q_INFUVEN_ID.asstring  := Q_PRODUVEN_ID.asstring ;
      Q_INFINF_PESO.asstring := Q_PRODPRO_PESO.asstring ;
      Q_INFINF_PESOLIQ.asstring := Q_PRODPRO_PESO_LIQ.asstring ;
      Q_INFINF_VOL.asstring  := Q_PRODPRO_VOLUME.asstring ;
      Q_INFPRO_ID.AsInteger := Q_PRODPRO_ID.Value;
      Q_INFPRO_COD.asstring  := DBLC_INF_PROD.TEXT;//Q_PRODPRO_COD.asstring;


      Q_FAT.LOCATE('CFA_ID', Q_NFCFA_ID.asstring,[]);


      Q_AUX2.close;
      Q_AUX2.Sql.Clear;
      Q_AUX2.Sql.Add('SELECT  substring(PRO_CST1,1,4), ') ;
      Q_AUX2.Sql.Add('        substring(PRO_CST1,5,3) as CST from produto ') ;
      Q_AUX2.Sql.Add('        where PRO_ID = ' + Q_PRODPRO_ID.asstring) ;
      Q_AUX2.Sql.Add('        and   substring(PRO_CST1,1,4) = ' + '''' + Q_FATCFA_CODI.asstring + '''') ;
      Q_AUX2.open ;

      IF Q_AUX2.recordcount = 0 then begin
          Q_AUX2.close;
          Q_AUX2.Sql.Clear;
          Q_AUX2.Sql.Add('SELECT  substring(PRO_CST2,1,4), ') ;
          Q_AUX2.Sql.Add('        substring(PRO_CST2,5,3) as CST from produto ') ;
          Q_AUX2.Sql.Add('        where PRO_ID = ' + Q_PRODPRO_ID.asstring) ;
          Q_AUX2.Sql.Add('        and   substring(PRO_CST2,1,4) = ' + '''' + Q_FATCFA_CODI.asstring + '''') ;
          Q_AUX2.open ;

          IF Q_AUX2.recordcount = 0 then begin
              Q_AUX2.close;
              Q_AUX2.Sql.Clear;
              Q_AUX2.Sql.Add('SELECT  substring(PRO_CST3,1,4), ') ;
              Q_AUX2.Sql.Add('        substring(PRO_CST3,5,3) as CST from produto ') ;
              Q_AUX2.Sql.Add('        where PRO_ID = ' + Q_PRODPRO_ID.asstring) ;
              Q_AUX2.Sql.Add('        and   substring(PRO_CST3,1,4) = ' + '''' + Q_FATCFA_CODI.asstring + '''') ;
              Q_AUX2.open ;
              IF Q_AUX2.recordcount = 0 then begin
                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add('SELECT  substring(PRO_CST4,1,4), ') ;
                    Q_AUX2.Sql.Add('        substring(PRO_CST4,5,3) as CST from produto ') ;
                    Q_AUX2.Sql.Add('        where PRO_ID = ' + Q_PRODPRO_ID.asstring) ;
                    Q_AUX2.Sql.Add('        and   substring(PRO_CST4,1,4) = ' + '''' + Q_FATCFA_CODI.asstring + '''') ;
                    Q_AUX2.open ;
                    IF Q_AUX2.recordcount = 0 then begin
                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add('SELECT  substring(PRO_CST5,1,4), ') ;
                        Q_AUX2.Sql.Add('        substring(PRO_CST5,5,3) as CST from produto ') ;
                        Q_AUX2.Sql.Add('        where PRO_ID = ' + Q_PRODPRO_ID.asstring) ;
                        Q_AUX2.Sql.Add('        and   substring(PRO_CST5,1,4) = ' + '''' + Q_FATCFA_CODI.asstring + '''') ;
                        Q_AUX2.open ;
                        IF Q_AUX2.recordcount = 0 then begin
                            Q_AUX2.close;
                            Q_AUX2.Sql.Clear;
                            Q_AUX2.Sql.Add('SELECT  substring(PRO_CST6,1,4), ') ;
                            Q_AUX2.Sql.Add('        substring(PRO_CST6,5,3) as CST from produto ') ;
                            Q_AUX2.Sql.Add('        where PRO_ID = ' + Q_PRODPRO_ID.asstring) ;
                            Q_AUX2.Sql.Add('        and   substring(PRO_CST6,1,4) = ' + '''' + Q_FATCFA_CODI
                            .asstring + '''') ;
                            Q_AUX2.open ;
                        end ;
                   end ;
              end;
              
          end ;
      end ;

      IF Q_AUX2.fieldbyname('CST').asstring <> '' then
         Q_INFINF_CST.asstring  := Q_AUX2.fieldbyname('CST').asstring
      else
         Q_INFINF_CST.asstring  := 'XYZ';


  end ;

  DBG_INFI.SelectedField := Q_INFPRO_DESC;




end;

procedure TFNF.Q_INFNewRecord(DataSet: TDataSet);
begin
    Q_INFNFI_CODI.asstring := Q_NFNFI_CODI.asstring ;



    IF Q_NFNFI_EMIT_CLI.asstring <> '' then begin
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select CLIN_LOTE  from ClienteNBF ' ) ;
         Q_AUX.Sql.Add( ' where CLIN_ID = ' + Q_NFNFI_EMIT_CLI.asstring);
         Q_AUX.open ;

         IF (Q_AUX.fieldbyname('CLIN_LOTE').asstring = 'S') and
            (Q_NFTDOC_ID.asstring = '1' )  Then begin
               Q_INFESTQ_LOTE1.asstring := '' ;
               Q_INFESTQ_LOTE1_QTDE.asstring := '' ;
               Q_INFESTQ_LOTE2.asstring := '' ;
               Q_INFESTQ_LOTE2_QTDE.asstring := '' ;
         end ;
     end ;



   //// Q_INFINF_AICM.asstring := Q_UFUF_ALIQUOTA.asstring ;

    Q_INFINF_QTDERETORNADA.asinteger := 0 ;


    IF Q_INF.recordcount = 0 then
        Q_INFINF_ITEM.asinteger :=  (Q_INFINF_ITEM.asinteger + 1)
    else
       Q_INFINF_ITEM.asinteger :=  (Q_INF.recordcount + 1);


end;

procedure TFNF.TabbedNotebook1Click(Sender: TObject);
var
     STRNF : string ;
begin

  If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then
      Q_NF.post ;

  If (Q_INF.state = dsedit ) or (Q_INF.state = dsinsert )  then
      Q_INF.post ;


   If (Q_NFNFI_CODI.asstring <> '')
       and (Q_NFCFA_ID.asstring <> '')
       and (PESQUISANF = '')
       and (PESQUISANF2 = '')
       and (MANIFESTONF = '')  then begin
                     //////
        Q_AUX.close ;
        Q_AUX.Sql.Clear ;
        Q_AUX.Sql.Add('SELECT Count(*) as CONTAREG from NF ') ;
        Q_AUX.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring  ) ;
        Q_AUX.Open ;

        IF Q_AUX.fieldbyname('CONTAREG').asinteger = 0 then begin
           SpeedButton4.enabled := false ;
           SpeedButton3.enabled := true  ;
        end else begin
           SpeedButton4.enabled := true ;
            If (TabbedNotebook1.pageindex = 2) then
                SpeedButton3.enabled := true
                 else
                SpeedButton3.enabled := false ;
        end ;
   end ;


  If (TabbedNotebook1.pageindex = 0) or (TabbedNotebook1.pageindex = 2) then
     DBNavigator1.datasource := DS_NF;

  If (TabbedNotebook1.pageindex = 1) then  begin
     DBNavigator1.datasource := DS_INF;


     //ADICIONADO POR MIGUEL VERSAO 14.5
     Q_INF.Close;
     Q_INF.Open;
     ////////////////////////////////////////////////////////////////

     IF Q_NFNFI_EMIT_CLI.asstring <> '' then begin
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select CLIN_LOTE  from ClienteNBF ' ) ;
         Q_AUX.Sql.Add( ' where CLIN_ID = ' + Q_NFNFI_EMIT_CLI.asstring);
         Q_AUX.open ;

         IF (Q_AUX.fieldbyname('CLIN_LOTE').asstring = 'S') and
            (Q_NFTDOC_ID.asstring = '1' )  Then begin
               Q_INFESTQ_LOTE1.readonly := false ;
               Q_INFESTQ_LOTE1_QTDE.readonly := false ;
               Q_INFESTQ_LOTE2.readonly := false ;
               Q_INFESTQ_LOTE2_QTDE.readonly := false ;
         end else begin
               Q_INFESTQ_LOTE1.readonly := true ;
               Q_INFESTQ_LOTE1_QTDE.readonly := true ;
               Q_INFESTQ_LOTE2.readonly := true ;
               Q_INFESTQ_LOTE2_QTDE.readonly := true ;
         end ;
     end ;

     If Q_INFNFI_CODI.asstring <> '' then begin
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select SUM(INF_QTDE) as TOT from NF_ITENS ' ) ;
         Q_AUX.Sql.Add( ' where NFI_CODI = ' + Q_INFNFI_CODI.asstring);
         Q_AUX.open ;
         Label47.caption := formatfloat('###,###,##0.000',Q_AUX.fieldbyname('TOT').asfloat) ;
         Label45.caption :=  Q_NFNFI_QTDEPALLET.asstring ;
      end else  begin
         Label47.caption := '0';
         label45.caption := '0' ;
      end ;
  end ;


  If (TabbedNotebook1.pageindex = 2) then  begin
      If (Q_FATCFA_TICM.asstring = '0') then Label21.caption := 'Tributado Integralmente' ;
      If (Q_FATCFA_TICM.asstring = '1') then Label21.caption := 'Tributado e ICMS por Substituição Tributária' ;
      If (Q_FATCFA_TICM.asstring = '2') then Label21.caption := 'Com Redução de Base de Cálculo' ;
      If (Q_FATCFA_TICM.asstring = '3') then Label21.caption := 'Isento ou Não Tributado e ICMS por Substituição Tributária' ;
      If (Q_FATCFA_TICM.asstring = '4') then Label21.caption := 'Isento ou Não Tributado' ;
      If (Q_FATCFA_TICM.asstring = '5') then Label21.caption := 'Com Suspensão ou Diferimento' ;
      If (Q_FATCFA_TICM.asstring = '6') then Label21.caption := 'ICMS Cobrado Anteriormente por Substituição Tributária' ;
      If (Q_FATCFA_TICM.asstring = '7') then Label21.caption := 'Com Redução de Base de Cálculo e ICMS por Substituição Tributária' ;
      If (Q_FATCFA_TICM.asstring = '9') then Label21.caption := 'Outros' ;

      If (Q_NFNFI_CODI.asstring <> '') and (Q_NFCFA_ID.asstring <> '')
          and (PESQUISANF = '')
           and (PESQUISANF2 = '')
           and (MANIFESTONF = '') then begin

          IF (Q_NFMANI_ID.asstring = '') and
             (FOS.CDSOSOS_CONCLUIDA.asstring = 'N')  then begin

             //VERIFICAMOS SE A NF DEVE SER RECALCULADA - MIGUEL
             IF Q_NFBLOQUEIO.AsString <> 'S' then
             BEGIN
                  try
                  Begin
                     STP_NF.ParamByName('@NF').Value    :=  Q_NFNFI_CODI.asinteger ;
                     STP_NF.ParamByName('@CFO').Value       := Q_NFCFA_ID.asinteger ;
                     STP_NF.ParamByName('@CLIN_ID').Value    := FOS.CDSOSCLIN_ID.asinteger ;
                     STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
                     STP_NF.Execproc;
                  End
                  except
                  begin
                     MessageDlg('Geração Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
                     abort  ;
                  end;
                end;

                 STRNF := Q_NFNFI_CODI.asstring    ;
                 Q_NF.close ;
                 Q_NF.open ;
                 Q_NF.locate('NFI_CODI',STRNF,[]) ;
             END;
          end ;
     end ;
  end  ;
end;

procedure TFNF.wwDBEdit13Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit13Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;


  { If (wwDBLookupCombo7.visible = true)  then begin
       wwDBLookupCombo7.setfocus ;
       //abort ;
   end ELse begin
       If (wwDBLookupCombo5.visible = true) and
          (Panel1.enabled = true) then begin
           wwDBLookupCombo5.setfocus ;
           //abort ;
       end ELse begin
           If (wwDBLookupCombo2.visible = true) and
             (Panel1.enabled = true)then begin
               wwDBLookupCombo2.setfocus ;
               ///abort;
           end else begin
               If (wwDBLookupCombo9.visible = true) and
                  (Panel1.enabled = true)then begin
                   wwDBLookupCombo9.setfocus ;
                   //abort ;
               end else begin
                    If (wwDBLookupCombo6.visible = true) and
                       (Panel1.enabled = true) then begin
                       wwDBLookupCombo6.setfocus ;
                       //abort ;
                   end else begin
                        If (wwDBLookupCombo4.visible = true) and
                            (Panel1.enabled = true)then begin
                           wwDBLookupCombo4.setfocus ;
                           //abort ;
                       end else begin
                              If (wwDBEdit4.visible = true) and
                                 (Panel1.enabled = true)then begin
                                   wwDBEdit4.setfocus ;
                                   //abort ;
                               end else
                                   If (Panel1.enabled = true)then  wwDBEdit5.setfocus ;
                       end ;
                   end ;
               end ;
           end ;
       end ;
   end ;
   ////wwDBEdit5.setfocus ;
   abort;      }



end;

procedure TFNF.DBG_INFIColExit(Sender: TObject);
begin
    if (Q_INF.State = dsEdit) or
       (Q_INF.State = dsInsert) then
       begin

        IF  (Q_INFPRO_ID.asstring <> '') and
            (Q_NFTDOC_ID.asinteger  = 1) and
            (FOS.CDSOSTOS_ID.asinteger <> 5) then begin


            If (DBG_INFI.SelectedField = Q_INFINF_QTDE) Then begin
                  Q_AUX.close;
                  Q_AUX.Sql.Clear;
                  Q_AUX.Sql.Add('Select SUM(ESTq_QTDE) as QTDE_ESTQ from ESTOQUE A ') ;
                  Q_AUX.Sql.Add(' where A.PRO_ID = ' + Q_INFPRO_ID.asstring   ) ;
                  Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
                  Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                  Q_AUX.Sql.Add(' and A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                  Q_AUX.Sql.Add(' and (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')');
                  Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
                  Q_AUX.Sql.Add(' and AR_DISPONIVEL = ' + '''' + 'S' + ''''  +')' ) ;
                  ///Q_AUX.Sql.Add(' and AR_ID_AVARIA  = ' + '''' + 'S' + '''' ) ;
                  Q_AUX.open ;


                  Q_AUX2.close;
                  Q_AUX2.Sql.Clear;
                  Q_AUX2.Sql.Add(' Select SUM(INF_QTDE) as QTDE_PRODUTO from  NF_ITENS A,OS B ,NF C ') ;
                  Q_AUX2.Sql.Add(' where A.PRO_ID = ' + Q_INFPRO_ID.asstring   ) ;
                  Q_AUX2.Sql.Add(' and B.OS_ID = ' + Q_NFOS_ID.asstring ) ;
                  Q_AUX2.Sql.Add(' and B.OS_ID = C.OS_ID' ) ;
                  Q_AUX2.Sql.Add(' and A.NFI_CODI = C.NFI_CODI ') ;
                  Q_AUX2.Sql.Add(' and A.NFI_CODI = C.NFI_CODI ') ;
                  Q_AUX2.Sql.Add(' and (C.MANI_ID is NULL or C.MANI_ID = ' + '''' + '' + '''' + ')');
                  Q_AUX2.open ;


                 If (((Q_AUX.fieldbyname('QTDE_ESTQ').asfloat - Q_AUX2.fieldbyname('QTDE_PRODUTO').asfloat) = 0)
                    or
                    ((Q_AUX.fieldbyname('QTDE_ESTQ').asfloat - Q_AUX2.fieldbyname('QTDE_PRODUTO').asfloat) < Q_INFINF_QTDE.asfloat)) then BEGIN

                    MessageDlg('Estoque Insuficiente, para este produto  !',mtInformation,[mbOk], 0);
                    DBG_INFI.SelectedField := Q_INFPRO_ID;
                 end      ;
            END ;


            If (DBG_INFI.SelectedField = Q_INFESTQ_LOTE1) Then begin

                  IF  Q_INFESTQ_LOTE1.asstring <> '' then begin
                        Q_AUX.close;
                        Q_AUX.Sql.Clear;
                        Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) from estoque  ');
                        Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
                        Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
                        Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                        Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
                        Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
                        Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
                        Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + '''' + ')');
                        Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
                        Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE1.asstring + '''');
                        Q_AUX.Sql.Add('group by ESTQ_LOTE ');
                        Q_AUX.Sql.Add('order by ESTQ_LOTE ');
                        Q_AUX.open ;

                        If  (Q_AUX.fieldbyname('ESTQ_LOTE').asstring = '') then begin
                            MessageDlg('Lote inexistente !',mtInformation,[mbOk], 0);
                            DBG_INFI.SelectedField := Q_INFESTQ_LOTE1;
                            abort ;
                        end  ;
                  end ;
            end ;


            If (DBG_INFI.SelectedField = Q_INFESTQ_LOTE1_QTDE) Then begin
                   IF  Q_INFESTQ_LOTE1_QTDE.asstring <> '' then begin
                        Q_AUX.close;
                        Q_AUX.Sql.Clear;
                        Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) as QTDE from estoque  ');
                        Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
                        Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
                        Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                        Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
                        Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
                        Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
                        Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + ''''+ ')');
                        Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
                        Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE1.asstring + '''');
                        Q_AUX.Sql.Add('group by ESTQ_LOTE ');
                        Q_AUX.Sql.Add('order by ESTQ_LOTE ');
                        Q_AUX.open ;
                         If  (Q_AUX.fieldbyname('QTDE').asfloat < Q_INFESTQ_LOTE1_QTDE.asfloat) or
                             (Q_INFESTQ_LOTE1_QTDE.asfloat > Q_INFINF_QTDE.asfloat) then begin
                             MessageDlg('Qtde. não disponível p/ o Lote ou Somatória(Lote1 + Lote2) diferente do total do item ',mtInformation,[mbOk], 0);
                             DBG_INFI.SelectedField := Q_INFESTQ_LOTE1_QTDE;
                             abort ;
                         end ;

                  end ;
            end ;


           If (DBG_INFI.SelectedField = Q_INFESTQ_LOTE2) Then begin

                  IF  Q_INFESTQ_LOTE2.asstring <> '' then begin

                         If  (Q_INFESTQ_LOTE2.asstring = Q_INFESTQ_LOTE1.asstring) then begin
                             MessageDlg('Lote 2 igual ao Lote 1!',mtInformation,[mbOk], 0);
                             DBG_INFI.SelectedField := Q_INFESTQ_LOTE2;
                             abort ;
                         end      ;

                         Q_AUX.close;
                         Q_AUX.Sql.Clear;
                         Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) from estoque  ');
                         Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
                         Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
                         Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                         Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
                         Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
                         Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
                         Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + ''''+ ')');
                         Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
                         Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE2.asstring + '''');
                         Q_AUX.Sql.Add('group by ESTQ_LOTE ');
                         Q_AUX.Sql.Add('order by ESTQ_LOTE ');
                         Q_AUX.open ;

                         If  (Q_AUX.fieldbyname('ESTQ_LOTE').asstring = '') then begin
                             MessageDlg('Lote inexistente !',mtInformation,[mbOk], 0);
                             DBG_INFI.SelectedField := Q_INFESTQ_LOTE2;
                             abort ;
                         end      ;
                  end ;
            end ;


            If (DBG_INFI.SelectedField = Q_INFESTQ_LOTE2_QTDE) Then begin
                   IF  Q_INFESTQ_LOTE2_QTDE.asstring <> '' then begin
                        Q_AUX.close;
                        Q_AUX.Sql.Clear;
                        Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) as QTDE from estoque  ');
                        Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
                        Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
                        Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                        Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
                        Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
                        Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
                        Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + ''''+ ')');
                        Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
                        Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE2.asstring + '''');
                        Q_AUX.Sql.Add('group by ESTQ_LOTE ');
                        Q_AUX.Sql.Add('order by ESTQ_LOTE ');
                        Q_AUX.open ;

                         If  (Q_AUX.fieldbyname('QTDE').asfloat < Q_INFESTQ_LOTE2_QTDE.asfloat) or
                             (Q_INFESTQ_LOTE2_QTDE.asfloat > Q_INFINF_QTDE.asfloat) or
                             ((Q_INFESTQ_LOTE2_QTDE.asfloat + Q_INFESTQ_LOTE1_QTDE.asfloat) <> Q_INFINF_QTDE.asfloat) then begin
                             MessageDlg('Qtde. não disponível p/ o Lote ou Somatória(Lote1 + Lote2) diferente do total do item  ',mtInformation,[mbOk], 0);
                             DBG_INFI.SelectedField := Q_INFESTQ_LOTE2_QTDE;
                             abort ;
                         end      ;
                  end ;
            end ;



        end ;

         If (DBG_INFI.SelectedField = Q_INFINF_QTDE) or
            (DBG_INFI.SelectedField = Q_INFINF_PUNI) or
            (DBG_INFI.SelectedField = Q_INFINF_AICM) or
            (DBG_INFI.SelectedField = Q_INFINF_AIPI) Then begin
            Q_INFINF_TOTA.AsFloat :=
            Q_INFINF_QTDE.AsFloat *
            Q_INFINF_PUNI.AsFloat ;

            Q_INFINF_VIPI.AsFloat :=
            Q_INFINF_TOTA.AsFloat *
            (Q_INFINF_AIPI.AsFloat/100) ;

            Q_INFINF_VICM.AsFloat :=
            Q_INFINF_TOTA.AsFloat *
            (Q_INFINF_AICM.AsFloat/100) ;

         end;

     End;



end;

procedure TFNF.wwDBEdit14Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_PLACEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_DSAIEnter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_MARCEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_QTDEEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_ESPEEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_PLIQEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBE_NFI_PBRUEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.DBLC_NFI_UFVEEnter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFNF.DBCB_NFI_TFREEnter(Sender: TObject);
begin
   (Sender as TwwDBcombobox).Color := Claqua ;
end;

procedure TFNF.wwDBEdit14Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_PLACExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_DSAIExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_MARCExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_QTDEExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_ESPEExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_PLIQExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBE_NFI_PBRUExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBLC_NFI_UFVEExit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow  ;
end;

procedure TFNF.DBCB_NFI_TFREExit(Sender: TObject);
begin
 (Sender as TwwDBcombobox).Color := Clwindow  ;
end;

procedure TFNF.DBEdit5Exit(Sender: TObject);
begin
    (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBEdit5Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ; 
end;

procedure TFNF.DBEdit3Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ; 
end;

procedure TFNF.DBEdit3Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBEdit2Enter(Sender: TObject);
begin
       (Sender as TDBEdit).Color := Claqua;
end;

procedure TFNF.DBEdit2Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBEdit1Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNF.DBEdit1Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNF.BitBtn3Click(Sender: TObject);
var
NFCOD : string ;
begin
    NFCOD := Q_NFNFI_CODI.asstring ;
    If MessageDlg('Confirma novos Cálculos para a Nota Fiscal ? ',MtConfirmation,[MbYes,
      MbNo],0)=MrYes Then begin

         If (Q_NFNFI_CODI.asstring <> '') and (Q_NFCFA_ID.asstring <> '') then begin
                try
              Begin
                 STP_NF.ParamByName('@NF').Value    :=  Q_NFNFI_CODI.asinteger ;
                 STP_NF.ParamByName('@CFO').Value    := Q_NFCFA_ID.asinteger ;
                 STP_NF.ParamByName('@CLIN_ID').Value    := FOS.CDSOSCLIN_ID.asinteger ;
                 STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
                 STP_NF.Execproc;
              End
            except
              begin
                 MessageDlg('Geração Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
                 abort  ;
              end;
            end;
         end ;
         Q_NF.close ;
         Q_NF.open ;
         Q_NF.locate('NFI_CODI',NFCOD,[])    ;

    end ;

end;

procedure TFNF.DBEdit9Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNF.DBEdit14Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ; 
end;

procedure TFNF.DBEdit14Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ; 
end;

procedure TFNF.DBEdit9Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNF.DBEdit11Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ; 
end;

procedure TFNF.DBEdit11Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ; 
end;

procedure TFNF.DBEdit10Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow ;
end;

procedure TFNF.DBEdit10Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ; 
end;

procedure TFNF.DBCB_CFA_TIPIEnter(Sender: TObject);
begin
  (Sender as Twwdbcombobox).Color := Claqua ; 
end;

procedure TFNF.DBCB_CFA_TIPIExit(Sender: TObject);
begin
   (Sender as Twwdbcombobox).Color := Clwindow  ;
end;

procedure TFNF.wwDBLookupCombo10Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Claqua ;
end;

procedure TFNF.wwDBLookupCombo10Exit(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := CLWINDOW ;
end;

procedure TFNF.wwDBEdit11Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNF.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNF.FormShow(Sender: TObject);
begin
  IF RETORNOSIMB = '' then begin
      If PANEL1.enabled = true then
          wwDBEdit13.setfocus ;
  end ;

end;

procedure TFNF.Q_NFBeforePost(DataSet: TDataSet);
begin
  //IF (Q_NFNFI_CLONE.asstring = 'S') then abort  ;
  try
   IF (wwDBEdit13.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Número NF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBEdit13.setfocus ;
       abort ;
   end ;

   IF (wwDBEdit16.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Série é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBEdit16.setfocus ;
       abort ;
   end ;


   IF (wwDBLookupCombo3.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Código de Faturamento é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo3.setfocus ;
       abort ;
   end ;

   If (FOS.Q_TDOCTDOC_ID.asinteger = 2) and
      (FOS.CDSCTTCTT_TERCEIRO.asstring = 'S') then  begin
       IF (DBRadioGroup4.value = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Movimenta Estoque é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBRadioGroup4.setfocus ;
           abort ;
       end ;
   end ;



  IF (Q_NFNFI_DEST_CLI.asstring = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Destinatário é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       abort ;
  end ;

  IF FOS.CDSCLINCLIN_UTIL_COD.asstring = 'S' then begin
      IF (wwDBLookupCombo9.text = '')   then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Destinatário Código/Nome é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           abort ;
       end ;
   end ;



   If (FOS.Q_TDOCTDOC_ID.asinteger = 1) then begin
      IF (DBRadioGroup1.value = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Transportador NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBRadioGroup1.setfocus ;
           abort ;
       end ;
   end ;


    IF (FOS.Q_TDOCTDOC_ID.asinteger = 1) or
       (FOS.Q_TDOCTDOC_ID.asinteger = 3) then  begin
        IF (wwDBComboBox1.text = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Redespacho é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBComboBox1.setfocus ;
           abort ;
       end ;
    end  ;
  except

  end;

end;

procedure TFNF.Q_NFBeforeScroll(DataSet: TDataSet);
begin
     IF ((MANIFESTONF = '*') or
        (PESQUISANF = '*') or
        (PESQUISANF2 = '*') or
        (RETORNOSIMB = '*'){ or
        (Q_NFNFI_CLONE.asstring = 'S')}) then abort  ;
end;

procedure TFNF.Q_NFBeforeEdit(DataSet: TDataSet);
begin
 // IF ((MANIFESTONF = '*') or
 //     (PESQUISANF  = '*') or
 //     (PESQUISANF2 = '*') or
 //     (RETORNOSIMB = '*'){ or
 //     (Q_NFNFI_CLONE.asstring = 'S')}) then abort  ;
end;

procedure TFNF.Q_NFBeforeDelete(DataSet: TDataSet);
begin
  IF ((MANIFESTONF = '*') or
   (PESQUISANF = '*') or
    (PESQUISANF2 = '*') or
    (RETORNOSIMB = '*')  or
    (Q_NFNFI_CLONE.asstring = 'S')) then abort  ;



     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add('Select count(*) as xvalor from  NF_TPRODUTO ') ;
     Q_AUX.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
     Q_AUX.open ;

     If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add('DELETE from NF_TPRODUTO ') ;
         Q_AUX.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
         Q_AUX.execsql ;
     end ;



end;

procedure TFNF.Q_INFBeforeScroll(DataSet: TDataSet);
begin
     IF ((MANIFESTONF = '*') or
     (PESQUISANF = '*') or
      (PESQUISANF2 = '*') or
      (RETORNOSIMB = '*')) {or
       (Q_NFNFI_CLONE.asstring = 'S')) }then abort  ;
end;

procedure TFNF.Q_INFBeforeEdit(DataSet: TDataSet);
begin
  IF ((MANIFESTONF = '*') or
      (PESQUISANF = '*') or
      (PESQUISANF2 = '*') or
      (RETORNOSIMB = '*') or
      (Q_NFNFI_CLONE.asstring = 'S') ) then abort  ;
end;

procedure TFNF.Q_INFBeforeDelete(DataSet: TDataSet);
begin
      IF ((MANIFESTONF = '*') or
      (PESQUISANF = '*') or
       (PESQUISANF2 = '*') or
        (RETORNOSIMB = '*') or
          (Q_NFNFI_CLONE.asstring = 'S')) then abort  ;
end;

procedure TFNF.Q_INFBeforePost(DataSet: TDataSet);
begin

    Q_INFINF_TOTA.AsFloat :=  (Q_INFINF_QTDE.AsFloat *  Q_INFINF_PUNI.AsFloat) ;

    If (Q_INFPRO_COD.asstring = '') then begin
        MessageDlg('Código é campo de Preechimento obrigatório !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFPRO_COD;
        abort ;
    end ;

    IF (Q_INFINF_QTDE.asfloat = 0) or
       (Q_INFINF_QTDE.asstring  ='')  then begin
       MessageDlg('Quantidade deve ser superior a zero !',mtWarning,[mbok],0);
       TabbedNotebook1.pageindex := 1   ;
       DBG_INFI.SelectedField := Q_INFINF_QTDE;
       abort ;
    end ;

    /////Q_INFINF_QTDERETORNADA.asinteger := Q_INFINF_QTDE.asinteger ;


     If (Q_INFESTQ_LOTE2.asstring <> '') and
        (Q_INFESTQ_LOTE1.asstring =  '') then begin
         MessageDlg('Não é permitido preencher o Lote 2 com o Lote 1 em Branco !',mtInformation,[mbOk], 0);
         DBG_INFI.SelectedField := Q_INFESTQ_LOTE1;
         abort ;
     end   ;



   ////////
    IF  Q_INFESTQ_LOTE1.asstring <> '' then begin
          Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) from estoque  ');
          Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
          Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
          Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
          Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
          Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
          Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
          Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + '''' + ')');
          Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
          Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE1.asstring + '''');
          Q_AUX.Sql.Add('group by ESTQ_LOTE ');
          Q_AUX.Sql.Add('order by ESTQ_LOTE ');
          Q_AUX.open ;

          If (Q_AUX.fieldbyname('ESTQ_LOTE').asstring = '') then begin
              MessageDlg('Lote inexistente !',mtInformation,[mbOk], 0);
              DBG_INFI.SelectedField := Q_INFESTQ_LOTE1;
              abort ;
          end  ;


           If (Q_INFESTQ_LOTE1_QTDE.asstring =  '') then begin
               MessageDlg('Lote 1 em Branco !',mtInformation,[mbOk], 0);
               DBG_INFI.SelectedField := Q_INFESTQ_LOTE1;
               abort ;
           end   ;

    end ;


    IF  Q_INFESTQ_LOTE1_QTDE.asstring <> '' then begin
          Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) as QTDE from estoque  ');
          Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
          Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
          Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
          Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
          Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
          Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
          Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + ''''+ ')');
          Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
          Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE1.asstring + '''');
          Q_AUX.Sql.Add('group by ESTQ_LOTE ');
          Q_AUX.Sql.Add('order by ESTQ_LOTE ');
          Q_AUX.open ;
           If  (Q_AUX.fieldbyname('QTDE').asfloat < Q_INFESTQ_LOTE1_QTDE.asfloat) or
               (Q_INFESTQ_LOTE1_QTDE.asfloat > Q_INFINF_QTDE.asfloat) then begin
               MessageDlg('Qtde. não disponível p/ o Lote ou Somatória(Lote1 + Lote2) diferente do total do item  ',mtInformation,[mbOk], 0);
               DBG_INFI.SelectedField := Q_INFESTQ_LOTE1_QTDE;
               abort ;
           end ;

    end ;



    IF  Q_INFESTQ_LOTE2.asstring <> '' then begin
            If  (Q_INFESTQ_LOTE2.asstring = Q_INFESTQ_LOTE1.asstring) then begin
                 MessageDlg('Lote 2 igual ao Lote 1!',mtInformation,[mbOk], 0);
                 DBG_INFI.SelectedField := Q_INFESTQ_LOTE2;
                 abort ;
             end      ;


           Q_AUX.close;
           Q_AUX.Sql.Clear;
           Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) from estoque  ');
           Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
           Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
           Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
           Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
           Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
           Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
           Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + ''''+ ')');
           Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
           Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE2.asstring + '''');
           Q_AUX.Sql.Add('group by ESTQ_LOTE ');
           Q_AUX.Sql.Add('order by ESTQ_LOTE ');
           Q_AUX.open ;

           If  (Q_AUX.fieldbyname('ESTQ_LOTE').asstring = '') then begin
               MessageDlg('Lote inexistente !',mtInformation,[mbOk], 0);
               DBG_INFI.SelectedField := Q_INFESTQ_LOTE2;
               abort ;
           end      ;

            If (Q_INFESTQ_LOTE2_QTDE.asstring =  '') then begin
               MessageDlg('Lote 2 em Branco !',mtInformation,[mbOk], 0);
               DBG_INFI.SelectedField := Q_INFESTQ_LOTE2;
               abort ;
           end   ;
    end ;


    IF  Q_INFESTQ_LOTE2_QTDE.asstring <> '' then begin
          Q_AUX.close;
          Q_AUX.Sql.Clear;
          Q_AUX.Sql.Add('Select ESTQ_LOTE,SUM(ESTQ_qtde) as QTDE from estoque  ');
          Q_AUX.Sql.Add('where  ESTQ_DT_ENTRADA IS NOT NULL  ');
          Q_AUX.Sql.Add('and    ESTQ_DT_ENTRADA <> ' + '''' + '' + '''');
          Q_AUX.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
          Q_AUX.Sql.Add('and    ESTQ_LOTE  <> ' + '''' + '' + '''');
          Q_AUX.Sql.Add('and   (MANI_ID is NULL or MANI_ID = ' + '''' + '' + '''' + ')');
          Q_AUX.Sql.Add('and    AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FOS.CDSCTTPAR_ID.asstring) ;
          Q_AUX.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + ''''+ ')');
          Q_AUX.Sql.Add('and    PRO_ID = ' + Q_INFPRO_ID.asstring ) ;
          Q_AUX.Sql.Add('and    ESTQ_LOTE = ' + '''' + Q_INFESTQ_LOTE2.asstring + '''');
          Q_AUX.Sql.Add('group by ESTQ_LOTE ');
          Q_AUX.Sql.Add('order by ESTQ_LOTE ');
          Q_AUX.open ;

           If  (Q_AUX.fieldbyname('QTDE').asfloat < Q_INFESTQ_LOTE2_QTDE.asfloat) or
               (Q_INFESTQ_LOTE2_QTDE.asfloat > Q_INFINF_QTDE.asfloat) or
               ((Q_INFESTQ_LOTE2_QTDE.asfloat + Q_INFESTQ_LOTE1_QTDE.asfloat) <> Q_INFINF_QTDE.asfloat) then begin
               MessageDlg('Qtde. não disponível p/ o Lote ou Somatória(Lote1 + Lote2) diferente do total do item  ',mtInformation,[mbOk], 0);
               DBG_INFI.SelectedField := Q_INFESTQ_LOTE2_QTDE;
               abort ;
           end      ;
    end ;

    If Q_NFNFI_EMIT_CLI.asstring <> '' then begin
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select CLIN_LOTE  from ClienteNBF ' ) ;
         Q_AUX.Sql.Add( ' where CLIN_ID = ' + Q_NFNFI_EMIT_CLI.asstring);
         Q_AUX.open ;

         IF (Q_AUX.fieldbyname('CLIN_LOTE').asstring = 'S')  and
            (Q_NFTDOC_ID.asstring = '1' ) Then begin
             If ((Q_INFESTQ_LOTE2_QTDE.asfloat + Q_INFESTQ_LOTE1_QTDE.asfloat) <> Q_INFINF_QTDE.asfloat) then begin
                 MessageDlg('Qtde. não disponível p/ o Lote ou Somatória(Lote1 + Lote2) diferente do total do item  ',mtInformation,[mbOk], 0);
                 DBG_INFI.SelectedField := Q_INFESTQ_LOTE2_QTDE;
                 abort ;
             end      ;
         end ;
    end ;

   ///////



    If (Q_INFINF_AIPI.asstring = '') then begin
        MessageDlg('% Ipi é campo de Preechimento obrigatório !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFINF_AIPI;
        abort ;
    end ;

    If (Q_INFINF_AICM.asstring = '') then begin
        MessageDlg('% ICM é campo de Preechimento obrigatório !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFINF_AICM;
        abort ;
    end ;


    IF (Q_INFINF_PUNI.asfloat <= 0) or (Q_INFINF_PUNI.asstring = '')  then begin
       MessageDlg('Preço unitário deve ser superior a zero !',mtWarning,[mbok],0);
       TabbedNotebook1.pageindex := 1   ;
       DBG_INFI.SelectedField := Q_INFINF_PUNI;
       abort ;
    end ;

    IF (Q_INFINF_TOTA.asfloat <= 0) or (Q_INFINF_TOTA.asstring = '')  then begin
       MessageDlg('Valor Total deve ser superior a zero !',mtWarning,[mbok],0);
       TabbedNotebook1.pageindex := 1   ;
       DBG_INFI.SelectedField := Q_INFINF_PUNI;
       abort ;
    end ;




end;

procedure TFNF.DBMemo2Enter(Sender: TObject);
begin
   (Sender as TDBmemo).Color := Claqua;
   Fnf.KeyPreview:=false;
end;

procedure TFNF.DBMemo2Exit(Sender: TObject);
begin
     (Sender as TDBmemo).Color := Clwindow;
     Fnf.KeyPreview:=true;
end;

procedure TFNF.SpeedButton5Click(Sender: TObject);
begin

   Q_AUX.close;
   Q_AUX.SQL.clear ;
   Q_AUX.SQL.add ('Select count(*) as NFRS from NF');
   Q_AUX.SQL.add ('where NFI_CODI_ORIGINOUNFRS = ' + Q_NFNFI_CODI.asstring) ;
   Q_AUX.open ;

   IF Q_AUX.fieldbyname('NFRS').asinteger > 0  then begin
       MessageDlg('Já existe NF por cta. e ordem de Terceiro, para esta NF de Saída !',mtInformation,[mbOk], 0);
       abort ;
   end ;


   if MessageDlg('Confirma Geração da Nota Fiscal de Remessa por Conta e Ordem de Terceiros ?'
     ,mtConfirmation,
     [mbYes, mbNo], 0) = mrYES then  begin

     Q_PAR.Open;

        Q_aux.close;
        Q_aux.Sql.Clear;
        Q_aux.Sql.Add('SELECT b.*  FROM NF_ITENS A,PRODUTO B') ;
        Q_aux.Sql.Add('WHERE A.PRO_ID = B.PRO_ID') ;
        Q_aux.Sql.Add('and B.PRO_REDUZICMS > ' + inttostr(0)) ;
        Q_aux.Sql.Add('and NFI_CODI = ' + Q_NFNFI_CODI.asstring );
        Q_aux.open ;

             If Q_aux.recordcount > 0 then begin

                 try
                  Begin
                     STP_NFRCOT.ParamByName('@NFI_CODI').Value  := Q_NFNFI_CODI.asstring ;

                        Q_aux2.close;
                        Q_aux2.Sql.Clear;
                        Q_aux2.Sql.Add('SELECT * FROM FATURAMENTO') ;
                        //Q_aux2.Sql.Add('WHERE CFA_RICM = ' + Funcoes.Converte(floattostr(Q_AUX.fieldbyname('PRO_REDUZICMS').asfloat) ,',','.')  ) ;
                        //Q_aux2.Sql.Add('and TDOC_ID = ' + inttostr(15)) ;
                        Q_aux2.Sql.Add('WHERE TDOC_ID = ' + inttostr(15)) ;

                        //IF Q_NFNFI_DEST_UF_SIGLA.asstring <> 'SP' then
                        IF Q_NFNFI_DEST_UF_SIGLA.asstring <> Q_PARPAR_UF_SIGLA.AsString then
                           Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '6949' + '''' )
                        else
                           Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '5949' + '''' ) ;
                        Q_aux2.open ;

                        Q_AUX.close;
                        Q_AUX.Sql.Clear;
                        Q_AUX.Sql.Add(' Select CLIN_ID from  PARAMETRO ') ;
                        Q_AUX.open ;


                        STP_NFRCOT.ParamByName('@CFA_ID').Value  :=Q_AUX2.fieldbyname('CFA_ID').asinteger ;
                        STP_NFRCOT.ParamByName('@CLIN_ID').Value  :=Q_AUX.fieldbyname('CLIN_ID').asinteger ;
                        STP_NFRCOT.Execproc;

                        STP_NF.ParamByName('@NF').Value    :=  STP_NFRCOT.ParamByName('@NFI_CODINOVO').Value ;
                        STP_NF.ParamByName('@CFO').Value       := Q_AUX2.fieldbyname('CFA_ID').asinteger   ;
                        STP_NF.ParamByName('@CLIN_ID').Value    := Q_AUX.fieldbyname('CLIN_ID').asinteger  ;
                        STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
                        STP_NF.Execproc;


                             End
                    except
                      on e : Exception do
                       begin
                         MessageDlg('Geração da Nota Fiscal de Remessa por Conta e Ordem de Terceiros, com erro !'+#13+e.Message,mtInformation,[mbOk], 0);
                         abort;
                       end;
                     end;
                       MessageDlg(' Nota Fiscal de Remessa por Conta e Ordem de Terceiros foi gerada com sucesso! ',mtInformation,[mbOk], 0);
             
             end else begin
               { Q_aux2.close;
                Q_aux2.Sql.Clear;
                Q_aux2.Sql.Add('SELECT * FROM FATURAMENTO') ;
                Q_aux2.Sql.Add('WHERE CFA_RICM = ' + inttostr(0));
                Q_aux2.Sql.Add('and  TDOC_ID = ' + inttostr(15)) ;

                IF Q_NFNFI_DEST_UF_SIGLA.asstring <> 'SP' then
                   Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '6949' + '''' )
                 else
                   Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '5949' + '''' ) ;
                Q_aux2.open ;

                Q_aux2.open ;

                Q_AUX.close;
                Q_AUX.Sql.Clear;
                Q_AUX.Sql.Add(' Select CLIN_ID from  PARAMETRO ') ;
                Q_AUX.open ;


                STP_NFRCOT.ParamByName('@CFA_ID').Value  :=Q_AUX2.fieldbyname('CFA_ID').asinteger ;
                STP_NFRCOT.ParamByName('@CLIN_ID').Value  :=Q_AUX.fieldbyname('CLIN_ID').asinteger ;
                STP_NFRCOT.Execproc;

                STP_NF.ParamByName('@NF').Value    :=  STP_NFRCOT.ParamByName('@NFI_CODINOVO').Value ;
                STP_NF.ParamByName('@CFO').Value       := Q_AUX2.fieldbyname('CFA_ID').asinteger   ;
                STP_NF.ParamByName('@CLIN_ID').Value    := Q_AUX.fieldbyname('CLIN_ID').asinteger  ;
                STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
                STP_NF.Execproc;    }

                Q_FAT60.open ;
                TabbedNotebook1.enabled := false ;
                Panel2.enabled := false;
                Panel11.visible := true;
                Panel11.left := 119;
                Panel11.top := 193;

             end ;
   end ;
end;
procedure TFNF.wwDBComboBox1Enter(Sender: TObject);
begin
   (Sender as TwwDBcombobox).Color := Claqua ;
end;

procedure TFNF.wwDBComboBox1Exit(Sender: TObject);
begin
    (Sender as TwwDBcombobox).Color := Clwindow  ;

    IF wwDBComboBox1.itemindex = 0 then
        wwDBEdit14.enabled := false
    else
        wwDBEdit14.enabled := true ;

end;

procedure TFNF.wwDBLookupCombo16Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFNF.wwDBLookupCombo16Exit(Sender: TObject);
begin
   IF wwDBLookupCombo16.text <> '' then
      Q_NFNFI_TRAN.asstring := Q_TRANS2TRANS_RAZA.asstring  ;

  (Sender as TwwDBLookupCombo).Color := Clwindow  ;


end;

procedure TFNF.SpeedButton1Click(Sender: TObject);
Const Brancos = '                                                                                                                                                                             ' ;
var
    STRSTRING : string ;
    F         :  TextFile ;
    CONTLINHA : integer ;
    CONTLINHA2 : integer ;

    TOTLINHA : integer ;
    TOTLINHA3 : integer ;
    NOVONUMERO : string ;
    CODNOTA : integer ;
///posicionar o formulario continuo na pos. 9
begin
          If MessageDlg('Confirma a Impressão desta Nota Fiscal?',MtConfirmation,[MbYes,
            MbNo],0)=MrNO Then abort ;

         ////Assignfile(F,'LPT1');
         Assignfile(F,'NF.txt');
         ////Assignfile(F,'\\lenice\EpsonFX');
         ////Assignfile(F,'\\elisangela\EpsonFX-2180');
         Rewrite(F);




         CODNOTA := Q_NFNFI_CODI.asinteger ;

         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add(' SELECT ULT_NF from PARAMETRO ') ;
         Q_AUX.open;

         NOVONUMERO :=  inttostr(Q_AUX.fieldbyname('ULT_NF').asinteger + 1) ;


         Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' UPDATE PARAMETRO SET  ULT_NF = '  + '''' + NOVONUMERO + ''''  );
         Q_aux.ExecSql;


         Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' UPDATE NF SET  NFI_NUMERO = '  + '''' + NOVONUMERO + ''''  );
         Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring) ;
         Q_aux.ExecSql;






         Writeln(F,'',#27#48);
         ///Writeln(F,'');
         StrString := copy(Brancos,1,119) + NOVONUMERO ;
         StrString := MUDALETR(StrString ) ;
         ///writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);

         //Writeln(F,'');
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);

         StrString := copy(Brancos,1,96) + 'XX' ;//Nat.da Operação
         StrString := MUDALETR(StrString ) ;
         //writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);

         ////writeln(F,StrString,#27#50);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);;
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);

         //Writeln(F,'',#27#48);
         StrString := copy(Brancos,1,1) + copy(Q_FATCFA_DCFO.asstring,1,38) + copy(BRANCOS,1,38-length (Trim(Q_FATCFA_DCFO.asstring))) +
                      copy(Brancos,1,8) + copy(Q_FATCFA_CODI.asstring,1,1) + '.' + copy(Q_FATCFA_CODI.asstring,2,3)  +
                      copy(Brancos,1,2) + trim(Q_NFNFI_DEST_INSCRG.asstring) + copy(BRANCOS,1,20-length (Trim(Q_NFNFI_DEST_INSCRG.asstring)));

         StrString := MUDALETR(StrString ) ;
         ///writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);



         //IF (TIPO = 14) then begin
             Q_NFNFI_DEST_CGC.EditMask := '99.999.999/9999-99;0;_' ;
             StrString := copy(Brancos,1,1) + copy(Q_NFNFI_DEST_RAZA.asstring,1,50) + copy(BRANCOS,1,50-length (Trim(Q_NFNFI_DEST_RAZA.asstring))) +
                          copy(Brancos,1,34) + Trim(Q_NFNFI_DEST_CGC.DisplayText) +
                          copy(BRANCOS,1,15-length (Trim(Q_NFNFI_DEST_CGC.DisplayText))) +
                          copy(Brancos,1,18) + formatdatetime('DD/MM/YYYY', Q_NFNFI_DEMI.asdatetime)   ;
             StrString := MUDALETR(StrString ) ;
             ///writeln(F,StrString,#27#48);
             writeln(F,StrString,#27#48);
         //end ;
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);

         //IF (TIPO = 14) then begin
            StrString := copy(Brancos,1,1) + Trim(Q_NFNFI_DEST_ENDERECO.asstring) +
                      copy(BRANCOS,1,35  - length (Trim(Q_NFNFI_DEST_ENDERECO.asstring))) +

                      copy(Brancos,1,1) + Trim(Q_NFNFI_DEST_COMPL.asstring) +
                      copy(BRANCOS,1,10 - length (Trim(Q_NFNFI_DEST_COMPL.asstring))) +

                      copy(Brancos,1,10) + Trim(Q_NFNFI_DEST_BAIRRO.asstring) +
                      copy(BRANCOS,1,20 - length (Trim(Q_NFNFI_DEST_BAIRRO.asstring)))+

                      copy(Brancos,1,7) + copy(Trim(Q_NFNFI_DEST_CEP.asstring),1,5) + '-' +
                      copy(Trim(Q_NFNFI_DEST_CEP.asstring),6,3) ;

                      StrString := MUDALETR(StrString ) ;
                      //writeln(F,StrString,#27#48);
                      writeln(F,StrString,#27#48);
                      Writeln(F,'',#27#48);
                      //Writeln(F,'');

                      ///Writeln(F,'',#27#48);

                      {Q_AUX.close ;
                      Q_AUX.Sql.Clear ;
                      Q_AUX.Sql.Add(' Select B.MUN_NOME from MUNICIPIO B,PARAMETRO C ') ;
                      Q_AUX.Sql.Add(' where B.MUN_ID  = ' + Q_NFMUN_ID.asstring  ) ;
                      Q_AUX.Sql.Add(' and B.MUN_ID = C.MUN_ID ') ;
                      Q_AUX.Open ;}

                      Q_AUX.close ;
                      Q_AUX.Sql.Clear ;
                      Q_AUX.Sql.Add(' Select MUN_NOME from MUNICIPIO  ') ;
                      Q_AUX.Sql.Add(' where MUN_ID  = ' + Q_NFMUN_ID.asstring  ) ;
                      Q_AUX.Open ;

                      StrString := copy(Brancos,1,1) + Trim(Q_AUX.fieldbyname('MUN_NOME').asstring) +
                                 copy(BRANCOS,1,40  - length (Trim(Q_AUX.fieldbyname('MUN_NOME').asstring))) +
                                 copy(Brancos,1,13) + Trim(Q_NFNFI_DEST_TEL.asstring) +
                                 copy(BRANCOS,1,11  - length (Trim(Q_NFNFI_DEST_TEL.asstring))) +
                                 copy(Brancos,1,13) + Trim(Q_NFNFI_DEST_UF_SIGLA.asstring) +
                                 copy(BRANCOS,1,2  - length (Trim(Q_NFNFI_DEST_UF_SIGLA.asstring))) +
                                 copy(Brancos,1,5) + Trim(Q_NFNFI_DEST_INSCRG.asstring) +
                                 copy(BRANCOS,1,15  - length (Trim(Q_NFNFI_DEST_INSCRG.asstring))) ;

                      StrString := MUDALETR(StrString ) ;
                      ///writeln(F,StrString,#27#48);
                      writeln(F,StrString,#27#48);

         ///end ;
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);

         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add(' Select * from NF_ITENS ') ;
         Q_AUX.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring  ) ;
         Q_AUX.Open ;

         CONTLINHA := 0 ;
         while not (Q_AUX.eof) do
         begin
              CONTLINHA := CONTLINHA + 1 ;
              StrString := copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_COD').asstring),1,8) +
                           copy(BRANCOS,1,8-length (Trim( Q_AUX.fieldbyname('PRO_COD').asstring))) +
                           copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_DESC').asstring),1,60) +
                           copy(BRANCOS,1,60-length (Trim(Q_AUX.fieldbyname('PRO_DESC').asstring))) +
                           copy(Brancos,1,18) + Format('%10s',[FormatFloat('########,##0.000',Q_AUX.fieldbyname('INF_QTDE').asfloat)]) +
                           copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('INF_PUNI').asfloat)]) +
                           copy(Brancos,1,6)  + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('INF_TOTA').asfloat)]) +
                           copy(Brancos,1,1)  + Format('%6s',[FormatFloat('####,##0.00',Q_AUX.fieldbyname('INF_AICM').asfloat)]);


              StrString := MUDALETR(StrString ) ;
              //writeln(F,StrString,#27#48);
              writeln(F,StrString,#27#48);

             Q_AUX.next ;
         end ;

         CONTLINHA2 := 29 ;
         TOTLINHA := CONTLINHA2 - CONTLINHA ;
         if TOTLINHA <> 0 then begin
             TOTLINHA3 := 0 ;
             while not (TOTLINHA3 = TOTLINHA ) do begin
                   TOTLINHA3 := TOTLINHA3 + 1 ;
                   writeln(F,'',#27#48);
             end ;
         end;
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);

         StrString := copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_BICM.asfloat)]) +
                      copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VICM.asfloat)]) +
                      copy(Brancos,1,62) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VMER.asfloat)]) ;


         StrString := MUDALETR(StrString ) ;
         ///writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         writeln(F,'',#27#48);

         StrString := copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VFRE.asfloat)]) +
                      copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VSEG.asfloat)]) +
                      copy(Brancos,1,14) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VDES.asfloat)]) +
                      copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VIPI.asfloat)])  +
                      copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_TOTA.asfloat)]) ;

         StrString := MUDALETR(StrString) ;
         //writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);

         StrString := copy(Brancos,1,10) + copy(Q_NFNFI_QTDEUV.asstring,1,5) + copy(BRANCOS,1,5-length (Trim(Q_NFNFI_QTDEUV.asstring))) +
                      copy(Brancos,1,6) +  'VOLUME(s)' +
                      //copy(Brancos,1,84) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_PBRU.asfloat)]) +
                      //copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_pliq.asfloat)]) ;
                      copy(Brancos,1,54) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_PBRU.asfloat)]) +
                      copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_pliq.asfloat)]) ;




         StrString := MUDALETR(StrString) ;
         //writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);

         StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
         //writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
         //writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);

         writeln(F,'',#27#48);
         writeln(F,'',#27#48);

         StrString := Q_NFNFI_DISCRIM.asstring  ;
         ///writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);

         writeln(F,'',#27#48);
         //writeln(F,'') ;
         //writeln(F,'') ;

         StrString := copy(Brancos,1,120) + Q_NFNFI_NUMERO.asstring ;
         StrString := MUDALETR(StrString) ;
         //writeln(F,StrString,#27#48);
         writeln(F,StrString,#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         Writeln(F,'',#27#48);
         //Writeln(F,'');
         //Writeln(F,'');
         //Writeln(F,'');
         //Writeln             (F,'');

         closefile(f) ;


         Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' UPDATE NF SET  NFI_STATUS = '  + '''' + 'E' + ''''  );
         Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring) ;
         Q_aux.ExecSql;


         Q_NF.close;
         Q_NF.open ;
         Q_NF.locate('NFI_CODI',CODNOTA,[]);
end;

function TFnf.MUDALETR(LETRA: string): string;
var
  NOVALETRA         : string;
  s                 : string;
  M_DataLEN, i      : Integer;
begin
  NOVALETRA := '';
  M_DataLEN := Length(LETRA);
  for i := 1 to M_DataLEN do
  begin
    if T_Acen.FindKey([Ord(LETRA[i])]) then
      s := T_Acen.FieldByName('ACE_NOVO').AsString
    else
      s := LETRA[i];
    NOVALETRA := NOVALETRA + s;
  end;
  Result := NOVALETRA;
end;

procedure TFNF.Q_NFBeforeInsert(DataSet: TDataSet);
begin

   IF   Q_NFNFI_CODI.asstring  <> '' then begin
        IF Q_NFNFI_TOTA.asfloat = 0 then begin
            MessageDlg('Nota Fiscal sem valor total !',mtWarning,[mbok],0);
            abort ;
        end ;
    end ;

    TabbedNotebook1.pageindex := 0 ;


end;

procedure TFNF.SpeedButton4Click(Sender: TObject);
begin
       Q_NF55.open ;
       wwSearchDialog1.execute ;
       Q_NF.locate('NFI_CODI',Q_NF55NFI_CODI.asstring,[]);
       Q_NF55.close ;
end;

procedure TFNF.BitBtn5Click(Sender: TObject);
begin
      TabbedNotebook1.enabled := true ;
      Panel2.enabled := true;
      Panel11.visible := false;
      Q_FAT60.close  ;
end;

procedure TFNF.BitBtn4Click(Sender: TObject);
begin

         IF wwDBLookupCombo11.text <> '' then begin
            Q_AUX.close;
            Q_AUX.Sql.Clear;
            Q_AUX.Sql.Add(' Select CLIN_ID from  PARAMETRO ') ;
            Q_AUX.open ;

            STP_NFRCOT.ParamByName('@NFI_CODI').Value  := Q_NFNFI_CODI.asstring ;
            STP_NFRCOT.ParamByName('@CFA_ID').Value  :=Q_FAT60CFA_ID.asinteger ;
            STP_NFRCOT.ParamByName('@CLIN_ID').Value  :=Q_AUX.fieldbyname('CLIN_ID').asinteger ;
            STP_NFRCOT.Execproc;

            STP_NF.ParamByName('@NF').Value    :=  STP_NFRCOT.ParamByName('@NFI_CODINOVO').Value ;
            STP_NF.ParamByName('@CFO').Value       := Q_FAT60CFA_ID.asinteger   ;
            STP_NF.ParamByName('@CLIN_ID').Value    := Q_AUX.fieldbyname('CLIN_ID').asinteger  ;
            STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
            STP_NF.Execproc;

            close ;
         end else begin
             MessageDlg('Escolha o CFOP! ',mtWarning,[mbok],0);
             wwDBLookupCombo11.setfocus ;
             abort ;
         end ;

end;

procedure TFNF.wwDBEdit16Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;


   If (wwDBLookupCombo7.visible = true)  then begin
       wwDBLookupCombo7.setfocus ;
       //abort ;
   end ELse begin
       If (wwDBLookupCombo5.visible = true) and
          (Panel1.enabled = true) then begin
           wwDBLookupCombo5.setfocus ;
           //abort ;
       end ELse begin
           If (wwDBLookupCombo2.visible = true) and
             (Panel1.enabled = true)then begin
               wwDBLookupCombo2.setfocus ;
               ///abort;
           end else begin
               If (wwDBLookupCombo9.visible = true) and
                  (Panel1.enabled = true)then begin
                   wwDBLookupCombo9.setfocus ;
                   //abort ;
               end else begin
                    If (wwDBLookupCombo6.visible = true) and
                       (Panel1.enabled = true) then begin
                       wwDBLookupCombo6.setfocus ;
                       //abort ;
                   end else begin
                        If (wwDBLookupCombo4.visible = true) and
                            (Panel1.enabled = true)then begin
                           wwDBLookupCombo4.setfocus ;
                           //abort ;
                       end else begin
                              If (wwDBEdit4.visible = true) and
                                 (Panel1.enabled = true)then begin
                                   wwDBEdit4.setfocus ;
                                   //abort ;
                               end else
                                   If (Panel1.enabled = true)then  wwDBEdit5.setfocus ;
                       end ;
                   end ;
               end ;
           end ;
       end ;
   end ;
   ////wwDBEdit5.setfocus ;
   abort;



end;

procedure TFNF.wwDBEdit16Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;

end;

procedure TFNF.ds1DataChange(Sender: TObject; Field: TField);
begin
        LB.Caption := Q_CLIFdestCLIF_RAZA.Value;
end;

procedure TFNF.wwDBLookupCombo6Change(Sender: TObject);
begin
   //wwDBLookupCombo6.Selected.Text := 'CLIF_CGCCPF	15	CLIF_CGCCPF	F';

  // wwDBLookupCombo6.Selected.Text := 'CNPJCPF	15	CNPJCPF	F';

end;

end .



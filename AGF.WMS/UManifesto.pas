unit UManifesto;

interface                                                                       
                                                                                                   
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, DBCtrls, Buttons, StdCtrls,
  ComCtrls, Tabnotbk, wwdbedit, Mask, Wwdotdot, Wwdbcomb, wwdblook, Db,
  DBTables, Wwdatsrc, Wwquery, wwstorep, wwDialog, wwidlg, RzButton, ADODB;

type
    TFManifesto = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Q_MANIF: TwwQuery;
    DS_MANIF: TwwDataSource;
    Q_MANIFMANI_ID: TAutoIncField;
    Q_MANIFMANI_TIPOCARGA: TStringField;
    Q_MANIFMANI_PESO: TFloatField;
    Q_MANIFMANI_QTDEPALLET: TIntegerField;
    Q_MANIFMANI_VOLUME: TFloatField;
    Q_MANIFTRANS_ID: TIntegerField;
    Q_MANIFMOT_ID: TIntegerField;
    Q_MANIFVEIC_ID: TIntegerField;
    Q_MANIFMANI_DATA: TDateTimeField;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_TRMOT: TwwQuery;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_NF: TwwQuery;
    DS_NF: TwwDataSource;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFCLIN_RAZA: TStringField;
    Q_AUX: TwwQuery;
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Panel5: TPanel;
    DBText2: TDBText;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    DS_RMP: TwwDataSource;
    Q_RMP: TwwQuery;
    Q_RMPMRP_ID: TAutoIncField;
    Q_RMPMANI_ID: TIntegerField;
    Q_RMPPRO_ID: TIntegerField;
    Q_RMPMRP_VOLUME: TFloatField;
    Q_RMPMRP_PESO: TFloatField;
    Q_RMPMRP_QTDEPALLET: TIntegerField;
    Q_RMPPRO_COD: TStringField;
    Q_RMPPRO_DESC: TStringField;
    Label9: TLabel;
    DBText10: TDBText;
    Label61: TLabel;
    DBText3: TDBText;
    Q_CLIF: TwwQuery;
    Q_CLIN: TwwQuery;
    Q_CEP: TwwQuery;
    UPD_MANIF: TUpdateSQL;
    Q_UF1: TwwQuery;
    Q_UF1UF_NOME: TStringField;
    Q_UF1UF_SIGLA: TStringField;
    Q_UF1UF_ALIQUOTA: TFloatField;
    Q_UF2: TwwQuery;
    Q_UF2UF_NOME: TStringField;
    Q_UF2UF_SIGLA: TStringField;
    Q_UF2UF_ALIQUOTA: TFloatField;
    Q_NFMANI_ORDEM: TIntegerField;
    GRID: TwwDBGrid;
    Q_ESTQ: TwwQuery;
    Q_ESTQPROcod: TStringField;
    Q_ESTQPROdesc: TStringField;
    Q_ESTQUVENdesc: TStringField;
    Q_ESTQAreaDESC: TStringField;
    Q_ESTQPOSdesc: TStringField;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQUVEN_ID: TIntegerField;
    DS_ESTQ: TwwDataSource;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_PROD2: TwwQuery;
    Q_PROD2PRO_COD: TStringField;
    DS_ESTQ2: TwwDataSource;
    Q_POS2: TwwQuery;
    Q_POS2POS_COD: TStringField;
    Q_POS2AR_ID: TIntegerField;
    Q_POS2POS_UTILIZADO: TStringField;
    Q_POS2POS_ID: TAutoIncField;
    Q_AREAux: TwwQuery;
    Q_AREAuxAR_ID: TAutoIncField;
    Q_AREAuxAR_NOME: TStringField;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_ESTQ2: TwwQuery;
    Q_PAR: TwwQuery;
    Q_PARAR_ID_OPER: TIntegerField;
    STP_ROMSAI: TwwStoredProc;
    Q_PROD2PRO_ID: TAutoIncField;
    Q_PROD2PRO_DESC: TStringField;
    Q_CLIFCLIF_ID: TAutoIncField;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLIFCLIF_PESSOA: TStringField;
    Q_CLIFCLIF_NOME: TStringField;
    Q_CLIFCLIF_CGCCPF: TStringField;
    Q_CLIFCLIF_INSCRG: TStringField;
    Q_CLIFCLIF_ENDERECO: TStringField;
    Q_CLIFCLIF_ENDERECO_COMPL: TStringField;
    Q_CLIFCLIF_ENDERECO_BAIRRO: TStringField;
    Q_CLIFCLIF_MUNICIPIO: TStringField;
    Q_CLIFCLIF_MUNICIPIO2: TStringField;
    Q_CLIFUF_SIGLA: TStringField;
    Q_CLIFCLIF_CEP: TStringField;
    Q_CLIFCLIF_TEL1: TStringField;
    Q_CLIFCLIF_TEL2: TStringField;
    Q_CLIFCLIF_FAX: TStringField;
    Q_CLIFCLIF_EMAIL: TStringField;
    Q_CLIFCLIF_CONTATO: TStringField;
    Q_CLIFMUN_ID: TIntegerField;
    Q_CLIFCLIF_CARGAPALLET: TStringField;
    Q_CLINCLIN_PESSOA: TStringField;
    Q_CLINCLIN_NOME: TStringField;
    Q_CLINCLIN_CGCCPF: TStringField;
    Q_CLINCLIN_INSCRG: TStringField;
    Q_CLINCLIN_ENDERECO: TStringField;
    Q_CLINCLIN_ENDERECO_COMPL: TStringField;
    Q_CLINCLIN_ENDERECO_BAIRRO: TStringField;
    Q_CLINCLIN_MUNICIPIO: TStringField;
    Q_CLINUF_SIGLA: TStringField;
    Q_CLINCLIN_CEP: TStringField;
    Q_CLINCLIN_TEL1: TStringField;
    Q_CLINCLIN_TEL2: TStringField;
    Q_CLINCLIN_FAX: TStringField;
    Q_CLINCLIN_EMAIL: TStringField;
    Q_CLINCON_CODI: TStringField;
    Q_CLINCLIN_CONTRATO: TStringField;
    Q_CLINCLIN_UTIL_COD: TStringField;
    Q_CLINMUN_ID: TIntegerField;
    ComboPROD: TwwDBLookupCombo;
    UPD_ESTQ2: TUpdateSQL;
    Q_AREA: TwwQuery;
    Q_AREAAR_NOME: TStringField;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    DS_AREA: TwwDataSource;
    Q_AREA_2: TwwQuery;
    Q_AREA_2AR_ID: TAutoIncField;
    Q_AREA_2AR_EMPILHA_MAX: TIntegerField;
    Q_POS: TwwQuery;
    Q_POSAR_ID: TIntegerField;
    Q_POSPOS_UTILIZADO: TStringField;
    Q_POSPOS_ID: TAutoIncField;
    Q_AREA3: TwwQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    Q_POS3: TwwQuery;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    AutoIncField2: TAutoIncField;
    Panel4: TPanel;
    Label18: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;                                            
    DBText7: TDBText;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Q_MANIFPAR_ID: TIntegerField;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Q_NFNFI_CODI: TAutoIncField;
    BitBtn3: TBitBtn;
    STP_KARDEXSAIDA: TwwStoredProc;
    Q_ESTQPAR_ID: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_MANIFMANI_QTDEUV: TFloatField;
    Q_RMPMRP_QTDE: TFloatField;
    DBG_INFI: TwwDBGrid;
    DBLC_INF_PROD: TwwDBLookupCombo;
    Q_ESTQ2ESTQ_ID: TAutoIncField;
    Q_ESTQ2AR_ID: TIntegerField;
    Q_ESTQ2POS_ID: TIntegerField;
    Q_ESTQ2OS_ID_ORIG: TIntegerField;
    Q_ESTQ2PRO_ID: TIntegerField;
    Q_ESTQ2ESTQ_QTDE: TFloatField;
    Q_ESTQ2ESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQ2MANI_ID: TIntegerField;
    Q_ESTQ2ESTQ_PESO: TFloatField;
    Q_ESTQ2OS_ID_DEST: TIntegerField;
    Q_ESTQ2ESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQ2ESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQ2ROM_ID_ENT: TIntegerField;
    Q_ESTQ2ROM_ID_SAIDA: TIntegerField;
    Q_ESTQ2ROM_DTBATCH: TDateTimeField;
    Q_ESTQ2ROM_DTVENCTO: TDateTimeField;
    Q_ESTQ2ESTQ_LOTE: TStringField;
    Q_ESTQ2UVEN_ID: TIntegerField;
    Q_ESTQ2ESTQ_TAG: TIntegerField;
    Q_ESTQ2AR_ID_ANTERIOR: TIntegerField;
    Q_ESTQ2POS_ID_ANTERIOR: TIntegerField;
    Q_ESTQ2ESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQ2PAR_ID: TIntegerField;
    Q_ESTQ2GEROU_OPER_ROMSAIDA: TStringField;
    Q_ESTQ2AREANOME: TStringField;
    Q_ESTQ2POSCOD: TStringField;
    DS_PROD2: TwwDataSource;
    DS_UNIDVEND: TwwDataSource;
    Q_PROD: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Q_POSPOS_COD: TStringField;
    Q_PROD2UVEN_ID: TIntegerField;
    Label36: TLabel;
    Q_UNIDVEND2: TwwQuery;
    Q_UNIDVEND2UVEN_ID: TAutoIncField;
    Q_UNIDVEND2UVEN_NOME: TStringField;
    Q_ESTQ2MARCADOR: TStringField;
    wwDBEdit17: TwwDBEdit;
    Q_MANIFCONFIRMA: TStringField;
    RadioGroup4: TRadioGroup;
    Q_ESTQ2POS_COD: TStringField;
    Q_ESTQ2AR_NOME: TStringField;
    Q_MANIFNFI_TRANS: TStringField;
    Q_MANIFVEIC_ID_FRETE: TIntegerField;
    Q_MANIFREG_ID: TIntegerField;
    Q_VEIC2: TwwQuery;
    Q_VEIC2VEIC_ID: TAutoIncField;
    Q_VEIC2VEIC_NOME: TStringField;
    Q_REG: TwwQuery;
    DS_VEIC2: TwwDataSource;
    Q_REGFRET_ID: TAutoIncField;
    Q_REGVEIC_ID: TIntegerField;
    Q_REGREG_ID: TIntegerField;
    Q_REGFRET_VALOR: TFloatField;
    Q_REGFRET_VALOR_GRANEL: TFloatField;
    Q_REGREG_NOME: TStringField;
    wwDBGrid2: TwwDBGrid;
    DBText4: TDBText;
    Label46: TLabel;
    DS_NF55: TwwDataSource;
    UPD_NF55: TUpdateSQL;
    Q_NF55: TwwQuery;
    Q_NF55CLIN_RAZA: TStringField;
    Q_NF55NFI_DEST_RAZA: TStringField;
    Q_NF55NFI_ENTREGA: TStringField;
    Q_NF55NFI_DTENTREGA_FIM: TDateTimeField;
    Q_NF55NFI_COBRAR: TStringField;
    Q_NF55NFI_CODI: TAutoIncField;
    Q_NF55NFI_EMIT_CLi: TIntegerField;
    Q_NF55NFI_DEST_CLI: TIntegerField;
    wwDBComboBox2: TwwDBComboBox;
    wwDBComboBox3: TwwDBComboBox;
    SBT_VISU: TSpeedButton;
    Q_NFTEXTO_LIVRE: TMemoField;
    Label47: TLabel;
    Label48: TLabel;
    Q_MANIFMANI_VFRETEPAG: TFloatField;
    Label52: TLabel;
    DBText8: TDBText;
    STP_OCE: TwwStoredProc;
    Label53: TLabel;
    Q_OCE: TwwQuery;
    DS_OCE: TwwDataSource;
    Q_OCEORD_ID: TAutoIncField;
    Q_OCEOS_ID: TIntegerField;
    Q_OCEMANI_ID: TIntegerField;
    Q_OCETRANS_ID: TIntegerField;
    Q_OCEVEIC_ID: TIntegerField;
    Q_OCEVEIC_ID_RECEB: TIntegerField;
    Q_OCEREG_ID: TIntegerField;
    Q_OCEORD_PESO_TOTAL: TFloatField;
    Q_OCEORD_QTDE_PALLET: TFloatField;
    Q_OCEORD_VOLUME: TFloatField;
    Q_OCEORD_VALORTOTAL: TFloatField;
    Q_OCEORD_COLETA_ENTREGA: TStringField;
    Q_OCEORD_COL_ENDERECO: TStringField;
    Q_OCEORD_COL_ENDERECO_COMPL: TStringField;
    Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField;
    Q_OCEMUN_ID_COL: TIntegerField;
    Q_OCEORD_COL_MUNICIPIO: TStringField;
    Q_OCEUF_SIGLA_COL: TStringField;
    Q_OCEORD_COL_CEP: TStringField;
    Q_OCEORD_COL_TEL1: TStringField;
    Q_OCEORD_COL_TEL2: TStringField;
    Q_OCEORD_COL_FAX: TStringField;
    Q_OCEORD_COL_EMAIL: TStringField;
    Q_OCEORD_COL_CONTATO: TStringField;
    Q_OCEORD_ENT_ENDERECO: TStringField;
    Q_OCEORD_ENT_ENDERECO_COMPL: TStringField;
    Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField;
    Q_OCEMUN_ID_ENT: TIntegerField;
    Q_OCEORD_ENT_MUNICIPIO: TStringField;
    Q_OCEUF_SIGLA_ENT: TStringField;
    Q_OCEORD_ENT_CEP: TStringField;
    Q_OCEORD_ENT_TEL1: TStringField;
    Q_OCEORD_ENT_TEL2: TStringField;
    Q_OCEORD_ENT_FAX: TStringField;
    Q_OCEORD_ENT_EMAIL: TStringField;
    Q_OCEORD_ENT_CONTATO: TStringField;
    UPD_OCE: TUpdateSQL;
    wwDBLookupCombo12: TwwDBLookupCombo;
    wwDBLookupCombo13: TwwDBLookupCombo;
    Q_VEIC3: TwwQuery;
    Q_VEIC3VEIC_ID: TAutoIncField;
    Q_VEIC3VEIC_NOME: TStringField;
    Q_REG2: TwwQuery;
    DS_VEIC3: TwwDataSource;
    Q_REG2FRET_ID: TAutoIncField;
    Q_REG2VEIC_ID: TIntegerField;
    Q_REG2REG_ID: TIntegerField;
    Q_REG2FRET_VALOR: TFloatField;
    Q_REG2FRET_VALOR_GRANEL: TFloatField;
    Q_REG2REG_NOME: TStringField;
    Q_OCEVEICNOME: TStringField;
    Q_OCEREGNOME: TStringField;
    Panel13: TPanel;
    Panel3: TPanel;
    Label37: TLabel;
    wwDBEdit19: TwwDBEdit;
    Label21: TLabel;
    Label3: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label44: TLabel;
    Label45: TLabel;
    wwDBLookupCombo11: TwwDBLookupCombo;
    wwDBEdit20: TwwDBEdit;
    Label51: TLabel;
    GroupBox1: TGroupBox;
    Label31: TLabel;
    Label16: TLabel;
    Label26: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    Label43: TLabel;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    DS_MUNI: TwwDataSource;
    Q_MUNI2: TwwQuery;
    DS_MUNI2: TwwDataSource;
    Q_MUNI2MUN_ID: TAutoIncField;
    Q_MUNI2DIPAM: TStringField;
    Q_MUNI2MUN_NOME: TStringField;
    Q_MUNI2UF_SIGLA: TStringField;
    Q_MUNI2REG_ID: TIntegerField;
    Q_MANIFMANI_ENT_COL: TStringField;
    Q_NF55MANI_ENT_COL: TStringField;
    wwDBComboBox4: TwwDBComboBox;
    SpeedButton6: TSpeedButton;
    Label7: TLabel;
    Q_MANIFCONFIRMA_MANI: TStringField;
    wwDBGrid3: TwwDBGrid;
    TabbedNotebook2: TTabbedNotebook;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    RadioGroup2: TRadioGroup;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo14: TwwDBLookupCombo;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label42: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label41: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    DBE_CLI_FEND: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    DBE_CLI_FFAX: TwwDBEdit;
    DBE_CLI_FTEL: TwwDBEdit;
    DBE_CLI_FEMA: TwwDBEdit;
    DBE_CLI_FTE2: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    RadioGroup1: TRadioGroup;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    DBE_CLI_FCEP: TwwDBEdit;
    wwDBLookupCombo15: TwwDBLookupCombo;
    DS_VEIC: TwwDataSource;
    Q_NFNFI_NUMERO: TStringField;
    Q_NF55NFI_NUMERO: TStringField;
    Q_NFNFI_DEST_ENDERECO: TStringField;
    Q_NFNFI_DEST_CEP: TStringField;
    Q_NFMUN_NOME: TStringField;
    Q_NFREG_NOME: TStringField;
    Q_NF55OS_ID: TIntegerField;
    Q_OS: TwwQuery;
    Q_OSOS_ID: TAutoIncField;
    Q_OSCLIN_ID: TIntegerField;
    Q_OSCTT_ID: TIntegerField;
    Q_OSTOS_ID: TIntegerField;
    Q_OSOS_DATA: TDateTimeField;
    Q_OSOS_USUARIO: TIntegerField;
    Q_OSOS_GEROU: TStringField;
    STP_REENTREGA: TwwStoredProc;
    STP_TPDO_TPOS_OS: TwwStoredProc;
    Q_CTT: TwwQuery;
    Q_CTTCTT_TERCEIRO: TStringField;
    Q_CTTCTT_ID: TAutoIncField;
    SpeedButton7: TSpeedButton;
    Q_MANIF2: TwwQuery;
    wwSearchDialog1: TwwSearchDialog;
    Q_MANIF2MANI_ID: TAutoIncField;
    Q_MANIF2MANI_DATA: TDateTimeField;
    Panel7: TPanel;
    Panel6: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    RadioGroup3: TRadioGroup;
    Label49: TLabel;
    Label50: TLabel;
    Q_AUX2: TwwQuery;
    Q_OCEORD_TPCARGA: TStringField;
    wwDBComboBox5: TwwDBComboBox;
    Q_OCEORD_QTDE_UV: TFloatField;
    Q_CLIF2: TwwQuery;
    Q_CLIF2CLIF_ID: TAutoIncField;
    Q_CLIF2CLIF_RAZA: TStringField;
    Q_OCECLIF_ID: TIntegerField;
    Q_OCECLIFraza: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    SpeedButton8: TSpeedButton;
    STP_DELETAMANIFESTO: TwwStoredProc;
    Q_AUX3: TwwQuery;
    wwDBLookupCombo16: TwwDBLookupCombo;
    Q_TRANS2: TwwQuery;
    Q_TRANS2TRANS_ID: TAutoIncField;
    Q_TRANS2TRANS_FANTASIA: TStringField;
    Q_OCETRANS_ID_REDES: TIntegerField;
    Q_OCETRANSFANTASIA: TStringField;
    Q_OCEORD_REDESPACHO: TStringField;
    Q_TRANS2MUN_ID: TIntegerField;
    Label54: TLabel;
    Label55: TLabel;
    Q_NF55NFI_REDESPACHO: TStringField;
    STP_REENTREGADEVOLUCAO: TwwStoredProc;
    GroupBox4: TGroupBox;
    wwDBEdit10: TwwDBEdit;
    Q_MANIFMANI_OBS: TStringField;
    Q_MANIF2COLUMN3: TStringField;
    Panel8: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label59: TLabel;
    wwDBLookupCombo17: TwwDBLookupCombo;
    BitBtn5: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid2IButton: TwwIButton;
    Q_NFReen: TwwQuery;
    DS_NFReen: TwwDataSource;
    Q_NFReenNFI_CODI: TAutoIncField;
    Q_NFReenNFI_NUMERO: TStringField;
    Q_NFReenTDOC_ID: TIntegerField;
    Q_NFReenNFI_EMIT_ORIG: TStringField;
    Q_NFReenNFI_EMIT_CLI: TIntegerField;
    Q_NFReenNFI_DEST_ORIG: TStringField;
    Q_NFReenNFI_DEST_CLI: TIntegerField;
    Q_NFReenNFI_DEST_NOME: TStringField;
    Q_NFReenNFI_DEST_RAZA: TStringField;
    Q_NFReenNFI_DEST_ENDERECO: TStringField;
    Q_NFReenNFI_DEST_COMPL: TStringField;
    Q_NFReenNFI_DEST_BAIRRO: TStringField;
    Q_NFReenNFI_DEST_UF_SIGLA: TStringField;
    Q_NFReenNFI_DEST_CEP: TStringField;
    Q_NFReenNFI_DEST_TEL: TStringField;
    Q_NFReenNFI_DEST_FAX: TStringField;
    Q_NFReenNFI_DEST_CGC: TStringField;
    Q_NFReenNFI_DEST_INSCRG: TStringField;
    Q_NFReenNFI_DEST_INSCTRB: TStringField;
    Q_NFReenNFI_DEST_PESS: TStringField;
    Q_NFReenNFI_VDES: TFloatField;
    Q_NFReenNFI_VFRE: TFloatField;
    Q_NFReenNFI_VSEG: TFloatField;
    Q_NFReenNFI_BIPI: TFloatField;
    Q_NFReenNFI_VIPI: TFloatField;
    Q_NFReenNFI_BICM: TFloatField;
    Q_NFReenNFI_VICM: TFloatField;
    Q_NFReenNFI_VMER: TFloatField;
    Q_NFReenNFI_TOTA: TFloatField;
    Q_NFReenNFI_DSAI: TDateTimeField;
    Q_NFReenNFI_HSAI: TDateTimeField;
    Q_NFReenNFI_TRAN: TStringField;
    Q_NFReenNFI_PLAC: TStringField;
    Q_NFReenNFI_UF_SIGLA: TStringField;
    Q_NFReenNFI_MARC: TStringField;
    Q_NFReenNFI_QTDE: TIntegerField;
    Q_NFReenNFI_ESPE: TStringField;
    Q_NFReenNFI_PLIQ: TFloatField;
    Q_NFReenNFI_PBRU: TFloatField;
    Q_NFReenNFI_VOL: TFloatField;
    Q_NFReenNFI_TFRE: TStringField;
    Q_NFReenNFI_DEMI: TDateTimeField;
    Q_NFReenCFA_ID: TIntegerField;
    Q_NFReenOS_ID: TIntegerField;
    Q_NFReenMUN_ID: TIntegerField;
    Q_NFReenNFI_MARCADOR: TStringField;
    Q_NFReenNFI_DTENTREGA: TDateTimeField;
    Q_NFReenMANI_ID: TIntegerField;
    Q_NFReenMANI_ORDEM: TIntegerField;
    Q_NFReenNFI_MOVESTQ: TStringField;
    Q_NFReenNFI_TRANS: TStringField;
    Q_NFReenTEXTO_LIVRE: TMemoField;
    Q_NFReenNFI_DTENTREGA_FIM: TDateTimeField;
    Q_NFReenNFI_ENTREGA: TStringField;
    Q_NFReenNFI_COBRAR: TStringField;
    Q_NFReenNFI_CLONE: TStringField;
    Q_NFReenNFI_QTDEPALLET: TIntegerField;
    Q_NFReenNFI_QTDEUV: TFloatField;
    Q_NFReenTPRO_ID: TIntegerField;
    Q_NFReenNFI_MARCADOR_NFRS: TStringField;
    Q_NFReenNFI_NFRS_REJEITADA: TStringField;
    Q_NFReenNFI_RETORNADA: TStringField;
    Q_NFReenNFI_GEROUNFE: TStringField;
    Q_NFReenNFI_REDESPACHO: TStringField;
    Q_NFReenORD_ID: TIntegerField;
    Q_NFReenTRANS_ID: TIntegerField;
    Q_NFReenNFI_PRESTSERV: TStringField;
    Q_NFReenNFI_FATURADA: TStringField;
    Q_NFReenNFI_DISCRIM: TStringField;
    Q_NFReenFAT_ID: TIntegerField;
    Q_NFReenNFI_MARCAREEN: TStringField;
    SpeedButton13: TSpeedButton;
    BitBtn4: TBitBtn;
    RadioGroup5: TRadioGroup;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    UPD_NFReen: TUpdateSQL;
    Q_OSTPCARGA: TStringField;
    STP_NF: TwwStoredProc;
    Q_AUX4: TwwQuery;
    qrAux: TwwQuery;
    qrAux2: TwwQuery;
    qrUpdateEstoque: TwwQuery;
    pnlErroRomaneio: TPanel;
    pnl1: TPanel;
    StringGrid1: TStringGrid;
    btn1: TBitBtn;
    qrManif_produto: TwwQuery;
    qrManif_produtoPRO_ID: TIntegerField;
    qrManif_produtoQTDE: TFloatField;
    qrManifEstoque: TwwQuery;
    qrManifEstoquepro_id: TIntegerField;
    qrManifEstoqueqtderetira: TFloatField;
    qrManif_produtoPRO_COD: TStringField;
    Button1: TButton;
    SpeedButton14: TSpeedButton;
    GroupBox5: TGroupBox;
    lbQtdeSolicitada: TLabel;
    GroupBox6: TGroupBox;
    lbSelecionada: TLabel;
    Label60: TLabel;
    btnGeraReentrega: TBitBtn;
    btn2: TSpeedButton;
    btnApagaOCE: TRzBitBtn;
    Q_OCEORD_STATUS: TStringField;
    qrApagaOE: TADOQuery;
    Q_MANIFMANI_KM_IDA: TIntegerField;
    Q_MANIFMANI_KM_TOTAL: TIntegerField;
    Label62: TLabel;
    wwDBEdit21: TwwDBEdit;
    Label63: TLabel;
    wwDBEdit22: TwwDBEdit;
    cboEDIOcorrem: TwwDBLookupCombo;
    qrEDi: TADOQuery;
    Q_NF55COD_EDI: TStringField;
    pnlLote: TPanel;
    SpeedButton15: TSpeedButton;
    SpeedButton17: TSpeedButton;
    GroupBox7: TGroupBox;
    edtLote: TEdit;
    SpeedButton16: TSpeedButton;
    GroupBox8: TGroupBox;
    SpeedButton18: TSpeedButton;
    edtVenc: TMaskEdit;
    Label64: TLabel;
    wwDBEdit23: TwwDBEdit;
    Q_MANIFMOT_EQUIP: TStringField;
    Q_TRMOTMOT_EQUIP: TStringField;
    btn: TButton;
    Button2: TButton;
    STP_GERA_CONHECIMENTO_REENTREGANF: TADOStoredProc;
    qrPgtoFrete: TADOQuery;
    qrPgtoFreteID: TAutoIncField;
    qrPgtoFreteMANI_ID: TIntegerField;
    qrPgtoFreteLANC_MANUAL: TIntegerField;
    qrPgtoFreteTRANS_ID: TIntegerField;
    qrPgtoFreteDATA: TDateTimeField;
    qrPgtoFreteREG_ID: TIntegerField;
    qrPgtoFreteVLR_FRETE: TFloatField;
    qrPgtoFreteSTATUS: TStringField;
    qrPgtoFreteOBS: TStringField;
    qrPgtoFreteDATA_FECHAMENTO: TDateTimeField;
    qrPgtoFreteRECIBO: TStringField;
    qrPgtoFreteMOT_ID: TIntegerField;
    qrClinAux: TADOQuery;
    qrClinAuxCLIN_ID: TAutoIncField;
    qrClinAuxCLIN_PESSOA: TStringField;
    qrClinAuxCLIN_RAZA: TStringField;
    qrClinAuxCLIN_NOME: TStringField;
    qrClinAuxCLIN_CGCCPF: TStringField;
    qrClinAuxCLIN_INSCRG: TStringField;
    qrClinAuxCLIN_ENDERECO: TStringField;
    qrClinAuxCLIN_ENDERECO_COMPL: TStringField;
    qrClinAuxCLIN_ENDERECO_BAIRRO: TStringField;
    qrClinAuxCLIN_MUNICIPIO: TStringField;
    qrClinAuxUF_SIGLA: TStringField;
    qrClinAuxCLIN_CEP: TStringField;
    qrClinAuxCLIN_TEL1: TStringField;
    qrClinAuxCLIN_TEL2: TStringField;
    qrClinAuxCLIN_FAX: TStringField;
    qrClinAuxCLIN_EMAIL: TStringField;
    qrClinAuxCON_CODI: TStringField;
    qrClinAuxCLIN_CONTRATO: TStringField;
    qrClinAuxCLIN_UTIL_COD: TStringField;
    qrClinAuxMUN_ID: TIntegerField;
    qrClinAuxCLIN_WEB: TStringField;
    qrClinAuxCLIN_ENDC: TStringField;
    qrClinAuxCLIN_END_COMPLC: TStringField;
    qrClinAuxCLIN_END_BAIRC: TStringField;
    qrClinAuxCLIN_MUNICC: TStringField;
    qrClinAuxUF_SIGLAC: TStringField;
    qrClinAuxCLIN_CEPC: TStringField;
    qrClinAuxCLIN_TELC: TStringField;
    qrClinAuxCLIN_FAXC: TStringField;
    qrClinAuxCLIN_EMAILC: TStringField;
    qrClinAuxMUN_IDC: TIntegerField;
    qrClinAuxCLIN_TIPOSALDO: TStringField;
    qrClinAuxCLIN_VLRSALDO: TFloatField;
    qrClinAuxCLIN_TPMERC: TStringField;
    qrClinAuxCLIN_LOTE: TStringField;
    qrClinAuxCLIN_ISS: TFloatField;
    qrClinAuxCLIN_DESCONTO: TFloatField;
    qrClinAuxRemanejaSN: TStringField;
    qrClinAuxIBGE_ID: TIntegerField;
    qrClinAuxCLIN_LOGRADOURO: TStringField;
    qrClinAuxCLIN_NUMERO: TStringField;
    qrClinAuxCLIN_ISENCAO: TStringField;
    qrClinAuxCLIN_COBRAFRETEDEV: TStringField;
    qrClinAuxCLIN_PAGAFRETEDEV: TStringField;
    qrClinAuxCLIN_FRETEADICIONAL: TFloatField;
    dsRecebedor: TDataSource;
    qrRecebedor: TADOQuery;
    qrRecebedorTRANS_CNPJ: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    AutoIncField3: TAutoIncField;
    wwDBLookupCombo18: TwwDBLookupCombo;
    Label65: TLabel;
    Q_MANIFCLIN_ID: TIntegerField;
    Q_MANIFCTT_ID: TIntegerField;
    Q_MANIFVEIC_ID_COBRA: TIntegerField;
    Q_MANIFREG_ID_COBRA: TIntegerField;
    Q_MANIFCLI_RECEBEDOR: TIntegerField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure wwDBEdit15Enter(Sender: TObject);
    procedure wwDBEdit15Exit(Sender: TObject);
    procedure Q_MANIFAfterPost(DataSet: TDataSet);
    procedure Q_MANIFAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Q_MANIFBeforeDelete(DataSet: TDataSet);
    procedure RadioGroup2Click(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBLookupCombo9Enter(Sender: TObject);
    procedure wwDBLookupCombo9Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure wwDBLookupCombo8Enter(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit18Enter(Sender: TObject);
    procedure DBE_CLI_FMUNEnter(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure DBE_CLI_FFAXEnter(Sender: TObject);
    procedure DBE_CLI_FTE2Enter(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure wwDBEdit18Exit(Sender: TObject);
    procedure DBE_CLI_FMUNExit(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure DBE_CLI_FFAXExit(Sender: TObject);
    procedure DBE_CLI_FTE2Exit(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure Q_ESTQAfterPost(DataSet: TDataSet);
    procedure Q_ESTQAfterDelete(DataSet: TDataSet);
    procedure Q_ESTQAfterCancel(DataSet: TDataSet);
    procedure Q_ESTQBeforeInsert(DataSet: TDataSet);
    procedure ComboPRODCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ComboPRODExit(Sender: TObject);
    procedure Q_ESTQBeforeDelete(DataSet: TDataSet);
    procedure Q_ESTQNewRecord(DataSet: TDataSet);
    procedure GRIDDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Q_ESTQ2AfterPost(DataSet: TDataSet);
    procedure Q_ESTQ2BeforePost(DataSet: TDataSet);
    procedure DS_ESTQ2DataChange(Sender: TObject; Field: TField);
    procedure Q_ESTQ2BeforeEdit(DataSet: TDataSet);
    procedure Q_ESTQ2AfterCancel(DataSet: TDataSet);
    procedure Q_ESTQ2NewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DS_ESTQDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBEdit17DblClick(Sender: TObject);
    procedure Q_MANIFNewRecord(DataSet: TDataSet);
    procedure RadioGroup4Click(Sender: TObject);
    procedure DBG_RAATDblClick(Sender: TObject);
    procedure DS_MANIFDataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBLookupCombo11Enter(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBLookupCombo11Exit(Sender: TObject);
    procedure DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBEdit19Enter(Sender: TObject);
    procedure wwDBEdit19Exit(Sender: TObject);
    procedure wwDBEdit20Enter(Sender: TObject);
    procedure wwDBEdit20Exit(Sender: TObject);
    procedure Q_MANIFBeforePost(DataSet: TDataSet);
    procedure Q_NF55AfterPost(DataSet: TDataSet);
    procedure DS_NF55DataChange(Sender: TObject; Field: TField);
    procedure SBT_VISUClick(Sender: TObject);
    procedure Q_OCEAfterPost(DataSet: TDataSet);
    procedure Q_OCEBeforePost(DataSet: TDataSet);
    procedure wwDBLookupCombo15Enter(Sender: TObject);
    procedure wwDBLookupCombo15Exit(Sender: TObject);
    procedure wwDBLookupCombo14Enter(Sender: TObject);
    procedure wwDBLookupCombo14Exit(Sender: TObject);
    procedure DS_OCEDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DS_NFDataChange(Sender: TObject; Field: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure wwDBLookupCombo17CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);

    procedure wwDBLookupCombo17Exit(Sender: TObject);
    procedure Q_NFReenAfterPost(DataSet: TDataSet);
    procedure Q_NF55BeforePost(DataSet: TDataSet);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBG_INFICalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnEtiquetaManiClick(Sender: TObject);
    procedure btnGeraReentregaClick(Sender: TObject);
    procedure Q_MANIFBeforeInsert(DataSet: TDataSet);
    procedure btnApagaOCEClick(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   
  private
    PROCEDURE VERIFICA_NOTA_ROMANEIO;
    function AlteraManifesto : Boolean;
  public
    { Public declarations }
  end;

var
  FManifesto: TFManifesto;
  CLOSEUP : string ;
  AREA    : String ;
  POSICAO : String ;
  AREANEW    : String ;
  MANIFESTONF : string   ;
  OUTROS : string ;
  RETIRAORIG : string ;
  RETIRAX2 : Double;
  fretira : Double;
  codigoProduto : string;
implementation
uses USenha, UAbTabelas,Umenu, UGeraMAnifesto, URelROMSAI, URelManifResumoPROD,
 URelManifesto, URelManifResumoNF,uNF, USeleManifesto, UConsultaNF,
  UConsManifesto, UConsultaProduto, UfrmEtiquetaManifesto ;
{$R *.DFM}

procedure TFManifesto.SpeedButton3Click(Sender: TObject);
begin

 { If (ULTIMO = 'S') then begin
      Q_AUX.close;
      Q_AUX.Sql.Clear;
      Q_AUX.Sql.Add('DELETE from  MANIFESTOGERA');
      Q_AUX.ExecSql;
  end ;    }
   IF Q_MANIFMANI_ID.asstring <> '' then begin
         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add(' select count(B.OS_ID) as qtde   from NF A,OS B ') ;
         Q_AUX.Sql.Add(' where ') ;
         Q_AUX.Sql.Add(' A.OS_ID = B.OS_ID and    ') ;
         Q_AUX.Sql.Add(' B.TOS_ID <> 5 and ') ;
         Q_AUX.Sql.Add(' A.NFI_CLONE <> ' + '''' + 'S' + '''');
         Q_AUX.Sql.Add(' and A.MANI_ID = ' + Q_MANIFMANI_ID.asstring );
         Q_AUX.open;

         IF (Q_AUX.fieldbyname('qtde').asinteger > 0)  then begin

               IF  (Q_MANIFCONFIRMA.asstring <> 'S')then  begin
                   if MessageDlg('Romaneio de Saída não foi confirmado! Deseja sair nessas condições ? '
                             ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then
                      abort  ;
               end ;
         end ; 
   end ;
      
  ULTIMO := '' ;
  PESQUISAMANI := '' ;
  PESQMANI := '' ;
  close ;

end;

procedure TFManifesto.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;

  IF Q_MANIFVEIC_ID.asstring <> '' then begin
        Q_TRANS.close ;
        Q_TRANS.Sql.Clear ;
        Q_TRANS.Sql.Add('select A.TRANS_ID,A.TRANS_FANTASIA from ');
        Q_TRANS.Sql.Add('TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B ');
        Q_TRANS.Sql.Add('where A.TRANS_ID = B.TRANS_ID  ');
        Q_TRANS.Sql.Add('and   A.TRANS_FLAG = ' + '''' + 'S' + '''' );
        Q_TRANS.Sql.Add('and   B.VEIC_ID = ' + Q_MANIFVEIC_ID.asstring ) ;
        Q_TRANS.Sql.Add('GROUP by  A.TRANS_ID,A.TRANS_FANTASIa order by A.TRANS_FANTASIA');
        Q_TRANS.Open ;
  end ; 

  If wwDBLookupCombo1.text <> '' then
    wwDBLookupCombo1.text := Q_VEICVEIC_NOME.asstring   ;

  


end;

procedure TFManifesto.wwDBComboBox1Enter(Sender: TObject);
begin
  (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFManifesto.wwDBComboBox1Exit(Sender: TObject);
begin
  (Sender as TwwDBComboBox).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit12Enter(Sender: TObject);
begin                                        
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo2Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;


   {  Q_TRANS.close ;
  Q_TRANS.Sql.Clear ;
  Q_TRANS.Sql.Add('select A.TRANS_ID,A.TRANS_FANTASIA from ');
  Q_TRANS.Sql.Add('TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B ');
  Q_TRANS.Sql.Add('where A.TRANS_ID = B.TRANS_ID  ');
  Q_TRANS.Sql.Add('and   A.TRANS_FLAG = ' + '''' + 'S' + '''' );
  Q_TRANS.Sql.Add('and   B.VEIC_ID = ' + Q_VEICVEIC_ID.asstring ) ;
  Q_TRANS.Sql.Add('and   B.VEIC_ID = ' +  Q_MANIFVEIC_ID.asstring);
  Q_TRANS.Sql.Add('GROUP by  A.TRANS_ID,A.TRANS_FANTASIa ');
  Q_TRANS.Open ; }
end;

procedure TFManifesto.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;

   If wwDBLookupCombo2.text <> '' then
      wwDBLookupCombo2.text := Q_TRANSTRANS_FANTASIA.asstring   ;

   IF Q_MANIFTRANS_ID.asstring <> '' then begin
        Q_TRMOT.close ;
        Q_TRMOT.Sql.Clear ;
        Q_TRMOT.Sql.Add(' select MOT_ID,MOT_NOME,TRANS_ID, MOT_EQUIP from TRANSPORTADORA_MOTORISTA') ;
        Q_TRMOT.Sql.Add(' where TRANS_ID = ' +  Q_MANIFTRANS_ID.asstring  ) ;
        //////Q_TRMOT.Sql.Add(' and  MOT_ID = ' + Q_MANIFMOT_ID.asstring ) ;
        Q_TRMOT.Open ;
   end ; 

end;

procedure TFManifesto.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;

   If wwDBLookupCombo4.text <> '' then
    wwDBLookupCombo4.text := Q_TRMOTMOT_NOME.asstring   ;
    Q_MANIFMOT_EQUIP.AsString := Q_TRMOTMOT_EQUIP.AsString;
end;

procedure TFManifesto.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit6Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFManifesto.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit14Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFManifesto.wwDBEdit14Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit15Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFManifesto.wwDBEdit15Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end ;


procedure TFManifesto.Q_MANIFAfterPost(DataSet: TDataSet);
var
STRMANI : string ;
begin
   STRMANI := Q_MANIFMANI_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_MANIF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_MANIF.close ;
   Q_MANIF.Open ;

   if STRMANI = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(mani_id) as Numero from Manifesto ' ) ;
     Q_AUX.open ;
     STRMANI := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_MANIF.locate('mani_id',STRMANI,[])    ;
end;



procedure TFManifesto.Q_MANIFAfterDelete(DataSet: TDataSet);
var
STRMANI : string ;
begin
   STRMANI := Q_MANIFMANI_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_MANIF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_MANIF.close ;
   Q_MANIF.Open ;

   If (STRMANI <> '') then
       Q_MANIF.locate('MANI_ID',STRMANI,[])  ;

   Q_NF.close ;
   Q_NF.open ;

end;

procedure TFManifesto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFManifesto.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 19;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin

                    IF NOVO_MANIFESTO = 0 then
                    begin
                        IF ( PESQUISAMANI = '*' )  then begin
                           FAbTabelas.Gauge1.Progress            := 1;
                           Q_MANIF.close ;
                           Q_MANIF.Sql.Clear ;
                           Q_MANIF.Sql.Add( ' select  MANI_OBs,MANI_ID,MANI_TIPOCARGA,MANI_PESO,MANI_QTDEPALLET, ');
                           Q_MANIF.Sql.Add( '                    MANI_VOLUME,MANI_QTDEUV,TRANS_ID,MOT_ID,VEIC_ID, ');
                           Q_MANIF.Sql.Add( '                    MANI_DATA,PAR_ID,CONFIRMA,NFI_TRANS,   ');
                           Q_MANIF.Sql.Add( '                    VEIC_ID_FRETE,REG_ID,MANI_ENT_COL,MANI_VFRETEPAG,CONFIRMA_MANI, ');
                           Q_MANIF.Sql.Add( '                    CLIN_ID,CTT_ID,VEIC_ID_COBRA,REG_ID_COBRA,FRETE_NEGOCIA, ');
                           Q_MANIF.Sql.Add( '                   CLIF_ID, MANI_KM_IDA,MANI_KM_TOTAL, MOT_EQUIP, CLI_RECEBEDOR from Manifesto ' ) ;
                           Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'E' + '''');
                           Q_MANIF.Sql.Add( ' and MANI_ID = ' + FConsultaNF.Q_CONSULMANI_ID.asstring ) ;
                           Q_MANIF.Sql.Add( ' ORDER BY MANI_ID  ');
                          // Q_MANIF.open ;
                        END ELSE BEGIN
                             IF (PESQMANI = '*')  then begin
                                 FAbTabelas.Gauge1.Progress            := 1;
                                 Q_MANIF.close ;
                                 Q_MANIF.Sql.Clear ;
                                 Q_MANIF.Sql.Add( ' select MANI_OBs,MANI_ID,MANI_TIPOCARGA,MANI_PESO,MANI_QTDEPALLET, ');
                                 Q_MANIF.Sql.Add( '                    MANI_VOLUME,MANI_QTDEUV,TRANS_ID,MOT_ID,VEIC_ID, ');
                                 Q_MANIF.Sql.Add( '                    MANI_DATA,PAR_ID,CONFIRMA,NFI_TRANS,   ');
                                 Q_MANIF.Sql.Add( '                    VEIC_ID_FRETE,REG_ID,MANI_ENT_COL,MANI_VFRETEPAG,CONFIRMA_MANI, ');
                                 Q_MANIF.Sql.Add( '                    CLIN_ID,CTT_ID,VEIC_ID_COBRA,REG_ID_COBRA,FRETE_NEGOCIA, ');
                                 Q_MANIF.Sql.Add( '                   CLIF_ID , MANI_KM_IDA,MANI_KM_TOTAL, MOT_EQUIP, CLI_RECEBEDOR from Manifesto ' ) ;
                                 Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'E' + '''');
                                 Q_MANIF.Sql.Add( ' and MANI_ID = ' + FConsMANIFESTO.Q_MANIFMANI_ID.asstring ) ;
                                 Q_MANIF.Sql.Add( ' ORDER BY MANI_ID  ');
                               //  Q_MANIF.open ;

                                 SpeedButton7.enabled := false;
                             END ELSE BEGIN
                                 FAbTabelas.Gauge1.Progress            := 1;
                                 Q_MANIF.close ;
                                 Q_MANIF.Sql.Clear ;
                                 Q_MANIF.Sql.Add( ' select MANI_OBs,MANI_ID,MANI_TIPOCARGA,MANI_PESO,MANI_QTDEPALLET, ');
                                 Q_MANIF.Sql.Add( '                    MANI_VOLUME,MANI_QTDEUV,TRANS_ID,MOT_ID,VEIC_ID, ');
                                 Q_MANIF.Sql.Add( '                    MANI_DATA,PAR_ID,CONFIRMA,NFI_TRANS,   ');
                                 Q_MANIF.Sql.Add( '                    VEIC_ID_FRETE,REG_ID,MANI_ENT_COL,MANI_VFRETEPAG,CONFIRMA_MANI, ');
                                 Q_MANIF.Sql.Add( '                    CLIN_ID,CTT_ID,VEIC_ID_COBRA,REG_ID_COBRA,FRETE_NEGOCIA, ');
                                 Q_MANIF.Sql.Add( '                   CLIF_ID, MANI_KM_IDA,MANI_KM_TOTAL, MOT_EQUIP, CLI_RECEBEDOR from Manifesto ' ) ;
                                 Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'E' + '''');
                                 Q_MANIF.Sql.Add( ' ORDER BY MANI_ID  ');
                                // Q_MANIF.open ;


                                 SpeedButton7.enabled := true;
                             END ;
                        END ;
                    end
                    ELSE  // NOVO_MANIFESTO
                    begin
                         if FSenha.Dtb_BaseDados.InTransaction then
                           FSenha.Dtb_BaseDados.Commit;

                         FAbTabelas.Gauge1.Progress            := 1;
                         Q_MANIF.close ;
                         Q_MANIF.Sql.Clear ;
                         Q_MANIF.Sql.Add( ' select MANI_OBs,MANI_ID,MANI_TIPOCARGA,MANI_PESO,MANI_QTDEPALLET, ');
                         Q_MANIF.Sql.Add( '                    MANI_VOLUME,MANI_QTDEUV,TRANS_ID,MOT_ID,VEIC_ID, ');
                         Q_MANIF.Sql.Add( '                    MANI_DATA,PAR_ID,CONFIRMA,NFI_TRANS,   ');
                         Q_MANIF.Sql.Add( '                    VEIC_ID_FRETE,REG_ID,MANI_ENT_COL,MANI_VFRETEPAG,CONFIRMA_MANI, ');
                         Q_MANIF.Sql.Add( '                    CLIN_ID,CTT_ID,VEIC_ID_COBRA,REG_ID_COBRA,FRETE_NEGOCIA, ');
                         Q_MANIF.Sql.Add( '                   CLIF_ID, MANI_KM_IDA,MANI_KM_TOTAL, MOT_EQUIP, CLI_RECEBEDOR from Manifesto (NOLOCK)' ) ;
                         Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'E' + '''');
                         Q_MANIF.Sql.Add( ' and MANI_ID = ' + IntToStr(NOVO_MANIFESTO) ) ;
                         Q_MANIF.Sql.Add( ' ORDER BY MANI_ID  ');
                      //   Q_MANIF.open ;
                    end;





                  if FSenha.Dtb_BaseDados.InTransaction then
                           FSenha.Dtb_BaseDados.Commit;

                  Q_AUX.close;
                  Q_AUX.sql.Clear;
                  Q_AUX.sql.Add('Delete from german where ch = ' + FMenu.SqlUsuariosCH.AsString);
                  Q_AUX.ExecSQL;

                  //PESQUISA DA CONSULTA DE PRODUTO
                  IF (PESQUISAMANI2 = '*')  then begin
                     FAbTabelas.Gauge1.Progress            := 1;
                     Q_MANIF.close ;
                     Q_MANIF.Sql.Clear ;
                     Q_MANIF.Sql.Add( ' select MANI_OBs,MANI_ID,MANI_TIPOCARGA,MANI_PESO,MANI_QTDEPALLET, ');
                     Q_MANIF.Sql.Add( '                    MANI_VOLUME,MANI_QTDEUV,TRANS_ID,MOT_ID,VEIC_ID, ');
                     Q_MANIF.Sql.Add( '                    MANI_DATA,PAR_ID,CONFIRMA,NFI_TRANS,   ');
                     Q_MANIF.Sql.Add( '                    VEIC_ID_FRETE,REG_ID,MANI_ENT_COL,MANI_VFRETEPAG,CONFIRMA_MANI, ');
                     Q_MANIF.Sql.Add( '                    CLIN_ID,CTT_ID,VEIC_ID_COBRA,REG_ID_COBRA,FRETE_NEGOCIA, ');
                     Q_MANIF.Sql.Add( '                   CLIF_ID, MANI_KM_IDA,MANI_KM_TOTAL, MOT_EQUIP, CLI_RECEBEDOR from Manifesto ' ) ;
                     Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'E' + '''');
                     Q_MANIF.Sql.Add( ' and MANI_ID = ' + FConsultaProduto.Q_CONSULMANI_ID.AsString ) ;
                     Q_MANIF.Sql.Add( ' ORDER BY MANI_ID  ');
                   //  Q_MANIF.open ;

                     SpeedButton7.enabled := false;
                END;






                     Q_MANIF.open ;
                     Q_MANIF.last ;
                     FAbTabelas.Gauge1.Progress            := 2;
                     Q_VEIC.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     Q_TRANS.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     Q_TRMOT.Open;
                     FAbTabelas.Gauge1.Progress            := 5;
                     Q_NF.Open;
                     FAbTabelas.Gauge1.Progress            := 6;
                     Q_RMP.Open;
                     FAbTabelas.Gauge1.Progress            := 7;
                     Q_CLIN.Open;
                     FAbTabelas.Gauge1.Progress            := 8;
                     Q_CLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 9;
                    // Q_UF1.Open;
                    // FAbTabelas.Gauge1.Progress            := 10;
                    // Q_UF2.Open;
                    // FAbTabelas.Gauge1.Progress            := 11;


                     {Q_VEIC2.Open;
                     FAbTabelas.Gauge1.Progress            := 12;
                     Q_REG.Open;
                     FAbTabelas.Gauge1.Progress            := 13;
                     Q_NF55.Open;
                     FAbTabelas.Gauge1.Progress            := 14;
                     Q_OCE.Open;
                     FAbTabelas.Gauge1.Progress            := 15;
                     Q_VEIC3.Open;
                     FAbTabelas.Gauge1.Progress            := 16;
                     Q_REG2.Open;
                     ///FAbTabelas.Gauge1.Progress            := 17;
                     ///Q_MUNI.Open;
                     ///FAbTabelas.Gauge1.Progress            := 18;
                     ///Q_MUNI2.Open;
                     FAbTabelas.Gauge1.Progress            := 19;
                     Q_CLIF2.Open;
                       }


                      //removida do onshow para teste 
                     Q_ESTQ.open ;
                   
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
    end  ;
end;

procedure TFManifesto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CLIF2.close ;
   Q_MANIF.close;
   Q_VEIC.close;
   Q_VEIC2.close;
   Q_REG.close;
   Q_TRANS.close;
   Q_TRMOT.close;
   Q_NF.close ;
   Q_RMP.close ;     
   Q_CEP.close;
   Q_UF1.close;
   Q_UF2.close ;
   Q_CLIN.close ;
   Q_CLIF.close ;
   Q_PROD.close ;
   Q_POS2.close ;
   Q_AREAux.close ;
   Q_UNIDVEND.close ;
   Q_UNIDVEND2.close ;
   Q_ESTQ2.close ;
   Q_ESTQ.close ;
   Q_PROD2.close  ;
   Q_NF55.close ;
   Q_AREA.close ;
   Q_TRANS2.close ;
   Q_AREA3.close ;
   Q_POS3.close ;
   Q_POs.close ;
   Q_REG2.close;
   Q_OCE.close ;
   Q_VEIC3.close ;
   Q_MUNI.close ;
   Q_MUNI2.close ;

   Q_CLINBF.close ;
   Q_NFReen.close ;
   action := cafree;
end;

procedure TFManifesto.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
       wwDBLookupCombo4.text := '' ;


end;

procedure TFManifesto.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   If (wwDBLookupCombo2.text = '') then begin
       MessageDlg('Transportadora é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
       wwDBLookupCombo2.SetFocus;
       wwDBLookupCombo4.text := '' ;
       abort ; 
   end ;

   Q_MANIFMOT_EQUIP.AsString := Q_TRMOTMOT_EQUIP.AsString;



end;

procedure TFManifesto.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;    
    Label1.width := 466 ;
    TabbedNotebook1.pageindex := 0 ;
   //// Q_ESTQ.open ; 
    Q_PROD.open ;
    Q_POS2.open ;
    Q_AREAux.open ;
    Q_UNIDVEND.open ;
    Q_UNIDVEND2.open ;
    Q_ESTQ2.open ;
    Q_PROD2.open ;
    Q_TRANS2.open ; 

    qrEDi.Open;

    qrRecebedor.Open;

    Q_VEIC2.Open;
    Q_REG.Open;
    Q_NF55.Open;
    Q_OCE.Open;
    Q_VEIC3.Open;
    Q_REG2.Open;
     ///FAbTabelas.Gauge1.Progress            := 17;
     ///Q_MUNI.Open;
     ///FAbTabelas.Gauge1.Progress            := 18;
     ///Q_MUNI2.Open;
     Q_CLIF2.Open;
     Q_CLINBF.open ;
     

    MANIFESTONF := '' ;

    {IF (ULTIMO = '') then begin
        IF (FSeleManifesto.RadioGroup1.itemindex = 0) then begin
            Panel13.visible := false   ;
             DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbpost,nbcancel];
             Panel3.left := 2 ;
             Panel3.width := 309 ;
             Label1.visible := true ;
             DBG_RAAT.visible := true ;
             Label1.visible := true ;
             Label47.visible := true ;
             Label48.visible := true ;
             Label43.visible := true ;
        end else begin
            Panel13.visible := true ;
            DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbpost,nbcancel];
            Panel3.left := 6 ;
            Panel3.width := 773 ;
            Label1.visible := false ;
            DBG_RAAT.visible := false ;
            Label1.visible := false ;
            Label47.visible := false ;
            Label48.visible := false ;
            Label43.visible := false ;
        end ;
    end else begin
        DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbpost,nbcancel];
        Panel3.left := 2 ;
        Panel3.width := 309 ;
        Label1.visible := true ;
        DBG_RAAT.visible := true ;
        Label1.visible := true ;
        Label47.visible := true ;
        Label48.visible := true ;
        Label43.visible := true ;
    end ;   }

    


end;

procedure TFManifesto.Q_MANIFBeforeDelete(DataSet: TDataSet);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////



       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('UPDATE NF set MANI_ID = null');
       Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.ExecSql;

       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add(' delete from MANIFESTO_RESUMOPRODUTO') ;
       Q_AUX.Sql.Add(' where MANi_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.ExecSql;
end;

procedure TFManifesto.RadioGroup2Click(Sender: TObject);
begin
     IF RadioGroup2.itemindex = 0 then
      wwDBLookupCombo7.visible := true
    else
      wwDBLookupCombo7.visible := false;

   IF RadioGroup2.itemindex = 1 then
      wwDBLookupCombo9.visible := true
    else
      wwDBLookupCombo9.visible := false;
end;

procedure TFManifesto.wwDBLookupCombo7Enter(Sender: TObject);
begin
 (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo7Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;

  If (wwDBLookupCombo7.text <> '') then  begin
      Q_OCE.edit;
      If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then

            else begin
                RadioGROUP2.itemindex := -1 ;
                wwDBLookupCombo7.visible := false;
                wwDBLookupCombo9.visible := false;
                ABORT ;
            end ;


      end ;


     Q_OCEORD_COL_ENDERECO.asstring  :=  Q_CLINCLIN_ENDERECO.asstring ;
     Q_OCEORD_COL_ENDERECO_COMPL.asstring := Q_CLINCLIN_ENDERECO_COMPL.asstring ;
     Q_OCEORD_COL_ENDERECO_BAIRRO.asstring := Q_CLINCLIN_ENDERECO_BAIRRO.asstring ;
     Q_OCEMUN_ID_COL.asstring :=  Q_CLINMUN_ID.asstring ;
     Q_OCEUF_SIGLA_COL.asstring :=  Q_CLINUF_SIGLA.asstring ;
     Q_OCEORD_COL_CEP.asstring :=  Q_CLINCLIN_CEP.asstring ;

     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit11.setfocus ;
  end ;



end;

procedure TFManifesto.wwDBEdit2Exit(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClWINDOW ;


  If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

          If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

             if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
               else ABORT ;
         end ;



         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit2.text + ''''  ) ;
         Q_CEP.Open ;

         Q_OCEORD_COL_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_OCEORD_COL_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;

         IF Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_OCEMUN_ID_COL.asinteger  := Q_MUNIMUN_ID.asinteger ;
             Q_OCEUF_SIGLA_COL.asstring := Q_MUNIUF_SIGLA.asstring ;
         end else begin
             Q_OCEMUN_ID_COL.asinteger  := 0 ;
             Q_OCEUF_SIGLA_COL.asstring := '0' ;
         end ;

         wwdbedit11.setfocus ;
  end ;

end;

procedure TFManifesto.wwDBLookupCombo9Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo9Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;

  If (wwDBLookupCombo9.text <> '') then  begin
      Q_OCE.edit;
      If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then

            else begin
                RadioGROUP2.itemindex := -1 ;
                wwDBLookupCombo7.visible := false;
                wwDBLookupCombo9.visible := false;
                ABORT ;
            end ;


      end ;


     Q_OCEORD_COL_ENDERECO.asstring  :=  Q_CLIFCLIF_ENDERECO.asstring ;
     Q_OCEORD_COL_ENDERECO_COMPL.asstring := Q_CLIFCLIF_ENDERECO_COMPL.asstring ;
     Q_OCEORD_COL_ENDERECO_BAIRRO.asstring := Q_CLIFCLIF_ENDERECO_BAIRRO.asstring ;
     Q_OCEMUN_ID_COL.asstring :=  Q_CLIFMUN_ID.asstring ;
     Q_OCEUF_SIGLA_COL.asstring :=  Q_CLIFUF_SIGLA.asstring ;
     Q_OCEORD_COL_CEP.asstring :=  Q_CLIFCLIF_CEP.asstring ;

     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit11.setfocus ;
  end ;
end;

procedure TFManifesto.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifesto.wwDBEdit11Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifesto.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit10Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo6Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFManifesto.wwDBEdit5Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit5Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit9Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit7Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit8Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit8Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBEdit13Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifesto.wwDBLookupCombo5Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo5Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;
  If (wwDBLookupCombo5.text <> '' )  then  begin
      Q_OCE.edit;
      If (Q_OCEORD_ENT_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then

            else begin
                RadioGROUP1.itemindex := -1 ;
                wwDBLookupCombo5.visible := false;
                wwDBLookupCombo8.visible := false;
                ABORT ;
            end ;


      end ;


     Q_OCEORD_ENT_ENDERECO.asstring  :=  Q_CLINCLIN_ENDERECO.asstring ;
     Q_OCEORD_ENT_ENDERECO_COMPL.asstring := Q_CLINCLIN_ENDERECO_COMPL.asstring ;
     Q_OCEORD_ENT_ENDERECO_BAIRRO.asstring := Q_CLINCLIN_ENDERECO_BAIRRO.asstring ;
     Q_OCEMUN_ID_ENT.asstring :=  Q_CLINMUN_ID.asstring ;
     Q_OCEUF_SIGLA_ENT.asstring :=  Q_CLINUF_SIGLA.asstring ;
     Q_OCEORD_ENT_CEP.asstring :=  Q_CLINCLIN_CEP.asstring ;

     RadioGROUP1.itemindex := -1 ;
     wwDBLookupCombo5.visible := false;
     wwDBLookupCombo8.visible := false;
     wwDBEdit16.setfocus ;
  end ;
end;

procedure TFManifesto.wwDBLookupCombo8Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;

 If (wwDBLookupCombo8.text <> '') then  begin
      Q_OCE.edit;
      If (Q_OCEORD_ENT_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then           
            else begin
                RadioGROUP1.itemindex := -1 ;
                wwDBLookupCombo5.visible := false;
                wwDBLookupCombo8.visible := false;
                ABORT ;
            end ;


      end ;

     Q_OCEORD_ENT_ENDERECO.asstring  :=  Q_CLIFCLIf_ENDERECO.asstring ;
     Q_OCEORD_ENT_ENDERECO_COMPL.asstring := Q_CLIFCLIf_ENDERECO_COMPL.asstring ;
     Q_OCEORD_ENT_ENDERECO_BAIRRO.asstring := Q_CLIFCLIf_ENDERECO_BAIRRO.asstring ;
     Q_OCEMUN_ID_ENT.asstring :=  Q_CLIFMUN_ID.asstring ;
     Q_OCEUF_SIGLA_ENT.asstring :=  Q_CLIFUF_SIGLA.asstring ;
     Q_OCEORD_ENT_CEP.asstring :=  Q_CLIFCLIf_CEP.asstring ;



     RadioGROUP1.itemindex := -1 ;
     wwDBLookupCombo5.visible := false;
     wwDBLookupCombo8.visible := false;
     wwDBEdit16.setfocus ;
 end ;
end;

procedure TFManifesto.wwDBLookupCombo8Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.RadioGroup1Click(Sender: TObject);
begin
   IF RadioGroup1.itemindex = 0 then
      wwDBLookupCombo5.visible := true
    else
      wwDBLookupCombo5.visible := false;

   IF RadioGroup1.itemindex = 1 then
      wwDBLookupCombo8.visible := true
    else
      wwDBLookupCombo8.visible := false;
end;

procedure TFManifesto.DBE_CLI_FCEPEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FENDEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit16Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit18Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FMUNEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBLC_DBE_FESTEnter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FFAXEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FTE2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FTELEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FEMAEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.DBE_CLI_FCEPExit(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClWINDOW ;


  If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

          If (Q_OCEORD_ENT_ENDERECO.asstring <> '') then begin

             if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
               else ABORT ;
         end ;



         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + DBE_CLI_FCEP.text + ''''  ) ;
         Q_CEP.Open ;



         Q_OCEORD_ENT_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_OCEORD_ENT_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;

         IF Q_MUNI2.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_OCEMUN_ID_ENT.asinteger  := Q_MUNI2MUN_ID.asinteger ;
             Q_OCEUF_SIGLA_ENT.asstring := Q_MUNI2UF_SIGLA.asstring ;
         end else begin
             Q_OCEMUN_ID_ENT.asinteger  := 0 ;
             Q_OCEUF_SIGLA_ENT.asstring := '0' ;
         end ;

         wwdbedit16.setfocus ;
  end ;

end;

procedure TFManifesto.DBE_CLI_FENDExit(Sender: TObject);
begin
       (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.wwDBEdit16Exit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.wwDBEdit18Exit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.DBE_CLI_FMUNExit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.DBLC_DBE_FESTExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClWINDOW ;
end;

procedure TFManifesto.DBE_CLI_FFAXExit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.DBE_CLI_FTE2Exit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.DBE_CLI_FTELExit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.DBE_CLI_FEMAExit(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifesto.TabbedNotebook1Click(Sender: TObject);
begin

   {If (TabbedNotebook1.pageindex <> 1) and



   end ;   }

   If (TabbedNotebook1.pageindex <> 1) and
      (TabbedNotebook1.pageindex <> 2) and
      (Q_MANIFNFI_TRANS.asstring <> 'N')then begin
       IF (wwDBLookupCombo1.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Veículo Transportador é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo1.setfocus ;
           abort ;
       end ;

       IF (wwDBLookupCombo2.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo2.setfocus ;
           abort ;
       end ;
   end ;


    If (TabbedNotebook1.pageindex = 0) then
       DBNavigator1.datasource := DS_MANIF ;

    If (TabbedNotebook1.pageindex = 4) then begin
       DBNavigator1.datasource := DS_OCE ;
          Q_OCE.edit ;
          Q_OCE.cancel ;



       TabbedNotebook2.pageindex := 0 ;
    end ;


    If (Q_MANIF.state = dsedit ) or (Q_MANIF.state = dsinsert )  then
         Q_MANIF.post;

    If (Panel13.visible = false) then begin

                If (TabbedNotebook1.pageindex = 3)  then  begin
                    DBNavigator1.datasource := DS_NF55 ;
                    DBNavigator1.VisibleButtons := [nbpost,nbcancel] ;
                end ;


                If (TabbedNotebook1.pageindex = 1) or
                   (TabbedNotebook1.pageindex = 0)  then
                    SpeedButton1.enabled := true
                 else SpeedButton1.enabled := false ;

                If (TabbedNotebook1.pageindex = 0) then
                   SpeedButton1.hint := 'Relatório de Manifesto de Carga' ;


                If (TabbedNotebook1.pageindex = 1)  then begin
                    DBNavigator1.datasource := DS_MANIF ;
                    SpeedButton1.hint := 'Relatório por Produtos ou NF' + 's';
                end else
                   DBNavigator1.enabled := true ;

                 If (TabbedNotebook1.pageindex <> 3) then
                     DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbpost,nbcancel];


                If (TabbedNotebook1.pageindex = 2)  then begin

                       Q_AUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add(' select count(B.OS_ID) as qtde   from NF A,OS B ') ;
                       Q_AUX.Sql.Add(' where ') ;
                       Q_AUX.Sql.Add(' A.OS_ID = B.OS_ID and    ') ;
                       Q_AUX.Sql.Add(' B.TOS_ID <> 5 and ') ;
                       Q_AUX.Sql.Add(' A.NFI_CLONE <> ' + '''' + 'S' + '''');
                       Q_AUX.Sql.Add(' and A.MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                       Q_AUX.open;

                       IF (Q_AUX.fieldbyname('qtde').asinteger > 0)  then begin
                                   BITBTN3.visible := true ;
                                   GRID.visible := true;
                                   Label58.visible := false ;
                                   SpeedButton2.visible := true;

                                   Q_AUX.close ;
                                   Q_AUX.Sql.Clear ;
                                   Q_AUX.Sql.Add('SELECT count(ESTQ_ID) AS XVALOR from ESTOQUE' ) ;
                                   Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
                                   Q_AUX.open  ;

                                   IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0) then begin
                                             {VERIFICAR ESTOQUE}
                                             Q_AUX3.close ;
                                             Q_AUX3.Sql.Clear ;
                                             Q_AUX3.Sql.Add('Select PRO_ID,round(MRP_QTDE, 2) as MRP_QTDE  from  MANIFESTO_RESUMOPRODUTO ') ;
                                             Q_AUX3.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
                                             Q_AUX3.Sql.Add(' and CLONE is null '  ) ;
                                             Q_AUX3.open  ;

                                             Q_AUX3.first;
                                             while not Q_AUX3.eof do begin

                                                 {verifica se existe em outra nota,
                                                  no mesmo manifesto, o mesmo item
                                                   como Croos Dking ou reentrega }
                                                 Q_AUX4.close ;
                                                 Q_AUX4.Sql.Clear ;
                                                 Q_AUX4.Sql.Add('select round(SUM(C.INF_QTDE),2) as QTDEELIMINAR from OS A,NF B,NF_ITENS C') ;
                                                 Q_AUX4.Sql.Add('WHERE ( A.TOS_ID = 5 OR B.NFI_CLONE = ' + '''' + 'S' + '''' + ')') ;
                                                 Q_AUX4.Sql.Add('AND A.OS_ID = B.OS_ID  ') ;
                                                 Q_AUX4.Sql.Add('AND C.NFI_CODI = B.NFI_CODI   ') ;
                                                 Q_AUX4.Sql.Add('AND B.MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
                                                 Q_AUX4.Sql.Add('AND C.PRO_ID  = ' + Q_AUX3.fieldbyname('PRO_ID').asstring  ) ;
                                                 Q_AUX4.open  ;

                                                 Q_AUX2.close ;
                                                 Q_AUX2.Sql.Clear ;
                                                 Q_AUX2.Sql.Add('SELECT C.PRO_ID,round(SUM(C.ESTQ_QTDE),2) as QTDE  ');
                                                 Q_AUX2.Sql.Add('FROM   ESTOQUE C ');
                                                 Q_AUX2.Sql.Add('where  C.ESTQ_DT_ENTRADA IS NOT NULL');
                                                 Q_AUX2.Sql.Add('and    C.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                                                 Q_AUX2.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                                                 Q_AUX2.Sql.Add('and   (C.MANI_ID is NULL or C.MANI_ID = ' + '''' + '' + '''' + ')');
                                                 Q_AUX2.Sql.Add('and    C.PRO_Id = ' + Q_AUX3.fieldbyname('PRO_ID').asstring  ) ;
                                                 Q_AUX2.Sql.Add('and    C.AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + Q_MANIFPAR_ID.asstring ) ;
                                                 Q_AUX2.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;

                                                 //add por miguel para ver o bloqueio da posição
                                                // Q_AUX2.SQL.Add('and (C.POS_ID IN (Select pos_id from AREA_POSICOES where STATUS = ''D'') or C.POS_ID is null)  ');

                                                 Q_AUX2.Sql.Add('Group  By C.PRO_ID ');
                                                 Q_AUX2.open  ;


                                                 If ( Q_AUX2.fieldbyname('QTDE').asfloat < (Q_AUX3.fieldbyname('MRP_QTDE').asfloat - Q_AUX4.fieldbyname('QTDEELIMINAR').asfloat)) then BEGIN
                                                    MessageDlg('Quantidade de UV insuficiente no Estoque, para todas as Notas Fiscais !',mtInformation,[mbOk], 0);
                                                    abort ;
                                                 end ;


                                                 Q_AUX3.next ;
                                             end ;
                                             {VERIFICAR ESTOQUE}


                                             

                                             {VERIFICAR ESTOQUE itens com lote }
                                             Q_AUX3.close ;
                                             Q_AUX3.Sql.Clear ;
                                             Q_AUX3.Sql.Add(' SELECT     A.PRO_ID,A.ESTQ_LOTE1, SUM(A.ESTQ_LOTE1_QTDE) as QTDELOTE1,');
                                             Q_AUX3.Sql.Add('            A.ESTQ_LOTE2, SUM(A.ESTQ_LOTE2_QTDE)  as QTDELOTE2');
                                             Q_AUX3.Sql.Add('            FROM  NF_ITENS A,NF B ');
                                             Q_AUX3.Sql.Add('            WHERE B.MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
                                             Q_AUX3.Sql.Add('            AND  A.NFI_CODI = B.NFI_CODI  ');
                                             Q_AUX3.Sql.Add('            and  ESTQ_LOTE1 is not null  ');
                                             Q_AUX3.Sql.Add('            group by A.PRO_ID,A.ESTQ_LOTE1 ,A.ESTQ_LOTE2 ');
                                             Q_AUX3.open  ;



                                             Q_AUX3.first;
                                             while not Q_AUX3.eof do begin

                                                         Q_AUX2.close ;
                                                         Q_AUX2.Sql.Clear ;
                                                         Q_AUX2.Sql.Add('SELECT C.PRO_ID,round(SUM(C.ESTQ_QTDE),2) as QTDE  ');
                                                         Q_AUX2.Sql.Add('FROM   ESTOQUE C ');
                                                         Q_AUX2.Sql.Add('where  C.ESTQ_DT_ENTRADA IS NOT NULL');
                                                         Q_AUX2.Sql.Add('and    C.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                                                         Q_AUX2.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                                                         Q_AUX2.Sql.Add('and   (C.MANI_ID is NULL or C.MANI_ID = ' + '''' + '' + '''' + ')');
                                                         Q_AUX2.Sql.Add('and    C.PRO_Id = ' + Q_AUX3.fieldbyname('PRO_ID').asstring  ) ;
                                                         Q_AUX2.Sql.Add('and    C.ESTQ_LOTE = ' + '''' + Q_AUX3.fieldbyname('ESTQ_LOTE1').asstring  + '''' ) ;
                                                         Q_AUX2.Sql.Add('and    C.AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + Q_MANIFPAR_ID.asstring ) ;
                                                         Q_AUX2.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                                                         Q_AUX2.Sql.Add('Group  By C.PRO_ID ');
                                                         Q_AUX2.open  ;

                                                         If ( Q_AUX2.fieldbyname('QTDE').asfloat < Q_AUX3.fieldbyname('QTDELOTE1').asfloat) then BEGIN
                                                            MessageDlg('Quantidade de UV insuficiente para o lote escolhido !',mtInformation,[mbOk], 0);
                                                            abort ;
                                                         end ;

                                                         IF Q_AUX3.fieldbyname('ESTQ_LOTE2').asstring <> '' then begin
                                                               Q_AUX2.close ;
                                                               Q_AUX2.Sql.Clear ;
                                                               Q_AUX2.Sql.Add('SELECT C.PRO_ID,round(SUM(C.ESTQ_QTDE),2) as QTDE  ');
                                                               Q_AUX2.Sql.Add('FROM   ESTOQUE C ');
                                                               Q_AUX2.Sql.Add('where  C.ESTQ_DT_ENTRADA IS NOT NULL');
                                                               Q_AUX2.Sql.Add('and    C.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                                                               Q_AUX2.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                                                               Q_AUX2.Sql.Add('and   (C.MANI_ID is NULL or C.MANI_ID = ' + '''' + '' + '''' + ')');
                                                               Q_AUX2.Sql.Add('and    C.PRO_Id = ' + Q_AUX3.fieldbyname('PRO_ID').asstring  ) ;
                                                               Q_AUX2.Sql.Add('and    C.ESTQ_LOTE = ' + '''' + Q_AUX3.fieldbyname('ESTQ_LOTE2').asstring  + '''' ) ;
                                                               Q_AUX2.Sql.Add('and    C.AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + Q_MANIFPAR_ID.asstring ) ;
                                                               Q_AUX2.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                                                               Q_AUX2.Sql.Add('Group  By C.PRO_ID ');
                                                               Q_AUX2.open  ;


                                                               If (Q_AUX2.fieldbyname('QTDE').asfloat < Q_AUX3.fieldbyname('QTDELOTE2').asfloat) then BEGIN
                                                                  MessageDlg('Quantidade de UV insuficiente para o lote escolhido !',mtInformation,[mbOk], 0);
                                                                  abort ;
                                                               end ;
                                                         end ;

                                                  Q_AUX3.next ;
                                             end ;
                                            {VERIFICAR ESTOQUE itens com lote}


                                           Q_PAR.open ;
                                       If (Q_PARAR_ID_OPER.asstring = '')  then begin
                                          MessageDlg('Área Operacional em Empresa é campo de preenchimento obrigatório !',mtInformation,[mbOk], 0);
                                          Q_PAR.close ;
                                          abort ;
                                       end ;
                                         If MessageDlg('Confirma geração do Romaneio de Saída ?',MtConfirmation,[MbYes,
                                            MbNo],0)=MrYes Then  begin
                                              try
                                               Begin
                                                 STP_ROMSAI.ParamByName('@MANID').Value   := Q_MANIFMANI_ID.asstring ;
                                                 STP_ROMSAI.ParamByName('@EMP').Value   := Q_MANIFPAR_ID.asstring ;
                                                 STP_ROMSAI.ParamByName('@CH').Value   :=    FMenu.SqlUsuariosCH.asstring ;
                                                 STP_ROMSAI.Execproc   ;
                                                 //ROTINA DE VERIFICAÇAO DE QUANTIDADES NO ROMANEIO
                                                 VERIFICA_NOTA_ROMANEIO;
                                                End
                                              except
                                                on e : EDatabaseError do
                                                begin
                                                 MessageDlg('Geração do Romaneio de Saída, com erro !' + #13 + e.Message,mtInformation,[mbOk], 0);
                                                 abort  ;
                                                end;
                                              end;

                                         end ;
                                        Q_ESTQ.close ;
                                        Q_ESTQ.open  ;
                                        Q_PAR.close ;

                                   end ;
                       end else begin
                            BITBTN3.visible := false ;
                            GRID.visible := false;
                            SpeedButton2.visible := false;
                            Label58.visible := true ;
                       end ;

                end ;
    end ;



    //ATIVA A BAIXA DE ESTOQUE DE QQ FORMA
    if Q_MANIFCONFIRMA_MANI.Value <> 'S' then
       SpeedButton6.Enabled := True;



end;

procedure TFManifesto.Q_ESTQAfterPost(DataSet: TDataSet);
//var
///STRESTQ : string ;
begin
  { STRESTQ := Q_ESTQESTQ_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ESTQ])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ESTQ.close ;
   Q_ESTQ.Open ;

   if strEstq = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(Estq_id) as Numero from estoque ' ) ;
     Q_AUX.open ;
     StrEstq := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_ESTQ.locate('ESTQ_ID',STRESTQ,[])    ;  }

 
     {Q_ESTQESTQ_TAG.readonly := true ;
     Q_ESTQESTQ_QTDE.readonly := true ;
     Q_ESTQESTQ_LOTE.readonly := true ;
     Q_ESTQROM_DTBATCH.readonly := true ;
     Q_ESTQROM_DTVENCTO.readonly := true ;

     ComboPROd.ShowButton := false ;
     ComboPROd.AUTODROPDOWN := false ;   }



end;

procedure TFManifesto.Q_ESTQAfterDelete(DataSet: TDataSet);
{var
STRESTQ : string ;}
begin
  { STRESTQ := Q_ESTQESTQ_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ESTQ])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_ESTQ.close ;
   Q_ESTQ.Open ;
   If (STRESTQ <> '') then Q_ESTQ.locate('ESTQ_ID',STRESTQ,[])    ;    }
end;

procedure TFManifesto.Q_ESTQAfterCancel(DataSet: TDataSet);
begin
     {Q_ESTQESTQ_TAG.readonly := true ;
     Q_ESTQESTQ_QTDE.readonly := true ;
     Q_ESTQESTQ_LOTE.readonly := true ;
     Q_ESTQROM_DTBATCH.readonly := true ;
     Q_ESTQROM_DTVENCTO.readonly := true ;
     ComboPROd.ShowButton := false ;
     ComboPROd.AUTODROPDOWN := false ;  }
end;

procedure TFManifesto.Q_ESTQBeforeInsert(DataSet: TDataSet);
begin
    { Q_ESTQESTQ_TAG.readonly := false ;
     Q_ESTQESTQ_QTDE.readonly := false ;
     Q_ESTQESTQ_LOTE.readonly := false ;
     Q_ESTQROM_DTBATCH.readonly := false ;
     Q_ESTQROM_DTVENCTO.readonly := false ;


     ComboPROd.ShowButton := true ;
     ComboPROd.AUTODROPDOWN := true ;

     GRID.SetFocus;
     GRID.SelectedField := Q_ESTQESTq_TAG ; }
end;

procedure TFManifesto.ComboPRODCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    { CLOSEUP := 'S';

     Q_ESTQESTQ_QTDE.readonly := false ;
     Q_ESTQESTQ_LOTE.readonly := false ;
     Q_ESTQROM_DTBATCH.readonly := false ;
     Q_ESTQROM_DTVENCTO.readonly := false ; }




   { Q_ESTQESTQ_TAG.asinteger := Q_ESTQ2ESTQ_TAG.asinteger ;
    Q_ESTQESTQ_QTDE.asinteger := Q_ESTQ2ESTQ_QTDE.asinteger ;
    Q_ESTQPRO_ID.asinteger := Q_ESTQ2PRO_ID.asinteger ;
    Q_ESTQUVEN_ID.asinteger := Q_ESTQ2UVEN_ID.asinteger ;
    Q_ESTQAR_ID.asinteger := Q_ESTQ2AR_ID.asinteger ;
    Q_ESTQPOS_ID.asinteger := Q_ESTQ2POS_ID.asinteger ;
    Q_ESTQESTq_LOTE.asstring := Q_ESTQ2ESTq_LOTE.asstring ;
    Q_ESTQROM_DTBATCH.asstring := Q_ESTQ2ROM_DTBATCH.asstring ;
    Q_ESTQROM_DTVENCTO.asstring := Q_ESTQ2ROM_DTVENCTO.asstring ;

    Q_ESTQOS_ID_ORIG.asstring := Q_ESTQ2OS_ID_ORIG.asstring ;
    Q_ESTQESTQ_DT_ENTRADA.asstring := Q_ESTQ2ESTQ_DT_ENTRADA.asstring ;
    Q_ESTQROM_ID_ENT.asstring := Q_ESTQ2ROM_ID_ENT.asstring ;
    Q_ESTQAR_ID_ANTERIOR.asstring := Q_ESTQ2AR_ID_ANTERIOR.asstring ;
    Q_ESTQPOS_ID_ANTERIOR.asstring := Q_ESTQ2POS_ID_ANTERIOR.asstring ;
    Q_ESTQESTQ_DT_ULMOV.asstring := Q_ESTQ2ESTQ_DT_ULMOV.asstring;
    Q_ESTQMANI_ID.AsString       := Q_MANIFMANI_ID.asstring  ;   }

   

    ////CLOSEUP := '';      }

end;

procedure TFManifesto.ComboPRODExit(Sender: TObject);
begin
   {If CLOSEUP = '' then begin

     Q_ESTQESTQ_QTDE.readonly := true ;
     Q_ESTQESTQ_LOTE.readonly := true ;
     Q_ESTQROM_DTBATCH.readonly := true ;
     Q_ESTQROM_DTVENCTO.readonly := true ;

  end ;   }
end;

procedure TFManifesto.Q_ESTQBeforeDelete(DataSet: TDataSet);
begin
  {Q_AUX.close;
  Q_AUX.Sql.Clear;
  Q_AUX.Sql.Add('update ESTOQUE set MANI_ID = ' + ''''+ '' + '''' + ',') ;
  Q_AUX.Sql.Add('ESTQ_QTDE_RETIRA = ' + INTtostr(0)) ;
  Q_AUX.Sql.Add('where MANI_ID = ' + Q_ESTQMANI_ID.asstring );
  Q_AUX.ExecSql;       }


end;

procedure TFManifesto.Q_ESTQNewRecord(DataSet: TDataSet);
begin
   {Q_ESTQMANI_ID.AsString       := Q_MANIFMANI_ID.asstring  ;  }
end;

procedure TFManifesto.GRIDDblClick(Sender: TObject);


begin

   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////



  PANEL2.enabled := false ;
  TabbedNotebook1.enabled := false ;




  If Q_MANIFCONFIRMA.asstring = 'N' then begin


      //ADICIONADO FILTRO DE PRODUTO NO UPDATE DO ESTOQUE
      Q_AUX.close;
      Q_AUX.Sql.Clear;
      Q_AUX.Sql.Add('update estoque set MARCADOR = ' + ''''+ '' + '''');
      Q_AUX.SQL.Add('WHERE MARCADOR = ''*'' ');
      //Q_AUX.SQL.Add('WHERE   PRO_ID = ' + Q_ESTQPRO_ID.asstring);
      //Q_AUX.SQL.Add(' AND (MANI_ID IS NULL OR MANI_ID = ' + Q_MANIFMANI_ID.AsString + ')');
      Q_AUX.ExecSql;


      Q_ESTQ2.close ;
      Q_ESTQ2.Sql.Clear ;
      Q_ESTQ2.Sql.Add('Select A.*,B.POS_COD,C.AR_NOME from ');
      Q_ESTQ2.SQL.ADD('ESTOQUE A  LEFT OUTER JOIN ');
      Q_ESTQ2.SQL.ADD('AREA_POSICOES B ON A.POS_ID = B.POS_ID, ');
      Q_ESTQ2.SQL.ADD('AREA C') ;
      Q_ESTQ2.Sql.Add('Where A.ESTQ_DT_ENTRADA is not null  ');
      Q_ESTQ2.Sql.Add(' and A.AR_ID = C.AR_ID ') ;
      Q_ESTQ2.Sql.Add('and A.ESTQ_dt_SAIDA is  null  ');
      //Q_ESTQ2.Sql.Add('and ((A.MANI_ID is null and A.PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
      Q_ESTQ2.Sql.Add('and ((A.MANI_ID is null)') ;
      Q_ESTQ2.Sql.Add(' or  (A.MANI_Id = ' + Q_MANIFMANI_ID.asstring+')'+')' );
      //Q_ESTQ2.Sql.Add(' and A.ESTQ_id = ' + Q_ESTQESTQ_Id.asstring +')'+')' );
      Q_ESTQ2.Sql.Add(' and A.PRO_ID = ' + Q_ESTQPRO_ID.asstring );
      q_ESTQ2.Sql.Add(' order by A.PRO_ID,A.AR_ID,A.POS_ID,A.ESTQ_QTDE desc ');
      Q_ESTQ2.OPEN ;

      ////
      Q_AUX.close;
      Q_AUX.Sql.Clear;
      Q_AUX.Sql.Add(' Select SUM(ESTQ_QTDE_RETIRA) as QTDE from ESTOQUE ') ;
      Q_AUX.Sql.Add(' Where ESTQ_DT_ENTRADA is not null  ');
      Q_AUX.Sql.Add(' and ESTQ_dt_SAIDA is  null  ');
      Q_AUX.Sql.Add(' and ((MANI_ID is null and PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
      Q_AUX.Sql.Add(' or (MANI_Id = ' + Q_MANIFMANI_ID.asstring +')'+')' );
      /////Q_AUX.Sql.Add(' and ESTQ_id=' + Q_ESTQESTQ_Id.asstring +')'+')' );
      Q_AUX.OPEN ;

      RETIRAorig := formatfloat('0.000',Q_AUX.fieldbyname('QTDE').AsFloat) ;
      //RETIRAX2 :=  Q_AUX.fieldbyname('QTDE').AsFloat;

      ////
       { miguel }
    {  codigoProduto := Q_ESTQPROcod.AsString;
      fretira := 0;

      Q_ESTQ.First;
      while not Q_ESTQ.Eof do
      begin
          if codigoProduto = Q_ESTQPROcod.AsString then
             fretira := fretira + Q_ESTQESTQ_QTDE_RETIRA.Value;
          Q_ESTQ.Next;
      end;  }
       {final miguel}

      lbQtdeSolicitada.Caption := FloatToStr(fretira);
      lbSelecionada.Caption := '0';

      Q_PROD2.locate('PRO_ID',Q_ESTQPRO_ID.asstring,[])    ;

      Q_AREA.open ;
      Q_AREA3.open ;
      Q_POS3.open ;
      Q_POs.open ;


      PANEL4.visible := true ;
      PANEL4.top := 85 ;
      PANEL4.Left := 3 ;
      codigoProduto := Q_ESTQPRO_ID.AsString;
  end else begin
    PANEL2.enabled := true ;
    TabbedNotebook1.enabled := true ;
    abort ;
  end ;
end;

procedure TFManifesto.BitBtn2Click(Sender: TObject);
begin

      PANEL9.visible := true ;
      PANEL9.left := 151;
      PANEL9.Top  := 49;
      PANEL2.enabled := false ;
      TabbedNotebook1.enabled := false ;

end;

procedure TFManifesto.BitBtn1Click(Sender: TObject);
var
RETIRA : string ;

RETIRAX : Double;

RETIRA2 : string ;

seleciona : Double;

marcado : Boolean ;

begin
  If ((Q_ESTQ2.state = dsedit ) or
     (Q_ESTQ2.state = dsinsert ))  then
      Q_ESTQ2.post ;


        

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add(' Select SUM(ESTQ_QTDE_RETIRA) as QTDE from ESTOQUE ') ;
   Q_AUX.Sql.Add(' Where ESTQ_DT_ENTRADA is not null  ');
   Q_AUX.Sql.Add(' and ESTQ_dt_SAIDA is  null  ');
   Q_AUX.Sql.Add(' and ((MANI_ID is null and PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
   Q_AUX.Sql.Add(' or (MANI_Id = ' + Q_MANIFMANI_ID.asstring +')'+')' );
   /////Q_AUX.Sql.Add(' and ESTQ_id=' + Q_ESTQESTQ_Id.asstring +')'+')' );
   Q_AUX.OPEN ;


   RETIRA := formatfloat('0.000',Q_AUX.fieldbyname('QTDE').asfloat) ;




  // RETIRAX := Q_AUX.fieldbyname('QTDE').asfloat;




   ///RETIRA2 := formatfloat('0.000',Q_ESTQESTQ_QTDE_RETIRA.asfloat) ;
   {marcado := False;
   seleciona := 0;
   Q_ESTQ2.First;
   while not Q_ESTQ2.Eof do
   begin
       if Q_ESTQ2MARCADOR.Value = '*' then
       begin
          seleciona := seleciona +  q_estq2ESTQ_QTDE_RETIRA.Value;
          marcado := True;
       end;
       Q_ESTQ2.Next;
   end;  }

   lbQtdeSolicitada.Caption := RETIRA;
   lbSelecionada.Caption := RetiraORIG;

   IF (RETIRA = {RETIRA2} retiraORIG) then begin



   //if fretira = seleciona then begin

         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add('Select COUNT(*) as QTDE from ESTOQUE ') ;
         Q_AUX.Sql.Add(' where Marcador = ' + '''' + '*' + '''' ) ;
         Q_AUX.open ;

         IF ((Q_AUX.fieldbyname('QTDE').asinteger > 0)) then begin

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('update ESTOQUE set MANI_ID = null');
             ///Q_AUX.Sql.Add('WHERE ESTQ_ID = ' + Q_ESTQESTQ_Id.asstring ) ;
             Q_AUX.Sql.Add(' where Marcador = ' + '''' + '*' + '''' ) ;
             Q_AUX.Sql.Add('and ESTQ_QTDE_RETIRA = ' + inttostr(0) ) ;
             Q_AUX.SQL.Add(' AND PRO_ID = ' + Q_ESTQPRO_ID.AsString ) ;
             Q_AUX.ExecSql;



             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('update ESTOQUE set MANI_ID = ' + Q_ESTQMANI_ID.asstring);
             Q_AUX.Sql.Add('WHERE Marcador = ' + '''' + '*' + '''' ) ;
             ////Q_AUX.Sql.Add('and ESTQ_ID <> ' + Q_ESTQESTQ_Id.asstring ) ;
             Q_AUX.Sql.Add('and ESTQ_QTDE_RETIRA > ' + inttostr(0) ) ;
             Q_AUX.SQL.Add(' AND PRO_ID = ' + Q_ESTQPRO_ID.AsString ) ;
             Q_AUX.ExecSql;

             Q_ESTQ.close ;
             Q_ESTQ.open ;

         end else begin
             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add(' Select * from ESTOQUE ') ;
             {Q_AUX.Sql.Add(' Where ESTQ_DT_ENTRADA is not null  ');
             Q_AUX.Sql.Add(' and ESTQ_dt_SAIDA is  null  ');
             Q_AUX.Sql.Add(' and ((MANI_ID is null and PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
             Q_AUX.Sql.Add(' or (MANI_Id = ' + Q_MANIFMANI_ID.asstring);}
             Q_AUX.Sql.Add(' where ESTQ_id = ' + Q_ESTQESTQ_Id.asstring {+')'+')'} );
             Q_AUX.OPEN ;

             IF ((Q_AUX.fieldbyname('ESTQ_QTDE_RETIRA').asfloat) <> Q_ESTQESTQ_QTDE_RETIRA.asfloat) then begin

                   MessageDlg('Pallet TAG Original foi substituido, o novo Pallet deverá ser Marcado !',mtInformation,[mbOk], 0);
                   abort  ;
             end ;

         end ;
   end else begin
        //if marcado = True then
        //begin
            MessageDlg('Quantidade a Retirar, não é igual a qtde. original do Pallet !',mtInformation,[mbOk], 0);
            abort  ;
       //end;
   end ;
   ///Q_ESTQ.cancel;


   
   qrUpdateEstoque.Params[0].AsInteger := Q_MANIFMANI_ID.Value;
   qrUpdateEstoque.ExecSQL;

   Q_ESTQ.close;
   Q_ESTQ.Open;

  Q_ESTQ.Locate('pro_id', codigoProduto, []);

  PANEL4.visible := false ;
  PANEL2.enabled := true ;
  TabbedNotebook1.enabled := true ;

  VERIFICA_NOTA_ROMANEIO;
  
end;

procedure TFManifesto.Q_ESTQ2AfterPost(DataSet: TDataSet);
var
STRESTQ : string ;
begin
   STRESTQ := Q_ESTQ2ESTQ_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_ESTQ2])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   {Q_ESTQ2.close ;
   Q_ESTQ2.Open ;}

   {if strEstq = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(Estq_id) as Numero from estoque ' ) ;
     Q_AUX.open ;
     StrEstq := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_ESTQ.locate('ESTQ_ID',STRESTQ,[])    ;   }


    { Q_ESTQ2ESTQ_QTDE.readonly := true ;
     Q_ESTQ2ESTQ_LOTE.readonly := true ;
     Q_ESTQ2ROM_DTBATCH.readonly := true ;
     Q_ESTQ2ROM_DTVENCTO.readonly := true ;
     Q_ESTQ2AR_ID.readonly := true ;
     Q_ESTQ2POS_ID.readonly := true ;

     ComboAREA.ShowButton := false ;
     ComboAREA.AUTODROPDOWN := false ;
     ComboPOSICAO.ShowButton := false ;
     ComboPOSICAO.AUTODROPDOWN := false ; }


   {Q_aux.close;
   Q_aux.Sql.Clear;
   Q_aux.Sql.Add(' Select COUNT(*) as POSICAO_OCUP from  ESTOQUE ') ;
   Q_aux.Sql.Add(' where   AR_ID  = ' +  AREANEW ) ;
   Q_aux.Sql.Add('   and POS_ID   = ' +  Q_POSPOS_ID.asstring ) ;
   Q_aux.open ;

   Q_AREA_2.open ;
   Q_AREA_2.locate('AR_ID',AREANEW,[]);

   If (Q_aux.fieldbyname('POSICAO_OCUP').asinteger >
       Q_AREA_2AR_EMPILHA_MAX.asinteger) or
       (Q_aux.fieldbyname('POSICAO_OCUP').asinteger =
       Q_AREA_2AR_EMPILHA_MAX.asinteger ) and
       (Q_aux.fieldbyname('POSICAO_OCUP').asinteger <> 0)  then begin
       ///****////
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'S' + '''') ;
       Q_aux.Sql.Add(' Where AR_ID  =   ' + Q_AREAAR_ID.asstring ) ;
       Q_aux.Sql.Add(' and  POS_ID  =   ' + Q_POSPOS_ID.asstring ) ;
       Q_aux.ExecSql;
   end ;

   IF (AREA <> '') and (POSICAO <> '') then begin
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' Select COUNT(*) as POSICAO_OCUP from  ESTOQUE ') ;
       Q_aux.Sql.Add(' where   AR_ID  = ' + AREA    ) ;
       Q_aux.Sql.Add('   and  POS_ID  = ' + POSICAO ) ;
       Q_aux.open ;

       Q_AREA_2.locate('AR_ID',AREA,[]);

       If (Q_aux.fieldbyname('POSICAO_OCUP').asinteger <
           Q_AREA_2AR_EMPILHA_MAX.asinteger)    or
          (Q_aux.fieldbyname('POSICAO_OCUP').asinteger = Q_AREA_2AR_EMPILHA_MAX.asinteger) and
          (Q_AREA_2AR_EMPILHA_MAX.asinteger = 0)
           then begin
           ///****////
           Q_aux.close;
           Q_aux.Sql.Clear;
           Q_aux.Sql.Add(' Update AREA_POSICOES set POS_UTILIZADO = '+ ''''+ 'N' + '''') ;
           Q_aux.Sql.Add(' Where AR_ID  =   ' + AREA ) ;
           Q_aux.Sql.Add(' and  POS_ID  =   ' + POSICAO ) ;
           Q_aux.ExecSql;
       end ;
       Q_AREA_2.close ;
   end ;    }


    
end;

procedure TFManifesto.Q_ESTQ2BeforePost(DataSet: TDataSet);
begin
   //AREANEW := Q_ESTQ2AR_ID.asstring ;

   //MIGUEL : OBRIGAMOS A FICAR MARCADO TODA LINHA Q FOI ALTERADA
   Q_ESTQ2MARCADOR.Value := '*';
end;

procedure TFManifesto.DS_ESTQ2DataChange(Sender: TObject; Field: TField);
begin
 {IF (Q_ESTQ2.state = dsedit) or (Q_ESTQ2.state = dsBROWSE) and
       (Q_ESTQ2AR_ID.asstring <> '')  then begin
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' Select COUNT(*) as POSICAO_VAGA from  AREA_POSICOES ') ;
       Q_aux.Sql.Add(' where AR_ID = ' + Q_ESTQ2AR_ID.asstring ) ;
       Q_aux.Sql.Add(' and POS_UTILIZADO = ' + '''' + 'N' + '''');
       Q_aux.open ; }

       {If (Q_aux.fieldbyname('POSICAO_VAGA').asinteger > 0 ) then  begin
          ComboPOSICAO.enabled := true   ;
       end else
          ComboPOSICAO.enabled := false;  }

       {IF (COMBOAREA.text <> '') then
          ComboPOSICAO.enabled := true
         else begin
           ComboPOSICAO.text := '' ;
           ComboPOSICAO.lookupvalue := '' ;
           ComboPOSICAO.enabled := false ;
           end ;  }
   //end ;
end;

procedure TFManifesto.Q_ESTQ2BeforeEdit(DataSet: TDataSet);
begin
  //AREA := Q_ESTQAR_ID.asstring ;
  //POSICAO := Q_ESTQPOS_ID.asstring ;
end;

procedure TFManifesto.Q_ESTQ2AfterCancel(DataSet: TDataSet);
begin
     {Q_ESTQ2ESTQ_QTDE.readonly := true ;
     Q_ESTQ2ESTQ_LOTE.readonly := true ;
     Q_ESTQ2ROM_DTBATCH.readonly := true ;
     Q_ESTQ2ROM_DTVENCTO.readonly := true ;
     Q_ESTQ2AR_ID.readonly := true ;
     Q_ESTQ2POS_ID.readonly := true ;

     ComboAREA.ShowButton := false ;
     ComboAREA.AUTODROPDOWN := false ;
     ComboPOSICAO.ShowButton := false ;
     ComboPOSICAO.AUTODROPDOWN := false ; }

end;

procedure TFManifesto.Q_ESTQ2NewRecord(DataSet: TDataSet);
begin
  {Q_ESTQ2ESTQ_QTDE.readonly := false ;
     Q_ESTQ2ESTQ_LOTE.readonly := false ;
     Q_ESTQ2ROM_DTBATCH.readonly := false ;
     Q_ESTQ2ROM_DTVENCTO.readonly := false ;
     Q_ESTQ2AR_ID.readonly := false ;
     Q_ESTQ2POS_ID.readonly := false ;

     wwDBGrid2.SetFocus;
     wwDBGrid2.SelectedField := Q_ESTQAR_ID;

    Q_ESTQ2.edit;
    Q_ESTQ2ESTQ_TAG.asinteger := Q_ESTQESTQ_TAG.asinteger ;
   /// Q_ESTQESTQ_QTDE.asinteger := Q_ESTQ2ESTQ_QTDE.asinteger ;
    Q_ESTQ2PRO_ID.asinteger := Q_ESTQPRO_ID.asinteger ;
    Q_ESTQ2UVEN_ID.asinteger := Q_ESTQUVEN_ID.asinteger ;
    ///Q_ESTQAR_ID.asinteger := Q_ESTQ2AR_ID.asinteger ;
   /// Q_ESTQPOS_ID.asinteger := Q_ESTQ2POS_ID.asinteger ;
    Q_ESTQ2ESTq_LOTE.asstring := Q_ESTQESTq_LOTE.asstring ;
    Q_ESTQ2ROM_DTBATCH.asstring := Q_ESTQROM_DTBATCH.asstring ;
    Q_ESTQ2ROM_DTVENCTO.asstring := Q_ESTQROM_DTVENCTO.asstring ;

    Q_ESTQ2OS_ID_ORIG.asstring := Q_ESTQOS_ID_ORIG.asstring ;
    Q_ESTQ2ESTQ_DT_ENTRADA.asstring := Q_ESTQESTQ_DT_ENTRADA.asstring ;
    Q_ESTQ2ROM_ID_ENT.asstring := Q_ESTQROM_ID_ENT.asstring ;
    Q_ESTQ2AR_ID_ANTERIOR.asstring := Q_ESTQAR_ID.asstring ;
    Q_ESTQ2POS_ID_ANTERIOR.asstring := Q_ESTQPOS_ID.asstring ;
    Q_ESTQ2ESTQ_DT_ULMOV.asdatetime := NOW ;
    Q_ESTQ2MANI_ID.AsString       := Q_ESTQMANI_ID.asstring  ;  




     ComboAREA.ShowButton := true ;
     ComboAREA.AUTODROPDOWN := true ;
     ComboPOSICAO.ShowButton := true ;
     ComboPOSICAO.AUTODROPDOWN := true ;


     {GRID.SetFocus;
     GRID.SelectedField := Q_ESTQESTq_TAG ; }
end;

procedure TFManifesto.SpeedButton2Click(Sender: TObject);
begin

 //  IF (Q_MANIFCONFIRMA.asstring = 'N') then begin
        {VERIFICAR CROSS DOCKING, NÃO GERAR ROM SAIDA, POIS ESTA SENDO GERADO}
  //      MessageDlg('Romaneio de Saída não está confirmado !',mtInformation,[mbOk], 0);
  //      abort ;
  // end ;

   Application.CreateForm(TFRelROMSAI,FRelROMSAI);
   FRelROMSAI.ROM.Preview;
   FRelROMSAI.Close; 
end;

procedure TFManifesto.SpeedButton1Click(Sender: TObject);
begin
   If (TabbedNotebook1.pageindex = 1) then begin
       PANEL6.visible := true ;
       panel6.TOP := 4 ;
       panel6.LEFT := 473 ; 
       TabbedNotebook1.enabled := false;
       PANEL2.enabled := false ;
      { Application.CreateForm(TFRelManifResumoProd,FRelManifResumoProd);
       FRelManifResumoProd.RESUMO.Preview;
       FRelManifResumoProd.Close; }

   end else begin
       MANIFESTO := 'S' ;

      /// IF  (Q_MANIFCONFIRMA.asstring = 'S')  then  begin
           Application.CreateForm(TFRelMANIFESTO,FRelMANIFESTO);
           FRelMANIFESTO.MANIF.Preview;
           FRelMANIFESTO.Close;
     ///  end else begin
          // MessageDlg('Romaneio de Saída não foi confirmado ! ',mtInformation,[mbOk], 0);
          // abort  ;
     ///  end ;
   end ;


end;

procedure TFManifesto.SpeedButton5Click(Sender: TObject);
begin
       PANEL6.visible := false ;
       TabbedNotebook1.enabled := true;
       PANEL2.enabled := true ;
end;

procedure TFManifesto.SpeedButton4Click(Sender: TObject);
begin

  IF RadioGroup3.itemindex = 0 then begin
      Application.CreateForm(TFRelManifResumoProd,FRelManifResumoProd);
      FRelManifResumoProd.RESUMO.Preview;
      FRelManifResumoProd.Close;
  end else begin
      Application.CreateForm(TFRelManifResumoNF,FRelManifResumoNF);
      FRelManifResumoNF.RESUMONF.Preview;
      FRelManifResumoNF.Close;
  end  ;

end;

procedure TFManifesto.DS_ESTQDataChange(Sender: TObject; Field: TField);
begin

     If ((Q_ESTQESTQ_DT_SAIDA.asstring = '') and
         (Q_MANIFCONFIRMA.asstring    <> 'S'))  then  begin
        BITBTN3.enabled := true ;
        BITBTN3.Caption := 'Confirmar Romaneio ?' ;
     end else begin
        If (Q_MANIFCONFIRMA.asstring = 'S')  then  begin
           BITBTN3.enabled := false ;
           BITBTN3.Caption := 'Romaneio Confirmado !'   ;
        end ;
     end ;


end;

procedure TFManifesto.BitBtn3Click(Sender: TObject);
var
   MANIFESTO : STRING ;
begin

   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////

  // if Q_MANIFMANI_VFRETEPAG.AsString = '' then begin
  //     ShowMessage('Informe o valor do frete!!');
  //     Abort;
  // end;


    {Q_aux.close;
    Q_aux.Sql.Clear;
    Q_aux.Sql.Add(' Update ESTOQUE set ESTQ_DT_SAIDA = ' + ''''+ formatdatetime('YYYYMMDDHH:MM:SS',now) + '''') ;
    Q_aux.Sql.Add(' Where MANI_ID  =   ' + Q_MANIFMANI_ID.asstring ) ;
    Q_aux.ExecSql;}

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add(' select count(*) as QTDE from ESTOQUE') ;
   Q_AUX.Sql.Add(' where ESTQ_QTDE_RETIRA = ' + inttostr(0)) ;
   Q_AUX.Sql.Add(' and   MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open;

   


      IF (Q_AUX.fieldbyname('qtde').asinteger > 0)  then begin
         MessageDlg('Existe Pallet com Qtde.Retirada igual a Zero !',mtInformation,[mbOk], 0);
         abort  ;
      end   ;  


       MANIFESTO :=   Q_MANIFMANI_ID.asstring ;

    try
    Begin
      STP_KARDEXSAIDA.ParamByName('@MANI').Value  := Q_MANIFMANI_ID.asstring  ;
      STP_KARDEXSAIDA.ParamByName('@PAR_ID').Value  :=  Q_ESTQPAR_ID.asstring  ;
      STP_KARDEXSAIDA.ParamByName('@USUARIO').Value  :=  FMenu.SqlUsuariosCH.asstring ;
      STP_KARDEXSAIDA.Execproc;
      End
    except
       begin
         MessageDlg('Geração da Confirmação, com erro !',mtInformation,[mbOk], 0);
         abort  ;
       end;
    end;



    Q_ESTQ.close;
    Q_ESTQ.open ;

    Q_MANIF.close;
    Q_MANIF.open ;
    Q_MANIF.locate('MANI_ID',MANIFESTO,[])    ;

    BITBTN3.enabled := false ;
    BITBTN3.Caption := 'Romaneio Confirmado !'   ;

end;
procedure TFManifesto.wwDBEdit17DblClick(Sender: TObject);
begin
   { If  wwDBEdit1.text = '' then begin
        wwDBEdit1.text := 'SIM'  ;
        Q_ESTQ2.edit ;
        Q_ESTQ2MARCADOR.asstring := 'SIM'  ;
        Q_ESTQ2.post ;
    end else begin
        wwDBEdit1.text := '' ;
        Q_ESTQ2.edit ;
        Q_ESTQ2MARCADOR.asstring := ''   ;
        Q_ESTQ2.post ;
    end ; }


end;

procedure TFManifesto.Q_MANIFNewRecord(DataSet: TDataSet);
begin
  Q_MANIFCONFIRMA.asstring := 'N' ;

end;

procedure TFManifesto.RadioGroup4Click(Sender: TObject);
begin
      Q_ESTQ2.close ;
      Q_ESTQ2.Sql.Clear ;
      Q_ESTQ2.Sql.Add('Select A.*,B.POS_COD,C.AR_NOME from ');
      Q_ESTQ2.SQL.ADD('ESTOQUE A  LEFT OUTER JOIN ');
      Q_ESTQ2.SQL.ADD('AREA_POSICOES B ON A.POS_ID = B.POS_ID, ');
      Q_ESTQ2.SQL.ADD('AREA C') ;
      Q_ESTQ2.Sql.Add('Where A.ESTQ_DT_ENTRADA is not null  ');
      Q_ESTQ2.Sql.Add(' and A.AR_ID = C.AR_ID ') ;
      Q_ESTQ2.Sql.Add('and A.ESTQ_dt_SAIDA is  null  ');
      Q_ESTQ2.Sql.Add('and ((A.MANI_ID is null and A.PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
      Q_ESTQ2.Sql.Add(' or (A.MANI_Id = ' + Q_MANIFMANI_ID.asstring +')'+')' );
      ///Q_ESTQ2.Sql.Add(' and A.ESTQ_id = ' + Q_ESTQESTQ_Id.asstring +')'+')' );

        IF RadioGroup4.itemindex = 0 then
           Q_ESTQ2.SQL.ADD('order by A.ESTQ_TAG ');
        IF RadioGroup4.itemindex = 1 then
           Q_ESTQ2.SQL.ADD('order by C.AR_NOME ');
        IF RadioGroup4.itemindex = 2 then
           Q_ESTQ2.SQL.ADD('order by B.POS_COD ');
        IF RadioGroup4.itemindex = 3 then
           Q_ESTQ2.SQL.ADD('order by A.ROM_DTVENCTO ');
        IF RadioGroup4.itemindex = 4 then
           Q_ESTQ2.SQL.ADD('order by A.ROM_DTbatch ');
        IF RadioGroup4.itemindex = 5 then
           Q_ESTQ2.SQL.ADD('order by A.ESTQ_lote ');
        ///Q_ESTQ2.Sql.Add(' PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc ');
        Q_ESTQ2.OPEN ;

        
end;

procedure TFManifesto.DBG_RAATDblClick(Sender: TObject);
begin
    MANIFESTONF :=  '*' ; 
    Application.Createform(TFnf, Fnf);
    Fnf.ShowModal;
    Fnf.Release;
end;

procedure TFManifesto.DS_MANIFDataChange(Sender: TObject; Field: TField);
begin
    If Q_MANIFNFI_TRANS.asstring = 'S' then begin
      LABEL43.caption := 'Transportador NBF'    ;
      PANEL3.enabled := true  ;
      wwDBGrid2.visible := true ;
      wwDBGrid3.visible := true ;

      IF Label53.visible = false then
         SBT_VISU.visible := true ;
      TabbedNotebook2.enabled := true ;
      SpeedButton6.enabled := true ;
      Panel8.visible := true ;
      Label54.visible := true ;
      Label55.visible := true ;
    end  else  begin
      Panel8.visible := false ;
      Label54.visible := false ;
      Label55.visible := false ;
      LABEL43.caption := 'Outros Transportadores' ;
      PANEL3.enabled := false ;
      wwDBGrid2.visible := false ;
      wwDBGrid3.visible := false ;
      SBT_VISU.visible := false ;
      TabbedNotebook2.enabled := false ;
      SpeedButton6.enabled := false ;
      IF Q_MANIFCONFIRMA_MANI.asstring = 'N' then
         SpeedButton6.caption := 'Baixar Manifesto'
        else
         SpeedButton6.caption := 'Manifesto Baixado'   ;
    end ;

  IF Q_MANIFMANI_ID.asstring <> '' then begin

     IF  Q_MANIFMOT_ID.asstring <> '' then begin
         Q_TRMOT.close ;
         Q_TRMOT.Sql.Clear ;
         Q_TRMOT.Sql.Add(' select MOT_ID,MOT_NOME,TRANS_ID, MOT_EQUIP from TRANSPORTADORA_MOTORISTA') ;
         Q_TRMOT.Sql.Add(' order by MOT_NOME' ) ;
         Q_TRMOT.Open ;
     end ;

     IF  Q_MANIFTRANS_ID.asstring <> '' then begin
          Q_TRANS.close ;
          Q_TRANS.Sql.Clear ;
          Q_TRANS.Sql.Add('select A.TRANS_ID,A.TRANS_FANTASIA from ');
          Q_TRANS.Sql.Add('TRANSPORTADORA A, TRANSPORTADORA_MOTORISTA B ');
          Q_TRANS.Sql.Add('where   A.TRANS_FLAG = ' + '''' + 'S' + '''' );
          Q_TRANS.Sql.Add('GROUP by  A.TRANS_ID,A.TRANS_FANTASIa order by A.TRANS_FANTASIA ');
          Q_TRANS.Open ;
     end ;

     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
     Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
     Q_AUX.open  ;
     IF (Q_AUX.fieldbyname('XVALOR').asinteger > 0)  then begin
       wwDBLookupCombo1.enabled := false ;
       wwDBLookupCombo2.enabled := false ;
     end else begin
       wwDBLookupCombo1.enabled := true ;
       wwDBLookupCombo2.enabled := true ;
     end ;
     If Q_MANIFNFI_TRANS.asstring <> 'N' then begin
           IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
               Label7.caption := 'Manifesto Baixado';
               Panel3.enabled := false;
               SpeedButton8.enabled := false ;
               SpeedButton6.enabled := false ;
           end else begin
               Label7.caption := 'Manifesto em Aberto' ;
               Panel3.enabled := true ;
               SpeedButton8.enabled := true ;
               SpeedButton6.enabled := true ;
           end ;
     end else begin
          Panel3.enabled := false;
          SpeedButton6.enabled := false ;
          IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
               Label7.caption := 'Manifesto Baixado';
               SpeedButton6.enabled := false ;
               SpeedButton8.enabled := false ;
          end else begin
               Label7.caption := 'Manifesto em Aberto' ;
               SpeedButton6.enabled := true ;
               SpeedButton8.enabled := true ;
          end ;
     end ;
  end ;
end;

procedure TFManifesto.wwDBLookupCombo10Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo11Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo10Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
  If wwDBLookupCombo10.text <> '' then
    wwDBLookupCombo10.text := Q_VEIC2VEIC_NOME.asstring   ;

end;

procedure TFManifesto.wwDBLookupCombo11Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;

  If (Q_MANIF.state = dsedit ) or (Q_MANIF.state = dsinsert )  then  begin
      If wwDBLookupCombo11.text <> '' then begin
         wwDBLookupCombo11.text := Q_REGREG_NOME.asstring   ;
         if wwDBComboBox1.ItemIndex = 0 then
            Q_MANIFMANI_VFRETEPAG.asstring := formatfloat('###,###,##0.00',Q_REGFRET_VALOR.asfloat)
         else
            Q_MANIFMANI_VFRETEPAG.asstring := formatfloat('###,###,##0.00',Q_REGFRET_VALOR_GRANEL.asfloat)
      end ;
  end ; 
end;

procedure TFManifesto.DBG_RAATCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
var
    TEXT1 : integer ;
begin
     //If Q_NFTEXTO_LIVRE.asstring <> '' then  begin
     TEXT1 := LENGTH(Q_NFTEXTO_LIVRE.asstring) ;
     If (TEXT1 > 1 )then  begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clred;
              AFont.Color := clwhite;
            End else begin
              ABrush.color := clred;
              Afont.color := clwhite;
            end ;
     End else begin
            AFont.color := clyellow;
           if not highlight then   begin
              ABrush.color := clblue;
              AFont.Color := clyellow;
            End else begin
              ABrush.color := clblue;
              Afont.color := clyellow;
            end ;
     end ;

     //If Q_NFTEXTO_LIVRE.asstring = '' then  begin
     {If (TEXT1 = 1 )then  begin
           AFont.color := clyellow;
           if not highlight then   begin
              ABrush.color := clblue;
              AFont.Color := clyellow;
            End else begin
              ABrush.color := clblue;
              Afont.color := clyellow;
            end ;
     End ;       }



    { Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add(' select count(*) as QTDE from os A,NF B where ');
     Q_AUX.Sql.Add(' (TOS_ID = 5 or B.NFI_CLONE = ' + '''' + 'S' + '''' + ')' );
     Q_AUX.Sql.Add(' and A.OS_ID = B.OS_ID ');
     Q_AUX.Sql.Add(' and B.MANI_ID is null ');
     Q_AUX.Sql.Add(' and B.NFI_CODI = ' + Q_NFNFI_CODI.asstring );
     Q_AUX.open ;



     IF Q_AUX.fieldbyname('QTDE').asinteger > 0 then
        ABrush.color := clAQUA
       else
        ABrush.color := clblue ;   }


end;

procedure TFManifesto.wwDBEdit19Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit19Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwhite;
end;

procedure TFManifesto.wwDBEdit20Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifesto.wwDBEdit20Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwhite;
end;

procedure TFManifesto.Q_MANIFBeforePost(DataSet: TDataSet);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////


   {wwDBLookupCombo10.LookupValue := wwDBLookupCombo1.LookupValue;
   wwDBLookupCombo10.Text := wwDBLookupCombo1.Text; }

   Q_MANIFVEIC_ID_FRETE.Value := Q_MANIFVEIC_ID.Value;


   If (TabbedNotebook1.pageindex <> 1) and
      (TabbedNotebook1.pageindex <> 2) and
      (Q_MANIFNFI_TRANS.asstring <> 'N')then begin

       IF (wwDBLookupCombo1.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Veículo Transportador é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo1.setfocus ;
           abort ;
       end ;

       IF (wwDBLookupCombo2.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo2.setfocus ;
           abort ;
       end ;


       IF (wwDBLookupCombo10.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Veículo Pagto.Frete é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo10.setfocus ;
           abort ;
       end ;

       IF (wwDBLookupCombo11.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Região Pagto. Frete é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo11.setfocus ;
           abort ;
       end ;

       IF (wwDBEdit20.text = '')  then begin
           TabbedNotebook1.pageindex := 0 ;
           MessageDlg('Vlr. Frete a Pagar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBEdit20.setfocus ;
           abort ;
       end ;
   end ; 

end;

procedure TFManifesto.Q_NF55AfterPost(DataSet: TDataSet);
var
STRNF : string ;
begin
   STRNF := Q_NF55NFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF55])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF55.close ;
   Q_NF55.Open  ;

   {if STRNF = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(mani_id) as Numero from Manifesto ' ) ;
     Q_AUX.open ;
     STRMANI := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;  }
     Q_NF55.locate('NFI_CODI',STRNF,[])    ;

end;

procedure TFManifesto.DS_NF55DataChange(Sender: TObject; Field: TField);
var a, b : Integer;
begin
    IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
       SpeedButton9.enabled := false ;
       SpeedButton10.enabled := false ;
       SpeedButton11.enabled := false ;
       SpeedButton12.enabled := false ;
    end else begin
      SpeedButton9.enabled := true  ;
       SpeedButton10.enabled := true ;
       SpeedButton11.enabled := true ;
       SpeedButton12.enabled := true ;
    end ;



    If Q_MANIFMANI_ID.asstring <> '' then begin



       Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
       Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
       Q_AUX.open  ;
       b:= Q_AUX.fieldbyname('XVALOR').asinteger;


        //verifica se ainda tem conhecimentos por gerar
       Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from NF' ) ;
       Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
       Q_AUX.SQL.Add('and ord_id is null and NFI_ENTREGA = ''S'' ');
       Q_AUX.open  ;
       a := Q_AUX.fieldbyname('XVALOR').asinteger;



       //IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin
       IF (a > 0) or (b = 0)  then begin
               Label53.visible := false  ;

               IF Label53.visible = false then
                  SBT_VISU.visible := true ;

               wwDBComboBox2.enabled := true;
               wwDBComboBox3.enabled := true;

               Q_AUX.close;   {656565}
               Q_AUX.Sql.Clear;
               Q_AUX.Sql.Add(' Select count(*) as NAOPREENCHIDO from NF');
               Q_AUX.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
               Q_AUX.Sql.Add(' and ( NFI_ENTREGA is null or NFI_ENTREGA = ' + '''' + '' + '''' + ')' ) ;
               Q_AUX.Sql.Add(' or NFI_COBRAR = ' + '''' + '' + '''' ) ;
               Q_AUX.open;

               If  Q_AUX.fieldbyname('NAOPREENCHIDO').asinteger = 0 then
                    SBT_VISU.enabled := true
                  else
                     SBT_VISU.enabled := false ;
       end else begin
           Label53.left := 637;
           Label53.visible := true  ;
           SBT_VISU.visible := false  ;

           wwDBComboBox2.enabled := false;
           wwDBComboBox3.enabled := false;
       end ;

    end ;

   IF Q_MANIFCONFIRMA_MANI.asstring <> 'S' then begin
       wwDBComboBox2.enabled := True;
       wwDBComboBox3.enabled := True;
   end;
   //liberado para poder gerar reentrega a qualquer momento.
   wwDBComboBox2.enabled := True; 
       wwDBComboBox3.enabled := True;
end;

procedure TFManifesto.SBT_VISUClick(Sender: TObject);
var
   MANID : string ;
   NFI_CODI : Integer;
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////


   IF Q_NF55.State IN [DSEDIT, DSINSERT] then
        Q_NF55.Post;



   {with Q_AUX do begin
       close;
       sql.Clear;
       sql.Add('Update nf set ORD_ID = NULL WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring);
       ExecSQL;
   end;   }

   if Q_MANIFREG_ID.asstring = '' then begin
       ShowMessage('Informe a regiao!');
       Abort;
   end;

   if   Q_VEICVEIC_ID.asstring = '' then begin
       ShowMessage('Informe o veiculo');
       Abort;
   end;

   if Q_MANIFTRANS_ID.AsString = '' then begin
       ShowMessage('informe a transportadora');
       Abort;
   end;

   if Q_MANIFVEIC_ID_FRETE.asstring = '' then begin
       ShowMessage('Informe o veiculo a cobrar');
       Abort;
   end;




   IF (wwDBLookupCombo1.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Veículo Transportador é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo1.setfocus ;
       abort ;
   end ;

   IF (wwDBLookupCombo2.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo2.setfocus ;
       abort ;
   end ;


   If (Q_NF55.state = dsedit) then begin
      Q_NF55.post ;
    //  abort ;
   end ;


   // verifica se existe Nota Fiscal com o campo NFI_COBRAR = BRANCO
   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT COUNT(*) as QTDESEMCOBRAR FROM NF') ;
   Q_AUX.Sql.Add('WHERE (NFI_COBRAR IS NULL ') ;
   Q_AUX.Sql.Add('OR    NFI_COBRAR = ' + '''' + '' + '''' + ')') ;
   Q_AUX.Sql.Add('AND   MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open ;

   If (Q_AUX.fieldbyname('QTDESEMCOBRAR').asfloat > 0)  then BEGIN
       MessageDlg('Cobrar (S/N) é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBComboBox3.setfocus ;
       abort ;
   end ;


   // verifica se existe Nota Fiscal com o campo Qtde Pallet = BRANCO
   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT COUNT(*) as QTDESEMPALLET FROM NF') ;
   Q_AUX.Sql.Add('WHERE (NFI_QTDEPALLET IS NULL ') ;
   Q_AUX.Sql.Add('OR     NFI_QTDEPALLET = ' + inttostr(0) + ')') ;
   Q_AUX.Sql.Add('AND    MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open ;

  { If (Q_AUX.fieldbyname('QTDESEMPALLET').asfloat > 0)  then BEGIN
       MessageDlg('Existe NF com Qtde. de Pallet em Branco !',mtWarning,[mbok],0);
       abort ;
   end ;   }
   {/************** miguel *************/}
   {
      alteramos a quantidade de pallets q estao zerados ou nullos
   }



   IF (Q_AUX.fieldbyname('QTDESEMPALLET').asfloat > 0)  then
    begin
         with qrAux do
         begin
             Close;
             sql.Clear;
             sql.Add('Select nfi_codi from nf where mani_id = :mani_id and (nfi_qtdepallet is null or nfi_qtdepallet = 0) ');
             Params[0].AsInteger :=   Q_MANIFMANI_ID.Value;
             open;
         end;

         qrAux.First;
         while not qrAux.Eof do
         begin
              NFI_CODI := qrAux.FIELdbyname('nfi_codi').AsInteger;
               with qrAux2 do
               begin
                   Close;
                   sql.Clear;
                   sql.Add('Update nf set nfi_qtdepallet = 1 where nfi_codi = :nfi_codi');
                   Params[0].AsInteger :=   NFI_CODI;
                   ExecSQL;
               end;
               qrAux.Next;
         end;
    end;

    {/************** end ****************/}




   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
   Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open  ;}


   Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from NF' ) ;
       Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
       Q_AUX.SQL.Add('and ord_id is null and NFI_COBRAR = ''S'' ');
       Q_AUX.open  ;



  // IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin
    IF (Q_AUX.fieldbyname('XVALOR').asinteger > 0)  then begin
      If MessageDlg('Confirma Geração de OE para este Manifesto? Caso confirme a Geração, Veículo Transportador e Transportadora não serão mais alterados!  ',MtConfirmation,[MbYes,
          MbNo],0)=MrYes Then  begin
        try Begin




                  MANID := Q_MANIFMANI_ID.asstring ;
                  STP_OCE.ParamByName('@MANI_ID').Value  := Q_MANIFMANI_ID.asstring ;
                  STP_OCE.ParamByName('@TRANSP').Value  :=  Q_TRANSTRANS_ID.asstring ;
                  STP_OCE.ParamByName('@VEIC').Value  := Q_VEICVEIC_ID.asstring ;
                  STP_OCE.ParamByName('@EMP').Value  := Q_MANIFPAR_ID.asstring ;
                  STP_OCE.ParamByName('@TPCARGA').Value  := Q_MANIFMANI_TIPOCARGA.asstring  ;
                  STP_OCE.ParamByName('@REGCOBRA').Value   := Q_MANIFREG_ID.asstring ;
                  STP_OCE.ParamByName('@VEICCOBRA').Value  := Q_MANIFVEIC_ID_FRETE.asstring ;
                  STP_OCE.ParamByName('@MOT_ID').Value  := Q_MANIFMOT_ID.asstring;
                  STP_OCE.Execproc;




                 {
                 /************ MIGUEL ****************/
                 --APÓS CRIAR UM REGISTRO NA TABELA ORDEM_COLETA_ENTREGA SE DISPAR A TRIGGER
                 --LOAD_OBS Q IRA PEGAR O NUMERO DE LOAD DA TABELA NF REFERENTE AO NUMERO DE MANIFESTO EM QUESTAO
                 CRIADA PROCEDURE LOAD OBS Q É CARREGADA NO FINAL DA PROCEDURE OCE
                 }



             Q_NF55.close ;
             Q_NF55.open ;

             Q_MANIF.close ;
             Q_MANIF.Open  ;
             Q_MANIF.locate('MANI_ID',MANID,[])  ;
          End
           except
             on e : Exception do
          begin
             MessageDlg('Geração de OE, com erro! ' + e.Message ,mtInformation,[mbOk], 0);
             abort  ;
          end;
        end;
         TabbedNotebook1.pageindex := 4 ;
         MessageDlg('Geração de OE efetuada com sucesso!',mtInformation,[mbOk], 0);
      end ;
   end ;

end;

procedure TFManifesto.Q_OCEAfterPost(DataSet: TDataSet);
var
STROCE : string ;
begin
   STROCE := Q_OCEORD_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OCE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_OCE.close ;
   Q_OCE.Open ;

   if STROCE = '' then begin
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add( ' select max(ORD_id) as Numero from ORDEM_COLETA_ENTREGA ' ) ;
      Q_AUX.open ;
      STROCE := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
      Q_OCE.locate('ORD_id',STROCE,[]) ;

end;

procedure TFManifesto.Q_OCEBeforePost(DataSet: TDataSet);
begin
        ///IF (FSeleManifesto.RadioGroup1.itemindex = 0) then
           ///Q_OCEORD_COLETA_ENTREGA.asstring := 'E' ;
         ///else
           ////Q_OCEORD_COLETA_ENTREGA.asstring := 'C'    ;


   IF (Q_OCEVEIC_ID_RECEB.asstring = '')  then begin
       TabbedNotebook1.pageindex := 4 ;
       MessageDlg('Veículo Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBGrid3.SELECTedFIELD := Q_OCEVEIC_ID_RECEB ;
       abort ;
   end ;

   IF (Q_OCEREG_ID.asstring = '') then begin
      TabbedNotebook1.pageindex := 4 ;
       MessageDlg('Região Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBGrid3.SELECTedFIELD := Q_OCEREG_ID ;
       abort ;
   end ;

   IF  Q_OCEORD_REDESPACHO.asstring = 'S' then begin
       IF (Q_TRANS2MUN_ID.asstring = '') then begin
           MessageDlg('Redespacho não possui município cadastrado !',mtWarning,[mbok],0);
           wwDBLookupCombo16.setfocus ;
           abort ;
       end ;
       Q_OCEMUN_ID_ENT.asstring := Q_TRANS2MUN_ID.asstring ;
   end ;




end;

procedure TFManifesto.wwDBLookupCombo15Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo15Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFManifesto.wwDBLookupCombo14Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifesto.wwDBLookupCombo14Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFManifesto.DS_OCEDataChange(Sender: TObject; Field: TField);
begin

    IF Q_MANIFNFI_TRANS.asstring <> 'N' then begin
                If Q_MANIFMANI_ID.asstring <> '' then begin
                   If  (Q_OCEORD_ID.asstring <> '') then begin

                           Q_AUX.close;   {656565}
                           Q_AUX.Sql.Clear;
                           Q_AUX.Sql.Add(' Select count(*) as NAOPREENCHIDO from ORDEM_COLETA_ENTREGA ');
                           Q_AUX.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                           Q_AUX.Sql.Add(' and (VEIC_ID_RECEB is null or VEIC_ID_RECEB = ' + '''' + '' + '''' +')' ) ;
                           Q_AUX.Sql.Add(' and (REG_ID is null or REG_ID = ' + '''' + '' + '''' + ')') ;
                           Q_AUX.open;

                           If  (Q_AUX.fieldbyname('NAOPREENCHIDO').asinteger = 0) and
                               (Q_MANIFCONFIRMA_MANI.asstring = 'N')  then
                               SpeedButton6.enabled := true
                           else
                               SpeedButton6.enabled := false ;

                           IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
                              SpeedButton6.caption := 'Manifesto Baixado'  ;
                              wwDBLookupCombo13.enabled := false;
                              wwDBLookupCombo12.enabled := false;
                              ///SpeedButton6.enabled := false ;
                           end else  begin
                              SpeedButton6.caption := 'Baixar Manifesto' ;
                              wwDBLookupCombo13.enabled := true;
                              wwDBLookupCombo12.enabled := true;
                              ///SpeedButton6.enabled := true ;
                           end;

                           IF Q_OCEORD_REDESPACHO.asstring = 'N' then
                              wwDBLookupCombo16.enabled := false
                             else
                              //wwDBLookupCombo16.enabled := true ;

                   end else {begin
                    SpeedButton6.caption := 'Baixar Manifesto' ;  }
                    SpeedButton6.enabled := false ;
                   //end ;
                end ;
    end ;

    IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then
        btnApagaOCE.Visible := False
    else
        if Q_OCEORD_STATUS.Value = 'A' then
                btnApagaOCE.Visible := True
        else
                btnApagaOCE.Visible := False;

end;

procedure TFManifesto.SpeedButton6Click(Sender: TObject);
var
   MAN2 : string ;
   ACHEI : Boolean;
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////




   If Q_MANIFNFI_TRANS.asstring = 'S' then begin
       If (Q_OCE.state = dsedit) or (Q_OCE.state = dsINSERT) then
           Q_OCE.post ;
   end ;

   //verifica se existem notas q nao geraram Conhecimentos

   with Q_AUX do begin
     Close;
     sql.Clear;
     sql.Add(
       'SELECT Count(*) as achei FROM NF  WHERE'                      +
       '                 MANI_ID = ' + Q_MANIFMANI_ID.asstring +  '  AND  NFI_COBRAR = ''S'' ' +
       '                 AND (ORD_ID is null or ORD_ID = '''') '
     );
     Open;
   end;

   {if Q_AUX.FieldByName('Achei').AsInteger > 0 then begin
        MessageBox(Self.Handle, 'Existem notas fiscais que não geraram Ordem de Entrega', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
   end;   }
















   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('select count(B.OS_ID) as qtde   from NF A,OS B ') ;
   Q_AUX.Sql.Add(' where ') ;
   Q_AUX.Sql.Add(' A.OS_ID = B.OS_ID and    ') ;
   Q_AUX.Sql.Add(' (B.TOS_ID = 5 or ') ;
   Q_AUX.Sql.Add('  A.NFI_CLONE = ' + '''' + 'S' + '''' + ')');
   Q_AUX.Sql.Add(' and A.MANI_ID = ' + Q_MANIFMANI_ID.asstring );
   Q_AUX.open;

   IF (Q_AUX.fieldbyname('qtde').asinteger = 0)  then begin
       IF (Q_MANIFCONFIRMA.asstring = 'N') then begin
          {VERIFICAR CROSS DOCKING, NÃO GERAR ROM SAIDA, POIS ESTA SENDO GERADO}
          MessageDlg('Romaneio de Saída não está confirmado !',mtInformation,[mbOk], 0);
          abort ;
       end ;
   end;

   If Q_MANIFNFI_TRANS.asstring = 'S' then begin
       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add(' Select count(*) as NAOPREENCHIDO from ORDEM_COLETA_ENTREGA ');
       Q_AUX.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.Sql.Add(' and  (VEIC_ID_RECEB is null or VEIC_ID_RECEB = ' + '''' + '' + '''' +')' ) ;
       Q_AUX.Sql.Add(' and  (REG_ID is null or REG_ID = ' + '''' + '' + '''' + ')') ;
       Q_AUX.open;

        If  Q_AUX.fieldbyname('NAOPREENCHIDO').asinteger = 0 then
           SpeedButton6.enabled := true
        else begin
           SpeedButton6.enabled := false ;
           abort ;
        end ;


         If    (Q_OCEORD_ID.asstring <> '') then begin
               Q_AUX.close;   {656565}
               Q_AUX.Sql.Clear;
               Q_AUX.Sql.Add(' Select count(*) as NAOPREENCHIDO from ORDEM_COLETA_ENTREGA ');
               Q_AUX.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
               Q_AUX.Sql.Add(' and  (VEIC_ID_RECEB is null or VEIC_ID_RECEB = ' + '''' + '' + '''' +')' ) ;
               Q_AUX.Sql.Add(' and  (REG_ID is null or REG_ID = ' + '''' + '' + '''' + ')') ;
               Q_AUX.open;

               If  Q_AUX.fieldbyname('NAOPREENCHIDO').asinteger = 0 then
                    SpeedButton6.enabled := true
                  else begin
                     SpeedButton6.enabled := false ;
                     abort ;
                  end ;
         end else  SpeedButton6.enabled := false ;
   end ;

   ACHEI := False;
   Q_NF55.First;
   while not Q_NF55.Eof DO begin
       IF Q_NF55NFI_COBRAR.Value = '' then
          ACHEI := True;

       IF Q_NF55NFI_ENTREGA.Value = '' then
          ACHEI := True;
       Q_NF55.Next;
   end;



   //comentado por miguel 25/11/2011 para poder confirmar manifesto sem mexer nas notas

   {

   IF ACHEI then begin
     MessageDlg('Informações de entrega das notas fiscais incompletas!! !',mtInformation,[mbOk], 0);
     abort ;
   end;
    }

   if Q_OCE.IsEmpty then begin
     if MessageBox(Self.Handle, 'Não existe OE para este manifesto deseja continuar?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
        Abort;
   end;




  If MessageDlg('Confirma a Baixa do Manifesto? Caso confirme, o Manifesto não será mais alterado!  ',MtConfirmation,[MbYes,
      MbNo],0)=MrYes Then  begin
            MAN2 := Q_MANIFMANI_ID.asstring ;

             Q_AUX.close;   {656565}
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add(' Select count(*) as QTDEREENTREGA from NF ');
             Q_AUX.Sql.Add(' where MANI_ID   = ' + Q_MANIFMANI_ID.asstring );
             Q_AUX.Sql.Add(' and NFI_ENTREGA = ' + '''' + 'R' + '''');

             //ADICIONADO FILTRO DE GERAÇAO DE REENTREGA  - MIGUEL
             Q_AUX2.SQL.Add('AND (NFI_GEROU_REENTREGA <> ' + QuotedStr('S') +' OR NFI_GEROU_REENTREGA IS NULL)');

             Q_AUX.open;

             If  Q_AUX.fieldbyname('QTDEREENTREGA').asinteger > 0 then begin
                  /////
                  try
                      Begin

                             {Q_AUX2.close;
                             Q_AUX2.Sql.Clear;
                             Q_AUX2.Sql.Add(' SELECT DISTINCT NFI_EMIT_CLI, OS_ID FROM NF');
                             Q_AUX2.Sql.Add(' where MANI_ID   = ' + Q_MANIFMANI_ID.asstring );
                             Q_AUX2.Sql.Add(' and NFI_ENTREGA = ' + '''' + 'R' + '''');
                             Q_AUX2.open;}


                             Q_AUX2.close;
                             Q_AUX2.Sql.Clear;
                             Q_AUX2.Sql.Add('SELECT DISTINCT A.NFI_EMIT_CLI, A.OS_ID,B.CTT_ID,B.TOS_ID,B.TPCARGA') ;
                             Q_AUX2.Sql.Add('FROM NF A,OS B ') ;
                             Q_AUX2.Sql.Add('WHERE A.MANI_ID   = ' + Q_MANIFMANI_ID.asstring ) ;
                             Q_AUX2.Sql.Add('AND   A.NFI_ENTREGA = ' + '''' +  'R' + '''') ;

                             //ADICIONADO FILTRO DE GERAÇAO DE REENTREGA  - MIGUEL
                             Q_AUX2.SQL.Add('AND (A.NFI_GEROU_REENTREGA <> ' + QuotedStr('S') +' OR A.NFI_GEROU_REENTREGA IS NULL)') ;

                             Q_AUX2.Sql.Add('AND A.OS_ID = B.OS_ID  ') ;
                             Q_AUX2.open ;

                             Q_AUX2.open;
                             While not Q_AUX2.eof do begin



                                          Q_OS.open  ;
                                          Q_CTT.open ;
                                          Q_OS.locate('OS_ID',Q_AUX2.fieldbyname('OS_ID').asstring,[])  ;
                                          Q_CTT.locate('CTT_ID',Q_OSCTT_ID.asstring,[])  ;

                                          {  comentada por miguel para evitar a reentrega.
                                          STP_REENTREGA.ParamByName('@MANI').Value  := Q_MANIFMANI_ID.asstring ;
                                          STP_REENTREGA.ParamByName('@CLIN_ID').Value  :=  Q_AUX2.fieldbyname('NFI_EMIT_CLI').asstring  ;
                                          STP_REENTREGA.ParamByName('@CTT_ID').Value  := Q_AUX2.fieldbyname('CTT_ID').asstring  ;
                                          STP_REENTREGA.ParamByName('@TOS_ID').Value  := Q_AUX2.fieldbyname('TOS_ID').asstring  ;
                                          STP_REENTREGA.ParamByName('@TPCARGA').Value  := Q_AUX2.fieldbyname('TPCARGA').asstring  ;

                                          STP_REENTREGA.ParamByName('@OS_ID_ORIG').Value  := Q_AUX2.fieldbyname('OS_ID').asstring   ;

                                          STP_REENTREGA.Execproc;     }

                                         { IF  (Q_OSTOS_ID.asinteger = 6) or
                                              (Q_OSTOS_ID.asinteger = 5) then
                                             STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'OS'
                                           else
                                             STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'OE';


                                          STP_TPDO_TPOS_OS.ParamByName('@TOS').Value    :=   Q_OSTOS_ID.asinteger;
                                          STP_TPDO_TPOS_OS.ParamByName('@OS').Value    :=  STP_REENTREGA.ParamByName('@OSNOVA').Value ;
                                          STP_TPDO_TPOS_OS.ParamByName('@ADMITE').Value    := Q_CTTCTT_TERCEIRO.asstring ;
                                          STP_TPDO_TPOS_OS.Execproc;

                                          STP_NF.ParamByName('@NF').Value    := STP_REENTREGA.ParamByName('@NOVOID').Value ;
                                          STP_NF.ParamByName('@CFO').Value    := STP_REENTREGA.ParamByName('@CFO').Value ;
                                          STP_NF.ParamByName('@CLIN_ID').Value    := Q_OSCLIN_ID.asinteger ;
                                          STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
                                          STP_NF.Execproc;
                                           }

                                           {       Solicitado para nao importar as notas fiscais na os - miguel
                                           Q_aux4.close;
                                           Q_aux4.Sql.Clear;
                                           Q_aux4.Sql.Add(' UPDATE NF SET OS_ID  = ' + inttostr(STP_REENTREGA.ParamByName('@OSNOVA').Value) );
                                           Q_aux4.Sql.Add(' where (MANI_ID is null or  MANI_ID = ' + '''' + '' + '''' + ')');
                                           Q_aux4.Sql.Add(' and (TDOC_ID = 1 or TDOC_ID = 3)') ;
                                           Q_aux4.Sql.Add(' and OS_ID in(sELECT A.OS_ID FROM  NF A,OS B ' );
                                           Q_aux4.Sql.Add('where A.OS_ID = B.OS_ID and   ');
                                           Q_aux4.Sql.Add('A.MANI_ID is null and ') ;
                                           Q_aux4.Sql.Add('A.TDOC_ID =  ' + inttostr(1)) ;
                                           Q_aux4.Sql.Add('and B.CLIN_ID = ' + Q_OSCLIN_ID.asstring) ;
                                           Q_aux4.Sql.Add('and B.CTT_ID = ' +  Q_OSCTT_ID.asstring) ;
                                           /////Q_aux4.Sql.Add('and A.NFI_CLONE = ' +  '''' + 'N' + '''') ;
                                           Q_aux4.Sql.Add('and B.TPCARGA = ' + '''' + Q_OSTPCARGA.asstring + '''' + ')') ;
                                           Q_aux4.ExecSql;


                                           Q_aux4.close;
                                           Q_aux4.Sql.Clear;
                                           Q_aux4.Sql.Add(' UPDATE NF_TPRODUTO SET OS_ID  = ' + inttostr(STP_REENTREGA.ParamByName('@OSNOVA').Value) );
                                           Q_aux4.Sql.Add(' where  NFI_CODI in(SELECT NFI_CODI FROM NF WHERE') ;
                                           Q_aux4.Sql.Add(' OS_ID = ' + inttostr(STP_REENTREGA.ParamByName('@OSNOVA').Value) + ')');
                                           Q_aux4.ExecSql;
                                                            }
                                           Q_OS.close ;
                                           Q_CTT.close ;

                                   Q_AUX2.next ;
                             end ;











                      End
                    except
                      on e :Exception do
                       begin
                         MessageDlg('Geração de Reentrega, com erro!' + e.Message ,mtInformation,[mbOk], 0);
                         abort  ;
                       end;
                    end;
                      MessageDlg('Geração de Reentrega efetuada com sucesso!',mtInformation,[mbOk], 0);
                  //end ;
                  ////
             end;




           //efetua o pagamento do frete 50%
           Q_AUX2.close;
           Q_AUX2.SQL.Clear;
           Q_AUX2.sql.Add(
             ' SELECT DISTINCT A.NFI_EMIT_CLI   '+
             ' FROM NF A with (nolock) , OS B  with (nolock)  '+
             ' WHERE A.MANI_ID   =    '+  Q_MANIFMANI_ID.AsString +
             ' AND   (A.NFI_ENTREGA = ''R'' or a.NFI_ENTREGA = ''D'')   '//+
             //' and a.NFI_COBRAR = ''N'' AND A.OS_ID = B.OS_ID '
              );
           Q_AUX2.open ;
           if Q_AUX2.FieldByName('NFI_EMIT_CLI').AsString <> '' then begin
                  qrClinAux.Close;
                   qrClinAux.Parameters[0].Value := Q_AUX2.FieldByName('NFI_EMIT_CLI').AsInteger;
                   qrClinAux.Open;


                  //    CLIN_PAGAFRETEDEV
                  if qrClinAuxCLIN_PAGAFRETEDEV.AsString = 'S' then begin
                      qrPgtoFrete.Close;
                      qrPgtoFrete.Open;
                      qrPgtoFrete.Append;
                      qrPgtoFreteTRANS_ID.Value := Q_MANIFTRANS_ID.AsInteger;
                      qrPgtoFreteDATA.Value := Now;
                      qrPgtoFreteREG_ID.Value := Q_MANIFREG_ID.AsInteger;
                      qrPgtoFreteVLR_FRETE.Value := q_manifMANI_VFRETEPAG.AsFloat / 2;
                      qrPgtoFreteOBS.Value := 'Gerado por reentrega de nota fiscal, manifesto: ' + Q_MANIFMANI_ID.AsString;
                      qrPgtoFreteDATA_FECHAMENTO.Value := Now;
                      qrPgtoFreteMOT_ID.Value := -1;
                      qrPgtoFrete.Post;
                  end;
           end;



            Q_aux.Sql.Clear;
            Q_aux.Sql.Add(' UPDATE MANIFESTO SET CONFIRMA_MANI = ' + '''' + 'S' + '''' );
            Q_aux.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
            //IF (Q_AUX2.fieldbyname('QTDE').asinteger  = 1)  then
               ///Q_aux.Sql.Add(' and CLIF_ID = ' + Q_AUX2.fieldbyname('QTDE').asstring);
            Q_aux.ExecSql;

            Q_OCE.close ;
            Q_OCE.open ;

            Q_MANIF.close ;
            Q_MANIF.Open ;
            Q_MANIF.locate('MANI_ID',MAN2,[])  ;
  end ;



end;

procedure TFManifesto.SpeedButton7Click(Sender: TObject);
begin
       Q_MANIf2.open ;
       wwSearchDialog1.execute ;
       Q_MANIf.locate('MANI_ID',Q_MANIf2MANI_ID.asstring,[]);
       Q_MANIf2.close ;
end;

procedure TFManifesto.SpeedButton8Click(Sender: TObject);
var
  MANIANTERIOR : string ;
  MANIANTERIOR2 : string ;
begin

   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////





   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT count(ESTQ_ID) AS XVALOR from ESTOQUE' ) ;
   Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open  ;

   IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0) then begin
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
         Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
         Q_AUX.open  ;

         IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin
               if MessageDlg('Confirma exclusão do Manifesto ?  '
                         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin
                         Q_AUX.close;
                         Q_AUX.Sql.Clear;
                         Q_AUX.Sql.Add('DELETE FROM MANIFESTO_RESUMOPRODUTO ');
                         Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                         Q_AUX.ExecSql;

                         Q_AUX.close;
                         Q_AUX.Sql.Clear;
                         Q_AUX.Sql.Add('UPDATE NF set MANI_ID = null');
                         Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                         Q_AUX.ExecSql;


                         MANIANTERIOR := Q_MANIFMANI_ID.asstring    ;
                         Q_MANIF.findprior ;
                         MANIANTERIOR2 := Q_MANIFMANI_ID.asstring   ;
                         Q_MANIF.locate('MANI_ID',MANIANTERIOR,[])  ;

                         Q_AUX.close;
                         Q_AUX.Sql.Clear;
                         Q_AUX.Sql.Add('DELETE FROM MANIFESTO');
                         Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                         Q_AUX.ExecSql;

                         Q_MANIF.close;
                         Q_MANIF.open ;

                         If (MANIANTERIOR <> '') then
                            Q_MANIF.locate('MANI_ID',MANIANTERIOR2,[])  ;

                         MessageDlg('Manifesto ' + MANIANTERIOR +', foi excluído com sucesso!',mtWarning,[mbok],0);
                         TabbedNotebook1.pageindex := 0 ;
               end  ;
         end else begin
              MessageDlg('Manifesto não poderá ser excluído, foi gerado Ordem de Entrega para este Manifesto !',mtWarning,[mbok],0);
              abort ;
         end ;

   end else begin
       IF Q_MANIFCONFIRMA.asstring = 'S' then begin
               Q_AUX.close ;
               Q_AUX.Sql.Clear ;
               Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
               Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
               Q_AUX.open  ;
               IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin
                     if MessageDlg('Confirma exclusão do Manifesto ?  '
                         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

                               try
                                Begin
                                   STP_DELETAMANIFESTO.ParamByName('@MANI_ID').Value    :=  Q_MANIFMANI_ID.asinteger ;
                                   STP_DELETAMANIFESTO.Execproc;
                                End
                               except
                                 begin
                                   MessageDlg('Geração de Exclusão de Manifesto, com erro !',mtInformation,[mbOk], 0);
                                   abort  ;
                                 end;
                               end;

                               Q_AUX.close;
                               Q_AUX.Sql.Clear;
                               Q_AUX.Sql.Add('DELETE FROM MANIFESTO_RESUMOPRODUTO ');
                               Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                               Q_AUX.ExecSql;

                               Q_AUX.close;
                               Q_AUX.Sql.Clear;
                               Q_AUX.Sql.Add('UPDATE NF set MANI_ID = null');
                               Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                               Q_AUX.ExecSql;


                               MANIANTERIOR := Q_MANIFMANI_ID.asstring    ;
                               Q_MANIF.findprior ;
                               MANIANTERIOR2 := Q_MANIFMANI_ID.asstring   ;
                               Q_MANIF.locate('MANI_ID',MANIANTERIOR,[])  ;

                               Q_AUX.close;
                               Q_AUX.Sql.Clear;
                               Q_AUX.Sql.Add('DELETE FROM MANIFESTO');
                               Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                               Q_AUX.ExecSql;

                               Q_MANIF.close;
                               Q_MANIF.open ;

                               If (MANIANTERIOR <> '') then
                                  Q_MANIF.locate('MANI_ID',MANIANTERIOR2,[])  ;

                             MessageDlg('Manifesto ' + MANIANTERIOR +', foi excluído com sucesso!',mtWarning,[mbok],0);
                             TabbedNotebook1.pageindex := 0 ;
                     end ;
               end else begin
                    MessageDlg('Manifesto não poderá ser excluído, foi gerado Ordem de Entrega para este Manifesto !',mtWarning,[mbok],0);
                    abort ;
               end ;
       end else begin
         MessageDlg('Para excluir este Manifesto, o Romaneio de Saída não pode estar em aberto !',mtWarning,[mbok],0);
         abort ;
       end ;
   end ;
end;

procedure TFManifesto.FormShow(Sender: TObject);
begin
    //Q_ESTQ.open ;
end;

procedure TFManifesto.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    If Q_NF55NFI_REDESPACHO.asstring = 'S' then  begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clgreen;
              AFont.Color := clwhite;
           End else begin
              ABrush.color := clgreen;
              Afont.color := clwhite;
           end ;
     End ;

end;

procedure TFManifesto.SpeedButton9Click(Sender: TObject);
begin

   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////

       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('UPDATE NF set NFI_ENTREGA = ' + '''' + 'S' + '''');
       Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.Sql.Add(' and (nfi_gerou_reentrega <> ' + QuotedStr('S') +  ' or nfi_gerou_reentrega is null) ' );
       //ShowMessage(Q_AUX.sql.Text);
       Q_AUX.ExecSql;

       Q_NF55.close ;
       Q_NF55.Open  ;


end;

procedure TFManifesto.SpeedButton10Click(Sender: TObject);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////

       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('UPDATE NF set NFI_ENTREGA = ' + '''' + 'R' + '''');
       Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.Sql.Add(' and (nfi_gerou_reentrega <> ' + QuotedStr('S')+  ' or nfi_gerou_reentrega is null) ' );
       Q_AUX.ExecSql;

       Q_NF55.close ;
       Q_NF55.Open  ;



end;

procedure TFManifesto.SpeedButton11Click(Sender: TObject);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////


       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('UPDATE NF set NFI_ENTREGA = ' + '''' + 'D' + '''');
       Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.Sql.Add(' and (nfi_gerou_reentrega <> ' + QuotedStr('S')+  ' or nfi_gerou_reentrega is null) ' );
       Q_AUX.ExecSql;

       Q_NF55.close ;
       Q_NF55.Open  ;



end;

procedure TFManifesto.SpeedButton12Click(Sender: TObject);
var
    hojemaisum : tdatetime ;
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////


       hojemaisum := (NOW - 1);
       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('UPDATE NF set NFI_DTENTREGA_FIM = ' + ''''+ FormatDateTime('MM/DD/YYYY', hojemaisum) + '''' ) ;
       Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.Sql.Add(' and (nfi_gerou_reentrega <> ' + QuotedStr('S')+  ' or nfi_gerou_reentrega is null) ' );
       Q_AUX.ExecSql;

       Q_NF55.close ;
       Q_NF55.Open  ;
end;

procedure TFManifesto.DS_NFDataChange(Sender: TObject; Field: TField);
begin
     if Q_MANIFMANI_ID.asstring <> '' THEN BEGIN

       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('SELECT SUM(NFI_TOTA) as TOT FROM NF');
       Q_AUX.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.open ;

       Label57.caption := formatfloat('###,###,##0.00',Q_AUX.fieldbyname('TOT').asfloat)  ;
     END ;









end;

procedure TFManifesto.BitBtn5Click(Sender: TObject);
begin
      PANEL9.visible := false ;

      PANEL2.enabled := true  ;
      TabbedNotebook1.enabled := true  ;
      Q_NFReen.close ;
end;

procedure TFManifesto.BitBtn4Click(Sender: TObject);
begin
       If (Q_NFReen.state = dsedit ) or
          (Q_NFReen.state = dsinsert ) then Q_NFReen.post ;

      PANEL9.visible := false ;
      PANEL2.enabled := true  ;
      TabbedNotebook1.enabled := true  ;
      Q_NFReen.close ;
end;

procedure TFManifesto.SpeedButton13Click(Sender: TObject);
begin



   Q_NFReen.close;
   Q_NFReen.SQL.CLEAR;
   Q_NFReen.SQL.ADD('SELECT  *  from NF');
   Q_NFReen.SQL.ADD('where NFI_CLONE = ' + '''' + 'S' + '''');
   Q_NFReen.SQL.ADD('and MANI_ID is null');
   IF wwDBLookupCombo17.text <> '' then
      Q_NFReen.SQL.ADD('and  NFI_EMIT_CLI = ' + Q_CLINBFCLIN_ID.asstring);
   Q_NFReen.SQL.ADD('order by NFI_NUMERO');
   Q_NFReen.Open;

end;

procedure TFManifesto.wwDBLookupCombo17CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
      Q_NFReen.close ;
end;

procedure TFManifesto.wwDBLookupCombo17Exit(Sender: TObject);
begin
   IF  wwDBLookupCombo17.text <> '' then begin
       Q_NFReen.close;
       Q_NFReen.SQL.CLEAR;
       Q_NFReen.SQL.ADD('SELECT  *  from NF');
       Q_NFReen.SQL.ADD('where NFI_CLONE = ' + '''' + 'S' + '''');
       Q_NFReen.SQL.ADD('and MANI_ID is null');
       IF wwDBLookupCombo17.text <> '' then
          Q_NFReen.SQL.ADD('and  NFI_EMIT_CLI = ' + Q_CLINBFCLIN_ID.asstring);
       Q_NFReen.SQL.ADD('order by NFI_NUMERO');
       Q_NFReen.Open;
   end else Q_NFReen.close ;

end;

procedure TFManifesto.Q_NFReenAfterPost(DataSet: TDataSet);
var
nf : string ;
begin

   nf := Q_NFReenNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NFReen])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NFReen.close ;
   Q_NFReen.Open ;

   Q_NFReen.locate('NFI_CODI',nf,[])    ;




end;

procedure TFManifesto.Q_NF55BeforePost(DataSet: TDataSet);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////



   IF (Q_NF55NFI_COBRAR.asstring = '')  then begin
       TabbedNotebook1.pageindex := 3 ;
       MessageDlg('Cobrar (S/N)? é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBComboBox3.setfocus ;
       abort ;
   end ;


   if (Q_NF55NFI_ENTREGA.Value = 'R') or (Q_NF55NFI_ENTREGA.Value = 'D') then begin
       if Q_NF55COD_EDI.Value = '' then begin
          MessageDlg('Informe o codigo de ocorrências EDI !',mtWarning,[mbok],0);
         // cboEDIOcorrem.setfocus ;
          abort ;
       end;
   end;

  // if (Q_NF55NFI_ENTREGA.Value = 'S')  then
  //      Q_NF55COD_EDI.Value := '';


   with Q_AUX2 do
   begin
       Close;
       sql.Clear;
       sql.Add('select nfi_gerou_reentrega from nf where nfi_codi = ' + Q_NF55NFI_CODI.AsString );
       Open;
   end;

      IF (Q_AUX2.FieldByName('nfi_gerou_reentrega').asstring = 'S')  then begin
       MessageDlg('Já foi gerada nota de reentrega, não é possível alterar estas informações!',mtWarning,[mbok],0);
       abort ;
   end ;

end;

procedure TFManifesto.btn1Click(Sender: TObject);
begin
        pnlErroRomaneio.Visible := False;
end;

procedure TFManifesto.VERIFICA_NOTA_ROMANEIO;
VAR I : Integer;
begin
      {qrManif_produto.CLOSE;
      qrManif_produto.Params[0].AsInteger := Q_MANIFMANI_ID.Value;
      qrManif_produto.Open;

      StringGrid1.Cells[1,0] := 'PRODUTO';
      StringGrid1.Cells[2,0] := 'QTDE NOTAS FISCAIS';
      StringGrid1.Cells[3,0] := 'QTDE ROMANEIO';

      I := 1;


      qrManif_produto.First;
      while not qrManif_produto.Eof do
      begin
          qrManifEstoque.close;
          qrManifEstoque.Params[0].AsInteger := Q_MANIFMANI_ID.Value;
          qrManifEstoque.Params[1].AsInteger := qrManif_produtoPRO_ID.Value;
          qrManifEstoque.Open;

          if qrManif_produtoQTDE.Value <> qrManifEstoqueqtderetira.Value then
          begin
              pnlErroRomaneio.Visible := TRUE;
              StringGrid1.Cells[1,I] := qrManif_produtoPRO_COD.AsString;
              StringGrid1.Cells[2,I] := qrManif_produtoQTDE.AsString;
              StringGrid1.Cells[3,I] := qrManifEstoqueqtderetira.AsString;
              I := I + 1;
              StringGrid1.RowCount := I;
          end;


          qrManif_produto.Next
      end;}
end;

procedure TFManifesto.Button1Click(Sender: TObject);
begin
  VERIFICA_NOTA_ROMANEIO;
end;

procedure TFManifesto.DBG_INFICalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If (Q_ESTQ2ESTQ_QTDE_RETIRA.Value > 0) and (Q_ESTQ2MANI_ID.AsString <> '')  then
        Begin
                Abrush.Color := $00FFAC51;
                AFont.Color := clWhite;
        End Else Begin
                Abrush.Color := clWindow;
        End;

        If Highlight then
                AFont.Color := clBlack
        else
                Afont.Color := clBlack;
end;

procedure TFManifesto.btnEtiquetaManiClick(Sender: TObject);
begin
     // MANID := Q_MANIFMANI_ID.asstring ;
      STP_OCE.ParamByName('@MANI_ID').Value  := Q_MANIFMANI_ID.asstring ;
      STP_OCE.ParamByName('@TRANSP').Value  :=  Q_TRANSTRANS_ID.asstring ;
      STP_OCE.ParamByName('@VEIC').Value  := Q_VEICVEIC_ID.asstring ;
      STP_OCE.ParamByName('@EMP').Value  := Q_MANIFPAR_ID.asstring ;
      STP_OCE.ParamByName('@TPCARGA').Value  := Q_MANIFMANI_TIPOCARGA.asstring  ;
      STP_OCE.ParamByName('@REGCOBRA').Value   := Q_MANIFREG_ID.asstring ;
      STP_OCE.ParamByName('@VEICCOBRA').Value  := Q_MANIFVEIC_ID_FRETE.asstring ;
      STP_OCE.ParamByName('@MOT_ID').Value  := Q_MANIFMOT_ID.asstring;
      STP_OCE.Execproc;
end;

procedure TFManifesto.btnGeraReentregaClick(Sender: TObject);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////




{
Obs: Foi criada uma trigger na tabela estoque a qual apaga o registro com tag
duplicada, est rotina est em teste.

Miguel.
}



       // if Q_NF55.State in (dsEdit, dsInsert) then
       // begin
       //     Q_NF55.Post;
       // end;

        Q_NF55.First;
        while not Q_NF55.Eof do
        begin
                if Q_NF55NFI_ENTREGA.Value = 'R' then
                begin
                    if Q_NF55NFI_COBRAR.AsString = '' then
                    begin
                        MessageBox(Self.Handle, 'Informe se a reentrega é cobrada ou não', 'Erro', MB_OK + MB_ICONERROR);
                        Abort;
                    end;
                end;
                Q_NF55.Next;
        end;

        if MessageBox(Self.Handle, 'Confirma a geração de notas fiscais de reentrega ?', 'Informação',
                        MB_YESNO + MB_ICONQUESTION) = 6 then
        begin
                try
                      Begin


                             Q_AUX2.close;
                             Q_AUX2.Sql.Clear;
                             Q_AUX2.Sql.Add('SELECT DISTINCT A.NFI_EMIT_CLI, A.OS_ID,B.CTT_ID,B.TOS_ID,B.TPCARGA') ;
                             Q_AUX2.Sql.Add('FROM NF A,OS B ') ;
                             Q_AUX2.Sql.Add('WHERE A.MANI_ID   = ' + Q_MANIFMANI_ID.asstring ) ;
                             Q_AUX2.Sql.Add('AND   A.NFI_ENTREGA = ' + '''' +  'R' + '''') ;

                             //ADICIONADO FILTRO DE GERAÇAO DE REENTREGA  - MIGUEL
                             Q_AUX2.SQL.Add('AND (A.NFI_GEROU_REENTREGA <> ' + QuotedStr('S') +' OR A.NFI_GEROU_REENTREGA IS NULL)') ;

                             Q_AUX2.Sql.Add('AND A.OS_ID = B.OS_ID  ') ;
                             Q_AUX2.open ;

                             Q_AUX2.open;
                             While not Q_AUX2.eof do begin



                                          Q_OS.open  ;
                                          Q_CTT.open ;
                                          Q_OS.locate('OS_ID',Q_AUX2.fieldbyname('OS_ID').asstring,[])  ;
                                          Q_CTT.locate('CTT_ID',Q_OSCTT_ID.asstring,[])  ;




                                          STP_REENTREGA.ParamByName('@MANI').Value  := Q_MANIFMANI_ID.asstring ;
                                          STP_REENTREGA.ParamByName('@CLIN_ID').Value  :=  Q_AUX2.fieldbyname('NFI_EMIT_CLI').asstring  ;
                                          STP_REENTREGA.ParamByName('@CTT_ID').Value  := Q_AUX2.fieldbyname('CTT_ID').asstring  ;
                                          STP_REENTREGA.ParamByName('@TOS_ID').Value  := Q_AUX2.fieldbyname('TOS_ID').asstring  ;
                                          STP_REENTREGA.ParamByName('@TPCARGA').Value  := Q_AUX2.fieldbyname('TPCARGA').asstring  ;

                                          STP_REENTREGA.ParamByName('@OS_ID_ORIG').Value  := Q_AUX2.fieldbyname('OS_ID').asstring   ;

                                          STP_REENTREGA.Execproc;

                                          IF  (Q_OSTOS_ID.asinteger = 6) or
                                              (Q_OSTOS_ID.asinteger = 5) then
                                             STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'OS'
                                           else
                                             STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'OE';


                                          STP_TPDO_TPOS_OS.ParamByName('@TOS').Value    :=   Q_OSTOS_ID.asinteger;
                                          STP_TPDO_TPOS_OS.ParamByName('@OS').Value    :=  STP_REENTREGA.ParamByName('@OSNOVA').Value ;
                                          STP_TPDO_TPOS_OS.ParamByName('@ADMITE').Value    := Q_CTTCTT_TERCEIRO.asstring ;
                                          STP_TPDO_TPOS_OS.Execproc;

                                      //    STP_NF.ParamByName('@NF').Value    := STP_REENTREGA.ParamByName('@NOVOID').Value ;
                                      //    STP_NF.ParamByName('@CFO').Value    := STP_REENTREGA.ParamByName('@CFO').Value ;
                                      //    STP_NF.ParamByName('@CLIN_ID').Value    := Q_OSCLIN_ID.asinteger ;
                                      //    STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
                                      //    STP_NF.Execproc;





                                           Q_OS.close ;
                                           Q_CTT.close ;

                                   Q_AUX2.next ;
                             end ;


                      End
                    except
                       begin
                         MessageDlg('Geração de Reentrega, com erro!',mtInformation,[mbOk], 0);
                         abort  ;
                       end;
                    end;
                      MessageDlg('Geração de Reentrega efetuada com sucesso!',mtInformation,[mbOk], 0);

        end;   //end if
end;

function TFManifesto.AlteraManifesto: Boolean;
var altera : Boolean;
begin
//

 altera := False;

 if FMenu.SqlUsuariosALTERA_MANIFESTO.AsString = 'S' then
        altera := True;

 Result := altera;

end;

procedure TFManifesto.Q_MANIFBeforeInsert(DataSet: TDataSet);
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////

end;

procedure TFManifesto.btnApagaOCEClick(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Deseja eliminar a OC selecionada?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
   begin
     try
        FMenu.ADOConnection.BeginTrans;
        //atualizamos a nota fiscal deixando liberada para nova geração
        with qrApagaOE do begin
            close;
            sql.Clear;
            sql.Add('update nf set ord_id = null where ord_id = ' + Q_OCEORD_ID.AsString);
            ExecSQL;
        end;
        with qrApagaOE do begin
            close;
            sql.Clear;
            sql.Add('UPDATE ORDEM_COLETA_ENTREGA SET  ORD_STATUS = ''C'' where ord_id = ' + Q_OCEORD_ID.AsString);
            ExecSQL;
        end;

        FMenu.ADOConnection.CommitTrans;

     except
           FMenu.ADOConnection.RollbackTrans;
           MessageBox(Self.Handle, 'Aconteceu um erro ao apagar as informações', 'Erro', MB_OK + MB_ICONERROR)  ;
     end;
   end;
end;

procedure TFManifesto.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   wwDBLookupCombo10.LookupValue := wwDBLookupCombo1.LookupValue;
   wwDBLookupCombo10.Text := wwDBLookupCombo1.Text;
end;

procedure TFManifesto.SpeedButton17Click(Sender: TObject);
begin
   pnlLote.Visible := False;
end;

procedure TFManifesto.SpeedButton15Click(Sender: TObject);
begin
  edtLote.Text := '';
  pnlLote.Visible := True;
end;

procedure TFManifesto.SpeedButton16Click(Sender: TObject);
begin

      Q_ESTQ2.close ;
      Q_ESTQ2.Sql.Clear ;
      Q_ESTQ2.Sql.Add('Select A.*,B.POS_COD,C.AR_NOME from ');
      Q_ESTQ2.SQL.ADD('ESTOQUE A  LEFT OUTER JOIN ');
      Q_ESTQ2.SQL.ADD('AREA_POSICOES B ON A.POS_ID = B.POS_ID, ');
      Q_ESTQ2.SQL.ADD('AREA C') ;
      Q_ESTQ2.Sql.Add('Where A.ESTQ_DT_ENTRADA is not null  ');
      Q_ESTQ2.Sql.Add(' and A.AR_ID = C.AR_ID ') ;
      Q_ESTQ2.Sql.Add('and A.ESTQ_dt_SAIDA is  null  ');
      Q_ESTQ2.Sql.Add('and ((A.MANI_ID is null and A.PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
      Q_ESTQ2.Sql.Add(' or (A.PRO_ID = ' + Q_ESTQPRO_ID.asstring +  ' AND   A.MANI_Id = ' + Q_MANIFMANI_ID.asstring +')'+')' );
      Q_ESTQ2.SQL.ADD('order by A.ESTQ_lote ');
        ///Q_ESTQ2.Sql.Add(' PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc ');
        Q_ESTQ2.OPEN ;

        if Q_ESTQ2.Locate('ESTQ_lote', edtLote.Text, [loCaseInsensitive, loPartialKey]) = False then
        ShowMessage('Lote não encontrado');

      pnlLote.Visible := False;
   
end;

procedure TFManifesto.SpeedButton18Click(Sender: TObject);
begin
      Q_ESTQ2.close ;
      Q_ESTQ2.Sql.Clear ;
      Q_ESTQ2.Sql.Add('Select A.*,B.POS_COD,C.AR_NOME from ');
      Q_ESTQ2.SQL.ADD('ESTOQUE A  LEFT OUTER JOIN ');
      Q_ESTQ2.SQL.ADD('AREA_POSICOES B ON A.POS_ID = B.POS_ID, ');
      Q_ESTQ2.SQL.ADD('AREA C') ;
      Q_ESTQ2.Sql.Add('Where A.ESTQ_DT_ENTRADA is not null  ');
      Q_ESTQ2.Sql.Add(' and A.AR_ID = C.AR_ID ') ;
      Q_ESTQ2.Sql.Add('and A.ESTQ_dt_SAIDA is  null  ');
      Q_ESTQ2.Sql.Add('and ((A.MANI_ID is null and A.PRO_ID = ' + Q_ESTQPRO_ID.asstring+')') ;
      Q_ESTQ2.Sql.Add(' or (A.PRO_ID = ' + Q_ESTQPRO_ID.asstring +  ' AND   A.MANI_Id = ' + Q_MANIFMANI_ID.asstring +')'+')' );
      Q_ESTQ2.SQL.ADD('order by A.ROM_DTVENCTO ');
        ///Q_ESTQ2.Sql.Add(' PRO_ID,AR_ID,POS_ID,ESTQ_QTDE desc ');
        Q_ESTQ2.OPEN ;

        if Q_ESTQ2.Locate('ROM_DTVENCTO', edtVenc.Text, [loCaseInsensitive, loPartialKey]) = False then
        ShowMessage('Vencimento não encontrado');

        pnlLote.Visible := False;
end;

procedure TFManifesto.btnClick(Sender: TObject);
begin
   frmEtiquetaManifesto  := TfrmEtiquetaManifesto.Create(Self);
   frmEtiquetaManifesto.qrBusca.CLOSE;
   frmEtiquetaManifesto.qrBusca.Parameters[0].Value := Q_MANIFMANI_ID.AsInteger;
   frmEtiquetaManifesto.qrBusca.Open;
   frmEtiquetaManifesto.ShowModal;
end;

procedure TFManifesto.Button2Click(Sender: TObject);
var
   MANID : string ;
   NFI_CODI : Integer;
begin
   //Miguel - verifica se o usuário pode ou nao alterar
   if AlteraManifesto = False then
   begin
       MessageBox(Self.Handle, pchar('Não é possível alterar as informações!' + #13 + 'Permissões insuficientes'),'Informação do Sistema',
                 MB_OK + MB_ICONEXCLAMATION );
       Abort;
   end;
   ///////////////////////////////////////////////////////////////////////////////////////


   IF Q_NF55.State IN [DSEDIT, DSINSERT] then
        Q_NF55.Post;



   {with Q_AUX do begin
       close;
       sql.Clear;
       sql.Add('Update nf set ORD_ID = NULL WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring);
       ExecSQL;
   end;   }

   if Q_MANIFREG_ID.asstring = '' then begin
       ShowMessage('Informe a regiao!');
       Abort;
   end;

   if   Q_VEICVEIC_ID.asstring = '' then begin
       ShowMessage('Informe o veiculo');
       Abort;
   end;

   if Q_MANIFTRANS_ID.AsString = '' then begin
       ShowMessage('informe a transportadora');
       Abort;
   end;

   if Q_MANIFVEIC_ID_FRETE.asstring = '' then begin
       ShowMessage('Informe o veiculo a cobrar');
       Abort;
   end;




   IF (wwDBLookupCombo1.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Veículo Transportador é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo1.setfocus ;
       abort ;
   end ;

   IF (wwDBLookupCombo2.text = '')  then begin
       TabbedNotebook1.pageindex := 0 ;
       MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo2.setfocus ;
       abort ;
   end ;


   If (Q_NF55.state = dsedit) then begin
      Q_NF55.post ;
    //  abort ;
   end ;


   // verifica se existe Nota Fiscal com o campo NFI_COBRAR = BRANCO
   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT COUNT(*) as QTDESEMCOBRAR FROM NF') ;
   Q_AUX.Sql.Add('WHERE (NFI_COBRAR IS NULL ') ;
   Q_AUX.Sql.Add('OR    NFI_COBRAR = ' + '''' + '' + '''' + ')') ;
   Q_AUX.Sql.Add('AND   MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open ;

   If (Q_AUX.fieldbyname('QTDESEMCOBRAR').asfloat > 0)  then BEGIN
       MessageDlg('Cobrar (S/N) é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBComboBox3.setfocus ;
       abort ;
   end ;  }


   // verifica se existe Nota Fiscal com o campo Qtde Pallet = BRANCO
   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT COUNT(*) as QTDESEMPALLET FROM NF') ;
   Q_AUX.Sql.Add('WHERE (NFI_QTDEPALLET IS NULL ') ;
   Q_AUX.Sql.Add('OR     NFI_QTDEPALLET = ' + inttostr(0) + ')') ;
   Q_AUX.Sql.Add('AND    MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open ;

  { If (Q_AUX.fieldbyname('QTDESEMPALLET').asfloat > 0)  then BEGIN
       MessageDlg('Existe NF com Qtde. de Pallet em Branco !',mtWarning,[mbok],0);
       abort ;
   end ;   }
   {/************** miguel *************/}
   {
      alteramos a quantidade de pallets q estao zerados ou nullos
   }



   IF (Q_AUX.fieldbyname('QTDESEMPALLET').asfloat > 0)  then
    begin
         with qrAux do
         begin
             Close;
             sql.Clear;
             sql.Add('Select nfi_codi from nf where mani_id = :mani_id and (nfi_qtdepallet is null or nfi_qtdepallet = 0) ');
             Params[0].AsInteger :=   Q_MANIFMANI_ID.Value;
             open;
         end;

         qrAux.First;
         while not qrAux.Eof do
         begin
              NFI_CODI := qrAux.FIELdbyname('nfi_codi').AsInteger;
               with qrAux2 do
               begin
                   Close;
                   sql.Clear;
                   sql.Add('Update nf set nfi_qtdepallet = 1 where nfi_codi = :nfi_codi');
                   Params[0].AsInteger :=   NFI_CODI;
                   ExecSQL;
               end;
               qrAux.Next;
         end;
    end;

    {/************** end ****************/}




   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
   Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open  ;}


   Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from NF' ) ;
       Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
       Q_AUX.SQL.Add('and ord_id is null and NFI_COBRAR = ''S'' ');
       Q_AUX.open  ;



  // IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin
    IF (Q_AUX.fieldbyname('XVALOR').asinteger > 0)  then begin
      If MessageDlg('Confirma Geração de OE para este Manifesto? Caso confirme a Geração, Veículo Transportador e Transportadora não serão mais alterados!  ',MtConfirmation,[MbYes,
          MbNo],0)=MrYes Then  begin
        try Begin




                  MANID := Q_MANIFMANI_ID.asstring ;
                  STP_OCE.ParamByName('@MANI_ID').Value  := Q_MANIFMANI_ID.asstring ;
                  STP_OCE.ParamByName('@TRANSP').Value  :=  Q_TRANSTRANS_ID.asstring ;
                  STP_OCE.ParamByName('@VEIC').Value  := Q_VEICVEIC_ID.asstring ;
                  STP_OCE.ParamByName('@EMP').Value  := Q_MANIFPAR_ID.asstring ;
                  STP_OCE.ParamByName('@TPCARGA').Value  := Q_MANIFMANI_TIPOCARGA.asstring  ;
                  STP_OCE.ParamByName('@REGCOBRA').Value   := Q_MANIFREG_ID.asstring ;
                  STP_OCE.ParamByName('@VEICCOBRA').Value  := Q_MANIFVEIC_ID_FRETE.asstring ;
                  STP_OCE.ParamByName('@MOT_ID').Value  := Q_MANIFMOT_ID.asstring;
                  STP_OCE.Execproc;




                 {
                 /************ MIGUEL ****************/
                 --APÓS CRIAR UM REGISTRO NA TABELA ORDEM_COLETA_ENTREGA SE DISPAR A TRIGGER
                 --LOAD_OBS Q IRA PEGAR O NUMERO DE LOAD DA TABELA NF REFERENTE AO NUMERO DE MANIFESTO EM QUESTAO
                 CRIADA PROCEDURE LOAD OBS Q É CARREGADA NO FINAL DA PROCEDURE OCE
                 }



             Q_NF55.close ;
             Q_NF55.open ;

             Q_MANIF.close ;
             Q_MANIF.Open  ;
             Q_MANIF.locate('MANI_ID',MANID,[])  ;
          End
           except
             on e : Exception do
          begin
             MessageDlg('Geração de OE, com erro! ' + e.Message ,mtInformation,[mbOk], 0);
             abort  ;
          end;
        end;
         TabbedNotebook1.pageindex := 4 ;
         MessageDlg('Geração de OE efetuada com sucesso!',mtInformation,[mbOk], 0);
      end ;
   end ;


end;

end.



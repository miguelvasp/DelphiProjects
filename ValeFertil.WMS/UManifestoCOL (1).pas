unit UManifestoCOL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, DBCtrls, Buttons, StdCtrls,
  ComCtrls, Tabnotbk, wwdbedit, Mask, Wwdotdot, Wwdbcomb, wwdblook, Db,
  DBTables, Wwdatsrc, Wwquery, wwstorep, wwDialog, wwidlg, ADODB;

type
  TFManifestoCOL = class(TForm)
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
    Q_AUX: TwwQuery;
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    DBText2: TDBText;
    Q_CLIF: TwwQuery;
    Q_CLIN: TwwQuery;
    Q_CEP: TwwQuery;
    Q_MANIFMANI_CENDERECO: TStringField;
    Q_MANIFMANI_CENDERECOCOMPL: TStringField;
    Q_MANIFMANI_CENDERECOBAIRRO: TStringField;
    Q_MANIFMANI_CMUNICIPIO: TStringField;
    Q_MANIFMANI_CUF_SIGLA: TStringField;
    Q_MANIFMANI_CCEP: TStringField;
    Q_MANIFMANI_CTEL1: TStringField;
    Q_MANIFMANI_CTEL2: TStringField;
    Q_MANIFMANI_CFAX: TStringField;
    Q_MANIFMANI_CEMAIL: TStringField;
    Q_MANIFMANI_CCONTATO: TStringField;
    Q_MANIFMANI_EENDERECO: TStringField;
    Q_MANIFMANI_EENDERECOCOMPL: TStringField;
    Q_MANIFMANI_EENDERECOBAIRRO: TStringField;
    Q_MANIFMANI_EMUNICIPIO: TStringField;
    Q_MANIFMANI_EUF_SIGLA: TStringField;
    Q_MANIFMANI_ECEP: TStringField;
    Q_MANIFMANI_ETEL1: TStringField;
    Q_MANIFMANI_ETEL2: TStringField;
    Q_MANIFMANI_EFAX: TStringField;
    Q_MANIFMANI_EEMAIL: TStringField;
    Q_MANIFMANI_ECONTATO: TStringField;
    UPD_MANIF: TUpdateSQL;
    Q_UF1: TwwQuery;
    Q_UF1UF_NOME: TStringField;
    Q_UF1UF_SIGLA: TStringField;
    Q_UF1UF_ALIQUOTA: TFloatField;
    Q_UF2: TwwQuery;
    Q_UF2UF_NOME: TStringField;
    Q_UF2UF_SIGLA: TStringField;
    Q_UF2UF_ALIQUOTA: TFloatField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_CLINCLIN_RAZA: TStringField;
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
    Q_MANIFPAR_ID: TIntegerField;
    SpeedButton1: TSpeedButton;
    Q_MANIFMANI_QTDEUV: TFloatField;
    Q_MANIFCONFIRMA: TStringField;
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
    Q_MANIFMANI_VFRETEPAG: TFloatField;
    Label52: TLabel;
    DBText8: TDBText;
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
    wwDBGrid3: TwwDBGrid;
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
    SpeedButton6: TSpeedButton;
    Label7: TLabel;
    Q_MANIFCONFIRMA_MANI: TStringField;
    Q_CTT: TwwQuery;
    Q_CTTCTT_NOME: TStringField;
    Q_CTTCTT_ID: TAutoIncField;
    Q_CTTTOS_ID: TIntegerField;
    Q_CTTCLIN_ID: TIntegerField;
    Q_CTTCTT_TERCEIRO: TStringField;
    Q_CTTPAR_ID: TIntegerField;
    DS_CTT: TwwDataSource;
    Q_CLINctt: TwwQuery;
    DS_CLINctt: TwwDataSource;
    Q_CLINcttCLIN_ID: TAutoIncField;
    Q_CLINcttCLIN_RAZA: TStringField;
    Q_MANIFCLIN_ID: TIntegerField;
    Q_MANIFCTT_ID: TIntegerField;
    Q_MANIFVEIC_ID_COBRA: TIntegerField;
    Q_MANIFREG_ID_COBRA: TIntegerField;
    Q_MANIFFRETE_NEGOCIA: TStringField;
    Q_MANIFVLR_NEGOCIA: TFloatField;
    Q_MANIFVLR_TOTAL: TFloatField;
    Q_REG3: TwwQuery;
    Q_REG3REG_ID: TAutoIncField;
    Q_REG3REG_NOME: TStringField;
    Q_MANIFMANI_DTAGENDA: TDateTimeField;
    Q_MANIFMANI_HORAGENDA: TStringField;
    Q_MANIFMANI_SOLICITANTE: TStringField;
    Q_MANIFMANI_AJUDANTE: TStringField;
    Panel4: TPanel;
    Label53: TLabel;
    DBText1: TDBText;
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
    Q_PARMUN_ID: TIntegerField;
    Q_PARPAR_ID: TAutoIncField;
    DS_PAR: TwwDataSource;
    Q_OS: TwwQuery;
    Q_OSOS_DATA: TDateTimeField;
    Q_OSOS_ID: TAutoIncField;
    Q_OSCLIN_ID: TIntegerField;
    Q_OSCTT_ID: TIntegerField;
    Q_OSTOS_ID: TIntegerField;
    Q_OSOS_USUARIO: TIntegerField;
    Q_OSOS_GEROU: TStringField;
    STP_SERVESPEC: TwwStoredProc;
    STP_TPDO_TPOS_OS: TwwStoredProc;
    DS_VEIC: TwwDataSource;
    Q_MANIFCLIF_ID: TIntegerField;
    Q_CLIF2: TwwQuery;
    Q_CLIF2CLIF_ID: TAutoIncField;
    Q_CLIF2CLIF_PESSOA: TStringField;
    Q_CLIF2CLIF_RAZA: TStringField;
    Q_CLIF2CLIF_NOME: TStringField;
    Q_CLIF2CLIF_CGCCPF: TStringField;
    Q_CLIF2CLIF_INSCRG: TStringField;
    Q_CLIF2CLIF_ENDERECO: TStringField;
    Q_CLIF2CLIF_ENDERECO_COMPL: TStringField;
    Q_CLIF2CLIF_ENDERECO_BAIRRO: TStringField;
    Q_CLIF2CLIF_MUNICIPIO: TStringField;
    Q_CLIF2CLIF_MUNICIPIO2: TStringField;
    Q_CLIF2UF_SIGLA: TStringField;
    Q_CLIF2CLIF_CEP: TStringField;
    Q_CLIF2CLIF_TEL1: TStringField;
    Q_CLIF2CLIF_TEL2: TStringField;
    Q_CLIF2CLIF_FAX: TStringField;
    Q_CLIF2CLIF_EMAIL: TStringField;
    Q_CLIF2CLIF_CONTATO: TStringField;
    Q_CLIF2MUN_ID: TIntegerField;
    Q_CLIF2CLIF_CARGAPALLET: TStringField;
    Q_CLIF2CLIE_ENDERECO: TStringField;
    Q_CLIF2CLIE_ENDERECO_COMPL: TStringField;
    Q_CLIF2CLIE_ENDERECO_BAIRRO: TStringField;
    Q_CLIF2CLIE_MUNICIPIO: TStringField;
    Q_CLIF2CLIE_MUN_ID: TIntegerField;
    Q_CLIF2CLIE_UF_SIGLA: TStringField;
    Q_CLIF2CLIE_CEP: TStringField;
    Q_OCEORD_TPCARGA: TStringField;
    wwDBComboBox5: TwwDBComboBox;
    Q_OCEORD_QTDE_UV: TFloatField;
    Q_CLIF3: TwwQuery;
    Q_CLIF3CLIF_ID: TAutoIncField;
    Q_CLIF3CLIF_RAZA: TStringField;
    Q_OCECLIF_ID: TIntegerField;
    Q_OCECLIFraza: TStringField;
    Q_PARCO_SER_ID: TIntegerField;
    Q_PAREN_SER_ID: TIntegerField;
    Q_MANIFMANI_NF: TStringField;
    Q_MANIFMANI_DT_TRANSP: TDateTimeField;
    Q_TRMOTMOT_VEIC_PLACA: TStringField;
    Q_MANIFMANI_OBS: TStringField;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label31: TLabel;
    Label16: TLabel;
    Label26: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    Label43: TLabel;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit17: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label46: TLabel;
    Label48: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    wwDBEdit22: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    GroupBox5: TGroupBox;
    Label21: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label51: TLabel;
    Label6: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBComboBox1: TwwDBComboBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo11: TwwDBLookupCombo;
    wwDBLookupCombo10: TwwDBLookupCombo;
    wwDBEdit20: TwwDBEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label57: TLabel;
    wwDBLookupCombo17: TwwDBLookupCombo;
    wwDBLookupCombo18: TwwDBLookupCombo;
    wwDBComboBox2: TwwDBComboBox;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit25: TwwDBEdit;
    Label9: TLabel;
    wwDBLookupCombo12: TwwDBLookupCombo;
    Label1: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label50: TLabel;
    wwDBEdit26: TwwDBEdit;
    Label8: TLabel;
    DBText3: TDBText;
    Panel6: TPanel;
    DBG_INFI: TwwDBGrid;
    DBLC_INF_PROD: TwwDBLookupCombo;
    Q_COLETANF: TwwQuery;
    DS_COLETANF: TwwDataSource;
    UPD_COLETANF: TUpdateSQL;
    Q_COLETANFCNF_ID: TAutoIncField;
    Q_COLETANFCNF_NF: TStringField;
    Q_COLETANFCNF_UV: TFloatField;
    Q_COLETANFCNF_PESO: TFloatField;
    Q_COLETANFCNF_PALLETS: TIntegerField;
    Q_COLETANFCNF_VALOR: TFloatField;
    Q_COLETANFCLIF_ID: TIntegerField;
    Q_COLETANFMANI_ID: TIntegerField;
    DS_CLIF: TwwDataSource;
    Q_CLIFNBFINAL_ID: TAutoIncField;
    Q_CLIFCLIF_ID: TIntegerField;
    Q_CLIFCLIN_ID: TIntegerField;
    Q_CLIFNBFINAL_DT_INCL: TDateTimeField;
    Q_CLIFNBFINAL_COD_CLIN: TStringField;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_CLIFCLIF_ENDERECO: TStringField;
    Q_COLETANFclifRAZA: TStringField;
    SBT_VISU: TSpeedButton;
    Label10: TLabel;
    STP_OCE: TwwStoredProc;
    Q_MANIFMANI_MUN_IDC: TIntegerField;
    SpeedButton7: TSpeedButton;
    Q_MANIF2: TwwQuery;
    Q_MANIF2MANI_ID: TAutoIncField;
    Q_MANIF2MANI_DATA: TDateTimeField;
    Q_MANIF2COLUMN3: TStringField;
    wwSearchDialog1: TwwSearchDialog;
    Q_AUX2: TwwQuery;
    qrAuxClin: TwwQuery;
    qrAuxClinCLIN_UTIL_COD: TStringField;
    qrAuxRateio: TwwQuery;
    Q_OCEORD_VLR_FRETE: TFloatField;
    Q_OCEORD_VLR_SECCAT: TFloatField;
    Q_OCEORD_VLR_DESPACHO: TFloatField;
    Q_OCEORD_VLR_PEDAGIO: TFloatField;
    Q_OCEORD_VLR_OUTROS: TFloatField;
    Q_OCEORD_CONH: TStringField;
    Q_OCEORD_ALIQ: TFloatField;
    Q_OCEORD_VLR_ICMS: TFloatField;
    STP_ADD_OS: TwwStoredProc;
    Label11: TLabel;
    wwDBEdit1: TwwDBEdit;
    Q_MANIFMOT_EQUIP: TStringField;
    Q_TRMOTMOT_EQUIP: TStringField;
    Q_COLETANFCNF_QTDENF: TIntegerField;
    Q_COLETANFEMISSAO: TDateTimeField;
    Q_COLETANFSERIE: TStringField;
    Q_COLETANFCFOP: TStringField;
    Q_MANIFTOMADOR: TStringField;
    DBCheckBox1: TDBCheckBox;
    Q_COLETANFVOLUME: TFloatField;
    Q_COLETANFCODIGO: TStringField;
    Q_COLETANFDESCRICAO: TStringField;
    qrProdColeta: TADOQuery;
    cboProdutoColeta: TwwDBLookupCombo;
    qrProdColetaCODIGO: TStringField;
    qrProdColetaDESCRICAO: TStringField;
    Q_MANIFPAGA_ADICIONAL: TStringField;
    Q_MANIFVALOR_ADICIONAL: TFloatField;
    DBCheckBox2: TDBCheckBox;
    qrAux: TADOQuery;
    STP_GERA_CONHECIMENTO_COMPLEMENTAR: TADOStoredProc;
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
    edtValorAdicional: TDBEdit;
    Q_REM: TwwQuery;
    cboClienteRemetente: TwwDBLookupCombo;
    TabbedNotebook3: TTabbedNotebook;
    TabbedNotebook4: TTabbedNotebook;
    qrExpedidor: TADOQuery;
    qrExpedidorTRANS_ID: TAutoIncField;
    qrExpedidorTRANS_RAZA: TStringField;
    qrExpedidorTRANS_FANTASIA: TStringField;
    qrRecebedor: TADOQuery;
    AutoIncField2: TAutoIncField;
    StringField2: TStringField;
    StringField3: TStringField;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_MANIFCLI_EXPEDIDOR: TIntegerField;
    Q_MANIFCLI_RECEBEDOR: TIntegerField;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Q_MANIFCLI_REMETENTE: TIntegerField;
    Q_MANIFCLI_REMETENTE_TIPO: TStringField;
    Q_REMCLIN_ID: TAutoIncField;
    Q_REMCLIN_PESSOA: TStringField;
    Q_REMCLIN_RAZA: TStringField;
    Q_REMCLIN_NOME: TStringField;
    Q_REMCLIN_CGCCPF: TStringField;
    Q_REMCLIN_INSCRG: TStringField;
    Q_REMCLIN_ENDERECO: TStringField;
    Q_REMCLIN_ENDERECO_COMPL: TStringField;
    Q_REMCLIN_ENDERECO_BAIRRO: TStringField;
    Q_REMCLIN_MUNICIPIO: TStringField;
    Q_REMUF_SIGLA: TStringField;
    Q_REMCLIN_CEP: TStringField;
    Q_REMCLIN_TEL1: TStringField;
    Q_REMCLIN_TEL2: TStringField;
    Q_REMCLIN_FAX: TStringField;
    Q_REMCLIN_EMAIL: TStringField;
    Q_REMCON_CODI: TStringField;
    Q_REMCLIN_CONTRATO: TStringField;
    Q_REMCLIN_UTIL_COD: TStringField;
    Q_REMMUN_ID: TIntegerField;
    Q_REMCLIN_WEB: TStringField;
    Q_REMCLIN_ENDC: TStringField;
    Q_REMCLIN_END_COMPLC: TStringField;
    Q_REMCLIN_END_BAIRC: TStringField;
    Q_REMCLIN_MUNICC: TStringField;
    Q_REMUF_SIGLAC: TStringField;
    Q_REMCLIN_CEPC: TStringField;
    Q_REMCLIN_TELC: TStringField;
    Q_REMCLIN_FAXC: TStringField;
    Q_REMCLIN_EMAILC: TStringField;
    Q_REMMUN_IDC: TIntegerField;
    Q_REMCLIN_TIPOSALDO: TStringField;
    Q_REMCLIN_VLRSALDO: TFloatField;
    Q_REMCLIN_TPMERC: TStringField;
    Q_REMCLIN_LOTE: TStringField;
    Q_REMCLIN_ISS: TFloatField;
    Q_REMCLIN_DESCONTO: TFloatField;
    Q_REMRemanejaSN: TStringField;
    Q_REMIBGE_ID: TIntegerField;
    Q_REMCLIN_LOGRADOURO: TStringField;
    Q_REMCLIN_NUMERO: TStringField;
    Q_REMCLIN_ISENCAO: TStringField;
    Q_REMCLIN_COBRAFRETEDEV: TStringField;
    Q_REMCLIN_PAGAFRETEDEV: TStringField;
    Q_REMCLIN_FRETEADICIONAL: TFloatField;
    lbRemetente: TLabel;
    qrRemetenteAux: TADOQuery;
    qrExpedidorTRANS_CNPJ: TStringField;
    qrRecebedorTRANS_CNPJ: TStringField;
    dsExpedidor: TDataSource;
    DBText4: TDBText;
    DBText5: TDBText;
    dsRecebedor: TDataSource;
    Q_COLETANFNUMEROVIAGEM: TStringField;
    Q_COLETANFNFE: TStringField;
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
    procedure DBE_CLI_FMUNEnter(Sender: TObject);
    procedure DBE_CLI_FMUNExit(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_MANIFNewRecord(DataSet: TDataSet);
    procedure DS_MANIFDataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBLookupCombo11Enter(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBLookupCombo11Exit(Sender: TObject);
    procedure wwDBEdit20Enter(Sender: TObject);
    procedure wwDBEdit20Exit(Sender: TObject);
    procedure Q_MANIFBeforePost(DataSet: TDataSet);
    procedure Q_OCEAfterPost(DataSet: TDataSet);
    procedure Q_OCEBeforePost(DataSet: TDataSet);
    procedure wwDBLookupCombo14Enter(Sender: TObject);
    procedure wwDBLookupCombo14Exit(Sender: TObject);
    procedure DS_OCEDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo17Enter(Sender: TObject);
    procedure wwDBLookupCombo17Exit(Sender: TObject);
    procedure wwDBLookupCombo18Enter(Sender: TObject);
    procedure wwDBLookupCombo18Exit(Sender: TObject);
    procedure wwDBComboBox2Enter(Sender: TObject);
    procedure wwDBComboBox2Exit(Sender: TObject);
    procedure wwDBEdit22Enter(Sender: TObject);
    procedure wwDBEdit22Exit(Sender: TObject);
    procedure wwDBEdit21Enter(Sender: TObject);
    procedure wwDBEdit21Exit(Sender: TObject);
    procedure wwDBEdit23Enter(Sender: TObject);
    procedure wwDBEdit23Exit(Sender: TObject);
    procedure wwDBComboBox3Enter(Sender: TObject);
    procedure wwDBComboBox3Exit(Sender: TObject);
    procedure wwDBLookupCombo12Exit(Sender: TObject);
    procedure wwDBLookupCombo12Enter(Sender: TObject);
    procedure wwDBEdit26Enter(Sender: TObject);
    procedure wwDBEdit26Exit(Sender: TObject);
    procedure Q_COLETANFAfterPost(DataSet: TDataSet);
    procedure Q_COLETANFAfterDelete(DataSet: TDataSet);
    procedure Q_COLETANFNewRecord(DataSet: TDataSet);
    procedure SBT_VISUClick(Sender: TObject);
    procedure Q_MANIFBeforeEdit(DataSet: TDataSet);
    procedure Q_COLETANFBeforeEdit(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Q_COLETANFBeforePost(DataSet: TDataSet);
    procedure Q_CLIFAfterOpen(DataSet: TDataSet);
    procedure RatearFrete;
    procedure Button1Click(Sender: TObject);
    procedure cboProdutoColetaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure cboClienteRemetenteExit(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManifestoCOL: TFManifestoCOL;
  CLOSEUP : string ;
  AREA    : String ;
  POSICAO : String ;
  AREANEW    : String ;
  MANIFESTONF : string   ;
implementation
uses USenha, UAbTabelas,Umenu,
 URelManifesto, USeleManifesto, URelManifResumoProd, URelManifResumoNF,U_FUNCOES,
  URelManifestoCOL, UConsManifesto ;
{$R *.DFM}

procedure TFManifestoCOL.SpeedButton3Click(Sender: TObject);
begin
   PESQMANI := '' ;
   close ;
end;

procedure TFManifestoCOL.wwDBLookupCombo1Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFManifestoCOL.wwDBLookupCombo1Exit(Sender: TObject);
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
        Q_TRANS.Sql.Add('GROUP by  A.TRANS_ID,A.TRANS_FANTASIa ');
        Q_TRANS.Open ;
  end ;


   If wwDBLookupCombo1.text <> '' then
    wwDBLookupCombo1.text := Q_VEICVEIC_NOME.asstring   ;


end;

procedure TFManifestoCOL.wwDBComboBox1Enter(Sender: TObject);
begin
  (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBComboBox1Exit(Sender: TObject);
begin
  (Sender as TwwDBComboBox).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit12Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo2Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;

   If wwDBLookupCombo2.text <> '' then
    wwDBLookupCombo2.text := Q_TRANSTRANS_FANTASIA.asstring   ;

   IF Q_MANIFTRANS_ID.asstring <> '' then begin
        Q_TRMOT.close ;
        Q_TRMOT.Sql.Clear ;
        Q_TRMOT.Sql.Add(' select MOT_ID,MOT_NOME,TRANS_ID ,MOT_VEIC_PLACA, mot_equip from TRANSPORTADORA_MOTORISTA') ;
        Q_TRMOT.Sql.Add(' where TRANS_ID = ' +  Q_MANIFTRANS_ID.asstring  ) ;
        //////Q_TRMOT.Sql.Add(' and  MOT_ID = ' + Q_MANIFMOT_ID.asstring ) ;
        Q_TRMOT.Open ;
   end ;


end;

procedure TFManifestoCOL.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;

   If wwDBLookupCombo4.text <> '' then
    wwDBLookupCombo4.text := Q_TRMOTMOT_NOME.asstring   ;

end;

procedure TFManifestoCOL.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit6Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFManifestoCOL.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit14Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFManifestoCOL.wwDBEdit14Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit15Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFManifestoCOL.wwDBEdit15Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.Q_MANIFAfterPost(DataSet: TDataSet);
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

   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
   Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open  ;
   IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin

        Q_aux.close;
        Q_aux.Sql.Clear;
        Q_aux.Sql.Add(' insert into ORDEM_COLETA_ENTREGA ( ');
        Q_aux.Sql.Add('  ORD_COLETA_ENTREGA ' + ',' );
        Q_aux.Sql.Add('             MANI_ID');
        Q_aux.Sql.Add('            ) ') ;
        Q_aux.Sql.Add(' values ( ' );
        Q_aux.Sql.Add('''' + 'C' + '''' + ',') ;
        Q_aux.Sql.Add('''' + Q_MANIFMANI_ID.asstring + '''' + ')' );
        Q_aux.ExecSql;

   end ; }


   Q_OCE.close ;
   Q_OCE.open ;



end;

procedure TFManifestoCOL.Q_MANIFAfterDelete(DataSet: TDataSet);
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



end;

procedure TFManifestoCOL.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFManifestoCOL.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 22;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     FAbTabelas.Gauge1.Progress            := 1;

                     IF (PESQMANI = '*')  then begin
                         Q_MANIF.close ;
                         Q_MANIF.Sql.Clear ;
                         Q_MANIF.Sql.Add( ' select * from Manifesto ' ) ;
                         Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'C' + '''');
                         Q_MANIF.Sql.Add( ' and MANI_ID = ' + FConsMANIFESTO.Q_MANIFMANI_ID.asstring ) ;
                         Q_MANIF.open ;
                     end else begin
                         Q_MANIF.close ;
                         Q_MANIF.Sql.Clear ;
                         Q_MANIF.Sql.Add( ' select * from Manifesto ' ) ;
                         Q_MANIF.Sql.Add( ' where MANI_ENT_COL = ' + '''' + 'C' + '''');
                         Q_MANIF.open ;
                     end ;

                     Q_MANIF.last ;
                     FAbTabelas.Gauge1.Progress            := 2;
                     Q_VEIC.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     Q_TRANS.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     Q_TRMOT.Open;
                    
              
                     FAbTabelas.Gauge1.Progress            := 5;
                     Q_CLIN.Open;
                     FAbTabelas.Gauge1.Progress            := 6;
                     Q_CLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 7;
                     Q_UF1.Open;
                     FAbTabelas.Gauge1.Progress            := 8;
                     Q_UF2.Open;
                     FAbTabelas.Gauge1.Progress            := 9;
                     Q_VEIC2.Open;
                     FAbTabelas.Gauge1.Progress            := 10;
                     Q_REG.Open;

                     FAbTabelas.Gauge1.Progress            := 11;
                     Q_OCE.Open;
                     FAbTabelas.Gauge1.Progress            := 12;
                     Q_VEIC3.Open;
                     FAbTabelas.Gauge1.Progress            := 13;
                     Q_REG2.Open;
                     FAbTabelas.Gauge1.Progress            := 14;
                     Q_MUNI.Open;
                     FAbTabelas.Gauge1.Progress            := 15;
                     Q_MUNI2.Open;

                     FAbTabelas.Gauge1.Progress            := 16;
                     Q_CLINctt.Open;
                     FAbTabelas.Gauge1.Progress            := 17;
                     Q_CTT.Open;
                     FAbTabelas.Gauge1.Progress            := 18;
                     Q_PAR.Open;

                     FAbTabelas.Gauge1.Progress            := 19;
                     Q_CLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 20;
                     Q_CLIF3.Open;
                     FAbTabelas.Gauge1.Progress            := 21;
                     Q_CLIF2.Open;

                     FAbTabelas.Gauge1.Progress            := 22;
                     Q_COLETANF.Open;
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

procedure TFManifestoCOL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CLIF3.close;
   Q_MANIF.close;
   Q_VEIC.close;
   Q_VEIC2.close;
   Q_REG.close;
   Q_TRANS.close;
   Q_TRMOT.close;

   Q_CEP.close;
   Q_UF1.close;
   Q_UF2.close ;
   Q_CLIN.close ;
   Q_CLIF.close ;
   Q_CLIF2.close ;

   Q_CLINctt.close;
   Q_CTT.close;
   Q_PAR.close; 
 



   Q_REG2.close;
   Q_OCE.close ;
   Q_VEIC3.close ;
   Q_MUNI.close ;
   Q_MUNI2.close ;
   Q_COLETANF.close ;
   action := cafree;
end;

procedure TFManifestoCOL.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   { Q_TRMOT.close ;
    Q_TRMOT.Sql.Clear ;
    Q_TRMOT.Sql.Add('select MOT_ID,MOT_NOME,TRANS_ID from TRANSPORTADORA_MOTORISTA') ;
    Q_TRMOT.Sql.Add(' where TRANS_ID = ' + Q_TRANSTRANS_ID.asstring  ) ;
    Q_TRMOT.Open ;   }

      wwDBLookupCombo4.text := '' ;

end;

procedure TFManifestoCOL.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
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

procedure TFManifestoCOL.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;   
    
    TabbedNotebook1.pageindex := 0 ;
    TabbedNotebook2.pageindex := 0 ;
    MANIFESTONF := '' ;

    Self.AutoSize := True;

   qrProdColeta.Open;
   qrExpedidor.Open;
   qrRecebedor.Open;

end;

procedure TFManifestoCOL.Q_MANIFBeforeDelete(DataSet: TDataSet);
begin
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

procedure TFManifestoCOL.RadioGroup2Click(Sender: TObject);
begin
    Q_REM.Open;
    IF RadioGroup2.itemindex = 0 then
      wwDBLookupCombo7.visible := true
    else
      wwDBLookupCombo7.visible := false;

    IF RadioGroup2.itemindex = 1 then
          wwDBLookupCombo9.visible := true
    else
      wwDBLookupCombo9.visible := false;

    if RadioGroup2.ItemIndex = 3 then begin
         wwDBLookupCombo7.visible := false;
         wwDBLookupCombo9.visible := false;
         cboClienteRemetente.Visible := True;
    end else
        cboClienteRemetente.Visible := False;

   IF RadioGroup2.itemindex = 2 then  begin
          wwDBLookupCombo9.visible := false;
          wwDBLookupCombo7.visible := false;
          Q_MANIf.edit;
          If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

              if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                                   ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then

                else begin
                    RadioGROUP2.itemindex := -1 ;
                    ABORT ;
                end ;
         end ;
         Q_MANIfMANI_CENDERECO.asstring  :=  Q_PARPAR_ENDERECO.asstring ;
         Q_MANIfMANI_CENDERECOCOMPL.asstring := Q_PARPAR_ENDERECO_COMPL.asstring ;
         Q_MANIfMANI_CENDERECOBAIRRO.asstring := Q_PARPAR_ENDERECO_BAIRRO.asstring ;
         Q_MANIfMANI_MUN_IDC.asstring :=  Q_PARMUN_ID.asstring ;
         Q_MANIfMANI_CUF_SIGLA.asstring :=  Q_PARPAR_UF_SIGLA.asstring ;
         Q_MANIfMANI_CCEP.asstring :=  Q_PARPAR_CEP.asstring ;
                                                                
         wwDBEdit11.setfocus ;
   end ;



end;

procedure TFManifestoCOL.wwDBLookupCombo7Enter(Sender: TObject);
begin
 (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo7Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;

  If (wwDBLookupCombo7.text <> '') then  begin
      Q_MANIf.edit;
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

     Q_MANIFCLI_REMETENTE_TIPO.AsString := 'C';
     Q_MANIFCLI_REMETENTE.AsInteger :=Q_CLINCLIN_ID.ASINTEGER;


     Q_MANIfMANI_CENDERECO.asstring  :=  Q_CLINCLIN_ENDERECO.asstring ;
     Q_MANIfMANI_CENDERECOCOMPL.asstring := Q_CLINCLIN_ENDERECO_COMPL.asstring ;
     Q_MANIfMANI_CENDERECOBAIRRO.asstring := Q_CLINCLIN_ENDERECO_BAIRRO.asstring ;
     Q_MANIfMANI_MUN_IDC.asstring :=  Q_CLINMUN_ID.asstring ;
     Q_MANIfMANI_CUF_SIGLA.asstring :=  Q_CLINUF_SIGLA.asstring ;
     Q_MANIfMANI_CCEP.asstring :=  Q_CLINCLIN_CEP.asstring ;

     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit11.setfocus ;
  end ;



end;

procedure TFManifestoCOL.wwDBEdit2Exit(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClWINDOW ;


  ////If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

          If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

             if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
               else ABORT ;
         end ;

         Q_MANIf.edit ;

         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit2.text + ''''  ) ;
         Q_CEP.Open ;

         Q_MANIfMANI_CENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_MANIfMANI_CENDERECOBAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;

         IF Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_MANIfMANI_MUN_IDC.asinteger  := Q_MUNIMUN_ID.asinteger ;
             Q_MANIfMANI_CUF_SIGLA.asstring := Q_MUNIUF_SIGLA.asstring ;
         end else begin
             Q_MANIfMANI_MUN_IDC.asinteger  := 0 ;
             Q_MANIfMANI_CUF_SIGLA.asstring := '0' ;
         end ;

         wwdbedit11.setfocus ;
  //end ;

end;

procedure TFManifestoCOL.wwDBLookupCombo9Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo9Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;

  If (wwDBLookupCombo9.text <> '') then  begin
      Q_MANIf.edit;
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


      //PREENCHE O TIPO E ID DO REMETENTE
      Q_MANIFCLI_REMETENTE_TIPO.AsString := 'F';
      Q_MANIFCLI_REMETENTE.AsInteger :=  Q_CLIF2CLIF_ID.AsInteger;


     Q_MANIfMANI_CENDERECO.asstring  :=  Q_CLIF2CLIF_ENDERECO.asstring ;
     Q_MANIfMANI_CENDERECOCOMPL.asstring := Q_CLIF2CLIF_ENDERECO_COMPL.asstring ;
     Q_MANIfMANI_CENDERECOBAIRRO.asstring := Q_CLIF2CLIF_ENDERECO_BAIRRO.asstring ;
     Q_MANIfMANI_MUN_IDC.asstring :=  Q_CLIF2MUN_ID.asstring ;
     Q_MANIfMANI_CUF_SIGLA.asstring :=  Q_CLIF2UF_SIGLA.asstring ;
     Q_MANIfMANI_CCEP.asstring :=  Q_CLIF2CLIF_CEP.asstring ;

   
     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit11.setfocus ;
  end ;
end;

procedure TFManifestoCOL.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBEdit11Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit10Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo6Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBEdit5Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit5Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit9Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit7Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit8Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit8Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBEdit13Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFManifestoCOL.DBE_CLI_FMUNEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.DBE_CLI_FMUNExit(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFManifestoCOL.TabbedNotebook1Click(Sender: TObject);
begin
 {  If Q_MANIFMANI_ID.asstring = '' then begin
      TabbedNotebook1.pageindex := 0 ;
      MessageDlg('O manifesto não foi gerado !',mtWarning,[mbok],0);
      wwDBLookupCombo3.setfocus ;
      abort ;
   end ;    }

   If (Q_MANIF.state = dsedit ) or (Q_MANIF.state = dsinsert )  then
       Q_MANIF.post;


   IF TabbedNotebook1.pageindex = 3 then begin
         IF (wwDBLookupCombo3.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo3.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo12.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Contrato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo12.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo1.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Veículo Transportador é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo1.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox1.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Tipo da Carga é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox1.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo2.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo2.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo4.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Motorista é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo4.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo10.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Veículo Pagto. Frete é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
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

         IF (wwDBLookupCombo17.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Veículo a Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo17.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo18.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Região a Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo18.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox2.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Frete Negociado é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox2.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox2.itemindex = 0)  then begin
               IF (wwDBEdit10.text = '')  then begin
                   TabbedNotebook1.pageindex := 0 ;
                   MessageDlg('Vlr. Frete a Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
                   wwDBEdit10.setfocus ;
                   abort ;
               end ;
         end ;

         IF (wwDBEdit12.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Peso Total é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit12.setfocus ;
             abort ;
         end ;


         IF (wwDBComboBox1.itemindex  = 0)  then begin
             IF (wwDBEdit6.text = '')  then begin
                 TabbedNotebook1.pageindex := 0 ;
                 MessageDlg('Qtde. Pallets é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
                 wwDBEdit6.setfocus ;
                 abort ;
             end ;
         end ;


         IF (wwDBEdit14.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Volume é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit14.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit15.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Qtde. UV é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit15.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit17.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Vlr.Total é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit17.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit22.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Data é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit22.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit21.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Hora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit21.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit23.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Solicitante é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit23.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox3.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Ajudante (S/N) é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox3.setfocus ;
             abort ;
         end ;

   end ;

   If (Q_MANIF.state = dsedit ) or (Q_MANIF.state = dsinsert )  then
       Q_MANIF.post;




     ////////////////////
   IF (TabbedNotebook1.pageindex = 3) or
      (TabbedNotebook1.pageindex = 1) then begin

        {Q_COLETANF.first ;
        While not Q_COLETANF.eof do begin
                Q_AUX.close;
                Q_AUX.Sql.Clear;
                Q_AUX.Sql.Add('update ORDEM_COLETA_ENTREGA set TRANS_ID = ' + '''' + Q_MANIFTRANS_ID.asstring + '''' + ',');
                Q_AUX.Sql.Add('VEIC_ID        = ' + '''' + Q_MANIFVEIC_ID.asstring + '''' + ',');
                Q_AUX.Sql.Add('ORD_PESO_TOTAL = ' + Funcoes.Converte(floattostr(Q_MANIfMANI_PESO.asfloat) ,',','.') + ',');
                Q_AUX.Sql.Add('ORD_VOLUME     = ' + Funcoes.Converte(floattostr(Q_MANIfMANI_VOLUME.asfloat) ,',','.') + ',');
                Q_AUX.Sql.Add('ORD_VALORTOTAL = ' + Funcoes.Converte(floattostr(Q_MANIfVLR_TOTAL.asfloat) ,',','.') + ',');
                Q_AUX.Sql.Add('VEIC_ID_RECEB  = ' + '''' + Q_MANIFVEIC_ID_COBRA.asstring + '''' + ',');
                Q_AUX.Sql.Add('REG_ID         = ' + '''' + Q_MANIFREG_ID_COBRA.asstring + '''' + ',');
                Q_AUX.Sql.Add('ORD_TPCARGA    = ' + '''' + Q_MANIFMANI_TIPOCARGA.asstring + '''' + ',');}

                {IF wwDBLookupCombo8.text <> '' then  begin
                   Q_AUX.Sql.Add('CLIF_ID   = ' + '''' + Q_MANIFCLIF_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add('ORD_ENT_ENDERECO   = ' + '''' + Q_CLIFCLIf_ENDERECO.asstring + '''' + ',');
                   Q_AUX.Sql.Add('ORD_ENT_ENDERECO_COMPL = ' + '''' + Q_CLIFCLIf_ENDERECO_COMPL.asstring + '''' + ',');
                   Q_AUX.Sql.Add('ORD_ENT_ENDERECO_BAIRRO = ' + '''' + Q_CLIFCLIf_ENDERECO_BAIRRO.asstring + '''' + ',');
                   Q_AUX.Sql.Add('MUN_ID_ENT = ' + '''' + Q_CLIFMUN_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add('UF_SIGLA_ENT = ' + '''' + Q_CLIFUF_SIGLA.asstring + '''' + ',');
                   Q_AUX.Sql.Add('ORD_ENT_CEP = ' + '''' + Q_CLIFCLIf_CEP.asstring + '''' + ',');
                end ;  }


                {Q_AUX.Sql.Add('ORD_QTDE_UV    = ' + '''' + Q_MANIFMANI_QTDEUV.asstring + '''' + ',');
                Q_AUX.Sql.Add('CLIN_ID    = ' + '''' + Q_MANIFCLIN_ID.asstring + '''' + ',');
                Q_AUX.Sql.Add('ORD_PLACA    = ' + '''' +  Q_TRMOTMOT_VEIC_PLACA.asstring + '''' + ',');
                Q_AUX.Sql.Add('ORD_VLR_FRETE  = ' + inttostr(0)+ ',');
                Q_AUX.Sql.Add('ORD_VLR_DESPACHO  = ' + inttostr(0)+ ',');
                Q_AUX.Sql.Add('ORD_VLR_SECCAT  = ' + inttostr(0) +',');
                Q_AUX.Sql.Add('ORD_VLR_PEDAGIO = ' + inttostr(0) +',');
                Q_AUX.Sql.Add('ORD_VLR_OUTROS  = ' + inttostr(0) +',');
                Q_AUX.Sql.Add('ORD_TOTALPREST = ' + inttostr(0)+ ',');
                Q_AUX.Sql.Add('ORD_VLR_ICMS  = ' + inttostr(0)+ ',');
                Q_AUX.Sql.Add('ORD_QTDE_PALLET = ' + INTTOSTR(Q_MANIFMANI_QTDEPALLET.asinteger));
                Q_AUX.Sql.Add('where MANI_ID = ' +  Q_OCEMANI_ID.asstring );
                Q_AUX.ExecSql;

                Q_OCE.close ;
                Q_OCE.open ;   

              Q_COLETANF.next ; 
         end ;    }
   end ;
     /////////////////////


    If (TabbedNotebook1.pageindex  = 0) or
       (TabbedNotebook1.pageindex  = 1) then
       DBNavigator1.datasource    := DS_MANIF ;


    If (TabbedNotebook1.pageindex  = 2) then
       DBNavigator1.datasource    := DS_COLETANF ;

    If (TabbedNotebook1.pageindex  = 0)  then
        //SpeedButton1.enabled := true
    else //SpeedButton1.enabled := false ;

    If (TabbedNotebook1.pageindex = 0) then
       SpeedButton1.hint := 'Relatório de Manifesto de Carga' ;



end;

procedure TFManifestoCOL.SpeedButton1Click(Sender: TObject);
begin
       Application.CreateForm(TFRelMANIFESTOcol,FRelMANIFESTOcol);
       FRelMANIFESTOcol.QP.Preview;
       FRelMANIFESTOcol.Close;
end;

procedure TFManifestoCOL.SpeedButton5Click(Sender: TObject);
begin
       ///PANEL6.visible := false ;
       TabbedNotebook1.enabled := true;
       PANEL2.enabled := true ;
end;

procedure TFManifestoCOL.SpeedButton4Click(Sender: TObject);
begin
  {IF RadioGroup3.itemindex = 0 then begin
      Application.CreateForm(TFRelManifResumoProd,FRelManifResumoProd);
      FRelManifResumoProd.RESUMO.Preview;
      FRelManifResumoProd.Close;
  end else begin
      Application.CreateForm(TFRelManifResumoNF,FRelManifResumoNF);
      FRelManifResumoNF.RESUMONF.Preview;
      FRelManifResumoNF.Close;
  end  ; } 


end;

procedure TFManifestoCOL.Q_MANIFNewRecord(DataSet: TDataSet);
begin
  Q_MANIFCONFIRMA.asstring := 'N' ;
  Q_MANIFMANI_ENT_COL.asstring := 'C' ;
  Q_MANIFMANI_DATA.asdatetime := now ;

  Q_MANIFCONFIRMA_MANI.asstring := 'N' ;
  Q_MANIFFRETE_NEGOCIA.asstring  := 'N' ;
  Q_MANIFNFI_TRANS.asstring  := 'S' ;

  Q_MANIFTOMADOR.AsString := '0';
  wwDBLookupCombo1.setfocus ;

  Q_MANIFPAGA_ADICIONAL.AsString := 'N';


end;

procedure TFManifestoCOL.DS_MANIFDataChange(Sender: TObject; Field: TField);
begin

   IF Q_MANIFFRETE_NEGOCIA.asstring = 'N'  then begin
       Label40.visible := false   ;
       ///Label57.visible := false   ;
       wwDBEdit10.visible := false ;
       ///wwDBEdit25.visible := false ;
       ///IF wwDBEdit25.visible = true then
          ///wwDBEdit25.setfocus ;
   end else begin
        IF Q_MANIFFRETE_NEGOCIA.asstring <> ''  then begin
           Label40.visible := true ;
          ////Label57.visible := true ;
           wwDBEdit10.visible := true ;
           ///IF wwDBEdit10.visible = true then
              //wwDBEdit10.setfocus ;
          ////wwDBEdit25.visible := true ;
        end ;
   end ;



   if Q_MANIFPAGA_ADICIONAL.AsString = 'S' then begin
        edtValorAdicional.Visible := True;
   end
   else
   begin
        edtValorAdicional.Visible := False;
   end;



  IF Q_MANIFMANI_ID.asstring <> '' then begin
    { Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
     Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
     Q_AUX.Sql.Add('and  ORD_VOLUME is not null ' ) ;
     Q_AUX.open  ;


     IF (Q_AUX.fieldbyname('XVALOR').asinteger > 0)  then begin
        wwDBLookupCombo1.enabled := false ;
        wwDBLookupCombo2.enabled := false ;
     end else begin
       wwDBLookupCombo1.enabled := true ;
       wwDBLookupCombo2.enabled := true ;
     end ;  }


     IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
         Label7.caption := 'Manifesto Baixado';
         Panel3.enabled := false;
     end else begin
         Label7.caption := 'Manifesto em Aberto' ;
         Panel3.enabled := true ;

     end ;

  end else begin
      Label7.caption := 'Manifesto em Aberto' ;
      Panel3.enabled := true ;
      wwDBLookupCombo1.enabled := true ;
      wwDBLookupCombo2.enabled := true ;
  end ;


 { IF wwDBLookupCombo8.text <> '' then begin
      RadioGroup1.Visible := false   ;
      groupbox3.Enabled := false ;
      label55.visible := true ;
      label55.caption := Q_CLIFCLIF_RAZA.asstring ; 
  end else  begin
      label55.visible := false ;
      groupbox3.Enabled := true ;
      RadioGroup1.Visible := true ;
  end ;    }

   try

  //Controla o Cliente Remetente
 if Q_MANIFCLI_REMETENTE.AsString = '' then begin
     IF   Q_MANIFCLIN_ID.AsString <> '' then begin
     with qrRemetenteAux do begin
             Close;
             sql.Clear;
             sql.Add('select CLIN_RAZA FROM CLIENTENBF WHERE CLIN_ID = ' + Q_MANIFCLIN_ID.AsString);
             Open;
         end;

         lbRemetente.Caption := 'CLIENTE REMETENTE: ' + qrRemetenteAux.FieldByName('CLIN_RAZA').AsString;
     end;
  end
  else begin
      if Q_MANIFCLI_REMETENTE_TIPO.AsString = 'C' then begin
         with qrRemetenteAux do begin
             Close;
             sql.Clear;
             sql.Add('select CLIN_RAZA FROM CLIENTENBF WHERE CLIN_ID = ' + Q_MANIFCLI_REMETENTE.AsString);
             Open;
         end;

         lbRemetente.Caption := 'CLIENTE REMETENTE: ' + qrRemetenteAux.FieldByName('CLIN_RAZA').AsString;
      end
      else begin
          with qrRemetenteAux do begin
              Close;
              sql.Clear;
              sql.Add('SELECT CLIF_RAZA FROM CLIENTEFINAL WHERE CLIF_ID = ' + Q_MANIFCLI_REMETENTE.AsString);
              Open;
          end;

          lbRemetente.Caption := 'CLIENTE REMETENTE: ' + qrRemetenteAux.FieldByName('CLIN_RAZA').AsString;
      end;
  end;


   except

   end;


  //controla o visible dos labels de expedidor e recebedor
  if Q_MANIFCLI_EXPEDIDOR.AsString <> '' then
     DBText4.Visible := True
  else
     DBText4.Visible := False;

  if Q_MANIFCLI_RECEBEDOR.AsString <> '' then
     DBText5.Visible := True
  else
     DBText5.Visible := False;

end;

procedure TFManifestoCOL.wwDBLookupCombo10Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo11Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo10Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
  If wwDBLookupCombo10.text <> '' then
    wwDBLookupCombo10.text := Q_VEIC2VEIC_NOME.asstring   ;

end;

procedure TFManifestoCOL.wwDBLookupCombo11Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;

  If (Q_MANIF.state = dsedit ) or (Q_MANIF.state = dsinsert )  then  begin
      If wwDBLookupCombo11.text <> '' then begin
         wwDBLookupCombo11.text := Q_REGREG_NOME.asstring   ;
         Q_MANIFMANI_VFRETEPAG.asstring := formatfloat('###,###,##0.00',Q_REGFRET_VALOR.asfloat) ;
      end ;
  end ; 




end;

procedure TFManifestoCOL.wwDBEdit20Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit20Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwhite;
end;

procedure TFManifestoCOL.Q_MANIFBeforePost(DataSet: TDataSet);
begin

if wwDBLookupCombo3.LookupValue <> '' then begin
   with qrAux do begin
        close;
        sql.Clear;
        sql.Add(
        'select CLIN_FRETEADICIONAL from clientenbf where clin_id = ' + wwDBLookupCombo3.LookupValue
        )    ;
        Open;
   end;
   Q_MANIFVALOR_ADICIONAL.Value := qrAux.fieldByName('CLIN_FRETEADICIONAL').AsFloat;
end;

  //IF TabbedNotebook1.pageindex = 2 then begin
         IF (wwDBLookupCombo3.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo3.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo12.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Contrato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo12.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo1.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Veículo Transportador é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo1.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox1.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Tipo da Carga é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox1.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo2.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Transportadora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo2.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo4.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Motorista é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo4.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo10.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Veículo Pagto. Frete é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
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

         IF (wwDBLookupCombo17.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Veículo a Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo17.setfocus ;
             abort ;
         end ;

         IF (wwDBLookupCombo18.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Região a Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBLookupCombo18.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox2.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Frete Negociado é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox2.setfocus ;
             abort ;
         end ;

         IF (wwDBComboBox2.itemindex = 0)  then begin
               IF ((Q_PARCO_SER_ID.asstring = '')  and (Q_PAREN_SER_ID.asstring = '')) then begin
                   MessageDlg('Para frete negociado, o Serviço Frete Entrega/Coleta é campo de preenchimento obrigatório no Cadastro de Empresas !',mtWarning,[mbok],0);
                   wwDBComboBox2.text := '' ;
                   wwDBEdit10.text := '' ;
                   abort ;

               end ;
               {verificar se existe p/ este contrato ,
                  um dos serviços cadastrado na empresa  }

              Q_AUX.close;
              Q_AUX.Sql.Clear;
              Q_AUX.Sql.Add(' SELECT COUNT(*) as XVALOR FROM CONTRATO A,CONTRATO_SERVICO B Where');
              Q_AUX.Sql.Add(' A.CTT_ID = B.CTT_ID and  ');
              Q_AUX.Sql.Add(' A.CTT_ID = ' + Q_MANIFCTT_ID.asstring );
              Q_AUX.Sql.Add(' and (B.SER_ID =  ' + Q_PARCO_SER_ID.asstring);
              Q_AUX.Sql.Add(' or  B.SER_ID =  ' + Q_PAREN_SER_ID.asstring + ')');
              Q_AUX.open ;

              If (Q_AUX.fieldbyname('XVALOR').asinteger = 0) then begin
                  MessageDlg('Para frete negociado, o Contrato deve ter um Serviço de Frete Entrega/Coleta  !',mtWarning,[mbok],0);
                  wwDBComboBox2.text := '' ;
                  wwDBEdit10.text := '' ;
                  abort ;
              end ;

              IF (wwDBEdit10.text = '')  then begin
                   TabbedNotebook1.pageindex := 0 ;
                   MessageDlg('Vlr. Frete a Cobrar é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
                   wwDBEdit10.setfocus ;
                   abort ;
              end ;
         end ;




        IF (wwDBEdit12.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Peso Total é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit12.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit6.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Qtde. Pallets é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit6.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit14.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Volume é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit14.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit15.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Qtde. UV é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit15.setfocus ;
             abort ;
         end ;

         IF (wwDBEdit17.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Vlr.Total é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit17.setfocus ;
             abort ;
         end ; 

         IF  (Q_MANIFMANI_DTAGENDA.asstring = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Data é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit22.setfocus ;
             abort ;
         end ;

         IF (Q_MANIFMANI_HORAGENDA.asstring  = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Hora é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit21.setfocus ;
             abort ;
         end ;

          IF  (wwDBEdit23.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Solicitante é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit23.setfocus ;
             abort ;
         end ;


          IF (wwDBComboBox3.text = '')  then begin
             TabbedNotebook1.pageindex := 0 ;
             MessageDlg('Ajudante (S/N) é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox3.setfocus ;
             abort ;
         end ;

  //end ;






end;

procedure TFManifestoCOL.Q_OCEAfterPost(DataSet: TDataSet);
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
     Q_OCE.locate('ORD_id',STROCE,[])    ;


end;

procedure TFManifestoCOL.Q_OCEBeforePost(DataSet: TDataSet);
begin
        ///IF (FSeleManifesto.RadioGroup1.itemindex = 0) then
          /// Q_OCEORD_COLETA_ENTREGA.asstring := 'E' ;
         ///else
           ////Q_OCEORD_COLETA_ENTREGA.asstring := 'C'    ;


   {IF (Q_OCEVEIC_ID_RECEB.asstring = '')  then begin
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
   end; }





end;

procedure TFManifestoCOL.wwDBLookupCombo14Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo14Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFManifestoCOL.DS_OCEDataChange(Sender: TObject; Field: TField);
begin

    If Q_MANIFMANI_ID.asstring <> '' then begin


       Q_AUX.close;   {656565}
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add(' Select count(*) as NAOPREENCHIDO from ORDEM_COLETA_ENTREGA ');
       Q_AUX.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
       Q_AUX.Sql.Add(' and  (VEIC_ID_RECEB is null or VEIC_ID_RECEB = ' + '''' + '' + '''' +')' ) ;
       Q_AUX.Sql.Add(' and  (REG_ID is null or REG_ID = ' + '''' + '' + '''' + ')') ;
       Q_AUX.open;

       If  Q_AUX.fieldbyname('NAOPREENCHIDO').asinteger = 0 then
            SpeedButton6.enabled := true
          else
             SpeedButton6.enabled := false ;


       IF Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
          SpeedButton6.caption := 'Manifesto Baixado'  ;
          //wwDBLookupCombo13.enabled := false;
          //wwDBLookupCombo12.enabled := false;
          SpeedButton6.enabled := false ;
       end else  begin
          SpeedButton6.caption := 'Baixar Manifesto' ;
          //wwDBLookupCombo13.enabled := true;
          ///wwDBLookupCombo12.enabled := true;
          SpeedButton6.enabled := true ;
       end;


       Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
       Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
       Q_AUX.open  ;
       IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then  begin
            Label10.visible := false  ;
            SBT_VISU.visible := true  ;
            SBT_VISU.enabled := true ;
       end  else begin
            SBT_VISU.visible := false  ;
            Label10.visible := true ;
            Label10.left    := 654 ;
       end ;




    end ;


end;

procedure TFManifestoCOL.SpeedButton6Click(Sender: TObject);
var
   MAN2 : string ;
begin

   If (Q_OCE.state = dsedit) or (Q_OCE.state = dsINSERT) then
       Q_OCE.post ;


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

  If MessageDlg('Confirma a Baixa do Manifesto? Caso confirme, o Manifesto não será mais alterado!  ',MtConfirmation,[MbYes,
      MbNo],0)=MrYes Then  begin
            MAN2 := Q_MANIFMANI_ID.asstring ;


            Q_aux.close;
            Q_aux.Sql.Clear;
            Q_aux.Sql.Add(' insert into OS ( ');
            Q_aux.Sql.Add('             CLIN_ID,CTT_ID,TOS_ID,OS_DATA,');
            Q_aux.Sql.Add('             OS_GEROU,OS_FATURADA) ') ;
            Q_aux.Sql.Add(' values ( ' );
            Q_aux.Sql.Add( '''' + Q_MANIFCLIN_ID.asstring + '''' + ',');
            Q_aux.Sql.Add( '''' + Q_MANIFCTT_ID.asstring + '''' + ',');
            Q_aux.Sql.Add( INTTOSTR(1) + ',');
            Q_aux.Sql.Add( ''''+ FormatDateTime('MM/DD/YYYY',NOW ) + '''' + ',') ;
            Q_aux.Sql.Add( '''' + 'S' + '''' + ',') ;
            Q_aux.Sql.Add( '''' + 'N' + '''' +  ')' );
            Q_aux.ExecSql;


            Q_OS.close ;
            Q_OS.open  ;
            Q_OS.last  ;


            Q_aux.Sql.Clear;
            Q_aux.Sql.Add(' UPDATE ORDEM_COLETA_ENTREGA SET  OS_ID = ' +  Q_OSOS_ID.asSTRING );
            Q_aux.Sql.Add(' where ORD_ID = ' +  Q_OCEORD_ID.asSTRING );
            Q_aux.ExecSql;

            Q_aux.Sql.Clear;
            Q_aux.Sql.Add(' UPDATE MANIFESTO SET CONFIRMA_MANI = ' + '''' + 'S' + '''' );
            Q_aux.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
            Q_aux.ExecSql;



            /////
             try
              Begin
                 STP_SERVESPEC.ParamByName('@CTT').Value    :=  Q_OSCTT_ID.asinteger ;
                 STP_SERVESPEC.ParamByName('@OS').Value    :=  Q_OSOS_ID.asinteger ;
                 STP_SERVESPEC.Execproc;
              End
            except
               begin
                 MessageDlg('Geração de Serviços e Especificações, com erro !',mtInformation,[mbOk], 0);
                 abort  ;
               end;
            end;

                 try
              Begin
                 STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'MC' ;
                 STP_TPDO_TPOS_OS.ParamByName('@TOS').Value    :=   Q_OSTOS_ID.asinteger;
                 STP_TPDO_TPOS_OS.ParamByName('@OS').Value    :=  Q_OSOS_ID.asinteger ;
                 STP_TPDO_TPOS_OS.ParamByName('@ADMITE').Value    := Q_CTTCTT_TERCEIRO.asstring ;
                 STP_TPDO_TPOS_OS.Execproc;
              End
            except
               begin
                 MessageDlg('Geração de Tipos de Documentos, com erro !',mtInformation,[mbOk], 0);
                 abort  ;
               end;
            end;
            //////


            Q_OCE.close ;
            Q_OCE.open ;

            Q_MANIF.close ;
            Q_MANIF.Open ;
            Q_MANIF.locate('MANI_ID',MAN2,[])  ;
  end ;



end;

procedure TFManifestoCOL.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
    Q_CTT.close ;
    Q_CTT.Sql.Clear ;
    Q_CTT.Sql.Add('SELECT CTT_ID,PAR_ID,CTT_NOME,TOS_ID,CLIN_ID,CTT_TERCEIRO from CONTRATO') ;
    Q_CTT.Sql.Add(' where CLIN_ID = ' + Q_CLINcttCLIN_ID.asstring  ) ;
    Q_CTT.Open ;
end;

procedure TFManifestoCOL.wwDBLookupCombo3Enter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo3Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;

 { IF wwDBLookupCombo3.text = '' then  begin
     wwDBLookupCombo16.text := '' ;
     wwDBLookupCombo16.lookupavalue := '' ;
  end else begin
     wwDBLookupCombo16.enabled := true ;
     wwDBLookupCombo16.setfocus ;
  end ;    }

   If wwDBLookupCombo3.text <> '' then
    wwDBLookupCombo3.text := Q_CLINcttCLIN_RAZA.asstring   ;
end;

procedure TFManifestoCOL.wwDBLookupCombo17Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo17Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBLookupCombo18Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBLookupCombo18Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFManifestoCOL.wwDBComboBox2Enter(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBComboBox2Exit(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := Clwindow ;

   IF Q_MANIFFRETE_NEGOCIA.asstring = 'N'  then begin
       Label40.visible := false   ;
       ///Label57.visible := false   ;
       wwDBEdit10.visible := false ;
       ////wwDBEdit25.visible := false ;

         If ((Q_MANIF.state = dsedit) or
             (Q_MANIF.state = dsinsert))  then
                 ///Q_MANIF.edit ;
                 Q_MANIFVLR_NEGOCIA.asstring :=  ''  ;
                 ///Q_MANIF.post ;
         wwDBEdit25.setfocus ;

   end else begin
        IF Q_MANIFFRETE_NEGOCIA.asstring <> ''  then begin
           Label40.visible := true ;
           ///Label57.visible := true ;
           wwDBEdit10.visible := true ;
           ////wwDBEdit25.visible := true ;
           wwDBEdit10.setfocus ;
        end ;

   end ;









end;

procedure TFManifestoCOL.wwDBEdit22Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit22Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBEdit21Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit21Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBEdit23Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit23Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBComboBox3Enter(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBComboBox3Exit(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFManifestoCOL.wwDBLookupCombo12Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow ;
  If wwDBLookupCombo12.text <> '' then
     wwDBLookupCombo12.text := Q_CTTCTT_NOME.asstring  ;
end;

procedure TFManifestoCOL.wwDBLookupCombo12Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Claqua ;
end;
       
procedure TFManifestoCOL.wwDBEdit26Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFManifestoCOL.wwDBEdit26Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFManifestoCOL.Q_COLETANFAfterPost(DataSet: TDataSet);
var
STROCE : string ;
MAN : string ;
begin
   STROCE := Q_COLETANFCNF_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_COLETANF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_COLETANF.close ;
   Q_COLETANF.Open ;

   if STROCE = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(CNF_id) as Numero from COLETA_NF ' ) ;
     Q_AUX.open ;
     STROCE := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;

   if STROCE <> '' then
      Q_COLETANF.locate('CNF_id',STROCE,[]) ;



   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add( 'SELECT SUM(CNF_PESO)    as PESO ,     ');
   Q_AUX.Sql.Add( '       SUM(CNF_PALLETS) as NUMPALLET, ');
   Q_AUX.Sql.Add( '       SUM(CNF_VALOR)   as VALOR,     ');
   Q_AUX.Sql.Add( '       SUM(CNF_UV)      as NUMUV      ');
   Q_AUX.Sql.Add( 'FROM   coleta_NF WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open  ;


  ///STROCE := Q_AUX.fieldbyname('Numero').asstring ;
  ///  formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat))

   Q_AUX2.close;
   Q_AUX2.Sql.Clear;
   Q_AUX2.Sql.Add('UPDATE MANIFESTO set MANI_PESO = ' +  Funcoes.Converte(floattostr(Q_AUX.fieldbyname('PESO').asfloat) ,',','.') + ',');
   Q_AUX2.Sql.Add(' VLR_TOTAL = ' + Funcoes.Converte(floattostr(Q_AUX.fieldbyname('VALOR').asfloat) ,',','.') + ',');
   Q_AUX2.Sql.Add(' MANI_QTDEPALLET = ' + Q_AUX.fieldbyname('NUMPALLET').asstring + ',');
   Q_AUX2.Sql.Add(' MANI_QTDEuv = ' + Funcoes.Converte(floattostr(Q_AUX.fieldbyname('NUMUV').asfloat) ,',','.') );
   Q_AUX2.Sql.Add('where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
   Q_AUX2.ExecSql;

   MAN :=  Q_MANIFMANI_ID.asstring ;
   Q_MANIF.close;
   Q_MANIf.open ;
   Q_MANIF.locate('MANI_ID',MAN,[]) ;





end;

procedure TFManifestoCOL.Q_COLETANFAfterDelete(DataSet: TDataSet);
var
STROCE : string ;
begin
   STROCE := Q_COLETANFCNF_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_COLETANF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_COLETANF.close ;
   Q_COLETANF.Open ;

   if STROCE <> '' then begin
       Q_COLETANF.close ;
       Q_COLETANF.Open ;
       Q_COLETANF.locate('CNF_id',STROCE,[])    ;

   end  ;


end;

procedure TFManifestoCOL.Q_COLETANFNewRecord(DataSet: TDataSet);
begin
  Q_COLETANFMANI_ID.asstring := Q_MANIFMANI_ID.asstring ;
end;

procedure TFManifestoCOL.SBT_VISUClick(Sender: TObject);
var
   MANID : string ;

   MAN2 : string ;
   OS_SAIDA : INTEGER;
begin

  if (Q_MANIFMANI_PESO.AsString = '') or (Q_MANIFMANI_PESO.Value = 0) then begin
      ShowMessage('Informe o peso');
      Abort;
  end;


   If (Q_COLETANF.state = dsedit) or
      (Q_COLETANF.state = dsinsert)  then
      Q_COLETANF.post ;


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





   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
   Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
   Q_AUX.open  ;
                           



   IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0)  then begin
      If MessageDlg('Confirma Geração de OC para este Manifesto? Caso confirme a Geração, o Manifesto será baixado !  ',MtConfirmation,[MbYes,
          MbNo],0)=MrYes Then  begin
          MANID := Q_MANIFMANI_ID.asstring ;

          try Begin

                  STP_OCE.ParamByName('@MANI_ID').Value  := Q_MANIFMANI_ID.asstring ;
                  STP_OCE.ParamByName('@TRANSP').Value  :=  Q_TRANSTRANS_ID.asstring ;
                  STP_OCE.ParamByName('@VEIC').Value  := Q_VEICVEIC_ID.asstring ;

                  STP_OCE.ParamByName('@EMP').Value  := Q_PARPAR_ID.asstring ;

                  STP_OCE.ParamByName('@TPCARGA').Value  := Q_MANIFMANI_TIPOCARGA.asstring  ;

                  STP_OCE.ParamByName('@REGCOBRA').Value   := Q_MANIFREG_ID_COBRA.asstring ;
                  STP_OCE.ParamByName('@VEICCOBRA').Value  := Q_MANIFVEIC_ID_COBRA.asstring ;
                  STP_OCE.ParamByName('@MOT_ID').Value  := Q_MANIFMOT_ID.asstring;

                  STP_OCE.ParamByName('@REMETENTE').Value  := Q_MANIFCLIN_ID.asstring;
                  STP_OCE.Execproc;

             ///Q_NF55.close ;
             ///Q_NF55.open  ;


          End
           except
          begin
             MessageDlg('Geração da Minuta, com erro!',mtInformation,[mbOk], 0);
             abort  ;
            end;
          end ;

          Q_MANIF.close ;
          Q_MANIF.Open  ;
          Q_MANIF.locate('MANI_ID',MANID,[])  ;


        TabbedNotebook1.pageindex := 3 ;
        MessageDlg('Geração de OC efetuada com sucesso!',mtInformation,[mbOk], 0);
      end ;


       If (Q_OCE.state = dsedit) or (Q_OCE.state = dsINSERT) then
           Q_OCE.post ;

        Q_OCE.close;
        Q_OCE.open ;

                MAN2 := Q_MANIFMANI_ID.asstring ;


                Q_aux.close;
                Q_aux.Sql.Clear;
                Q_aux.Sql.Add(' insert into OS ( ');
                Q_aux.Sql.Add('             CLIN_ID,CTT_ID,TOS_ID,OS_DATA,');
                Q_aux.Sql.Add('             OS_GEROU,TPCARGA,OS_FATURADA) ') ;
                Q_aux.Sql.Add(' values ( ' );
                Q_aux.Sql.Add( '''' + Q_MANIFCLIN_ID.asstring + '''' + ',');
                Q_aux.Sql.Add( '''' + Q_MANIFCTT_ID.asstring + '''' + ',');
                Q_aux.Sql.Add( INTTOSTR(1) + ',');
                Q_aux.Sql.Add( ''''+ FormatDateTime('MM/DD/YYYY',NOW ) + '''' + ',') ;
                Q_aux.Sql.Add( '''' + 'S' + '''' + ',') ;
                Q_aux.Sql.Add( '''' + Q_MANIFMANI_TIPOCARGA.asstring + '''' + ',') ;
                Q_aux.Sql.Add( '''' + 'N' + '''' +  ')' );
                Q_aux.ExecSql;

               { STP_ADD_OS.Params[0].AsInteger :=  Q_MANIFCLIN_ID.Value;
                STP_ADD_OS.Params[1].AsInteger :=  Q_MANIFCTT_ID.Value;
                STP_ADD_OS.Params[2].AsInteger := 1;
                STP_ADD_OS.Params[3].AsDateTime := Now;
                STP_ADD_OS.Params[4].AsString := 'S';
                STP_ADD_OS.Params[5].AsString := Q_MANIFMANI_TIPOCARGA.AsString;
                STP_ADD_OS.Params[6].AsString := 'N';

                STP_ADD_OS.ExecProc;

                OS_SAIDA := STP_ADD_OS.ParamByName('OS_ID').AsInteger;}

                Q_OS.close ;
                Q_OS.open  ;
                Q_OS.last  ;


                Q_aux.Sql.Clear;
                Q_aux.Sql.Add(' UPDATE ORDEM_COLETA_ENTREGA SET  OS_ID = ' +  Q_OSOS_ID.asSTRING );
                Q_aux.Sql.Add(' where MANI_ID = ' +  Q_MANIFMANI_ID.asSTRING );
                Q_aux.ExecSql;


                Q_aux.Sql.Clear;
                Q_aux.Sql.Add(' UPDATE MANIFESTO SET CONFIRMA_MANI = ' + '''' + 'S' + '''' );
                Q_aux.Sql.Add(' where MANI_ID = ' + Q_MANIFMANI_ID.asstring );
                Q_aux.ExecSql;




                /////
                 try
                  Begin
                     STP_SERVESPEC.ParamByName('@CTT').Value    :=  Q_OSCTT_ID.asinteger ;
                     STP_SERVESPEC.ParamByName('@OS').Value    :=  Q_OSOS_ID.asinteger ;
                     STP_SERVESPEC.Execproc;
                  End
                except
                   begin
                     MessageDlg('Geração de Serviços e Especificações, com erro !',mtInformation,[mbOk], 0);
                     abort  ;
                   end;
                end;

                     try
                  Begin
                     STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'MC' ;
                     STP_TPDO_TPOS_OS.ParamByName('@TOS').Value    :=   Q_OSTOS_ID.asinteger;
                     STP_TPDO_TPOS_OS.ParamByName('@OS').Value    :=  Q_OSOS_ID.asinteger ;
                     STP_TPDO_TPOS_OS.ParamByName('@ADMITE').Value    := Q_CTTCTT_TERCEIRO.asstring ;
                     STP_TPDO_TPOS_OS.Execproc;
                  End
                except
                   begin
                     MessageDlg('Geração de Tipos de Documentos, com erro !',mtInformation,[mbOk], 0);
                     abort  ;
                   end;
                end;
                //////


                



                Q_OCE.close ;
                Q_OCE.open ;

                //geração do conhecimento complementar
                IF Q_MANIFPAGA_ADICIONAL.AsString = 'S' then begin
                    IF Q_MANIFVALOR_ADICIONAL.AsFloat > 0.00 then BEGIN
                       { try
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@ORD_ID').Value :=  Q_OCEORD_ID.AsInteger;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@FRETE').Value :=  Q_MANIFVALOR_ADICIONAL.AsFloat;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@PEDAGIO').Value :=   0;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@TX_ENTREGA').Value :=  0;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@DESPACHO').Value := 0;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@SEGURO').Value :=  0;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@ALIQ_ICMS').Value := Q_OCEORD_ALIQ.AsFloat;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@VALOR_ICMS').Value := ((Q_MANIFVALOR_ADICIONAL.AsFloat * Q_OCEORD_ALIQ.AsFloat)/100.00 ) ;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@TOTAL').Value := Q_MANIFVALOR_ADICIONAL.AsFloat + ((Q_MANIFVALOR_ADICIONAL.AsFloat * Q_OCEORD_ALIQ.AsFloat)/100.00 );
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.Parameters.ParamByName('@BASE_ICMS').Value := Q_MANIFVALOR_ADICIONAL.AsFloat;
                                STP_GERA_CONHECIMENTO_COMPLEMENTAR.ExecProc;


                        except
                          ON E : Exception do
                             begin
                             MessageDlg('Geração de Conhecimento complementar, com erro ! ' + E.Message ,mtInformation,[mbOk], 0);
                             abort  ;
                           end;
                        end;
                                 }

                        //GERA PAGAMENTO DE FRETE DO ADICIONAL
                        qrPgtoFrete.Close;
                        qrPgtoFrete.Open;
                        qrPgtoFrete.Append;
                        qrPgtoFreteTRANS_ID.Value := Q_MANIFTRANS_ID.AsInteger;
                        qrPgtoFreteDATA.Value := Now;
                        qrPgtoFreteREG_ID.Value := Q_MANIFREG_ID.AsInteger;
                        qrPgtoFreteVLR_FRETE.Value := Q_MANIFVALOR_ADICIONAL.AsFloat;
                        qrPgtoFreteOBS.Value := 'Valor adicional do frete, manifesto: ' + Q_MANIFMANI_ID.AsString ;
                        qrPgtoFreteDATA_FECHAMENTO.Value := Now;
                        qrPgtoFreteMOT_ID.Value := -1;
                        qrPgtoFrete.post;
                    end;
                end;




                                    


                
                Q_OCE.close ;
                Q_OCE.open ;


                Q_MANIF.close ;
                Q_MANIF.Open ;
                Q_MANIF.locate('MANI_ID',MAN2,[])  ;
      ///end ;
   end ;




   //rotina para ratear o valor do frete conforme o peso.


end;

procedure TFManifestoCOL.Q_MANIFBeforeEdit(DataSet: TDataSet);
begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
     Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
     Q_AUX.open  ;
     IF (Q_AUX.fieldbyname('XVALOR').asinteger > 0)  then abort ;
end;

procedure TFManifestoCOL.Q_COLETANFBeforeEdit(DataSet: TDataSet);
begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from ORDEM_COLETA_ENTREGA' ) ;
     Q_AUX.Sql.Add('WHERE MANI_ID = ' + Q_MANIFMANI_ID.asstring ) ;
     Q_AUX.open  ;
     IF (Q_AUX.fieldbyname('XVALOR').asinteger > 0)  then abort ;
end;

procedure TFManifestoCOL.SpeedButton7Click(Sender: TObject);
begin
       Q_MANIf2.open ;
       wwSearchDialog1.execute ;
       Q_MANIf.locate('MANI_ID',Q_MANIf2MANI_ID.asstring,[]);
       Q_MANIf2.close ;
end;

procedure TFManifestoCOL.Q_COLETANFBeforePost(DataSet: TDataSet);
var a :Integer;
begin


      try
          a := StrToInt(Q_COLETANFCNF_NF.AsString);
      except
          ShowMessage('Informe um valor numérico no campo nota fiscal');
          Abort;
      end;



      IF (Q_COLETANFCNF_NF.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Nº NFs é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBG_INFI.SelectedField := Q_COLETANFCNF_NF;
           abort ;
       end ;

       IF (Q_COLETANFCNF_UV.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Qtde. UV é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBG_INFI.SelectedField := Q_COLETANFCNF_UV;
           abort ;
       end ;

        IF (Q_COLETANFCNF_PESO.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Peso é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBG_INFI.SelectedField := Q_COLETANFCNF_PESO;
           abort ;
       end ;

        IF (Q_COLETANFCNF_PALLETS.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Pallets é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBG_INFI.SelectedField := Q_COLETANFCNF_PALLETS;
           abort ;
        end ;

        IF (Q_COLETANFCNF_VALOR.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Valor é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBG_INFI.SelectedField := Q_COLETANFCNF_VALOR;
           abort ;
        end ;


         IF (Q_COLETANFCLIF_ID.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('Cliente Final é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           DBG_INFI.SelectedField := Q_COLETANFCLIF_ID;
           abort ;
        end ;

        IF (Q_COLETANFCFOP.asstring = '')  then begin
           TabbedNotebook1.pageindex := 2 ;
           MessageDlg('CFOP é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           abort ;
       end ;


end;

procedure TFManifestoCOL.Q_CLIFAfterOpen(DataSet: TDataSet);
begin
  //alteramos os dados mostrados no combo de clientes
  qrAuxClin.CLOSE;
  qrAuxClin.Params[0].Value := Q_MANIFCLIN_ID.Value;
  qrAuxClin.Open;

  with DBLC_INF_PROD do
  begin
     Selected.Clear;

     if qrAuxClinCLIN_UTIL_COD.Value = 'S' then
     begin
       Selected.Add('NBFINAL_COD_CLIN'#9'10'#9'Cod. Cliente'#9'F');
       Selected.Add('CLIF_RAZA'#9'50'#9'Razão'#9'F');
       Selected.Add('CLIF_ENDERECO'#9'50'#9'Endereço'#9'F');
     end
     else
     BEGIN
       Selected.Add('CLIF_RAZA'#9'50'#9'Razão'#9'F');
       Selected.Add('CLIF_ENDERECO'#9'50'#9'Endereço'#9'F');
     end;
  end;


end;

procedure TFManifestoCOL.RatearFrete;
var PesoTotal, ValorFrete, NovoFrete, TotalPrest, ICMS, AliquotaIcms, outros : Double;
begin
    with qrAuxRateio do begin
        close;
        sql.Clear;
        sql.Add('select sum(ord_vlr_frete) as frete, sum(ord_peso_total) as peso');
        sql.Add('from ordem_coleta_entrega where mani_id = ' + Q_MANIFMANI_ID.AsString);
        Open;
    end;

    if qrAuxRateio.FieldByName('frete').AsString = '' then begin
        MessageBox(Self.Handle, 'Não foi possível ratear o valor do frete', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end;

    if qrAuxRateio.FieldByName('peso').AsString = '' then begin
        MessageBox(Self.Handle, 'Não foi possível ratear o valor do frete', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end;

    ValorFrete := qrAuxRateio.FieldByName('frete').AsFloat;
    PesoTotal := qrAuxRateio.FieldByName('peso').AsFloat;

    Q_OCE.First;
    while not Q_OCE.Eof do begin

        //regra de três para ratear o frete
        NovoFrete := 0;

        NovoFrete := (Q_OCEORD_PESO_TOTAL.AsFloat * ValorFrete) / PesoTotal;


        TotalPrest := 0;
        ICMS := 0;

        TotalPrest := NovoFrete;

        if Q_OCEORD_VLR_SECCAT.AsString <> '' then
                TotalPrest := TotalPrest + Q_OCEORD_VLR_SECCAT.AsFloat;

        if Q_OCEORD_VLR_DESPACHO.AsString <> '' then
                TotalPrest := TotalPrest + Q_OCEORD_VLR_DESPACHO.AsFloat;

        if Q_OCEORD_VLR_PEDAGIO.AsString <> '' then
                TotalPrest := TotalPrest + Q_OCEORD_VLR_PEDAGIO.AsFloat;


        //verifica se o valor de outros é maior que o valor do icms, se for tira o valor do icms
        if Q_OCEORD_VLR_OUTROS.AsString <> '' then begin
                if Q_OCEORD_VLR_OUTROS.AsFloat > Q_OCEORD_VLR_ICMS.AsFloat then
                     TotalPrest := TotalPrest + Q_OCEORD_VLR_OUTROS.AsFloat - Q_OCEORD_VLR_ICMS.AsFloat
                else
                     TotalPrest := TotalPrest + Q_OCEORD_VLR_OUTROS.AsFloat ;
        end;

        if Q_OCEORD_VLR_OUTROS.AsFloat > Q_OCEORD_VLR_ICMS.AsFloat then
             outros :=   Q_OCEORD_VLR_OUTROS.AsFloat - Q_OCEORD_VLR_ICMS.AsFloat
        else
             outros :=   Q_OCEORD_VLR_OUTROS.AsFloat ;

        TotalPrest := TotalPrest + outros;


        //
        TotalPrest := TotalPrest / 0.88;


        if Q_OCEORD_ALIQ.AsString = '' then
                AliquotaIcms := 0
        else
                AliquotaIcms := Q_OCEORD_ALIQ.AsFloat;

        ICMS := (AliquotaIcms * TotalPrest) / 100;

        outros := outros + ICMS;



        //atualizamos o novo valor na OE
        with qrAuxRateio do begin
            close;
            sql.Clear;
            sql.Add('update ordem_coleta_entrega set');
            sql.Add('ord_vlr_frete = round( '+ StringReplace(FloatToStr(NovoFrete),',','.', [rfReplaceAll])   + '  ,2),');
            sql.Add('ord_totalprest = round( '+ StringReplace(FloatToStr(TotalPrest),',','.', [rfReplaceAll])  + '  ,2),');
            sql.Add('ord_vlr_outros = round( '+ StringReplace(FloatToStr(outros),',','.', [rfReplaceAll])  + '  ,2),');
            sql.Add('ord_vlr_icms = round( '+ StringReplace(FloatToStr(ICMS),',','.', [rfReplaceAll])  + '  ,2)');
            sql.Add('where ord_id = ' + Q_OCEORD_ID.AsString);
            ExecSQL;
        end;


        Q_OCE.Next;
    end;//end while

    Q_OCE.close;
    Q_OCE.open;

end;

procedure TFManifestoCOL.Button1Click(Sender: TObject);
begin
     RatearFrete;
end;

procedure TFManifestoCOL.cboProdutoColetaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
    Q_COLETANFCODIGO.Value := qrProdColetaCODIGO.AsString;
end;

procedure TFManifestoCOL.DBCheckBox2Click(Sender: TObject);
begin

  

   //Q_MANIF.EDIT;
   if DBCheckBox2.Checked then begin
        edtValorAdicional.Visible := True;
        //
   end
   else
   begin
        //Q_MANIFVALOR_ADICIONAL.AsFloat := 0.00;
        edtValorAdicional.Visible := False;
   end;


end;

procedure TFManifestoCOL.cboClienteRemetenteExit(Sender: TObject);
begin
  If (cboClienteRemetente.text <> '') then  begin
      Q_MANIf.edit;
      If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then

            else begin
                RadioGROUP2.itemindex := -1 ;
                wwDBLookupCombo7.visible := false;
                wwDBLookupCombo9.visible := false;
                cboClienteRemetente.Visible := False;
                ABORT ;
            end ;


      end ;

     Q_MANIFCLI_REMETENTE_TIPO.AsString := 'C';
     Q_MANIFCLI_REMETENTE.AsInteger := Q_REMCLIN_ID.ASINTEGER;


     Q_MANIfMANI_CENDERECO.asstring  :=  Q_REMCLIN_ENDERECO.asstring ;
     Q_MANIfMANI_CENDERECOCOMPL.asstring := Q_REMCLIN_ENDERECO_COMPL.asstring ;
     Q_MANIfMANI_CENDERECOBAIRRO.asstring := Q_REMCLIN_ENDERECO_BAIRRO.asstring ;
     Q_MANIfMANI_MUN_IDC.asstring :=  Q_REMMUN_ID.asstring ;
     Q_MANIfMANI_CUF_SIGLA.asstring :=  Q_REMUF_SIGLA.asstring ;
     Q_MANIfMANI_CCEP.asstring :=  Q_REMCLIN_CEP.asstring ;

     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit11.setfocus ;
  end ;
end;

end.

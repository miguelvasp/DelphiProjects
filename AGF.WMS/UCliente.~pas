
unit UCliente;
                            ///
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Tabnotbk, wwdblook, StdCtrls, Mask, wwdbedit, ExtCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, DBCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid,
  Wwdotdot, Wwdbcomb, wwstorep, wwDialog, Wwlocate, wwidlg, ADODB;

type
  TFCliente = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Q_CLINBF: TwwQuery;
    DS_CLINBF: TwwDataSource;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLINBFCLIN_PESSOA: TStringField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_NOME: TStringField;
    Q_CLINBFCLIN_CGCCPF: TStringField;
    Q_CLINBFCLIN_INSCRG: TStringField;
    Q_CLINBFCLIN_ENDERECO: TStringField;
    Q_CLINBFCLIN_MUNICIPIO: TStringField;
    Q_CLINBFCLIN_CEP: TStringField;
    Q_CLINBFCLIN_TEL1: TStringField;
    Q_CLINBFCLIN_TEL2: TStringField;
    Q_CLINBFCLIN_FAX: TStringField;
    Q_CLINBFCLIN_EMAIL: TStringField;
    Panel1: TPanel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    DBE_CLI_CGC: TwwDBEdit;
    Label2: TLabel;
    DBE_CLI_INSC: TwwDBEdit;
    Label4: TLabel;
    Label18: TLabel;
    DBE_CLI_FEND: TwwDBEdit;
    Label11: TLabel;
    DBE_CLI_FCEP: TwwDBEdit;
    Label12: TLabel;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    DBE_CLI_FEMA: TwwDBEdit;
    Label7: TLabel;
    DBE_CLI_FFAX: TwwDBEdit;
    Label8: TLabel;
    DBE_CLI_FTE2: TwwDBEdit;
    Label9: TLabel;
    DBE_CLI_FTEL: TwwDBEdit;
    Label10: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    Panel2: TPanel;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    Q_CONTA: TwwQuery;
    UPD_CONTA: TUpdateSQL;
    DS_CONTA: TwwDataSource;
    Q_CONTACONT_ID: TAutoIncField;
    Q_CONTACLIN_ID: TIntegerField;
    Q_CONTACONT_NOME: TStringField;
    Q_CONTACONT_TEL1: TStringField;
    Q_CONTACONT_RAMAL: TStringField;
    Q_CONTACONT_EMAIL: TStringField;
    Q_CONTATCONT_ID: TIntegerField;
    DBText1: TDBText;
    Label13: TLabel;
    DBText2: TDBText;
    Label14: TLabel;
    DBText4: TDBText;
    Label15: TLabel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    DBNavigator1: TDBNavigator;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Panel4: TPanel;
    Label19: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Q_PROD: TwwQuery;
    DS_PROD: TwwDataSource;
    UPD_PROD: TUpdateSQL;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODTPRO_ID: TIntegerField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_PRODPRO_PESO: TFloatField;
    Q_PRODPRO_VOLUME: TFloatField;
    Q_PRODPRO_VOLUME_PALLET: TFloatField;
    Q_TPROD: TwwQuery;
    DS_TPROD: TwwDataSource;
    UPD_TPROD: TUpdateSQL;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODCLIN_ID: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_TCONT: TwwQuery;
    Q_TCONTTCONT_ID: TAutoIncField;
    Q_TCONTTCONT_DESCRICAO: TStringField;
    Q_CONTATCONT_DESC: TStringField;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_PRODUVEN_DESC: TStringField;
    Q_PRODTPRO_DESC: TStringField;
    Panel6: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    Q_CLIF: TwwQuery;
    Q_CLIFCLIF_ID: TAutoIncField;
    Q_NBFIN: TwwQuery;
    DS_NBFIN: TwwDataSource;
    UPD_NBFIN: TUpdateSQL;
    Q_NBFINNBFINAL_ID: TAutoIncField;
    Q_NBFINCLIF_ID: TIntegerField;
    Q_NBFINCLIN_ID: TIntegerField;
    Q_NBFINNBFINAL_DT_INCL: TDateTimeField;
    Q_UF: TwwQuery;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_CLINBFUF_SIGLA: TStringField;
    Label34: TLabel;
    DBCB_CLI_PESS: TwwDBComboBox;
    Q_CLIFCLIF_RAZA: TStringField;
    SpeedButton4: TSpeedButton;
    Q_TPROD_AUX: TwwQuery;
    Q_CEP: TwwQuery;
    STP_CEP: TwwStoredProc;
    Q_CLINBFCLIN_ENDERECO_COMPL: TStringField;
    Q_CLINBFCLIN_ENDERECO_BAIRRO: TStringField;
    Label41: TLabel;
    wwDBEdit16: TwwDBEdit;
    Label42: TLabel;
    wwDBEdit18: TwwDBEdit;
    Label43: TLabel;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_CG: TwwQuery;
    Q_CGCON_CODI: TStringField;
    Q_CGCON_DESC: TStringField;
    Q_CGCON_ENSA: TStringField;
    Q_CGCON_OPER: TStringField;
    Q_CGCON_FLOA: TFloatField;
    Q_CGCON_FLUX: TStringField;
    Q_CLINBFCON_CODI: TStringField;
    Q_CONTACONT_TEL2: TStringField;
    Label44: TLabel;
    wwDBEdit20: TwwDBEdit;
    Label45: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Q_CLINBFCLIN_CONTRATO: TStringField;
    Q_CLINBFCLIN_UTIL_COD: TStringField;
    Label46: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Q_NBFINNBFINAL_COD_CLIN: TStringField;
    Q_AUX: TwwQuery;
    Q_PRODPRO_ORIGEM: TStringField;
    TabbedNotebook2: TTabbedNotebook;
    Panel5: TPanel;
    Label20: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label48: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit7: TwwDBEdit;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit12: TwwDBEdit;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    Label29: TLabel;
    Label47: TLabel;
    DBText5: TDBText;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    Label49: TLabel;
    DBText6: TDBText;
    Panel7: TPanel;
    Label51: TLabel;
    Label61: TLabel;
    wwDBGrid4: TwwDBGrid;
    wwIButton4: TwwIButton;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBComboBox4: TwwDBComboBox;
    Q_PROAREA: TwwQuery;
    UPD_PROAREA: TUpdateSQL;
    DS_PROAREA: TwwDataSource;
    Q_AR: TwwQuery;
    Q_ARAR_ID: TAutoIncField;
    Q_ARAR_NOME: TStringField;
    Q_ARAR_CONTROL_POS: TStringField;
    wwDBComboBox5: TwwDBComboBox;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    wwDBEdit21: TwwDBEdit;
    Q_PRODPRO_VALIDDIAS: TIntegerField;
    Q_PRODPRO_ALTURA: TIntegerField;
    Q_PRODPRO_LASTRO: TIntegerField;
    Label30: TLabel;
    wwDBEdit9: TwwDBEdit;
    Q_PAR: TwwQuery;
    Q_PARAR_ID: TIntegerField;
    Q_PROAREAPROAREA_ID: TAutoIncField;
    Q_PROAREAPRO_ID: TIntegerField;
    Q_PROAREAAR_ID: TIntegerField;
    Q_PROAREAPROAREA_SITU: TStringField;
    Q_PROAREAPROAREA_ORDEM: TIntegerField;
    Q_PROAREAAR_NOME: TStringField;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    DS_MUNI: TwwDataSource;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Label17: TLabel;
    Q_CLINBFMUN_ID: TIntegerField;
    Label54: TLabel;
    wwDBEdit22: TwwDBEdit;
    Q_CLINBFCLIN_WEB: TStringField;
    Q_CTT: TwwQuery;
    Q_CTTCTT_ID: TAutoIncField;
    Q_CTTCLIN_ID: TIntegerField;
    SpeedButton2: TSpeedButton;
    wwSearchDialog1: TwwSearchDialog;
    Label55: TLabel;
    DBText7: TDBText;
    Panel8: TPanel;
    Label56: TLabel;
    wwDBEdit23: TwwDBEdit;
    Label57: TLabel;
    wwDBEdit24: TwwDBEdit;
    Label58: TLabel;
    wwDBEdit25: TwwDBEdit;
    Label59: TLabel;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Label60: TLabel;
    wwDBEdit26: TwwDBEdit;
    Label62: TLabel;
    wwDBEdit27: TwwDBEdit;
    Label63: TLabel;
    wwDBEdit28: TwwDBEdit;
    Label64: TLabel;
    wwDBLookupCombo9: TwwDBLookupCombo;
    Label65: TLabel;
    wwDBEdit29: TwwDBEdit;
    Q_MUNI_COBR: TwwQuery;
    DS_MUNI_COBR: TwwDataSource;
    Q_MUNI_COBRMUN_ID: TAutoIncField;
    Q_MUNI_COBRDIPAM: TStringField;
    Q_MUNI_COBRMUN_NOME: TStringField;
    Q_MUNI_COBRUF_SIGLA: TStringField;
    Q_MUNI_COBRREG_ID: TIntegerField;
    Q_UF_COBR: TwwQuery;
    Q_UF_COBRUF_SIGLA: TStringField;
    Q_UF_COBRUF_NOME: TStringField;
    Q_UF_COBRUF_ALIQUOTA: TFloatField;
    Q_CLINBFCLIN_ENDC: TStringField;
    Q_CLINBFCLIN_END_COMPLC: TStringField;
    Q_CLINBFCLIN_END_BAIRC: TStringField;
    Q_CLINBFCLIN_MUNICC: TStringField;
    Q_CLINBFUF_SIGLAC: TStringField;
    Q_CLINBFCLIN_CEPC: TStringField;
    Q_CLINBFCLIN_TELC: TStringField;
    Q_CLINBFCLIN_FAXC: TStringField;
    Q_CLINBFCLIN_EMAILC: TStringField;
    Q_CLINBFMUN_IDC: TIntegerField;
    UPD_CLINBF: TUpdateSQL;
    Label66: TLabel;
    DBText8: TDBText;
    Panel9: TPanel;
    wwDBGrid5: TwwDBGrid;
    wwIButton5: TwwIButton;
    Q_CTTcTT_NOME: TStringField;
    Q_CTTCTT_DT_INICIO: TDateTimeField;
    Q_CTTCTT_DT_FINAL: TDateTimeField;
    DS_CTT: TwwDataSource;
    Q_CTTTOS_NOME: TStringField;
    Q_NBFINCLIF_RAZA: TStringField;
    wwSearchDialog2: TwwSearchDialog;
    Q_NBFIN2: TwwQuery;
    Q_NBFIN2NBFINAL_ID: TAutoIncField;
    Q_NBFIN2CLIF_ID: TIntegerField;
    Q_NBFIN2CLIN_ID: TIntegerField;
    Q_NBFIN2NBFINAL_DT_INCL: TDateTimeField;
    Q_NBFIN2NBFINAL_COD_CLIN: TStringField;
    Q_NBFIN2CLIF_RAZA: TStringField;
    Q_PROD2: TwwQuery;
    wwSearchDialog3: TwwSearchDialog;
    Q_PROD2PRO_COD: TStringField;
    Q_PROD2PRO_DESC: TStringField;
    Q_PROD2PRO_ID: TAutoIncField;
    Label67: TLabel;
    wwDBEdit30: TwwDBEdit;
    Label68: TLabel;
    Q_PRODPRO_PESO_LIQ: TFloatField;
    Q_PRODMARCADOR: TStringField;
    Label69: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label70: TLabel;
    wwDBEdit31: TwwDBEdit;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    GroupBox1: TGroupBox;
    Label71: TLabel;
    DBText9: TDBText;
    Label72: TLabel;
    Q_UNIDVEND2: TwwQuery;
    Q_UNIDVEND2UVEN_ID: TAutoIncField;
    Q_UNIDVEND2UVEN_NOME: TStringField;
    SpeedButton5: TSpeedButton;
    Panel10: TPanel;
    Label73: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    wwDBLookupCombo11: TwwDBLookupCombo;
    Q_PROAREA2: TwwQuery;
    Q_PROAREA2PROAREA_ID: TAutoIncField;
    Q_PROAREA2PRO_ID: TIntegerField;
    Q_PROAREA2AR_ID: TIntegerField;
    Q_PROAREA2PROAREA_SITU: TStringField;
    Q_PROAREA2PROAREA_ORDEM: TIntegerField;
    DS_PROD2: TwwDataSource;
    Q_PAR2: TwwQuery;
    Q_PAR2PAR_ID: TAutoIncField;
    Q_PAR2PAR_NOME: TStringField;
    Q_PAR2PAR_RAZA: TStringField;
    Label74: TLabel;
    DS_AR: TwwDataSource;
    Q_ARPAR_ID: TIntegerField;
    Q_ARPAR_NOME: TStringField;
    Label75: TLabel;
    wwDBComboBox6: TwwDBComboBox;
    Q_PRODPRO_DESCONTINUA: TStringField;
    SpeedButton6: TSpeedButton;
    Panel11: TPanel;
    Label76: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    wwDBLookupCombo12: TwwDBLookupCombo;
    Q_CTT_COPIA: TwwQuery;
    Q_CTT_COPIACTT_ID: TAutoIncField;
    Q_CTT_COPIACTT_NOME: TStringField;
    Q_CTT_COPIACLIN_ID: TIntegerField;
    Q_CTT_COPIACLIN_RAZA: TStringField;
    Q_CTT_COPIATOS_ID: TIntegerField;
    Q_CTT_COPIACTT_DT_INICIO: TDateTimeField;
    Q_CTT_COPIACTT_DT_FINAL: TDateTimeField;
    Q_CTT_COPIAEMP_ID: TIntegerField;
    Q_CTT_COPIACTT_TERCEIRO: TStringField;
    Q_CTT_COPIAPAR_ID: TIntegerField;
    Q_CTTxSERV: TwwQuery;
    DS_CTT_COPIA: TDataSource;
    Q_CTTxESPEC: TwwQuery;
    DS_CTTxSERV: TDataSource;
    Q_CTTxESPECCTTESPEC_ID: TAutoIncField;
    Q_CTTxESPECCTT_ID: TIntegerField;
    Q_CTTxESPECCTTSERV_ID: TIntegerField;
    Q_CTTxESPECCTTESPEC_ORDEM: TIntegerField;
    Q_CTTxESPECSER_ID: TIntegerField;
    Q_CTTxESPECTSER_ID: TIntegerField;
    Q_CTTxESPECCTTESPEC_FATOR: TFloatField;
    Q_CTTxESPECCTTESPEC_MINIMA: TIntegerField;
    Q_CTTxESPECUCOB_ID: TIntegerField;
    Q_CTTxESPECCTTESPEC_TPCARGA: TStringField;
    Q_CTTxESPECCLIF_ID: TIntegerField;
    Q_CTTxESPECVEIC_ID: TIntegerField;
    Q_CTTxESPECREG_ID: TIntegerField;
    Q_CTTxESPECTPRO_ID: TIntegerField;
    Q_CTTxESPECCTTESPEC_PESO_DE: TFloatField;
    Q_CTTxESPECCTTESPEC_PESO_ATE: TFloatField;
    Q_CTTxESPECCTTESPEC_AREA_DE: TFloatField;
    Q_CTTxESPECCTTESPEC_AREA_ATE: TFloatField;
    Q_CTTxESPECCTTESPEC_QTDEPALLET_DE: TIntegerField;
    Q_CTTxESPECCTTESPEC_QTDEPALLET_ATE: TIntegerField;
    Q_CTTxESPECCTTESPEC_VOL_DE: TFloatField;
    Q_CTTxESPECCTTESPEC_VOL_ATE: TFloatField;
    Q_CTTxSERVCTTSERV_ID: TAutoIncField;
    Q_CTTxSERVCTT_ID: TIntegerField;
    Q_CTTxSERVSER_ID: TIntegerField;
    Q_CTTxSERVTSER_ID: TIntegerField;
    Q_CTTxSERVCTTSERV_COBRADO: TStringField;
    Q_CTTxSERVTDOC_ID: TIntegerField;
    Q_CTTxSERV2: TwwQuery;
    Q_CTTxSERV2CTTSERV_ID: TAutoIncField;
    Q_CTTxSERV2CTT_ID: TIntegerField;
    Q_CTTxSERV2SER_ID: TIntegerField;
    Q_CTTxSERV2TSER_ID: TIntegerField;
    Q_CTTxSERV2CTTSERV_COBRADO: TStringField;
    Q_CTTxSERV2TDOC_ID: TIntegerField;
    GroupBox2: TGroupBox;
    Label77: TLabel;
    wwDBEdit32: TwwDBEdit;
    wwDBEdit33: TwwDBEdit;
    Label78: TLabel;
    Label79: TLabel;
    wwDBEdit34: TwwDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Q_PRODPRO_COMPR: TFloatField;
    Q_PRODPRO_LARG: TFloatField;
    Q_PRODPRO_ALT: TFloatField;
    DBText10: TDBText;
    DBText11: TDBText;
    Panel12: TPanel;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Panel13: TPanel;
    Label80: TLabel;
    DBText12: TDBText;
    Panel14: TPanel;
    wwDBGrid6: TwwDBGrid;
    wwIButton6: TwwIButton;
    Label81: TLabel;
    wwDBLookupCombo13: TwwDBLookupCombo;
    GroupBox3: TGroupBox;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBText13: TDBText;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label85: TLabel;
    DBText14: TDBText;
    Q_PALE: TwwQuery;
    Q_PALEPALE_ID: TAutoIncField;
    Q_PALECLIN_ID: TIntegerField;
    Q_PALEPRO_ID: TIntegerField;
    Q_PALECLIF_ID: TIntegerField;
    Q_PALEPALE_LASTRO: TIntegerField;
    Q_PALEPALE_ALTURA: TIntegerField;
    Q_PALEPALE_QTDE_PALLET: TIntegerField;
    Q_PALEPALE_QTDE_PALLETUV: TFloatField;
    DS_PALE: TwwDataSource;
    UPD_PALE: TUpdateSQL;
    Q_CLIF2: TwwQuery;
    Q_CLIF2CLIF_ID: TAutoIncField;
    Q_CLIF2CLIF_RAZA: TStringField;
    Q_PALECLIFraza: TStringField;
    Q_CLIF2CLIF_ENDERECO: TStringField;
    DBText15: TDBText;
    Label86: TLabel;
    Q_PALECLIFende: TStringField;
    Label87: TLabel;
    DBE_CFA_RICM: TwwDBEdit;
    Q_PRODPRO_REDUZICMS: TFloatField;
    Label88: TLabel;
    wwDBComboBox7: TwwDBComboBox;
    Q_CLINBFCLIN_TIPOSALDO: TStringField;
    Label89: TLabel;
    Q_CLINBFCLIN_VLRSALDO: TFloatField;
    wwDBEdit35: TwwDBEdit;
    Q_CLINBFCLIN_TPMERC: TStringField;
    DBMemo1: TDBMemo;
    Label90: TLabel;
    Label91: TLabel;
    Q_PRODPRO_ISENCAO: TStringField;
    wwDBComboBox9: TwwDBComboBox;
    Label92: TLabel;
    wwDBEdit36: TwwDBEdit;
    Q_PRODPRO_ICMS: TFloatField;
    Label93: TLabel;
    wwDBComboBox8: TwwDBComboBox;
    Q_CLINBFCLIN_LOTE: TStringField;
    Label94: TLabel;
    DBText16: TDBText;
    Panel15: TPanel;
    Label95: TLabel;
    wwDBEdit37: TwwDBEdit;
    Label96: TLabel;
    wwDBEdit38: TwwDBEdit;
    Label97: TLabel;
    wwDBEdit39: TwwDBEdit;
    Label98: TLabel;
    Label99: TLabel;
    wwDBEdit40: TwwDBEdit;
    wwDBEdit41: TwwDBEdit;
    wwDBEdit42: TwwDBEdit;
    Label100: TLabel;
    Q_PRODPRO_CST1: TStringField;
    Q_PRODPRO_CST2: TStringField;
    Q_PRODPRO_CST3: TStringField;
    Q_PRODPRO_CST4: TStringField;
    Q_PRODPRO_CST5: TStringField;
    Q_PRODPRO_CST6: TStringField;
    Label101: TLabel;
    wwDBEdit43: TwwDBEdit;
    Q_CLINBFCLIN_ISS: TFloatField;
    Q_AUX2: TwwQuery;
    Q_CLINBFCLIN_DESCONTO: TFloatField;
    edtDesconto: TDBEdit;
    Label102: TLabel;
    qrIbge: TADOQuery;
    Label103: TLabel;
    wwDBLookupCombo14: TwwDBLookupCombo;
    qrIbgeID: TAutoIncField;
    qrIbgeCOD_UF: TIntegerField;
    qrIbgeUF: TStringField;
    qrIbgeCOD_MUN: TIntegerField;
    qrIbgeMUNICIPIO: TStringField;
    Q_CLINBFIBGE_ID: TIntegerField;
    Label104: TLabel;
    wwDBEdit44: TwwDBEdit;
    Label105: TLabel;
    wwDBEdit45: TwwDBEdit;
    Q_PRODULTIMO_PRECO: TFloatField;
    Q_PRODEMBALAGEM: TStringField;
    Q_PRODTIPO_PRODUTO: TStringField;
    Q_PRODNCM: TStringField;
    Label106: TLabel;
    wwDBEdit46: TwwDBEdit;
    Label107: TLabel;
    wwDBLookupCombo15: TwwDBLookupCombo;
    qrLog: TADOQuery;
    qrLogLOGRADOURO: TStringField;
    Q_CLINBFRemanejaSN: TStringField;
    Q_CLINBFCLIN_LOGRADOURO: TStringField;
    Q_CLINBFCLIN_NUMERO: TStringField;
    Label108: TLabel;
    wwDBEdit47: TwwDBEdit;
    DBCheckBox1: TDBCheckBox;
    Q_PRODKIT: TStringField;
    wwDBGrid7: TwwDBGrid;
    qrInd: TADOQuery;
    Q_PRODESTOQUE: TFloatField;
    Q_PRODESTOQUE_2008: TFloatField;
    Q_PRODVALOR_2008: TFloatField;
    Q_PRODINSUMO: TStringField;
    dsInd: TDataSource;
    qrIndPRO_ID: TIntegerField;
    qrIndPRO_ID_KIT: TIntegerField;
    qrIndPRO_COD: TStringField;
    qrIndQTDE: TBCDField;
    qrProdutosKit: TADOQuery;
    DBNavigator2: TDBNavigator;
    qrProdutosKitPRO_ID: TAutoIncField;
    qrProdutosKitPRO_COD: TStringField;
    qrProdutosKitPRO_DESC: TStringField;
    cboProKit: TwwDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    Label109: TLabel;
    wwDBComboBox10: TwwDBComboBox;
    Q_CLINBFCLIN_ISENCAO: TStringField;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Q_CLINBFCLIN_COBRAFRETEDEV: TStringField;
    Q_CLINBFCLIN_PAGAFRETEDEV: TStringField;
    Label110: TLabel;
    wwDBEdit48: TwwDBEdit;
    Q_CLINBFCLIN_FRETEADICIONAL: TFloatField;
    GroupBox5: TGroupBox;
    Q_CLINBFCLIN_FRETEADICIONA: TFloatField;
    Q_CLINBFCLIN_PERMANENCIAISENTA: TIntegerField;
    Q_CLINBFCLIN_PERMANENCIAVALOR: TFloatField;
    Label111: TLabel;
    DBEdit1: TDBEdit;
    Label112: TLabel;
    DBEdit2: TDBEdit;
    Q_CLINBFDeixaRestoNaPosicao: TStringField;
    dbchk1: TDBCheckBox;
    btn1: TButton;
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBE_CLI_CGCExit(Sender: TObject);
    procedure DBE_CLI_CGCEnter(Sender: TObject);
    procedure DBE_CLI_INSCEnter(Sender: TObject);
    procedure DBE_CLI_INSCExit(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure DBE_CLI_FTE2Enter(Sender: TObject);
    procedure DBE_CLI_FTE2Exit(Sender: TObject);
    procedure DBE_CLI_FFAXEnter(Sender: TObject);
    procedure DBE_CLI_FFAXExit(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBEdit17Enter(Sender: TObject);
    procedure wwDBEdit17Exit(Sender: TObject);
    procedure wwDBEdit19Enter(Sender: TObject);
    procedure wwDBEdit19Exit(Sender: TObject);
    procedure Q_CLINBFAfterDelete(DataSet: TDataSet);
    procedure Q_CLINBFAfterPost(DataSet: TDataSet);
    procedure Q_CONTAAfterDelete(DataSet: TDataSet);
    procedure Q_CONTAAfterPost(DataSet: TDataSet);
    procedure Q_TPRODAfterDelete(DataSet: TDataSet);
    procedure Q_TPRODAfterPost(DataSet: TDataSet);
    procedure Q_PRODAfterDelete(DataSet: TDataSet);
    procedure Q_PRODAfterPost(DataSet: TDataSet);
    procedure Q_NBFINAfterPost(DataSet: TDataSet);
    procedure Q_NBFINAfterDelete(DataSet: TDataSet);
    procedure Q_CONTANewRecord(DataSet: TDataSet);
    procedure Q_TPRODNewRecord(DataSet: TDataSet);
    procedure Q_PRODNewRecord(DataSet: TDataSet);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_NBFINBeforePost(DataSet: TDataSet);
    procedure Q_NBFINNewRecord(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_PRODBeforePost(DataSet: TDataSet);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure wwDBEdit18Enter(Sender: TObject);
    procedure wwDBEdit18Exit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBEdit20Enter(Sender: TObject);
    procedure wwDBEdit20Exit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure Q_CLINBFNewRecord(DataSet: TDataSet);
    procedure DS_CLINBFDataChange(Sender: TObject; Field: TField);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure TabbedNotebook2Click(Sender: TObject);
    procedure Q_PROAREAAfterDelete(DataSet: TDataSet);
    procedure Q_PROAREAAfterPost(DataSet: TDataSet);
    procedure Q_PROAREANewRecord(DataSet: TDataSet);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure wwDBComboBox3Exit(Sender: TObject);
    procedure wwDBComboBox3Enter(Sender: TObject);
    procedure TabbedNotebook2Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBEdit22Enter(Sender: TObject);
    procedure wwDBEdit22Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBEdit23Enter(Sender: TObject);
    procedure wwDBEdit23Exit(Sender: TObject);
    procedure wwDBEdit24Enter(Sender: TObject);
    procedure wwDBEdit24Exit(Sender: TObject);
    procedure wwDBEdit29Enter(Sender: TObject);
    procedure wwDBEdit29Exit(Sender: TObject);
    procedure wwDBEdit25Enter(Sender: TObject);
    procedure wwDBEdit25Exit(Sender: TObject);
    procedure wwDBLookupCombo9Enter(Sender: TObject);
    procedure wwDBLookupCombo9Exit(Sender: TObject);
    procedure wwDBLookupCombo8Enter(Sender: TObject);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure wwDBEdit26Enter(Sender: TObject);
    procedure wwDBEdit26Exit(Sender: TObject);
    procedure wwDBEdit27Enter(Sender: TObject);
    procedure wwDBEdit27Exit(Sender: TObject);
    procedure wwDBEdit28Exit(Sender: TObject);
    procedure wwDBEdit28Enter(Sender: TObject);
    procedure wwDBGrid5DblClick(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure wwDBGrid3DblClick(Sender: TObject);
    procedure Q_CLINBFBeforePost(DataSet: TDataSet);
    procedure wwDBEdit30Enter(Sender: TObject);
    procedure wwDBEdit30Exit(Sender: TObject);
    procedure DS_PRODDataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure DS_PROAREADataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure wwDBEdit32Enter(Sender: TObject);
    procedure wwDBEdit32Exit(Sender: TObject);
    procedure wwDBEdit33Enter(Sender: TObject);
    procedure wwDBEdit33Exit(Sender: TObject);
    procedure wwDBEdit34Enter(Sender: TObject);
    procedure wwDBEdit34Exit(Sender: TObject);
    procedure Q_PALEAfterDelete(DataSet: TDataSet);
    procedure Q_PALEAfterPost(DataSet: TDataSet);
    procedure Q_PALENewRecord(DataSet: TDataSet);
    procedure wwDBLookupCombo13Enter(Sender: TObject);
    procedure wwDBLookupCombo13Exit(Sender: TObject);
    procedure wwDBEdit15Exit(Sender: TObject);
    procedure wwDBEdit15Enter(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure Q_PALEBeforePost(DataSet: TDataSet);
    procedure wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBE_CFA_RICMEnter(Sender: TObject);
    procedure DBE_CFA_RICMExit(Sender: TObject);
    procedure wwDBEdit35Enter(Sender: TObject);
    procedure wwDBEdit35Exit(Sender: TObject);
    procedure wwDBComboBox7Enter(Sender: TObject);
    procedure wwDBComboBox7Exit(Sender: TObject);
    procedure wwDBComboBox8Exit(Sender: TObject);
    procedure wwDBComboBox8Enter(Sender: TObject);
    procedure DBE_CLI_CGCKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CLI_INSCKeyPress(Sender: TObject; var Key: Char);
    procedure qrIndNewRecord(DataSet: TDataSet);
    procedure cboProKitExit(Sender: TObject);
    procedure Q_CONTABeforePost(DataSet: TDataSet);
    procedure Q_TPRODBeforePost(DataSet: TDataSet);
    procedure Q_CTTBeforePost(DataSet: TDataSet);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;
  STRPESQUISA : string ;
  VALE :  string ;
  PALLET : integer ;
  PALLETSTR : string ;

  CNPJ : string;
  
  PALLET2 : integer ;
  PALLETSTR2 : string ;

  BOOPRIMEIRO : BOOLEAN ;
  CLIF : string ;
  VOLM3 : real ;
  VOLM3PALLET : real ;
implementation
uses  U_Funcoes,USenha,Umenu, UAbTabelas, UPesqCliente, Ucontrato, UClienteFINAL,
  ufrmCadEmail;
{$R *.DFM}

procedure TFCliente.wwDBEdit3Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit3Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit1Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit1Exit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFCliente.DBE_CLI_CGCExit(Sender: TObject);
Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;

begin

  IF (Q_CLINBF.state = dsINSERT) or (Q_CLINBF.state = dsedit)  then begin


      if ((copy(DBE_CLI_CGC.text,1,1)) = ' ' ) then begin
           MessageDlg('Preencha todos os dígitos!',mtWarning,[mbok],0);
           DBE_CLI_CGC.SetFocus;
           abort ;
      end ;



          if DBCB_CLI_PESS.text = 'Jurídica' then
             begin
                A:= StrtoInt(copy(DBE_CLI_CGC.Text,1,1));
                B:= StrtoInt(copy(DBE_CLI_CGC.Text,2,1));
                C:= StrtoInt(copy(DBE_CLI_CGC.Text,3,1));
                D:= StrtoInt(copy(DBE_CLI_CGC.Text,4,1));
                E:= StrtoInt(copy(DBE_CLI_CGC.Text,5,1));
                F:= StrtoInt(copy(DBE_CLI_CGC.Text,6,1));
                G:= StrtoInt(copy(DBE_CLI_CGC.Text,7,1));
                H:= StrtoInt(copy(DBE_CLI_CGC.Text,8,1));
                I:= StrtoInt(copy(DBE_CLI_CGC.Text,9,1));
                J:= StrtoInt(copy(DBE_CLI_CGC.Text,10,1));
                K:= StrtoInt(copy(DBE_CLI_CGC.Text,11,1));
                L:= StrtoInt(copy(DBE_CLI_CGC.Text,12,1));
                X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
                M:= 11-((X)-(11*((X div 11))));
                if M > 9 then
                   M:=0;
                   Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
                   N:= 11-((Y)-(11*((Y div 11))));
                if N > 9 then
                   N:=0;
                   DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
                   if DC <> copy(DBE_CLI_CGC.Text,13,2) then

                      Begin
                         MessageDlg('Digito de controle não confere.', mtInformation,
                         [mbOk], 0);
                         DBE_CLI_CGC.Clear;
                         DBE_CLI_CGC.Setfocus;
                       end
             end
          else
             begin
                A:= StrtoInt(copy(DBE_CLI_CGC.Text,1,1));
                B:= StrtoInt(copy(DBE_CLI_CGC.Text,2,1));
                C:= StrtoInt(copy(DBE_CLI_CGC.Text,3,1));
                D:= StrtoInt(copy(DBE_CLI_CGC.Text,4,1));
                E:= StrtoInt(copy(DBE_CLI_CGC.Text,5,1));
                F:= StrtoInt(copy(DBE_CLI_CGC.Text,6,1));
                G:= StrtoInt(copy(DBE_CLI_CGC.Text,7,1));
                H:= StrtoInt(copy(DBE_CLI_CGC.Text,8,1));
                I:= StrtoInt(copy(DBE_CLI_CGC.Text,9,1));
                X:= (2*I+3*H+4*G+5*F+6*E+7*D+8*C+9*B+10*A)*10;
                M:= X-((11*((X div 11))));
                if M > 9 then
                   M:=0;
                Y:= (2*M+3*I+4*H+5*G+6*F+7*E+8*D+9*C+10*B+11*A)*10 ;
                N:= Y-((11*((Y div 11))));
                if N > 9 then
                   N:=0;
                DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
                if DC <> copy(DBE_CLI_CGC.Text,10,2) then
                   Begin
                      MessageDlg('Digito de controle não confere.', mtInformation,
                      [mbOk], 0);
                      DBE_CLI_CGC.Clear;
                      DBE_CLI_CGC.Setfocus;
                   end
            end          ;
  end ;



  if Q_CLINBF.State = dsInsert then
  begin
      with Q_AUX2 do
      begin
           Close;
           sql.Clear;
           sql.Add('Select count(*) as XValor from clientenbf where clin_cgccpf = :clin_cgccpf') ;
           Params[0].AsString :=  DBE_CLI_CGC.Text;
           Open;
      end;

      if Q_AUX2.FieldByName('XValor').AsInteger > 0 then
      begin
         MessageBox(Self.Handle, 'CPNJ/CPF Cadastrado!', 'Erro', MB_OK + MB_ICONERROR);
         DBE_CLI_CGC.SetFocus;
      end;
  end;

     (Sender as TwwDBEdit).Color := Clwindow ;



end;

procedure TFCliente.DBE_CLI_CGCEnter(Sender: TObject);
begin
        Q_CliNBFCLIN_CGCCPF.EditMask := '' ;
   if DBCB_CLI_PESS.text = 'Física' then
      Q_CliNBFCLIN_CGCCPF.EditMask := '!999.999.999-99;0;_'
   else Q_CliNBFCLIN_CGCCPF.EditMask := '!99.999.999/9999-99;0;_';

      (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFCliente.DBE_CLI_INSCEnter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_INSCExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow ; 
end;

procedure TFCliente.DBE_CLI_FCEPEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_FCEPExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;

     If (Q_CLINBF.state = dsedit ) or (Q_CLINBF.state = dsinsert )  then  begin
         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + DBE_CLI_FCEP.text + ''''  ) ;
         Q_CEP.Open ;

         Q_CLINBFCLIN_ENDERECO.asstring  := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_CLINBFCLIN_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;

         IF Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_CLINBFMUN_ID.asinteger  := Q_MUNIMUN_ID.asinteger ;
             Q_CLINBFUF_SIGLA.asstring := Q_MUNIUF_SIGLA.asstring ;

         end else begin
             Q_CLINBFMUN_ID.asinteger  := 0 ;
             Q_CLINBFUF_SIGLA.asstring := '0' ;
         end ;           
         Q_CLINBFCLIN_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
         ///Q_CLINBFUF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwdbedit16.setfocus ;
     end ;

   {try
    Begin
       STP_CEP.ParamByName('@CEPDIGITADO').Value    :=  DBE_CLI_FCEP.text ;
       STP_CEP.Execproc;
    End
  except
     begin
       MessageDlg('Geração de Endereço a partir do CEP digitado, com erro !',mtInformation,[mbOk], 0);
       abort  ;
     end;
  end;

    DBE_CLI_FEND.text := STP_CEP.ParamByName('@RUA').asstring;
    DBE_CLI_FMUN.text := STP_CEP.ParamByName('@CIDADE').asstring ;    }



end;

procedure TFCliente.DBE_CLI_FENDEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_FENDExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.DBLC_DBE_FESTEnter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.DBLC_DBE_FESTExit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFCliente.DBE_CLI_FTE2Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_FTE2Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := clwindow;
end;

procedure TFCliente.DBE_CLI_FFAXEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_FFAXExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := clwindow;
end;

procedure TFCliente.DBE_CLI_FTELExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := clwindow;
end;

procedure TFCliente.DBE_CLI_FTELEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_FEMAEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_FEMAExit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := clwindow;
end;

procedure TFCliente.SpeedButton3Click(Sender: TObject);
begin
    if not BooPrimeiro then Begin
            If (Q_PROD.state = dsedit ) or
               (Q_PROD.state = dsinsert ) then  begin

               If  (wwDBEdit31.text = '') or (StrtoInt(wwDBEdit31.Text) <= 0)  then begin
                    MessageDlg('Qtde. UV/UE deve ser superior a ZERO! ',mtWarning,[mbok],0);
                    ///TabbedNotebook1.pageindex := 3;
                    //TabbedNotebook2.pageindex := 2;
                    wwDBEdit31.setfocus ;
                    abort ;
               end ;

                If (PALLET <= 0) then begin
                   MessageDlg('Quantidade por Pallet deverá ser superior a Zero !',mtWarning,[mbok],0);
                   //TabbedNotebook1.pageindex := 3;
                   ///TabbedNotebook2.pageindex := 2;
                   wwDBEDIT8.setfocus ;
                   abort ;
                end ;
            end ;

     end ;
     BOOPRIMEIRO := FALSE ;
     REME := '' ; 
     close ;
end;

procedure TFCliente.wwDBLookupCombo1Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFCliente.wwDBEdit2Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit2Exit(Sender: TObject);
begin
      (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit11Enter(Sender: TObject);
begin
     (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit13Enter(Sender: TObject);
begin
     (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit10Enter(Sender: TObject);
begin
       (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit7Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit5Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit5Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit6Enter(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := clwindow;

   If (Q_PROD.state = dsedit ) or (Q_PROD.state = dsInsert ) then begin

     PALLET := (Q_PRODPRO_ALTURA.asinteger * Q_PRODPRO_Lastro.asinteger)  ;
     PALLETSTR := formatfloat('0',PALLET);

     Q_PRODPRO_QTDE_PALLET.asinteger := strtoint(PALLETSTR) ;

     IF (wwDBEdit31.text <> '') then  begin
        Q_PRODPRO_QTDE_PALLETUV.asfloat := (strtofloat(PALLETSTR) * strtofloat(wwDBEdit31.text)) ;

          IF (wwDBEdit32.text <> '') and
             (wwDBEdit33.text <> '') and
             (wwDBEdit34.text <> '') then begin

               VOLM3 := (Q_PRODPRO_COMPR.asfloat *
                         Q_PRODPRO_LARG.asfloat  *
                         Q_PRODPRO_ALT.asfloat )  ;
               VOLM3PALLET := (VOLM3 * Q_PRODPRO_QTDE_PALLETUV.asfloat) ;

               Q_PRODPRO_VOLUME.asfloat := VOLM3 ;
               Q_PRODPRO_VOLUME_PALLET.asfloat := VOLM3PALLET ;
          end ;
     end ;

  end ;

end;

procedure TFCliente.wwDBEdit8Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit8Exit(Sender: TObject);

begin
  (Sender as TwwDBedit).Color := clwindow;
  
end;

procedure TFCliente.wwDBEdit9Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit12Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := clwindow;

   If wwDBLookupCombo2.text <> '' then
     wwDBLookupCombo2.text := Q_TPROdTPRO_NOME.asstring  ;

end;

procedure TFCliente.wwDBLookupCombo3Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo3Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := clwindow;

   If wwDBLookupCombo3.text <> '' then
     wwDBLookupCombo3.text := Q_UNIDVENDUVEN_NOME.asstring  ;

end;

procedure TFCliente.wwDBLookupCombo4Enter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo4Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFCliente.wwDBEdit17Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit17Exit(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit19Enter(Sender: TObject);
begin
      (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit19Exit(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.Q_CLINBFAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin


   STRNOME :=  Q_CLINBFCLIN_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CLINBF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CLINBF.close ;
   Q_CLINBF.Open ;
   Q_CLINBF.locate('CLIN_NOME',StrNome,[]);


end;

procedure TFCliente.Q_CLINBFAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
  STRNOME :=  Q_CLINBFCLIN_NOME.asstring ;
  try
     FSenha.Dtb_BaseDados.ApplyUpdates([Q_CLINBF])
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
  Q_CLINBF.close ;
  Q_CLINBF.Open ;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
  Q_aux.Sql.Add(' where CLIN_ID = ' + Q_CLINBFCLIN_ID.asstring ) ;
  Q_aux.open ;

  If  Q_Aux.fieldbyname('XVALOR').asinteger = 0 then begin
      Q_AUX.close;
      Q_AUX.Sql.Clear;
      Q_AUX.Sql.Add('insert into TPPRODUTO_CLINBF (TPRO_NOME,CLIN_ID) ');
      Q_AUX.Sql.Add('values ( ' );
      Q_AUX.Sql.Add( '''' + '* Todos' + '''' + ',');
      Q_AUX.Sql.Add( '''' + Q_CLINBFCLIN_ID.asstring + '''' + ')');
      Q_AUX.ExecSql;
  end ;
  Q_CLINBF.locate('CLIN_NOME',StrNome,[]);


end;

procedure TFCliente.Q_CONTAAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_CONTACONT_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CONTA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CONTA.close ;
   Q_CONTA.Open ;
   Q_CONTA.locate('CONT_NOME',StrNome,[]);


end;

procedure TFCliente.Q_CONTAAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_CONTACONT_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CONTA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CONTA.close ;
   Q_CONTA.Open ;
   Q_CONTA.locate('CONT_NOME',StrNome,[]);

end;

procedure TFCliente.Q_TPRODAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TPRODTPRO_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TPROD])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TPROD.close ;
   Q_TPROD.Open ;
   Q_TPROD.locate('TPRO_NOME',StrNome,[]);

end;

procedure TFCliente.Q_TPRODAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TPRODTPRO_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TPROD])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TPROD.close ;
   Q_TPROD.Open ;
   Q_TPROD.locate('TPRO_NOME',StrNome,[]);

end;

procedure TFCliente.Q_PRODAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_PRODPRO_COD.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PROD])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PROD.close ;
   Q_PROD.Open ;
   Q_PROD.locate('PRO_COD',StrNome,[]);

end;

procedure TFCliente.Q_PRODAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_PRODPRO_COD.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PROD])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PROD.close ;
   Q_PROD.Open ;
   Q_PROD.locate('PRO_COD',StrNome,[]);

end;

procedure TFCliente.Q_NBFINAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_NBFINCLIF_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NBFIN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NBFIN.close ;
   Q_NBFIN.Open ;
   Q_NBFIN.locate('CLIF_ID',StrNome,[]);



end;

procedure TFCliente.Q_NBFINAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_NBFINCLIF_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NBFIN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NBFIN.close ;
   Q_NBFIN.Open ;
   Q_NBFIN.locate('CLIF_ID',StrNome,[]);


end;

procedure TFCliente.Q_CONTANewRecord(DataSet: TDataSet);
begin
  Q_CONTACLIN_ID.asstring :=  Q_CLINBFCLIN_ID.asstring   ;
end;

procedure TFCliente.Q_TPRODNewRecord(DataSet: TDataSet);
begin
    Q_TPRODCLIN_ID.asstring :=  Q_CLINBFCLIN_ID.asstring   ;
end;

procedure TFCliente.Q_PRODNewRecord(DataSet: TDataSet);
begin

   Q_PRODCLIN_ID.asstring :=  Q_CLINBFCLIN_ID.asstring   ;
   Q_PRODPRO_QTDE_PALLET.asinteger := 0 ;
   Q_PRODPRO_QTDE_PALLETuv.asfloat := 0 ;
   Q_PRODPRO_DESCONTINUA.asstring := 'N' ;
   Q_PRODKIT.AsString := 'N';
   Q_PRODINSUMO.AsString := 'N';


   IF ( TRIM(DBE_CFA_RICM.text) = '') then Q_PRODPRO_REDUZICMS.asinteger := 0  ;

   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add( ' select min(TPRO_id) as Numero from TPPRODUTO_CLINBF ' ) ;
   Q_AUX.Sql.Add( ' where CLIN_ID = ' + Q_CLINBFCLIN_ID.asstring ) ;
   Q_AUX.open ;

   IF Q_AUX.fieldbyname('NUMERO').asstring <> '' then
      Q_PRODTPRO_ID.asstring := Q_AUX.fieldbyname('NUMERO').asstring;}
   Q_PRODTPRO_ID.asstring := Q_TPRODTPRO_ID.asstring;


end;

procedure TFCliente.TabbedNotebook1Click(Sender: TObject);
begin

  If (Q_CLINBF.state = dsedit ) or (Q_CLINBF.state = dsinsert ) then
         Q_CLINBF.post ;

  If (TabbedNotebook1.pageindex = 0) or
     (TabbedNotebook1.pageindex = 5)  then begin
     DBNavigator1.datasource := DS_CLINBF;

  end ;

  If (TabbedNotebook1.pageindex = 1) then begin
     DBNavigator1.datasource := DS_CONTA;
     Q_CONTA.edit;
  end ;

  If (TabbedNotebook1.pageindex = 2) then begin   
     DBNavigator1.datasource := DS_TPROD;
     ///Q_TPROD.edit;
  end ;

  If (TabbedNotebook1.pageindex = 3) then begin
     DBNavigator1.datasource := DS_PROD;

     {Q_PROD.close ;
     Q_PROD.Sql.Clear ;
     Q_PROD.Sql.Add( 'select * from PRODUTO where');
     Q_PROD.Sql.Add( 'TPRO_ID = ' + Q_TPRODTPRO_ID.asstring );
     Q_PROD.Sql.Add( 'order by PRO_DESC ' ) ;
     Q_PROD.open ; }

     Q_PROD.edit ;
     Q_PROD.cancel ;
     TabbedNotebook2.pageindex := 0;
     If (VALE = 'F') then
            DBNavigator1.enabled := false
          else
            DBNavigator1.enabled := true ;
  end;

  If (TabbedNotebook1.pageindex = 4) then begin
     DBNavigator1.datasource := DS_NBFIN;
     Q_NBFIN.edit;
  end ;

  If (TabbedNotebook1.pageindex = 6) then begin
     Q_CTT.OPEN;
     DBNavigator1.enabled := false ;
  end else  DBNavigator1.enabled := true ;

end;

procedure TFCliente.FormPaint(Sender: TObject);
begin
      If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 17;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     ///FAbTabelas.Gauge1.Progress            := 1;
                     ///FAbTabelas.DS_REG.OnStateChange      := DS_CATEStateChange;

                     //FAbTabelas.Gauge1.Progress            := 1;
                     ///FRegiao.Q_REG.BeforePost          := Q_REGBeforePost;

                     FAbTabelas.Gauge1.Progress            := 1;

                     IF REME = '' then begin
                         Q_CLINBF.close ;
                         Q_CLINBF.Sql.Clear ;
                         Q_CLINBF.Sql.Add( ' select * from CLIENTENBF where ' ) ;
                         Q_CLINBF.Sql.Add( ' CLIN_CONTRATO <> ' + '''' + 'R' + '''' ) ;
                         Q_CLINBF.Sql.Add( ' order by CLIN_RAZA') ;
                         Q_CLINBF.Open;
                     end else begin
                         Q_CLINBF.close ;
                         Q_CLINBF.Sql.Clear ;
                         Q_CLINBF.Sql.Add( ' select * from CLIENTENBF where ' ) ;
                         Q_CLINBF.Sql.Add( ' CLIN_CONTRATO = ' + '''' + 'R' + '''' ) ;
                         Q_CLINBF.Sql.Add( ' order by CLIN_RAZA') ;
                         Q_CLINBF.Open;
                     end    ;

                     FAbTabelas.Gauge1.Progress            := 2;
                     Q_CONTA.Open;
                      FAbTabelas.Gauge1.Progress            := 3;
                     Q_TPROD.Open;
                      FAbTabelas.Gauge1.Progress            := 4;
                     Q_PROD.Open;
                      FAbTabelas.Gauge1.Progress            := 5;
                     Q_NBFIN.Open;
                      FAbTabelas.Gauge1.Progress            := 6;
                     Q_UF.Open;
                      FAbTabelas.Gauge1.Progress            := 7;
                     Q_CG.Open;
                     FAbTabelas.Gauge1.Progress            := 8;
                     Q_PROAREA.Open;
                     FAbTabelas.Gauge1.Progress            := 9;
                     Q_AR.Open;
                     FAbTabelas.Gauge1.Progress            := 10;
                     Q_MUNI.Open;
                     FAbTabelas.Gauge1.Progress            := 11;
                     Q_MUNI_COBR.Open;
                     FAbTabelas.Gauge1.Progress            := 12;
                     Q_UF_COBR.Open;
                     FAbTabelas.Gauge1.Progress            := 13;
                     Q_UNIDVEND.Open;
                     FAbTabelas.Gauge1.Progress            := 14;
                     Q_UNIDVEND2.Open;
                     FAbTabelas.Gauge1.Progress            := 15;
                     Q_PAR2.Open;
                     FAbTabelas.Gauge1.Progress            := 15;
                     Q_CLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 16;
                     Q_PALE.Open;
                     FAbTabelas.Gauge1.Progress            := 17;
                     Q_CLIF2.Open;
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

procedure TFCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_NBFIN.close   ;
   Q_TPROD.close   ;
   Q_PROD.close    ;
   Q_CONTA.close   ;
   Q_CLINBF.close  ;
   Q_UF.close      ;
   Q_CG.close      ;
   Q_TPROD_AUX.close ;
   Q_PROAREA.close ;
   Q_AR.close   ;
   Q_MUNI.close ;
   Q_MUNI_COBR.close ;
   Q_UF_COBR.close ;
   Q_CTT.close;
   Q_UNIDVEND.close;
   Q_UNIDVEND2.close;
   Q_PAR2.close ;
   Q_CLIF.close ;
   Q_PALE.close ;
   Q_CLIF2.close ; 
   action := cafree;
end;

procedure TFCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFCliente.DBCB_CLI_PESSEnter(Sender: TObject);
begin
     (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFCliente.DBCB_CLI_PESSExit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := Clwindow;
   Q_CliNBFCLIN_CGCCPF.EditMask := '' ;
   if DBCB_CLI_PESS.text = 'Física' then
      Q_CliNBFCLIN_CGCCPF.EditMask := '!999.999.999-99;0;_'
   else Q_CliNBFCLIN_CGCCPF.EditMask := '!99.999.999/9999-99;0;_';

end;

procedure TFCliente.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
//   Self.AutoSize := True;
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   BOOPRIMEIRO := TRUE ;
   TabbedNotebook1.pageindex := 0 ;
   BOOPRIMEIRO := TRUE ;
   TabbedNotebook2.pageindex := 0 ;
   EXISTE := '' ;
   CLIF := '' ;

   if REME = 'S' then begin
     PANEL13.visible := true ;
     Label16.caption := 'Clientes Remetentes'
   end else begin
     PANEL13.visible := false ;
     Label16.caption := 'Clientes NBF'  ;
   end ;
   qrIbge.Open;
   qrLog.Open;
end;

procedure TFCliente.Q_NBFINBeforePost(DataSet: TDataSet);
begin
   IF FMenu.SqlUsuariosAlteraClientes.AsString <> 'S' then begin
       ShowMessage('Não é possivel alterar dados do cliente, permissão insuficiente');
       Abort;
   end;
  Q_NBFINCLIF_ID.asstring :=  Q_CLIFCLIF_ID.asstring   ;
end;

procedure TFCliente.Q_NBFINNewRecord(DataSet: TDataSet);
begin
      Q_NBFINCLIN_ID.asstring :=  Q_CLINBFCLIN_ID.asstring   ;
end;

procedure TFCliente.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then
           wwDBEdit3.setfocus ;
         If (TabbedNotebook1.pageindex = 1) then
           wwDBLookupCombo1.setfocus ;
         If (TabbedNotebook1.pageindex = 2) then
           wwDBEdit4.setfocus ;

         If (TabbedNotebook1.pageindex = 3) then  begin
            If (TabbedNotebook2.pageindex = 0) then
               wwDBEdit7.setfocus  ;
            If (TabbedNotebook2.pageindex = 1) then
                wwDBEdit9.setfocus  ;
            If (TabbedNotebook2.pageindex = 2) then
                wwDBLookupCombo13.setfocus  ;
              
         end ;

         If (TabbedNotebook1.pageindex = 4) then
           wwDBLookupCombo4.setfocus ;
   end ;

   if (Button in [nbFirst,nbPrior,nbNext,nbLast]) and (TabbedNotebook1.pageindex = 0) then begin
      if (Q_CLINBFCLIN_PESSOA.AsString = 'F') then
          Q_CLINBFCLIN_CGCCPF.EditMask := '!999.999.999/99;0;_'
      else
         if (Q_CLINBFCLIN_PESSOA.AsString = 'J') then
              Q_CLINBFCLIN_CGCCPF.EditMask := '!99.999.999/9999-99;0;_'
         else Q_CLINBFCLIN_CGCCPF.EditMask := '';
   end ;
end;

procedure TFCliente.SpeedButton4Click(Sender: TObject);
begin
   application.createform(TFPESQcliente , FPESQcliente);
   FPESQcliente.SHOWMODAL ;
   FPESQcliente.RELEASE ;
   FPESQcliente.CLOSE ;
   if StrPESQUISA <> '' then
     Q_CLINBF.Locate ('CLIN_ID' , StrPESQUISA , []);
end;

procedure TFCliente.Q_PRODBeforePost(DataSet: TDataSet);
begin
   IF FMenu.SqlUsuariosAlteraClientes.AsString <> 'S' then begin
       ShowMessage('Não é possivel alterar dados do cliente, permissão insuficiente');
       Abort;
   end;

    Q_TPROD_AUX.close ;
    Q_TPROD_AUX.Sql.Clear ;
    Q_TPROD_AUX.Sql.Add(' Select count(*) as QTDEReg from TPPRODUTO_CLINBF ') ;
    Q_TPROD_AUX.Sql.Add(' where CLIN_ID = ' + Q_CLINBFCLIN_ID.asstring  ) ;
    Q_TPROD_AUX.Open ;


    If (Q_TPROD_AUX.fieldbyname('QTDEReg').asinteger > 0) and
      (wwDBLookupCombo2.text = '') and
      (wwDBEdit7.text <> '')                 then begin
       MessageDlg('Para o Cliente NBF: ' + Q_CLINBFCLIN_RAZA.asstring + ', existe(m) Tipo(s) de Produto(s) cadastrado(s), sendo assim o campo Tipo de Produto é de Preechimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo2.setfocus ;
       abort ;
    end ;

    If  (wwDBEdit31.text = '') or (strtofloat(Q_PRODQTDE_UVUE.asstring) = 0)  then begin
        MessageDlg('Qtde. UV/UE deve ser superior a ZERO! ',mtWarning,[mbok],0);
        //TabbedNotebook1.pageindex := 3;
        ///TabbedNotebook2.pageindex := 2;
        wwDBEdit31.setfocus ;
        abort ;
    end ;




    PALLET := (Q_PRODPRO_ALTURA.asinteger * Q_PRODPRO_Lastro.asinteger)  ;
    PALLETSTR := formatfloat('0',PALLET);
    Q_PRODPRO_QTDE_PALLET.asinteger := strtoint(PALLETSTR) ;

    IF (wwDBEdit31.text <> '')  then
       Q_PRODPRO_QTDE_PALLETUV.asfloat := (strtofloat(PALLETSTR) * strtofloat(wwDBEdit31.text)) ;


    If (TabbedNotebook2.visible <> false) then begin
        IF (Q_PRODPRO_QTDE_PALLET.asinteger = 0)  then begin
           MessageDlg('Quantidade por Pallet deverá ser superior a Zero !',mtWarning,[mbok],0);
           wwDBEDIT8.setfocus;
           abort;
        end ;
    end ;

   IF (wwDBComboBox6.text = '')  then begin
       MessageDlg('Descontinuado é campo de preenchimento obrigatório !',mtWarning,[mbok],0);

       wwDBComboBox6.setfocus ;
       abort ;
   end ;

  VOLM3 := 0 ;
  VOLM3PALLET := 0 ;

  If (Q_PROD.state = dsedit ) or (Q_PROD.state = dsInsert ) then begin

     IF (wwDBEdit32.text <> '') and
        (wwDBEdit33.text <> '') and
        (wwDBEdit34.text <> '') then begin

         VOLM3 := (Q_PRODPRO_COMPR.asfloat *
                   Q_PRODPRO_LARG.asfloat  *
                   Q_PRODPRO_ALT.asfloat )  ;
         VOLM3PALLET := (VOLM3 * Q_PRODPRO_QTDE_PALLETUV.asfloat) ;

         Q_PRODPRO_VOLUME.asfloat := VOLM3 ;
         Q_PRODPRO_VOLUME_PALLET.asfloat := VOLM3PALLET ;
     end ;

  end ;



end;

procedure TFCliente.wwDBEdit16Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit16Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFCliente.wwDBEdit18Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit18Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBLookupCombo5Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupCOMBO).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo5Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupCOMBO).Color := Clwindow;
end;

procedure TFCliente.wwDBEdit20Enter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit20Exit(Sender: TObject);
begin
      (Sender as TwwDBedit).Color := Clwindow ;
end;

procedure TFCliente.wwDBComboBox1Enter(Sender: TObject);
begin
 (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFCliente.wwDBComboBox1Exit(Sender: TObject);
begin
    (Sender as TwwDBCOMBOBOX).Color := Clwindow ;

    if wwDBComboBox1.text = 'Não' then begin
       Label46.visible := false ;
       wwDBComboBox2.visible := false ;
    end else begin
       Label46.visible := true ;
       wwDBComboBox2.visible := true ;
    end ;


end;

procedure TFCliente.Q_CLINBFNewRecord(DataSet: TDataSet);
begin
   if (REME = 'S') then
      Q_CLINBFCLIN_CONTRATO.asstring := 'R' ;
 { else
      Q_CLINBFCLIN_CONTRATO.asstring := 'S' ; }
   Q_CLINBFCLIN_VLRSALDO.ASFLOAT := 0 ;
   Q_CLINBFCLIN_TIPOSALDO.asstring := 'R' ;
   Q_CLINBFCLIN_PAGAFRETEDEV.Value := 'N';
   Q_CLINBFCLIN_COBRAFRETEDEV.Value := 'N';
end;

procedure TFCliente.DS_CLINBFDataChange(Sender: TObject; Field: TField);
begin
    if Q_CLINBFCLIN_CONTRATO.asstring = 'N' then begin
       Label46.visible := false ;
       wwDBComboBox2.visible := false ;
    end else begin
       Label46.visible := true ;
       wwDBComboBox2.visible := true ;
    end ;

    
    if {(Q_CLINBFCLIN_CONTRATO.asstring = 'R') or
       (Q_CLINBFCLIN_CONTRATO.asstring = '') }
       (REME = 'S')then
       Panel12.visible := True
    else
       Panel12.visible := false ;

    CNPJ := Q_CLINBFCLIN_CGCCPF.Value;
       
end;

procedure TFCliente.TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  
       DBNavigator1.enabled := true ;
   If (Q_CLINBF.state = dsedit ) or (Q_CLINBF.state = dsbrowse ) then begin
       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
       Q_AUX.Sql.Add(' where CLIN_ID = ' + Q_CLINBFCLIN_ID.asstring ) ;
       Q_AUX.open ;

       If  (Q_AUX.fieldbyname('XVALOR').asinteger > 0) then begin
           TabbedNotebook2.visible  := true ;
           label14.visible := true ;
           dbtext2.visible := true ;
           VALE := 'T'
       end else begin
           TabbedNotebook2.visible := false ;
           label14.visible := false ;
           dbteXt2.visible := false ;
           VALE := 'F'
       end ;
   end ;    

   if not BooPrimeiro then Begin
          If (Q_PROD.state = dsedit ) or
             (Q_PROD.state = dsinsert ) then  begin

                  Q_PROD.post ;

                  Q_TPROD_AUX.close ;
                  Q_TPROD_AUX.Sql.Clear ;
                  Q_TPROD_AUX.Sql.Add(' Select count(*) as ZERADOS from PRODUTO ') ;
                  Q_TPROD_AUX.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring  ) ;
                  Q_TPROD_AUX.Sql.Add(' and  PRO_QTDE_PALLET = 0 ' ) ;
                  Q_TPROD_AUX.Open ;

               If (TabbedNotebook2.visible <> false) then begin
                    IF (Q_TPROD_AUX.fieldbyname('ZERADOS').asinteger > 0) then begin
                       MessageDlg('Quantidade por Pallet deverá ser superior a Zero !',mtWarning,[mbok],0);
                       wwDBEDIT8.setfocus ;
                       abort ;
                    end ;
               end ;
          end ;
   end ;
   BOOPRIMEIRO := FALSE ;


end;

procedure TFCliente.TabbedNotebook2Click(Sender: TObject);
begin
  

  If (TabbedNotebook2.pageindex = 0) then
      DBNavigator1.datasource := DS_PROD;

  If (TabbedNotebook2.pageindex = 1) then begin
     DBNavigator1.datasource := DS_PROAREA;
     Q_PROAREA.edit;
  end;

  If (TabbedNotebook2.pageindex = 2) then begin
     DBNavigator1.datasource := DS_PALE;
     Q_PALE.edit;
  end;

end;

procedure TFCliente.Q_PROAREAAfterDelete(DataSet: TDataSet);
var StrAR : string ;
begin

     StrAR := Q_PROAREAAR_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PROAREA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PROAREA.close ;
   Q_PROAREA.Open ;
   Q_PROAREA.locate('AR_ID',StrAR,[]);

end;

procedure TFCliente.Q_PROAREAAfterPost(DataSet: TDataSet);
var StrAR : string ;
begin

     StrAR := Q_PROAREAAR_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PROAREA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PROAREA.close ;
   Q_PROAREA.Open ;
   Q_PROAREA.locate('AR_ID',StrAR,[]);

end;

procedure TFCliente.Q_PROAREANewRecord(DataSet: TDataSet);
begin
   Q_PROAREAPRO_ID.asstring := Q_PRODPRO_ID.asstring ;
end;

procedure TFCliente.wwDBComboBox4Enter(Sender: TObject);
begin
 (Sender as TwwDBCOMBOBOX).Color := Claqua;
end;

procedure TFCliente.wwDBComboBox4Exit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := Clwindow;
end;

procedure TFCliente.wwDBComboBox3Exit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := Clwindow;
end;

procedure TFCliente.wwDBComboBox3Enter(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := claqua;
end;

procedure TFCliente.TabbedNotebook2Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     if not BooPrimeiro then Begin
            If (Q_PROD.state = dsedit ) or
               (Q_PROD.state = dsinsert ) then  begin

                    Q_PROD.post ;

                    Q_TPROD_AUX.close ;
                    Q_TPROD_AUX.Sql.Clear ;
                    Q_TPROD_AUX.Sql.Add(' Select count(*) as ZERADOS from PRODUTO ') ;
                    Q_TPROD_AUX.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring  ) ;
                    Q_TPROD_AUX.Sql.Add(' and  PRO_QTDE_PALLET = 0 ' ) ;
                    Q_TPROD_AUX.Open ;

                IF (Q_TPROD_AUX.fieldbyname('ZERADOS').asinteger > 0) then begin
                   MessageDlg('Quantidade por Pallet deverá ser superior a Zero !',mtWarning,[mbok],0);
                   wwDBEDIT8.setfocus ;
                   abort ;
                end ;
            end ;
     end ;
     BOOPRIMEIRO := FALSE ;
end;

procedure TFCliente.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo6Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit22Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit22Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ; 
end;

procedure TFCliente.SpeedButton1Click(Sender: TObject);
begin
       Q_CTT.Open ;


    IF Q_CTT.recordcount > 0 then begin
        Existe := 'S' ;
        Q_CTT.last ;
    end else
       Existe := 'N'  ;


    application.createform(TFContrato , FContrato);
    FContrato.SHOWMODAL ;
    FContrato.RELEASE ;
    FContrato.CLOSE ;

    Q_CTT.close ;
end;

procedure TFCliente.SpeedButton2Click(Sender: TObject);
begin

    IF (TabbedNotebook1.pageindex <> 4) and
       (TabbedNotebook1.pageindex <> 3) then
        wwSearchDialog1.execute  ;

    IF (TabbedNotebook1.pageindex = 4) then begin
       Q_NBFIN2.open ;
       wwSearchDialog2.execute ;
       Q_NBFIN.locate('NBFINAL_ID',Q_NBFIN2NBFINAL_ID.asstring,[]);
       Q_NBFIN2.close ;
    end ;

    IF (TabbedNotebook1.pageindex = 3) then begin
       Q_PROD2.open ;
       wwSearchDialog3.execute ;
       Q_PROD.locate('PRO_ID',Q_PROD2PRO_ID.asstring,[]);
       Q_PROD2.close ;
    end ;


end;

procedure TFCliente.wwDBEdit23Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit23Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;

     If (Q_CLINBF.state = dsedit ) or (Q_CLINBF.state = dsinsert )  then  begin
         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit23.text + ''''  ) ;
         Q_CEP.Open ;

         Q_CLINBFCLIN_ENDC.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_CLINBFCLIN_MUNICC.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;

         IF Q_MUNI_COBR.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_CLINBFMUN_IDC.asinteger  := Q_MUNI_COBRMUN_ID.asinteger ;
             Q_CLINBFUF_SIGLAC.asstring := Q_MUNI_COBRUF_SIGLA.asstring ;
         end else begin
             Q_CLINBFMUN_IDC.asinteger  := 0 ;
             Q_CLINBFUF_SIGLAC.asstring := '0' ;
         end ;
         Q_CLINBFCLIN_END_BAIRC.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
        /// Q_CLINBFUF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwdbedit29.setfocus ;
     end ;

end;

procedure TFCliente.wwDBEdit24Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit24Exit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit29Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit29Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit25Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit25Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBLookupCombo9Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo9Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFCliente.wwDBLookupCombo8Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo8Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit26Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFCliente.wwDBEdit26Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFCliente.wwDBEdit27Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFCliente.wwDBEdit27Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit28Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit28Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFCliente.wwDBGrid5DblClick(Sender: TObject);
begin
     Q_CTT.Open ;

    IF Q_CTT.recordcount > 0 then begin
        Existe := 'S' ;
        Q_CTT.last ;
    end else
        Existe := 'N'  ;

    application.createform(TFContrato , FContrato);
    FContrato.SHOWMODAL ;
    FContrato.RELEASE ;
    FContrato.CLOSE ;


    Q_CTT.close ;
    Q_CTT.open ;

    
end;

procedure TFCliente.SpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    If (TabbedNotebook1.pageindex <> 4) and
       (TabbedNotebook1.pageindex <> 3) then
       SpeedButton2.hint := 'Pesquisar Clientes NBF' ;

    If (TabbedNotebook1.pageindex = 3) then
       SpeedButton2.hint := 'Pesquisar Produtos' ;

    If (TabbedNotebook1.pageindex = 4) then
       SpeedButton2.hint := 'Pesquisar Clientes Finais' ;



end;

procedure TFCliente.wwDBGrid3DblClick(Sender: TObject);
begin

   IF (Q_NBFINCLIF_ID.asstring <> '') then BEGIN
      CLIF := Q_NBFINCLIF_ID.asstring ; 
      application.createform(TFClienteFINAL , FClienteFINAL);
      FClienteFINAL.SHOWMODAL ;
      FClienteFINAL.RELEASE ;
      FClienteFINAL.CLOSE ;
   end ;

end;

procedure TFCliente.Q_CLINBFBeforePost(DataSet: TDataSet);
begin

   IF FMenu.SqlUsuariosAlteraClientes.AsString <> 'S' then begin
       ShowMessage('Não é possivel alterar dados do cliente, permissão insuficiente');
       Abort;
   end;

   IF (DBCB_CLI_PESS.text = '')  then begin
       MessageDlg('Tipo de Pessoa é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       DBCB_CLI_PESS.setfocus ;
       abort ;
   end ;

   IF (REME = '') then begin
         IF (wwDBComboBox1.text = '')  then begin
             MessageDlg('Contrato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBComboBox1.setfocus ;
             abort ;
         end ;
   end  ;


   if edtDesconto.Text = '' then
        Q_CLINBFCLIN_DESCONTO.Value := 0;


end;

procedure TFCliente.wwDBEdit30Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit30Exit(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := Clwindow;

  
end;

procedure TFCliente.DS_PRODDataChange(Sender: TObject; Field: TField);
begin
   If (Q_PROD.state = dsedit ) or (Q_PROD.state = dsInsert ) then begin
       IF (wwDBLookupCombo3.text <> '') and
          (wwDBLookupCombo10.text <> '') then
          label72.caption := Q_UNIDVENDUVEN_NOME.asstring + ' / ' +  Q_UNIDVEND2UVEN_NOME.asstring
        else
          label72.caption := 'Unidades em branco' ;
   end ;


   if Q_PRODPRO_ID.AsString <> '' then begin
       qrInd.Close;
       qrInd.Parameters[0].Value := Q_PRODPRO_ID.AsInteger;
       qrInd.Open;

       qrProdutosKit.Close;
       qrProdutosKit.Parameters[0].Value := Q_PRODCLIN_ID.AsInteger;
       qrProdutosKit.Open;

   end;

end;

procedure TFCliente.BitBtn2Click(Sender: TObject);
begin
     Q_PROAREa2.open ;
     while not Q_PROAREa2.eof do begin
             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add(' insert into PRODUTO_AREA ') ;
             Q_AUX.Sql.Add('(PRO_ID,AR_ID,PROAREA_SITU,PROAREA_ORDEM)') ;
             Q_AUX.Sql.Add(' values ( ' );
             Q_AUX.Sql.Add( ''''+ Q_PRODPRO_ID.asstring + '''' + ',');
             Q_AUX.Sql.Add( ''''+ Q_PROAREA2AR_ID.asstring + '''' + ',');
             Q_AUX.Sql.Add( ''''+ Q_PROAREA2PROAREA_SITU.asstring + '''' + ',');
             Q_AUX.Sql.Add( ''''+ Q_PROAREA2PROAREA_ORDEM.asstring + '''' + ')' )    ;
             Q_AUX.ExecSql;
          Q_PROAREA2.next ;
     end ;
     Q_PROAREA2.close ;

     Q_PROAREA.close;
     Q_PROAREa.open ;

   Panel10.visible :=  false ;
   Q_PROD2.close ;
end;

procedure TFCliente.BitBtn1Click(Sender: TObject);
begin



   Panel10.visible :=  false ;
   Q_PROD2.close ;
end;

procedure TFCliente.SpeedButton5Click(Sender: TObject);
begin
    Panel10.visible :=  true ;
    Q_PROD2.open ;
end;

procedure TFCliente.wwDBLookupCombo10Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := clwindow;

   If wwDBLookupCombo10.text <> '' then
     wwDBLookupCombo10.text := Q_UNIDVEND2UVEN_NOME.asstring  ;

end;

procedure TFCliente.wwDBLookupCombo10Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFCliente.DS_PROAREADataChange(Sender: TObject; Field: TField);
begin
   IF (wwDBLookupCombo7.text <> '')  then
      label74.caption := Q_PAR2PAR_NOME.asstring
    else
      label74.caption := '' ;

end;

procedure TFCliente.wwDBLookupCombo7Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := clwindow;

   If wwDBLookupCombo7.text <> '' then
     wwDBLookupCombo7.text := Q_ARAR_NOME.asstring  ;

end;

procedure TFCliente.wwDBLookupCombo7Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := claqua;  

end;

procedure TFCliente.SpeedButton6Click(Sender: TObject);
begin
    Panel11.visible :=  true ;
    Q_CTT_COPIA.open ;
end;

procedure TFCliente.BitBtn3Click(Sender: TObject);
begin
     If (wwDBLookupCombo12.text = '') then begin
         MessageDlg('Contrato não foi escolhido ',mtWarning,[mbok],0);
         wwDBLookupCombo12.setfocus ;
         abort ;
     end ;

     If MessageDlg('Confirma a Cópia deste Contrato ?',MtConfirmation,[MbYes,
        MbNo],0)=MrNO Then   abort ;

     Q_CTT_COPIA.open ;
     Q_CTTxSERV.open ;

     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add(' insert into CONTRATO ') ;
     Q_AUX.Sql.Add('(CTT_NOME,TOS_ID,CTT_DT_INICIO,CTT_DT_FINAL,') ;
     Q_AUX.Sql.Add(' EMP_ID,CTT_TERCEIRO,PAR_ID,CLIN_ID)') ;
     Q_AUX.Sql.Add(' values ( ' );
     Q_AUX.Sql.Add( ''''+ Q_CTT_COPIACTT_NOME.asstring + '''' + ',');
     Q_AUX.Sql.Add( ''''+ Q_CTT_COPIATOS_ID.asstring + '''' + ',');
     Q_AUX.Sql.Add( ' null ,');
     Q_AUX.Sql.Add( ' null ,');
     Q_AUX.Sql.Add( ' null ,');
     Q_AUX.Sql.Add( ''''+ Q_CTT_COPIACTT_TERCEIRO.asstring + '''' + ',');
     Q_AUX.Sql.Add( ''''+ Q_CTT_COPIAPAR_ID.asstring + ''''  + ',');
     Q_AUX.Sql.Add( ''''+ Q_CLINBFCLIN_ID.asstring + '''' + ')' ) ;
     Q_AUX.ExecSql;

     Q_CTT.close ;
     Q_CTT.open ;
     Q_CTT.last ;

     Q_CTTxESPEC.open;

     Q_CTTxSERV.first ;
     while not Q_CTTxSERV.eof do begin
           Q_AUX.close;
           Q_AUX.Sql.Clear;
           Q_AUX.Sql.Add(' insert into CONTRATO_SERVICO ') ;
           Q_AUX.Sql.Add('(CTTSERV_COBRADO,CTT_ID,SER_ID,TSER_ID,') ;
           Q_AUX.Sql.Add(' TDOC_ID)') ;
           Q_AUX.Sql.Add(' values ( ' );
           Q_AUX.Sql.Add( ''''+ Q_CTTxSERVCTTSERV_COBRADO.asstring + '''' + ',');
           Q_AUX.Sql.Add( ''''+ Q_CTTCTT_ID.asstring + '''' + ',');
           Q_AUX.Sql.Add( ''''+ Q_CTTxSERVSER_ID.asstring + '''' + ',');
           Q_AUX.Sql.Add( ''''+ Q_CTTxSERVTSER_ID.asstring + '''' + ',');
           Q_AUX.Sql.Add( ''''+ Q_CTTxSERVTDOC_ID.asstring + '''' + ')' ) ;
           Q_AUX.ExecSql;

           Q_CTTxSERV2.close ;
           Q_CTTxSERV2.Sql.Clear ;
           Q_CTTxSERV2.Sql.Add('select * from CONTRATO_SERVICO ') ;
           Q_CTTxSERV2.Sql.Add('where  CTT_ID = ' + Q_CTTCTT_ID.asstring);
           Q_CTTxSERV2.open  ;

           Q_CTTxSERV2.last  ;


           Q_CTTxESPEC.first;
           while not Q_CTTxESPEC.eof do begin

                   Q_AUX.close;
                   Q_AUX.Sql.Clear;
                   Q_AUX.Sql.Add(' insert into CONTRATO_ESPECIFICACOES ') ;
                   Q_AUX.Sql.Add('(CTT_ID,') ;
                   Q_aUX.Sql.Add('CTTSERV_ID,') ;
                   Q_AUX.Sql.Add('CTTESPEC_ORDEM,') ;
                   Q_AUX.Sql.Add('SER_ID,') ;
                   Q_AUX.Sql.Add('TSER_ID,') ;
                   Q_AUX.Sql.Add('CTTESPEC_FATOR ,') ;
                   Q_AUX.Sql.Add('CTTESPEC_MINIMA,') ;
                   Q_AUX.Sql.Add('UCOB_ID,') ;
                   Q_AUX.Sql.Add('CTTESPEC_TPCARGA ,') ;
                   Q_AUX.Sql.Add('CLIF_ID,') ;
                   Q_AUX.Sql.Add('VEIC_ID,') ;
                   Q_AUX.Sql.Add('REG_ID ,') ;
                   Q_AUX.Sql.Add('TPRO_ID,') ;
                   Q_AUX.Sql.Add('CTTESPEC_PESO_DE,') ;
                   Q_AUX.Sql.Add('CTTESPEC_PESO_ATE,') ;
                   Q_AUX.Sql.Add('CTTESPEC_AREA_DE,') ;
                   Q_AUX.Sql.Add('CTTESPEC_AREA_ATE ,') ;
                   Q_AUX.Sql.Add('CTTESPEC_QTDEPALLET_DE ,') ;
                   Q_AUX.Sql.Add('CTTESPEC_QTDEPALLET_ATE ,') ;
                   Q_AUX.Sql.Add('CTTESPEC_VOL_DE    ,') ;
                   Q_AUX.Sql.Add('CTTESPEC_VOL_ATE  )') ;
                   Q_AUX.Sql.Add(' values ( ' );
                   Q_AUX.Sql.Add( ''''+ Q_CTTxSERV2CTT_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxSERV2CTTSERV_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_ORDEM.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECSER_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECTSER_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_FATOR.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_MINIMA.asfloat) ,',','.') + ',');
                  {Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_FATOR.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_MINIMA.asstring + '''' + ',');}

                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECUCOB_ID.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_TPCARGA.asstring + '''' + ',');

                   IF (Q_CTTxESPECCLIF_ID.asstring = '') then
                       Q_AUX.Sql.Add( ' null ,')
                    else
                       Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCLIF_ID.asstring + '''' + ',');

                   IF (Q_CTTxESPECVEIC_ID.asstring = '') then
                       Q_AUX.Sql.Add(' null,')
                     else
                     Q_AUX.Sql.Add( ''''+ Q_CTTxESPECVEIC_ID.asstring + '''' + ',');

                   IF (Q_CTTxESPECREG_ID.asstring = '') then
                       Q_AUX.Sql.Add(' null,')
                     else
                     Q_AUX.Sql.Add( ''''+ Q_CTTxESPECREG_ID.asstring + '''' + ',');

                   {IF (Q_CTTxESPECTPRO_ID.asstring = '') then
                       Q_AUX.Sql.Add(' null,')
                     else
                     Q_AUX.Sql.Add( ''''+ Q_CTTxESPECTPRO_ID.asstring + '''' + ',');}

                   Q_AUX.Sql.Add( ''''+ Q_TPRODTPRO_ID.asstring + '''' + ',');

                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_PESO_DE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_PESO_ATE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_AREA_DE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_AREA_ATE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_QTDEPALLET_DE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_QTDEPALLET_ATE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_VOL_DE.asfloat) ,',','.') + ',');
                   Q_AUX.Sql.Add( Funcoes.Converte(floattostr(Q_CTTxESPECCTTESPEC_VOL_ATE.asfloat) ,',','.')  + ')');
                   {Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_PESO_DE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_PESO_ATE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_AREA_DE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_AREA_ATE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_QTDEPALLET_DE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_QTDEPALLET_ATE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_VOL_DE.asstring + '''' + ',');
                   Q_AUX.Sql.Add( ''''+ Q_CTTxESPECCTTESPEC_VOL_ATE.asstring + '''' + ')');}
                   Q_AUX.ExecSql;


                Q_CTTxESPEC.next  ;
             end ;

        Q_CTTxSERV.next  ;
     end ;

     //Q_CTTxSERV.Datasource := '' ;
    { Q_CTTxSERV2.close ;
     Q_CTTxSERV2.Sql.Clear ;
     Q_CTTxSERV2.Sql.Add('select * from CONTRATO_SERVICO ') ;
     Q_CTTxSERV2.Sql.Add('where  CTT_ID = ' + Q_CTTCTT_ID.asstring);
     Q_CTTxSERV2.open  ;  }

   ///  Q_CTTxESPEC.open ;

     ///Q_CTTxSERV.first;
     //while not Q_CTTxSERV.eof do begin


        ///Q_CTTxSERV.next  ;
     ///end ;

     Q_CTT_COPIA.close ;
     Q_CTTxSERV.close ;

   Panel10.visible :=  false ;
   Q_PROD2.close ;
end;

procedure TFCliente.BitBtn4Click(Sender: TObject);
begin
   Panel11.visible :=  false ;
   Q_CTT_COPIA.close ;
end;

procedure TFCliente.wwDBEdit32Enter(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit32Exit(Sender: TObject);
begin
     (Sender as TwwDBedit).Color := ClWINDOW;
end;

procedure TFCliente.wwDBEdit33Enter(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit33Exit(Sender: TObject);
begin
     (Sender as TwwDBedit).Color := ClWINDOW ;
end;

procedure TFCliente.wwDBEdit34Enter(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit34Exit(Sender: TObject);
begin
     (Sender as TwwDBedit).Color := ClWINDOW ;

     VOLM3 := 0 ;
     VOLM3PALLET := 0 ;

  If (Q_PROD.state = dsedit ) or (Q_PROD.state = dsInsert ) then begin

     IF (wwDBEdit32.text <> '') and
        (wwDBEdit33.text <> '') and
        (wwDBEdit34.text <> '') then begin

         VOLM3 := (Q_PRODPRO_COMPR.asfloat *
                   Q_PRODPRO_LARG.asfloat  *
                   Q_PRODPRO_ALT.asfloat )  ;
         VOLM3PALLET := (VOLM3 * Q_PRODPRO_QTDE_PALLETUV.asfloat) ;

         Q_PRODPRO_VOLUME.asfloat := VOLM3 ;
         Q_PRODPRO_VOLUME_PALLET.asfloat := VOLM3PALLET ;
     end ;

  end ;

end;

procedure TFCliente.Q_PALEAfterDelete(DataSet: TDataSet);
var StrPALE : string ;
begin
   StrPALE :=  Q_PALEPALE_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PALE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PALE.close ;
   Q_PALE.Open ;
   Q_PALE.locate('PALE_ID',StrPALE,[]);
end ;

procedure TFCliente.Q_PALEAfterPost(DataSet: TDataSet);
var
  STRPALE : string ; {121212}
begin
   STRPALE := Q_PALEPALE_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PALE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_PALE.close ;
   Q_PALE.Open ;

   if STRPALE = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(PALE_ID) as Numero from PRODUTO_ESPECIFICO ' ) ;
     Q_AUX.open ;
     STRPALE := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_PALE.locate('PALE_ID',STRPALE,[])    ;

end ;

procedure TFCliente.Q_PALENewRecord(DataSet: TDataSet);
begin
  Q_PALECLIN_ID.asstring :=  Q_CLINBFCLIN_ID.asstring ;
  Q_PALEPRO_ID.asstring := Q_PRODPRO_ID.asstring ; 
end;

procedure TFCliente.wwDBLookupCombo13Enter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFCliente.wwDBLookupCombo13Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit15Exit(Sender: TObject);
begin
 (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCliente.wwDBEdit15Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit14Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.wwDBEdit14Exit(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := clwindow;

   If (Q_PALE.state = dsedit ) or (Q_PALE.state = dsInsert ) then begin

     PALLET2 := (Q_PALEPALE_ALTURA.asinteger * Q_PALEPALE_Lastro.asinteger)  ;
     PALLETSTR2 := formatfloat('0',PALLET2);

     Q_PALEPALE_QTDE_PALLET.asinteger := strtoint(PALLETSTR2) ;

     IF (wwDBEdit31.text <> '') then  begin
        Q_PALEPALE_QTDE_PALLETUV.asfloat := (strtofloat(PALLETSTR2) * strtofloat(wwDBEdit31.text)) ;

          {IF (wwDBEdit32.text <> '') and
             (wwDBEdit33.text <> '') and
             (wwDBEdit34.text <> '') then begin

               VOLM3 := (Q_PRODPRO_COMPR.asfloat *
                         Q_PRODPRO_LARG.asfloat  *
                         Q_PRODPRO_ALT.asfloat )  ;
               VOLM3PALLET := (VOLM3 * Q_PRODPRO_QTDE_PALLETUV.asfloat) ;

               Q_PRODPRO_VOLUME.asfloat := VOLM3 ;
               Q_PRODPRO_VOLUME_PALLET.asfloat := VOLM3PALLET ;
          end ;   }
     end ;

  end ;

end;

procedure TFCliente.Q_PALEBeforePost(DataSet: TDataSet);
begin
   IF (wwDBLookupCombo13.text = '')  then begin
       MessageDlg('Cliente Final é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo13.setfocus ;
       abort ;
   end ;

    PALLET2 := (Q_PALEPALE_ALTURA.asinteger * Q_PALEPALE_Lastro.asinteger)  ;
    PALLETSTR2 := formatfloat('0',PALLET2);
    Q_PALEPALE_QTDE_PALLET.asinteger := strtoint(PALLETSTR2) ;

    IF (wwDBEdit31.text <> '')  then
       Q_PALEPALE_QTDE_PALLETUV.asfloat := (strtofloat(PALLETSTR2) * strtofloat(wwDBEdit31.text)) ;


    ///If (TabbedNotebook2.visible <> false) then begin
    IF (Q_PALEPALE_QTDE_PALLET.asinteger = 0)  then begin
       MessageDlg('Quantidade por Pallet deverá ser superior a Zero !',mtWarning,[mbok],0);
       wwDBEDIT15.setfocus;
       abort;
    end ;
    ///end ;

end;

procedure TFCliente.wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
      Q_PALECLIFende.asstring := Q_CLIF2CLIF_ENDERECO.asstring ; 
end;

procedure TFCliente.DBE_CFA_RICMEnter(Sender: TObject);
begin
  (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFCliente.DBE_CFA_RICMExit(Sender: TObject);
begin
     (Sender as TwwDBedit).Color := Clwindow ;
end;

procedure TFCliente.wwDBEdit35Enter(Sender: TObject);
begin

  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFCliente.wwDBEdit35Exit(Sender: TObject);
begin
  
  (Sender as TwwDBEdit).Color := Clwindow;
end;


procedure TFCliente.wwDBComboBox7Enter(Sender: TObject);
begin
    (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFCliente.wwDBComboBox7Exit(Sender: TObject);
begin
    (Sender as TwwDBCOMBOBOX).Color := Clwindow ;




end;

procedure TFCliente.wwDBComboBox8Exit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := Clwindow;
end;

procedure TFCliente.wwDBComboBox8Enter(Sender: TObject);
begin
    (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFCliente.DBE_CLI_CGCKeyPress(Sender: TObject; var Key: Char);
begin
IF Length(DBE_CLI_CGC.Text) < 14 then
BEGIN
    IF NOT (Key IN ['0'..'9']) then
        key := #0
end;


end;

procedure TFCliente.DBE_CLI_INSCKeyPress(Sender: TObject; var Key: Char);
begin
    IF NOT (Key IN ['0'..'9', #8,#13, #9]) then
        key := #0
end;

procedure TFCliente.qrIndNewRecord(DataSet: TDataSet);
begin
  qrIndPRO_ID.AsInteger := Q_PRODPRO_ID.AsInteger;
end;

procedure TFCliente.cboProKitExit(Sender: TObject);
begin
  if qrInd.State in [dsEdit, dsInsert] then
        qrIndPRO_ID_KIT.AsInteger := qrProdutosKitPRO_ID.AsInteger;
end;

procedure TFCliente.Q_CONTABeforePost(DataSet: TDataSet);
begin
   IF FMenu.SqlUsuariosAlteraClientes.AsString <> 'S' then begin
       ShowMessage('Não é possivel alterar dados do cliente, permissão insuficiente');
       Abort;
   end;
end;

procedure TFCliente.Q_TPRODBeforePost(DataSet: TDataSet);
begin
   IF FMenu.SqlUsuariosAlteraClientes.AsString <> 'S' then begin
       ShowMessage('Não é possivel alterar dados do cliente, permissão insuficiente');
       Abort;
   end;
end;

procedure TFCliente.Q_CTTBeforePost(DataSet: TDataSet);
begin
   IF FMenu.SqlUsuariosAlteraClientes.AsString <> 'S' then begin
       ShowMessage('Não é possivel alterar dados do cliente, permissão insuficiente');
       Abort;
   end;
end;

procedure TFCliente.btn1Click(Sender: TObject);
begin
   frmCadEmail := TfrmCadEmail.create(Self);
   frmcademail.lbl1.Caption := Q_CLINBFCLIN_ID.AsString;
   frmCadEmail.ShowModal;
end;

end.

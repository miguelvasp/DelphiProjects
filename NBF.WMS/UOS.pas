unit UOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwdatsrc, Wwquery, Wwdotdot, Wwdbcomb, DBCtrls, Mask,
  wwdbedit, StdCtrls, wwdblook, Wwdbigrd, Grids, Wwdbgrid, ComCtrls,
  Tabnotbk, Buttons, ExtCtrls, wwstorep, DBClient, Provider, ADODB, RzTabs, ComObj;

type
  TFOS = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit3: TwwDBEdit;
    Label15: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText1: TDBText;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Label3: TLabel;
    Label7: TLabel;
    Q_OS: TwwQuery;
    DS_OS: TwwDataSource;
    Q_OSOS_ID: TAutoIncField;
    Q_OSCLIN_ID: TIntegerField;
    Q_OSCTT_ID: TIntegerField;
    Q_OSTOS_ID: TIntegerField;
    Q_OSOS_DATA: TDateTimeField;
    Q_OSOS_USUARIO: TIntegerField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_CTT: TwwQuery;
    Q_CTTCTT_ID: TAutoIncField;
    Q_CTTCTT_NOME: TStringField;
    Q_TOS: TwwQuery;
    Q_TOSTOS_NOME: TStringField;
    Q_TOSTOS_ID: TAutoIncField;
    Q_CTTTOS_ID: TIntegerField;
    Label18: TLabel;
    DBText4: TDBText;
    Q_CTTCLIN_ID: TIntegerField;
    STP_SERVESPEC: TwwStoredProc;
    Q_OSSERV: TwwQuery;
    DS_OSSERV: TwwDataSource;
    Q_OSSERVOS_SERVICO_ID: TAutoIncField;
    Q_OSSERVOS_ID: TIntegerField;
    Q_OSSERVTSER_ID: TIntegerField;
    Q_OSSERVSER_ID: TIntegerField;
    Q_OSSERVOS_SERVICO_COBRA: TStringField;
    Q_OSSERVTDOC_ID: TIntegerField;
    Q_OSSERVSER_NOME: TStringField;
    Q_OSSERVTSER_NOME: TStringField;
    Q_TDOC: TwwQuery;
    Q_OSSERVTDOC_NOME: TStringField;
    Q_CTT2: TwwQuery;
    Q_CTT2CTT_ID: TAutoIncField;
    Q_CTT2CTT_NOME: TStringField;
    Q_OSCTT_NOME: TStringField;
    Q_OSCLIN_RAZA: TStringField;
    Q_OSESPEC: TwwQuery;
    DS_OSESPEC: TwwDataSource;
    Q_OSESPECOS_ESPEC_ID: TAutoIncField;
    Q_OSESPECOS_ID: TIntegerField;
    Q_OSESPECOS_SERVICO_ID: TIntegerField;
    Q_OSESPECTSER_ID: TIntegerField;
    Q_OSESPECSER_ID: TIntegerField;
    Q_OSESPECOS_ESPEC_FATOR: TFloatField;
    Q_OSESPECUCOB_ID: TIntegerField;
    Q_OSESPECOS_ESPEC_MINIMA: TFloatField;
    Q_OSESPECOS_ESPEC_TPCARGA: TStringField;
    Q_OSESPECCLIF_ID: TIntegerField;
    Q_OSESPECVEIC_ID: TIntegerField;
    Q_OSESPECREG_ID: TIntegerField;
    Q_OSESPECTPRO_ID: TIntegerField;
    Q_OSESPECOS_ESPEC_QTDEPALLET_DE: TIntegerField;
    Q_OSESPECOS_ESPEC_QTDEPALLET_ATE: TIntegerField;
    Q_OSESPECOS_ESPEC_ORDEM: TIntegerField;
    TabbedNotebook2: TTabbedNotebook;
    Label47: TLabel;
    DBText11: TDBText;
    Panel3: TPanel;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    wwDBComboBox2: TwwDBComboBox;
    Label48: TLabel;
    DBText12: TDBText;
    wwDBComboBox3: TwwDBComboBox;
    UPD_OSSERV: TUpdateSQL;
    DS_CLIN: TwwDataSource;
    DS_TOS: TwwDataSource;
    DBText2: TDBText;
    Q_SERV: TwwQuery;
    Q_SERVSER_NOME: TStringField;
    Q_SERVTSER_NOME: TStringField;
    Q_SERVSER_ID: TAutoIncField;
    Q_SERVTSER_ID: TIntegerField;
    Q_TSERV: TwwQuery;
    Q_TSERVTSER_ID: TAutoIncField;
    Q_TSERVTSER_NOME: TStringField;
    Q_TSERVTSER_CONCEITO: TMemoField;
    Label14: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label22: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label23: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Label25: TLabel;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Label26: TLabel;
    wwDBLookupCombo9: TwwDBLookupCombo;
    Label27: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label28: TLabel;
    wwDBLookupCombo11: TwwDBLookupCombo;
    Label21: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Label13: TLabel;
    Label16: TLabel;
    Label30: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    Label33: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label17: TLabel;
    Q_GERAESPEC: TwwQuery;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_UCOB: TwwQuery;
    Q_UCOBUCOB_NOME: TStringField;
    Q_UCOBUCOB_ID: TAutoIncField;
    Q_REG: TwwQuery;
    Q_REGREG_NOME: TStringField;
    Q_REGREG_ID: TAutoIncField;
    Q_TPROD: TwwQuery;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODCLIN_ID: TIntegerField;
    Q_OSESPECREG_NOME: TStringField;
    Q_OSESPECUCOB_NOME: TStringField;
    Q_CLIF: TwwQuery;
    Q_CLIFCLIF_ID: TAutoIncField;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_OSESPECCLIF_NOME: TStringField;
    Q_OSESPECVEIC_NOME: TStringField;
    Q_OSESPECTPRO_NOME: TStringField;
    SpeedButton4: TSpeedButton;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    UPD_OS: TUpdateSQL;
    Panel5: TPanel;
    DBText5: TDBText;
    UPD_OSESPEC: TUpdateSQL;
    Q_OSOS_GEROU: TStringField;
    Panel6: TPanel;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    Label19: TLabel;
    DS_TDOC: TwwDataSource;
    Q_OSESPECOS_ESPEC_PESO_DE: TFloatField;
    Q_OSESPECOS_ESPEC_PESO_ATE: TFloatField;
    Q_OSESPECOS_ESPEC_AREA_DE: TFloatField;
    Q_OSESPECOS_ESPEC_AREA_ATE: TFloatField;
    Q_OSESPECOS_ESPEC_VOL_DE: TFloatField;
    Q_OSESPECOS_ESPEC_VOL_ATE: TFloatField;
    Q_ESPECdel: TwwQuery;
    Q_SERVdel: TwwQuery;
    Panel7: TPanel;
    Q_ORDEMdel: TwwQuery;
    Q_CTTCTT_TERCEIRO: TStringField;
    Q_TDOCOTD_ID: TAutoIncField;
    Q_TDOCOS_ID: TIntegerField;
    Q_TDOCTDOC_ID: TIntegerField;
    Q_TDOCTDOC_NOME: TStringField;
    Q_TDOCOTD_ORDEM: TIntegerField;
    Q_TDOCOTD_CATEGORIA: TStringField;
    Q_CLINCLIN_UTIL_COD: TStringField;
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
    Q_AUX: TwwQuery;
    Q_CLINMUN_ID: TIntegerField;
    DS_CTT: TwwDataSource;
    Q_CTTPAR_ID: TIntegerField;
    STP_RESUMO_CROS: TwwStoredProc;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    Q_OSOS_CONCLUIDA: TStringField;
    Panel8: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Label11: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    DBCB_CLI_PESS: TwwDBComboBox;
    Label10: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label6: TLabel;
    STP_TPDO_TPOS_OS: TwwStoredProc;
    Q_AUX2: TwwQuery;
    BitBtn3: TBitBtn;
    STP_CALC: TwwStoredProc;
    Label20: TLabel;
    DBText6: TDBText;
    Label34: TLabel;
    DBText7: TDBText;
    Label35: TLabel;
    DBText8: TDBText;
    Q_CALC: TwwQuery;
    Q_CALCCALC_ID: TAutoIncField;
    Q_CALCOS_ID: TIntegerField;
    Q_CALCOS_SERVICO_ID: TIntegerField;
    Q_CALCOS_ESPEC_ID: TIntegerField;
    Q_CALCCTT_ID: TIntegerField;
    Q_CALCSER_ID: TIntegerField;
    Q_CALCTDOC_ID: TIntegerField;
    Q_CALCTDOC_TIPO: TStringField;
    Q_CALCORD_ID: TIntegerField;
    Q_CALCMANI_ID: TIntegerField;
    Q_CALCNFI_CODI: TIntegerField;
    Q_CALCCALC_GRANDEZA: TFloatField;
    Q_CALCUCOB_ID: TIntegerField;
    Q_CALCCALC_UNITARIO: TFloatField;
    Q_CALCCALC_TOTAL: TFloatField;
    DS_CALC: TwwDataSource;
    Q_CALCSER_NOME: TStringField;
    Q_CALCUCOB_NOME: TStringField;
    Q_NF: TwwQuery;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_CALCNFnumero: TStringField;
    Q_TDTO: TwwQuery;
    Q_TDTOTDOC_NOME: TStringField;
    Q_TDTOTDTO_ID: TAutoIncField;
    Q_TDTOTOS_ID: TIntegerField;
    Q_TDTOTDOC_ID: TIntegerField;
    Q_TDTOTDTO_ORDEM: TIntegerField;
    Q_TPROD2: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    Q_CALCNFTPROD_ID: TIntegerField;
    Q_CALCTPRO_ID: TIntegerField;
    Q_CALCTPRODdesc: TStringField;
    Q_CLIFclif_endereco: TStringField;
    Q_OSESPECOS_ESPEC_ORIGEM: TStringField;
    Q_NF2: TwwQuery;
    Q_NF2NFI_DEMI: TDateTimeField;
    Q_NF2NFI_DTENTREGA: TDateTimeField;
    Q_NF2NFI_DEST_CLI: TIntegerField;
    Q_NF2NFI_NUMERO: TStringField;
    DS_NF2: TwwDataSource;
    Q_NF2CLIF_RAZA: TStringField;
    Q_NF2NFI_MARCADOR: TStringField;
    Q_NF2NFI_CODI: TAutoIncField;
    UPD_NF2: TUpdateSQL;
    Panel9: TPanel;
    Label37: TLabel;
    SpeedButton2: TSpeedButton;
    wwDBGrid4: TwwDBGrid;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    Label38: TLabel;
    Q_OSTPCARGA: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    STP_ESTQPERANT: TwwStoredProc;
    Q_CLINCLIN_TIPOSALDO: TStringField;
    Q_AUX4: TwwQuery;
    BitBtn7: TBitBtn;
    Q_AUX6: TwwQuery;
    Panel11: TPanel;
    SpeedButton5: TSpeedButton;
    BitBtn8: TBitBtn;
    Grid: TwwDBGrid;
    Q_NFREL: TwwQuery;
    UPD_NFREL: TUpdateSQL;
    DS_NFREL: TwwDataSource;
    Q_NFRELNFI_CODI: TAutoIncField;
    Q_NFRELNFI_MARCADOR_CROS: TStringField;
    Label39: TLabel;
    Q_NFRELNFI_NUMERO: TStringField;
    Panel12: TPanel;
    Label40: TLabel;
    Data1: TMaskEdit;
    Label41: TLabel;
    Data2: TMaskEdit;
    Label42: TLabel;
    SBT_VISU: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Q_OSCNPJ: TStringField;
    qrRecalculoCTRC: TwwQuery;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    dspOs: TDataSetProvider;
    cdsOS: TClientDataSet;
    cdsOSOS_DATA: TDateTimeField;
    cdsOSOS_ID: TAutoIncField;
    cdsOSCLIN_ID: TIntegerField;
    cdsOSCTT_ID: TIntegerField;
    cdsOSTOS_ID: TIntegerField;
    cdsOSOS_USUARIO: TIntegerField;
    cdsOSCTT_NOME: TStringField;
    cdsOSCLIN_RAZA: TStringField;
    cdsOSOS_GEROU: TStringField;
    cdsOSOS_CONCLUIDA: TStringField;
    cdsOSTPCARGA: TStringField;
    cdsOSCNPJ: TStringField;
    dspClin: TDataSetProvider;
    cdsClin: TClientDataSet;
    cdsClinCLIN_RAZA: TStringField;
    cdsClinCLIN_ID: TAutoIncField;
    cdsClinCLIN_UTIL_COD: TStringField;
    cdsClinCLIN_PESSOA: TStringField;
    cdsClinCLIN_NOME: TStringField;
    cdsClinCLIN_CGCCPF: TStringField;
    cdsClinCLIN_INSCRG: TStringField;
    cdsClinCLIN_ENDERECO: TStringField;
    cdsClinCLIN_ENDERECO_COMPL: TStringField;
    cdsClinCLIN_ENDERECO_BAIRRO: TStringField;
    cdsClinCLIN_MUNICIPIO: TStringField;
    cdsClinUF_SIGLA: TStringField;
    cdsClinCLIN_CEP: TStringField;
    cdsClinCLIN_TEL1: TStringField;
    cdsClinCLIN_TEL2: TStringField;
    cdsClinCLIN_FAX: TStringField;
    cdsClinCLIN_EMAIL: TStringField;
    cdsClinCON_CODI: TStringField;
    cdsClinCLIN_CONTRATO: TStringField;
    cdsClinMUN_ID: TIntegerField;
    cdsClinCLIN_TIPOSALDO: TStringField;
    dspTOS: TDataSetProvider;
    cdsTOS: TClientDataSet;
    cdsTOSTOS_NOME: TStringField;
    cdsTOSTOS_ID: TAutoIncField;
    dspCTT: TDataSetProvider;
    cdsCTT: TClientDataSet;
    cdsCTTCTT_NOME: TStringField;
    cdsCTTCTT_ID: TAutoIncField;
    cdsCTTTOS_ID: TIntegerField;
    cdsCTTCLIN_ID: TIntegerField;
    cdsCTTCTT_TERCEIRO: TStringField;
    cdsCTTPAR_ID: TIntegerField;
    dspTServ: TDataSetProvider;
    cdsTServ: TClientDataSet;
    cdsTServTSER_ID: TAutoIncField;
    cdsTServTSER_NOME: TStringField;
    cdsTServTSER_CONCEITO: TMemoField;
    dspCTT2: TDataSetProvider;
    cdsCTT2: TClientDataSet;
    cdsCTT2CTT_ID: TAutoIncField;
    cdsCTT2CTT_NOME: TStringField;
    dspOSESPEC: TDataSetProvider;
    cdsOSESPEC: TClientDataSet;
    cdsOSESPECOS_ESPEC_ORDEM: TIntegerField;
    cdsOSESPECOS_ESPEC_FATOR: TFloatField;
    cdsOSESPECUCOB_NOME: TStringField;
    cdsOSESPECOS_ESPEC_MINIMA: TFloatField;
    cdsOSESPECOS_ESPEC_TPCARGA: TStringField;
    cdsOSESPECREG_NOME: TStringField;
    cdsOSESPECVEIC_NOME: TStringField;
    cdsOSESPECTPRO_NOME: TStringField;
    cdsOSESPECOS_ESPEC_AREA_DE: TFloatField;
    cdsOSESPECOS_ESPEC_AREA_ATE: TFloatField;
    cdsOSESPECOS_ESPEC_QTDEPALLET_DE: TIntegerField;
    cdsOSESPECOS_ESPEC_QTDEPALLET_ATE: TIntegerField;
    cdsOSESPECOS_ESPEC_PESO_DE: TFloatField;
    cdsOSESPECOS_ESPEC_PESO_ATE: TFloatField;
    cdsOSESPECOS_ESPEC_VOL_DE: TFloatField;
    cdsOSESPECOS_ESPEC_VOL_ATE: TFloatField;
    cdsOSESPECOS_ESPEC_ID: TAutoIncField;
    cdsOSESPECOS_ID: TIntegerField;
    cdsOSESPECOS_SERVICO_ID: TIntegerField;
    cdsOSESPECTSER_ID: TIntegerField;
    cdsOSESPECSER_ID: TIntegerField;
    cdsOSESPECUCOB_ID: TIntegerField;
    cdsOSESPECCLIF_ID: TIntegerField;
    cdsOSESPECVEIC_ID: TIntegerField;
    cdsOSESPECREG_ID: TIntegerField;
    cdsOSESPECTPRO_ID: TIntegerField;
    cdsOSESPECCLIF_NOME: TStringField;
    cdsOSESPECOS_ESPEC_ORIGEM: TStringField;
    dspSERV: TDataSetProvider;
    cdsSERV: TClientDataSet;
    cdsSERVSER_NOME: TStringField;
    cdsSERVTSER_NOME: TStringField;
    cdsSERVSER_ID: TAutoIncField;
    cdsSERVTSER_ID: TIntegerField;
    dspREG: TDataSetProvider;
    cdsREG: TClientDataSet;
    cdsREGREG_NOME: TStringField;
    cdsREGREG_ID: TAutoIncField;
    dspTPROD: TDataSetProvider;
    cdsTPROD: TClientDataSet;
    cdsTPRODTPRO_NOME: TStringField;
    cdsTPRODTPRO_ID: TAutoIncField;
    cdsTPRODCLIN_ID: TIntegerField;
    dspUCOB: TDataSetProvider;
    cdsUCOB: TClientDataSet;
    cdsUCOBUCOB_NOME: TStringField;
    cdsUCOBUCOB_ID: TAutoIncField;
    dspVEIC: TDataSetProvider;
    cdsVEIC: TClientDataSet;
    cdsVEICVEIC_NOME: TStringField;
    cdsVEICVEIC_ID: TAutoIncField;
    dspCLIF: TDataSetProvider;
    cdsCLIF: TClientDataSet;
    cdsCLIFCLIF_RAZA: TStringField;
    cdsCLIFclif_endereco: TStringField;
    cdsCLIFCLIF_ID: TAutoIncField;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    cdsNFNFI_NUMERO: TStringField;
    cdsNFNFI_CODI: TAutoIncField;
    dspTDTO: TDataSetProvider;
    cdsTDTO: TClientDataSet;
    cdsTDTOTDOC_NOME: TStringField;
    cdsTDTOTDTO_ID: TAutoIncField;
    cdsTDTOTOS_ID: TIntegerField;
    cdsTDTOTDOC_ID: TIntegerField;
    cdsTDTOTDTO_ORDEM: TIntegerField;
    dspTPROD2: TDataSetProvider;
    cdsTPROD2: TClientDataSet;
    cdsTPROD2TPRO_NOME: TStringField;
    cdsTPROD2TPRO_ID: TAutoIncField;
    cdsTPROD2CLIN_ID: TIntegerField;
    dspNFREL: TDataSetProvider;
    cdsNFREL: TClientDataSet;
    cdsNFRELNFI_MARCADOR_CROS: TStringField;
    cdsNFRELNFI_NUMERO: TStringField;
    cdsNFRELNFI_CODI: TAutoIncField;
    dspNF2: TDataSetProvider;
    cdsNF2: TClientDataSet;
    cdsNF2NFI_MARCADOR: TStringField;
    cdsNF2NFI_DEMI: TDateTimeField;
    cdsNF2CLIF_RAZA: TStringField;
    cdsNF2NFI_DTENTREGA: TDateTimeField;
    cdsNF2NFI_NUMERO: TStringField;
    cdsNF2NFI_DEST_CLI: TIntegerField;
    cdsNF2NFI_CODI: TAutoIncField;
    dspAUX6: TDataSetProvider;
    cdsAUX6: TClientDataSet;
    dspAUX2: TDataSetProvider;
    cdsAUX2: TClientDataSet;
    dspAux: TDataSetProvider;
    cdsAux: TClientDataSet;
    Q_NFRELOS_ID: TIntegerField;
    cdsNFRELOS_ID: TIntegerField;
    Q_VEICVEIC_ORDEM: TIntegerField;
    cdsVEICVEIC_ORDEM: TIntegerField;
    Button1: TButton;
    CheckBox1: TCheckBox;
    SpeedButton7: TSpeedButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel10: TPanel;
    Label46: TLabel;
    Label36: TLabel;
    DBG_INFI: TwwDBGrid;
    wwDBGrid5: TwwDBGrid;
    Panel13: TPanel;
    qrOEConsulta: TADOQuery;
    Button2: TButton;
    qrOEConsultaORD_CONH: TStringField;
    qrOEConsultaORD_NOTAS: TStringField;
    qrOEConsultaORD_PESO_TOTAL: TFloatField;
    qrOEConsultaORD_VALORTOTAL: TFloatField;
    qrOEConsultaMANI_ID: TIntegerField;
    qrOEConsultaORD_VLR_FRETE: TFloatField;
    qrOEConsultaORD_VLR_SECCAT: TFloatField;
    qrOEConsultaORD_VLR_DESPACHO: TFloatField;
    qrOEConsultaORD_VLR_PEDAGIO: TFloatField;
    qrOEConsultaORD_OUTROS: TFloatField;
    qrOEConsultaORD_TXENTREGA: TFloatField;
    qrOEConsultaORD_SEGURO: TFloatField;
    qrOEConsultaORD_TOTALPREST: TFloatField;
    qrOEConsultaORD_ALIQ: TFloatField;
    qrOEConsultaORD_VLR_ICMS: TFloatField;
    dsOEConsulta: TDataSource;
    dsExcel: TDataSource;
    qrOEAux: TADOQuery;
    qrOEAuxTotal: TFloatField;
    Panel14: TPanel;
    Label43: TLabel;
    dsqrOEAux: TDataSource;
    Q_PAR: TwwQuery;
    Q_PARPAR_ID: TAutoIncField;
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
    Q_PARAR_ID: TIntegerField;
    Q_PARMUN_ID: TIntegerField;
    Q_PARAR_ID_OPER: TIntegerField;
    Q_PARULT_TAG: TIntegerField;
    Q_PARPALLET_M2: TFloatField;
    Q_PARCO_SER_ID: TIntegerField;
    Q_PAREN_SER_ID: TIntegerField;
    Q_PARFLAGTELA: TStringField;
    Q_PARFLAGTELA2: TStringField;
    Q_PARFLAGTELA3: TStringField;
    Q_PARCLIN_ID: TIntegerField;
    Q_PARVERSAO: TStringField;
    Q_PARFLAGTELA_USUARIO: TStringField;
    Q_PARFLAGTELA_DATA: TDateTimeField;
    Q_PARFLAGTELA2_USUARIO: TStringField;
    Q_PARFLAGTELA2_DATA: TDateTimeField;
    Q_PARPORTA: TIntegerField;
    Q_PARHOST: TStringField;
    Q_PARCAMINHO: TStringField;
    Q_PARULT_FATURA: TIntegerField;
    Q_PARULT_NF: TIntegerField;
    Q_PARULT_CONH: TIntegerField;
    Q_PARAR_ID_AVARIA: TIntegerField;
    Q_PARULT_MINUTA: TIntegerField;
    Q_PARULT_NFPROV: TIntegerField;
    Q_PARULT_CONHPROV: TIntegerField;
    Q_PARULT_MINUTAPROV: TIntegerField;
    Q_PARCAMINHO_MATRICIAL: TStringField;
    Q_PARCAMINHO_MATRICIAL_FATURA: TStringField;
    Q_PARCAMINHO_MATRICIAL_CONH: TStringField;
    Q_PARDATA: TDateTimeField;
    Q_PARConnectionString: TStringField;
    Q_PARIBGE_ID: TIntegerField;
    Q_PARNUMERO: TIntegerField;
    Q_PARLOGO: TBlobField;
    Q_PARNF_SERVICO: TIntegerField;
    Q_PARALIQ_ISS: TFloatField;
    Q_PARNF_SERVICO_PROV: TIntegerField;
    Q_PARALIQ_ISS_NFS_OE: TFloatField;
    Q_PARDATA_FRETE_FECHAMENTO: TDateTimeField;
    Q_PARRodapeFrete: TStringField;
    Q_PARESTOQUE_INVENTARIO: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Q_OSAfterDelete(DataSet: TDataSet);
    procedure Q_OSAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DS_OSDataChange(Sender: TObject; Field: TField);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DS_OSSERVDataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure TabbedNotebook2Click(Sender: TObject);
    procedure Q_OSSERVAfterPost(DataSet: TDataSet);
    procedure Q_OSSERVAfterDelete(DataSet: TDataSet);
    procedure wwDBLookupCombo8Enter(Sender: TObject);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure wwDBLookupCombo9Enter(Sender: TObject);
    procedure wwDBLookupCombo9Exit(Sender: TObject);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBLookupCombo11Enter(Sender: TObject);
    procedure wwDBLookupCombo11Exit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit15Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure wwDBEdit15Exit(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure TabbedNotebook2Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_OSNewRecord(DataSet: TDataSet);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Q_OSBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Q_OSBeforeEdit(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure cdsOSBeforePost(DataSet: TDataSet);
    procedure cdsOSAfterPost(DataSet: TDataSet);
    procedure cdsOSAfterDelete(DataSet: TDataSet);
    procedure cdsOSNewRecord(DataSet: TDataSet);
    procedure cdsOSBeforeEdit(DataSet: TDataSet);
    procedure cdsOSSERVAfterDelete(DataSet: TDataSet);
    procedure cdsOSSERVAfterPost(DataSet: TDataSet);
    procedure cdsOSESPECAfterDelete(DataSet: TDataSet);
    procedure cdsOSESPECAfterPost(DataSet: TDataSet);
    procedure cdsOSESPECBeforeDelete(DataSet: TDataSet);
    procedure cdsOSESPECBeforeEdit(DataSet: TDataSet);
    procedure cdsOSESPECBeforePost(DataSet: TDataSet);
    procedure cdsOSESPECNewRecord(DataSet: TDataSet);
    procedure cdsNFRELNFI_MARCADOR_CROSChange(Sender: TField);
    procedure cdsNF2AfterPost(DataSet: TDataSet);
    procedure cdsNFRELAfterPost(DataSet: TDataSet);
    procedure Q_NFRELAfterPost(DataSet: TDataSet);
    procedure cdsREGBeforeOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure DS_CLINDataChange(Sender: TObject; Field: TField);
    procedure Q_OSSERVBeforeDelete(DataSet: TDataSet);
    procedure Q_OSSERVBeforeEdit(DataSet: TDataSet);
    procedure Q_OSSERVBeforePost(DataSet: TDataSet);
    procedure Q_OSSERVNewRecord(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure GerarExcelDataset;
    procedure Button2Click(Sender: TObject);
    procedure dsqrOEAuxDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }                  
  end;

var
  FOS: TFOS;
  BOOPRIMEIRO : BOOLEAN ;
  STRPESQUISA : string ;
  CNPJOS: STRING;
  TIPOPRODUTO: STRING;
  NOTASCROS : string ;
  VENCI : tdatetime ;
  VENCF : tdatetime ;

implementation
uses USenha,Umenu, UAbTabelas, UPEsqOS, UOrdemCE,
UNF,URomaneio, URomaneioITENS,URelROMENT, URelRomEntCross, UConsOCE, URelValores, UConsultaNF,
  UFConsultaOS, UImportacao, UConsultaProduto, UfrmEtiquetaCrossDocking,
  ufrmPrepIndustrializacao, ufrmNFS_ConhecimentoBusca;
{$R *.DFM}

procedure TFOS.SpeedButton3Click(Sender: TObject);
begin

     PESQUISAOS  := '';
     PESQUISAOS1 := '';
     if not BooPrimeiro then Begin
            If (cdsOSESPEC.state = dsedit ) or
               (cdsOSESPEC.state = dsinsert ) {and
               (Q_OSESPECSER_ID.asstring <> '')}then  begin

                  If (TabbedNotebook2.pageindex = 1) then begin
                       If (wwDBEdit5.text = '') then begin
                           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit5.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBEdit6.text = '') then begin
                           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If  strtofloat(wwDBEdit6.text) <= 0  then begin
                           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo5.text = '') then begin
                           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo5.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBComboBox4.text = '') then begin
                           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBComboBox4.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo9.text = '') then begin
                           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo9.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo10.text = '') then begin
                           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo10.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       cdsAUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
                       Q_AUX.Sql.Add(' where CLIN_ID = ' + cdsOSCLIN_ID.asstring ) ;
                       cdsAUX.open ;

                       If cdsAUX.fieldbyname('XVALOR').asinteger > 0 then begin
                             If (wwDBLookupCombo11.text = '') then begin
                                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                                wwDBLookupCombo11.SetFocus;
                                cdsOSESPEC.edit;
                                Abort;
                             end ;
                       end ;

                  end ;
            end ;
        end ;
        BOOPRIMEIRO := FALSE ;

 close ;
end;

procedure TFOS.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;








procedure TFOS.GerarExcelDataset;
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;
















procedure TFOS.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFOS.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
  
   If wwDBLookupCombo1.text <> '' then
    wwDBLookupCombo1.text := cdsCLINCLIN_RAZA.asstring   ;

end;

procedure TFOS.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo6Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
  If wwDBLookupCombo6.text <> '' then
     wwDBLookupCombo6.text := cdsCTTCTT_NOME.asstring  ;

end;

procedure TFOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFOS.FormPaint(Sender: TObject);
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
                      IF ( PESQUISAOS = '*' )  then begin
                          FAbTabelas.Gauge1.Progress            := 1;
                          cdsOS.close;
                          Q_OS.Sql.Clear;
                          Q_OS.Sql.Add(
                         ' SELECT  '+
                         '         A.*, '+
                         '         B.CTT_NOME, '+
                         '         C.CLIN_CGCCPF AS CNPJ, '+
                         '         C.CLIN_RAZA  '+
                         ' FROM OS A INNER JOIN CONTRATO B  '+
                         ' ON A.CTT_ID = B.CTT_ID INNER JOIN CLIENTENBF C  '+
                         ' ON A.CLIN_ID = C.CLIN_ID  '
                           );
                          Q_OS.Sql.Add(' where  A.OS_ID = ' +  FConsultaNF.Q_CONSULOS_ID.asstring ) ;
                          Q_OS.Sql.Add(' order by A.OS_ID ');
                          cdsOS.open ;
                         // CheckBox1.Checked := True;
                      end  ;

                      IF ( PESQUISAOS1 = '*' )  then begin
                          FAbTabelas.Gauge1.Progress            := 1;
                          cdsOS.close;
                          Q_OS.Sql.Clear;
                          Q_OS.Sql.Add(
                         ' SELECT  '+
                         '         A.*, '+
                         '         B.CTT_NOME, '+
                         '         C.CLIN_CGCCPF AS CNPJ, '+
                         '         C.CLIN_RAZA  '+
                         ' FROM OS A INNER JOIN CONTRATO B  '+
                         ' ON A.CTT_ID = B.CTT_ID INNER JOIN CLIENTENBF C  '+
                         ' ON A.CLIN_ID = C.CLIN_ID  '
                           );
                          Q_OS.Sql.Add(' where  A.OS_ID = ' +  FFConsultaOS.Q_OSOS_ID.asstring ) ;
                          Q_OS.Sql.Add(' order by A.OS_ID ');
                          cdsOS.open ;
                         // CheckBox1.Checked := True;
                      end  ;


                      IF ( PESQUISAOS2 = '*' )  then begin
                          FAbTabelas.Gauge1.Progress            := 1;
                          cdsOS.close;
                          Q_OS.Sql.Clear;
                          Q_OS.Sql.Add(
                         ' SELECT  '+
                         '         A.*, '+
                         '         B.CTT_NOME, '+
                         '         C.CLIN_CGCCPF AS CNPJ, '+
                         '         C.CLIN_RAZA  '+
                         ' FROM OS A INNER JOIN CONTRATO B  '+
                         ' ON A.CTT_ID = B.CTT_ID INNER JOIN CLIENTENBF C  '+
                         ' ON A.CLIN_ID = C.CLIN_ID  '
                           );
                          Q_OS.Sql.Add(' where  A.OS_ID = ' +  FConsultaProduto.Q_CONSULOS_ID.AsString ) ;
                          Q_OS.Sql.Add(' order by A.OS_ID ');
                          cdsOS.open ;
                         // CheckBox1.Checked := True;
                      end  ;



                      IF  (( PESQUISAOS = '' ) and ( PESQUISAOS1 = '' ) and (PESQUISAOS2 = ''))  then begin
                         FAbTabelas.Gauge1.Progress            := 1;
                         FOS.cdsOS.Open;


                        // CheckBox1.Checked := True;

                         cdsOS.last ; {,,}
                      end ;

                     FAbTabelas.Gauge1.Progress            := 2;
                     IF FOS.cdsCLIN.Active = False then
                     FOS.cdsCLIN.Open;
                     FAbTabelas.Gauge1.Progress           := 3;

                     IF FOS.CdsTOS.Active = False then
                     FOS.cdsTOS.Open;
                     FAbTabelas.Gauge1.Progress            := 4;

                     
                     FOS.cdsCTT.Open;
                     FAbTabelas.Gauge1.Progress            := 5;


                     IF FOS.Q_TDOC.Active = False then
                     FOS.Q_TDOC.Open;
                     FAbTabelas.Gauge1.Progress            := 6;


                     IF FOS.cdsTSERV.Active = False then
                     FOS.cdsTSERV.Open;
                     FAbTabelas.Gauge1.Progress            := 7;



                     IF FOS.Q_OSSERV.Active = False then
                     FOS.Q_OSSERV.Open;
                     FAbTabelas.Gauge1.Progress            := 8;



                     IF FOS.cdsCTT2.Active = False then
                     FOS.cdsCTT2.Open;
                     FAbTabelas.Gauge1.Progress            := 9;


                     IF FOS.cdsOSESPEC.Active = False then
                     FOS.cdsOSESPEC.Open;
                     FAbTabelas.Gauge1.Progress            := 10;



                     IF FOS.cdsSERV.Active = False then
                     FOS.cdsSERV.Open;
                     FAbTabelas.Gauge1.Progress            := 11;



                     IF FOS.cdsREG.Active = False then
                     FOS.cdsREG.Open;
                     FAbTabelas.Gauge1.Progress            := 12;


                     IF FOS.cdsTPROD.Active = False then
                     FOS.cdsTPROD.Open;
                     FAbTabelas.Gauge1.Progress            := 13;



                     IF FOS.cdsUCOB.Active = False then
                     FOS.cdsUCOB.Open;
                     FAbTabelas.Gauge1.Progress            := 14;



                     IF FOS.cdsVEIC.Active = False then
                     FOS.cdsVEIC.Open;
                     FAbTabelas.Gauge1.Progress            := 15;



                     IF FOS.cdsCLIF.Active = False then
                     FOS.cdsCLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 16;
                    // FOS.cdsCALC.Open;
                     FAbTabelas.Gauge1.Progress            := 17;



                   //  IF FOS.cdsNF.Active = False then
                  //   FOS.cdsNF.Open;
                     FAbTabelas.Gauge1.Progress            := 18;



                     IF FOS.cdsTDTO.Active = False then
                     FOS.cdsTDTO.Open;
                     FAbTabelas.Gauge1.Progress            := 19;



                     IF FOS.cdsTPROD2.Active = False then
                     FOS.cdsTPROD2.Open;

                     
                     Q_TDOC.FIRST;
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

procedure TFOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FMenu.lbOs_id.Caption := '0';
  cdsOS.close ;
  cdsCLIN.close ;
  cdsTOS.close ;
  cdsCTT.close ;
  Q_TDOC.close ;
  cdsCTT2.close ;
  Q_OSSERV.close  ;
  cdsOSESPEC.close ;
  cdsSERV.close;
  cdsTSERV.close ;
  cdsCLIF.close ;
  cdsREG.close ;
  cdsTPROD.close ;
  cdsVEIC.close ;
  cdsUCOB.close ;
  q_CALC.close ;
  cdsNF.close ;
  cdsTDTO.close ;
  cdsTPROD2.close ;
  action := cafree ;
end;          

procedure TFOS.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
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

   Q_aux.close;
   Q_aux.Sql.Clear;
   Q_aux.Sql.Add(' UPDATE NF SET NFI_MARCADOR  = ' + '''' + '' + '''');
   Q_aux.ExecSql;


end;

procedure TFOS.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    IF (cdsOSOS_CONCLUIDA.asstring = 'N') then begin
        cdsCTT.close ;
        Q_CTT.Sql.Clear ;
        Q_CTT.Sql.Add('SELECT CTT_ID,PAR_ID,CTT_NOME,TOS_ID,CLIN_ID,CTT_TERCEIRO from CONTRATO') ;
        Q_CTT.Sql.Add(' where CLIN_ID = ' + cdsCLINCLIN_ID.asstring  ) ;
        Q_CTT.Sql.Add(' and TOS_ID <> ' + inttostr(1));
        cdsCTT.Open ;
    end ; 

end;

procedure TFOS.wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

    If (cdsCTTTOS_ID.asstring <> '') then begin
        cdsTOS.close     ;
        Q_TOS.Sql.Clear ;
        Q_TOS.Sql.Add('Select TOS_ID,TOS_NOME  from TPOS       ');
        Q_TOS.Sql.Add('where  TOS_ID = ' + cdsCTTTOS_ID.asstring );
        cdsTOS.Open      ;
    end ;

end;

procedure TFOS.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
    if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then begin
            wwDBLookupCombo1.setfocus ;
            /////Q_TOS.close ;
         end ;

         If (TabbedNotebook1.pageindex = 1) and (TabbedNotebook2.pageindex = 0) then begin
             wwDBLookupCombo2.setfocus ;
             Label12.caption := '' ;
         end ;

         If (TabbedNotebook1.pageindex = 1) and (TabbedNotebook2.pageindex = 1) then
             wwdbedit5.setfocus ;     
    end ;

   { if button in [nbCANCEL] then  begin
        If (TabbedNotebook2.pageindex = 1) then begin
            TabbedNotebook2.pageindex := 0;
         
        end ;
    end ;   }


end;

procedure TFOS.Q_OSAfterDelete(DataSet: TDataSet);
var
StrOS : string ;
begin
   {StrOS := Q_OSOS_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If (StrOS <> '') then begin
       Q_OS.close ;
       Q_OS.Open ;
       Q_OS.locate('OS_id',StrOS,[]);
   end ;
   ////MessageDlg(' O.S. juntamente com os seus Serviços/Especificações foram excluídas com sucesso !  ',mtInformation,[mbok],10);
     }
end;

procedure TFOS.Q_OSAfterPost(DataSet: TDataSet);
var
DataAuxiliar : string ;
begin
  { DataAuxiliar := Q_OSOS_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OS])
   except
      On E:EdbEngineError do
      begin

         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_OS.close ;
   Q_OS.Open ;
   //Q_OS.locate('OS_Data',DataAuxiliar,[]) ;

   if DataAuxiliar = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(OS_ID) as Numero from OS ' ) ;
     Q_AUX.open ;
     DataAuxiliar := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_OS.locate('OS_ID',DataAuxiliar,[]) ;    }



end;

procedure TFOS.BitBtn1Click(Sender: TObject);
begin
   If (wwDBLookupCombo1.text = '') or
      (wwDBLookupCombo6.text = '') then begin
       MessageDlg('Para gerar Serviços e Especificações, todos os campos devem estar preenchidos! ',mtWarning,[mbok],0);
       wwDBLookupCombo1.SetFocus;
       Abort;
   end ;

   If (cdsOs.state = dsedit ) or (cdsOs.state = dsinsert )  then cdsOS.post ;

       try
    Begin
       STP_SERVESPEC.ParamByName('@CTT').Value    :=  cdsOSCTT_ID.asinteger ;
       STP_SERVESPEC.ParamByName('@OS').Value    :=  cdsOSOS_ID.asinteger ;
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
       STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'OS' ;
       STP_TPDO_TPOS_OS.ParamByName('@TOS').Value    :=   cdsOSTOS_ID.asinteger;
       STP_TPDO_TPOS_OS.ParamByName('@OS').Value    :=  cdsOSOS_ID.asinteger ;
       STP_TPDO_TPOS_OS.ParamByName('@ADMITE').Value    := cdsCTTCTT_TERCEIRO.asstring ;
       STP_TPDO_TPOS_OS.Execproc;
    End
  except
     begin
       MessageDlg('Geração de Tipos de Documentos, com erro !',mtInformation,[mbOk], 0);
       abort  ;
     end;
  end;


  Q_OSSERV.close  ;
  Q_OSSERV.open   ;

  cdsOSESPEC.close  ;
  cdsOSESPEC.open   ;

  Q_TDOC.close  ;
  Q_TDOC.open   ;

  cdsOS.close  ;
  cdsOS.open   ;
  cdsOS.locate('OS_ID',STP_SERVESPEC.ParamByName('@OS').Value,[]) ;



  cdsAUX.close;
  Q_AUX.Sql.Clear;
  Q_AUX.Sql.Add('SELECT COUNT(*)as QTDE FROM  NF A,OS B ');
  Q_AUX.Sql.Add('where A.OS_ID = B.OS_ID and   ');
  Q_AUX.Sql.Add('A.MANI_ID is null and ') ;
  Q_AUX.Sql.Add('A.TDOC_ID =  ' + inttostr(1)) ;
  Q_AUX.Sql.Add('and B.CLIN_ID = ' +  cdsOSCLIN_ID.asstring) ;
  Q_AUX.Sql.Add('and B.CTT_ID = ' +  cdsOSCTT_ID.asstring) ;
  Q_AUX.Sql.Add('and B.TPCARGA = ' +  '''' + cdsOSTPCARGA.asstring + '''') ;
  ////Q_AUX.Sql.Add('and A.NFI_CLONE = ' +  '''' + 'N' + '''') ;
  cdsAUX.open;

  {IF (Q_AUX.fieldbyname('QTDE').asinteger > 0)  then begin
       If MessageDlg('Existem NFs associadas
        a outras OSs que não possuem Manifesto de Carga, gostaria de transferir para esta OS ?',MtConfirmation,[MbYes,
          MbNo],0)=MrYes Then  begin

          Try  begin
            FSENHA.Dtb_BaseDados.StartTransaction;

            Q_AUX.close ;
            Q_AUX.Sql.Clear ;
            Q_AUX.Sql.Add('select FlagTela3 from PARAMETRO ' );
            Q_AUX.Open ;

            if Q_AUX.fieldbyname('FlagTela3').asstring = 'S' then begin
              MessageDlg('Esta rotina não pode ser utilizada em rede ! Verifique se existe algum usuário utilizando esta rotina !',mtWarning,[mbok],0);
              abort ;
            end else begin
               Q_AUX.close ;
               Q_AUX.Sql.Clear ;
               Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA3 = "S" ');
               Q_AUX.ExecSql ;
               FSENHA.Dtb_BaseDados.commit ;
            end ;
            end
            except
             begin
                 FSENHA.Dtb_BaseDados.RollBack;
                 abort ;
             End;
           end ;
           PANEL9.LEFT := 0;
           PANEL9.Top := 1   ;
           PANEL9.visible := true ;
           Q_NF2.open ;
       end ;

  end ;  }

   IF (cdsAUX.fieldbyname('QTDE').asinteger > 0)  then begin
            Try  begin
            FSENHA.Dtb_BaseDados.StartTransaction;

            cdsAUX.close ;
            Q_AUX.Sql.Clear ;
            Q_AUX.Sql.Add('select FlagTela3 from PARAMETRO ' );
            cdsAUX.Open ;

            if cdsAUX.fieldbyname('FlagTela3').asstring = 'S' then begin
              MessageDlg('Esta rotina não pode ser utilizada em rede ! Verifique se existe algum usuário utilizando esta rotina !',mtWarning,[mbok],0);
              abort ;
            end else begin
               Q_AUX.close ;
               Q_AUX.Sql.Clear ;
               Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA3 = "S" ');
               Q_AUX.ExecSql ;
               FSENHA.Dtb_BaseDados.commit ;
            end ;
            end
            except
             begin
                 FSENHA.Dtb_BaseDados.RollBack;
                 abort ;
             End;
           end ;


           if MessageBox(Self.Handle, 'Importar as notas fiscais de outras OS ',
           'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
           begin
               Q_aux.close;
               Q_aux.Sql.Clear;
               Q_aux.Sql.Add(' UPDATE NF SET OS_ID  = ' + cdsOSOS_ID.asstring );
               Q_aux.Sql.Add(' where (MANI_ID is null or  MANI_ID = ' + '''' + '' + '''' + ')');
               Q_aux.Sql.Add(' and (TDOC_ID = 1 or TDOC_ID = 3)') ;
               Q_AUX.Sql.Add(' and NFI_EMIT_CLI = ' + cdsOSCLIN_ID.asstring) ;
               Q_aux.Sql.Add(' and OS_ID in(sELECT A.OS_ID FROM  NF A,OS B ' );
               Q_AUX.Sql.Add(' where A.OS_ID = B.OS_ID    ');
              //// Q_AUX.Sql.Add(' and A.MANI_ID is null  ') ;
               Q_AUX.Sql.Add(' and A.TDOC_ID =  ' + inttostr(1)) ;
              //// Q_AUX.Sql.Add(' and B.NFI_EMIT_CLI = ' + Q_OSCLIN_ID.asstring) ;
               Q_AUX.Sql.Add(' and B.CTT_ID = ' +  cdsOSCTT_ID.asstring) ;
              ///// Q_AUX.Sql.Add('and A.NFI_CLONE = ' +  '''' + 'N' + '''') ;
               Q_AUX.Sql.Add(' and B.TPCARGA = ' + '''' + cdsOSTPCARGA.asstring + '''' + ')') ;
               Q_aux.ExecSql;


               Q_aux4.close;
               Q_aux4.Sql.Clear;
               Q_aux4.Sql.Add(' UPDATE NF_TPRODUTO SET OS_ID  = ' + cdsOSOS_ID.asstring );
               Q_aux4.Sql.Add(' where  NFI_CODI in(SELECT NFI_CODI FROM NF WHERE') ;
               Q_aux4.Sql.Add(' OS_ID = ' + cdsOSOS_ID.asstring + ')');
               Q_aux4.ExecSql;
           end;





          Q_aux.close;
          Q_aux.Sql.Clear;
          Q_aux.Sql.Add(' UPDATE PARAMETRO SET FLAGTELA3 = '  + '''' + '' + '''' );
          Q_aux.ExecSql;
   end ;





  IF (cdsOSOS_GEROU.asstring = 'S') then
       BitBtn1.enabled := false
  else
       BitBtn1.enabled := TRUE ;


end;

procedure TFOS.DS_OSDataChange(Sender: TObject; Field: TField);
begin

IF CheckBox1.Checked then begin
    If (cdsOs.state = dsedit ) or (cdsOs.state = dsbrowse ) then begin

        IF (cdsOSCLIN_ID.asstring <> '' ) then begin
            cdsCTT.close ;
            Q_CTT.Close;
            Q_CTT.Sql.Clear ;
            Q_CTT.Sql.Add('SELECT CTT_ID,CTT_NOME,TOS_ID,CLIN_ID,PAR_ID,CTT_TERCEIRO from CONTRATO') ;
            Q_CTT.Sql.Add(' where CLIN_ID = ' + cdsOSCLIN_ID.asstring  ) ;
            ///Q_CTT.Sql.Add(' and tos_ID <> ' + inttostr(1));
            cdsCTT.Open ;

            IF (cdsOSOS_GEROU.asstring = 'S') then
               BitBtn1.enabled := false
            else
               BitBtn1.enabled := TRUE ;
        end ;

    {end else begin
        If (Q_Os.state = dsinsert ) then begin
             IF (Q_OSCLIN_ID.asstring <> '' ) then begin
                 Q_CTT.close ;
                 Q_CTT.Sql.Clear ;
                 Q_CTT.Sql.Add('SELECT CTT_ID,PAR_ID,CTT_NOME,TOS_ID,CLIN_ID,CTT_TERCEIRO from CONTRATO') ;
                 Q_CTT.Sql.Add(' where CLIN_ID = ' + Q_OSCLIN_ID.asstring  ) ;
                 Q_CTT.Sql.Add(' and tos_ID <> ' + inttostr(1));
                 Q_CTT.Open ;
             end ;
        end ;  }
    end ;



    IF  (cdsOSTOS_ID.asstring <> '' ) then begin
        cdsTOS.close ;
        Q_TOS.Sql.Clear ;
        Q_TOS.Sql.Add(' Select TOS_ID,TOS_NOME  from TPOS ') ;
        Q_TOS.Sql.Add(' where TOS_ID = ' + cdsOSTOS_ID.asstring  ) ;
        cdsTOS.Open ;
    end else cdsTOS.close ;


    IF cdsTOSTOS_ID.asstring = '5' then
       SpeedButton1.enabled := true
      else begin
        If (TabbedNotebook1.pageindex <> 2) then
            SpeedButton1.enabled := false ;
      end ;

    IF (cdsOSOS_CONCLUIDA.asstring = 'S') then begin
         Label8.caption := 'Ordem de Serviço concluída';
         Label8.color := clgreen ;
         BitBtn2.enabled := false;
         BitBtn3.enabled := false;
         IF TabbedNotebook1.pageindex = 1 then
            DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast]
           else
            DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert];
         DBNavigator1.width := 192 ;
    end else begin
         Label8.caption := 'Ordem de Serviço não concluída';
         Label8.color := clred ;
         BitBtn2.enabled := true;
         BitBtn3.enabled := true;
         DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel];
         DBNavigator1.width := 192 ;
    end ;

    cdsTDTO.Close;
    Q_TDTO.Params[0].AsInteger := cdsOSTOS_ID.Value;
    cdsTDTO.Open;

    Q_NF2.Params[0].Value := cdsOSCLIN_ID.Value;
    Q_NF2.Params[1].Value := cdsOSCTT_ID.Value;

    




   { cdsOSSERV.CLOSE;
    
    cdsOSSERV.Open;


    cdsTdoc.CLOSE;
    
    cdsTdoc.Open;


    cdsNFREL.CLOSE;
    
    cdsNFREL.Open;

    cdsNF2.CLOSE;
    
    cdsNF2.Open;}

end;


end;

procedure TFOS.TabbedNotebook1Click(Sender: TObject);
begin
     DBNavigator1.enabled := true ;

  If (TabbedNotebook1.pageindex = 0) then begin
      DBNavigator1.datasource := DS_OS;
      IF (cdsOSOS_CONCLUIDA.asstring = 'N') then begin
         DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel];
         DBNavigator1.width := 192 ;
      end else begin
         DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert];
          DBNavigator1.width := 192 ;
      end ;
  end ;

  If (TabbedNotebook1.pageindex = 1) then begin
     IF (cdsOSOS_CONCLUIDA.asstring = 'S') then begin
        DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast] ;
        DBNavigator1.width := 192 ;
     end else begin
        DBNavigator1.VisibleButtons  := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbdelete,nbpost,nbcancel];
        DBNavigator1.width := 192 ;
     end ;

     DBNavigator1.datasource := DS_OSSERV;
     TabbedNotebook2.pageindex := 0 ;
     Q_OSSERV.edit;
     Q_OSSERV.cancel;
  end ;


  If wwDBLookupCombo2.text = '' then
     LaBel12.caption := '' ;





   If (TabbedNotebook1.pageindex = 2) then  begin
     If q_CALCCALC_ID.asstring <> '' then begin

         //abre o calculos
            ///busca as OEs da OS
        qrOEConsulta.close;
        qrOEConsulta.Parameters[0].Value := cdsOSOS_ID.AsInteger;
        qrOEConsulta.Open;


        qrOEAux.Close;
        qrOEAux.Parameters[0].Value := cdsOSOS_ID.AsInteger;
        qrOEAux.Open;


        Q_CALC.close;
        //Q_CALC.Params[0].AsInteger := cdsOSOS_ID.AsInteger;
        Q_CALC.open;


         cdsAUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add( ' select SUM( round(CALC_TOTAL,2)) as TOT from OS_CALCULO ' ) ;
         Q_AUX.Sql.Add( ' where OS_ID  = ' + cdsOSOS_ID.asstring);
         cdsAUX.open  ;
         Label36.caption := formatfloat('###,###,##0.00',cdsAUX.fieldbyname('TOT').asfloat) ;
      end else  Label36.caption :=   '0';


      SpeedButton1.enabled := true ;
      SpeedButton1.hint := 'Visualizar Rel. de Valores por Ordem de Serviço' ;


  end else begin
       IF cdsTOSTOS_ID.asstring = '5' then
         SpeedButton1.enabled := true
        else
         SpeedButton1.enabled := false ;



      SpeedButton1.hint := 'Visualizar Romaneio de Entr. Cross Docking' ;  
  end ;


end;

procedure TFOS.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    cdsTSERV.locate('TSER_ID',cdsSERVTSER_ID.asstring,[]);
    Label12.caption :=  cdsTSERVTSER_NOMe.asstring ;
end;

procedure TFOS.DS_OSSERVDataChange(Sender: TObject; Field: TField);
begin
    If (cdsSERVTSER_ID.asstring <> '') then begin
      cdsTSERV.locate('TSER_ID',cdsSERVTSER_ID.asstring,[]);
      Label12.caption :=  cdsTSERVTSER_NOMe.asstring ;
    end ;

    If (Q_OSSERVOS_SERVICO_COBRA.asstring = 'S') or
       (Q_OSSERVOS_SERVICO_COBRA.asstring = '' ) then
      Panel7.visible := false
    else
      Panel7.visible := true ;

   cdsOSESPEC.CLOSE;
   Q_OSESPEC.Params[0].Value := Q_OSSERVOS_ID.Value;
   Q_OSESPEC.Params[1].Value := Q_OSSERVSER_ID.Value;
   cdsOSESPEC.Open;
    

end;

procedure TFOS.wwDBLookupCombo2Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFOS.wwDBLookupCombo4Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo4Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFOS.DBCB_CLI_PESSEnter(Sender: TObject);
begin
   (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFOS.DBCB_CLI_PESSExit(Sender: TObject);
begin

  (Sender as TwwDBcombobox).Color := Clwindow ;

   If (Q_OSSERVOS_SERVICO_COBRA.asstring = 'S') or
      (Q_OSSERVOS_SERVICO_COBRA.asstring = '' ) then
      Panel7.visible := false
     else
      Panel7.visible := true ;
end;

procedure TFOS.TabbedNotebook2Click(Sender: TObject);
begin
   If (TabbedNotebook2.pageindex = 0) then  begin
     DBNavigator1.datasource := DS_OSSERV;
     DBNavigator1.enabled := true ;

     If (cdsOSESPEC.state = dsedit ) or (cdsOSESPEC.state = dsinsert ) then
         cdsOSESPEC.post ;
  end ;

  If (TabbedNotebook2.pageindex = 1) then begin
     DBNavigator1.datasource := DS_OSESPEC;

     If (Q_OSSERVSER_ID.asstring = '') then begin
         DBNavigator1.enabled := false ;
         cdsOSESPEC.edit;
         cdsOSESPEC.CANCEL;
     end else begin
        DBNavigator1.enabled := true  ;
        cdsOSESPEC.edit;
        cdsOSESPEC.CANCEL;
     end;

     If (Q_OSSERVSER_ID.asstring <> '') and
        (cdsOSESPECOS_ESPEC_ID.asstring <> '')  then
        cdsOSESPEC.edit;

      If (Q_OSSERV.state = dsedit ) or (Q_OSSERV.state = dsinsert ) then
         Q_OSSERV.post ;

  end ;


end;

procedure TFOS.Q_OSSERVAfterPost(DataSet: TDataSet);
var
StrSER_ID : string ;
begin
   StrSER_ID := Q_OSSERVSER_ID.asstring   ;

   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OSSERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_OSSERV.close ;
   Q_OSSERV.Open ;
   Q_OSSERV.locate('SER_ID',StrSER_ID,[]);



  If (Q_OSSERVOS_SERVICO_COBRA.asstring = 'S') and
     (Q_OSSERVSER_ID.asstring <> '')   then  begin

       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  OS_ESPECIFICACOES ') ;
       Q_AUX.Sql.Add('where OS_SERVICO_ID = ' + Q_OSSERVOS_SERVICO_ID.asstring ) ;
       Q_AUX.open ;

       If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('UPDATE OS_ESPECIFICACOES SET ') ;
             Q_AUX.Sql.Add('SER_ID = ' + Q_OSSERVSER_ID.asstring ) ;
             Q_AUX.Sql.Add('Where  OS_SERVICO_ID = ' + Q_OSSERVOS_SERVICO_ID.asstring ) ;
             Q_AUX.ExecSql;

             Q_OSESPEC.close ;
             Q_OSESPEC.open ;

       end else begin
                 TabbedNotebook2.pageindex := 1 ;
                 Q_GERAESPEC.close;
                 Q_GERAESPEC.Sql.Clear;
                 Q_GERAESPEC.Sql.Add('insert into OS_ESPECIFICACOES (OS_ID,OS_SERVICO_ID,SER_ID,');
                 Q_GERAESPEC.Sql.Add(' OS_ESPEC_ORDEM,OS_ESPEC_FATOR,UCOB_ID,OS_ESPEC_TPCARGA,')  ;
                 Q_GERAESPEC.Sql.Add(' REG_ID,VEIC_ID,TSER_ID) ') ;
                 Q_GERAESPEC.Sql.Add('values ( ' );
                 Q_GERAESPEC.Sql.Add( '''' + Q_OSSERVOS_ID.asstring + '''' + ',');
                 Q_GERAESPEC.Sql.Add( '''' + Q_OSSERVOS_SERVICO_ID.asstring + '''' + ',');
                 Q_GERAESPEC.Sql.Add( '''' + Q_OSSERVSER_ID.asstring + '''' + ',');
                 Q_GERAESPEC.Sql.Add( inttostr(10)+ ',');
                 Q_GERAESPEC.Sql.Add( inttostr(0) + ',');
                 Q_GERAESPEC.Sql.Add( inttostr(1) + ',');
                 Q_GERAESPEC.Sql.Add( '''' + 'N'  + '''' + ',');
                 Q_GERAESPEC.Sql.Add( inttostr(1) + ',');
                 Q_GERAESPEC.Sql.Add( inttostr(1) + ',');
                 Q_GERAESPEC.Sql.Add( '''' + Q_OSSERVTSER_ID.asstring + '''' + ')' );
                 Q_GERAESPEC.ExecSql;

                 Q_OSESPEC.close ;
                 Q_OSESPEC.open ;

                 DBNavigator1.datasource := DS_OSESPEC;
                 Q_OSESPEC.edit;
                 wwdbedit5.setfocus;
       end ;



  end ;


   

end;

procedure TFOS.Q_OSSERVAfterDelete(DataSet: TDataSet);
var
StrSER_ID : string ;
begin
   StrSER_ID := Q_OSSERVSER_ID.asstring   ;

   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OSSERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   ////MessageDlg(' Serviço juntamente com suas Especificações foram excluídas com sucesso !  ',mtInformation,[mbok],10);


   IF (STRSER_ID = '') then begin
      Label12.caption := '' ;
      ABORT ;
   end ;

   Q_OSSERV.close ;
   Q_OSSERV.Open ;
   Q_OSSERV.locate('SER_ID',StrSER_ID,[]);




end;

procedure TFOS.wwDBLookupCombo8Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo8Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;

  IF wwDBLookupCombo8.text = '' then cdsOSESPECCLIF_ID.asstring := '' ; 
end;

procedure TFOS.wwDBLookupCombo9Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo9Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFOS.wwDBLookupCombo10Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo10Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFOS.wwDBLookupCombo11Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo11Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFOS.wwDBLookupCombo5Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFOS.wwDBLookupCombo5Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFOS.wwDBEdit5Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit6Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit7Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit8Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit9Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit12Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit13Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit10Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit11Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit14Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit15Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOS.wwDBEdit5Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit6Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit8Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit14Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBEdit15Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOS.wwDBComboBox4Exit(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Clwindow;
end;

procedure TFOS.wwDBComboBox4Enter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Claqua;
end;

procedure TFOS.TabbedNotebook2Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
         if not BooPrimeiro then Begin
            If (cdsOSESPEC.state = dsedit ) or
               (cdsOSESPEC.state = dsinsert ) {and
               (Q_OSESPECSER_ID.asstring <> '')} then  begin

                  If (TabbedNotebook2.pageindex = 1) then begin
                       If (wwDBEdit5.text = '') then begin
                           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit5.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBEdit6.text = '') then begin
                           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;


                        If  strtofloat(wwDBEdit6.text) <= 0  then begin
                           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;


                       If (wwDBLookupCombo5.text = '') then begin
                           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo5.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBComboBox4.text = '') then begin
                           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBComboBox4.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo9.text = '') then begin
                           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo9.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo10.text = '') then begin
                           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo10.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       cdsAUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
                       Q_AUX.Sql.Add(' where CLIN_ID = ' + cdsOSCLIN_ID.asstring ) ;
                       cdsAUX.open ;

                       If cdsAUX.fieldbyname('XVALOR').asinteger > 0 then begin
                             If (wwDBLookupCombo11.text = '') then begin
                                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                                wwDBLookupCombo11.SetFocus;
                                cdsOSESPEC.edit;
                                Abort;
                             end ;
                       end ;

                  end ;
            end ;
        end ;
        BOOPRIMEIRO := FALSE ;
end;

procedure TFOS.TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
        if not BooPrimeiro then Begin
            If (cdsOSESPEC.state = dsedit ) or
               (cdsOSESPEC.state = dsinsert ){ and
               (Q_OSESPECSER_ID.asstring <> '')}  then  begin

                  If (TabbedNotebook2.pageindex = 1) then begin
                       If (wwDBEdit5.text = '') then begin
                           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit5.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBEdit6.text = '') then begin
                           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                        If  strtofloat(wwDBEdit6.text) <= 0  then begin
                           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;


                       If (wwDBLookupCombo5.text = '') then begin
                           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo5.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBComboBox4.text = '') then begin
                           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBComboBox4.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo9.text = '') then begin
                           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo9.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo10.text = '') then begin
                           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo10.SetFocus;
                           cdsOSESPEC.edit;
                           Abort;
                       end ;

                       cdsAUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
                       Q_AUX.Sql.Add(' where CLIN_ID = ' + cdsOSCLIN_ID.asstring ) ;
                       cdsAUX.open ;

                       If cdsAUX.fieldbyname('XVALOR').asinteger > 0 then begin
                             If (wwDBLookupCombo11.text = '') then begin
                                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                                wwDBLookupCombo11.SetFocus;
                                cdsOSESPEC.edit;
                                Abort;
                             end ;
                       end ;


                  end ;
            end ;
        end ;
        BOOPRIMEIRO := FALSE ;
end;

procedure TFOS.SpeedButton4Click(Sender: TObject);
begin
   application.createform(TFPESQOS, FPESQOS);
   FPESQOS.SHOWMODAL ;
   FPESQOS.RELEASE ;
   FPESQOS.CLOSE ;
   if StrPESQUISA <> '' then
     cdsOS.Locate ('OS_ID' , StrPESQUISA , []);
   TabbedNotebook1.pageindex := 0 ;   
end;

procedure TFOS.Q_OSNewRecord(DataSet: TDataSet);
begin
    cdsOSOS_DATA.asdatetime := now ;
    cdsOSOS_CONCLUIDA.asstring := 'N' ;
    ////Q_OSOS_FATURADA.asstring := 'N' ;
    BitBtn1.enabled := TRUE ;
end;

procedure TFOS.wwDBGrid2DblClick(Sender: TObject);
begin
 //N = NOTAFISCAL
 //R = ROMANEIO
 //O = ORDEM COL/ENTR
 //C = COMPROVANTE

  If (Q_TDOCOTD_CATEGORIA.asstring = 'O') then begin
    FMenu.lbOs_id.Caption := cdsOSOS_ID.AsString;
     application.createform(TFConsOCE , FConsOCE);
     FConsOCE.Position := poDesktopCenter;
     FConsOCE.SHOWMODAL ;
     FConsOCE.RELEASE ;
     FConsOCE.CLOSE ;
  end ;

  If (Q_TDOCOTD_CATEGORIA.asstring = 'N') then begin
     application.createform(TFNF , FNF);
     FNF.Position := poDesktopCenter;
     FNF.SHOWMODAL ;
     FNF.RELEASE ;
     FNF.CLOSE ;
  end ;

  If (Q_TDOCOTD_CATEGORIA.asstring = 'R') then begin
     Application.createform(TFRomaneio , FRomaneio);
     FRomaneio.Position := poDesktopCenter;
     FRomaneio.SHOWMODAL ;
     FRomaneio.RELEASE   ;
     FRomaneio.CLOSE     ;

  end ;


  //preparação de industrialização
  if Q_TDOCTDOC_ID.AsInteger = 26 then begin
      frmPrepIndustrializacao := TfrmPrepIndustrializacao.Create(Self);
      frmPrepIndustrializacao.lbCliente.Caption := wwDBLookupCombo1.Text;
      frmPrepIndustrializacao.ShowModal;
      Abort;
  end;

  if Q_TDOCTDOC_ID.AsInteger = 27 then begin
      frmNFS_ConhecimentoBusca := TfrmNFS_ConhecimentoBusca.Create(Self);
      frmNFS_ConhecimentoBusca.edtOS.Text := cdsOSOS_ID.AsString;
      frmNFS_ConhecimentoBusca.Button1.Click;
      frmNFS_ConhecimentoBusca.ShowModal;
  end;




  If (Q_TDOCOTD_CATEGORIA.asstring = 'C') then begin

        IF cdsOSOS_CONCLUIDA.asstring <> 'S' then begin

                Panel12.visible := true ;
                Panel12.left := 296 ;
                Panel12.top  := 176 ;
                Data2.Text := FormatDateTime('dd/MM/YYYY',NOW) ;
                Data1.SETFOCUS ;

        end ; 

  end ;




end;



procedure TFOS.Q_OSBeforeDelete(DataSet: TDataSet);
begin       

 {  Q_SERVdel.close;
   Q_SERVdel.Sql.Clear;
   Q_SERVdel.Sql.Add(' delete from OS_SERVICO') ;
   Q_SERVdel.Sql.Add(' where OS_ID = ' + Q_OSOS_ID.asstring );
   Q_SERVdel.ExecSql;

   Q_ESPECdel.close;
   Q_ESPECdel.Sql.Clear;
   Q_ESPECdel.Sql.Add(' delete from OS_ESPECIFICACOES') ;
   Q_ESPECdel.Sql.Add(' where OS_ID = ' + Q_OSOS_ID.asstring );
   Q_ESPECdel.ExecSql;

   Q_ORDEMdel.close;
   Q_ORDEMdel.Sql.Clear;
   Q_ORDEMdel.Sql.Add(' delete from ORDEM_COLETA_ENTREGA') ;
   Q_ORDEMdel.Sql.Add(' where OS_ID = ' + Q_OSOS_ID.asstring );
   Q_ORDEMdel.ExecSql;

   Q_ORDEMdel.close;
   Q_ORDEMdel.Sql.Clear;
   Q_ORDEMdel.Sql.Add(' delete from TPDOC_TPOS_OS ') ;
   Q_ORDEMdel.Sql.Add(' where OS_ID = ' + Q_OSOS_ID.asstring );
   Q_ORDEMdel.ExecSql; }

   
end;

procedure TFOS.SpeedButton1Click(Sender: TObject);
begin
   If (TabbedNotebook1.pageindex = 2) then  begin
       Application.CreateForm(TFRelVALORES,FRelVALORES);
       FRelVALORES.VALORES.Preview;
       FRelVALORES.Close;
   end else begin
      { Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  OS_RESUMOPRODUTO ') ;
       Q_AUX.Sql.Add(' where OS_ID = ' + Q_OSOS_ID.asstring ) ;
       Q_AUX.open ;


       If Q_AUX.fieldbyname('XVALOR').asinteger = 0 then begin

              try
             Begin
               STP_RESUMO_CROS.ParamByName('@OS_ID').Value   := Q_OSOS_ID.asstring;
               STP_RESUMO_CROS.ParamByName('@CH').Value   :=  FMENU.SqlUsuariosCH.AsString ;
               STP_RESUMO_CROS.Execproc   ;
              End
            except
              begin
               MessageDlg('Geração do Romaneio de Entrada de Cross Docking , com erro !',mtInformation,[mbOk], 0);
               abort  ;
              end;
            end;

       end ;}
          
       SQL:= ' UPDATE NF  SET NFI_MARCADOR_CROS = ' + '''' + '' + '''' +
             ' WHERE OS_ID = ' +  cdsOSOS_ID.asstring ;

       Q_AUX6.Close;
       Q_AUX6.SQL.CLEAR;
       Q_AUX6.SQL.ADD(SQL);
       Q_AUX6.ExecSQL;

       cdsNFREL.close;
       cdsNFREL.Open;

       PANEL11.visible := true ;
       PANEL11.top := 3 ;
       PANEL11.left := 0 ;

   end ;



end;

procedure TFOS.BitBtn2Click(Sender: TObject);
var
   OS2 : string ;
begin
   OS2 := cdsOSOS_ID.asstring ;
   IF (cdsOSTOS_ID.asinteger = 1)  then begin
       cdsAux.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add(' select count(*) as qtde   from ORDEM_COLETA_ENTREGA A,MANIFESTO B,OS C ');
       Q_AUX.Sql.Add(' WHERE A.OS_ID = C.OS_ID ') ;
       Q_AUX.Sql.Add(' and B.MANI_ID = A.MANI_ID ');
       Q_AUX.Sql.Add(' and B.CONFIRMA_MANI = ' + '''' + 'S' + '''' ) ;
       Q_AUX.Sql.Add(' and C.OS_ID = ' + cdsOSOS_ID.asstring  ) ;
       cdsAux.open ;

       IF (cdsAux.fieldbyname('qtde').asinteger = 0) then begin
           MessageDlg('Ordem de Serviço, não poderá ser concluída! Manifesto de Coleta não está baixado! ',mtInformation,[mbOk], 0);
           BitBtn2.enabled := true;
           BitBtn3.enabled := true;
           abort  ;
       end else begin
           CDSAUX.close ;
           Q_PAR.Open;
           Q_AUX.Sql.Clear ;
           Q_AUX.Sql.Add(' select count(*) as qtde   from OS_CALCULO ') ;
           Q_AUX.Sql.Add(' WHERE OS_ID = ' + cdsOSOS_ID.asstring  ) ;
           CDSAUX.open ;

           IF (CDSAUX.fieldbyname('qtde').asinteger = 0) then begin
              MessageDlg('Ordem de Serviço, não poderá ser concluída! Não foi gerado nenhum Valor! ',mtInformation,[mbOk], 0);
              BitBtn2.enabled := true;
              BitBtn3.enabled := true;
              abort  ;
           END ELSE BEGIN
               if MessageDlg('Confirma conclusão da Ordem de Serviço ?  '
                             ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

                       Q_AUX.close;   {656565}
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('UPDATE OS set OS_CONCLUIDA = ' + '''' + 'S' + '''');
                       Q_AUX.Sql.Add('where OS_ID = ' + cdsOSOS_ID.asstring );
                       Q_AUX.ExecSql;
                       Label8.caption := 'Ordem de Serviço concluída'  ;
                       Label8.color := clgreen ;
                       BitBtn2.enabled := false;
                       BitBtn3.enabled := false;

                       cdsOS.close ;
                       cdsOS.open ;
                       cdsOS.locate('OS_ID',OS2,[])  ;
               end else begin
                   BitBtn2.enabled := true;
                   BitBtn3.enabled := true;
                   abort  ;
               end ;
           END ;
       end ;

   end ;


   IF (cdsOSTOS_ID.asinteger = 2)  then begin
       cdsAUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add(' Select count(*) as  qtde  from ROMANEIO ') ;
       Q_AUX.Sql.Add(' where OS_ID = ' + Q_TDOCOS_ID.asstring ) ;
       Q_AUX.Sql.Add(' and ROM_CONFIRMA = ' + '''' + 'S' + '''') ;
       cdsAUX.open ;


       IF (cdsAUX.fieldbyname('qtde').asinteger = 0) then begin
           MessageDlg('Ordem de Serviço, não poderá ser concluída! Romaneio de Entrada não foi gerado! ',mtInformation,[mbOk], 0);
           BitBtn2.enabled := true;
            BitBtn3.enabled := true;
           abort  ;
       end else begin
           if MessageDlg('Confirma conclusão da Ordem de Serviço ?  '
                         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin


                   Q_AUX.close;   {656565}
                   Q_AUX.Sql.Clear;
                   Q_AUX.Sql.Add('UPDATE OS set OS_CONCLUIDA = ' + '''' + 'S' + '''');
                   Q_AUX.Sql.Add('where OS_ID = ' + cdsOSOS_ID.asstring );
                   Q_AUX.ExecSql;
                   Label8.caption := 'Ordem de Serviço concluída'  ;
                   Label8.color := clgreen ;
                   BitBtn2.enabled := false;
                   BitBtn3.enabled := false;
                   cdsOS.close ;
                   cdsOS.open ;
                   cdsOS.locate('OS_ID',OS2,[])  ;
           end else begin
               BitBtn2.enabled := true;
                BitBtn3.enabled := true;
               abort  ;
           end ;
       end ;
   end ;


   IF (cdsOSTOS_ID.asinteger = 5) or
      (cdsOSTOS_ID.asinteger = 6)  then begin

       cdsAUX2.close ;
       Q_AUX2.Sql.Clear ;
       Q_AUX2.Sql.Add(' select A.* from NF A,OS C ');
       Q_AUX2.Sql.Add(' WHERE   A.OS_ID = C.OS_ID   ');
       Q_AUX2.Sql.Add(' and C.OS_ID         = ' + cdsOSOS_ID.asstring );
       Q_AUX2.Sql.Add(' and (A.NFI_STATUS = ' + ''''  + 'E' + '''');
       Q_AUX2.Sql.Add(' or   A.NFI_STATUS is null)'  );
       cdsAUX2.open ;

       cdsAUX2.first ;
       while not cdsAUX2.eof do begin
                IF (cdsAUX2.fieldbyname('NFI_TRANS').asstring = 'S') then begin


                       cdsAUX.close ;
                       Q_AUX.Sql.Clear ;
                       Q_AUX.Sql.Add(' select count(*) as QTDE from NF A,MANIFESTO B,OS C ');
                       Q_AUX.Sql.Add(' WHERE   A.OS_ID = C.OS_ID   ');
                       Q_AUX.Sql.Add(' and   B.MANI_ID = A.MANI_ID ');
                       Q_AUX.Sql.Add(' and B.CONFIRMA_MANI = ' + '''' + 'S' + ''''  );
                       Q_AUX.Sql.Add(' and C.OS_ID         = ' + cdsOSOS_ID.asstring );
                       Q_AUX.Sql.Add(' and A.NFI_CODI      = ' + cdsAUX2.fieldbyname('NFI_CODI').asstring );
                       cdsAUX.open ;

                       IF (cdsAUX.fieldbyname('qtde').asinteger = 0) then begin
                           MessageDlg('Ordem de Serviço, não poderá ser concluída! Manifesto de Entrega não está baixado! ',mtInformation,[mbOk], 0);
                           BitBtn2.enabled := true;
                           BitBtn3.enabled := true;
                           abort  ;
                       end ;
                end;
           cdsAUX2.next ;
       end ;


       cdsAUX.close ;
       Q_PAR.Open;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add(' select count(*) as qtde   from OS_CALCULO ') ;
       Q_AUX.Sql.Add('WHERE OS_ID = ' + cdsOSOS_ID.asstring) ;
       cdsAUX.open ;

       IF (cdsAUX.fieldbyname('qtde').asinteger = 0) then begin
          MessageDlg('Ordem de Serviço, não poderá ser concluída! Não foi gerado nenhum Valor! ',mtInformation,[mbOk], 0);
          BitBtn2.enabled := true;
          BitBtn3.enabled := true;
          abort  ;
       END ;

       if MessageDlg('Confirma conclusão da Ordem de Serviço ?  '
                     ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

               Q_AUX.close;
               Q_AUX.Sql.Clear;
               Q_AUX.Sql.Add('UPDATE OS set OS_CONCLUIDA = ' + '''' + 'S' + '''');
               Q_AUX.Sql.Add('where OS_ID = ' + cdsOSOS_ID.asstring );
               Q_AUX.ExecSql;
               Label8.caption := 'Ordem de Serviço concluída'  ;
               Label8.color := clgreen ;
               BitBtn2.enabled := false;
               BitBtn3.enabled := false;
               cdsOS.close ;
               cdsOS.open ;
               cdsOS.locate('OS_ID',OS2,[])  ;
       end else begin
           BitBtn2.enabled := true;
           BitBtn3.enabled := true;
           abort  ;
       end ;
   end ;


end;

procedure TFOS.Q_OSBeforeEdit(DataSet: TDataSet);
begin
//  IF (cdsOSOS_CONCLUIDA.asstring = 'S') then abort ;
end;

procedure TFOS.BitBtn3Click(Sender: TObject);
var achei : Boolean;
begin
      if MessageDlg('Confirma geração de Valores ?'
            ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin
            try
              Begin
                 STP_CALC.ParamByName('@OS').Value    :=  cdsOSOS_ID.asinteger ;
                 STP_CALC.ParamByName('@CTT_ID').Value    :=  cdsOSCTT_ID.asinteger ;
                 STP_CALC.Execproc;
              End
            except
                 on e : exception do
                 begin
                     //MessageDlg('Geração de Valores, com erro !',mtInformation,[mbOk], 0);
                     MessageBox(Self.Handle,PChar('Geração de Valores, com erro !' + #13 + e.Message),'', MB_OK + MB_ICONERROR);
                     abort;
                 end;
            end;

            q_CALC.close ;
            q_CALC.open ;






            If q_CALCCALC_ID.asstring <> '' then
            begin
               cdsAUX.close ;
               Q_AUX.Sql.Clear ;
               Q_AUX.Sql.Add( ' select SUM( round(CALC_TOTAL,2)) as TOT from OS_CALCULO ' ) ;
               Q_AUX.Sql.Add( ' where OS_ID  = ' + cdsOSOS_ID.asstring);
               cdsAUX.open  ;
               Label36.caption := formatfloat('###,###,##0.00',cdsAUX.fieldbyname('TOT').asfloat) ;
            end else  Label36.caption :=   '0';  {oooo}


            //EXECUTA O CALCULO DOS VALORES DOS CONHECIMENTOS - MIGUEL


            qrRecalculoCTRC.Params[0].AsInteger := cdsOSOS_ID.Value;
            qrRecalculoCTRC.ExecSQL;


            SpeedButton1.enabled := true ;
            SpeedButton1.hint := 'Visualizar Rel. de Valores por Ordem de Serviço' ;
            TabbedNotebook1.pageindex := 2 ;




            //EFETUA O RATEIO DA COLETA
            
            achei := False;



            cdsAux.close;
            Q_AUX.SQL.Clear;
            Q_AUX.SQL.Add('select UCOB_ID FROM OS_ESPECIFICACOES WHERE OS_ID = ' + cdsOSOS_ID.AsString);
            cdsAux.Open;

            cdsAux.First;
            while not cdsAux.Eof do begin
                if cdsAux.FieldByName('UCOB_ID').AsInteger = 7 then
                        achei := True;
                cdsAux.Next;
            end;


            if achei = True then begin

               //ShowMessage('rateia');

                  cdsAux.Close;
                  Q_AUX.sql.Clear;
                  Q_AUX.sql.Add('select b.MANI_ENT_COL from ordem_coleta_entrega a inner join manifesto b on a.mani_id = b.mani_id');
                  Q_AUX.SQL.Add('where a.os_id = ' + cdsOSOS_ID.AsString);
                  cdsAux.Open;

                  //verifica se é um manifesto de coleta
                  if cdsAux.FieldByName('MANI_ENT_COL').AsString = 'C' then begin
                      Q_AUX.sql.Clear;
                      Q_AUX.SQL.Add('Exec RATEIA_COLETA ' + cdsOSOS_ID.AsString);
                      Q_AUX.ExecSQL;
                  end;
            end;
      end ;



      qrOEConsulta.close;
      qrOEConsulta.Parameters[0].Value := cdsOSOS_ID.AsInteger;
      qrOEConsulta.Open;

      qrOEAux.close;
      qrOEAux.Parameters[0].Value := cdsOSOS_ID.AsInteger;
      qrOEAux.Open;

end;

procedure TFOS.SpeedButton2Click(Sender: TObject);
begin
  PANEL9.visible := false ;
  cdsNF2.close ;


  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' UPDATE PARAMETRO SET FLAGTELA3 = '  + '''' + '' + '''' );
  Q_aux.ExecSql;


  
  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' UPDATE NF SET NFI_MARCADOR  = ' + '''' + '' + '''');
  Q_aux.ExecSql;

end;

procedure TFOS.BitBtn4Click(Sender: TObject);
begin
   If (cdsNF2.state = dsedit ) or (cdsNF2.state = dsinsert )  then cdsNF2.post ;

   Q_aux.close;
   Q_aux.Sql.Clear;
   Q_aux.Sql.Add(' UPDATE NF SET OS_ID  = ' + cdsOSOS_ID.asstring );
   Q_aux.Sql.Add(' where NFI_MARCADOR = ' + '''' + '*' + '''');
   Q_aux.ExecSql;

   PANEL9.visible := false ;
   cdsNF2.close ;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' UPDATE PARAMETRO SET FLAGTELA3 = '  + '''' + '' + '''' );
  Q_aux.ExecSql;
end;

procedure TFOS.BitBtn6Click(Sender: TObject);
begin
    { update NF set NFI_MARCADOR =  '*'
WHERE exists ( SELECT A.OS_ID FROM  NF A,OS B where
A.TDOC_ID = 1
and  A.MANI_ID is  null 
and  B.CLIN_ID = 41
and  B.CTT_ID = 130 and A.OS_ID = NF.???)  }


  Q_AUX.close;
  Q_AUX.Sql.Clear;
  Q_AUX.Sql.Add('update NF set NFI_MARCADOR = ' + ''''+ '*' + '''');
  Q_AUX.Sql.Add('WHERE exists( SELECT OS_ID from OS B ' );
  Q_AUX.Sql.Add('where NF.TDOC_ID = ' + inttostr(1));
  Q_AUX.Sql.Add('and   NF.MANI_ID is  null ') ;
  Q_AUX.Sql.Add('and   B.CLIN_ID = ' + cdsOSCLIN_ID.asstring) ;
  Q_AUX.Sql.Add('and   B.CTT_ID = ' + cdsOSCTT_ID.asstring );
  Q_AUX.Sql.Add('and   B.OS_ID = NF.OS_ID )') ;
  Q_AUX.ExecSql;

  cdsNF2.close;
  cdsNF2.open ;


end;

procedure TFOS.BitBtn5Click(Sender: TObject);
begin
  Q_AUX.close;
  Q_AUX.Sql.Clear;
  Q_AUX.Sql.Add('update NF set NFI_MARCADOR = ' + ''''+ '' + '''');
  Q_AUX.Sql.Add('WHERE exists( SELECT OS_ID from OS B ' );
  Q_AUX.Sql.Add('where NF.TDOC_ID = ' + inttostr(1));
  Q_AUX.Sql.Add('and   NF.MANI_ID is  null ') ;
  Q_AUX.Sql.Add('and   B.CLIN_ID = ' + cdsOSCLIN_ID.asstring) ;
  Q_AUX.Sql.Add('and   B.CTT_ID = ' + cdsOSCTT_ID.asstring );
  Q_AUX.Sql.Add('and   B.OS_ID = NF.OS_ID )') ;
  Q_AUX.ExecSql;

  cdsNF2.close;
  cdsNF2.open ;

end;

procedure TFOS.wwDBComboBox1Exit(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Clwhite ;
end;

procedure TFOS.wwDBComboBox1Enter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFOS.BitBtn7Click(Sender: TObject);
VAR   SQLCLI: STRING;
      SQL: STRING;
begin
    CNPJOS:= '';
    TIPOPRODUTO:= '';

    SQLCLI:= ' SELECT  A.CLIN_ID ' +
             ' FROM    CLIENTENBF A, ' +
             ' OS B   ' +
             ' WHERE   A.CLIN_ID = B.CLIN_ID  ' +
             ' AND     A.CLIN_ID =' + cdsOSCLIN_ID.asstring +
             ' AND     B.OS_ID = ' + cdsOSOS_ID.ASSTRING;


    cdsAUX6.Close;
    Q_AUX6.SQL.CLEAR;
    Q_AUX6.SQL.ADD(SQLCLI);
    cdsAUX6.OPEN;

    CNPJOS:= cdsAUX6.FIELDBYNAME('CLIN_ID').ASSTRING;


    SQL:= ' SELECT TPRO_ID FROM TPPRODUTO_CLINBF WHERE CLIN_ID = ' + cdsOSCLIN_ID.asstring ;

    cdsAUX6.Close;
    Q_AUX6.SQL.CLEAR;
    Q_AUX6.SQL.ADD(SQL);
    cdsAUX6.OPEN;

    TIPOPRODUTO:= cdsAUX6.FIELDBYNAME('TPRO_ID').ASSTRING;

    Application.Createform(tFImportacao, FImportacao);   {ççç}
    FImportacao.ShowModal;
    FImportacao.Release;
end;

procedure TFOS.SpeedButton5Click(Sender: TObject);
begin
  PANEL11.visible := false ;
end;

procedure TFOS.BitBtn8Click(Sender: TObject);
begin
              try
             Begin
               STP_RESUMO_CROS.ParamByName('@OS_ID').Value   := cdsOSOS_ID.asstring;
               STP_RESUMO_CROS.ParamByName('@CH').Value   :=  FMENU.SqlUsuariosCH.AsString ;
               STP_RESUMO_CROS.Execproc   ;
              End
            except
              begin
               MessageDlg('Geração do Romaneio de Entrada de Cross Docking , com erro !',mtInformation,[mbOk], 0);
               abort  ;
              end;
            end;

             NOTASCROS := '' ;

             cdsNFREL.first ;
             while not cdsNFREL.eof do begin

                 IF cdsNFRELNFI_MARCADOR_CROS.asstring = '*' then begin

                    NOTASCROS := NOTASCROS + cdsNFRELNFI_NUMERO.asstring + ' / ';
                 end ;

                 cdsNFREL.next ;
             end ;


             Application.CreateForm(TFRelRomEntCross,FRelRomEntCross);
             FRelRomEntCross.QRMemo1.Lines.Text := NOTASCROS;
             FRelRomEntCross.LBOS.Caption := cdsOSOS_ID.AsString;
             FRelRomEntCross.CROSS.Preview;
             FRelRomEntCross.Close;
             PANEL11.visible := false ;
             cdsNFREL.close;
end;

procedure TFOS.SBT_VISUClick(Sender: TObject);
begin

  VENCI :=  0.0 ;
  VENCF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     VENCI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     VENCF  := strtodate(Data2.text );

                try
                Begin
                   STP_ESTQPERANT.ParamByName('@CLINBF').Value    :=  cdsOSCLIN_ID.asinteger ;
                   STP_ESTQPERANT.ParamByName('@CLIN_TIPOSALDO').Value    :=  cdsCLINCLIN_TIPOSALDO.asstring ;
                   STP_ESTQPERANT.ParamByName('@OS_ID').Value    :=  cdsOSOS_ID.asinteger ;
                   STP_ESTQPERANT.ParamByName('@DATAINI').Value    :=  VENCI ;
                   STP_ESTQPERANT.ParamByName('@DATAFIM').Value    :=  VENCF ;
                   STP_ESTQPERANT.Execproc;
                End
              except
                 begin
                   MessageDlg('Geração do Saldo em Estoque do Período anterior, com erro !',mtInformation,[mbOk], 0);
                   abort  ;
                 end;
              end;
              Panel12.visible := false ;


end;

procedure TFOS.SpeedButton6Click(Sender: TObject);
begin
  Panel12.visible := false ;
end;

procedure TFOS.BitBtn9Click(Sender: TObject);
begin
  cdsNFREL.First;
  while not cdsNFREL.Eof do
  begin
  cdsNFREL.Edit;
  cdsNFRELNFI_MARCADOR_CROS.Value :=  '*';
  cdsNFREL.Post;
  cdsNFREL.Next;
  end;
  cdsNFREL.First;
end;

procedure TFOS.BitBtn10Click(Sender: TObject);
begin
  cdsNFREL.First;
  while not cdsNFREL.Eof do
  begin
  cdsNFREL.Edit;
  cdsNFRELNFI_MARCADOR_CROS.Value :=  '';
  cdsNFREL.Post;
  cdsNFREL.Next;
  end;
  cdsNFREL.First;
end;

procedure TFOS.cdsOSBeforePost(DataSet: TDataSet);
begin
     cdsOSTOS_ID.asstring := cdsCTTTOS_ID.asstring ;

     IF (wwDBLookupCombo1.text = '')  then begin
         MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
         wwDBLookupCombo1.setfocus ;
         abort ;
     end ;

     IF (wwDBLookupCombo6.text = '')  then begin
         MessageDlg('Contrato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
         wwDBLookupCombo6.setfocus ;
         abort ;
     end ;


     IF (wwDBComboBox1.text = '')  then begin
         MessageDlg('Tipo de Carga é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
         wwDBComboBox1.setfocus ;
         abort ;
     end ;

end;

procedure TFOS.cdsOSAfterPost(DataSet: TDataSet);
var
DataAuxiliar : string ;
begin
   DataAuxiliar := cdsOSOS_ID.asstring   ;
   cdsOS.ApplyUpdates(0);
   cdsOS.close ;
   cdsOS.Open ;
   //Q_OS.locate('OS_Data',DataAuxiliar,[]) ;

   if DataAuxiliar = '' then begin
     cdsAUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(OS_ID) as Numero from OS ' ) ;
     cdsAUX.open ;
     DataAuxiliar := cdsAUX.fieldbyname('Numero').asstring ;
   end  ;
     cdsOS.locate('OS_ID',DataAuxiliar,[]) ;
  
end;

procedure TFOS.cdsOSAfterDelete(DataSet: TDataSet);
var
StrOS : string ;
begin
   StrOS := cdsOSOS_ID.asstring   ;

   If (StrOS <> '') then begin
       cdsOS.close ;
       cdsOS.Open ;
       cdsOS.locate('OS_id',StrOS,[]);
   end ;

end;

procedure TFOS.cdsOSNewRecord(DataSet: TDataSet);
begin
    cdsOSOS_DATA.asdatetime := now ;
    cdsOSOS_CONCLUIDA.asstring := 'N' ;
    ////Q_OSOS_FATURADA.asstring := 'N' ;
    BitBtn1.enabled := TRUE ;
end;

procedure TFOS.cdsOSBeforeEdit(DataSet: TDataSet);
begin
IF (cdsOSOS_CONCLUIDA.asstring = 'S') then abort ;
end;

procedure TFOS.cdsOSSERVAfterDelete(DataSet: TDataSet);
var
StrSER_ID : string ;
begin



end;

procedure TFOS.cdsOSSERVAfterPost(DataSet: TDataSet);
var
StrSER_ID : string ;
begin


end;

procedure TFOS.cdsOSESPECAfterDelete(DataSet: TDataSet);
Var
StrORDEM : string ;
StrSER_ID : string ;

begin
   StrORDEM := cdsOSESPECOS_ESPEC_ORDEM.asstring   ;
   StrSER_ID  := cdsOSESPECSER_ID.asstring   ;
   cdsOSESPEC.ApplyUpdates(0);


   IF (StrORDEM = '') or (StrSER_ID = '') then abort ;


   cdsOSESPEC.close ;
   cdsOSESPEC.Open ;
   cdsOSESPEC.locate('OS_ESPEC_ORDEM;SER_ID',vararrayof([StrORDEM,StrSER_ID]),[]);

   try
    Begin
       STP_CALC.ParamByName('@OS').Value    :=  cdsOSOS_ID.asinteger ;
       STP_CALC.ParamByName('@CTT_ID').Value    :=  cdsOSCTT_ID.asinteger ;
       STP_CALC.Execproc;
    End
  except
     begin
       MessageDlg('Geração de Valores, com erro !',mtInformation,[mbOk], 0);
       abort  ;
     end;
  end;

  q_CALC.close ;
  q_CALC.open ;
  TabbedNotebook1.pageindex := 2 ;

end;

procedure TFOS.cdsOSESPECAfterPost(DataSet: TDataSet);
Var
StrORDEM : string ;
StrSER_ID : string ;

begin
   StrORDEM := cdsOSESPECOS_ESPEC_ORDEM.asstring   ;
   StrSER_ID  := cdsOSESPECSER_ID.asstring   ;

   cdsOSESPEC.ApplyUpdates(0);
   
   cdsOSESPEC.close ;
   cdsOSESPEC.Open ;
   cdsOSESPEC.locate('OS_ESPEC_ORDEM;SER_ID',vararrayof([StrORDEM,StrSER_ID]),[]);

end;

procedure TFOS.cdsOSESPECBeforeDelete(DataSet: TDataSet);
begin
   IF cdsOSESPECOS_ESPEC_ORIGEM.asstring = 'C' then begin
      MessageDlg('Especificação não poderá ser excluída, pois sua origem é contratual !',mtWarning,[mbok],0);
      abort ;
   end ;


   
   if MessageDlg('Caso confirme a exclusão, a pasta de Valores sofrerá alterações. Confirma ?'
                     ,mtConfirmation, [mbYes, mbNo], 0) = mrno then  abort;
end;

procedure TFOS.cdsOSESPECBeforeEdit(DataSet: TDataSet);
begin
IF (cdsOSOS_CONCLUIDA.asstring = 'S') then abort ;
end;

procedure TFOS.cdsOSESPECBeforePost(DataSet: TDataSet);
begin
    If (cdsOSESPEC.state = dsedit ) or
       (cdsOSESPEC.state = dsinsert ) {and
       (Q_OSESPECSER_ID.asstring <> '')}then  begin


       If (wwDBEdit5.text = '') then begin
           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBEdit5.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;

       If (wwDBEdit6.text = '') then begin
           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBEdit6.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;

        If  strtofloat(wwDBEdit6.text) <= 0  then begin
           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
           wwDBEdit6.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;


       If (wwDBLookupCombo5.text = '') then begin
           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBLookupCombo5.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;

       If (wwDBComboBox4.text = '') then begin
           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBComboBox4.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;

       If (wwDBLookupCombo9.text = '') then begin
           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBLookupCombo9.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;


       If (wwDBLookupCombo10.text = '') then begin
           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBLookupCombo10.SetFocus;
           cdsOSESPEC.edit;
           Abort;
       end ;


       cdsAUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
       Q_AUX.Sql.Add(' where CLIN_ID = ' + cdsOSCLIN_ID.asstring ) ;
       cdsAUX.open ;

       If cdsAUX.fieldbyname('XVALOR').asinteger > 0 then begin
             If (wwDBLookupCombo11.text = '') then begin
                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                wwDBLookupCombo11.SetFocus;
                cdsOSESPEC.edit;
                Abort;
             end ;
       end ;


     end ;
end;

procedure TFOS.cdsOSESPECNewRecord(DataSet: TDataSet);
begin
     cdsOSESPECOS_ID.asstring     :=  cdsOSOS_ID.asstring ;
     cdsOSESPECOS_SERVICO_ID.asstring := Q_OSSERVOS_SERVICO_ID.asstring ;
     cdsOSESPECSER_ID.asstring    :=  Q_OSSERVSER_ID.asstring ;
     cdsOSESPECTSER_ID.asstring   :=  Q_OSSERVTSER_ID.asstring ;
     cdsOSESPECVEIC_ID.asinteger  :=   1 ;
     cdsOSESPECREG_ID.asinteger   :=   1 ;
end;

procedure TFOS.cdsNFRELNFI_MARCADOR_CROSChange(Sender: TField);
var
   GERA : STRING ;
   SQL : STRING ;
begin
   GERA := cdsNFRELNFI_CODI.asstring ;

    If  cdsNFRELNFI_MARCADOR_CROS.asstring  = '*' then begin

          SQL:= ' UPDATE NF  SET NFI_MARCADOR_CROS = ' + '''' + '*' + '''' +
                ' WHERE NFI_CODI = ' + GERA ;

         Q_AUX6.Close;
         Q_AUX6.SQL.CLEAR;
         Q_AUX6.SQL.ADD(SQL);
         Q_AUX6.ExecSQL;

         //Q_NFREL.ClosE;
        // Q_NFREL.Open;

         cdsNFREL.LOCATE('NFI_CODI', GERA,[]);
         cdsNFREL.edit;

   end else begin
         SQL:= ' UPDATE NF  SET NFI_MARCADOR_CROS = ' + '''' + '' + '''' +
               ' WHERE NFI_CODI = ' + GERA ;

         Q_AUX6.Close;
         Q_AUX6.SQL.CLEAR;
         Q_AUX6.SQL.ADD(SQL);
         Q_AUX6.ExecSQL;

         //Q_NFREL.ClosE;
         //Q_NFREL.Open;

         cdsNFREL.LOCATE('NFI_CODI', GERA,[]);
         cdsNFREL.edit;


   end ;

end;

procedure TFOS.cdsNF2AfterPost(DataSet: TDataSet);
begin
  cdsNF2.ApplyUpdates(0);
end;

procedure TFOS.cdsNFRELAfterPost(DataSet: TDataSet);
begin
  cdsNFREL.ApplyUpdates(0);
end;

procedure TFOS.Q_NFRELAfterPost(DataSet: TDataSet);
begin
  cdsNFREL.ApplyUpdates(0);
end;

procedure TFOS.cdsREGBeforeOpen(DataSet: TDataSet);
begin
  IF cdsREG.Active = True then
        Abort;
end;

procedure TFOS.Button1Click(Sender: TObject);
VAR I : Integer;
begin
    FOR I := 0 TO PRED(ComponentCount) do
    BEGIN
        IF Components[I] IS TwwQuery then
        BEGIN
            if TwwQuery(Components[I]).Active = True then
                ShowMessage(TwwQuery(Components[I]).SQL.Text);
        end;
    end;
end;

procedure TFOS.DS_CLINDataChange(Sender: TObject; Field: TField);
begin
   cdsTPROD.CLOSE;
   Q_TPROD.Params[0].AsInteger := cdsClinCLIN_ID.Value;
   cdsTPROD.Open;
end;

procedure TFOS.Q_OSSERVBeforeDelete(DataSet: TDataSet);
begin
   {Q_ESPECdel.close;
   Q_ESPECdel.Sql.Clear;
   Q_ESPECdel.Sql.Add(' delete from OS_ESPECIFICACOES') ;
   Q_ESPECdel.Sql.Add(' where OS_SERVICO_ID = ' + Q_OSSERVOS_SERVICO_ID.asstring );
   Q_ESPECdel.ExecSql; }


   cdsAUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from OS_ESPECIFICACOES' ) ;
   Q_AUX.Sql.Add('WHERE OS_SERVICO_ID = ' + Q_OSSERVOS_SERVICO_ID.asstring) ;
   cdsAUX.open  ;

   IF (cdsAUX.fieldbyname('XVALOR').asinteger > 0)  then begin
       MessageDlg('Serviço não poderá ser excluído, existe especificação !',mtWarning,[mbok],0);
       abort ;
   end ;
end;

procedure TFOS.Q_OSSERVBeforeEdit(DataSet: TDataSet);
begin
IF (cdsOSOS_CONCLUIDA.asstring = 'S') then abort ;
end;

procedure TFOS.Q_OSSERVBeforePost(DataSet: TDataSet);
begin
  Q_OSSERVTSER_ID.asstring  := cdsSERVTSER_ID.asstring ;
end;

procedure TFOS.Q_OSSERVNewRecord(DataSet: TDataSet);
begin
    Q_OSSERVOS_ID.asstring := cdsOSOS_ID.asstring ;
end;

procedure TFOS.SpeedButton7Click(Sender: TObject);
begin
    frmEtiquetaCrossDocking := TfrmEtiquetaCrossDocking.Create(Self);
    frmEtiquetaCrossDocking.edtOS.Text := cdsOSOS_ID.AsString;
    frmEtiquetaCrossDocking.ShowModal;
end;

procedure TFOS.Button2Click(Sender: TObject);
begin
  qrOEConsulta.Open;
  dsExcel.DataSet := qrOEConsulta;

  GerarExcelDataset;

end;

procedure TFOS.dsqrOEAuxDataChange(Sender: TObject; Field: TField);
begin
    Label43.Caption := 'Total R$: ' + FormatFloat('###,###,##0.00', qrOEAuxTotal.AsFloat);
end;

end.

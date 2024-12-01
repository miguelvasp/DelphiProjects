unit ULivroFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls,
  ComCtrls, Gauges, Db, DBTables, Wwquery, Wwdatsrc, Wwtable, DBGrids,
  DBClient, Provider, wwdblook;

type
    TFLivroFiscal = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label1: TLabel;
    Q_NF: TwwQuery;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFNFI_NUMERO: TStringField;
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
    Q_NFNFI_VDES: TFloatField;
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
    Q_NFNFI_VOL: TFloatField;
    Q_NFNFI_TFRE: TStringField;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_NFCFA_ID: TIntegerField;
    Q_NFOS_ID: TIntegerField;
    Q_NFMUN_ID: TIntegerField;
    Q_NFNFI_MARCADOR: TStringField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFMANI_ID: TIntegerField;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_MOVESTQ: TStringField;
    Q_NFNFI_TRANS: TStringField;
    Q_NFNFI_DTENTREGA_FIM: TDateTimeField;
    Q_NFNFI_ENTREGA: TStringField;
    Q_NFNFI_COBRAR: TStringField;
    Q_NFNFI_CLONE: TStringField;
    Q_NFNFI_QTDEPALLET: TIntegerField;
    Q_NFNFI_QTDEUV: TFloatField;
    Q_NFTPRO_ID: TIntegerField;
    Q_NFNFI_MARCADOR_NFRS: TStringField;
    Q_NFNFI_NFRS_REJEITADA: TStringField;
    Q_NFNFI_RETORNADA: TStringField;
    Q_NFNFI_GEROUNFE: TStringField;
    Q_NFNFI_REDESPACHO: TStringField;
    Q_NFORD_ID: TIntegerField;
    Q_NFTRANS_ID: TIntegerField;
    Q_NFNFI_PRESTSERV: TStringField;
    Q_NFFAT_ID: TIntegerField;
    DS_NF: TwwDataSource;
    Q_NFCFA_CODI: TStringField;
    Q_NFCLIN_CGCCPF: TStringField;
    Q_NFCLIN_INSCRG: TStringField;
    Q_NFNFI_FATURADA: TStringField;
    Q_NFNFI_MARCAREEN: TStringField;
    Q_NFNFI_STATUS: TStringField;
    Q_NFNFI_MARCAIMP: TStringField;
    Q_NFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    Q_NFNFI_LOAD: TStringField;
    Q_NFNFI_SERIE: TStringField;
    Q_NFUF_SIGLA: TStringField;
    Q_AUX2: TwwQuery;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_NFENDE: TStringField;
    Q_NFCLIN_ENDERECO_BAIRRO: TStringField;
    Q_NFUF_SIGLA_1: TStringField;
    Q_NFCLIN_CEP: TStringField;
    Q_NFMUN_ID_1: TIntegerField;
    Q_NFCLIN_RAZA: TStringField;
    rgbLivroFiscal: TRadioGroup;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    Q_NFCLIN_ID: TAutoIncField;
    qrCTR: TwwQuery;
    wwQuery1: TwwQuery;
    qrClienteFinal: TwwQuery;
    pnlProgress: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ProgressBar1: TProgressBar;
    lblExport: TLabel;
    qrCTRORD_NOTAS: TStringField;
    qrCTRNFI_NUMERO: TStringField;
    qrCTRORD_TOTALPREST: TFloatField;
    qrCTRORD_ALIQ: TFloatField;
    qrCTRORD_VLR_ICMS: TFloatField;
    qrCTRuf_sigla_col: TStringField;
    qrCTRCLIF_ID: TIntegerField;
    qrCTRORD_DATA: TDateTimeField;
    qrCTRNFI_SERIE: TStringField;
    qrCTRNFI_DEMI: TDateTimeField;
    qrCTRCFA_ID: TIntegerField;
    qrCTRNFI_EMIT_CLI: TIntegerField;
    qrCTRNFI_TOTA: TFloatField;
    qrCTRNFI_BICM: TFloatField;
    qrCTRNFI_VICM: TFloatField;
    qrCTRNFI_BIPI: TFloatField;
    qrCTRNFI_VIPI: TFloatField;
    qrCTRNFI_DEST_RAZA: TStringField;
    qrCTRNFI_DEST_UF_SIGLA: TStringField;
    qrCTRNFI_CODI: TAutoIncField;
    qrConhecimento_: TwwQuery;
    qrConhecimento_ORD_ID: TAutoIncField;
    qrConhecimento_OS_ID: TIntegerField;
    qrConhecimento_MANI_ID: TIntegerField;
    qrConhecimento_TRANS_ID: TIntegerField;
    qrConhecimento_VEIC_ID: TIntegerField;
    qrConhecimento_VEIC_ID_RECEB: TIntegerField;
    qrConhecimento_REG_ID: TIntegerField;
    qrConhecimento_ORD_PESO_TOTAL: TFloatField;
    qrConhecimento_ORD_QTDE_PALLET: TFloatField;
    qrConhecimento_ORD_VOLUME: TFloatField;
    qrConhecimento_ORD_VALORTOTAL: TFloatField;
    qrConhecimento_ORD_COLETA_ENTREGA: TStringField;
    qrConhecimento_ORD_COL_ENDERECO: TStringField;
    qrConhecimento_ORD_COL_ENDERECO_COMPL: TStringField;
    qrConhecimento_ORD_COL_ENDERECO_BAIRRO: TStringField;
    qrConhecimento_MUN_ID_COL: TIntegerField;
    qrConhecimento_ORD_COL_MUNICIPIO: TStringField;
    qrConhecimento_UF_SIGLA_COL: TStringField;
    qrConhecimento_ORD_COL_CEP: TStringField;
    qrConhecimento_ORD_COL_TEL1: TStringField;
    qrConhecimento_ORD_COL_TEL2: TStringField;
    qrConhecimento_ORD_COL_FAX: TStringField;
    qrConhecimento_ORD_COL_EMAIL: TStringField;
    qrConhecimento_ORD_COL_CONTATO: TStringField;
    qrConhecimento_ORD_ENT_ENDERECO: TStringField;
    qrConhecimento_ORD_ENT_ENDERECO_COMPL: TStringField;
    qrConhecimento_ORD_ENT_ENDERECO_BAIRRO: TStringField;
    qrConhecimento_MUN_ID_ENT: TIntegerField;
    qrConhecimento_ORD_ENT_MUNICIPIO: TStringField;
    qrConhecimento_UF_SIGLA_ENT: TStringField;
    qrConhecimento_ORD_ENT_CEP: TStringField;
    qrConhecimento_ORD_ENT_TEL1: TStringField;
    qrConhecimento_ORD_ENT_TEL2: TStringField;
    qrConhecimento_ORD_ENT_FAX: TStringField;
    qrConhecimento_ORD_ENT_EMAIL: TStringField;
    qrConhecimento_ORD_ENT_CONTATO: TStringField;
    qrConhecimento_CLIF_ID: TIntegerField;
    qrConhecimento_ORD_TPCARGA: TStringField;
    qrConhecimento_ORD_QTDE_UV: TFloatField;
    qrConhecimento_ORD_REDESPACHO: TStringField;
    qrConhecimento_ORD_PLACA: TStringField;
    qrConhecimento_CFA_ID: TIntegerField;
    qrConhecimento_ORD_TOTALPREST: TFloatField;
    qrConhecimento_ORD_VLR_ICMS: TFloatField;
    qrConhecimento_ORD_NOTAS: TStringField;
    qrConhecimento_TRANS_ID_REDES: TIntegerField;
    qrConhecimento_ORD_PAGO: TStringField;
    qrConhecimento_CLIN_ID: TIntegerField;
    qrConhecimento_ORD_CONSIGN: TStringField;
    qrConhecimento_ORD_VLR_FRETE: TFloatField;
    qrConhecimento_ORD_VLR_SECCAT: TFloatField;
    qrConhecimento_ORD_VLR_DESPACHO: TFloatField;
    qrConhecimento_ORD_VLR_PEDAGIO: TFloatField;
    qrConhecimento_ORD_VLR_OUTROS: TFloatField;
    qrConhecimento_ORD_CONH: TStringField;
    qrConhecimento_ORD_ALIQ: TFloatField;
    qrConhecimento_MARCADOR: TStringField;
    qrConhecimento_ORD_MINUTA: TStringField;
    qrConhecimento_ORD_STATUS: TStringField;
    qrConhecimento_ORD_DATA: TDateTimeField;
    qrConhecimento_ORD_OBS: TStringField;
    qrConhecimento_ORD_GENERICO: TStringField;
    qrClienteFinalCLIN_RAZA: TStringField;
    qrClienteFinalUF_SIGLA: TStringField;
    qrClienteFinalCLIN_CGCCPF: TStringField;
    qrClienteFinalCLIN_INSCRG: TStringField;
    qrClienteFinalMUN_ID: TIntegerField;
    qrClienteFinalCLIN_ENDERECO: TStringField;
    qrClienteFinalCLIN_ENDERECO_BAIRRO: TStringField;
    qrClienteFinalCLIN_MUNICIPIO: TStringField;
    qrClienteFinalCLIN_CEP: TStringField;
    cboCliente: TwwDBLookupCombo;
    Label7: TLabel;
    qrFiltroCliente: TwwQuery;
    qrFiltroClienteCLIN_ID: TAutoIncField;
    qrFiltroClienteCLIN_RAZA: TStringField;
    qrAuxInsc: TwwQuery;
    qrAuxInscCLIN_INSCRG: TStringField;
    qrConhecimento_CFA_CODI: TStringField;
    qrConhecimento_UF_SIGLA: TStringField;
    qrClienteNBFREmetente: TwwQuery;
    qrClienteNBFREmetenteCLIF_RAZA: TStringField;
    qrClienteNBFREmetenteUF_SIGLA: TStringField;
    qrClienteNBFREmetenteCLIF_CGCCPF: TStringField;
    qrClienteNBFREmetenteCLIF_INSCRG: TStringField;
    qrClienteNBFREmetenteMUN_ID: TIntegerField;
    qrClienteNBFREmetenteCLIF_ENDERECO: TStringField;
    qrClienteNBFREmetenteCLIF_ENDERECO_BAIRRO: TStringField;
    qrClienteNBFREmetenteCLIF_MUNICIPIO: TStringField;
    qrClienteNBFREmetenteCLIF_CEP: TStringField;
    qrDesconto: TwwQuery;
    qrDescontoclin_desconto: TFloatField;
    qrDescontouf_sigla: TStringField;
    qrValores: TwwQuery;
    qrNFCompl: TwwQuery;
    qrNFComplNFI_NUMERO: TStringField;
    qrNFComplNFI_SERIE: TStringField;
    qrNFComplCLIN_CGCCPF: TStringField;
    qrNF_IPI: TwwQuery;
    qrNF_IPINFI_CODI: TAutoIncField;
    qrNF_IPINFI_NUMERO: TStringField;
    qrNF_IPITDOC_ID: TIntegerField;
    qrNF_IPINFI_EMIT_ORIG: TStringField;
    qrNF_IPINFI_EMIT_CLI: TIntegerField;
    qrNF_IPINFI_DEST_ORIG: TStringField;
    qrNF_IPINFI_DEST_CLI: TIntegerField;
    qrNF_IPINFI_DEST_NOME: TStringField;
    qrNF_IPINFI_DEST_RAZA: TStringField;
    qrNF_IPINFI_DEST_ENDERECO: TStringField;
    qrNF_IPINFI_DEST_COMPL: TStringField;
    qrNF_IPINFI_DEST_BAIRRO: TStringField;
    qrNF_IPINFI_DEST_UF_SIGLA: TStringField;
    qrNF_IPINFI_DEST_CEP: TStringField;
    qrNF_IPINFI_DEST_TEL: TStringField;
    qrNF_IPINFI_DEST_FAX: TStringField;
    qrNF_IPINFI_DEST_CGC: TStringField;
    qrNF_IPINFI_DEST_INSCRG: TStringField;
    qrNF_IPINFI_DEST_INSCTRB: TStringField;
    qrNF_IPINFI_DEST_PESS: TStringField;
    qrNF_IPINFI_VDES: TFloatField;
    qrNF_IPINFI_VFRE: TFloatField;
    qrNF_IPINFI_VSEG: TFloatField;
    qrNF_IPINFI_BIPI: TFloatField;
    qrNF_IPINFI_VIPI: TFloatField;
    qrNF_IPINFI_BICM: TFloatField;
    qrNF_IPINFI_VICM: TFloatField;
    qrNF_IPINFI_VMER: TFloatField;
    qrNF_IPINFI_TOTA: TFloatField;
    qrNF_IPINFI_DSAI: TDateTimeField;
    qrNF_IPINFI_HSAI: TDateTimeField;
    qrNF_IPINFI_TRAN: TStringField;
    qrNF_IPINFI_PLAC: TStringField;
    qrNF_IPINFI_UF_SIGLA: TStringField;
    qrNF_IPINFI_MARC: TStringField;
    qrNF_IPINFI_QTDE: TIntegerField;
    qrNF_IPINFI_ESPE: TStringField;
    qrNF_IPINFI_PLIQ: TFloatField;
    qrNF_IPINFI_PBRU: TFloatField;
    qrNF_IPINFI_VOL: TFloatField;
    qrNF_IPINFI_TFRE: TStringField;
    qrNF_IPINFI_DEMI: TDateTimeField;
    qrNF_IPICFA_ID: TIntegerField;
    qrNF_IPIOS_ID: TIntegerField;
    qrNF_IPIMUN_ID: TIntegerField;
    qrNF_IPINFI_MARCADOR: TStringField;
    qrNF_IPINFI_DTENTREGA: TDateTimeField;
    qrNF_IPIMANI_ID: TIntegerField;
    qrNF_IPIMANI_ORDEM: TIntegerField;
    qrNF_IPINFI_MOVESTQ: TStringField;
    qrNF_IPINFI_TRANS: TStringField;
    qrNF_IPINFI_DTENTREGA_FIM: TDateTimeField;
    qrNF_IPINFI_ENTREGA: TStringField;
    qrNF_IPINFI_COBRAR: TStringField;
    qrNF_IPINFI_CLONE: TStringField;
    qrNF_IPINFI_QTDEPALLET: TIntegerField;
    qrNF_IPINFI_QTDEUV: TFloatField;
    qrNF_IPITPRO_ID: TIntegerField;
    qrNF_IPINFI_MARCADOR_NFRS: TStringField;
    qrNF_IPINFI_NFRS_REJEITADA: TStringField;
    qrNF_IPINFI_RETORNADA: TStringField;
    qrNF_IPINFI_GEROUNFE: TStringField;
    qrNF_IPINFI_REDESPACHO: TStringField;
    qrNF_IPIORD_ID: TIntegerField;
    qrNF_IPITRANS_ID: TIntegerField;
    qrNF_IPINFI_PRESTSERV: TStringField;
    qrNF_IPINFI_FATURADA: TStringField;
    qrNF_IPIFAT_ID: TIntegerField;
    qrNF_IPINFI_MARCAREEN: TStringField;
    qrNF_IPINFI_STATUS: TStringField;
    qrNF_IPINFI_MARCAIMP: TStringField;
    qrNF_IPINFI_CODI_ORIGINOUNFRS: TIntegerField;
    qrNF_IPINFI_LOAD: TStringField;
    qrNF_IPINFI_SERIE: TStringField;
    qrNF_IPICFA_CODI: TStringField;
    qrNF_IPIUF_SIGLA: TStringField;
    qrNF_IPICLIN_CGCCPF: TStringField;
    qrNF_IPICLIN_INSCRG: TStringField;
    qrNF_IPIENDE: TStringField;
    qrNF_IPICLIN_ENDERECO_BAIRRO: TStringField;
    qrNF_IPIUF_SIGLA_1: TStringField;
    qrNF_IPICLIN_CEP: TStringField;
    qrNF_IPIMUN_ID_1: TIntegerField;
    qrNF_IPICLIN_RAZA: TStringField;
    qrNF_IPICLIN_ID: TAutoIncField;
    qrIT_DIPI: TwwQuery;
    qrNF_IPICFA_TICM: TStringField;
    qrIT_DIPIINF_CODI: TAutoIncField;
    qrIT_DIPIINF_ITEM: TIntegerField;
    qrIT_DIPINFI_CODI: TIntegerField;
    qrIT_DIPIPRO_ID: TIntegerField;
    qrIT_DIPIPRO_COD: TStringField;
    qrIT_DIPIPRO_DESC: TStringField;
    qrIT_DIPIINF_QTDE: TFloatField;
    qrIT_DIPIINF_PUNI: TFloatField;
    qrIT_DIPIINF_AIPI: TFloatField;
    qrIT_DIPIINF_VIPI: TFloatField;
    qrIT_DIPIINF_TOTA: TFloatField;
    qrIT_DIPIINF_PESOLIQ: TFloatField;
    qrIT_DIPIINF_PESO: TFloatField;
    qrIT_DIPIINF_VOL: TFloatField;
    qrIT_DIPIINF_AICM: TFloatField;
    qrIT_DIPIINF_BICM: TFloatField;
    qrIT_DIPIINF_VICM: TFloatField;
    qrIT_DIPIUVEN_ID: TIntegerField;
    qrIT_DIPIINF_QTDERETORNADA: TFloatField;
    qrIT_DIPIINF_NFE: TIntegerField;
    qrIT_DIPIINF_QTDERETORNADASALDO: TFloatField;
    qrIT_DIPIESTQ_LOTE1: TStringField;
    qrIT_DIPIESTQ_LOTE1_QTDE: TFloatField;
    qrIT_DIPIESTQ_LOTE2: TStringField;
    qrIT_DIPIESTQ_LOTE2_QTDE: TFloatField;
    qrIT_DIPIINF_CST: TStringField;
    qrIT_DIPIPRO_ORIGEM: TStringField;
    qrIT_DIPIUNIDADE: TStringField;
    qrAux: TwwQuery;
    qrNFComplNFI_TOTA: TFloatField;
    qrNFComplNFI_DEST_CLI: TIntegerField;
    qrNFComplNFI_CODI: TAutoIncField;
    qrNFComplTDOC_ID: TIntegerField;
    qrNFComplNFI_EMIT_ORIG: TStringField;
    qrNFComplNFI_EMIT_CLI: TIntegerField;
    qrNFComplNFI_DEST_ORIG: TStringField;
    qrNFComplNFI_DEST_NOME: TStringField;
    qrNFComplNFI_DEST_RAZA: TStringField;
    qrNFComplNFI_DEST_ENDERECO: TStringField;
    qrNFComplNFI_DEST_COMPL: TStringField;
    qrNFComplNFI_DEST_BAIRRO: TStringField;
    qrNFComplNFI_DEST_UF_SIGLA: TStringField;
    qrNFComplNFI_DEST_CEP: TStringField;
    qrNFComplNFI_DEST_TEL: TStringField;
    qrNFComplNFI_DEST_FAX: TStringField;
    qrNFComplNFI_DEST_CGC: TStringField;
    qrNFComplNFI_DEST_INSCRG: TStringField;
    qrNFComplNFI_DEST_INSCTRB: TStringField;
    qrNFComplNFI_DEST_PESS: TStringField;
    qrNFComplNFI_VDES: TFloatField;
    qrNFComplNFI_VFRE: TFloatField;
    qrNFComplNFI_VSEG: TFloatField;
    qrNFComplNFI_BIPI: TFloatField;
    qrNFComplNFI_VIPI: TFloatField;
    qrNFComplNFI_BICM: TFloatField;
    qrNFComplNFI_VICM: TFloatField;
    qrNFComplNFI_VMER: TFloatField;
    qrNFComplNFI_DSAI: TDateTimeField;
    qrNFComplNFI_HSAI: TDateTimeField;
    qrNFComplNFI_TRAN: TStringField;
    qrNFComplNFI_PLAC: TStringField;
    qrNFComplNFI_UF_SIGLA: TStringField;
    qrNFComplNFI_MARC: TStringField;
    qrNFComplNFI_QTDE: TIntegerField;
    qrNFComplNFI_ESPE: TStringField;
    qrNFComplNFI_PLIQ: TFloatField;
    qrNFComplNFI_PBRU: TFloatField;
    qrNFComplNFI_VOL: TFloatField;
    qrNFComplNFI_TFRE: TStringField;
    qrNFComplNFI_DEMI: TDateTimeField;
    qrNFComplCFA_ID: TIntegerField;
    qrNFComplOS_ID: TIntegerField;
    qrNFComplMUN_ID: TIntegerField;
    qrNFComplNFI_MARCADOR: TStringField;
    qrNFComplNFI_DTENTREGA: TDateTimeField;
    qrNFComplMANI_ID: TIntegerField;
    qrNFComplMANI_ORDEM: TIntegerField;
    qrNFComplNFI_MOVESTQ: TStringField;
    qrNFComplNFI_TRANS: TStringField;
    qrNFComplTEXTO_LIVRE: TMemoField;
    qrNFComplNFI_DTENTREGA_FIM: TDateTimeField;
    qrNFComplNFI_ENTREGA: TStringField;
    qrNFComplNFI_COBRAR: TStringField;
    qrNFComplNFI_CLONE: TStringField;
    qrNFComplNFI_QTDEPALLET: TIntegerField;
    qrNFComplNFI_QTDEUV: TFloatField;
    qrNFComplTPRO_ID: TIntegerField;
    qrNFComplNFI_MARCADOR_NFRS: TStringField;
    qrNFComplNFI_NFRS_REJEITADA: TStringField;
    qrNFComplNFI_RETORNADA: TStringField;
    qrNFComplNFI_GEROUNFE: TStringField;
    qrNFComplNFI_REDESPACHO: TStringField;
    qrNFComplORD_ID: TIntegerField;
    qrNFComplTRANS_ID: TIntegerField;
    qrNFComplNFI_PRESTSERV: TStringField;
    qrNFComplNFI_FATURADA: TStringField;
    qrNFComplNFI_DISCRIM: TStringField;
    qrNFComplFAT_ID: TIntegerField;
    qrNFComplNFI_MARCAREEN: TStringField;
    qrNFComplNFI_STATUS: TStringField;
    qrNFComplNFI_MARCAIMP: TStringField;
    qrNFComplNFI_CODI_ORIGINOUNFRS: TIntegerField;
    qrNFComplNFI_LOAD: TStringField;
    qrNFComplNFI_MARCADOR_CROS: TStringField;
    qrNFComplNFI_EXCLUI_REEN: TStringField;
    qrNFComplNFI_MARCADOR_CTRCGEN: TStringField;
    qrNFComplNFI_GEROU_REENTREGA: TStringField;
    qrNFComplBLOQUEIO: TStringField;
    qrNFComplSEL: TStringField;
    qrNFComplCOD_EDI: TStringField;
    qrNFComplNFI_CODI_SIMB: TIntegerField;
    qrCTR_MMAA: TwwQuery;
    qrCLNBF: TwwQuery;
    qrCLFIN: TwwQuery;
    qrCLNBFCLIN_ID: TAutoIncField;
    qrCLNBFCLIN_PESSOA: TStringField;
    qrCLNBFCLIN_RAZA: TStringField;
    qrCLNBFCLIN_NOME: TStringField;
    qrCLNBFCLIN_CGCCPF: TStringField;
    qrCLNBFCLIN_INSCRG: TStringField;
    qrCLNBFCLIN_ENDERECO: TStringField;
    qrCLNBFCLIN_ENDERECO_COMPL: TStringField;
    qrCLNBFCLIN_ENDERECO_BAIRRO: TStringField;
    qrCLNBFCLIN_MUNICIPIO: TStringField;
    qrCLNBFUF_SIGLA: TStringField;
    qrCLNBFCLIN_CEP: TStringField;
    qrCLNBFCLIN_TEL1: TStringField;
    qrCLNBFCLIN_TEL2: TStringField;
    qrCLNBFCLIN_FAX: TStringField;
    qrCLNBFCLIN_EMAIL: TStringField;
    qrCLNBFCON_CODI: TStringField;
    qrCLNBFCLIN_CONTRATO: TStringField;
    qrCLNBFCLIN_UTIL_COD: TStringField;
    qrCLNBFMUN_ID: TIntegerField;
    qrCLNBFCLIN_WEB: TStringField;
    qrCLNBFCLIN_ENDC: TStringField;
    qrCLNBFCLIN_END_COMPLC: TStringField;
    qrCLNBFCLIN_END_BAIRC: TStringField;
    qrCLNBFCLIN_MUNICC: TStringField;
    qrCLNBFUF_SIGLAC: TStringField;
    qrCLNBFCLIN_CEPC: TStringField;
    qrCLNBFCLIN_TELC: TStringField;
    qrCLNBFCLIN_FAXC: TStringField;
    qrCLNBFCLIN_EMAILC: TStringField;
    qrCLNBFMUN_IDC: TIntegerField;
    qrCLNBFCLIN_TIPOSALDO: TStringField;
    qrCLNBFCLIN_VLRSALDO: TFloatField;
    qrCLNBFCLIN_TPMERC: TStringField;
    qrCLNBFCLIN_LOTE: TStringField;
    qrCLNBFCLIN_ISS: TFloatField;
    qrCLNBFCLIN_DESCONTO: TFloatField;
    qrCLNBFRemanejaSN: TStringField;
    qrCLFINCLIF_ID: TAutoIncField;
    qrCLFINCLIF_PESSOA: TStringField;
    qrCLFINCLIF_RAZA: TStringField;
    qrCLFINCLIF_NOME: TStringField;
    qrCLFINCLIF_CGCCPF: TStringField;
    qrCLFINCLIF_INSCRG: TStringField;
    qrCLFINCLIF_ENDERECO: TStringField;
    qrCLFINCLIF_ENDERECO_COMPL: TStringField;
    qrCLFINCLIF_ENDERECO_BAIRRO: TStringField;
    qrCLFINCLIF_MUNICIPIO: TStringField;
    qrCLFINCLIF_MUNICIPIO2: TStringField;
    qrCLFINUF_SIGLA: TStringField;
    qrCLFINCLIF_CEP: TStringField;
    qrCLFINCLIF_TEL1: TStringField;
    qrCLFINCLIF_TEL2: TStringField;
    qrCLFINCLIF_FAX: TStringField;
    qrCLFINCLIF_EMAIL: TStringField;
    qrCLFINCLIF_CONTATO: TStringField;
    qrCLFINMUN_ID: TIntegerField;
    qrCLFINCLIF_CARGAPALLET: TStringField;
    qrCLFINCLIE_ENDERECO: TStringField;
    qrCLFINCLIE_ENDERECO_COMPL: TStringField;
    qrCLFINCLIE_ENDERECO_BAIRRO: TStringField;
    qrCLFINCLIE_MUNICIPIO: TStringField;
    qrCLFINCLIE_MUN_ID: TIntegerField;
    qrCLFINCLIE_UF_SIGLA: TStringField;
    qrCLFINCLIE_CEP: TStringField;
    qrCLFINCLI_HORARIO: TStringField;
    qrCLFINCLI_VL_DESCARGA: TFloatField;
    qrCLFINCLI_OBS: TStringField;
    qrCLFINCLI_UNCOBRACA: TStringField;
    qrCLNBFCNPJ: TStringField;
    qrCLNBFMUN_ID_1: TAutoIncField;
    qrCLNBFDIPAM: TStringField;
    qrCLNBFMUN_NOME: TStringField;
    qrCLNBFUF_SIGLA_1: TStringField;
    qrCLNBFREG_ID: TIntegerField;
    wwQuery2: TwwQuery;
    qrCTR_MMAAORD_ID: TAutoIncField;
    qrCTR_MMAAOS_ID: TIntegerField;
    qrCTR_MMAAMANI_ID: TIntegerField;
    qrCTR_MMAATRANS_ID: TIntegerField;
    qrCTR_MMAAVEIC_ID: TIntegerField;
    qrCTR_MMAAVEIC_ID_RECEB: TIntegerField;
    qrCTR_MMAAREG_ID: TIntegerField;
    qrCTR_MMAAORD_PESO_TOTAL: TFloatField;
    qrCTR_MMAAORD_QTDE_PALLET: TFloatField;
    qrCTR_MMAAORD_VOLUME: TFloatField;
    qrCTR_MMAAORD_VALORTOTAL: TFloatField;
    qrCTR_MMAAORD_COLETA_ENTREGA: TStringField;
    qrCTR_MMAAORD_COL_ENDERECO: TStringField;
    qrCTR_MMAAORD_COL_ENDERECO_COMPL: TStringField;
    qrCTR_MMAAORD_COL_ENDERECO_BAIRRO: TStringField;
    qrCTR_MMAAMUN_ID_COL: TIntegerField;
    qrCTR_MMAAORD_COL_MUNICIPIO: TStringField;
    qrCTR_MMAAUF_SIGLA_COL: TStringField;
    qrCTR_MMAAORD_COL_CEP: TStringField;
    qrCTR_MMAAORD_COL_TEL1: TStringField;
    qrCTR_MMAAORD_COL_TEL2: TStringField;
    qrCTR_MMAAORD_COL_FAX: TStringField;
    qrCTR_MMAAORD_COL_EMAIL: TStringField;
    qrCTR_MMAAORD_COL_CONTATO: TStringField;
    qrCTR_MMAAORD_ENT_ENDERECO: TStringField;
    qrCTR_MMAAORD_ENT_ENDERECO_COMPL: TStringField;
    qrCTR_MMAAORD_ENT_ENDERECO_BAIRRO: TStringField;
    qrCTR_MMAAMUN_ID_ENT: TIntegerField;
    qrCTR_MMAAORD_ENT_MUNICIPIO: TStringField;
    qrCTR_MMAAUF_SIGLA_ENT: TStringField;
    qrCTR_MMAAORD_ENT_CEP: TStringField;
    qrCTR_MMAAORD_ENT_TEL1: TStringField;
    qrCTR_MMAAORD_ENT_TEL2: TStringField;
    qrCTR_MMAAORD_ENT_FAX: TStringField;
    qrCTR_MMAAORD_ENT_EMAIL: TStringField;
    qrCTR_MMAAORD_ENT_CONTATO: TStringField;
    qrCTR_MMAACLIF_ID: TIntegerField;
    qrCTR_MMAAORD_TPCARGA: TStringField;
    qrCTR_MMAAORD_QTDE_UV: TFloatField;
    qrCTR_MMAAORD_REDESPACHO: TStringField;
    qrCTR_MMAAORD_PLACA: TStringField;
    qrCTR_MMAACFA_ID: TIntegerField;
    qrCTR_MMAAORD_TOTALPREST: TFloatField;
    qrCTR_MMAAORD_VLR_ICMS: TFloatField;
    qrCTR_MMAAORD_NOTAS: TStringField;
    qrCTR_MMAATRANS_ID_REDES: TIntegerField;
    qrCTR_MMAAORD_PAGO: TStringField;
    qrCTR_MMAACLIN_ID: TIntegerField;
    qrCTR_MMAAORD_CONSIGN: TStringField;
    qrCTR_MMAAORD_VLR_FRETE: TFloatField;
    qrCTR_MMAAORD_VLR_SECCAT: TFloatField;
    qrCTR_MMAAORD_VLR_DESPACHO: TFloatField;
    qrCTR_MMAAORD_VLR_PEDAGIO: TFloatField;
    qrCTR_MMAAORD_VLR_OUTROS: TFloatField;
    qrCTR_MMAAORD_CONH: TStringField;
    qrCTR_MMAAORD_ALIQ: TFloatField;
    qrCTR_MMAAMARCADOR: TStringField;
    qrCTR_MMAAORD_MINUTA: TStringField;
    qrCTR_MMAAORD_STATUS: TStringField;
    qrCTR_MMAAORD_DATA: TDateTimeField;
    qrCTR_MMAAORD_OBS: TStringField;
    qrCTR_MMAAORD_GENERICO: TStringField;
    qrCTR_MMAACHAVE_ID: TStringField;
    qrCTR_MMAASEL: TStringField;
    qrCTR_MMAAFAT_ID: TIntegerField;
    BitBtn3: TBitBtn;
    qrColetaNF: TwwQuery;
    qrColetaNFCNF_ID: TAutoIncField;
    qrColetaNFMANI_ID: TIntegerField;
    qrColetaNFCNF_NF: TStringField;
    qrColetaNFCNF_QTDENF: TIntegerField;
    qrColetaNFCNF_UV: TFloatField;
    qrColetaNFCNF_PESO: TFloatField;
    qrColetaNFCNF_PALLETS: TIntegerField;
    qrColetaNFCNF_VALOR: TFloatField;
    qrColetaNFCLIF_ID: TIntegerField;
    qrCLFINIBGE_ID: TIntegerField;
    qrCLFINCLIF_LOGRADOURO: TStringField;
    qrCLFINCLIF_NUMERO: TStringField;
    qrCLNBFIBGE_ID: TIntegerField;
    qrCLNBFCLIN_LOGRADOURO: TStringField;
    qrCLNBFCLIN_NUMERO: TStringField;
    qrCLNBFIBGE_ID_1: TIntegerField;
    Q_NFTEXTO_LIVRE: TMemoField;
    qrConhecimento_CHAVE_ID: TStringField;
    qrConhecimento_SEL: TStringField;
    qrConhecimento_FAT_ID: TIntegerField;
    qrConhecimento_ORD_TXENTREGA: TFloatField;
    qrConhecimento_ORD_SEGURO: TFloatField;
    qrConhecimento_E_COMPLEMENTAR: TStringField;
    qrConhecimento_ORD_ID_COMPLEMENTAR: TIntegerField;
    qrConhecimento_TEM_COMPLEMENTAR: TStringField;
    qrConhecimento_SEL_CTRC: TStringField;
    qrConhecimento_PAMCARD_SEL: TStringField;
    qrClienteFinalCLIN_ID: TAutoIncField;
    qrClienteFinalCLIN_PESSOA: TStringField;
    qrClienteFinalCLIN_RAZA_1: TStringField;
    qrClienteFinalCLIN_NOME: TStringField;
    qrClienteFinalCLIN_CGCCPF_1: TStringField;
    qrClienteFinalCLIN_INSCRG_1: TStringField;
    qrClienteFinalCLIN_ENDERECO_1: TStringField;
    qrClienteFinalCLIN_ENDERECO_COMPL: TStringField;
    qrClienteFinalCLIN_ENDERECO_BAIRRO_1: TStringField;
    qrClienteFinalCLIN_MUNICIPIO_1: TStringField;
    qrClienteFinalUF_SIGLA_1: TStringField;
    qrClienteFinalCLIN_CEP_1: TStringField;
    qrClienteFinalCLIN_TEL1: TStringField;
    qrClienteFinalCLIN_TEL2: TStringField;
    qrClienteFinalCLIN_FAX: TStringField;
    qrClienteFinalCLIN_EMAIL: TStringField;
    qrClienteFinalCON_CODI: TStringField;
    qrClienteFinalCLIN_CONTRATO: TStringField;
    qrClienteFinalCLIN_UTIL_COD: TStringField;
    qrClienteFinalMUN_ID_1: TIntegerField;
    qrClienteFinalCLIN_WEB: TStringField;
    qrClienteFinalCLIN_ENDC: TStringField;
    qrClienteFinalCLIN_END_COMPLC: TStringField;
    qrClienteFinalCLIN_END_BAIRC: TStringField;
    qrClienteFinalCLIN_MUNICC: TStringField;
    qrClienteFinalUF_SIGLAC: TStringField;
    qrClienteFinalCLIN_CEPC: TStringField;
    qrClienteFinalCLIN_TELC: TStringField;
    qrClienteFinalCLIN_FAXC: TStringField;
    qrClienteFinalCLIN_EMAILC: TStringField;
    qrClienteFinalMUN_IDC: TIntegerField;
    qrClienteFinalCLIN_TIPOSALDO: TStringField;
    qrClienteFinalCLIN_VLRSALDO: TFloatField;
    qrClienteFinalCLIN_TPMERC: TStringField;
    qrClienteFinalCLIN_LOTE: TStringField;
    qrClienteFinalCLIN_ISS: TFloatField;
    qrClienteFinalCLIN_DESCONTO: TFloatField;
    qrClienteFinalRemanejaSN: TStringField;
    qrClienteFinalIBGE_ID: TIntegerField;
    qrClienteFinalCLIN_LOGRADOURO: TStringField;
    qrClienteFinalCLIN_NUMERO: TStringField;
    qrClienteNBFREmetenteCLIF_ID: TAutoIncField;
    qrClienteNBFREmetenteCLIF_PESSOA: TStringField;
    qrClienteNBFREmetenteCLIF_RAZA_1: TStringField;
    qrClienteNBFREmetenteCLIF_NOME: TStringField;
    qrClienteNBFREmetenteCLIF_CGCCPF_1: TStringField;
    qrClienteNBFREmetenteCLIF_INSCRG_1: TStringField;
    qrClienteNBFREmetenteCLIF_ENDERECO_1: TStringField;
    qrClienteNBFREmetenteCLIF_ENDERECO_COMPL: TStringField;
    qrClienteNBFREmetenteCLIF_ENDERECO_BAIRRO_1: TStringField;
    qrClienteNBFREmetenteCLIF_MUNICIPIO_1: TStringField;
    qrClienteNBFREmetenteCLIF_MUNICIPIO2: TStringField;
    qrClienteNBFREmetenteUF_SIGLA_1: TStringField;
    qrClienteNBFREmetenteCLIF_CEP_1: TStringField;
    qrClienteNBFREmetenteCLIF_TEL1: TStringField;
    qrClienteNBFREmetenteCLIF_TEL2: TStringField;
    qrClienteNBFREmetenteCLIF_FAX: TStringField;
    qrClienteNBFREmetenteCLIF_EMAIL: TStringField;
    qrClienteNBFREmetenteCLIF_CONTATO: TStringField;
    qrClienteNBFREmetenteMUN_ID_1: TIntegerField;
    qrClienteNBFREmetenteCLIF_CARGAPALLET: TStringField;
    qrClienteNBFREmetenteCLIE_ENDERECO: TStringField;
    qrClienteNBFREmetenteCLIE_ENDERECO_COMPL: TStringField;
    qrClienteNBFREmetenteCLIE_ENDERECO_BAIRRO: TStringField;
    qrClienteNBFREmetenteCLIE_MUNICIPIO: TStringField;
    qrClienteNBFREmetenteCLIE_MUN_ID: TIntegerField;
    qrClienteNBFREmetenteCLIE_UF_SIGLA: TStringField;
    qrClienteNBFREmetenteCLIE_CEP: TStringField;
    qrClienteNBFREmetenteCLI_HORARIO: TStringField;
    qrClienteNBFREmetenteCLI_VL_DESCARGA: TFloatField;
    qrClienteNBFREmetenteCLI_OBS: TStringField;
    qrClienteNBFREmetenteCLI_UNCOBRACA: TStringField;
    qrClienteNBFREmetenteIBGE_ID: TIntegerField;
    qrClienteNBFREmetenteCLIF_LOGRADOURO: TStringField;
    qrClienteNBFREmetenteCLIF_NUMERO: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgbLivroFiscalClick(Sender: TObject);
    PROCEDURE CARGAS_NF;
    PROCEDURE DIPI;
    procedure BitBtn3Click(Sender: TObject);


  private
    procedure LivroSaida;
    Procedure LivroEntrada;
    Procedure LivroCRT;
    procedure LivroCTR_MMAA;
    function Valor_desconto(id : Integer): Double;
  public
    { Public declarations }
  end;

var
  FLivroFiscal: TFLivroFiscal;
  Path : string;
  DATA_IN : tdatetime;
  DATA_FI : tdatetime;
  AUX2 : tdatetime;

  TOTAL_POR_TIPOARQ : integer ;

  ArqTXT : textfile ;

  StrTexto10 : string;
  StrTexto11 : string;
  StrTexto50 : string;
  Conta50 : integer;
  StrTexto54 : string;
  Conta54 : integer;
  StrTexto70 : string;
  Conta70 : integer;
  StrTexto71 : string;
  Conta71 : integer;
  StrTexto74 : string;
  Conta74 : integer;
  StrTexto75 : string;
  Conta75 : integer;
  StrTexto90 : string;

  Conta90 : integer;
  Cab90 : string;
  VER : integer;
  DATA_INI : string;
  DATA_INI2 : string;
  dataPER : string;
  DataINT : integer;
  DATA_FIM : string;
  DATA_FIM2 : string;
  I : integer;
  strdata : string;
  AUX : string;
  F : TStringList;
  DATACO : STRING;

  ISENTAS : STRING ;

  var
   
  SDS : INTEGER ;
  NOTASEMBARRA : string ;

implementation
uses U_FUNCOES, UfrmAcertaDestConh ;
{$R *.DFM}

procedure TFLivroFiscal.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFLivroFiscal.BitBtn1Click(Sender: TObject);
const
  BRANCOA = ' ';
  BRANCON = '0';
  Brancos = '                                                                                                                                                                             ' ;
var
   POSICAOVIRG : integer ;
begin
   if (MaskEdit1.text = '  /  /    ') or (MaskEdit2.text = '  /  /    ') then
   begin
        MessageDlg('Preencha todos os campos.', mtInformation, [mbok], 0);
        abort;
   end;

   DATA_IN := 0.0;
   DATA_FI := 0.0;
   DATA_INI := MaskEdit1.Text;
   DATA_FIM := MaskEdit2.Text;

   DATACO := DATA_INI;
   strdata := DATACO;
   AUX := copy(strdata,0,10);
   strdata := copy(AUX,7,4);
   dataPER := strdata;
   strdata := copy(AUX,4,2);
   dataPER := dataPER + strdata;
   strdata := copy(AUX,0,2);
   dataPER := dataPER + strdata;
   AUX := dataPER;
   VER := 8 - length(AUX);
   DATA_INI2 := AUX;

   DATACO := DATA_FIM;
   strdata := DATACO;
   AUX := copy(strdata,0,10);
   strdata := copy(AUX,7,4);
   dataPER := strdata;
   strdata := copy(AUX,4,2);
   dataPER := dataPER + strdata;
   strdata := copy(AUX,0,2);
   dataPER := dataPER + strdata;
   AUX := dataPER;
   VER := 8 - length(AUX);
   DATA_FIM2 := AUX;


   DATA_IN := strtodate(MaskEdit1.Text);
   DATA_FI := strtodate(MaskEdit2.Text);

   SaveDialog1.execute;
   AssignFile(ArqTXT,SaveDialog1.filename);



   Q_NF.SQL.CLEAR;
   Q_NF.SQL.ADD('SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
   Q_NF.SQL.ADD('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A.            ');
   Q_NF.SQL.ADD('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A.                     ');
   Q_NF.SQL.ADD('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.      ');
   Q_NF.SQL.ADD('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.     ');
   Q_NF.SQL.ADD('	NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  ');
   Q_NF.SQL.ADD('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.     ');
   Q_NF.SQL.ADD('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.                          ');
   Q_NF.SQL.ADD('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.        ');
   Q_NF.SQL.ADD('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,    ');
   Q_NF.SQL.ADD('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.    ');
   Q_NF.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.UF_SIGLA  ,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,(C.CLIN_ENDERECO +' + '''' + ' ' + '''' + ' + C.CLIN_ENDERECO_COMPL ) as ENDE, C.CLIN_ENDERECO_BAIRRO,  ');
   Q_NF.SQL.ADD('C.UF_SIGLA,C.CLIN_CEP,C.MUN_ID,C.CLIN_RAZA ');
   Q_NF.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C ')  ;
   Q_NF.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
   Q_NF.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
   Q_NF.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
   Q_NF.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
   Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
   Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
   Q_NF.SQL.Add('AND (A.TDOC_ID = 2 OR A.TDOC_ID = 4)');
   Q_NF.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) ') ;
   Q_NF.OPEN;



   Rewrite(ArqTXT);

   while not Q_NF.eof do
   begin
        StrTexto50 := '' ;

        //ESPECIE
        dataPER := '';
        strtexto50 := strtexto50 + dataPER;
        VER := 3 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

        //SERIE
        dataPER := Q_NFNFI_SERIE.AsString;
        strdata := copy(dataPER,0,3);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 3 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
         strtexto50 := strtexto50 + ' ';

        //NUMERO DA NF
        dataPER := Q_NFNFI_NUMERO.AsString;
        strdata := copy(dataPER,0,6);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 6 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
         strtexto50 := strtexto50 + ' ';


        //forma de pagto
         strtexto50 := strtexto50 + '1';
         strtexto50 := strtexto50 + ' ';

        //Data Entrada
        AUX2 := Q_NFNFI_DEMI.Value;
        strdata := formatdatetime('DDMMYYYY',AUX2);
        AUX := copy(strdata,0,8);

        strdata := copy(AUX,5,4);
        dataPER :=  strdata;

        strdata := copy(AUX,3,2);
        dataPER := dataPER + strdata;

        strdata := copy(AUX,0,2);
        dataPER := dataPER + strdata;


        AUX := dataPER;
        VER := 8 - length(AUX);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50:= strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + AUX;
         strtexto50 := strtexto50 + ' ';

        //Data Emissao
        AUX2 := Q_NFNFI_DEMI.Value;
        strdata := formatdatetime('DDMMYYYY',AUX2);
        AUX := copy(strdata,0,8);

        strdata := copy(AUX,5,4);
        dataPER :=  strdata;

        strdata := copy(AUX,3,2);
        dataPER := dataPER + strdata;

        strdata := copy(AUX,0,2);
        dataPER := dataPER + strdata;


        AUX := dataPER;
        VER := 8 - length(AUX);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50:= strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + AUX;
         strtexto50 := strtexto50 + ' ';

        //EMITENTE
        strtexto50 := strtexto50 + '     ';
         strtexto50 := strtexto50 + ' ';

        //NATUREZA
        Q_AUX2.close ;
        Q_AUX2.SQL.clear ;
        Q_AUX2.SQL.add('select CFA_CODI from faturamento') ;
        Q_AUX2.SQL.add('where CFA_ID =  ' + Q_NFCFA_ID.asstring ) ;
        Q_AUX2.open  ;

        dataPER := Q_AUX2.FieldByName('CFA_CODI').asstring;
        strdata := copy(dataPER,0,4);
        dataPER := strdata;
        VER := 4 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
         strtexto50 := strtexto50 + ' ';


        //INCLUIR BSE CRED PIS/COFINS
        strtexto50 := strtexto50 + ' ';
         strtexto50 := strtexto50 + ' ';


        //adiciona uf
        dataPER := Q_NFUF_SIGLA.AsString;
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

        //CLASS.CONTABIL
        dataPER := '';
        strdata := copy(dataPER,0,3);
        dataPER := strdata;
        VER := 3 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
         strtexto50 := strtexto50 + ' ';

        //COMPLE.CONTABIL
        dataPER := '';
        strdata := copy(dataPER,0,4);
        dataPER := strdata;
        VER := 4 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
         strtexto50 := strtexto50 + ' ';


        //VALOR CONTABIL
        dataPER := formatfloat('#0.00',Q_NFNFI_TOTA.asfloat);
        POSICAOVIRG := POS(',',dataPER) ;
        strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
        dataPER := strdata;

        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';


        Q_AUX2.close ;
        Q_AUX2.SQL.clear ;
        Q_AUX2.SQL.add('select INF_AICM from nf_ITENS') ;
        Q_AUX2.SQL.add('where NFI_CODI =  ' + Q_NFNFI_CODI.asstring ) ;
        Q_AUX2.open  ;


        //BASE DO ICMS 1
        if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then begin
                 dataPER := formatfloat('#0.00',Q_NFNFI_BICM.asfloat);
                 POSICAOVIRG := POS(',',dataPER) ;
                 strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                 dataPER := strdata;
        end else begin
                dataPER := formatfloat('00000000000.00',0);
                POSICAOVIRG := POS(',',dataPER) ;
                strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                dataPER := strdata;
         end ;

        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';

        //ALIQUOTA DO ICMS 1
        if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
           (Q_NFNFI_VICM.asfloat > 0) then begin
             dataPER := formatfloat('#0.00',Q_AUX2.fieldbyname('INF_AICM').AsFloat);
             POSICAOVIRG := POS(',',dataPER) ;
             strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
             dataPER := strdata;
        end else begin
             dataPER := formatfloat('00.00',0);
             POSICAOVIRG := POS(',',dataPER) ;
             strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
             dataPER := strdata;
        end ;

        VER := 5 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';


        //VALOR DO ICMS 1
        if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
           (Q_NFNFI_VICM.asfloat > 0) then begin
             dataPER := formatfloat('#0.00',Q_NFNFI_VICM.asfloat);
             POSICAOVIRG := POS(',',dataPER) ;
             strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
             dataPER := strdata;
        end else begin
             dataPER := formatfloat('00000000000.00',0);
             POSICAOVIRG := POS(',',dataPER) ;
             strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
             dataPER := strdata;
        end ;

        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';


        //BASE DO ICMS 2
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //ALIQUOTA DO ICMS 2
        strtexto50 := strtexto50 + '00.00';
        strtexto50 := strtexto50 + ' '; 

        //VALOR DO ICMS 2
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

         //BASE DO ICMS 3
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //ALIQUOTA DO ICMS 3
        strtexto50 := strtexto50 + '00.00';
        strtexto50 := strtexto50 + ' ';

        //VALOR DO ICMS 3
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

         //BASE DO ICMS 4
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //ALIQUOTA DO ICMS 4
        strtexto50 := strtexto50 + '00.00';
        strtexto50 := strtexto50 + ' ';

        //VALOR DO ICMS 4
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //ISENTOS DE ICMS
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //OUTROS DE ICMS
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //BASE IPI
        dataPER := formatfloat('#0.00',Q_NFNFI_BIPI.asfloat);
        POSICAOVIRG := POS(',',dataPER) ;
        strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
        dataPER := strdata;

        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';

        //ALIQUOTA DO IPI
        strtexto50 := strtexto50 + '00.00';
        strtexto50 := strtexto50 + ' ';


        //VALOR DO IPI
        dataPER := formatfloat('#0.00',Q_NFNFI_VIPI.asfloat);
        POSICAOVIRG := POS(',',dataPER) ;
        strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
        dataPER := strdata;

        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';

         //ISENTOS DE IPI
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //OUTROS DE IPI
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //ICMS RETIDO
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

         //IPI INCLUSO
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //OUTROS IPIS
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';

        //OUTROS VALORES
        strtexto50 := strtexto50 + '00000000000.00';
        strtexto50 := strtexto50 + ' ';


        //OBSERVACOES
        dataPER := '';
        strtexto50 := strtexto50 + dataPER;
        VER := 50 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
         strtexto50 := strtexto50 + ' ';

        //TIPO DE IPI
        strtexto50 := strtexto50 + ' ';
        strtexto50 := strtexto50 + ' ';

        //PIS ADUANEIRO
        strtexto50 := strtexto50 + '0000000.00';
        strtexto50 := strtexto50 + ' ';

        //COFINS ADUANEIRO
        strtexto50 := strtexto50 + '0000000.00';
        strtexto50 := strtexto50 + ' ';

        //REDUCAO PIS
        strtexto50 := strtexto50 + '000.00';
        strtexto50 := strtexto50 + ' ';

        //BRANCOS
        dataPER := '';
        strtexto50 := strtexto50 + dataPER;
        VER := 73 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
         strtexto50 := strtexto50 + ' ';


         //Razao social
        dataPER := Q_NFCLIN_RAZA.AsString;
        strdata := copy(dataPER,0,50);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 50 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

        //CNPJ
        dataPER := Q_NFCLIN_CGCCPF.AsString;
        dataPER := Funcoes.ControlaCNPJ(dataPER);
        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';


         //CODIGO DIPAM-B
        strtexto50 := strtexto50 + '00';
        strtexto50 := strtexto50 + ' ';


        Q_AUX2.close ;
        Q_AUX2.SQL.clear ;
        Q_AUX2.SQL.add('select MUN_NOME,DIPAM from municipio') ;
        Q_AUX2.SQL.add('where mun_Id = ' + Q_NFMUN_ID_1.asstring) ; 
        Q_AUX2.open  ;

        //MUNICIPIO DIPAM-B
        dataPER := Q_AUX2.fieldbyname('DIPAM').AsString;
        if Trim( dataPER) = '' then
          dataPER := '0000';

        strdata := copy(dataPER,0,4);
        dataPER := strdata;

        VER := 4 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        strtexto50 := strtexto50 + ' ';

        //MUNICIPIO
        IF  Q_AUX2.fieldbyname('DIPAM').AsString = '1004' then begin
            strtexto50 := strtexto50 + '1';
            strtexto50 := strtexto50 + ' ';
        end else begin
            strtexto50 := strtexto50 + '2';
            strtexto50 := strtexto50 + ' ';
        end ;

         //EXCLUIR DA DIPI
        strtexto50 := strtexto50 + 'N';
        strtexto50 := strtexto50 + ' ';


         //ENDERECO
        dataPER := Q_NFENDE.AsString;
        strdata := copy(dataPER,0,50);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 50 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

         //CEP
        dataPER := Q_NFCLIN_CEP.AsString;
        strdata := copy(dataPER,0,8);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 8 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

        //CEP
        dataPER := Q_NFCLIN_ENDERECO_BAIRRO.AsString;
        strdata := copy(dataPER,0,50);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 50 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

         //CIDADE
        dataPER :=  Q_AUX2.fieldbyname('MUN_NOME').AsString;
        strdata := copy(dataPER,0,50);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 50 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

         //CIDADE
        dataPER := Q_NFUF_SIGLA_1.AsString;
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        strtexto50 := strtexto50 + ' ';

         //INCRICAO MUNICIPAL
        strtexto50 := strtexto50 + '0000000000';
        strtexto50 := strtexto50 + ' ';

         //digito INCRICAO MUNICIPAL
        strtexto50 := strtexto50 + '00';
        strtexto50 := strtexto50 + ' ';
            
         //cidade GISS
        strtexto50 := strtexto50 + '00';
        strtexto50 := strtexto50 + ' ';

        //BRANCOS
        dataPER := '';
        strtexto50 := strtexto50 + dataPER;
        VER := 86 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
         strtexto50 := strtexto50 + ' ';


        Writeln(ArqTXT,StrTexto50);

        Q_NF.Next;
   end;

   Closefile(ArqTXT);

   {gauge1.progress := 100  ;
   Animate1.active := false ;
   Animate1.visible := false ;
   MessageDlg('Geração efetuada com sucesso!', mtInformation, [mbok], 0);
   gauge1.visible  := false;  }

end;



procedure TFLivroFiscal.MaskEdit1Enter(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFLivroFiscal.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFLivroFiscal.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClWHITE;
end;

procedure TFLivroFiscal.MaskEdit2Exit(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClWHITE;
end;

procedure TFLivroFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action := cafree ;
end;

function TFLivroFiscal.MUDALETR(LETRA: string): string;
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


procedure TFLivroFiscal.LivroSaida;
const
  BRANCOA = ' ';
  BRANCON = '0';
  Brancos = '                                                                                                                                                                             ' ;
var
   POSICAOVIRG : integer ;
   BaseICMS : Double;
   Vlr_nf : Double;
   FText: TextFile;
   sLinha : string;
   CFOP : STRING;
begin
     DATA_IN := 0.0;
     DATA_FI := 0.0;
     DATA_INI := MaskEdit1.Text;
     DATA_FIM := MaskEdit2.Text;

     DATACO := DATA_INI;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_INI2 := AUX;

     DATACO := DATA_FIM;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_FIM2 := AUX;


     Assignfile(FText,Path);
     Rewrite(FText);


     DATA_IN := strtodate(MaskEdit1.Text);
     DATA_FI := strtodate(MaskEdit2.Text);

     Q_NF.SQL.CLEAR;
     Q_NF.SQL.ADD('SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
     Q_NF.SQL.ADD('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A.            ');
     Q_NF.SQL.ADD('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A.                     ');
     Q_NF.SQL.ADD('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.      ');
     Q_NF.SQL.ADD('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.     ');
     Q_NF.SQL.ADD('	NFI_UF_SIGLA, A.TEXTO_LIVRE, A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  ');
     Q_NF.SQL.ADD('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.     ');
     Q_NF.SQL.ADD('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.                          ');
     Q_NF.SQL.ADD('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.        ');
     Q_NF.SQL.ADD('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,    ');
     Q_NF.SQL.ADD('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.    ');
     Q_NF.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.UF_SIGLA  ,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,(C.CLIN_ENDERECO +' + '''' + ' ' + '''' + ' + C.CLIN_ENDERECO_COMPL ) as ENDE, C.CLIN_ENDERECO_BAIRRO,  ');
     Q_NF.SQL.ADD('C.UF_SIGLA,C.CLIN_CEP,C.MUN_ID,C.CLIN_RAZA, C.CLIN_ID ');
     Q_NF.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C ')  ;
     Q_NF.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
     Q_NF.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
     Q_NF.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
     Q_NF.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
     Q_NF.SQL.Add('AND (A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 17)');
     Q_NF.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) order by A.NFI_NUMERO') ;

     lblExport.Caption := 'Exportando dados das saídas';
     Q_NF.OPEN;
     Q_NF.Last;
     ProgressBar1.Max := Q_NF.RecordCount;
     Q_NF.First;
     f :=TStringList.Create;
     ProgressBar1.Position := 0;


     //Sleep(200);
     Application.ProcessMessages;
     try
     while not Q_NF.eof do
     begin
          sLinha := '' ;

          //ESPECIE 03
          sLinha := sLinha + 'NF  ';

          //SERIE  03
          dataPER := '1';//Q_NFNFI_SERIE.AsString;
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //NUMERO DA NF inciial 06
          dataPER := Q_NFNFI_NUMERO.AsString;
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
           sLinha := sLinha + dataPER +  ' ';


          //NUMERO DA NF final 06
          dataPER := '000000';
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
          sLinha := sLinha + dataPER +  ' ';

          //adiciona uf
          //dataPER := Q_NFUF_SIGLA.AsString;
          dataPER := Q_NFNFI_DEST_UF_SIGLA.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //Data Entrada 08
          AUX2 := Q_NFNFI_DEMI.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';


          //forma de pagto  01
          //************* VRIFICA NO BANCO DE DADOS
           sLinha := sLinha + '1'+ ' ';


          //NATUREZA
          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select CFA_CODI from faturamento') ;
          Q_AUX2.SQL.add('where CFA_ID =  ' + Q_NFCFA_ID.asstring ) ;
          Q_AUX2.open  ;
          CFOP :=  Q_AUX2.FieldByName('CFA_CODI').asstring;
          dataPER := Q_AUX2.FieldByName('CFA_CODI').asstring;
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';



          //Cliente
          //dataPER := FormatFloat('00000',Q_NFCLIN_ID.AsFloat);
          dataPER := FormatFloat('00000',0);
          sLinha := sLinha + dataPER + ' ';

          //  TIPO DE PIS
          sLinha := sLinha + '0'+ ' ';




          //CLASS.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha;


          //COMPLE.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //VALOR CONTABIL
          if Q_NFNFI_STATUS.Value <> 'C' then
                dataPER := formatfloat('#0.00',Q_NFNFI_TOTA.asfloat)
          else
                dataPER := formatfloat('#0.00',0)  ;
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select INF_AICM from nf_ITENS') ;
          Q_AUX2.SQL.add('where NFI_CODI =  ' + Q_NFNFI_CODI.asstring ) ;
          Q_AUX2.open  ;



          //BASE DO ICMS 1
          if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then begin
                   dataPER := formatfloat('#0.00',Q_NFNFI_BICM.asfloat);
                   POSICAOVIRG := POS(',',dataPER) ;
                   strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                   dataPER := strdata;
          end else begin
                  dataPER := formatfloat('00000000000.00',0);
                  POSICAOVIRG := POS(',',dataPER) ;
                  strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                  dataPER := strdata;
           end ;



          if  Q_NFNFI_STATUS.Value = 'C' then
                dataPER  := '00000000000.00';

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //ALIQUOTA DO ICMS 1


          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_AUX2.fieldbyname('INF_AICM').AsFloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;

          if  Q_NFNFI_STATUS.Value = 'C' then
                dataPER  := '00.00';

          IF Trim(CFOP) = '6352' then
             dataPER := '12.00';

          VER := 5 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';




          //VALOR DO ICMS 1
          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_NFNFI_VICM.asfloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00000000000.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;



          if  Q_NFNFI_STATUS.Value = 'C' then
                dataPER  := '00000000000.00';

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //BRANCOS  92
          dataPER := '';
          VER := 92 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //VALOR DE ACRESCIMO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


            {
          //BASE DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 2
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 3
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 4
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';
                            }
          //ISENTOS DE ICMS

          Vlr_nf := Q_NFNFI_TOTA.asfloat;
          if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then
              BaseICMS := Q_NFNFI_BICM.asfloat
          else
              BaseICMS := 0;

          if Q_NFNFI_STATUS.Value = 'C' then
             sLinha := sLinha + '00000000000.00'
          else
          begin
              if Vlr_nf > BaseICMS then
              begin
                 dataPER := FormatFloat('00000000000.00',Vlr_nf - BaseICMS);
                 dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
                 sLinha := sLinha + dataPER;
              end
              else
              sLinha := sLinha + '00000000000.00';
          end;



          sLinha := sLinha + ' ';

          //OUTROS DE ICMS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //BASE IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_BIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO IPI
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';


          //VALOR DO IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_VIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

           //ISENTOS DE IPI


          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //aliq. pis/confins
          sLinha := sLinha + '2' + ' ';


          //ICMS RETIDO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //IPI INCLUSO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS IPIS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS VALORES
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


          //OBSERVACOES
          if Q_NFNFI_STATUS.Value = 'C' then
             dataPER := 'Nota Fiscal Cancelada'
          else
             dataPER := Q_NFTEXTO_LIVRE.AsString;

          dataPER := Copy(dataPER, 1, 50);
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //TIPO DE IPI
          sLinha := sLinha + ' ';
          sLinha := sLinha + ' ';

         //VLR PIS RETIDO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';


         //VL. COFINS RETIDO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';



         // INFORMAR BASE DO PIS COFINS
         sLinha := sLinha + 'N' + ' ';



         //base pis cofins
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

         //INFORMAR BASE DO IRPJ/CSSL
         sLinha := sLinha + 'N' + ' ';

         //BASE IRPJ / CSSL
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //novo layout
          sLinha := sLinha + Funcoes.writeString('', 3) + ' ';
          sLinha := sLinha + '00000000000.00' + ' ';//base icms subs
          sLinha := sLinha + '00.00' + ' '; //aliq icms subs
          sLinha := sLinha + '00000000000.00' + ' '; //valor icms subs
          sLinha := sLinha + Funcoes.writeString('55', 2) + ' ';//cod doc fiscal
          IF Q_NFNFI_STATUS.AsString = 'C' then
             sLinha := sLinha + Funcoes.writeString('02', 2) + ' '//sit doc fiscal
          else
             sLinha := sLinha + Funcoes.writeString('00', 2) + ' ';//sit doc fiscal
          sLinha := sLinha + Funcoes.writeString('0', 1) + ' ';//via transp
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';//tipo operacao
          sLinha := sLinha + Funcoes.writeString('', 14) + ' '; //cnpj consessionaria
          sLinha := sLinha + Funcoes.writeString('1', 1) + '';//tipo FRETE

         { //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 1 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           //sLinha := sLinha + ' ';  }


           //Razao social
          dataPER := Funcoes.RemoveAcentos(Q_NFNFI_DEST_RAZA.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


           //UF
          dataPER := Q_NFNFI_DEST_UF_SIGLA.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //MUNICIPIO ZFM/ALC
          sLinha := sLinha + '00000' + ' ';


              with qrAux do begin
                  close;
                  sql.Clear;
                  sql.Add('select dbo.controla_cnpj(clif_cgccpf) as clif_cgccpf ');
                  sql.Add('from clientefinal where clif_cgccpf Like ' + QuotedStr('%'+Q_NFNFI_DEST_CGC.Value+'%'));
                  Open;
              end;

         // end;




          //CNPJ
          //dataPER := Q_NFNFI_DEST_CGC.Value;
          dataPER := qrAux.fieldByName('clif_cgccpf').AsString;
          dataPER := Funcoes.ControlaCNPJ(dataPER);
          strdata := copy(dataPER,0,14);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + ' ';




          //INSCRIÇÃO
          dataPER := Q_NFNFI_DEST_INSCRG.Value;
          dataPER := StringReplace(dataPER, '.','',[RFREPLACEALL]);
          VER := 20 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          dataPER := dataPER + ' ';
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';

           //CODIGO DIPAM-B
          if Q_NFNFI_DEST_UF_SIGLA.AsString = 'SP' then
          begin
               sLinha := sLinha + '23';
               sLinha := sLinha + ' ';
          end
          else
          begin
               sLinha := sLinha + '00';
               sLinha := sLinha + ' ';
          end;


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select MUN_NOME,DIPAM from municipio') ;
          Q_AUX2.SQL.add('where mun_Id = ' + Q_NFMUN_ID.asstring) ;
          Q_AUX2.open  ;

          //MUNICIPIO DIPAM-B
          dataPER := Q_AUX2.fieldbyname('DIPAM').AsString;
          if Trim(dataPER) = '' then
                dataPER := '0000';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;

          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


           //EXCLUIR DA DIPI
          sLinha := sLinha + 'N';
          sLinha := sLinha + ' ';


            //ENDERECO
          dataPER := Funcoes.RemoveAcentos(Q_NFNFI_DEST_ENDERECO.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //CEP
          dataPER := Q_NFNFI_DEST_CEP.AsString;
          strdata := copy(dataPER,0,8);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 8 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


          //BAIRRO
          dataPER := Funcoes.RemoveAcentos(Q_NFNFI_DEST_BAIRRO.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //CIDADE
          dataPER :=  Funcoes.RemoveAcentos(Q_AUX2.fieldbyname('MUN_NOME').AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //INCRICAO MUNICIPAL
          sLinha := sLinha + '          ';
          //sLinha := sLinha + ' ';

           //digito INCRICAO MUNICIPAL
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

           //cidade GISS
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

          //valor frete
          dataPER := FormatFloat('0000000.00', Q_NFNFI_VFRE.AsFloat);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

          //valor seguro
          dataPER := FormatFloat('0000000.00', Q_NFNFI_VSEG.AsFloat);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

          //valor outors
          dataPER := FormatFloat('0000000.00', 0);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

         //valor desconto
          dataPER := FormatFloat('0000000.00', 0);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

          qrCLFIN.Close;
          qrCLFIN.Params[0].AsInteger := Q_NFNFI_DEST_CLI.AsInteger;
          qrCLFIN.Open;

          sLinha := sLinha + Funcoes.writeString('', 9) + ' ';//suframa
          sLinha := sLinha + Funcoes.writeString('1058', 5) + ' ';//cod pais
          sLinha := sLinha + Funcoes.writeString(qrCLFINCLIF_LOGRADOURO.AsString, 15) + ' ';//logradouro
          sLinha := sLinha + Funcoes.writeString(qrCLFINCLIF_NUMERO.AsString, 6) + ' ';//num endereço
          sLinha := sLinha + Funcoes.writeString(qrCLFINCLIF_ENDERECO_COMPL.AsString, 30) + ' ';//compl ende
          sLinha := sLinha + Funcoes.writeString('', 2) + ' ';//uf consessionaria
          sLinha := sLinha + Funcoes.writeString('', 17) + ' ';//chassi do veic
          sLinha := sLinha + Funcoes.writeString('', 3) + ' ';//cod obs
          sLinha := sLinha + Funcoes.writeString('', 8) + ' ';//nf dev
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';//tipo icms subs
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';//origem merc
          sLinha := sLinha + Funcoes.writeString('', 2) + ' ';//sit trib
          sLinha := sLinha + Funcoes.writeString('0', 1) + ' ';//tipo isessção
          sLinha := sLinha + Funcoes.writeString('00.00', 5) + ' ';//redução % icms


          //NOTA INICIAL
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 9 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';
          //NOTA FINAL
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 9 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 1 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          // sLinha := sLinha + ' ' ;//removidos dos campos

         // SLINHA := SLINHA + #13#10;


         // f.Add(sLinha) ;

          Writeln(ftext, slinha);
          Application.ProcessMessages;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Q_NF.Next;

        end;
        //F.ADD('FIM DE ARQUIVO');
        sLinha := 'FIM DE ARQUIVO';
        Writeln(ftext, slinha);
        CloseFile(ftext);

       // f.SaveToFile(SaveDialog1.FileName);
        ShowMessage('Arquivo gerado com sucesso!!!');

     finally

         ProgressBar1.Position := 0;
         pnlProgress.Visible := False;
         ProgressBar1.Visible := False;
         lblExport.Visible := False;
         //FreeAndNil(f);

     end;

     






     //versao anterior com 900 posições

     {DATA_IN := 0.0;
     DATA_FI := 0.0;
     DATA_INI := MaskEdit1.Text;
     DATA_FIM := MaskEdit2.Text;

     DATACO := DATA_INI;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_INI2 := AUX;

     DATACO := DATA_FIM;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_FIM2 := AUX;


     DATA_IN := strtodate(MaskEdit1.Text);
     DATA_FI := strtodate(MaskEdit2.Text);

     Q_NF.SQL.CLEAR;
     Q_NF.SQL.ADD('SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
     Q_NF.SQL.ADD('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A.            ');
     Q_NF.SQL.ADD('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A.                     ');
     Q_NF.SQL.ADD('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.      ');
     Q_NF.SQL.ADD('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.     ');
     Q_NF.SQL.ADD('	NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  ');
     Q_NF.SQL.ADD('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.     ');
     Q_NF.SQL.ADD('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.                          ');
     Q_NF.SQL.ADD('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.        ');
     Q_NF.SQL.ADD('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,    ');
     Q_NF.SQL.ADD('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.    ');
     Q_NF.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.UF_SIGLA  ,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,(C.CLIN_ENDERECO +' + '''' + ' ' + '''' + ' + C.CLIN_ENDERECO_COMPL ) as ENDE, C.CLIN_ENDERECO_BAIRRO,  ');
     Q_NF.SQL.ADD('C.UF_SIGLA,C.CLIN_CEP,C.MUN_ID,C.CLIN_RAZA, C.CLIN_ID ');
     Q_NF.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C ')  ;
     Q_NF.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
     Q_NF.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
     Q_NF.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
     Q_NF.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
     Q_NF.SQL.Add('AND (A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 17)');
     Q_NF.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) order by A.NFI_NUMERO') ;

     lblExport.Caption := 'Exportando dados das saídas';
     Q_NF.OPEN;
     Q_NF.Last;
     ProgressBar1.Max := Q_NF.RecordCount;
     Q_NF.First;
     f :=TStringList.Create;
     ProgressBar1.Position := 0;


     //Sleep(200);
     Application.ProcessMessages;
     try
     while not Q_NF.eof do
     begin
          sLinha := '' ;

          //ESPECIE 03
          sLinha := sLinha + 'NF  ';

          //SERIE  03
          dataPER := '1';//Q_NFNFI_SERIE.AsString;
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //NUMERO DA NF inciial 06
          dataPER := Q_NFNFI_NUMERO.AsString;
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
           sLinha := sLinha + dataPER +  ' ';


          //NUMERO DA NF final 06
          dataPER := '000000';
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
          sLinha := sLinha + dataPER +  ' ';

          //adiciona uf
          //dataPER := Q_NFUF_SIGLA.AsString;
          dataPER := Q_NFNFI_DEST_UF_SIGLA.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //Data Entrada 08
          AUX2 := Q_NFNFI_DEMI.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';


          //forma de pagto  01
          //************* VRIFICA NO BANCO DE DADOS
           sLinha := sLinha + '1'+ ' ';


          //NATUREZA
          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select CFA_CODI from faturamento') ;
          Q_AUX2.SQL.add('where CFA_ID =  ' + Q_NFCFA_ID.asstring ) ;
          Q_AUX2.open  ;
          CFOP :=  Q_AUX2.FieldByName('CFA_CODI').asstring;
          dataPER := Q_AUX2.FieldByName('CFA_CODI').asstring;
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';



          //Cliente
          dataPER := FormatFloat('00000',Q_NFCLIN_ID.AsFloat);
          sLinha := sLinha + dataPER + ' ';

          //  TIPO DE PIS
          sLinha := sLinha + '0'+ ' ';




          //CLASS.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //COMPLE.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //VALOR CONTABIL
          if Q_NFNFI_STATUS.Value <> 'C' then
                dataPER := formatfloat('#0.00',Q_NFNFI_TOTA.asfloat)
          else
                dataPER := formatfloat('#0.00',0)  ;
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select INF_AICM from nf_ITENS') ;
          Q_AUX2.SQL.add('where NFI_CODI =  ' + Q_NFNFI_CODI.asstring ) ;
          Q_AUX2.open  ;



          //BASE DO ICMS 1
          if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then begin
                   dataPER := formatfloat('#0.00',Q_NFNFI_BICM.asfloat);
                   POSICAOVIRG := POS(',',dataPER) ;
                   strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                   dataPER := strdata;
          end else begin
                  dataPER := formatfloat('00000000000.00',0);
                  POSICAOVIRG := POS(',',dataPER) ;
                  strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                  dataPER := strdata;
           end ;



          if  Q_NFNFI_STATUS.Value = 'C' then
                dataPER  := '00000000000.00';

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //ALIQUOTA DO ICMS 1


          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_AUX2.fieldbyname('INF_AICM').AsFloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;

          if  Q_NFNFI_STATUS.Value = 'C' then
                dataPER  := '00.00';

          IF Trim(CFOP) = '6352' then
             dataPER := '12.00';

          VER := 5 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';




          //VALOR DO ICMS 1
          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_NFNFI_VICM.asfloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00000000000.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;



          if  Q_NFNFI_STATUS.Value = 'C' then
                dataPER  := '00000000000.00';

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //BASE DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 2
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 3
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 4
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ISENTOS DE ICMS

          Vlr_nf := Q_NFNFI_TOTA.asfloat;
          if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then
              BaseICMS := Q_NFNFI_BICM.asfloat
          else
              BaseICMS := 0;

          if Q_NFNFI_STATUS.Value = 'C' then
             sLinha := sLinha + '00000000000.00'
          else
          begin
              if Vlr_nf > BaseICMS then
              begin
                 dataPER := FormatFloat('00000000000.00',Vlr_nf - BaseICMS);
                 dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
                 sLinha := sLinha + dataPER;
              end
              else
              sLinha := sLinha + '00000000000.00';
          end;


          
          sLinha := sLinha + ' ';

          //OUTROS DE ICMS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //BASE IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_BIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO IPI
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';


          //VALOR DO IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_VIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

           //ISENTOS DE IPI


          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //aliq. pis/confins
          sLinha := sLinha + ' ' + ' ';


          //ICMS RETIDO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //IPI INCLUSO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS IPIS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS VALORES
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


          //OBSERVACOES
          if Q_NFNFI_STATUS.Value = 'C' then
             dataPER := 'Nota Fiscal Cancelada'
          else
             dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //TIPO DE IPI
          sLinha := sLinha + ' ';
          sLinha := sLinha + ' ';

         //VLR PIS RETIDO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';


         //VL. COFINS RETIDO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';



         // INFORMAR BASE DO PIS COFINS
         sLinha := sLinha + 'N' + ' ';



         //base pis cofins
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

         //INFORMAR BASE DO IRPJ/CSSL
         sLinha := sLinha + 'N' + ' ';

         //BASE IRPJ / CSSL
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';



          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 66 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           //sLinha := sLinha + ' ';


           //Razao social
          dataPER := Funcoes.RemoveAcentos(Q_NFNFI_DEST_RAZA.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


           //UF
          dataPER := Q_NFNFI_DEST_UF_SIGLA.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //MUNICIPIO ZFM/ALC
          sLinha := sLinha + '00000' + ' ';


              with qrAux do begin
                  close;
                  sql.Clear;
                  sql.Add('select dbo.controla_cnpj(clif_cgccpf) as clif_cgccpf ');
                  sql.Add('from clientefinal where clif_cgccpf Like ' + QuotedStr('%'+Q_NFNFI_DEST_CGC.Value+'%'));
                  Open;
              end;

         // end;




          //CNPJ
          //dataPER := Q_NFNFI_DEST_CGC.Value;
          dataPER := qrAux.fieldByName('clif_cgccpf').AsString;
          dataPER := Funcoes.ControlaCNPJ(dataPER);
          strdata := copy(dataPER,0,14);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + ' ';




          //INSCRIÇÃO
          dataPER := Q_NFNFI_DEST_INSCRG.Value;
          dataPER := StringReplace(dataPER, '.','',[RFREPLACEALL]);
          VER := 20 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          dataPER := dataPER + ' ';
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';

           //CODIGO DIPAM-B
          if Q_NFNFI_DEST_UF_SIGLA.AsString = 'SP' then
          begin
               sLinha := sLinha + '23';
               sLinha := sLinha + ' ';
          end
          else
          begin
               sLinha := sLinha + '00';
               sLinha := sLinha + ' ';
          end;


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select MUN_NOME,DIPAM from municipio') ;
          Q_AUX2.SQL.add('where mun_Id = ' + Q_NFMUN_ID.asstring) ;
          Q_AUX2.open  ;

          //MUNICIPIO DIPAM-B
          dataPER := Q_AUX2.fieldbyname('DIPAM').AsString;
          strdata := copy(dataPER,0,4);
          dataPER := strdata;

          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


           //EXCLUIR DA DIPI
          sLinha := sLinha + 'N';
          sLinha := sLinha + ' ';


            //ENDERECO
          dataPER := Funcoes.RemoveAcentos(Q_NFNFI_DEST_ENDERECO.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //CEP
          dataPER := Q_NFNFI_DEST_CEP.AsString;
          strdata := copy(dataPER,0,8);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 8 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


          //BAIRRO
          dataPER := Funcoes.RemoveAcentos(Q_NFNFI_DEST_BAIRRO.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //CIDADE
          dataPER :=  Funcoes.RemoveAcentos(Q_AUX2.fieldbyname('MUN_NOME').AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //INCRICAO MUNICIPAL
          sLinha := sLinha + '          ';
          //sLinha := sLinha + ' ';

           //digito INCRICAO MUNICIPAL
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

           //cidade GISS
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 61 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + '   ' ;

         // SLINHA := SLINHA + #13#10;


          f.Add(sLinha) ;
          Application.ProcessMessages;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Q_NF.Next;

        end;
        F.ADD('FIM DE ARQUIVO');
        f.SaveToFile(SaveDialog1.FileName);
        ShowMessage('Arquivo gerado com sucesso!!!');

     finally

         ProgressBar1.Position := 0;
         pnlProgress.Visible := False;
         ProgressBar1.Visible := False;
         lblExport.Visible := False;
         FreeAndNil(f);

     end;     


             }








end;

procedure TFLivroFiscal.LivroEntrada;
const
  BRANCOA = ' ';
  BRANCON = '0';
  Brancos = '                                                                                                                                                                             ' ;
var
   POSICAOVIRG : integer ;
   FText: TextFile;
   sLinha : string;
begin
    {
     DATA_IN := 0.0;
     DATA_FI := 0.0;
     DATA_INI := MaskEdit1.Text;
     DATA_FIM := MaskEdit2.Text;

     Assignfile(FText,Path);
        Rewrite(FText);

     DATACO := DATA_INI;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_INI2 := AUX;

     DATACO := DATA_FIM;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_FIM2 := AUX;


     DATA_IN := strtodate(MaskEdit1.Text);
     DATA_FI := strtodate(MaskEdit2.Text);

     Q_NF.SQL.CLEAR;
     Q_NF.SQL.ADD('SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
     Q_NF.SQL.ADD('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A.            ');
     Q_NF.SQL.ADD('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX, DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A.                     ');
     Q_NF.SQL.ADD('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.      ');
     Q_NF.SQL.ADD('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.     ');
     Q_NF.SQL.ADD('	NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  ');
     Q_NF.SQL.ADD('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.     ');
     Q_NF.SQL.ADD('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.                          ');
     Q_NF.SQL.ADD('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.        ');
     Q_NF.SQL.ADD('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,    ');
     Q_NF.SQL.ADD('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.    ');
     Q_NF.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.UF_SIGLA  ,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,(C.CLIN_ENDERECO +' + '''' + ' ' + '''' + ' + C.CLIN_ENDERECO_COMPL ) as ENDE, C.CLIN_ENDERECO_BAIRRO,  ');
     Q_NF.SQL.ADD('C.UF_SIGLA,C.CLIN_CEP,C.MUN_ID,C.CLIN_RAZA, C.CLIN_ID ');
     Q_NF.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C ')  ;
     Q_NF.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
     Q_NF.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
     Q_NF.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
     Q_NF.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
     Q_NF.SQL.Add('AND (A.TDOC_ID = 2 OR A.TDOC_ID = 4)');
     Q_NF.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) ') ;

     Q_NF.OPEN;
     Q_NF.Last;
     ProgressBar1.Max := Q_NF.RecordCount;
     Q_NF.First;
     //f :=TStringList.Create;
     ProgressBar1.Position := 0;


    // Sleep(2000);
     Application.ProcessMessages;
     try
     while not Q_NF.eof do
     begin
          sLinha := '' ;

          //ESPECIE 03
          sLinha := sLinha + 'NF  ';

          //SERIE  03
          dataPER := Q_NFNFI_SERIE.AsString;
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //NUMERO DA NF  06
          dataPER := Q_NFNFI_NUMERO.AsString;
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
           sLinha := sLinha + dataPER + ' ';


          //forma de pagto  01
           sLinha := sLinha + '1'+ ' ';

          //Data Entrada 08
          AUX2 := Q_NFNFI_DEMI.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';

          //Data Emissao  08
          AUX2 := Q_NFNFI_DEMI.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';

          //EMITENTE
          sLinha := sLinha + '     ' + ' ';

          //NATUREZA
          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select CFA_CODI from faturamento') ;
          Q_AUX2.SQL.add('where CFA_ID =  ' + Q_NFCFA_ID.asstring ) ;
          Q_AUX2.open  ;

          dataPER := Q_AUX2.FieldByName('CFA_CODI').asstring;
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //INCLUIR BSE CRED PIS/COFINS
          sLinha := sLinha + 'N';
           sLinha := sLinha + ' ';


          //adiciona uf
          dataPER := Q_NFUF_SIGLA.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //CLASS.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          // sLinha := sLinha + ' ';

          //COMPLE.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //VALOR CONTABIL
          dataPER := formatfloat('00000000000.00',Q_NFNFI_TOTA.asfloat);
          dataPER := StringReplace(dataPER,',','.',[rfReplaceAll]);
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select INF_AICM from nf_ITENS') ;
          Q_AUX2.SQL.add('where NFI_CODI =  ' + Q_NFNFI_CODI.asstring ) ;
          Q_AUX2.open  ;


          //BASE DO ICMS 1
          if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then begin
                   dataPER := formatfloat('#0.00',Q_NFNFI_BICM.asfloat);
                   POSICAOVIRG := POS(',',dataPER) ;
                   strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                   dataPER := strdata;
          end else begin
                  dataPER := formatfloat('00000000000.00',0);
                  POSICAOVIRG := POS(',',dataPER) ;
                  strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                  dataPER := strdata;
           end ;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 1
          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_AUX2.fieldbyname('INF_AICM').AsFloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;

          VER := 5 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //VALOR DO ICMS 1
          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_NFNFI_VICM.asfloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00000000000.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //BASE DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 2
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 3
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 4
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ISENTOS DE ICMS
          dataPER := formatfloat('00000000000.00',Q_NFNFI_TOTA.asfloat);
          dataPER := StringReplace(dataPER,',','.',[rfReplaceAll]);
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //OUTROS DE ICMS

          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


          //BASE IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_BIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO IPI
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';


          //VALOR DO IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_VIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

           //ISENTOS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ICMS RETIDO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //IPI INCLUSO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS IPIS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS VALORES
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


          //OBSERVACOES
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + ' ';

          //TIPO DE IPI
          sLinha := sLinha + ' ';
          sLinha := sLinha + ' ';

          //PIS ADUANEIRO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';

          //COFINS ADUANEIRO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';

          //REDUCAO PIS
          sLinha := sLinha + '000.00';
          sLinha := sLinha + ' ';




           //layout novo
           //tipo receita
           sLinha := sLinha + Funcoes.writeString('', 3) + ' ';

           //base icms subst
           sLinha := sLinha + '00000000000.00' + ' ';
           //aliq icms subs
           sLinha := sLinha + '00.00' + ' ';
           //valor icms subs
           sLinha := sLinha + '00000000000.00' + ' ';
           //emitente da nota
           sLinha := sLinha + 'P ';
           //codigo modelo fiscal
           sLinha := sLinha + '  ' + ' ';
           //codigo da situaçao fiscal
           sLinha := sLinha + '  ' + ' ';
           //via de transporte
           sLinha := sLinha + '0' + ' ';
           //tipo de operação
           sLinha := sLinha + ' ' + ' ';
           //cnpj da consessionaria
           sLinha := sLinha + Funcoes.writeString('', 14) + ' ';
           //sigla da consessionaria
           sLinha := sLinha + '  ' + ' ';
           //brancos
           sLinha := sLinha + Funcoes.writeString('', 3);

           //Razao social
          dataPER := Funcoes.RemoveAcentos(Q_NFCLIN_RAZA.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //CNPJ
          dataPER := Q_NFCLIN_CGCCPF.AsString;
          dataPER := Funcoes.ControlaCNPJ(dataPER);
          strdata := copy(dataPER,0,14);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + ' ';

          
          //INSCRIÇÃO
          dataPER := Q_NFCLIN_INSCRG.Value;
          dataPER := strdata;
          VER := 20 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';

           //CODIGO DIPAM-B
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select MUN_NOME,DIPAM from municipio') ;
          Q_AUX2.SQL.add('where mun_Id = ' + Q_NFMUN_ID.asstring) ; 
          Q_AUX2.open  ;

          //MUNICIPIO DIPAM-B
          dataPER := Q_AUX2.fieldbyname('DIPAM').AsString;
          strdata := copy(dataPER,0,4);
          dataPER := strdata;

          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //MUNICIPIO
          IF  Q_AUX2.fieldbyname('DIPAM').AsString = '1004' then begin
              sLinha := sLinha + '1';
              sLinha := sLinha + ' ';
          end else begin
              sLinha := sLinha + '2';
              sLinha := sLinha + ' ';
          end ;

           //EXCLUIR DA DIPI
          sLinha := sLinha + 'N';
          sLinha := sLinha + ' ';


           //ENDERECO
          dataPER := Funcoes.RemoveAcentos(Q_NFENDE.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //CEP
          dataPER := Q_NFCLIN_CEP.AsString;
          strdata := copy(dataPER,0,8);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 8 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //BAIRRO
          dataPER := Funcoes.RemoveAcentos(Q_NFCLIN_ENDERECO_BAIRRO.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //CIDADE
          dataPER :=  Funcoes.RemoveAcentos( Q_AUX2.fieldbyname('MUN_NOME').AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //UF
          dataPER := Q_NFUF_SIGLA_1.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //INCRICAO MUNICIPAL
          sLinha := sLinha + '          ';
          sLinha := sLinha + ' ';

           //digito INCRICAO MUNICIPAL
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

           //cidade GISS
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

          //valor do frete
          dataPER := formatfloat('0000000.00',Q_NFNFI_VFRE.asfloat) + ' ';
          sLinha := sLinha + StringReplace(dataPER, ',','.', [rfReplaceAll]);
          //valor do seguro
          dataPER := formatfloat('0000000.00',Q_NFNFI_VSEG.asfloat) + ' ';
          sLinha := sLinha + StringReplace(dataPER, ',','.', [rfReplaceAll]);

          //outras despesas
          sLinha := sLinha + '0000000.00' + ' ';

         //desconto
          sLinha := sLinha + '0000000.00' + ' ';

          //pais
          sLinha := sLinha + Funcoes.writeString('', 5) + ' ';

          //tipo logradouro
          sLinha := sLinha + Funcoes.writeString('RUA', 15) + ' ';

          //NUMERO DO ENDEREÇO
          sLinha := sLinha + Funcoes.writeString('', 6) + ' ';

          //COMPLEMENTO DO ENDEREÇO
          sLinha := sLinha + Funcoes.writeString('', 30) + ' ';

          //CHASSI DO VEIC
          sLinha := sLinha + Funcoes.writeString('', 17) + ' ';

          //COD OBS
          sLinha := sLinha + Funcoes.writeString('', 3) + ' ';

          //N NF DEVOLVIDA
          sLinha := sLinha + Funcoes.writeString('', 8) + ' ';

          //TIPO ICMS SUBS
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';

          //ORIGEM DA MERCADORIA
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';

          //SIT TRIBUTARIA
          sLinha := sLinha + Funcoes.writeString('', 2) + ' ';

          //TP ISENÇÃO
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';

          //REDUÇÃO
          sLinha := sLinha + '00.00' + ' ';


          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 36 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + ' ';

        // SLINHA := SLINHA + #13#10;


          //f.Add(sLinha) ;
          Writeln(ftext, slinha);
          Application.ProcessMessages;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Q_NF.Next;
        end;

        Writeln(ftext, 'FIM DE ARQUIVO');
        CloseFile(ftext);
        /////SaveToFile(SaveDialog1.FileName);
        ShowMessage('Arquivo gerado com sucesso!!!');
     finally
        // FreeAndNil(F);
         ProgressBar1.Position := 0;

         ProgressBar1.Visible := False;
         pnlProgress.Visible := False;
         lblExport.Visible := False;
     end;  }








     //versao anterior 900 posiçoes


     DATA_IN := 0.0;
     DATA_FI := 0.0;
     DATA_INI := MaskEdit1.Text;
     DATA_FIM := MaskEdit2.Text;

     DATACO := DATA_INI;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_INI2 := AUX;

     DATACO := DATA_FIM;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_FIM2 := AUX;


     DATA_IN := strtodate(MaskEdit1.Text);
     DATA_FI := strtodate(MaskEdit2.Text);

     Q_NF.SQL.CLEAR;
     Q_NF.SQL.ADD('SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
     Q_NF.SQL.ADD('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A.            ');
     Q_NF.SQL.ADD('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX, DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A.                     ');
     Q_NF.SQL.ADD('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.      ');
     Q_NF.SQL.ADD('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.     ');
     Q_NF.SQL.ADD('	NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  ');
     Q_NF.SQL.ADD('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.     ');
     Q_NF.SQL.ADD('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.                          ');
     Q_NF.SQL.ADD('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.        ');
     Q_NF.SQL.ADD('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,    ');
     Q_NF.SQL.ADD('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.    ');
     Q_NF.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.UF_SIGLA  ,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,(C.CLIN_ENDERECO +' + '''' + ' ' + '''' + ' + C.CLIN_ENDERECO_COMPL ) as ENDE, C.CLIN_ENDERECO_BAIRRO,  ');
     Q_NF.SQL.ADD('C.UF_SIGLA,C.CLIN_CEP,C.MUN_ID,C.CLIN_RAZA, C.CLIN_ID ');
     Q_NF.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C ')  ;
     Q_NF.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
     Q_NF.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
     Q_NF.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
     Q_NF.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
     Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
     Q_NF.SQL.Add('AND (A.TDOC_ID = 2 OR A.TDOC_ID = 4)');
     Q_NF.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) ') ;

     Q_NF.OPEN;
     Q_NF.Last;
     ProgressBar1.Max := Q_NF.RecordCount;
     Q_NF.First;
     f :=TStringList.Create;
     ProgressBar1.Position := 0;


    // Sleep(2000);
     Application.ProcessMessages;
     try
     while not Q_NF.eof do
     begin
          sLinha := '' ;

          //ESPECIE 03
          sLinha := sLinha + 'NF  ';

          //SERIE  03
          dataPER := Q_NFNFI_SERIE.AsString;
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //NUMERO DA NF  06
          dataPER := Q_NFNFI_NUMERO.AsString;
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
           sLinha := sLinha + dataPER + ' ';


          //forma de pagto  01
           sLinha := sLinha + '1'+ ' ';

          //Data Entrada 08
          AUX2 := Q_NFNFI_DEMI.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';

          //Data Emissao  08
          AUX2 := Q_NFNFI_DEMI.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';

          //EMITENTE
          sLinha := sLinha + '     ' + ' ';

          //NATUREZA
          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select CFA_CODI from faturamento') ;
          Q_AUX2.SQL.add('where CFA_ID =  ' + Q_NFCFA_ID.asstring ) ;
          Q_AUX2.open  ;

          dataPER := Q_AUX2.FieldByName('CFA_CODI').asstring;
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //INCLUIR BSE CRED PIS/COFINS
          sLinha := sLinha + 'N';
           sLinha := sLinha + ' ';


          //adiciona uf
          dataPER := Q_NFUF_SIGLA.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //CLASS.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';

          //COMPLE.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //VALOR CONTABIL
          dataPER := formatfloat('00000000000.00',Q_NFNFI_TOTA.asfloat);
          dataPER := StringReplace(dataPER,',','.',[rfReplaceAll]);
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select INF_AICM from nf_ITENS') ;
          Q_AUX2.SQL.add('where NFI_CODI =  ' + Q_NFNFI_CODI.asstring ) ;
          Q_AUX2.open  ;


          //BASE DO ICMS 1
          if Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0 then begin
                   dataPER := formatfloat('#0.00',Q_NFNFI_BICM.asfloat);
                   POSICAOVIRG := POS(',',dataPER) ;
                   strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                   dataPER := strdata;
          end else begin
                  dataPER := formatfloat('00000000000.00',0);
                  POSICAOVIRG := POS(',',dataPER) ;
                  strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
                  dataPER := strdata;
           end ;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 1
          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_AUX2.fieldbyname('INF_AICM').AsFloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;

          VER := 5 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //VALOR DO ICMS 1
          if (Q_AUX2.fieldbyname('INF_AICM').AsFloat <> 0)  and
             (Q_NFNFI_VICM.asfloat > 0) then begin
               dataPER := formatfloat('#0.00',Q_NFNFI_VICM.asfloat);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end else begin
               dataPER := formatfloat('00000000000.00',0);
               POSICAOVIRG := POS(',',dataPER) ;
               strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
               dataPER := strdata;
          end ;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //BASE DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 2
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 3
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 4
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ISENTOS DE ICMS
          dataPER := formatfloat('00000000000.00',Q_NFNFI_TOTA.asfloat);
          dataPER := StringReplace(dataPER,',','.',[rfReplaceAll]);
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //OUTROS DE ICMS

          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


          //BASE IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_BIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO IPI
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';


          //VALOR DO IPI
          dataPER := formatfloat('#0.00',Q_NFNFI_VIPI.asfloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

           //ISENTOS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ICMS RETIDO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //IPI INCLUSO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS IPIS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS VALORES
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';


          //OBSERVACOES
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + ' ';

          //TIPO DE IPI
          sLinha := sLinha + ' ';
          sLinha := sLinha + ' ';

          //PIS ADUANEIRO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';

          //COFINS ADUANEIRO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';

          //REDUCAO PIS
          sLinha := sLinha + '000.00';
          sLinha := sLinha + ' ';

          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 73 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           //sLinha := sLinha + ' ';


           //Razao social
          dataPER := Funcoes.RemoveAcentos(Q_NFCLIN_RAZA.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //CNPJ
          dataPER := Q_NFCLIN_CGCCPF.AsString;
          dataPER := Funcoes.ControlaCNPJ(dataPER);
          strdata := copy(dataPER,0,14);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + ' ';

          
          //INSCRIÇÃO
          dataPER := Q_NFCLIN_INSCRG.Value;
          dataPER := strdata;
          VER := 20 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';

           //CODIGO DIPAM-B
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';


          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select MUN_NOME,DIPAM from municipio') ;
          Q_AUX2.SQL.add('where mun_Id = ' + Q_NFMUN_ID.asstring) ; 
          Q_AUX2.open  ;

          //MUNICIPIO DIPAM-B
          dataPER := Q_AUX2.fieldbyname('DIPAM').AsString;
          if Trim(dataPER) = '' then
                dataPER := '0000';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;

          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //MUNICIPIO
          IF  Q_AUX2.fieldbyname('DIPAM').AsString = '1004' then begin
              sLinha := sLinha + '1';
              sLinha := sLinha + ' ';
          end else begin
              sLinha := sLinha + '2';
              sLinha := sLinha + ' ';
          end ;

           //EXCLUIR DA DIPI
          sLinha := sLinha + 'N';
          sLinha := sLinha + ' ';


           //ENDERECO
          dataPER := Funcoes.RemoveAcentos(Q_NFENDE.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //CEP
          dataPER := Q_NFCLIN_CEP.AsString;
          strdata := copy(dataPER,0,8);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 8 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //BAIRRO
          dataPER := Funcoes.RemoveAcentos(Q_NFCLIN_ENDERECO_BAIRRO.AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //CIDADE
          dataPER :=  Funcoes.RemoveAcentos( Q_AUX2.fieldbyname('MUN_NOME').AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //UF
          dataPER := Q_NFUF_SIGLA_1.AsString;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //INCRICAO MUNICIPAL
          sLinha := sLinha + '          ';
          sLinha := sLinha + ' ';

           //digito INCRICAO MUNICIPAL
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

           //cidade GISS
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 86 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + ' ';

        // SLINHA := SLINHA + #13#10;


          f.Add(sLinha) ;
          Application.ProcessMessages;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Q_NF.Next;
        end;
        F.ADD('FIM DE ARQUIVO');
        f.SaveToFile(SaveDialog1.FileName);
        ShowMessage('Arquivo gerado com sucesso!!!');
     finally
         FreeAndNil(F);
         ProgressBar1.Position := 0;

         ProgressBar1.Visible := False;
         pnlProgress.Visible := False;
         lblExport.Visible := False;
     end;







end;

procedure TFLivroFiscal.BitBtn2Click(Sender: TObject);
var d1, d2 : TDateTime;
begin
 if (MaskEdit1.text = '  /  /    ') or (MaskEdit2.text = '  /  /    ') then
   begin
        MessageBox(Self.Handle, 'Preencha todos os campos.', 'Erro', MB_OK + MB_ICONERROR);
        abort;
   end;


    try
        d1 := StrToDate(MaskEdit1.Text);
        d2 := StrToDate(MaskEdit2.Text);
    except
        MessageBox(Self.Handle, 'Data Invalida', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end       ;

    qrValores.Params[0].AsString := FormatDateTime('YYYYMMDD', D1);
    qrValores.Params[1].AsString := FormatDateTime('YYYYMMDD', D2);
    qrValores.ExecSQL;



    SaveDialog1.Execute;
    Path := SaveDialog1.FileName;
    pnlProgress.Visible := True;
    ProgressBar1.Visible := True;
    lblExport.Visible := True;
    Application.ProcessMessages;

    if rgbLivroFiscal.ItemIndex =  0 then
        LivroSaida
    else if rgbLivroFiscal.ItemIndex =  1 then
        LivroCRT
    else if rgbLivroFiscal.ItemIndex =  2 then
        LivroEntrada
    else if rgbLivroFiscal.ItemIndex =  3 then
        CARGAS_NF
    else if rgbLivroFiscal.ItemIndex =  4 then
        DIPI
    else if rgbLivroFiscal.ItemIndex =  5 then
        LivroCTR_MMAA;


    pnlProgress.Visible := False;
    ProgressBar1.Visible := False;
    lblExport.Visible := False;
end;

procedure TFLivroFiscal.FormShow(Sender: TObject);
begin
    MaskEdit1.Text := FormatDateTime('dd/mm/yyyy', date);
    MaskEdit2.Text := FormatDateTime('dd/mm/yyyy', date);
    qrFiltroCliente.Open;
end;

procedure TFLivroFiscal.LivroCRT;
const
  BRANCOA = ' ';
  BRANCON = '0';
  Brancos = '                                                                                                                                                                             ' ;

var
   POSICAOVIRG : integer ;
   sLinha : string;
   Nota, NotasOE : string;
   PosBranco : Integer;
   Inscricao : string;
   Notasembarra : string;
   p : Integer;
   FText: TextFile;
   SQL : TStringList;

   CFOP : string;

   NBF : Boolean;

   UF_CLIENTE : string;
   d1, d2 : TDateTime;
begin

    try
        d1 := StrToDate(MaskEdit1.Text);
        d2 := StrToDate(MaskEdit2.Text);
    except
        MessageBox(Self.Handle, 'Data Invalida', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end       ;

    qrValores.Params[0].AsString := FormatDateTime('YYYYMMDD', D1);
    qrValores.Params[1].AsString := FormatDateTime('YYYYMMDD', D2);
    qrValores.ExecSQL;

      Assignfile(FText,Path);
      Rewrite(FText);



     DATA_IN := 0.0;
     DATA_FI := 0.0;
     DATA_INI := MaskEdit1.Text;
     DATA_FIM := MaskEdit2.Text;

     DATACO := DATA_INI;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_INI2 := AUX;

     DATACO := DATA_FIM;
     strdata := DATACO;
     AUX := copy(strdata,0,10);
     strdata := copy(AUX,7,4);
     dataPER := strdata;
     strdata := copy(AUX,4,2);
     dataPER := dataPER + strdata;
     strdata := copy(AUX,0,2);
     dataPER := dataPER + strdata;
     AUX := dataPER;
     VER := 8 - length(AUX);
     DATA_FIM2 := AUX;


     DATA_IN := strtodate(MaskEdit1.Text);
     DATA_FI := strtodate(MaskEdit2.Text);

     SQL := TStringList.Create;
     {CHAMA AS CRT DO BANCO DE DADOS}

      SQL.Add('Select a.ord_conh, A.*, B.CFA_CODI, C.UF_SIGLA from ORDEM_COLETA_ENTREGA A left outer join FATURAMENTO B on a.cfa_id = b.cfa_id, CLIENTENBF C WHERE   A.CLIN_ID = C.CLIN_ID');
      SQL.Add(' AND (CONVERT(CHAR(10), ORD_DATA, 112) >= :DATA1 AND  CONVERT(CHAR(10), ORD_DATA, 112) <= :DATA2   )');
      if cboCliente.Text <> '' then
          SQL.Add( '  and  A.CLIN_ID = ' + cboCliente.LookupValue );
      SQL.Add('AND ORD_STATUS = ''E'' ');
      SQL.Add('   ORDER BY ORD_CONH ');
      //SQL.Add('ORDER BY C.UF_SIGLA ');


//

     qrConhecimento_.CLOSE;
     qrConhecimento_.SQL.Clear;
     qrConhecimento_.SQL := SQL;
     qrConhecimento_.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
     qrConhecimento_.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
     qrConhecimento_.OPEN;
     qrConhecimento_.Last;
     qrConhecimento_.First;




     ProgressBar1.Max :=  qrConhecimento_.RecordCount;
     lblExport.Caption := 'Exportando dados do CTRC';

     //f :=TStringList.Create;
     ProgressBar1.Position := 0;


     //Sleep(500);
     Application.ProcessMessages;
     try
     while not qrConhecimento_.eof do
     begin

         qrClienteFinal.Close;
         qrClienteFinal.Params[0].AsInteger := qrConhecimento_CLIN_ID.Value;
         qrClienteFinal.Open;

         NBF := False;
         if  Copy(qrClienteFinalCLIN_RAZA.Value,1,6) = 'N.B.F.' then
         begin
             NBF := True;
             qrClienteNBFREmetente.CLOSE;
             qrClienteNBFREmetente.Params[0].AsInteger := qrConhecimento_CLIF_ID.Value;
             qrClienteNBFREmetente.Open;
            // qrClienteFinal.CLOSE;
         end;

         //adicionado por miguel para everificar os dados do cliente
         NBF := False;




          sLinha := '' ;

          //ESPECIE 03
          sLinha := sLinha + 'CTR ';

          //SERIE  03
          dataPER := 'U';//qrNotaFiscalNFI_SERIE.Value;
          strdata := copy(dataPER,0,3);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 3 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


          //NUMERO DA CRTC inciial 06
          dataPER := trim(qrConhecimento_ORD_CONH.AsString) ;
          dataPER := StringReplace(dataPER, '-P', '', [rfReplaceAll]);
          strdata := copy(dataPER,0,7);
          dataPER := strdata;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       dataPER := '0' + dataPER;
          end;
           sLinha := sLinha + dataPER + ' ';


          //NUMERO DA NF final 06
          dataPER := '000000';
          strdata := copy(dataPER,0,6);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 6 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + ' ';

          //adiciona uf   //VERIFICA SE O REMETENTE É A NBF SE FOR COLOCA OS DADOS DO DESTINATARIO
          IF NBF = False then
             UF_CLIENTE := qrConhecimento_UF_SIGLA.Value
          else
             UF_CLIENTE := qrClienteNBFREmetenteUF_SIGLA.Value;


          dataPER := UF_CLIENTE;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';





          //Data EMISSAO
          AUX2 := qrConhecimento_ORD_DATA.Value;
          strdata := formatdatetime('DDMMYYYY',AUX2);
          sLinha := sLinha + strdata + ' ';


          //forma de pagto  01
          //************* VRIFICA NO BANCO DE DADOS
           sLinha := sLinha + '1'+ ' ';


          //NATUREZA   optado por alberto para acertar os cfop, já que não usam 5351 e 6351





         { if dataPER = '' then
            if UF_CLIENTE = 'SP' then
                dataPER := '5352' // alterado por solicitação do alberto '5360'
            else
                dataPER := '6352';



          if (dataPER = '5351') then
                dataPER := '5352'; // alterado por solicitação do alberto '5360'

          if (dataPER = '6351') then
                dataPER := '6352';

          IF UF_CLIENTE = 'SP' then
                dataPER := '5352' // alterado por solicitação do alberto '5360'
          else
                dataPER := '6352';  }


          dataPER := qrConhecimento_CFA_CODI.Value;
          IF Trim(dataPER) = '' then
             dataPER := '5352';

          if Copy(dataPER, 1, 1) = '5' then
                dataPER := '5352'
          else
                dataPER := '6352';


          CFOP := dataPER;

          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';








          //Cliente
          dataPER := FormatFloat('00000',0);
          sLinha := sLinha + dataPER + ' ';

          //  TIPO DE PIS
          sLinha := sLinha + '1'+ ' ';




          //CLASS.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha ;


          //COMPLE.CONTABIL
          dataPER := '';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;
          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
           sLinha := sLinha + ' ';


          //VALOR CONTABIL
          IF qrConhecimento_ORD_STATUS.Value <> 'C' then
                dataPER := formatfloat('00000000000.00',Valor_desconto(qrConhecimento_CLIN_ID.Value))
          else
                dataPER := formatfloat('00000000000.00',0);

          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';




          //BASE DO ICMS 1
         if qrConhecimento_ORD_ALIQ.AsFloat > 0 then
         dataPER := formatfloat('00000000000.00',qrConhecimento_ORD_TOTALPREST.AsFloat)
         else
          dataper := '00000000000.00';
         POSICAOVIRG := POS(',',dataPER) ;
         strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
         dataPER := strdata;

         IF qrConhecimento_ORD_STATUS.Value = 'C' then
            dataper := '00000000000.00';


        //solicitado por cardoso
      {  if (CFOP = '5352') then
            dataper := '00000000000.00'; }


          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //ALIQUOTA DO ICMS 1
          dataPER := formatfloat('00.00',qrConhecimento_ORD_ALIQ.AsFloat);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          IF qrConhecimento_ORD_STATUS.Value = 'C' then
            dataper := '00.00';


          VER := 5 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';




          //VALOR DO ICMS 1
          dataPER := formatfloat('00000000000.00',qrConhecimento_ORD_VLR_ICMS.Value);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

           IF qrConhecimento_ORD_STATUS.Value = 'C' then
            dataper := '00000000000.00';

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //BRANCOS
          dataPER := '';
          VER := 92 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          {//BASE DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 2
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 2
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 3
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 3
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //BASE DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ALIQUOTA DO ICMS 4
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';

          //VALOR DO ICMS 4
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';
           }


          //VALOR DE ACRESCIMO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //ISENTOS DE ICMS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS DE ICMS
          dataPER := formatfloat('00000000000.00',qrConhecimento_ORD_TOTALPREST.Value);


          IF qrConhecimento_ORD_STATUS.Value <> 'C' then
                dataPER := formatfloat('00000000000.00',Valor_desconto(qrConhecimento_CLIN_ID.Value))
          else
                dataPER := formatfloat('00000000000.00',0);

          dataper := StringReplace(dataPER,',','.',[rfReplaceAll]);

          IF (CFOP = '6352') or (CFOP = '5352') then
            dataper := '00000000000.00';

          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          /////////////////////////////////////////////////////////////////////

          //BASE IPI
          //dataPER := formatfloat('00000000000.00',qrConhecimento_ORD_TOTALPREST.Value);
          dataPER := formatfloat('00000000000.00',0);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;


          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

          //ALIQUOTA DO IPI
          sLinha := sLinha + '00.00';
          sLinha := sLinha + ' ';


          //VALOR DO IPI
          dataPER := formatfloat('00000000000.00',0);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

           //ISENTOS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS DE IPI
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //aliq. pis/confins
          sLinha := sLinha + '0' + ' ';


          //ICMS RETIDO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

           //IPI INCLUSO
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS IPIS
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //OUTROS VALORES
          dataPER := formatfloat('00000000000.00',0);
          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


          //OBSERVACOES
          dataPER := '';
          IF qrConhecimento_ORD_STATUS.Value = 'C' then
            dataper := 'Conhecimento Cancelado'
          else
            dataPER := qrConhecimento_ORD_OBS.AsString;

          dataPER := Copy(dataPER, 1, 50);
          sLinha := sLinha + dataPER;

          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           sLinha := sLinha + ' ';

          //TIPO DE IPI
          sLinha := sLinha + ' ';
          sLinha := sLinha + ' ';

         //VLR PIS RETIDO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';


         //VL. COFINS RETIDO
          sLinha := sLinha + '0000000.00';
          sLinha := sLinha + ' ';



         // INFORMAR BASE DO PIS COFINS
         sLinha := sLinha + 'N' + ' ';



         //base pis cofins
         // sLinha := sLinha + '00000000000.00';
         // sLinha := sLinha + ' ';
         IF qrConhecimento_ORD_STATUS.Value <> 'C' then
                dataPER := formatfloat('00000000000.00',Valor_desconto(qrConhecimento_CLIN_ID.Value))
          else
                dataPER := formatfloat('00000000000.00',0);

          POSICAOVIRG := POS(',',dataPER) ;
          strdata := copy((copy(dataPER,1,(POSICAOVIRG-1)) + '.' +  copy(dataPER,(POSICAOVIRG+1),2)),0,14);
          dataPER := strdata;

          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';

         //INFORMAR BASE DO IRPJ/CSSL
         sLinha := sLinha + 'N' + ' ';

         //BASE IRPJ / CSSL
          sLinha := sLinha + '00000000000.00';
          sLinha := sLinha + ' ';

          //novo layout
          sLinha := sLinha + Funcoes.writeString('000', 3) + ' ';//tipo  receita
          sLinha := sLinha + '00000000000.00' + ' ';//base icms subs
          sLinha := sLinha + '00.00' + ' '; //aliq icms subs
          sLinha := sLinha + '00000000000.00' + ' '; //valor icms subs
          sLinha := sLinha + Funcoes.writeString('08', 2) + ' ';//cod doc fiscal


          if qrConhecimento_ORD_STATUS.AsString = 'C' then  //verifica se é cancelado
              sLinha := sLinha + Funcoes.writeString('02', 2) + ' '//sit doc fiscal
          else  if qrConhecimento_ORD_STATUS.AsString = 'E' then   //normal
              sLinha := sLinha + Funcoes.writeString('00', 2) + ' '
          else if qrConhecimento_E_COMPLEMENTAR.AsString = 'S' then  //complemento de CTRC
              sLinha := sLinha + Funcoes.writeString('06', 2) + ' ' ;    //sit doc fiscal



          sLinha := sLinha + Funcoes.writeString('0', 1) + ' ';//via transp
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';//tipo operacao
          sLinha := sLinha + Funcoes.writeString('', 14) + ' '; //cnpj consessionaria
          sLinha := sLinha + Funcoes.writeString('1', 1) + '';//modalidade do frete

          {
          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 1 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          // sLinha := sLinha + '';
                            }
         //******CONFORME CONVERSADO COM ALBERTO COMEÇAM OS DADOS DO
         //******CLIENTENBF

           //Razao social
           IF NBF = False then
              dataPER := Funcoes.RemoveAcentos(qrClienteFinalCLIN_RAZA.Value)
           else
              dataPER := Funcoes.RemoveAcentos(qrClienteNBFREmetenteCLIF_RAZA.Value);

          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


           //UF
          dataPER := UF_CLIENTE;
          strdata := copy(dataPER,0,2);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 2 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

          //MUNICIPIO ZFM/ALC
          sLinha := sLinha + '00000' + ' ';


          //CNPJ
          dataPER := qrClienteFinalCLIN_CGCCPF.Value;
          dataPER := Funcoes.ControlaCNPJ(dataPER);
           IF NBF = False then
              dataPER := Funcoes.RemoveAcentos(qrClienteFinalCLIN_CGCCPF.Value)
           else
              dataPER := Funcoes.RemoveAcentos(qrClienteNBFREmetenteCLIF_CGCCPF.Value);
          strdata := copy(dataPER,0,14);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 14 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


          //INSCRIÇÃO
          IF NBF = False then
              Inscricao :=  StringReplace(qrClienteFinalCLIN_INSCRG.AsString, '.','',[rfReplaceAll])
          ELSE
              Inscricao :=  StringReplace(qrClienteNBFREmetenteCLIF_INSCRG.AsString, '.','',[rfReplaceAll]);
          dataPER := Inscricao ;
          strdata := copy(dataPER,0,14);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 20 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + ' ';
          end;
          sLinha := sLinha + ' ';

           //CODIGO DIPAM-B
          if UF_CLIENTE = 'SP' then
          begin
               sLinha := sLinha + '23';
               sLinha := sLinha + ' ';
          end
          else
          begin
               sLinha := sLinha + '00';
               sLinha := sLinha + ' ';
          end;

          Q_AUX2.close ;
          Q_AUX2.SQL.clear ;
          Q_AUX2.SQL.add('select MUN_NOME,DIPAM from municipio') ;
          if qrClienteFinalMUN_ID.AsString <> '' then
          begin
                IF NBF = False then
                        Q_AUX2.SQL.add('where mun_Id = ' + qrClienteFinalMUN_ID.AsString)
                else
                        Q_AUX2.SQL.add('where mun_Id = ' + qrClienteNBFREmetenteMUN_ID.AsString);

          end
          else
                Q_AUX2.SQL.add('where mun_Id = ' + QuotedStr('0'));
          Q_AUX2.open  ;

          //MUNICIPIO DIPAM-B
          dataPER := Q_AUX2.fieldbyname('DIPAM').AsString;
          if Trim(dataPER) = '' then
                dataPER := '0000';
          strdata := copy(dataPER,0,4);
          dataPER := strdata;

          VER := 4 - length(dataPER);
          if VER >= 0 then
          begin
                  for I := VER downto 1 do
                          sLinha := sLinha + BRANCON;
          end;
          sLinha := sLinha + dataPER;
          sLinha := sLinha + ' ';


           //EXCLUIR DA DIPI
          sLinha := sLinha + 'N';
          sLinha := sLinha + ' ';


            //ENDERECO
          IF NBF = False then
                dataPER :=  Funcoes.RemoveAcentos(qrClienteFinalCLIN_ENDERECO.Value)
          ELSE
                dataPER :=  Funcoes.RemoveAcentos(qrClienteNBFREmetenteCLIF_ENDERECO.Value);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //CEP      3
          IF NBF = False then
                  dataPER := qrClienteFinalCLIN_CEP.Value
          else
                  dataPER := qrClienteNBFREmetenteCLIF_CEP.Value;

          strdata := copy(dataPER,0,8);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 8 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';


          //BAIRRO
          IF NBF = False then
                dataPER := Funcoes.RemoveAcentos(qrClienteFinalCLIN_ENDERECO_BAIRRO.Value)
          else
                dataPER := Funcoes.RemoveAcentos(qrClienteNBFREmetenteCLIF_ENDERECO_BAIRRO.Value);


          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';

           //CIDADE
          dataPER := Funcoes.RemoveAcentos(Q_AUX2.fieldbyname('MUN_NOME').AsString);
          strdata := copy(dataPER,0,50);
          dataPER := strdata;
          sLinha := sLinha + dataPER;
          VER := 50 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
          sLinha := sLinha + ' ';



           //INCRICAO MUNICIPAL
          sLinha := sLinha + '          ';
          //sLinha := sLinha + ' ';

           //digito INCRICAO MUNICIPAL
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';

           //cidade GISS
          sLinha := sLinha + '00';
          sLinha := sLinha + ' ';


           //valor frete
          dataPER := FormatFloat('0000000.00', qrConhecimento_ORD_VLR_FRETE.AsFloat);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

          //valor seguro
          dataPER := FormatFloat('0000000.00', qrConhecimento_ORD_SEGURO.AsFloat);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

          //valor outors
          dataPER := FormatFloat('0000000.00', qrConhecimento_ORD_VLR_OUTROS.AsFloat);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

         //valor desconto
          dataPER := FormatFloat('0000000.00', 0);
          dataPER := StringReplace(dataPER,',','.', [rfReplaceAll]);
          sLinha := sLinha + dataPER + ' ';

          sLinha := sLinha + Funcoes.writeString('', 9) + ' ';//suframa
          sLinha := sLinha + Funcoes.writeString('1058', 5) + ' ';//cod pais



          IF NBF = False then
                  dataPER := qrClienteFinalCLIN_LOGRADOURO.Value
          else
                  dataPER := qrClienteNBFREmetenteCLIF_LOGRADOURO.Value;
          sLinha := sLinha + Funcoes.writeString(dataPER, 15) + ' ';//logradouro



          IF NBF = False then
                  dataPER := qrClienteFinalCLIN_NUMERO.Value
          else
                  dataPER := qrClienteNBFREmetenteCLIF_NUMERO.Value;
          sLinha := sLinha + Funcoes.writeString(dataPER, 6) + ' ';//num endereço

          IF NBF = False then
                  dataPER := qrClienteFinalCLIN_ENDERECO_COMPL.Value
          else
                  dataPER := qrClienteNBFREmetenteCLIF_ENDERECO_COMPL.Value;


          sLinha := sLinha + Funcoes.writeString(dataPER, 30) + ' ';//compl ende
          sLinha := sLinha + Funcoes.writeString('', 2) + ' ';//uf consessionaria
          sLinha := sLinha + Funcoes.writeString('', 17) + ' ';//chassi do veic
          sLinha := sLinha + Funcoes.writeString('', 3) + ' ';//cod obs
          sLinha := sLinha + Funcoes.writeString('', 8) + ' ';//nf dev
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';//tipo icms subs
          sLinha := sLinha + Funcoes.writeString('0', 1) + ' ';//origem merc
          sLinha := sLinha + Funcoes.writeString('00', 2) + ' ';//sit trib
          sLinha := sLinha + Funcoes.writeString('', 1) + ' ';//tipo isessção
          sLinha := sLinha + Funcoes.writeString('00.00', 5) + ' ';//redução % icms

          //nota inicial
          sLinha := sLinha + Funcoes.writeString('', 9) + ' ';

          //nota final
          sLinha := sLinha + Funcoes.writeString('', 9) + ' ';

          //BRANCOS
          dataPER := '';
          sLinha := sLinha + dataPER;
          VER := 1 - length(dataPER);
          if VER >= 0 then
          begin
               for I := VER downto 1 do
                       sLinha := sLinha + BRANCOA;
          end;
           //sLinha := sLinha + ' ' ;//removidos dos campos para cr+lf

          // SLINHA := SLINHA + #13#10;


         // f.Add(sLinha) ;
         Writeln(ftext, slinha);


            // end;  //end  qrClienteFinal.IsEmpty
         // end;    //end   qrNotaFiscal.IsEmpty


         // end; // end while notas OE

          Application.ProcessMessages;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          qrConhecimento_.Next;

        end;
        //F.ADD('FIM DE ARQUIVO');
        Writeln(ftext, 'FIM DE ARQUIVO');
        CloseFile(ftext);
        //f.SaveToFile(SaveDialog1.FileName);
        ShowMessage('Arquivo gerado com sucesso!!!');
     finally

        // FreeAndNil(F);
         ProgressBar1.Position := 0;
         pnlProgress.Visible := False;
         ProgressBar1.Visible := False;
         lblExport.Visible := False;

     end;

end;

procedure TFLivroFiscal.rgbLivroFiscalClick(Sender: TObject);
begin
  IF rgbLivroFiscal.ItemIndex = 1 then
  begin
    cboCliente.Visible := True;
    Label7.Visible := True;
  end
  else
  begin
    cboCliente.Visible := False;
    Label7.Visible := False;
  end;

end;



function TFLivroFiscal.Valor_desconto(id: Integer): Double;
var Mensagem : string;
    desconto : Double;
    valor : Double;
    novo_valor : Double;
begin
// rotina que calcula o valor de desconto
    qrDesconto.Close;
    qrDesconto.Params[0].AsInteger := id;
    qrDesconto.Open;

    if (qrDescontoclin_desconto.AsString = '') or (qrDescontoclin_desconto.Value = 0) then
    begin
        Result := qrConhecimento_ORD_TOTALPREST.Value;
    end
    else
    begin
        if UpperCase(qrDescontouf_sigla.Value) = 'SP' then
        begin
            desconto := qrDescontoclin_desconto.Value;
            valor :=   qrConhecimento_ORD_TOTALPREST.Value;
            novo_valor := (valor * desconto) / 100;
            Result := valor - novo_valor;
        end
        else
           Result := qrConhecimento_ORD_TOTALPREST.Value;
    end;
end;

procedure TFLivroFiscal.CARGAS_NF;
 VAR LINHA : string;
 I : Integer;
 AUX : string;
 sql : TStringList;
 NBF : Boolean;
 UF_CLIENTE : string;
 FText: TextFile;
 mun_idAux : integer;
begin

     DATA_IN := strtodate(MaskEdit1.Text);
     DATA_FI := strtodate(MaskEdit2.Text);
          SQL := TStringList.Create;
     {CHAMA AS CRT DO BANCO DE DADOS}

      SQL.Add('Select a.ord_conh, A.*, B.CFA_CODI, C.UF_SIGLA from ORDEM_COLETA_ENTREGA A left outer join FATURAMENTO B on a.cfa_id = b.cfa_id, CLIENTENBF C WHERE   A.CLIN_ID = C.CLIN_ID');
      SQL.Add(' AND (CONVERT(CHAR(10), ORD_DATA, 112) >= :DATA1 AND  CONVERT(CHAR(10), ORD_DATA, 112) <= :DATA2   )');
      if cboCliente.Text <> '' then
          SQL.Add( '  and  A.CLIN_ID = ' + cboCliente.LookupValue );
      SQL.Add('and A.ORD_STATUS = ''E''  ');
      SQL.Add('ORDER BY ORD_CONH ');
      //SQL.Add('ORDER BY C.UF_SIGLA ');


//  and ord_status = ''E''
     Assignfile(FText,Path);
     Rewrite(FText);


     qrConhecimento_.CLOSE;
     qrConhecimento_.SQL.Clear;
     qrConhecimento_.SQL := SQL;
     qrConhecimento_.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
     qrConhecimento_.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
     qrConhecimento_.OPEN;
     qrConhecimento_.Last;
     qrConhecimento_.First;


     lblExport.Caption := 'Exportando dados ...';
     qrConhecimento_.OPEN;
     qrConhecimento_.Last;
     ProgressBar1.Max := qrConhecimento_.RecordCount;
     qrConhecimento_.First;
     //f :=TStringList.Create;
     //f.Clear;
     ProgressBar1.Position := 0;


     WHILE not qrConhecimento_.Eof DO BEGIN

        qrClienteFinal.Close;
         qrClienteFinal.Params[0].AsInteger := qrConhecimento_CLIN_ID.Value;
         qrClienteFinal.Open;

         NBF := False;
         if  Copy(qrClienteFinalCLIN_RAZA.Value,1,6) = 'N.B.F.' then
         begin
             NBF := True;
             qrClienteNBFREmetente.CLOSE;
             qrClienteNBFREmetente.Params[0].AsInteger := qrConhecimento_CLIF_ID.Value;
             qrClienteNBFREmetente.Open;
            // qrClienteFinal.CLOSE;
         end;

         //adicionado por miguel
         NBF := False;



         IF NBF = False then
             UF_CLIENTE := qrConhecimento_UF_SIGLA.Value
          else
             UF_CLIENTE := qrClienteNBFREmetenteUF_SIGLA.Value;


         //verifica se o conhecimento é de entrega

         IF qrConhecimento_ORD_COLETA_ENTREGA.Value = 'E' THEN begin
                       qrNFCompl.close;
                       qrNFCompl.Params[0].AsInteger := qrConhecimento_ORD_ID.AsInteger;
                       qrNFCompl.Open;

                       qrNFCompl.First;
                       while not qrNFCompl.Eof do begin
                              LINHA := '';

                              i := 0;
                              i := Pos('/', qrNFComplNFI_NUMERO.AsString);
                              if i <> 0 then
                                  aux := Copy(qrNFComplNFI_NUMERO.AsString, 0, i-1)
                              else
                                  AUX := qrNFComplNFI_NUMERO.AsString;

                              //nf origem
                              linha := LINHA + Funcoes.writeInt(StrToInt(aux), 6) + ' ';
                              //serie nf orgigem
                              LINHA := LINHA + Funcoes.writeString(qrNFComplNFI_SERIE.AsString, 3) + ' ';

                              // modelo
                              LINHA := LINHA + Funcoes.writeString('NF', 2) + ' ';
                              //data de emissao
                              LINHA := LINHA + FormatDateTime('DDMMYYYY', qrNFComplNFI_DEMI.Value) + ' ';
                              //valor da nota
                              AUX := formatfloat('00000000000.00',qrNFComplNFI_TOTA.AsFloat) + ' ';
                              AUX := StringReplace(AUX, ',', '.', [RFREPLACEALL]);
                              LINHA := LINHA + AUX ;
                              //UF
                              LINHA := LINHA + UF_CLIENTE + ' ';

                              //NUMERO Do conhecmento
                              LINHA := LINHA + Funcoes.writeInt(qrConhecimento_ORD_CONH.AsInteger, 6) + ' ';
                              //SERIE
                              LINHA := LINHA + Funcoes.writeString('U', 3) + ' ';

                              //cnpj
                              LINHA := LINHA +  Funcoes.ControlaCNPJ(qrNFComplCLIN_CGCCPF.AsString) + ' ';
                              //modelo
                              LINHA := LINHA + Funcoes.writeString('08', 2) + ' ';

                              //qUANTIDADE DE VOLUMES
                              IF  qrConhecimento_ORD_QTDE_UV.AsString = '' then
                                  AUX := '0'
                              else
                                  AUX :=  qrConhecimento_ORD_QTDE_UV.AsString ;
                              LINHA := LINHA + Funcoes.writeInt(StrToInt(AUX), 6) + ' ';

                              //PESO BRUTO
                              if qrConhecimento_ORD_PESO_TOTAL.AsString = '' then
                                AUX := '0'
                              ELSE
                                AUX := qrConhecimento_ORD_PESO_TOTAL.AsString;

                              AUX := formatfloat('000000000.00',StrToFloat(AUX)) + ' ';
                              AUX := StringReplace(AUX, ',', '.', [RFREPLACEALL]);
                              LINHA := LINHA + AUX ;

                              //PESO LIQUIDO
                              if qrConhecimento_ORD_PESO_TOTAL.AsString = '' then
                                AUX := '0'
                              ELSE
                                AUX := qrConhecimento_ORD_PESO_TOTAL.AsString;

                              AUX := formatfloat('000000000.00',StrToFloat(AUX)) + ' ';
                              AUX := StringReplace(AUX, ',', '.', [RFREPLACEALL]);
                              LINHA := LINHA + AUX ;

                              //NOTA   ORIGEM
                              LINHA :=  LINHA + Funcoes.writeString('', 9) + ' ';

                              //NUMERO DA NOTA
                              LINHA :=  LINHA + Funcoes.writeString('', 9) + ' ';

                              //brancos
                              LINHA := LINHA + Funcoes.writeString('', 427);

                              // qrClienteFinal.Close;
                              // qrClienteFinal.Params[0].AsInteger := qrNFComplNFI_DEST_CLI.AsInteger;
                              // qrClienteFinal.Open;

                              //razao social
                              LINHA := LINHA + Funcoes.writeString(qrNFComplNFI_DEST_RAZA.AsString, 50) + ' ';

                              //estado
                              LINHA := LINHA + qrNFComplNFI_DEST_UF_SIGLA.Value+ ' ';

                              //municipio zfm
                              LINHA := LINHA + Funcoes.writeInt(0,5)+ ' ';


                              with qrAux do begin
                                close;
                                sql.Clear;
                                sql.Add('select CLIF_INSCRG, mun_id, dbo.controla_cnpj(clif_cgccpf) as clif_cgccpf ');
                                sql.Add('from clientefinal where clif_id = ' + qrConhecimento_CLIF_ID.AsString);
                                Open;
                              end;



                              //cnpj
                              LINHA := LINHA + Funcoes.writeString(Funcoes.ControlaCNPJ(qrAux.FieldByName('clif_cgccpf').AsString), 14)+ ' ';

                              //inscrição
                              LINHA := LINHA + Funcoes.writeString(qrAux.FieldByName('CLIF_INSCRG').AsString, 20)+ ' ';

                              //codigo dipan
                              IF qrNFComplNFI_DEST_UF_SIGLA.Value = 'SP' then
                                 LINHA := LINHA + '23'+ ' '
                              ELSE
                                 LINHA := LINHA + '00'+ ' ';


                              with wwQuery1 do BEGIN
                                  CLOSE;
                                  SQL.Clear;
                                  SQL.Add('SELECT DIPAM, MUN_NOME FROM MUNICIPIO WHERE MUN_ID = ' + qrAux.FieldByName('mun_id').AsString);
                                  Open;
                              end;

                              //municipio dipam
                              AUX := wwQuery1.fIELDbYnAME('DIPAM').AsString ;
                              if Trim(AUX) = '' then
                                      AUX := '0000';
                              LINHA := LINHA + Funcoes.writeString(AUX, 4)+ ' ';

                              //excluir da DIPI
                              LINHA := LINHA + 'N'+ ' ';

                              //endereço
                              LINHA := LINHA + Funcoes.writeString(qrNFComplNFI_DEST_ENDERECO.AsString , 50)+ ' ';

                              //cep
                              LINHA := LINHA + Funcoes.writeString(qrNFComplNFI_DEST_CEP.AsString, 8)+ ' ';

                              //bairro
                              LINHA := LINHA + Funcoes.writeString(qrNFComplNFI_DEST_BAIRRO.AsString, 50)+ ' ';



                              //municipio
                              LINHA := LINHA + Funcoes.writeString(wwQuery1.FIELDBYNAME('MUN_NOME').AsString, 50)+ ' ';

                              //inscrição municipal
                              LINHA := LINHA + Funcoes.writeInt(0, 10);

                              //digito
                              LINHA := LINHA + Funcoes.writeInt(0, 2)+ ' ';

                              //cidade giss
                              LINHA := LINHA + Funcoes.writeString('00', 2)+ ' ';

                              //pais
                              LINHA := LINHA + Funcoes.writeString('01058', 5)+ ' ';


                              qrCLFIN.Close;
                              qrCLFIN.Params[0].AsInteger := qrConhecimento_CLIF_ID.AsInteger;
                              qrCLFIN.Open;


                              //tipo de logradouro
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_LOGRADOURO.AsString, 15)+ ' ';

                              //numero
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_NUMERO.AsString ,6)+ ' ';

                              //compl do end
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_ENDERECO_COMPL.AsString , 30)+ ' ';
                              //brancos + delimitador
                              LINHA := LINHA + Funcoes.writeString('', 4); //removidos dois caracteres   p cr lf





                             // f.Add(LINHA);
                             Writeln(ftext, linha);
                              qrNFCompl.Next;
                       end;//end while nf
         end;








//////////////////////////////////////////////////////////////////////////////

         //VERIFICA SE O CONHECIMENTO É DE COLETA
         IF qrConhecimento_ORD_COLETA_ENTREGA.Value = 'C' then begin
                       qrColetaNF.close;
                       qrColetaNF.Params[0].AsInteger := qrConhecimento_MANI_ID.AsInteger;
                       qrColetaNF.Open;

                       qrColetaNF.First;
                       while not qrColetaNF.Eof do begin
                              LINHA := '';

                              i := 0;
                              i := Pos('/', qrColetaNFCNF_NF.AsString);
                              if i <> 0 then
                                  aux := Copy(qrColetaNFCNF_NF.AsString, 0, i-1)
                              else
                                  AUX := qrColetaNFCNF_NF.AsString;

                              //nf origem
                              linha := LINHA + Funcoes.writeInt(StrToInt(aux), 6) + ' ';
                              //serie nf orgigem
                              LINHA := LINHA + Funcoes.writeString('', 3) + ' ';

                              // modelo
                              LINHA := LINHA + Funcoes.writeString('NF', 2) + ' ';
                              //data de emissao
                              LINHA := LINHA + FormatDateTime('DDMMYYYY', qrConhecimento_ORD_DATA.Value) + ' ';
                              //valor da nota
                              AUX := formatfloat('00000000000.00',qrColetaNFCNF_VALOR.AsFloat) + ' ';
                              AUX := StringReplace(AUX, ',', '.', [RFREPLACEALL]);
                              LINHA := LINHA + AUX ;
                              //UF
                              LINHA := LINHA + UF_CLIENTE + ' ';

                              //NUMERO Do conhecmento
                              LINHA := LINHA + Funcoes.writeInt(qrConhecimento_ORD_CONH.AsInteger, 6) + ' ';
                              //SERIE
                              LINHA := LINHA + Funcoes.writeString('U', 3) + ' ';


                              qrCLNBF.Close;
                              qrCLNBF.Params[0].AsInteger := qrConhecimento_CLIN_ID.AsInteger;
                              qrCLNBF.Open;

                              qrCLFIN.close;
                              qrCLFIN.Params[0].AsInteger := qrColetaNFCLIF_ID.AsInteger;
                              qrCLFIN.open;

                              //cnpj
                              LINHA := LINHA +  Funcoes.ControlaCNPJ(qrCLNBFCLIN_CGCCPF.AsString) + ' ';
                              //modelo
                              LINHA := LINHA + Funcoes.writeString('08', 2) + ' ';

                              //qUANTIDADE DE VOLUMES
                              IF  qrConhecimento_ORD_QTDE_UV.AsString = '' then
                                  AUX := '0'
                              else
                                  AUX :=  qrConhecimento_ORD_QTDE_UV.AsString ;
                              LINHA := LINHA + Funcoes.writeInt(StrToInt(AUX), 6) + ' ';

                              //PESO BRUTO
                              if qrConhecimento_ORD_PESO_TOTAL.AsString = '' then
                                AUX := '0'
                              ELSE
                                AUX := qrConhecimento_ORD_PESO_TOTAL.AsString;

                              AUX := formatfloat('000000000.00',StrToFloat(AUX)) + ' ';
                              AUX := StringReplace(AUX, ',', '.', [RFREPLACEALL]);
                              LINHA := LINHA + AUX ;

                              //PESO LIQUIDO
                              if qrConhecimento_ORD_PESO_TOTAL.AsString = '' then
                                AUX := '0'
                              ELSE
                                AUX := qrConhecimento_ORD_PESO_TOTAL.AsString;

                              AUX := formatfloat('000000000.00',StrToFloat(AUX)) + ' ';
                              AUX := StringReplace(AUX, ',', '.', [RFREPLACEALL]);
                              LINHA := LINHA + AUX ;

                              //NOTA
                              LINHA :=  LINHA + Funcoes.writeString('', 9) + ' ';
                               //NUMERO DA NOTA
                              LINHA :=  LINHA + Funcoes.writeString('', 9) + ' ';
                              //brancos
                              LINHA := LINHA + Funcoes.writeString('', 427);



                              //razao social
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_RAZA.AsString, 50) + ' ';

                              //estado
                              LINHA := LINHA + qrCLFINUF_SIGLA.Value+ ' ';

                              //municipio zfm
                              LINHA := LINHA + Funcoes.writeInt(0,5)+ ' ';


                              with qrAux do begin
                                close;
                                sql.Clear;
                                sql.Add('select CLIF_INSCRG, mun_id, dbo.controla_cnpj(clif_cgccpf) as clif_cgccpf ');
                                sql.Add('from clientefinal where clif_id = ' + qrCLFINCLIF_ID.AsString);
                                Open;
                              end;



                              //cnpj
                              LINHA := LINHA + Funcoes.writeString(Funcoes.ControlaCNPJ(qrAux.FieldByName('clif_cgccpf').AsString), 14)+ ' ';

                              //inscrição
                              LINHA := LINHA + Funcoes.writeString(qrAux.FieldByName('CLIF_INSCRG').AsString, 20)+ ' ';

                              //codigo dipan
                              IF qrCLFINUF_SIGLA.Value = 'SP' then
                                 LINHA := LINHA + '23'+ ' '
                              ELSE
                                 LINHA := LINHA + '00'+ ' ';


                              with wwQuery1 do BEGIN
                                  CLOSE;
                                  SQL.Clear;
                                  SQL.Add('SELECT DIPAM, MUN_NOME FROM MUNICIPIO WHERE MUN_ID = ' + qrAux.FieldByName('mun_id').AsString);
                                  Open;
                              end;

                              //municipio dipam
                              AUX := wwQuery1.fIELDbYnAME('DIPAM').AsString ;
                              if Trim(AUX) = '' then
                                      AUX := '0000';
                              LINHA := LINHA + Funcoes.writeString(AUX, 4)+ ' ';

                              //excluir da DIPI
                              LINHA := LINHA + 'N'+ ' ';

                              //endereço
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_ENDERECO.AsString , 50)+ ' ';

                              //cep
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_CEP.AsString, 8)+ ' ';

                              //bairro
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_ENDERECO_BAIRRO.AsString, 50)+ ' ';



                              //municipio
                              LINHA := LINHA + Funcoes.writeString(wwQuery1.FIELDBYNAME('MUN_NOME').AsString, 50)+ ' ';

                              //inscrição municipal
                              LINHA := LINHA + Funcoes.writeInt(0, 10);

                              //digito
                              LINHA := LINHA + Funcoes.writeInt(0, 2)+ ' ';

                              //cidade giss
                              LINHA := LINHA + Funcoes.writeString('00', 2)+ ' ';

                              //pais
                              LINHA := LINHA + Funcoes.writeString('00000', 5)+ ' ';

                              //tipo de logradouro
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_LOGRADOURO.AsString, 15)+ ' ';

                              //numero
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_NUMERO.AsString ,6)+ ' ';

                              //compl do end
                              LINHA := LINHA + Funcoes.writeString(qrCLFINCLIF_ENDERECO_COMPL.AsString, 30)+ ' ';
                              //brancos + delimitador
                              LINHA := LINHA + Funcoes.writeString('', 4); //removidos dois caracteres   p cr lf





                             // f.Add(LINHA);
                             Writeln(ftext, linha);
                             qrColetaNF.Next;
                       end;//end while nf
         end;



        qrConhecimento_.Next;
        ProgressBar1.Position :=ProgressBar1.Position + 1;
        Application.ProcessMessages;
     end; //END WHILE

     
        Writeln(ftext, 'FIM DE ARQUIVO');
        CloseFile(ftext);
   //  f.SaveToFile(Path);
    // f.Clear;
   //  FreeAndNil(f);


end;

procedure TFLivroFiscal.DIPI;
var Linha : string;
i : Integer;
aux : string;
FText: TextFile;
D1, D2 : TDateTime;
begin
//

     D1 := StrToDate(MaskEdit1.Text);
     D2 := StrToDate(MaskEdit2.Text);

     DATA_INI := FormatDateTime('YYYYMMDD', D1);
     DATA_INI2 := FormatDateTime('YYYYMMDD', D2);

     Assignfile(FText,Path);
        Rewrite(FText);

     qrNF_IPI.Close;
     qrNF_IPI.SQL.Clear;
     qrNF_IPI.SQL.ADD('SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
     qrNF_IPI.SQL.ADD('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A.            ');
     qrNF_IPI.SQL.ADD('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A.                     ');
     qrNF_IPI.SQL.ADD('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.      ');
     qrNF_IPI.SQL.ADD('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.     ');
     qrNF_IPI.SQL.ADD('	NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  ');
     qrNF_IPI.SQL.ADD('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.     ');
     qrNF_IPI.SQL.ADD('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.                          ');
     qrNF_IPI.SQL.ADD('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.        ');
     qrNF_IPI.SQL.ADD('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,    ');
     qrNF_IPI.SQL.ADD('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.    ');
     qrNF_IPI.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.UF_SIGLA  ,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,(C.CLIN_ENDERECO +' + '''' + ' ' + '''' + ' + C.CLIN_ENDERECO_COMPL ) as ENDE, C.CLIN_ENDERECO_BAIRRO,  ');
     qrNF_IPI.SQL.ADD('C.UF_SIGLA,C.CLIN_CEP,C.MUN_ID,C.CLIN_RAZA, C.CLIN_ID,  B.CFA_TICM');
     qrNF_IPI.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C ')  ;
     qrNF_IPI.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
     qrNF_IPI.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
     qrNF_IPI.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
     qrNF_IPI.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
     qrNF_IPI.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI + '''') ;
     qrNF_IPI.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_INI2 + '''') ;
     qrNF_IPI.SQL.Add('AND (A.TDOC_ID = 2 OR  A.TDOC_ID = 3 OR A.TDOC_ID = 4 or A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 17)');
     qrNF_IPI.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) order by A.NFI_NUMERO') ;
     qrNF_IPI.Open;
     qrNF_IPI.Last;
     lblExport.Caption := 'Exportando dados ...';
     ProgressBar1.Max := qrNF_IPI.RecordCount;
     qrNF_IPI.First;
    // f :=TStringList.Create;
    // f.Clear;
     ProgressBar1.Position := 0;

     while not qrNF_IPI.Eof do begin
           qrIT_DIPI.CLOSE;
           qrIT_DIPI.Params[0].AsInteger := qrNF_IPINFI_CODI.AsInteger;
           qrIT_DIPI.Open;
           while not qrIT_DIPI.Eof do begin
                   Linha := '';
                   i := 0;
                   i := Pos('/', qrNF_IPINFI_NUMERO.AsString);
                   if i <> 0 then
                       aux := Copy(qrNF_IPINFI_NUMERO.AsString, 0, i-1)
                   else
                       AUX := qrNF_IPINFI_NUMERO.AsString;
                   //nota fiscal
                   Linha := Linha + Funcoes.writeInt(StrToInt(aux), 6) + ' ';

                   //data
                   Linha := Linha + FormatDateTime('ddMM', qrNF_IPINFI_DEMI.Value) + ' ';

                   //tipo de nota saida/ entrada
                   if (qrNF_IPITDOC_ID.AsString = '2') or (qrNF_IPITDOC_ID.AsString = '4') then
                        Linha := Linha + 'E' + ' '
                   else
                        Linha := Linha + 'S' + ' ';

                   //emitente/cliente
                   Linha := Linha + Funcoes.writeInt(0, 5) + ' ';

                   //classificacao fiscal
                   Linha := Linha + Funcoes.writeInt(0, 11) + ' ';

                   //situacao tributaria

                   Linha := Linha + qrIT_DIPIPRO_ORIGEM.Value + qrNF_IPICFA_TICM.AsString + '0' + ' ';

                   //QTDE
                   Linha := Linha + FormatFloat('000000.000', qrIT_DIPIINF_QTDE.Value) + ' ';

                   //V UNIT
                   Linha := Linha + FormatFloat('000000000.00', qrIT_DIPIINF_PUNI.Value) + ' ';

                   //V TOTAL
                   Linha := Linha + FormatFloat('00000000000.00', qrIT_DIPIINF_TOTA.Value) + ' ';

                   //DESCONTO
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //BASE IPI
                   IF qrIT_DIPIINF_AIPI.AsFloat > 0 then
                      Linha := Linha + FormatFloat('00000000000.00', qrIT_DIPIINF_TOTA.Value) + ' '
                   else
                      Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //ALIQ IPI
                   Linha := Linha + FormatFloat('00.00', qrIT_DIPIINF_AIPI.AsFloat) + ' ';

                   //VLR IPI
                   Linha := Linha + FormatFloat('000000000.00', qrIT_DIPIINF_VIPI.AsFloat) + ' ';

                   //BASE DE CALCULO ICMS
                   Linha := Linha + FormatFloat('00000000000.00', qrIT_DIPIINF_BICM.AsFloat) + ' ';

                   //ALIQ ICMS
                   Linha := Linha + FormatFloat('00.00', qrIT_DIPIINF_AICM.AsFloat) + ' ';

                   // VALOR ICMS
                   Linha := Linha + FormatFloat('000000000.00', qrIT_DIPIINF_VICM.AsFloat) + ' ';

                   //UNIDADE
                   Linha := Linha + Funcoes.writeString(qrIT_DIPIUNIDADE.Value, 3) + ' ';

                   //TEM SUBSTITUIÇÃO
                   Linha := Linha +  'N' + ' ';

                   //CFOP
                   Linha := Linha + Funcoes.writeString(qrNF_IPICFA_CODI.Value, 4) + ' ';

                   //REGISTRO DE EXPORTACAO
                   Linha := Linha + Funcoes.writeInt(0, 10) + ' ';

                   //BRANCOS
                   Linha := Linha + Funcoes.writeString('', 4) + ' ';

                   //DESPACHO DE EXPORTACAO
                   Linha := Linha + Funcoes.writeInt(0, 10) + ' ';
                  
                   //TIPO DE DCC IMPORTAÃO
                   Linha := Linha + ' ' + ' ';

                   //BRANCOS
                   Linha := Linha + Funcoes.writeString('', 2) + ' ';

                   //DATA EMBARQUE
                   Linha := Linha + Funcoes.writeString('', 8) + ' ';

                   Linha := Linha + Funcoes.writeString('', 14) + ' ';
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';
                   Linha := Linha + Funcoes.writeString('', 334) + ' ';


                   //COD PRODUTO
                   Linha := Linha + Funcoes.writeString(qrIT_DIPIPRO_COD.AsString, 15) + ' ';

                   //DESCRICAO
                   Linha := Linha + Funcoes.writeString(qrIT_DIPIPRO_DESC.AsString , 59) + ' ';

                   //UNIDADE CONFORME CLASS FISCAL
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';

                   //GERAR DNF
                   Linha := Linha + 'N' + ' ';

                   //UNIDADE MED DNF
                   Linha := Linha + '  ' + ' ';

                   //ESPECIE
                   Linha := Linha + '   ' + ' ';

                   //CAPACIDADE
                   Linha := Linha + '00000' + ' ';

                   //COD ENQUADRAMENTO IPI
                   Linha := Linha + '   ' + ' ';

                   //SIT TRIBUTARIA DO IPI
                   Linha := Linha + '  ' + ' ';

                   //VALOR BASE CALC SUBS TRIB
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //ALIQ ICMS SUBS
                   Linha := Linha + FormatFloat('00.00', 0) + ' ';

                   //VALOR  ICMS SUBS
                   Linha := Linha + FormatFloat('000000000.00', 0) + ' ';

                   //TIPO ITEM
                   Linha := Linha + '  ' + ' ';

                   //GENERO ITEM
                   Linha := Linha + '  ' + ' ';

                   //CODIGO ANP
                   Linha := Linha + Funcoes.writeString('', 9) + ' ';

                   //CUPON FISCAL
                   Linha := Linha + Funcoes.writeInt(0, 6) + ' ';

                   //CODIGO SPED
                   Linha := Linha + Funcoes.writeString('', 60) + ' ';

                   //unidade de comercialização
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';

                   //fator de conversao
                   Linha := Linha + Funcoes.writeString('', 12) + ' ';

                   //situação tributaria do pis
                   Linha := Linha + Funcoes.writeString('', 2) + ' ';

                   //situação tributaria do cofins
                   Linha := Linha + Funcoes.writeString('',2 ) + ' ';

                   //serie do item
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';

                   //situação tributaria simples nacional
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';

                   //aliquota de credito do simples
                   Linha := Linha + Funcoes.writeString('', 5) + ' ';

                   //valor do credito do simples
                   Linha := Linha + Funcoes.writeString('', 14) + ' ';

                   //informar base de pis e cofins
                   Linha := Linha + Funcoes.writeString('N', 1) + ' ';

                   //aliq pis e cofins
                   Linha := Linha + Funcoes.writeString('', 2) + ' ';

                   //valor da base de pis
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //valor do imposto do pis
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //valor da base de cofins
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //valor do imposto cofins
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //codigo base de credito
                   Linha := Linha + Funcoes.writeString('', 2) + ' ';

                   // origem do credito
                   Linha := Linha + Funcoes.writeString('', 1) + ' ';

                   //tipo de credito de pis cofins
                   Linha := Linha + Funcoes.writeString('', 3) + ' ';

                   //tipo de geração do pis cofins
                   Linha := Linha + Funcoes.writeString('', 1) + ' ';

                   //valor base bruta de IRPJ
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //aliq de irpj
                   Linha := Linha + FormatFloat('00.00', 0) + ' ';

                   //valor base bruta da CSLL
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //aliq da CSLL
                   Linha := Linha + FormatFloat('00.00', 0) + ' ';

                   //valor do frete
                  Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //valor do seguro
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //valor de despesas
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //clasificação DACON
                   Linha := Linha + Funcoes.writeString('', 9) + ' ';

                   //valor de acrescimo
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //valor do ipi incluso
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

                   //tipo de geração do IRPJ
                   linha := linha  + ' ' + ' ';

                   //numero da nota
                   Linha := Linha + Funcoes.writeString('', 9) + ' ';

                   //valor do icm retido
                   Linha := Linha + FormatFloat('00000000000.00', 0) + ' ';

//                   produtos da linha positiva
                   Linha := Linha + ' ' + ' ';

                   //aliq de pis
                   Linha := Linha + FormatFloat('00.00', 0) + ' ';

                   //aliq cofins
                   Linha := Linha + FormatFloat('00.00', 0) + ' ';



                   //BRANCOS
                   Linha := Linha + Funcoes.writeString('', 413);

                   //DELIMITADOR
                  // Linha := Linha + Funcoes.writeString('', 2);

                   //F.Add(Linha);

                   Linha := StringReplace(Linha, ',', '.', [rfReplaceAll]);
                   Writeln(ftext, linha);



                   qrIT_DIPI.Next;
           end;

          qrNF_IPI.Next;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Application.ProcessMessages;
     end;//end qrNF_IPI
     Writeln(ftext, 'FIM DE ARQUIVO');
     CloseFile(ftext);
    // F.SaveToFile(Path);
   //  f.Clear;
    // FreeAndNil(f);
end;

procedure TFLivroFiscal.LivroCTR_MMAA;
var linha : String;
    d1, d2 : TDateTime;
    I : Integer;
    AUX : string;
    FText: TextFile;
begin
///
     d1 := StrToDate(MaskEdit1.Text);
     d2 := StrToDate(MaskEdit2.Text);
     Path := ExtractFilePath(Path) + 'CTR_' + FormatDateTime('MMYY', d1)+ '.txt';



     Assignfile(FText,Path);
     Rewrite(FText);

     qrCTR_MMAA.Close;
     qrCTR_MMAA.Params[0].AsString := FormatDateTime('yyyyMMdd', d1);
     qrCTR_MMAA.Params[1].AsString := FormatDateTime('yyyyMMdd', d2);
     qrCTR_MMAA.Open;

     qrCTR_MMAA.Last;
     ProgressBar1.Max := qrCTR_MMAA.RecordCount;
     ProgressBar1.Position := 0;

     //f :=TStringList.Create;
     //f.Clear;
     pnlProgress.Visible := True;
     qrCTR_MMAA.First;
     WHILE not qrCTR_MMAA.Eof DO begin
         ProgressBar1.Position := ProgressBar1.Position + 1;
         linha := 'CTR' + ' '; //ESPECIE
         //linha := linha + Funcoes.writeString(qrCTR_MMAANFI_SERIE.AsString, 3) + ' ';
         linha := linha + Funcoes.writeString('U', 3) + ' ';



         AUX := qrCTR_MMAAORD_CONH.AsString;
         aux := StringReplace(AUX, '-P', '', [rfReplaceAll]);
         i := 0;
         i := Pos('/', AUX);
         if i <> 0 then
            aux := Copy(AUX, 0, i-1)
         else
            AUX := AUX;
         AUX := Trim(AUX);
         i := 0;
         i := Pos(' ', AUX);
         if i <> 0 then
            aux := Copy(AUX, 0, i-1)
         else
            AUX := AUX;


         //AUX := qrCTR_MMAAORD_CONH.Value;

         if AUX <> '' then
           linha := linha + Funcoes.writeInt(StrToInt(AUX), 6) +  ' '//NOTA FISCAL
         else
           linha := linha + Funcoes.writeInt(0, 6) +  ' ';//NOTA FISCAL

         aux := qrCTR_MMAACFA_ID.AsString;
         if AUX = '' then AUX := '860';

         WITH qrAux do begin
             CLOSE;
             SQL.Clear;
             SQL.Add('SELECT * FROM FATURAMENTO WHERE CFA_ID = ' + AUX);
             Open;
         end;

         if Copy( qrAux.FIELDBYNAME('CFA_CODI').AsString, 1, 1) = '5' then
                AUX := '5352'
         else
                aux := '6352';

         linha := linha + Funcoes.writeString(AUX, 4) + ' ';//CFOP

         linha := linha + 'R' +  ' '; //RESPONSAVEL PELO FRETE (REMETENTE)

         linha := linha + 'N' + ' '; //SUBSTITUIÇÃO TRIBUTARIA

         linha := linha + 'CTRC' + ' ' ;//TIPO DE TRANSPORTE

         WITH qrAux do begin
             CLOSE;
             SQL.Clear;
             SQL.Add('SELECT * FROM MUNICIPIO WHERE MUN_ID IN (SELECT MUN_ID FROM CLIENTENBF WHERE CLIN_ID = '  + qrCTR_MMAACLIN_ID.AsString + ') ');
             Open;
         end;
         AUX := qrAux.FIELDBYNAME('DIPAM').AsString;
         if Trim(AUX) = '' then
                AUX := '0000';
         linha := linha + Funcoes.writeString(AUX, 4) +  ' ';//MUN DIPAM

          AUX := qrCTR_MMAAORD_CONH.AsString;
         aux := StringReplace(AUX, '-P', '', [rfReplaceAll]);
         i := 0;
         i := Pos('/', AUX);
         if i <> 0 then
            aux := Copy(AUX, 0, i-1)
         else
            AUX := AUX;
         AUX := Trim(AUX);
         i := 0;
         i := Pos(' ', AUX);
         if i <> 0 then
            aux := Copy(AUX, 0, i-1)
         else
            AUX := AUX;


         //AUX := qrCTR_MMAAORD_CONH.Value;

         if AUX <> '' then
           linha := linha + Funcoes.writeInt(StrToInt(AUX), 6) +  ' '//NOTA FISCAL
         else
           linha := linha + Funcoes.writeInt(0, 6) +  ' ';//NOTA FISCAL


         linha := linha + Funcoes.writeFloat(qrCTR_MMAAORD_VALORTOTAL.AsFloat, 14, 2, True) + ' ' ;//VALOR DA MERCADORIA

         linha := linha + Funcoes.writeFloat(qrCTR_MMAAORD_TOTALPREST.AsFloat, 14, 2, True) + ' ' ;//VALOR DA BASE DE ICMS

         linha := linha + Funcoes.writeFloat(qrCTR_MMAAORD_ALIQ.AsFloat, 5, 2, True) + ' ';//VALOR DA ALIQUOTA DE ICMS

         linha := linha + Funcoes.writeFloat(qrCTR_MMAAORD_VLR_ICMS.AsFloat, 14, 2, True) + ' ';//VALOR DO ICMS

         linha := linha + Funcoes.writeString('', 9) + ' ';

         linha := linha + Funcoes.writeString('', 97); //BRANCOS



         //INFORMAÇÕES SOBRE A ORIGEM DA CARGA, CLIENTE NBF
         qrCLNBF.CLOSE;
         qrCLNBF.Params[0].AsInteger := qrCTR_MMAACLIN_ID.AsInteger;
         qrCLNBF.Open;



         linha := linha + Funcoes.writeString(qrCLNBFCLIN_RAZA.AsString, 50)+ ' ';//RAZAO DO CLIENTE PARA QUEM FOI EMITIDO

         linha := linha + Funcoes.writeString(qrCLNBFUF_SIGLA.AsString, 2)+ ' ';//uf



         linha := linha + Funcoes.writeInt(0, 5)+ ' ';  //mun zona franca

         linha := linha + Funcoes.writeString(Funcoes.ControlaCNPJ(qrCLNBFCNPJ.AsString), 14)+ ' ';//CNPJ

         AUX := qrCLNBFCLIN_INSCRG.AsString;
         AUX := StringReplace(AUX, '.', '', [RFREPLACEALL]);
         AUX := StringReplace(AUX, '-', '', [RFREPLACEALL]);
         AUX := StringReplace(AUX, '/', '', [RFREPLACEALL]);
         linha := linha + Funcoes.writeString(AUX, 20)+ ' ';//INSCRIÇÃO

         IF qrCLNBFUF_SIGLA.AsString = 'SP' then
            linha := linha + Funcoes.writeString('23', 2)+ ' '//COD DIPAM
         ELSE
            linha := linha + Funcoes.writeString('00', 2)+ ' ';//COD DIPAM

         AUX := qrCLNBFDIPAM.AsString ;
         if Trim(AUX) = '' then
                AUX := '0000';

         linha := linha + Funcoes.writeString(AUX, 4)+ ' ';//MUN DIPAM
         linha := linha + 'N'+ ' ';

         linha := linha + Funcoes.writeString(qrCLNBFCLIN_ENDERECO.AsString, 50) + ' ';//ENDEREÇO

         linha := linha + Funcoes.writeString(qrCLNBFCLIN_CEP.AsString, 8) + ' '; //CEP

         linha := linha + Funcoes.writeString(qrCLNBFCLIN_ENDERECO_BAIRRO.Value, 50) + ' ';//BAIRRO

         linha := linha + Funcoes.writeString(qrCLNBFMUN_NOME.AsString, 50) + ' ';//CIDADE

         linha := linha + Funcoes.writeInt(0, 10) ;         //INSCR MUNI

         linha := linha + Funcoes.writeInt(0, 2)+ ' '; //DIG INSCR

         linha := linha + Funcoes.writeInt(0, 2) + ' ';//CIDADE GISS
         linha := linha + Funcoes.writeString('01058', 5) + ' ';//PAIS
         linha := linha + Funcoes.writeString(qrCLNBFCLIN_LOGRADOURO.ASSTRING, 15) + ' ';//TIPO LOGRADOURO
         linha := linha + Funcoes.writeString(qrCLNBFCLIN_NUMERO.AsString, 6) + ' ';//NUMERO
         linha := linha + Funcoes.writeString(qrCLNBFCLIN_ENDERECO_COMPL.AsString, 30) + ' ';
         linha := linha + Funcoes.writeString('', 7) ;

         qrCLFIN.Close;
         qrCLFIN.Params[0].AsInteger :=  qrCTR_MMAACLIF_ID.AsInteger;
         qrCLFIN.open;

         //INFORMAÇÕES SOBRE DESTINATARIO DA CARGA
         linha := linha + Funcoes.writeString(qrCLFINCLIF_RAZA.AsString, 50)+ ' ';//RAZAO DO CLIENTE PARA QUEM FOI EMITIDO

         linha := linha + Funcoes.writeString(qrCLFINUF_SIGLA.AsString, 2)+ ' ';//uf

         linha := linha + Funcoes.writeInt(0, 5)+ ' ';  //mun ZONA FRANCA

         linha := linha + Funcoes.writeString(Funcoes.ControlaCNPJ(qrCLFINCLIF_CGCCPF.AsString), 14)+ ' ';//CNPJ

         AUX := qrCLFINCLIF_INSCRG.AsString;
         AUX := StringReplace(AUX, '.', '', [RFREPLACEALL]);
         AUX := StringReplace(AUX, '-', '', [RFREPLACEALL]);
         AUX := StringReplace(AUX, '/', '', [RFREPLACEALL]);
         linha := linha + Funcoes.writeString(AUX, 20)+ ' ';//INSCRIÇÃO


         IF qrCLFINUF_SIGLA.AsString = 'SP' THEN
            linha := linha + Funcoes.writeString('23', 2)+ ' '//COD DIPAM
         ELSE
            linha := linha + Funcoes.writeString('00', 2)+ ' ';


         if qrCLFINMUN_ID.AsString <> '' then begin
         WITH qrAux do begin
             CLOSE;
             SQL.Clear;
             SQL.Add('SELECT * FROM MUNICIPIO WHERE MUN_ID IN (SELECT MUN_ID FROM CLIENTEFINAL WHERE CLIF_ID = '  + qrCTR_MMAACLIF_ID.AsString + ') ');
             Open;
         end;

         AUX :=qrAux.FieldByName('DIPAM').AsString  ;
         if Trim(AUX) = '' then
                AUX := '0000';
         linha := linha + Funcoes.writeString(AUX, 4)+ ' ';//MUN DIPAM
         end
         else
         linha := linha + Funcoes.writeString('0000', 4)+ ' ';//MUN DIPAM

         linha := linha + 'N'+ ' ';

         linha := linha + Funcoes.writeString(qrCLFINCLIF_ENDERECO.AsString, 50) + ' ';//ENDEREÇO

         linha := linha + Funcoes.writeString(qrCLFINCLIF_CEP.AsString, 8) + ' '; //CEP

         linha := linha + Funcoes.writeString(qrCLFINCLIF_ENDERECO_BAIRRO.Value, 50) + ' ';//BAIRRO

         WITH qrAux do begin
             CLOSE;
             SQL.Clear;
             SQL.Add('SELECT * FROM MUNICIPIO WHERE MUN_ID IN (SELECT MUN_ID FROM CLIENTEFINAL WHERE CLIF_ID = '  + qrCTR_MMAACLIF_ID.AsString + ') ');
             Open;
         end;
         linha := linha + Funcoes.writeString(qrAux.FieldByName('MUN_NOME').AsString, 50) + ' ';//CIDADE

         linha := linha + Funcoes.writeInt(0, 10) ;         //INSCR MUNI

         linha := linha + Funcoes.writeInt(0, 2)+ ' '; //DIG INSCR

         linha := linha + Funcoes.writeInt(0, 2) + ' ';//CIDADE GISS
         linha := linha + Funcoes.writeString('01058', 5) + ' ';//PAIS
         linha := linha + Funcoes.writeString(qrCLFINCLIF_LOGRADOURO.AsString, 15) + ' ';//TIPO LOGRADOURO
         linha := linha + Funcoes.writeString(qrCLFINCLIF_NUMERO.AsString, 6) + ' ';//NUMERO
         linha := linha + Funcoes.writeString(qrCLFINCLIF_ENDERECO_COMPL.AsString, 30) + ' ';
         linha := linha + Funcoes.writeString('', 3) + ' ';
         //linha := linha + #13+#10;

        // F.Add(linha);
         Writeln(ftext, linha);
         qrCTR_MMAA.Next;
         Application.ProcessMessages;
     end;
     Writeln(ftext, 'FIM DE ARQUIVO');
     CloseFile(ftext);
     //Path := ExtractFilePath(Path) + 'CTR_' + FormatDateTime('MMYY', d1)+ '.txt';

     //F.SaveToFile(Path);
     ShowMessage('Arquivo '+ Path + ' gerado com sucesso!');




end;

procedure TFLivroFiscal.BitBtn3Click(Sender: TObject);
begin
    frmAcertaDestConh := TfrmAcertaDestConh.Create(self);
    frmAcertaDestConh.ShowModal;
end;

end.

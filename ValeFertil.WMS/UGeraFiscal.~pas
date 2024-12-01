unit UGeraFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls,
  ComCtrls, Gauges, Db, DBTables, Wwquery, Wwdatsrc, Wwtable, DBGrids,
  ADODB;

type
    TFGeraFiscal = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel1: TPanel;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label1: TLabel;
    Q_PARAMETRO: TwwQuery;
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
    Q_ITENS: TwwQuery;
    Q_ITENSINF_CODI: TAutoIncField;
    Q_ITENSINF_ITEM: TIntegerField;
    Q_ITENSNFI_CODI: TIntegerField;
    Q_ITENSPRO_ID: TIntegerField;
    Q_ITENSPRO_COD: TStringField;
    Q_ITENSPRO_DESC: TStringField;
    Q_ITENSINF_QTDE: TFloatField;
    Q_ITENSINF_PUNI: TFloatField;
    Q_ITENSINF_AIPI: TFloatField;
    Q_ITENSINF_VIPI: TFloatField;
    Q_ITENSINF_PESOLIQ: TFloatField;
    Q_ITENSINF_PESO: TFloatField;
    Q_ITENSINF_VOL: TFloatField;
    Q_ITENSINF_AICM: TFloatField;
    Q_ITENSINF_BICM: TFloatField;
    Q_ITENSINF_VICM: TFloatField;
    Q_ITENSUVEN_ID: TIntegerField;
    Q_ITENSINF_QTDERETORNADA: TFloatField;
    Q_ITENSINF_NFE: TIntegerField;
    DS_NF: TwwDataSource;
    Q_TRANS: TwwQuery;
    DS_TRANS: TwwDataSource;
    Q_CARGA: TwwQuery;
    Q_INVENT: TwwQuery;
    Q_SERV: TwwQuery;
    Q_TRANSOS_DATA: TDateTimeField;
    Q_TRANSMANI_ID: TIntegerField;
    Q_TRANSCFA_ID: TIntegerField;
    Q_TRANSORD_VALORTOTAL: TFloatField;
    Q_TRANSORD_ID: TAutoIncField;
    DS_INVENT: TwwDataSource;
    Q_PRECO: TwwQuery;
    Q_PRECOPRO_ID: TIntegerField;
    Q_PRECOPRO_TOTA: TFloatField;
    Q_QUANTIDADE: TwwQuery;
    Q_QUANTIDADEPRO_ID: TIntegerField;
    Q_QUANTIDADEQTDE_TOTA: TFloatField;
    Q_PARAMETROCLIN_ID: TAutoIncField;
    Q_PARAMETROCLIN_PESSOA: TStringField;
    Q_PARAMETROCLIN_RAZA: TStringField;
    Q_PARAMETROCLIN_NOME: TStringField;
    Q_PARAMETROCLIN_CGCCPF: TStringField;
    Q_PARAMETROCLIN_INSCRG: TStringField;
    Q_PARAMETROCLIN_ENDERECO: TStringField;
    Q_PARAMETROCLIN_ENDERECO_COMPL: TStringField;
    Q_PARAMETROCLIN_ENDERECO_BAIRRO: TStringField;
    Q_PARAMETROCLIN_MUNICIPIO: TStringField;
    Q_PARAMETROUF_SIGLA: TStringField;
    Q_PARAMETROCLIN_CEP: TStringField;
    Q_PARAMETROCLIN_TEL1: TStringField;
    Q_PARAMETROCLIN_TEL2: TStringField;
    Q_PARAMETROCLIN_FAX: TStringField;
    Q_PARAMETROCLIN_EMAIL: TStringField;
    Q_PARAMETROCON_CODI: TStringField;
    Q_PARAMETROCLIN_CONTRATO: TStringField;
    Q_PARAMETROCLIN_UTIL_COD: TStringField;
    Q_PARAMETROMUN_ID: TIntegerField;
    Q_PARAMETROCLIN_WEB: TStringField;
    Q_PARAMETROCLIN_ENDC: TStringField;
    Q_PARAMETROCLIN_END_COMPLC: TStringField;
    Q_PARAMETROCLIN_END_BAIRC: TStringField;
    Q_PARAMETROCLIN_MUNICC: TStringField;
    Q_PARAMETROUF_SIGLAC: TStringField;
    Q_PARAMETROCLIN_CEPC: TStringField;
    Q_PARAMETROCLIN_TELC: TStringField;
    Q_PARAMETROCLIN_FAXC: TStringField;
    Q_PARAMETROCLIN_EMAILC: TStringField;
    Q_PARAMETROMUN_IDC: TIntegerField;
    Q_PARAMETROCLIN_TIPOSALDO: TStringField;
    Q_PARAMETROCLIN_VLRSALDO: TFloatField;
    Q_PARAMETROCLIN_TPMERC: TStringField;
    Q_PARAMETROPAR_INSC: TStringField;
    Q_PARAMETROCONT_NOME: TStringField;
    Q_PARAMETROCONT_TEL1: TStringField;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_ITENSINF_QTDERETORNADASALDO: TFloatField;
    Q_ITENSNFI_DEST_CGC: TStringField;
    Q_ITENSNFI_NUMERO: TStringField;
    Q_ITENSCFA_ID: TIntegerField;
    Q_ITENSTDOC_ID: TIntegerField;
    Q_NFCFA_CODI: TStringField;
    Q_ITENSCFA_CODI: TStringField;
    Q_NFCLIN_CGCCPF: TStringField;
    Q_NFCLIN_INSCRG: TStringField;
    Q_ITENSCLIN_CGCCPF: TStringField;
    Q_ITENSCLIN_INSCRG: TStringField;
    Q_TRANSORD_CONH: TStringField;
    Q_TRANSCFA_CODI: TStringField;
    Q_TRANSORD_PAGO: TStringField;
    Q_TRANSCLIN_CGCCPF: TStringField;
    Q_TRANSCLIN_INSCRG: TStringField;
    Q_TRANSCLIF_CGCCPF: TStringField;
    Q_TRANSCLIF_INSCRG: TStringField;
    Q_TRANSUFemit: TStringField;
    Q_TRANSUFdest: TStringField;
    Q_TRANSORD_STATUS: TStringField;
    Q_CARGAORD_PAGO: TStringField;
    Q_CARGACLIN_CGCCPF: TStringField;
    Q_CARGACLIN_INSCRG: TStringField;
    Q_CARGAUFemit: TStringField;
    Q_CARGACLIF_CGCCPF: TStringField;
    Q_CARGACLIF_INSCRG: TStringField;
    Q_CARGAUFdest: TStringField;
    Q_CARGAOS_DATA: TDateTimeField;
    Q_CARGANFI_DEMI: TDateTimeField;
    Q_CARGANFI_NUMERO: TStringField;
    Q_CARGANFI_TOTA: TFloatField;
    Q_CARGAORD_CONh: TStringField;
    Q_ITENSNFI_VICM: TFloatField;
    Q_ITENScodproduto: TStringField;
    Q_AUX: TwwQuery;
    Q_ITENStota: TFloatField;
    Q_TRANSTOTAPREST: TFloatField;
    Q_TRANSTOTAICMS: TFloatField;
    Q_INVENTQTDEDISP: TFloatField;
    Q_INVENTPRO_ID: TAutoIncField;
    Q_INVENTCLIN_CGCCPF: TStringField;
    Q_INVENTCLIN_INSCRG: TStringField;
    Q_INVENTUF_SIGLA: TStringField;
    Q_INVENTPRO_DESC: TStringField;
    Q_INVENTSIGLA: TStringField;
    Q_SERVPRO_DESC: TStringField;
    Q_SERVSIGLA: TStringField;
    Q_SERVPRO_ID: TAutoIncField;
    Q_AUX2: TwwQuery;
    Q_NFNFI_FATURADA: TStringField;
    Q_NFNFI_MARCAREEN: TStringField;
    Q_NFNFI_STATUS: TStringField;
    Q_NFNFI_MARCAIMP: TStringField;
    Q_NFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    Q_NFNFI_LOAD: TStringField;
    Q_NFNFI_SERIE: TStringField;
    Q_NFINF_AICM: TFloatField;
    Q_NFTOTporAICMS: TFloatField;
    Q_ITENSPRO_REDUZICMS: TFloatField;
    Q_ITENSPRO_ICMS: TFloatField;
    Q_TRANSORD_DATa: TDateTimeField;
    Q_AUX3: TwwQuery;
    Q_TRANSORD_aliq: TFloatField;
    Q_CARGAORD_DATA: TDateTimeField;
    Q_ITENSINF_CST: TStringField;
    Q_INVENTCONCA: TStringField;
    Q_SERVCONCA: TStringField;
    Image1: TImage;
    lbProgress: TLabel;
    lbContador: TLabel;
    cboproduto: TComboBox;
    qrCliente: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_PESSOA: TStringField;
    qrClienteCLIN_RAZA: TStringField;
    qrClienteCLIN_NOME: TStringField;
    qrClienteCLIN_CGCCPF: TStringField;
    qrClienteCLIN_INSCRG: TStringField;
    qrClienteCLIN_ENDERECO: TStringField;
    qrClienteCLIN_ENDERECO_COMPL: TStringField;
    qrClienteCLIN_ENDERECO_BAIRRO: TStringField;
    qrClienteCLIN_MUNICIPIO: TStringField;
    qrClienteUF_SIGLA: TStringField;
    qrClienteCLIN_CEP: TStringField;
    qrClienteCLIN_TEL1: TStringField;
    qrClienteCLIN_TEL2: TStringField;
    qrClienteCLIN_FAX: TStringField;
    qrClienteCLIN_EMAIL: TStringField;
    qrClienteCON_CODI: TStringField;
    qrClienteCLIN_CONTRATO: TStringField;
    qrClienteCLIN_UTIL_COD: TStringField;
    qrClienteMUN_ID: TIntegerField;
    qrClienteCLIN_WEB: TStringField;
    qrClienteCLIN_ENDC: TStringField;
    qrClienteCLIN_END_COMPLC: TStringField;
    qrClienteCLIN_END_BAIRC: TStringField;
    qrClienteCLIN_MUNICC: TStringField;
    qrClienteUF_SIGLAC: TStringField;
    qrClienteCLIN_CEPC: TStringField;
    qrClienteCLIN_TELC: TStringField;
    qrClienteCLIN_FAXC: TStringField;
    qrClienteCLIN_EMAILC: TStringField;
    qrClienteMUN_IDC: TIntegerField;
    qrClienteCLIN_TIPOSALDO: TStringField;
    qrClienteCLIN_VLRSALDO: TFloatField;
    qrClienteCLIN_TPMERC: TStringField;
    qrClienteCLIN_LOTE: TStringField;
    qrClienteCLIN_ISS: TFloatField;
    qrClienteCLIN_DESCONTO: TFloatField;
    qrClienteRemanejaSN: TStringField;
    Q_TRANSCLIN_RAZA: TStringField;
    qrNBF: TwwQuery;
    qrNBFPAR_ID: TAutoIncField;
    qrNBFPAR_NOME: TStringField;
    qrNBFPAR_RAZA: TStringField;
    qrNBFPAR_CNPJ: TStringField;
    qrNBFPAR_INSC: TStringField;
    qrNBFPAR_ENDERECO: TStringField;
    qrNBFPAR_ENDERECO_COMPL: TStringField;
    qrNBFPAR_ENDERECO_BAIRRO: TStringField;
    qrNBFPAR_UF_SIGLA: TStringField;
    qrNBFPAR_CEP: TStringField;
    qrNBFPAR_TEL: TStringField;
    qrNBFPAR_FAX: TStringField;
    qrNBFPAR_EMAIL: TStringField;
    qrNBFAR_ID: TIntegerField;
    qrNBFMUN_ID: TIntegerField;
    qrNBFAR_ID_OPER: TIntegerField;
    qrNBFULT_TAG: TIntegerField;
    qrNBFPALLET_M2: TFloatField;
    qrNBFCO_SER_ID: TIntegerField;
    qrNBFEN_SER_ID: TIntegerField;
    qrNBFFLAGTELA: TStringField;
    qrNBFFLAGTELA2: TStringField;
    qrNBFFLAGTELA3: TStringField;
    qrNBFCLIN_ID: TIntegerField;
    qrNBFVERSAO: TStringField;
    qrNBFFLAGTELA_USUARIO: TStringField;
    qrNBFFLAGTELA_DATA: TDateTimeField;
    qrNBFFLAGTELA2_USUARIO: TStringField;
    qrNBFFLAGTELA2_DATA: TDateTimeField;
    qrNBFPORTA: TIntegerField;
    qrNBFHOST: TStringField;
    qrNBFCAMINHO: TStringField;
    qrNBFULT_FATURA: TIntegerField;
    qrNBFULT_NF: TIntegerField;
    qrNBFULT_CONH: TIntegerField;
    qrNBFAR_ID_AVARIA: TIntegerField;
    qrNBFULT_MINUTA: TIntegerField;
    qrNBFULT_NFPROV: TIntegerField;
    qrNBFULT_CONHPROV: TIntegerField;
    qrNBFULT_MINUTAPROV: TIntegerField;
    qrNBFCAMINHO_MATRICIAL: TStringField;
    qrNBFCAMINHO_MATRICIAL_FATURA: TStringField;
    qrNBFCAMINHO_MATRICIAL_CONH: TStringField;
    qrNBFDATA: TDateTimeField;
    qrNBFConnectionString: TStringField;
    qrNBFIBGE_ID: TIntegerField;
    qrNBFNUMERO: TIntegerField;
    qrNBFLOGO: TBlobField;
    Q_CARGAORD_STATUS: TStringField;
    Q_CARGAORD_COLETA_ENTREGA: TStringField;
    Q_CARGACNF_NF: TStringField;
    Q_CARGAEMISSAO: TDateTimeField;
    Q_CARGASERIE: TStringField;
    Q_CARGANFI_SERIE: TStringField;
    Q_CARGACNF_VALOR: TFloatField;
    qrKardexExec: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations  }
  end;

var
  FGeraFiscal: TFGeraFiscal;
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
  DATACO : STRING;

  ISENTAS : STRING ;


   
  SDS : INTEGER ;
  NOTASEMBARRA : string ;

implementation
uses U_FUNCOES, UMenu ;
{$R *.DFM}

procedure TFGeraFiscal.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFGeraFiscal.BitBtn1Click(Sender: TObject);
const
  BRANCOA = ' ';
  BRANCON = '0';
  Brancos = '                                                                                                                                                                             ' ;
vAR
   a, b : Integer;
   AcheiReg75, acheiProduto : Boolean;
   D_INICIO, D_FIM : string;
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


  // DATA_INI := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
  // DATA_FIM := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));

   D_INICIO := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
   D_FIM := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));

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

   lbProgress.Visible := True;
   lbContador.Visible := True;
   lbProgress.Caption := 'Coletando informações necessárias.';
   gauge1.progress  := 0 ;
   gauge1.visible   := true;
   Application.ProcessMessages;
   //Animate1.visible := true ;
   //Animate1.active  := true ;

  { Q_NF.SQL.CLEAR;
   Q_NF.SQL.ADD('/****notas fiscais******/ SELECT a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.');
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
   Q_NF.SQL.ADD('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,D.INF_AICM,SUM(round(D.inf_tota,2)) as TOTporAICMS');
   Q_NF.SQL.ADD('FROM NF A,FATURAMENTO B, CLIENTENBF C , NF_ITENS D with (nolock)')  ;
   Q_NF.SQL.ADD('where A.CFA_ID = B.CFA_ID ');
   Q_NF.SQL.ADD('and A.NFI_EMIT_CLI = C.CLIN_ID ');
   Q_NF.SQL.ADD('and A.NFI_CODI = D.NFI_CODI ');

   //Q_NF.SQL.ADD('AND (A.NFI_STATUS =  ' + '''' + 'E' + '''');
  // Q_NF.SQL.ADD('OR  A.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
   Q_NF.SQL.ADD('AND ISNULL(A.NFI_STATUS, '''') IN ('''', ''E'',''C'' ) ');

   Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
   Q_NF.SQL.Add('and convert(Char(10),A.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
   Q_NF.SQL.Add('AND (A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 2 OR A.TDOC_ID = 17)');
   Q_NF.SQL.Add('and A.NFI_CODI in (Select NFI_CODI FROM NF_ITENS) ') ;

   /////Q_NF.SQL.Add('AND A.NFI_NUMERO    = ' + '''' + '25372'  + '''') ;

   Q_NF.SQL.Add('group by  a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A.') ;
   Q_NF.SQL.Add('	NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A. ') ;
   Q_NF.SQL.Add('	NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,A. NFI_DEST_CGC,A.   ') ;
   Q_NF.SQL.Add('	NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A.') ;
   Q_NF.SQL.Add('	NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.') ;
   Q_NF.SQL.Add('	NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A. ') ;
   Q_NF.SQL.Add('	NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A.') ;
   Q_NF.SQL.Add('	NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A.    ') ;
   Q_NF.SQL.Add('	NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.') ;
   Q_NF.SQL.Add('	NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA,') ;
   Q_NF.SQL.Add('	A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.      ') ;
   Q_NF.SQL.Add('	NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.CLIN_CGCCPF,C.CLIN_INSCRG,D.INF_AICM  ') ;
   Q_NF.SQL.Add(' order by A.NFI_DEMI,A.NFI_NUMERO ') ;


   }




   with Q_NF do begin
       close;
       sql.Clear;
       sql.Add(

          '  SELECT  '+
          '  a.NFI_CODI,DBO.CONTROLA_NOTA(A.NFI_NUMERO) NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A. '+
          '          NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A. '+
          '          NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,DBO.CONTROLA_CNPJ(A.NFI_DEST_CGC) AS NFI_DEST_CGC,A. '+
          '          NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A. '+
          '          NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A.  '+
          '          NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A.  '+
          '          NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A. '+
          '          NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A. '+
          '          NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A.  '+
          '          NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA, '+
          '          A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A. '+
          '          NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,D.INF_AICM,SUM(round(D.inf_tota,2)) as TOTporAICMS '+
          '  FROM NF A INNER JOIN FATURAMENTO B ON A.CFA_ID = B.CFA_ID '+
          '  INNER JOIN NF_ITENS D ON A.NFI_CODI = D.NFI_CODI  '+
          '  LEFT OUTER JOIN CLIENTENBF C ON A.NFI_EMIT_CLI = C.CLIN_ID  '+
          '  LEFT OUTER JOIN PRODUTO E ON D.PRO_ID = E.PRO_ID  '+
          '  WHERE   ISNULL(A.NFI_STATUS, '''') IN ( '''', ''E'', ''C'' )   '+
          '  and convert(Char(10),A.NFI_DEMI,112) >= ' + QuotedStr(D_INICIO) +
          '  and convert(Char(10),A.NFI_DEMI,112) <= ' + QuotedStr(D_FIM) +
          //' AND A.NFI_CODI = 397021'+  /////////////////////////////
          '  AND (A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 2 OR A.TDOC_ID = 17) '+
          '  group by  a.NFI_CODI,A.NFI_NUMERO,A.TDOC_ID,A.NFI_EMIT_ORIG,A. NFI_EMIT_CLI,A. NFI_DEST_ORIG,A. NFI_DEST_CLI ,A. '+
          '          NFI_DEST_NOME,A. NFI_DEST_RAZA,A.NFI_DEST_ENDERECO,A. NFI_DEST_COMPL,A. NFI_DEST_BAIRRO,A. '+
          '          NFI_DEST_UF_SIGLA,A. NFI_DEST_CEP,A. NFI_DEST_TEL,A. NFI_DEST_FAX,A. NFI_DEST_CGC,A. '+
          '          NFI_DEST_INSCRG,A.NFI_DEST_INSCTRB,A.  NFI_DEST_PESS,A.NFI_VDES,A. NFI_VFRE,A. NFI_VSEG ,A.NFI_BIPI,A. '+
          '          NFI_VIPI,A. NFI_BICM,A. NFI_VICM,A. NFI_VMER,A.NFI_TOTA,A. NFI_DSAI,A. NFI_HSAI,A. NFI_TRAN,A. NFI_PLAC,A. '+
          '          NFI_UF_SIGLA,A. NFI_MARC,A. NFI_QTDE,A. NFI_ESPE,A. NFI_PLIQ,A.NFI_PBRU,A.NFI_VOL,A.NFI_TFRE,A. '+
          '          NFI_DEMI,A.CFA_ID,A. OS_ID,A.MUN_ID,A.NFI_MARCADOR,A. NFI_DTENTREGA,A. MANI_ID,A.MANI_ORDEM,A. '+
          '          NFI_MOVESTQ,A. NFI_TRANS,A. NFI_DTENTREGA_FIM,A.NFI_ENTREGA,A. NFI_COBRAR,A. '+
          '          NFI_CLONE,A. NFI_QTDEPALLET,A. NFI_QTDEUV,A. TPRO_ID,A.NFI_MARCADOR_NFRS,A. NFI_NFRS_REJEITADA,A. '+
          '          NFI_RETORNADA,A. NFI_GEROUNFE ,A.NFI_REDESPACHO ,A.ORD_ID ,A. TRANS_ID,A. NFI_PRESTSERV,A. NFI_FATURADA, '+
          '          A.FAT_ID,A. NFI_MARCAREEN,A.NFI_STATUS,A. NFI_MARCAIMP,A. NFI_CODI_ORIGINOUNFRS,A.  '+
          '          NFI_LOAD,A. NFI_SERIE ,B.CFA_CODI,C.CLIN_CGCCPF,C.CLIN_INSCRG,D.INF_AICM  '+
          '  order by A.NFI_DEMI,A.NFI_NUMERO  '
       );
   end;







   Q_NF.OPEN;


  //ERRO - MIGUEL
  { Q_TRANS.SQL.CLEAR;
   Q_TRANS.SQL.ADD('/***********transportadora************/SELECT A.ORD_ALIQ,A.ORD_DATA,C.OS_DATA,A.ORD_STATUS,round(A.ORD_TOTALPREST,2) as TOTAPREST,');
   Q_TRANS.SQL.ADD('A.MANI_ID,');
   Q_TRANS.SQL.ADD('A.CFA_ID,');

   Q_TRANS.SQL.ADD('A.ORD_VALORTOTAL,');
   Q_TRANS.SQL.ADD('round(A.ORD_VLR_ICMS,2) AS TOTAICMS,');
   Q_TRANS.SQL.ADD('A.ORD_ID,A.ORD_CONH, D.CFA_CODI, A.ORD_PAGO, ') ;
   Q_TRANS.SQL.ADD('DBO.CONTROLA_CNPJ(E.CLIN_CGCCPF) AS CLIN_CGCCPF,E.CLIN_INSCRG,E.UF_SIGLA as UFemit, ') ;
   Q_TRANS.SQL.ADD('DBO.CONTROLA_CNPJ(F.CLIF_CGCCPF) AS CLIF_CGCCPF,F.CLIF_INSCRG,E.UF_SIGLA as UFdest, E.CLIN_RAZA');
   Q_TRANS.SQL.ADD('FROM ORDEM_COLETA_ENTREGA A, TRANSPORTADORA B, ');
   Q_TRANS.SQL.ADD('OS C, FATURAMENTO D,CLIENTENBF E,CLIENTEFINAL F with (nolock)');
   Q_TRANS.SQL.ADD('WHERE A.TRANS_ID = B.TRANS_ID');
   Q_TRANS.SQL.ADD('AND  A.OS_ID = C.OS_ID ');
   Q_TRANS.SQL.ADD('AND  D.CFA_ID = A.CFA_ID ');
   Q_TRANS.SQL.ADD('AND  E.CLIN_ID = A.CLIN_ID ');
   Q_TRANS.SQL.ADD('AND  F.CLIF_ID = A.CLIF_ID ');    }

   Q_TRANS.SQL.CLEAR;
   Q_TRANS.SQL.Add('   SELECT distinct A.ORD_ALIQ,A.ORD_DATA,C.OS_DATA,A.ORD_STATUS,round(A.ORD_TOTALPREST,2) as TOTAPREST, ') ;
   Q_TRANS.SQL.Add('   A.MANI_ID,  ') ;
   Q_TRANS.SQL.Add('   A.CFA_ID, ') ;
   Q_TRANS.SQL.Add('   A.ORD_VALORTOTAL, ') ;
   Q_TRANS.SQL.Add('   round(A.ORD_VLR_ICMS,2) AS TOTAICMS, ') ;
   Q_TRANS.SQL.Add('   A.ORD_ID,A.ORD_CONH, D.CFA_CODI, ISNULL(A.ORD_PAGO, ''S'') ORD_PAGO,  ') ;
   Q_TRANS.SQL.Add('   DBO.CONTROLA_CNPJ(E.CLIN_CGCCPF) AS CLIN_CGCCPF,E.CLIN_INSCRG,E.UF_SIGLA as UFemit, ') ;
   Q_TRANS.SQL.Add('   DBO.CONTROLA_CNPJ(F.CLIF_CGCCPF) AS CLIF_CGCCPF,F.CLIF_INSCRG,E.UF_SIGLA as UFdest, E.CLIN_RAZA  ') ;
   Q_TRANS.SQL.Add('   FROM  ORDEM_COLETA_ENTREGA A left outer join  ') ;
   Q_TRANS.SQL.Add('   NF N with (nolock) on N.ORD_ID = A.ORD_ID left outer join  ') ;
   Q_TRANS.SQL.Add('   FATURAMENTO D ON A.CFA_ID = D.CFA_ID LEFT OUTER JOIN  ') ;
   Q_TRANS.SQL.Add('   TRANSPORTADORA T ON A.TRANS_ID = T.TRANS_ID, CLIENTENBF E,CLIENTEFINAL F, OS C ') ;
   Q_TRANS.SQL.Add('   WHERE A.CLIN_ID = E.CLIN_ID  ') ;
   Q_TRANS.SQL.Add('   and   A.CLIF_ID = F.CLIF_ID ') ;
   Q_TRANS.SQL.Add('   and   C.OS_ID = A.OS_ID  ') ;
   Q_TRANS.SQL.Add('and convert(Char(10),A.ORD_DATA,112) >= ' +''''+ D_INICIO + '''') ;
   Q_TRANS.SQL.Add('and convert(Char(10),A.ORD_DATA,112) <= ' +''''+ D_FIM + '''') ;
   Q_TRANS.SQL.ADD('AND (A.ORD_STATUS =  ' + '''' + 'E' + '''');
   Q_TRANS.SQL.ADD('OR   A.ORD_STATUS =  ' + '''' + 'C' + '''' + ')');
   //Q_TRANS.sql.Add('and A.ORD_CONH = ''323362'' ') ;
   Q_TRANS.SQL.ADD('order by A.ORD_CONH');
   Q_TRANS.OPEN;


   Q_CARGA.close ;
   Q_CARGA.SQL.CLEAR;
   Q_CARGA.SQL.ADD('/******carga*******/ SELECT A.ORD_STATUS, A.ORD_DATA,ISNULL(A.ORD_PAGO, ''S'') ORD_PAGO,A.ORD_CONH,  ') ;
   Q_CARGA.SQL.ADD('    DBO.CONTROLA_CNPJ(B.CLIN_CGCCPF) AS CLIN_CGCCPF,B.CLIN_INSCRG,B.UF_SIGLA as UFemit, ') ;
   Q_CARGA.SQL.ADD('    DBO.CONTROLA_CNPJ(C.CLIF_CGCCPF) AS CLIF_CGCCPF,C.CLIF_INSCRG,C.UF_SIGLA as UFdest, ') ;
   Q_CARGA.SQL.ADD('    D.OS_DATA ,E.NFI_DEMI,DBO.CONTROLA_NOTA(E.NFI_NUMERO) NFI_NUMERO,E.NFI_TOTA, CL.CNF_NF, CL.EMISSAO, CL.SERIE, A.ORD_COLETA_ENTREGA ') ;
   Q_CARGA.SQL.ADD(',E.NFI_SERIE, CL.CNF_VALOR');
   Q_CARGA.SQL.ADD('FROM  ORDEM_COLETA_ENTREGA A left outer join NF E with (nolock) on E.ORD_ID = A.ORD_ID ');
   Q_CARGA.SQL.ADD('LEFT OUTER JOIN COLETA_NF CL ON CL.MANI_ID = A.MANI_ID');
   Q_CARGA.SQL.ADD(' , CLIENTENBF B,CLIENTEFINAL C, OS D ') ;
   Q_CARGA.SQL.ADD('WHERE A.CLIN_ID = B.CLIN_ID  ') ;
   Q_CARGA.SQL.ADD('and   A.CLIF_ID = C.CLIF_ID  ') ;
   Q_CARGA.SQL.ADD('and   D.OS_ID = A.OS_ID  ') ;
   Q_CARGA.SQL.ADD('and convert(Char(10),A.ORD_DATA,112) >= ' +''''+ D_INICIO + '''') ;
   Q_CARGA.SQL.ADD('and convert(Char(10),A.ORD_DATA,112) <= ' +''''+ D_FIM + '''') ;
   Q_CARGA.SQL.ADD('AND (A.ORD_STATUS =  ' + '''' + 'E' + '''');
   Q_CARGA.SQL.ADD('OR  A.ORD_STATUS =  ' + '''' + 'C' + '''' + ')');
   //Q_CARGA.SQL.Add('and A.ORD_CONH = ''323362'' ') ;
   Q_CARGA.SQL.ADD('and (E.NFI_NUMERO IS NOT NULL OR CL.CNF_NF IS NOT NULL)'); //TRAZ SOMENTE SE TIVER NOTA ASSOCIADA
   Q_CARGA.OPEN;


   Q_INVENT.SQL.CLEAR;
   Q_INVENT.SQL.ADD('/*********inventario*************/SELECT sum(A.ESTQ_QTDE) as QTDEDISP,b.PRO_ID,') ;
  // Q_INVENT.SQL.ADD('(B.PRO_COD + ' + '''' + '-' +  '''' + ' + ltrim(rtrim(STR(C.CLIN_ID))))  as CONCA ' )  ;
   Q_INVENT.SQL.ADD('B.PRO_COD as CONCA ' )  ;
   Q_INVENT.SQL.ADD(',B.PRO_DESC,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF,C.CLIN_INSCRG,C.UF_SIGLA,substring(D.UVEN_NOME,1,2) as SIGLA ') ;
   Q_INVENT.SQL.ADD('FROM ESTOQUE A, PRODUTO B, CLIENTENBF C, UNIDVENDA D with (nolock)') ;
   Q_INVENT.SQL.ADD('WHERE A.PRO_ID = B.PRO_ID ') ;
   Q_INVENT.SQL.ADD('AND B.CLIN_ID = C.CLIN_ID ') ;
   ///Q_INVENT.SQL.ADD('AND B.CLIN_ID = C.CLIN_ID ') ;
   Q_INVENT.SQL.ADD('AND D.UVEN_ID = B.UVEN_ID ') ;
   Q_INVENT.SQL.ADD('AND A.ESTQ_DT_ENTRADA IS NOT NULL') ;
   Q_INVENT.SQL.ADD('AND A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''') ;
   Q_INVENT.SQL.ADD('AND A.ESTQ_QTDE_RETIRA = ' + inttostr(0)) ;
   Q_INVENT.SQL.ADD('AND (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')') ;
   Q_INVENT.SQL.ADD('group by B.PRO_ID,') ;
   Q_INVENT.SQL.ADD('B.PRO_COD ') ;
   Q_INVENT.SQL.ADD(',B.PRO_DESC,C.CLIN_CGCCPF,') ;
   Q_INVENT.SQL.ADD('C.CLIN_INSCRG, C.UF_SIGLA,substring(D.UVEN_NOME,1,2) ') ;
   Q_INVENT.SQL.ADD('order by B.PRO_COD ') ;
   Q_INVENT.open ;


      {

   WITH Q_INVENT do begin
       close;
       sql.Clear;
       sql.Add(
          '  SELECT 0.00 as QTDEDISP,B.PRO_ID,   '+
          '  B.PRO_COD as CONCA  '+
          '  ,B.PRO_DESC,DBO.CONTROLA_CNPJ(C.CLIN_CGCCPF) AS CLIN_CGCCPF, '+
          '  C.CLIN_INSCRG,C.UF_SIGLA,substring(D.UVEN_NOME,1,2) as SIGLA '+
          '  FROM PRODUTO B INNER JOIN CLIENTENBF C  '+
          '  ON B.CLIN_ID = C.CLIN_ID INNER JOIN UNIDVENDA D  '+
          '  ON B.UVEN_ID = D.UVEN_ID  '+
          '  WHERE PRO_ID IN (   '+
          '  SELECT D.PRO_ID FROM NF A INNER JOIN FATURAMENTO B ON A.CFA_ID = B.CFA_ID  '+
          '                 INNER JOIN NF_ITENS D ON A.NFI_CODI = D.NFI_CODI   '+
          '                  INNER JOIN CLIENTENBF C ON A.NFI_EMIT_CLI = C.CLIN_ID   '+
          '                  INNER JOIN PRODUTO E ON D.PRO_ID = E.PRO_ID  '+
          '                  WHERE   ISNULL(A.NFI_STATUS, '''') IN ( '''', ''E'', ''C'' )  '+
          '                  and convert(Char(10),A.NFI_DEMI,112) >= ' + QuotedStr(D_INICIO)  +
          '                  and convert(Char(10),A.NFI_DEMI,112) <= ' + QuotedStr(D_FIM) +
          '                  AND (A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 2 OR A.TDOC_ID = 17)'+
          '  ) '+
          '  ORDER BY B.PRO_DESC  '
       );
       Open;
   end;

             }





  { Q_SERV.SQL.CLEAR;
   //Q_SERV.SQL.ADD('SELECT DISTINCT A.PRO_ID,(A.PRO_COD + ' + '''' + '-' +  '''' + ' + ltrim(rtrim(STR(A.CLIN_ID))))  as CONCA ,   ') ;
   Q_SERV.SQL.ADD('/********servicos***********/SELECT DISTINCT   A.PRO_ID, A.PRO_COD as CONCA ,   ') ;
   Q_SERV.SQL.ADD('A.PRO_DESC,substring(B.UVEN_NOME,1,2) as SIGLA') ;
   Q_SERV.SQL.ADD('FROM    ') ;
   Q_SERV.SQL.ADD('	(SELECT A.PRO_ID   ') ;
   Q_SERV.SQL.ADD('	FROM 	NF_ITENS A, ') ;
   Q_SERV.SQL.ADD('		NF B,   ') ;
   Q_SERV.SQL.ADD('		FATURAMENTO C,') ;
   Q_SERV.SQL.ADD('		CLIENTENBF D, ') ;
   Q_SERV.SQL.ADD('		PRODUTO E   with (nolock)') ;
   Q_SERV.SQL.ADD('	WHERE  	A.NFI_CODI = B.NFI_CODI  ') ;
   Q_SERV.SQL.ADD('	AND   	C.CFA_ID = B.CFA_ID ') ;
   Q_SERV.SQL.ADD('	AND   	B.NFI_EMIT_CLI = D.CLIN_ID  ') ;
   Q_SERV.SQL.ADD('AND  (B.NFI_STATUS =  ' + '''' + 'E' + '''');
   Q_SERV.SQL.ADD('OR   B.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
   Q_SERV.SQL.ADD('	AND   	A.PRO_ID = E.PRO_ID') ;
   Q_SERV.SQL.ADD('and convert(Char(10),B.NFI_DEMI,112) >= ' +''''+ D_INICIO + '''') ;
   Q_SERV.SQL.ADD('and convert(Char(10),B.NFI_DEMI,112) <= ' +''''+ D_FIM + '''') ;
   Q_SERV.SQL.ADD('	AND    (B.TDOC_ID =  ' + inttostr(3)) ;
   Q_SERV.SQL.ADD('	OR	B.TDOC_ID = ' + inttostr(14)) ;
   Q_SERV.SQL.ADD('     OR      B.TDOC_ID = ' + inttostr(15)) ;
   Q_SERV.SQL.ADD('     OR      B.TDOC_ID = ' + inttostr(17)) ;
   Q_SERV.SQL.ADD('	OR	B.TDOC_ID = ' + inttostr(2)+')') ;
   Q_SERV.SQL.ADD('	UNION   ALL   ') ;
   Q_SERV.SQL.ADD('	SELECT 	B.PRO_ID  ') ;
   Q_SERV.SQL.ADD('	FROM  	ESTOQUE A,    ') ;
   Q_SERV.SQL.ADD('		PRODUTO B,        ') ;
   Q_SERV.SQL.ADD('		CLIENTENBF C,         ') ;
   Q_SERV.SQL.ADD('		UNIDVENDA D  with (nolock)    ') ;
   Q_SERV.SQL.ADD('	WHERE 	A.PRO_ID = B.PRO_ID  ') ;
   Q_SERV.SQL.ADD('	AND   	B.CLIN_ID = C.CLIN_ID    ') ;
   Q_SERV.SQL.ADD('	AND   	A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
   Q_SERV.SQL.ADD('	AND   	A.ESTQ_DT_ENTRADA <>  ' + '''' + '' + '''') ;
   Q_SERV.SQL.ADD('	AND   	A.ESTQ_QTDE_RETIRA = ' + inttostr(0)) ;
   Q_SERV.SQL.ADD('	AND  	(A.MANI_ID IS NULL OR A.MANI_ID = ' + '''' + '' + '''' + ')') ;
   Q_SERV.SQL.ADD('	AND   	D.UVEN_ID = B.UVEN_ID) TAB,') ;
   Q_SERV.SQL.ADD('	PRODUTO A,UNIDVENDA B    ') ;
   Q_SERV.SQL.ADD(' WHERE	A.PRO_ID = TAB.PRO_ID ') ;
   Q_SERV.SQL.ADD(' and        A.UVEN_ID = B.UVEN_ID  ') ;
   //Q_SERV.SQL.ADD('ORDER BY A.PRO_COD + ' + '''' + '-' +  '''' + ' + ltrim(rtrim(STR(A.CLIN_ID)))   ') ;
   Q_SERV.SQL.ADD('ORDER BY A.PRO_COD') ;
   Q_SERV.open;  }


   WITH Q_SERV DO begin
       Close;
       sql.Clear;
       sql.Add(
           ' SELECT distinct '+
           ' ISNULL(D.PRO_ID, 0) PRO_ID , D.PRO_COD AS CONCA, E.PRO_DESC, substring(U.UVEN_NOME,1,2) as SIGLA  '+
           ' FROM NF A INNER JOIN FATURAMENTO B ON A.CFA_ID = B.CFA_ID  '+
           ' INNER JOIN NF_ITENS D ON A.NFI_CODI = D.NFI_CODI '+
           ' left outer  JOIN CLIENTENBF C ON A.NFI_EMIT_CLI = C.CLIN_ID    '+
           ' left outer JOIN PRODUTO E ON D.PRO_ID = E.PRO_ID  '+
           ' LEFT OUTER JOIN UNIDVENDA U ON D.UVEN_ID = U.UVEN_ID  '+
           ' WHERE   ISNULL(A.NFI_STATUS,'''' ) IN ('''' , ''E'', ''C'' )  '+
           ' and convert(Char(10),A.NFI_DEMI,112) >=  '+ QuotedStr(D_INICIO) +
           ' and convert(Char(10),A.NFI_DEMI,112) <=  ' + QuotedStr(D_FIM)    +
           ' AND (A.TDOC_ID = 2 or A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15  OR A.TDOC_ID = 17) '+
           ' union all '+
           ' SELECT  B.PRO_ID,  '+
           ' B.PRO_COD as CONCA '+
           ' ,B.PRO_DESC,substring(D.UVEN_NOME,1,2) as SIGLA  '+
           ' FROM ESTOQUE A, PRODUTO B, CLIENTENBF C, UNIDVENDA D with (nolock)  '+
           ' WHERE A.PRO_ID = B.PRO_ID  '+
           ' AND B.CLIN_ID = C.CLIN_ID '+
           ' AND D.UVEN_ID = B.UVEN_ID   '+
           ' AND A.ESTQ_DT_ENTRADA IS NOT NULL '+
           ' AND A.ESTQ_DT_ENTRADA <> '''' '+
           ' AND A.ESTQ_QTDE_RETIRA = 0  '+
           ' AND (A.MANI_ID is NULL or A.MANI_ID = '''') '+
           ' group by B.PRO_ID, '+
           ' B.PRO_COD '+
           ' ,B.PRO_DESC, substring(D.UVEN_NOME,1,2)  '+
           ' ORDER BY D.PRO_COD  '
       );
       Open;

   end;

   //remove barras das datas
   strdata := copy(DATA_INI,7,4);
   dataPER := strdata;
   strdata := copy(DATA_INI,4,2);
   dataPER := dataPER + strdata;
   strdata := copy(DATA_INI,0,2);
   dataPER := dataPER + strdata;

   DATA_INI := dataPER;

   strdata := copy(DATA_FIM,7,4);
   dataPER :=  strdata;
   strdata := copy(DATA_FIM,4,2);
   dataPER := dataPER + strdata;
   strdata := copy(DATA_FIM,0,2);
   dataPER := dataPER + strdata;

   DATA_FIM := dataPER;
   /////////////////

   Cab90 := '90';
   //adiciona cnpj
   dataPER := Funcoes.ControlaCNPJ(Q_PARAMETROCLIN_CGCCPF.AsString);
   strdata := copy(dataPER,0,14);
   dataPER := strdata;
   VER := 14 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                Cab90 := Cab90 + BRANCON;
   end;
   Cab90 := Cab90 + dataPER;

  { dataPER := Q_PARAMETROPAR_INSC.AsString;
   strdata := copy(dataPER,0,14);
   dataPER := strdata;
   dataPER :=  Funcoes.remove(dataPER ,'.') ;
   dataPER :=  Funcoes.remove(dataPER ,'-') ;
   Cab90 := Cab90 + dataPER;

   VER := 16 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                Cab90 := Cab90 + BRANCOA;
   end;  }

   
  dataPER :=  Q_PARAMETROPAR_INSC.AsString;
  strdata := copy(dataPER,0,17);
  dataPER := strdata;
  dataPER :=  Funcoes.remove(dataPER ,'.') ;

  dataPER :=  Funcoes.remove(dataPER ,'-') ;
  Cab90 := Cab90 +  dataPER ;

  VER := 14 - length(dataPER);
  if VER >= 0 then
  begin
          for I := VER downto 1 do
                  Cab90 := Cab90 + BRANCOA;
  end;



   /////////////////////inicio REGISTRO 10 ***************************
   StrTexto10 := '10'; //TIPO DO REGISTRO
   //adiciona cnpj
   dataPER := Funcoes.ControlaCNPJ(Q_PARAMETROCLIN_CGCCPF.AsString);
   strdata := copy(dataPER,0,14);
   dataPER := strdata;
   VER := 14 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCON;
   end;
   StrTexto10 := StrTexto10 + dataPER;
   //adiciona insc. estadual
  //// dataPER := Q_PARAMETROCLIN_INSCRG.AsString;



  dataPER :=  Q_PARAMETROPAR_INSC.AsString;
  strdata := copy(dataPER,0,17);
  dataPER := strdata;
  dataPER :=  Funcoes.remove(dataPER ,'.') ;

  dataPER :=  Funcoes.remove(dataPER ,'-') ;
  StrTexto10 := StrTexto10 +  dataPER ;



  
  VER := 14 - length(dataPER);
  if VER >= 0 then
  begin
          for I := VER downto 1 do
                  StrTexto10 := StrTexto10 + BRANCOA;
  end;


   //adiciona razao social
   dataPER := Q_PARAMETROCLIN_RAZA.AsString;
   strdata := copy(dataPER,0,35);
   dataPER := mudaletr(strdata);
   StrTexto10 := StrTexto10 + dataPER;
   VER := 35 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCOA;
   end;

   //adiciona municipio
   dataPER := Q_PARAMETROCLIN_MUNICIPIO.AsString;
   strdata := copy(dataPER,0,30);
   dataPER := strdata;
   StrTexto10 := StrTexto10 + dataPER;
   VER := 30 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCOA;
   end;
   //adiciona uf
   dataPER := Q_PARAMETROUF_SIGLA.AsString;
   strdata := copy(dataPER,0,2);
   dataPER := strdata;
   StrTexto10 := StrTexto10 + dataPER;
   VER := 2 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCOA;
   end;
   //adiciona fax
   dataPER := Q_PARAMETROCLIN_FAX.AsString;
   strdata := copy(dataPER,4,10);
   dataPER := strdata;
   VER := 10 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCON;
   end;
   StrTexto10 := StrTexto10 + dataPER;

   //adiciona dataPER inicial
   StrTexto10 := StrTexto10 + DATA_INI;
   //adiciona dataPER final
   StrTexto10 := StrTexto10 + DATA_FIM;

   //adiciona cod. estr. arq.
   dataPER := '3';
   strdata := copy(dataPER,0,1);
   dataPER := strdata;
   VER := 1 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCON;
   end;
   StrTexto10 := StrTexto10 + dataPER;

   //adiciona cod id nat
   dataPER := '3';
   strdata := copy(dataPER,0,1);
   dataPER := strdata;
   VER := 1 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCON;
   end;
   StrTexto10 := StrTexto10 + dataPER;
   //adiciona cod fin
   dataPER := '1';
   strdata := copy(dataPER,0,1);
   dataPER := strdata;
   VER := 1 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto10 := StrTexto10 + BRANCON;
   end;
   StrTexto10 := StrTexto10 + dataPER;

   Rewrite(ArqTXT);
   Writeln(ArqTXT, StrTexto10);
 //  gauge1.progress := 10 ;
   /////////////////////Termino REGISTRO 10 ***************************



   /////////////////////Inicio REGISTRO 11 ***************************
   StrTexto11 := '11'; //TIPO DO REGISTRO
   //adiciona logradouro
   dataPER := Q_PARAMETROCLIN_ENDERECO.asstring;
   strdata := copy(dataPER,0,34);
   dataPER := strdata;
   StrTexto11 := StrTexto11 + dataPER;
   VER := 34 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                StrTexto11 := StrTexto11 + BRANCOA;
   end;



   //adiciona número
   dataPER := Q_PARAMETROCLIN_ENDERECO_COMPL.asstring;
   strtexto11 := strtexto11 + '01115';


    //adiciona COMPLEMENTO
   dataPER :=  '                      ';
   strtexto11 := strtexto11 + dataPER;


   //adiciona bairro
   dataPER := Q_PARAMETROCLIN_ENDERECO_BAIRRO.asstring;
   strdata := copy(dataPER,0,15);
   dataPER := strdata;
   strtexto11 := strtexto11 + dataPER;
   VER := 15 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                strtexto11 := strtexto11 + BRANCOA;
   end;
   //adiciona cep
   dataPER := Q_PARAMETROCLIN_CEP.asstring;
   strdata := copy(dataPER,0,8);
   dataPER := strdata;
   VER := 8 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                strtexto11 := strtexto11 + BRANCON;
   end;
   strtexto11 := strtexto11 + dataPER;


   //adiciona nome cont.
   dataPER := Q_PARAMETROCONT_NOME.ASSTRING;
   strdata := copy(dataPER,0,28);
   dataPER := strdata;
   strtexto11 := strtexto11 + dataPER;
   VER := 28 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                strtexto11 := strtexto11 + BRANCOA;
   end;




   //adiciona tel
   dataPER := Q_PARAMETROCONT_TEL1.asstring;
   strdata := copy(dataPER,0,12);
   dataPER := strdata;
   VER := 12 - length(dataPER);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                strtexto11 := strtexto11 + BRANCON;
   end;
   strtexto11 := strtexto11 + dataPER;

   Writeln(ArqTXT,strtexto11);
 //  gauge1.progress := 20 ;
   /////////////////////Termino REGISTRO 11 ***************************


   /////////////////////Inicio REGISTRO 50 ***************************
   Q_NF.Last;
   Q_NF.First;

   Gauge1.MaxValue := Q_NF.RecordCount;
   Gauge1.Progress := 0;
   lbProgress.Caption := 'Exportando registro 50 - Notas Fiscais...';
   Application.ProcessMessages;
   while not Q_NF.eof do
   begin
        ISENTAS := '' ;
        Gauge1.Progress := Gauge1.Progress + 1;
        lbContador.Caption := 'Exportando '+ IntToStr(Gauge1.Progress)+ ' de '+IntToStr(Gauge1.MaxValue) + ' registros';
        Application.ProcessMessages;

        StrTexto50 := '50'; //TIPO DO REGISTRO


        //adiciona cnpj
        if Q_NFTDOC_ID.value = 2 then
            dataPER :=  Q_NFCLIN_CGCCPF.AsString
        else
            dataPER :=  Q_NFNFI_DEST_CGC.AsString ;

        dataPER := Funcoes.ControlaCNPJ(dataPER);
        //Miguel - remove o primeiro caracter quando tem 15 posições
        //if Length(dataPER) = 15 then
        //        dataPER := Copy(dataPER, 2, 14);
        //dataPER := Trim(dataPER);
        //////////////////////////////////////////////////////



        strdata := copy(dataPER,1,14);
        dataPER := strdata;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;



        //adiciona insc reg.
        if Q_NFTDOC_ID.value = 2 then
            dataPER :=  Q_NFCLIN_INSCRG.AsString
        else
             dataPER := Q_NFNFI_DEST_INSCRG.AsString ;

        dataPER := copy(dataPER,1,14);

        strtexto50 := strtexto50 + Funcoes.remove(dataPER ,'.') ;
        VER := 14 - length(Funcoes.remove(dataPER ,'.'));
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;

        //adiciona dataPER emi.
        AUX2 := Q_NFNFI_DEMI.Value;
        strdata := formatdatetime('DD/MM/YYYY',AUX2);
        AUX := copy(strdata,0,10);

        strdata := copy(AUX,7,4);
        dataPER :=  strdata;

        strdata := copy(AUX,4,2);
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

        qrCliente.CLOSE;
        qrCliente.ParameterS[0].VALUE := Q_NFNFI_EMIT_CLI.AsInteger;
        qrCliente.Open;

        //adiciona uf
        dataPER := qrClienteUF_SIGLA.Value;
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        //adiciona modelo
        dataPER := '01';
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;
        //adiciona série  {alterado de U para 1}
        dataPER := '1';
        strdata := copy(dataPER,0,3);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 3 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;
        //adiciona nº nf
        dataPER := Q_NFNFI_NUMERO.AsString;
        strdata := copy(dataPER,0,6);
        dataPER := strdata;
        VER := 6 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;


        //adiciona cfop
        dataPER := Q_NFCFA_CODI.AsString;
        strdata := copy(dataPER,0,4);
        dataPER := strdata;
        VER := 4 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;


        //adiciona emitente
        if Q_NFTDOC_ID.value = 2 then
                dataPER := 'T'
        else
                dataPER := 'P';
        strdata := copy(dataPER,0,1);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 1 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;

        //adiciona valor tot.
         //if Q_NFNFI_VICM.AsFloat <> 0 then
         //dataPER := formatfloat('',Q_NFTOTporAICMS.AsFloat*100);
        ///else
           ///     dataPER := formatfloat('',(Q_NFNFI_TOTA.AsFloat*100));

        dataPER := formatfloat('00000000000.00',Q_NFTOTporAICMS.AsFloat);
        dataPER := StringReplace(dataPER, ',','', [rfReplaceAll])  ;
        dataPER := StringReplace(dataPER, '.','', [rfReplaceAll]) ;

        {strdata := copy(dataPER,0,13);
        dataPER := strdata;
        VER := 13 - length(dataPER);

        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;    }
        strtexto50 := strtexto50 + dataPER;


        //adiciona base icms
        {if Q_NFINF_AICM.AsFloat <> 0 then
                dataPER := formatfloat('',Q_NFNFI_BICM.AsFloat*100)
        else
                dataPER := formatfloat('000',0);

        strdata := copy(dataPER,0,13);
        dataPER := strdata;
        VER := 13 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER; }
        if Q_NFINF_AICM.AsString <> '' then
            dataPER := formatfloat('00000000000.00',Q_NFNFI_BICM.AsFloat)
        else
            dataPER := '00000000000.00';
        dataPER := StringReplace(dataPER, ',','', [rfReplaceAll])  ;
        dataPER := StringReplace(dataPER, '.','', [rfReplaceAll]) ;
        strtexto50 := strtexto50 + dataPER;



        

        //adiciona valor icms
       { If Q_NFINF_AICM.AsFloat <> 0 then
                dataPER := formatfloat('',Q_NFNFI_VICM.AsFloat*100)
        else
                dataPER := formatfloat('000',0);

        strdata := copy(dataPER,0,13);
        dataPER := strdata;
        VER := 13 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;     }

        if Q_NFINF_AICM.AsString <> '' then
            dataPER := formatfloat('00000000000.00',Q_NFNFI_VICM.AsFloat)
        else
            dataPER := '00000000000.00';
        dataPER := StringReplace(dataPER, ',','', [rfReplaceAll])  ;
        dataPER := StringReplace(dataPER, '.','', [rfReplaceAll]) ;
        strtexto50 := strtexto50 + dataPER;

       Q_AUX2.close ;
       Q_AUX2.SQL.clear ;
       Q_AUX2.SQL.add('select * from faturamento') ;
       Q_AUX2.SQL.add('where CFA_ID =  ' + Q_NFCFA_ID.asstring ) ;
       Q_AUX2.open  ;





       IF ((Q_AUX2.FieldByName('CFA_CODI').asstring = '5906') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '5907') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '5920') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '5921') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '6907') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '6906') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '5915') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '5905') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '5101') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '6905') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '1905') or
           (Q_AUX2.FieldByName('CFA_CODI').asstring = '2905'))  then
       begin
              //adiciona isen. ntrb.
             if Q_NFINF_AICM.AsFloat > 0 then
                        dataPER := formatfloat('000',0)
             else
                dataPER := formatfloat('',Q_NFTOTporAICMS.AsFloat*100) ;


              if Q_NFINF_AICM.AsString <> '' then
              BEGIN
                  strdata := copy(dataPER,0,13);
                  dataPER := strdata;
                  VER := 13 - length(dataPER);
                  if VER >= 0 then
                  begin
                       for I := VER downto 1 do
                               strtexto50 := strtexto50 + '0';
                  end;
              end
              ELSE
                 dataPER := '0000000000000';
              strtexto50 := strtexto50 + dataPER;


              //adiciona outras
              dataPER := formatfloat('000',0) ;

              strdata := copy(dataPER,0,13);
              dataPER := strdata;

              VER := 13 - length(dataPER);
              if VER >= 0 then
              begin
                   for I := VER downto 1 do
                           strtexto50 := strtexto50 + '0';
              end;
              strtexto50 := strtexto50 + dataPER;
       end



       else IF ((Q_AUX2.FieldByName('CFA_CODI').asstring = '5949') or
            (Q_AUX2.FieldByName('CFA_CODI').asstring = '6949'))  then begin


             Q_AUX3.close ;
             Q_AUX3.SQL.clear ;
             Q_AUX3.SQL.add('select SUM(A.PRO_REDUZICMS) as TOTAL from produto A, NF_ITENS B') ;
             Q_AUX3.SQL.add('where A.PRO_ID = B.PRO_ID ') ;
             Q_AUX3.SQL.add('AND   A.PRO_ICMS  = ' + Q_NFINF_AICM.asstring ) ;
             Q_AUX3.SQL.add('AND   B.NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
             Q_AUX3.open  ;

              IF (Q_AUX3.FieldByName('TOTAL').asfloat > 0) then begin

                  //adiciona isen. ntrb.
                    dataPER := formatfloat('00000000000.00',Q_AUX3.FieldByName('TOTAL').asfloat) ;
                    //strdata := copy(dataPER,0,13);
                    //dataPER := strdata;
                    dataPER := StringReplace(dataPER, ',','', [rfReplaceAll])  ;
                    dataPER := StringReplace(dataPER, '.','', [rfReplaceAll]) ;
                    VER := 13 - length(dataPER);
                    if VER >= 0 then
                    begin
                         for I := VER downto 1 do
                                 strtexto50 := strtexto50 + BRANCON;
                    end;
                    strtexto50 := strtexto50 + dataPER;


                    //adiciona outras
                    dataPER := formatfloat('000',0) ;

                    strdata := copy(dataPER,0,13);
                    dataPER := strdata;

                    VER := 13 - length(dataPER);
                    if VER >= 0 then
                    begin
                         for I := VER downto 1 do
                                 strtexto50 := strtexto50 + BRANCON;
                    end;
                    strtexto50 := strtexto50 + dataPER;
              end else begin
                   if Q_NFINF_AICM.AsFloat > 0 then  begin
                           //adiciona isen. ntrb.

                          strtexto50 := strtexto50 + '0000000000000' ;


                          //adiciona outras
                          dataPER :=  formatfloat('00000000000.00',Q_NFTOTporAICMS.AsFloat);
                          dataPER := StringReplace(dataPER,',','',[rfReplaceAll]);
                          dataPER := StringReplace(dataPER,'.','',[rfReplaceAll]) ;
                          strtexto50 := strtexto50 + dataPER;
                    end else begin
                            //adiciona isen. ntrb.
                          strtexto50 := strtexto50 + '0000000000000';


                          //adiciona outras
                          dataPER :=  formatfloat('00000000000.00',Q_NFTOTporAICMS.AsFloat);
                          dataPER := StringReplace(dataPER,',','',[rfReplaceAll]);
                          dataPER := StringReplace(dataPER,'.','',[rfReplaceAll]) ;
                          strtexto50 := strtexto50 + dataPER;


                   end;
              end ;

        end
        else
          strtexto50 := strtexto50 + '0000000000000' + '0000000000000' ;




        //adiciona alíquota
        if Q_NFINF_AICM.AsFloat <> 0 then
                dataPER := formatfloat('',Q_NFINF_AICM.AsFloat*100)
        else
                dataPER := formatfloat('000',0);


        strdata := copy(dataPER,0,4);
        dataPER := strdata;
        VER := 4 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCON;
        end;
        strtexto50 := strtexto50 + dataPER;


        //adiciona situação
        IF  Q_TRANSORD_STATUS.asstring = 'C' then
            dataPER := 'S'
        else
           dataPER := 'N' ;

        strdata := copy(dataPER,0,1);
        dataPER := strdata;
        strtexto50 := strtexto50 + dataPER;
        VER := 1 - length(dataPER);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto50 := strtexto50 + BRANCOA;
        end;

        Writeln(ArqTXT,strtexto50);
        Conta50 := Conta50 + 1;
        /////////////////////Termino REGISTRO 50 ***************************
        Application.ProcessMessages;
        Q_NF.Next;
   end;
//   gauge1.progress := 30; //50 ;


        /////////////////////Inicio REGISTRO 54 ***************************
       { Q_ITENS.Close;
        Q_ITENS.SQL.CLEAR;
        Q_ITENS.SQL.ADD('/*********items***********/SELECT round(A.inf_tota,2) as tota,E.PRO_REDUZICMS,E.PRO_ICMS,A.INF_CODI,A.INF_ITEM,') ;
        Q_ITENS.SQL.ADD('A.NFI_CODI,A.PRO_ID,A.PRO_COD');
        Q_ITENS.SQL.ADD(',A.PRO_DESC,A.INF_QTDE,A.INF_PUNI,A.INF_AIPI,A.INF_VIPI,');
        Q_ITENS.SQL.ADD('A.INF_PESOLIQ,A.INF_PESO,A.INF_VOL,A.INF_AICM,A.INF_BICM');
        Q_ITENS.SQL.ADD(',A.INF_VICM,A.UVEN_ID,A.INF_QTDERETORNADA,A.INF_NFE,A.INF_QTDERETORNADASALDO,A.INF_CST');
        Q_ITENS.SQL.ADD(',B.NFI_DEST_CGC,B.NFI_NUMERO,B.CFA_ID,D.CLIN_CGCCPF,D.CLIN_INSCRG, ');
        Q_ITENS.SQL.ADD('B.TDOC_ID,C.CFA_CODI ,B.NFI_VICM,E.PRO_COD as codproduto ' ) ;
        Q_ITENS.SQL.ADD('FROM NF_ITENS A,NF B,FATURAMENTO C,CLIENTENBF D,PRODUTO E');
        Q_ITENS.SQL.ADD('WHERE  A.NFI_CODI = B.NFI_CODI ');
        Q_ITENS.SQL.ADD('and   C.CFA_ID = B.CFA_ID ');
        //Q_ITENS.SQL.ADD('AND   (B.NFI_STATUS =  ' + '''' + 'E' + '''');
        //Q_ITENS.SQL.ADD('OR     B.NFI_STATUS =  ' + '''' + 'C' + '''' + ')');
        Q_ITENS.SQL.ADD('AND   ISNULL(B.NFI_STATUS, '''') IN ( '''', ''E'', ''C'' ) ');

        Q_ITENS.SQL.ADD('and   B.NFI_EMIT_CLI = D.CLIN_ID ');
        Q_ITENS.SQL.ADD('and   A.PRO_ID = E.PRO_ID ');

       ////// Q_ITENS.SQL.Add('AND B.NFI_NUMERO = ' +''''+  '25372'  + '''') ;

        Q_ITENS.SQL.Add('and convert(Char(10),B.NFI_DEMI,112) >= ' +''''+ DATA_INI2 + '''') ;
        Q_ITENS.SQL.Add('and convert(Char(10),B.NFI_DEMI,112) <= ' +''''+ DATA_FIM2 + '''') ;
        Q_ITENS.SQL.Add('AND (B.TDOC_ID = 3 OR B.TDOC_ID = 14 OR B.TDOC_ID = 15 OR B.TDOC_ID = 2 OR B.TDOC_ID = 17)');
        Q_ITENS.SQL.Add('ORDER BY b.NFI_NUMERO,A.INF_ITEM' ) ; }



        WITH Q_ITENS do begin
            close;
            sql.Clear;
            sql.Add(
              '  SELECT distinct '+
              '  round(D.inf_tota,2) as tota,E.PRO_REDUZICMS,E.PRO_ICMS,D.INF_CODI,D.INF_ITEM,  '+
              '  D.NFI_CODI,D.PRO_ID,D.PRO_COD  '+
              '  ,E.PRO_DESC,D.INF_QTDE,D.INF_PUNI,D.INF_AIPI,D.INF_VIPI,   '+
              '  D.INF_PESOLIQ,D.INF_PESO,D.INF_VOL,D.INF_AICM,D.INF_BICM   '+
              '  ,D.INF_VICM,D.UVEN_ID,D.INF_QTDERETORNADA,D.INF_NFE,D.INF_QTDERETORNADASALDO,D.INF_CST  '+
              '  ,A.NFI_DEST_CGC,DBO.CONTROLA_NOTA(A.NFI_NUMERO) NFI_NUMERO,B.CFA_ID,C.CLIN_CGCCPF,C.CLIN_INSCRG,   '+
              '  B.TDOC_ID,B.CFA_CODI ,A.NFI_VICM,E.PRO_COD as codproduto   '+
              '  FROM NF A INNER JOIN FATURAMENTO B ON A.CFA_ID = B.CFA_ID   '+
              '  INNER JOIN NF_ITENS D ON A.NFI_CODI = D.NFI_CODI  '+
              '  left outer  JOIN CLIENTENBF C ON A.NFI_EMIT_CLI = C.CLIN_ID  '+
              '  left outer JOIN PRODUTO E ON D.PRO_ID = E.PRO_ID  '+
              '  WHERE   ISNULL(A.NFI_STATUS, '''') IN ( '''', ''E'', ''C'' )  '+
              '  and convert(Char(10),A.NFI_DEMI,112) >= ' + QuotedStr(D_INICIO) +
              '  and convert(Char(10),A.NFI_DEMI,112) <= ' + QuotedStr(D_FIM)  +
              //' AND a.nfi_codi = 0 '+
              '  AND (A.TDOC_ID = 3 OR A.TDOC_ID = 14 OR A.TDOC_ID = 15 OR A.TDOC_ID = 2 OR A.TDOC_ID = 17)  '+
              '  ORDER BY A.NFI_NUMERO,D.INF_ITEM '
            );
        end;


        Q_ITENS.Open;
        Q_ITENS.First;


        Q_ITENS.Last;
        Q_ITENS.First;
        Gauge1.Progress := 0;
        Gauge1.MaxValue := Q_ITENS.RecordCount;
        lbProgress.Caption := 'Exportando registro 54 - Produto / Mercadoria ...';
        Application.ProcessMessages;
        while not Q_ITENS.eof do
        begin
                strtexto54 := '54'; //TIPO DO REGISTRRO

                Gauge1.Progress := Gauge1.Progress + 1;
        lbContador.Caption := 'Exportando '+ IntToStr(Gauge1.Progress)+ ' de '+IntToStr(Gauge1.MaxValue) + ' registros';
                Application.ProcessMessages;
                //adiciona cnpj
                if Q_ITENSTDOC_ID.value = 2 then
                    dataPER :=  Q_ITENSCLIN_CGCCPF.AsString
                else
                    dataPER := Q_ITENSNFI_DEST_CGC.asstring;

                if Length(dataPER) = 15 then
                        dataPER := Copy(dataPER, 2, Length(dataPER));

                dataPER := Trim(dataPER);

                strdata := copy(dataPER,1,14);
                dataPER := strdata;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona modelo
                dataPER := '01';
                strdata := copy(dataPER,0,2);
                dataPER := strdata;
                VER := 2 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona série
                dataPER := '1';
                strdata := copy(dataPER,0,3);
                dataPER := strdata;
                strtexto54 := strtexto54 + dataPER;
                VER := 3 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCOA;
                end;

                //adiciona nº nf
                dataPER := Q_ITENSNFI_NUMERO.asstring;
                strdata := copy(dataPER,0,6);
                dataPER := strdata;
                VER := 6 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona CFOP
                dataPER := Q_ITENSCFA_CODI.AsString;
                strdata := copy(dataPER,0,4);
                dataPER := strdata;
                VER := 4 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;


                 Q_AUX2.close ;
                 Q_AUX2.SQL.clear ;
                 Q_AUX2.SQL.add('select * from faturamento') ;
                 Q_AUX2.SQL.add('where CFA_ID =  ' + Q_ITENSCFA_ID.asstring ) ;
                 Q_AUX2.open  ;


                //adiciona situação tributaria
                dataPER := '000';
                 if (Q_ITENSPRO_ICMS.asfloat > 0) then
                 begin
                      if (Q_ITENSPRO_REDUZICMS.asfloat > 0) then
                         dataPER := '020'
                      else
                      begin
                          IF ((Q_AUX2.FieldByName('CFA_CODI').asstring = '2905') or
                             (Q_AUX2.FieldByName('CFA_CODI').asstring = '5949')) then
                          begin
                             IF Q_ITENSINF_AICM.asfloat > 0  then
                                   dataPER := '000'
                                else
                                   dataPER := '070';
                          end ;
                      end ;

                 end
                 else   if (Q_ITENSPRO_ICMS.asfloat = 0) then
                 begin
                    ///analisar o CFOP
                    IF ((Q_AUX2.FieldByName('CFA_CODI').asstring = '5907') or
                        (Q_AUX2.FieldByName('CFA_CODI').asstring = '5920') or
                        (Q_AUX2.FieldByName('CFA_CODI').asstring = '1905') or
                        (Q_AUX2.FieldByName('CFA_CODI').asstring = '5921') or
                        (Q_AUX2.FieldByName('CFA_CODI').asstring = '6907') or
                        (Q_AUX2.FieldByName('CFA_CODI').asstring = '5915') or
                        (Q_AUX2.FieldByName('CFA_CODI').asstring = '5906'))  then
                        dataPER := '041'
                     else
                        dataPER := '000';
                 end
                 else
                    dataPER := '000';


                if StrToInt(dataPER) > 299 then
                   dataPER := '000';

                strdata := copy(dataPER,0,3);
                dataPER := strdata;
                VER := 3 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;



                ///adiciona nº item na nf
                dataPER := Q_ITENSINF_ITEM.AsString;
                strdata := copy(dataPER,0,3);
                dataPER := strdata;
                VER := 3 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona cod prod
                {dataPER := Q_ITENScodproduto.AsString;
                strdata := copy(dataPER,0,14);
                dataPER := strdata;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;   }

                
                 //adiciona cod prod
                //dataPER := MUDALETR(Q_ITENScodproduto.AsString);
                dataPER := MUDALETR(Q_ITENSPRO_COD.AsString);
                strdata := copy(dataPER,0,14);
                dataPER := strdata;
                strtexto54 := strtexto54 + dataPER;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCOA;
                end;





                //adiciona quant.
                dataPER := formatfloat('00000000.000',Q_ITENSINF_QTDE.Asfloat);
                dataPER := StringReplace(dataPER,',','',[rfReplaceAll]) ;
                strdata := copy(dataPER,0,11);
                dataPER := strdata;
                VER := 11 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;



                //adiciona valor
                dataPER := formatfloat('0000000000.00',Q_ITENStota.Asfloat);
                dataPER := StringReplace(dataPER,',','',[rfReplaceAll])  ;
                strdata := copy(dataPER,0,12);
                dataPER := strdata;
                VER := 12 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona desconto
                dataPER := formatfloat('000',0);
                strdata := copy(dataPER,0,12);
                dataPER := strdata;
                VER := 12 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;


                //adiciona base icms
                if Q_ITENSINF_AICM.AsFloat <> 0 then
                   dataPER := formatfloat('',Q_ITENSINF_BICM.Asfloat*100)
                 else
                   dataPER := formatfloat('000',0);

                strdata := copy(dataPER,0,12);
                dataPER := strdata;
                VER := 12 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona icms2
                dataPER := formatfloat('000',0);
                strdata := copy(dataPER,0,12);
                dataPER := strdata;
                VER := 12 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona ipi
                dataPER := formatfloat('000',0);
                strdata := copy(dataPER,0,12);
                dataPER := strdata;
                VER := 12 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                //adiciona alíquota icms
               { IF Q_ITENSNFI_VICM.asfloat > 0 then
                    dataPER := formatfloat('',Q_ITENSINF_AICM.AsFloat*100)
                  else
                    dataPER := '0' ;  }
                  IF Q_ITENSINF_BICM.asfloat > 0 then
                    dataPER := formatfloat('',Q_ITENSINF_AICM.AsFloat*100)
                  else
                    dataPER := formatfloat('0000',0) ;

                    {teste de adição de aliquota da propria nota fiscal}
                    Q_NF.Locate('NFI_NUMERO',Q_ITENSNFI_NUMERO.asstring, []);
                    if Q_NFINF_AICM.AsFloat <> 0 then
                       dataPER := formatfloat('',Q_NFINF_AICM.AsFloat*100)
                    else
                       dataPER := formatfloat('000',0);

                       {********************************************}


                VER := 4 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto54 := strtexto54 + BRANCON;
                end;
                strtexto54 := strtexto54 + dataPER;

                Writeln(ArqTXT,strtexto54);
                Conta54 := Conta54 + 1;
                Q_ITENS.Next;
                //gauge1.progress := 80;
                /////////////////////Termino REGISTRO 54 ***************************
        end;


   StrTexto90 := StrTexto90 + '50';
   VER := 8 - length(inttostr(Conta50));
   if VER >= 0 then
   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(Conta50);
   TOTAL_POR_TIPOARQ  := 3 ;
   TOTAL_POR_TIPOARQ  := TOTAL_POR_TIPOARQ + (Conta50) ;


   StrTexto90 := StrTexto90 + '54';
   VER := 8 - length(inttostr(Conta54));
   if VER >= 0 then
   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(Conta54);
   TOTAL_POR_TIPOARQ  := TOTAL_POR_TIPOARQ + (Conta54) ;



   /////////////////////Inicio REGISTRO 70 ***************************

   Q_TRANS.Last;
   
   Gauge1.Progress := 0;
   Gauge1.MaxValue := Q_TRANS.RecordCount;
   lbProgress.Caption :=  'Exportando dados do registro 70 - Notas Fiscais de Serviços de Transporte / CTRC ...';
   Application.ProcessMessages;
   Q_TRANS.First;
   while not Q_TRANS.eof do
   begin
        Gauge1.Progress := Gauge1.Progress + 1;
        lbContador.Caption := 'Exportando '+ IntToStr(Gauge1.Progress)+ ' de '+IntToStr(Gauge1.MaxValue) + ' registros';
        Application.ProcessMessages;

        StrTexto70 := '70'; //TIPO DO REGISTRO

        //adiciona cnpj
        IF  Q_TRANSORD_PAGO.asstring = 'S' then
            dataPER := Q_TRANSCLIN_CGCCPF.AsString
         else
           dataPER := Q_TRANSCLIF_CGCCPF.AsString ;
        ////dataPER := Q_TRANSTRANS_CNPJ.AsString;


        QRNBF.OPEN;

        //se for CNPJ da NBF coloca o Destinatario
        Q_PARAMETRO.open;

        if trim(dataPER) = trim(qrNBFPAR_CNPJ.AsString) then begin
            dataPER  := Q_TRANSCLIF_CGCCPF.AsString ;
        end;

         if Length(dataPER) = 15 then
                        dataPER := Copy(dataPER, 2, Length(dataPER));

                dataPER := Trim(dataPER);


        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;





        //adiciona insc. est.
         IF  Q_TRANSORD_PAGO.asstring = 'S' then
            dataPER := Q_TRANSCLIN_INSCRG.AsString
         else
           dataPER := Q_TRANSCLIF_INSCRG.AsString ;

        //dataPER := Q_TRANSTRANS_INSCRICAO.AsString;
        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        dataPER :=  Funcoes.remove(dataPER ,'.') ;
        dataPER :=  Funcoes.remove(dataPER ,'-') ;
        strtexto70 := strtexto70 +  dataPER ;

        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCOA;
        end;

        //adiciona dataPER.
        AUX2 := Q_TRANSORD_DATA.value;
        strdata := formatdatetime('DD/MM/YYYY',AUX2);
        AUX := copy(strdata,0,10);

        strdata := copy(AUX,7,4);
        dataPER := strdata;
        strdata := copy(AUX,4,2);
        dataPER := dataPER + strdata;
        strdata := copy(AUX,0,2);
        dataPER := dataPER + strdata;

        AUX := dataPER;
        VER := 8 - length(AUX);
        if VER >= 0 then
        begin
             for I := VER downto 1 do
                     strtexto70:= strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + AUX;



        //adiciona UF
         IF  Q_TRANSORD_PAGO.asstring = 'S' then
            dataPER := Q_TRANSUFemit.AsString
         else
           dataPER := Q_TRANSUFdest.AsString ;

        /////dataPER := Q_TRANSUF_SIGLA.asstring;
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        strtexto70 := strtexto70 + dataPER;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCOA;
        end;

        //adiciona modelo
        dataPER := '08';
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;


        //adiciona série
        dataPER := 'U';
        strdata := copy(dataPER,0,1);
        dataPER := strdata;
        strtexto70 := strtexto70 + dataPER;
        VER := 1 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCOA;
        end;


        //adiciona subsérie
        dataPER := '';
        strdata := copy(dataPER,0,2);
        dataPER := strdata;
        strtexto70 := strtexto70 + dataPER;
        VER := 2 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCOA;
        end;


        //adiciona nº doc
        dataPER := Q_TRANSORD_CONH.asstring;
        strdata := copy(dataPER,0,6);
        dataPER := strdata;
        VER := 6 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;



        //adiciona CFOP
        dataPER := Q_TRANSCFA_CODI.AsString;
        strdata := copy(dataPER,0,4);
        dataPER := strdata;
        VER := 4 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;



        //val. tot. doc. fisc.
        IF Q_TRANSORD_STATUS.asstring = 'C' then
           dataPER := formatfloat('000',0)
         else
           dataPER := formatfloat('',Q_TRANSTOTAPREST.asfloat*100);

        strdata := copy(dataPER,0,13);
        dataPER := strdata;
        VER := 13 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;



        //adiciona base icms
        IF Q_TRANSORD_STATUS.asstring = 'C' then
           dataPER := formatfloat('000',0)
        else begin
            IF Q_TRANSORD_aliq.asfloat > 0  then
               dataPER := formatfloat('',Q_TRANSTOTAPREST.asfloat*100)
             else

               dataPER := formatfloat('000',0) ;
        end ;
        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
              for I := VER downto 1 do
              strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;




        //adiciona val. icms
        IF Q_TRANSORD_STATUS.asstring = 'C' then
           dataPER := formatfloat('000',0)
        else
           dataPER := formatfloat('',Q_TRANSTOTAICMS.asfloat*100);

        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;


        //adiciona ise. trb.
        dataPER := '';
        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;



        //adiciona outras
        IF Q_TRANSORD_STATUS.asstring = 'C' then
           dataPER := formatfloat('000',0)
         else begin
           IF Q_TRANSORD_aliq.asfloat = 0  then

              dataPER := formatfloat('',Q_TRANSTOTAPREST.asfloat*100)
           else
              dataPER := formatfloat('000',0) ;
        end ;
        strdata := copy(dataPER,0,14);
        dataPER := strdata;
        VER := 14 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;





        //adiciona CIF/FOB
        IF  Q_TRANSORD_PAGO.asstring = 'S' then
            dataPER := '1'
         else
           dataPER := '2' ;
        strdata := copy(dataPER,0,1);
        dataPER := strdata;
        VER := 1 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCON;
        end;
        strtexto70 := strtexto70 + dataPER;




        //adiciona situação
        IF  Q_TRANSORD_STATUS.asstring = 'C' then
            dataPER := 'S'
         else
           dataPER := 'N' ;

        /////dataPER := Q_TRANSSITUACAO.AsString;
        strdata := copy(dataPER,0,1);
        dataPER := strdata;
        strtexto70 := strtexto70 + dataPER;
        VER := 1 - length(dataPER);
        if VER >= 0 then
        begin
                for I := VER downto 1 do
                        strtexto70 := strtexto70 + BRANCOA;
        end;

        Writeln(ArqTXT,StrTexto70);
        Conta70 := Conta70 + 1;
       /////////////////////Termino REGISTRO 70 ***************************

        Q_TRANS.Next
   end;
//   gauge1.progress := 60;



        /////////////////////Inicio REGISTRO 71 ***************************

        Q_CARGA.Last;
        Q_CARGA.First;
        Gauge1.Progress := 0;
        Gauge1.MaxValue := Q_CARGA.RecordCount;
        lbProgress.Caption := 'Exportando dados do registro 71 - Informações da Carga Transportada ...';
        Application.ProcessMessages;
        while not Q_CARGA.eof do
        begin
        Gauge1.Progress := Gauge1.Progress + 1;
        lbContador.Caption := 'Exportando '+ IntToStr(Gauge1.Progress)+ ' de '+IntToStr(Gauge1.MaxValue) + ' registros';
        Application.ProcessMessages;
                StrTexto71 := '71'; //TIPO DO REGISTRO

                //adiciona cnpj
                IF  Q_CARGAORD_PAGO.asstring = 'S' then
                    dataPER := Q_CARGACLIN_CGCCPF.AsString
                 else
                   dataPER := Q_CARGACLIF_CGCCPF.AsString ;



                 //se for cnpj da NBF pega o CNPJ do destinatario    - miguel
                 if trim(dataPER) = trim(qrNBFPAR_CNPJ.AsString) then
                        dataPER :=  Q_CARGACLIF_CGCCPF.AsString ;








                  if Length(dataPER) = 15 then
                        dataPER := Copy(dataPER, 2, Length(dataPER));

                dataPER := Trim(dataPER);

                strdata := copy(dataPER,0,14);
                dataPER := strdata;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCON;
                end;
                strtexto71 := strtexto71 + dataPER;



                //adiciona insc. est.
                IF  Q_CARGAORD_PAGO.asstring = 'S' then
                   dataPER := Q_CARGACLIN_INSCRG.AsString
                 else
                   dataPER := Q_CARGACLIF_INSCRG.AsString ;

                //se for cnpj da NBF pega o CNPJ do destinatario    - miguel
                if trim(dataPER) = trim(qrNBFPAR_CNPJ.AsString) then
                   dataPER := Q_CARGACLIF_INSCRG.AsString ;



                 dataPER :=  Funcoes.remove(dataPER ,'.') ;
                 dataPER :=  Funcoes.remove(dataPER ,'-') ;

                strdata := trim(dataPER);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;


                //adiciona dataPER emis.
                strdata := formatdatetime('DD/MM/YYYY',Q_CARGAORD_DATA.asdatetime);
                AUX := copy(strdata,0,10);

                strdata := copy(AUX,7,4);
                dataPER :=  strdata;

                strdata := copy(AUX,4,2);
                dataPER := dataPER + strdata;

                strdata := copy(AUX,0,2);
                dataPER := dataPER + strdata;

                AUX := dataPER;
                VER := 8 - length(AUX);
                if VER >= 0 then
                begin
                     for I := VER downto 1 do
                             strtexto71:= strtexto71 + BRANCON;
                end;
                strtexto71 := strtexto71 + AUX;



                //adiciona uf tomador
                IF  Q_CARGAORD_PAGO.asstring = 'S' then
                    dataPER := Q_CARGAUFemit.AsString
                 else
                   dataPER := Q_CARGAUFdest.AsString ;


                strtexto71 := strtexto71 + dataPER;
                VER := 2 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;

                //adiciona modelo
                dataPER := '08';
                strdata := copy(dataPER,0,2);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 2 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;

                //adiciona série
                dataPER := 'U';
                strdata := copy(dataPER,0,1);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 1 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;


                //adiciona subsérie
                dataPER := '';
                strdata := copy(dataPER,0,2);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 2 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;


                //adiciona nº conh.
                dataPER := Q_CARGAORD_CONH.asstring;
                strdata := copy(dataPER,0,6);
                dataPER := strdata;
                VER := 6 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCON;
                end;
                strtexto71 := strtexto71 + dataPER;


                //adiciona uf remetente/dest.
                IF  Q_CARGAORD_PAGO.asstring = 'S' then
                    dataPER := Q_CARGAUFdest.AsString
                 else
                   dataPER := Q_CARGAUFemit.AsString ;

                strdata := copy(dataPER,0,2);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 2 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;


                //adiciona cnpj remet/dest
                IF  (Q_CARGAORD_PAGO.asstring = 'S') or (Q_CARGAORD_PAGO.asstring = '') then
                    dataPER := Q_CARGACLIF_CGCCPF.AsString
                 else
                   dataPER := Q_CARGACLIN_CGCCPF.AsString ;




                //se for cnpj da NBF pega o CNPJ do destinatario    - miguel
                if trim(dataPER) = trim(qrNBFPAR_CNPJ.AsString) then
                   dataPER := Q_CARGACLIF_CGCCPF.AsString ;






                strdata := copy(dataPER,0,14);
                dataPER := strdata;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCON;
                end;
                strtexto71 := strtexto71 + dataPER;


                //adiciona insc. est remet/dest
                IF  (Q_CARGAORD_PAGO.asstring = 'S') or (Q_CARGAORD_PAGO.asstring = '') then
                    dataPER := Q_CARGACLIF_INSCRG.AsString
                 else
                   dataPER := Q_CARGACLIN_INSCRG.AsString ;

                //se for cnpj da NBF pega o CNPJ do destinatario    - miguel
                if trim(dataPER) = trim(qrNBFPAR_CNPJ.AsString) then
                   dataPER := Q_CARGACLIF_INSCRG.AsString ;






                 dataPER :=  Funcoes.remove(dataPER ,'.') ;
                 dataPER :=  Funcoes.remove(dataPER ,'-') ;

                strdata :=  trim(dataPER);
                strdata := copy(strdata, 1, 14);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;


                //adiciona dataPER ems. nf
                IF Q_CARGAORD_COLETA_ENTREGA.AsString = 'C' THEN
                        strdata := formatdatetime('DD/MM/YYYY',Q_CARGAEMISSAO.asdatetime)
                ELSE
                        strdata := formatdatetime('DD/MM/YYYY',Q_CARGANFI_DEMI.asdatetime);

                        
                AUX := copy(strdata,0,10);

                strdata := copy(AUX,7,4);
                dataPER :=  strdata;

                strdata := copy(AUX,4,2);
                dataPER := dataPER + strdata;

                strdata := copy(AUX,0,2);
                dataPER := dataPER + strdata;

                AUX := dataPER;


                VER := 8 - length(AUX);
                if VER >= 0 then
                begin
                     for I := VER downto 1 do
                             strtexto71:= strtexto71 + BRANCON;
                end;
                strtexto71 := strtexto71 + AUX;


                //adiciona modelo nf
                dataPER := '01';
                strdata := copy(dataPER,0,2);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 2 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;


                //adiciona série nf
                IF Q_CARGAORD_COLETA_ENTREGA.AsString = 'C' THEN
                        dataPER := Q_CARGASERIE.Value
                ELSE
                        dataPER := Q_CARGANFI_SERIE.Value;
               // dataPER := '1';
                strdata := copy(dataPER,0,3);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 3 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;

                NOTASEMBARRA := '';
                SDS := 0;

               IF Q_CARGAORD_COLETA_ENTREGA.AsString <> 'C' THEN BEGIN
                   IF POS('/',Q_CARGANFI_NUMERO.asstring) > 1 then  begin
                       SDS := POS('/',Q_CARGANFI_NUMERO.asstring)   ;
                       NOTASEMBARRA := copy(Q_CARGANFI_NUMERO.asstring,1,SDS-1) ;
                   end ;
               END
               ELSE
               BEGIN
                   IF POS('/',Q_CARGACNF_NF.asstring) > 1 then  begin
                       SDS := POS('/',Q_CARGACNF_NF.asstring)   ;
                       NOTASEMBARRA := copy(Q_CARGACNF_NF.asstring,1,SDS-1) ;
                   end

               END ;


               IF NOTASEMBARRA = '' then begin

                    //adiciona nº nf
                    IF Q_CARGAORD_COLETA_ENTREGA.AsString <> 'C' THEN
                        dataPER := Q_CARGANFI_NUMERO.asstring
                    ELSE
                        dataPER := Q_CARGACNF_NF.AsString;

                    strdata := copy(dataPER,0,6);
                    dataPER := strdata;
                    VER := 6 - length(dataPER);

                    if VER >= 0 then
                    begin
                            for I := VER downto 1 do
                                    strtexto71 := strtexto71 + BRANCON;
                    end;

                    strtexto71 := strtexto71 + dataPER;
               end else begin
                    //adiciona nº nf
                    dataPER := NOTASEMBARRA ;
                    strdata := copy(dataPER,0,6);
                    dataPER := strdata;
                    VER := 6 - length(dataPER);

                    if VER >= 0 then
                    begin
                            for I := VER downto 1 do
                                    strtexto71 := strtexto71 + BRANCON;
                    end;

                    strtexto71 := strtexto71 + dataPER;
               end ;


                //adiciona val. tot. nf
                IF Q_CARGAORD_COLETA_ENTREGA.AsString <> 'C' THEN
                   dataPER := formatfloat('',Q_CARGANFI_TOTA.asfloat*100)
                 ELSE
                   dataPER := formatfloat('',Q_CARGACNF_VALOR.asfloat*100);
                   
                strdata := copy(dataPER,0,14);
                dataPER := strdata;
                VER := 14 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCON;
                end;
                strtexto71 := strtexto71 + dataPER;

                //adiciona brancos
                dataPER := '';
                strdata := copy(dataPER,0,12);
                dataPER := strdata;
                strtexto71 := strtexto71 + dataPER;
                VER := 12 - length(dataPER);
                if VER >= 0 then
                begin
                        for I := VER downto 1 do
                                strtexto71 := strtexto71 + BRANCOA;
                end;

                Writeln(ArqTXT,StrTexto71);
                Conta71 := Conta71 + 1;
                Q_CARGA.Next;

        end;
      //  gauge1.Progress := 75;
        /////////////////////Termino REGISTRO 71 ***************************



   StrTexto90 := StrTexto90 + '70';
   VER := 8 - length(inttostr(Conta70));
   if VER >= 0 then

   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(Conta70);
   TOTAL_POR_TIPOARQ  := TOTAL_POR_TIPOARQ + (Conta70) ;




   StrTexto90 := StrTexto90 + '71';
   VER := 8 - length(inttostr(Conta71));
   if VER >= 0 then
   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(Conta71);
   TOTAL_POR_TIPOARQ  := TOTAL_POR_TIPOARQ + (Conta71) ;




  /////////////////////Inicio REGISTRO 74 ***************************

   Q_INVENT.Last;
   Q_INVENT.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Q_INVENT.RecordCount;
  lbProgress.Caption := 'Exportando dados do registro 74 - Registro de Inventário  ...';
  Application.ProcessMessages;


   while not Q_INVENT.eof do
   begin

        Gauge1.Progress := Gauge1.Progress + 1;
        lbContador.Caption := 'Exportando '+ IntToStr(Gauge1.Progress)+ ' de '+IntToStr(Gauge1.MaxValue) + ' registros';
        Application.ProcessMessages;

        Q_PRECO.close;
        Q_QUANTIDADE.close;
        Q_PRECO.open;
        Q_QUANTIDADE.open;


       Q_AUX.close ;
       Q_AUX.SQL.clear ;
       Q_AUX.SQL.add('select PRO_ID,SUM(A.INF_QTDE) as QTDE_NFENTRADA') ;
       Q_AUX.SQL.add('       from   NF_ITENS A,NF B  ') ;
       Q_AUX.SQL.add('       where  B.TDOC_ID = ' + inttostr(2)) ;
       Q_AUX.SQL.add('       and    A.PRO_ID =  ' + Q_INVENTPRO_ID.asstring) ;
       Q_AUX.SQL.add('       and    A.NFI_CODI = B.NFI_CODI ') ;
       Q_AUX.SQL.add('group by PRO_ID ') ;
       Q_AUX.open  ;

       
       IF Q_AUX.fieldbyname('QTDE_NFENTRADA').asinteger > 0 then
       begin

                     StrTexto74 := '74'; //TIPO DO REGISTRO

                     //adiciona dataPER       01012005
                     strtexto74 := strtexto74 + DATA_FIM;

                     //adiciona cod. prod.
                     {dataPER := Q_INVENTPRO_COD.AsString;
                     strdata := copy(dataPER,0,14);
                     dataPER := strdata;
                     strtexto74 := strtexto74 + dataPER;
                     VER := 14 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCON;
                     end;   }
                      //adiciona cod prod
                      dataPER := MUDALETR(Q_INVENTCONCA.AsString);
                      strdata := copy(dataPER,0,14);
                      dataPER := strdata;
                      strtexto74 := strtexto74 + dataPER;
                      VER := 14 - length(dataPER);
                      if VER >= 0 then
                      begin
                              for I := VER downto 1 do
                                      strtexto74 := strtexto74 + BRANCOA;
                      end;

                      //verifcamos o kardex existente no dia
                   {   qrKardexExec.Params[0].AsInteger := Q_INVENTPRO_ID.AsInteger;
                      qrKardexExec.Params[1].AsString := D_FIM  ;
                      qrKardexExec.Params[2].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
                      qrKardexExec.ExecSQL;


                     with Q_AUX do begin
                         close;
                         sql.Clear;
                         sql.Add(
                           ' select SALDO  from REL_KARDEX                '+
                           ' where PRO_ID = ' +  Q_INVENTPRO_ID.AsString +
                           ' ANDRE ch = ' + FMenu.SqlUsuariosCH.AsString
                         );
                         open;
                     end;   }


                   //adiciona quant.
                      dataPER := formatfloat('',Q_INVENTQTDEDISP.Asfloat*1000);
                    // dataPER := formatfloat('',Q_AUX.FieldByName('saldo').AsFloat*100);
                     strdata := copy(dataPER,0,13);
                     dataPER := strdata;
                     VER := 13 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCON;
                     end;
                     strtexto74 := strtexto74 + dataPER;


                     Q_AUX.close ;
                     Q_AUX.SQL.clear ;
                     Q_AUX.SQL.add('select  round(AVG(A.INF_PUNI),2) as PUNI');
                     Q_AUX.SQL.add(' from NF_ITENS A,NF B ') ;
                     Q_AUX.SQL.add(' where A.PRO_ID = ' +  Q_INVENTPRO_ID.asstring ) ;
                     Q_AUX.SQL.add('and   B.TDOC_ID = ' + inttostr(2)) ;
                     Q_AUX.SQL.add('and   A.NFI_CODI = B.NFI_CODI  ') ;
                     Q_AUX.open  ;


                     //adiciona valor unitario do prod.
                     dataPER := formatfloat('',Q_AUX.fieldbyname('PUNI').asfloat*100);
                     strdata := copy(dataPER,0,13);
                     dataPER := strdata;
                     VER := 13 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCON;
                     end;
                     strtexto74 := strtexto74 + dataPER;


                     //adiciona cod. posses
                     dataPER := '3';
                     strdata := copy(dataPER,0,1);
                     dataPER := strdata;
                     strtexto74 := strtexto74 + dataPER;
                     VER := 1 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCOA;
                     end;



                     //adiciona cnpj prop.
                     dataPER := Q_INVENTCLIN_CGCCPF.AsString;

                      if Length(dataPER) = 15 then
                        dataPER := Copy(dataPER, 2, Length(dataPER));

                       dataPER := Trim(dataPER);


                     strdata := copy(dataPER,1,14);
                     dataPER := strdata;
                     VER := 14 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCON;
                     end;
                     strtexto74 := strtexto74 + dataPER;



                      //adiciona insc est prop.
                      dataPER := Q_INVENTCLIN_INSCRG.AsString;
                      strdata := copy(dataPER,0,14);
                      dataPER := strdata;
                      dataPER :=  Funcoes.remove(dataPER ,'.') ;
                      dataPER :=  Funcoes.remove(dataPER ,'-') ;
                      strtexto74 := strtexto74 +  dataPER ;

                      VER := 14 - length(dataPER);
                      if VER >= 0 then
                      begin
                              for I := VER downto 1 do
                                      strtexto74 := strtexto74 + BRANCOA;
                      end;



                     //adiciona uf prop
                     dataPER := Q_INVENTUF_SIGLA.AsString;
                     strdata := copy(dataPER,0,2);
                     dataPER := strdata;
                     strtexto74 := strtexto74 + dataPER;
                     VER := 2 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCOA;
                     end;



                     //adiciona brancos
                     dataPER := '';
                     strdata := copy(dataPER,0,45);
                     dataPER := strdata;
                     strtexto74 := strtexto74 + dataPER;
                     VER := 45 - length(dataPER);
                     if VER >= 0 then
                     begin
                             for I := VER downto 1 do
                                     strtexto74 := strtexto74 + BRANCOA;
                     end;

                     Writeln(ArqTXT, StrTexto74);
                     Conta74 := Conta74 + 1;

       end ;

          Q_INVENT.Next;
        //  IF Gauge1.Progress = Gauge1.MaxValue THEN
            // Q_INVENT.Last;
   end;
//   gauge1.progress := 80;
  /////////////////////Termino REGISTRO 74 ***************************

   StrTexto90 := StrTexto90 + '74';
   VER := 8 - length(inttostr(Conta74));
   if VER >= 0 then
   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(Conta74);
   TOTAL_POR_TIPOARQ  := TOTAL_POR_TIPOARQ + (Conta74) ;




    /////////////////////Inicio REGISTRO 75 ***************************
  Q_SERV.Last;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Q_SERV.RecordCount;
  lbProgress.Caption := 'Exportando dados do registro 75 - Código de Mercadoria/Produto ou Serviço  ...';
  Application.ProcessMessages;
  Q_SERV.First;

  //q_itens.Close;
 // Q_ITENS.Open;
 // Q_INVENT.Close;
 // Q_INVENT.Open;

   while not Q_SERV.eof do
   begin
        if not Q_ITENS.Locate('PRO_COD', Q_SERVCONCA.AsString, []) THEN
        BEGIN
            IF NOT Q_INVENT.Locate('CONCA', Q_SERVCONCA.AsString, []) THEN
                AcheiReg75 := FALSE
            ELSE
                AcheiReg75 := TRUE;
        END
        ELSE
           AcheiReg75 := TRUE;



       //forçar
        AcheiReg75 := TRUE;

        acheiProduto := False;
        for b := 0 to cboproduto.Items.Count - 1 do
        begin
            cboproduto.ItemIndex := b;
            if trim(copy(cboproduto.Text,1,14)) =  trim(copy(Q_SERVCONCA.AsString,1,14)) then
                acheiProduto := true;
        end;



   
        Gauge1.Progress := Gauge1.Progress + 1;
        lbContador.Caption := 'Exportando '+ IntToStr(Gauge1.Progress)+ ' de '+IntToStr(Gauge1.MaxValue) + ' registros';
        Application.ProcessMessages;

       try
       Q_AUX.close ;
       Q_AUX.SQL.clear ;
       Q_AUX.SQL.add('select PRO_ID,SUM(A.INF_QTDE) as QTDE_NFENTRADA') ;
       Q_AUX.SQL.add('       from   NF_ITENS A,NF B  ') ;
       Q_AUX.SQL.add('       where  B.TDOC_ID = ' + inttostr(2)) ;
       Q_AUX.SQL.add('       and    A.PRO_ID =  ' + Q_SERVPRO_ID.asstring) ;
       Q_AUX.SQL.add('       and    A.NFI_CODI = B.NFI_CODI ') ;
       Q_AUX.SQL.add('group by PRO_ID ') ;
       Q_AUX.open  ;

       except
           showmessage(Q_AUX.SQL.Text);
       end;


       IF AcheiReg75 = TRUE THEN
       BEGIN
           if acheiProduto = false then
           begin
               IF Q_AUX.fieldbyname('QTDE_NFENTRADA').asinteger > 0 then begin
                            StrTexto75 := '75'; //TIPO DO REGISTRO
                            //adiciona dataPER inicial
                            StrTexto75 := StrTexto75 + DATA_INI;



                            //adiciona dataPER final
                            StrTexto75 := StrTexto75 + DATA_FIM;



                            //adiciona cod. merc/prod/serv
                            {dataPER := Q_SERVPRO_COD.AsString;
                            strdata := copy(dataPER,0,14);
                            dataPER := strdata;
                            VER := 14 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCON;
                            end;
                            strtexto75 := strtexto75 + dataPER;  }

                             //adiciona cod. merc/prod/serv
                            dataPER := MUDALETR(Q_SERVCONCA.AsString);
                            strdata := copy(dataPER,0,14);
                            dataPER := strdata;
                            strtexto75 := strtexto75 + dataPER;
                            VER := 14 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCOA;
                            end;

                            cboproduto.Items.Add(trim(copy(Q_SERVCONCA.AsString, 1,14)));
                            //adiciona cod. NBM/SH
                            dataPER := '';
                            strdata := copy(dataPER,0,8);
                            dataPER := strdata;
                            strtexto75 := strtexto75 + dataPER;
                            VER := 8 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCOA;
                            end;



                            //adiciona desc.
                            dataPER := MUDALETR(Q_SERVPRO_DESC.AsString);
                            strdata := copy(dataPER,0,53);
                            dataPER := strdata;
                            strtexto75 := strtexto75 + dataPER;
                            VER := 53 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCOA;
                            end;



                            //adiciona unid. med.
                            dataPER := Q_SERVSIGLA.AsString;
                            strdata := copy(dataPER,0,6);
                            dataPER := strdata;
                            strtexto75 := strtexto75 + dataPER;
                            VER := 6 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCOA;
                            end;

                            try

                           Q_AUX2.close ;
                           Q_AUX2.SQL.clear ;
                           Q_AUX2.SQL.add('select PRO_REDUZICMS,PRO_ICMS') ;
                           Q_AUX2.SQL.add('from produto ') ;
                           Q_AUX2.SQL.add('where PRO_ID = ' + Q_SERVPRO_ID.asstring);
                           Q_AUX2.open  ;


                            except
                                ShowMessage(Q_AUX2.SQL.Text);
                            end;


                           dataPER := '';
                            //adiciona sit. tribut.
                          { if (Q_AUX2.fieldbyname('PRO_ICMS').asfloat > 0) then begin
                              if (Q_AUX2.fieldbyname('PRO_REDUZICMS').asfloat  > 0) then
                                 dataPER := '020'
                              else
                                 dataPER := '000' ;
                           end else
                                dataPER := '040';

                            VER := 3 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCON;
                            end;
                            strtexto75 := strtexto75 + dataPER; }



                            //adiciona alíquota IPI
                            dataPER := '00000';
                            {strdata := copy(dataPER,0,4);
                            dataPER := strdata;
                            VER := 2 - length(dataPER);
                            if VER >= 0 then
                            begin
                                 for I := VER downto 1 do
                                 strtexto75 := strtexto75 + BRANCON;
                            end;     }
                            strtexto75 := strtexto75 + dataPER;

                            try
                           Q_AUX2.close ;
                           Q_AUX2.SQL.clear ;
                           Q_AUX2.SQL.add('select PRO_REDUZICMS,PRO_ICMS') ;
                           Q_AUX2.SQL.add('from produto ') ;
                           Q_AUX2.SQL.add('where PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring);
                           Q_AUX2.open  ;

                           

                            except
                                ShowMessage(Q_AUX2.SQL.Text);
                            end;

                            //adiciona alíquota icms


                            IF Q_AUX2.fieldbyname('PRO_ICMS').AsString <> '' then
                            begin
                                 dataPER := FormatFloat('00.00',Q_AUX2.fieldbyname('PRO_ICMS').asfloat);
                                 dataPER := StringReplace(dataPER, ',','',[rfReplaceAll]);
                            end
                            else
                                 dataPER := '0000';



                            {strdata := copy(dataPER,0,4);
                            dataPER := strdata;
                            VER := 4 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCON;
                            end;  }
                            strtexto75 := strtexto75 + dataPER;



                            //adiciona red. base icms
                           { IF Q_AUX2.fieldbyname('PRO_REDUZICMS').asfloat > 0 then
                               dataPER := formatfloat('',Q_AUX2.fieldbyname('PRO_REDUZICMS').asfloat*100)
                              else
                               dataPER := '0000';   }
                            
                            IF Q_AUX2.fieldbyname('PRO_REDUZICMS').AsString <> '' then
                            begin
                                 dataPER := FormatFloat('000.00',Q_AUX2.fieldbyname('PRO_REDUZICMS').asfloat);
                                 dataPER := StringReplace(dataPER, ',','',[rfReplaceAll]);
                            end
                            else
                                 dataPER := '00000';

                            
                            {strdata := copy(dataPER,0,4);
                            dataPER := strdata;
                            VER := 4 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCON;
                            end;            }
                            strtexto75 := strtexto75 + dataPER;


                            //adiciona base de calc icms
                            dataPER := '0000000000000';
                            strdata := copy(dataPER,0,13);
                            dataPER := strdata;
                            VER := 13 - length(dataPER);
                            if VER >= 0 then
                            begin
                                    for I := VER downto 1 do
                                            strtexto75 := strtexto75 + BRANCON;
                            end;
                            strtexto75 := strtexto75 + dataPER;

                            Writeln(ArqTXT, StrTexto75);
                            Conta75 := Conta75 + 1;
               end ;
           end;//achei produto
       END;//END ACHEIREG75
       Q_SERV.Next;
   end;

//   gauge1.progress := 90;
   /////////////////////termino REGISTRO 75 ***************************


   StrTexto90 := StrTexto90 + '75';
   VER := 8 - length(inttostr(Conta75));
   if VER >= 0 then
   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(Conta75);
   TOTAL_POR_TIPOARQ  := TOTAL_POR_TIPOARQ + (Conta75) ;


   StrTexto90 := StrTexto90 + '99';
   VER := 8 - length(inttostr(TOTAL_POR_TIPOARQ));
   if VER >= 0 then
   begin
           for I := VER downto 1 do
                   strtexto90 := strtexto90 + BRANCON;
   end;
   strtexto90 := strtexto90 + inttostr(TOTAL_POR_TIPOARQ);




   Cab90 := Cab90 + StrTexto90 ;
   VER := 126 - length(CAB90 + BRANCOA);
   if VER >= 0 then
   begin
        for I := VER downto 1 do
                Cab90 := Cab90 + BRANCOA;
   end;

   lbProgress.caption := '';
   lbProgress.visible := False;
   lbContador.caption := '';
   lbContador.visible := False;

   
   CAB90 := CAB90 + '1' ;

   Writeln(ArqTXT, Cab90);
   Closefile(ArqTXT);


   conta50 := 0;
   Conta54 := 0;
   Conta70 := 0;
   Conta71 := 0;

   cab90 := '';



//   gauge1.progress := 100  ;
  // Animate1.active := false ;
  // Animate1.visible := false ;
   MessageDlg('Geração efetuada com sucesso!', mtInformation, [mbok], 0);
   gauge1.visible  := false;

   close;

end;



procedure TFGeraFiscal.MaskEdit1Enter(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFGeraFiscal.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFGeraFiscal.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClWHITE;
end;

procedure TFGeraFiscal.MaskEdit2Exit(Sender: TObject);
begin
     (Sender as TMaskedit).Color := ClWHITE;
end;

procedure TFGeraFiscal.FormCreate(Sender: TObject);
begin
   Q_PARAMETRO.OPEN;
   t_acen.OPEN ;
end;

procedure TFGeraFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_PARAMETRO.CLOSE;
   Q_NF.CLOSE;
   Q_TRANS.CLOSE;
   Q_CARGA.CLOSE;
   t_acen.close ;

   action := cafree ;
end;

function TFGeraFiscal.MUDALETR(LETRA: string): string;
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


end.

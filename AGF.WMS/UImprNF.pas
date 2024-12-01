unit UImprNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc,
  DBTables, Wwquery, Wwtable, DBClient, DBGrids, ComCtrls, ADODB, Mask,
  wwdblook, RzButton, Provider;

type
  TFImprNF = class(TForm)
    Panel1: TPanel;
    wwDBGrid3: TwwDBGrid;
    Q_NF: TwwQuery;
    DS_NF: TwwDataSource;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_NFCLIN_RAZA: TStringField;
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
    Q_NFCFA_ID: TIntegerField;
    Q_NFOS_ID: TIntegerField;
    Q_NFMUN_ID: TIntegerField;
    Q_NFNFI_MARCADOR: TStringField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFMANI_ID: TIntegerField;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_MOVESTQ: TStringField;
    Q_NFNFI_TRANS: TStringField;
    Q_NFTEXTO_LIVRE: TMemoField;
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
    Q_NFNFI_FATURADA: TStringField;
    Q_NFFAT_ID: TIntegerField;
    Q_NFNFI_MARCAREEN: TStringField;
    Q_NFNFI_STATUS: TStringField;
    Q_NFNFI_MARCAIMP: TStringField;
    Q_AUX: TwwQuery;
    Q_FAT: TwwQuery;
    Q_FATCFA_CODI: TStringField;
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
    Q_FATCFA_ID: TAutoIncField;
    UPD_NF: TUpdateSQL;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_AUX2: TwwQuery;
    Q_NFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    Q_NFCLIN_ENDERECO: TStringField;
    Q_NFCLIN_ENDERECO_COMPL: TStringField;
    Q_NFCLIN_ENDERECO_BAIRRO: TStringField;
    Q_NFMUN_NOME: TStringField;
    Q_NFCLIN_INSCRG: TStringField;
    Q_NFUF_SIGLA: TStringField;
    Q_CLI: TwwQuery;
    Q_CLICLIN_RAZA: TStringField;
    Q_CLICLIN_ENDERECO: TStringField;
    Q_CLICLIN_ENDERECO_COMPL: TStringField;
    Q_CLICLIN_ENDERECO_BAIRRO: TStringField;
    Q_CLICLIN_INSCRG: TStringField;
    Q_CLIUF_SIGLA: TStringField;
    Q_CLIMUN_NOME: TStringField;
    Q_CLINFI_NUMERO: TStringField;
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
    Q_CLICLIN_CGCCPF: TStringField;
    Q_NFCLIF_RAZA: TStringField;
    qrFormularios: TwwQuery;
    qrFormulariositems: TIntegerField;
    Q_AUX3: TwwQuery;
    StatusBar1: TStatusBar;
    Q_NFNFI_DISCRIM: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1nfi_discrim: TStringField;
    qrRetornaEstoque: TwwQuery;
    qrExec: TwwQuery;
    qrRetornaEstoquePRO_ID: TIntegerField;
    qrRetornaEstoqueNFI_EMIT_CLI: TIntegerField;
    qrRetornaEstoqueINF_QTDERETORNADA: TFloatField;
    qrTotal: TwwQuery;
    qrNotasEntrada: TwwQuery;
    qrCancelaNota: TwwQuery;
    Q_PARAMETRO: TwwQuery;
    Q_PARAMETROPAR_RAZA: TStringField;
    Q_PARAMETROPAR_CNPJ: TStringField;
    Q_PARAMETROCONNECTIONSTRING: TStringField;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    BitBtn4: TBitBtn;
    btNem: TBitBtn;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnImprimir: TButton;
    BitBtn2: TBitBtn;
    RzBitBtn1: TRzBitBtn;
    chkImprime: TCheckBox;
    dsNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    cdsNFNFI_MARCAIMP: TStringField;
    cdsNFNFI_NUMERO: TStringField;
    cdsNFNFI_DEMI: TDateTimeField;
    cdsNFNFI_DEST_NOME: TStringField;
    cdsNFNFI_DISCRIM: TStringField;
    cdsNFCLIF_RAZA: TStringField;
    cdsNFCLIN_RAZA: TStringField;
    cdsNFNFI_CODI: TAutoIncField;
    cdsNFTDOC_ID: TIntegerField;
    cdsNFNFI_EMIT_ORIG: TStringField;
    cdsNFNFI_EMIT_CLI: TIntegerField;
    cdsNFNFI_DEST_ORIG: TStringField;
    cdsNFNFI_DEST_CLI: TIntegerField;
    cdsNFNFI_DEST_RAZA: TStringField;
    cdsNFNFI_DEST_ENDERECO: TStringField;
    cdsNFNFI_DEST_COMPL: TStringField;
    cdsNFNFI_DEST_BAIRRO: TStringField;
    cdsNFNFI_DEST_UF_SIGLA: TStringField;
    cdsNFNFI_DEST_CEP: TStringField;
    cdsNFNFI_DEST_TEL: TStringField;
    cdsNFNFI_DEST_FAX: TStringField;
    cdsNFNFI_DEST_CGC: TStringField;
    cdsNFNFI_DEST_INSCRG: TStringField;
    cdsNFNFI_DEST_INSCTRB: TStringField;
    cdsNFNFI_DEST_PESS: TStringField;
    cdsNFNFI_VDES: TFloatField;
    cdsNFNFI_VFRE: TFloatField;
    cdsNFNFI_VSEG: TFloatField;
    cdsNFNFI_BIPI: TFloatField;
    cdsNFNFI_VIPI: TFloatField;
    cdsNFNFI_BICM: TFloatField;
    cdsNFNFI_VICM: TFloatField;
    cdsNFNFI_VMER: TFloatField;
    cdsNFNFI_TOTA: TFloatField;
    cdsNFNFI_DSAI: TDateTimeField;
    cdsNFNFI_HSAI: TDateTimeField;
    cdsNFNFI_TRAN: TStringField;
    cdsNFNFI_PLAC: TStringField;
    cdsNFNFI_UF_SIGLA: TStringField;
    cdsNFNFI_MARC: TStringField;
    cdsNFNFI_QTDE: TIntegerField;
    cdsNFNFI_ESPE: TStringField;
    cdsNFNFI_PLIQ: TFloatField;
    cdsNFNFI_PBRU: TFloatField;
    cdsNFNFI_VOL: TFloatField;
    cdsNFNFI_TFRE: TStringField;
    cdsNFCFA_ID: TIntegerField;
    cdsNFOS_ID: TIntegerField;
    cdsNFMUN_ID: TIntegerField;
    cdsNFNFI_MARCADOR: TStringField;
    cdsNFNFI_DTENTREGA: TDateTimeField;
    cdsNFMANI_ID: TIntegerField;
    cdsNFMANI_ORDEM: TIntegerField;
    cdsNFNFI_MOVESTQ: TStringField;
    cdsNFNFI_TRANS: TStringField;
    cdsNFTEXTO_LIVRE: TMemoField;
    cdsNFNFI_DTENTREGA_FIM: TDateTimeField;
    cdsNFNFI_ENTREGA: TStringField;
    cdsNFNFI_COBRAR: TStringField;
    cdsNFNFI_CLONE: TStringField;
    cdsNFNFI_QTDEPALLET: TIntegerField;
    cdsNFNFI_QTDEUV: TFloatField;
    cdsNFTPRO_ID: TIntegerField;
    cdsNFNFI_MARCADOR_NFRS: TStringField;
    cdsNFNFI_NFRS_REJEITADA: TStringField;
    cdsNFNFI_RETORNADA: TStringField;
    cdsNFNFI_GEROUNFE: TStringField;
    cdsNFNFI_REDESPACHO: TStringField;
    cdsNFORD_ID: TIntegerField;
    cdsNFTRANS_ID: TIntegerField;
    cdsNFNFI_PRESTSERV: TStringField;
    cdsNFNFI_FATURADA: TStringField;
    cdsNFFAT_ID: TIntegerField;
    cdsNFNFI_MARCAREEN: TStringField;
    cdsNFNFI_STATUS: TStringField;
    cdsNFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    cdsNFCLIN_ENDERECO: TStringField;
    cdsNFCLIN_ENDERECO_COMPL: TStringField;
    cdsNFCLIN_ENDERECO_BAIRRO: TStringField;
    cdsNFMUN_NOME: TStringField;
    cdsNFCLIN_INSCRG: TStringField;
    cdsNFUF_SIGLA: TStringField;
    qrMunicipio: TwwQuery;
    qrMunicipioMUN_ID: TAutoIncField;
    qrMunicipioMUN_NOME: TStringField;
    dsMunicipio: TDataSetProvider;
    cdsMunicipio: TClientDataSet;
    cdsMunicipioMUN_ID: TAutoIncField;
    cdsMunicipioMUN_NOME: TStringField;
    dsAux: TDataSetProvider;
    cdsAux: TClientDataSet;
    dspCli: TDataSetProvider;
    cdsCli: TClientDataSet;
    cdsCliCLIN_RAZA: TStringField;
    cdsCliCLIN_ENDERECO: TStringField;
    cdsCliCLIN_ENDERECO_COMPL: TStringField;
    cdsCliCLIN_ENDERECO_BAIRRO: TStringField;
    cdsCliCLIN_INSCRG: TStringField;
    cdsCliUF_SIGLA: TStringField;
    cdsCliMUN_NOME: TStringField;
    cdsCliNFI_NUMERO: TStringField;
    cdsCliCLIN_CGCCPF: TStringField;
    qrAux: TADOQuery;
    Q_CLINFI_SERIE: TStringField;
    cdsCliNFI_SERIE: TStringField;
    btn1: TButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Q_NFNFI_MARCAIMPChange(Sender: TField);
    function MUDALETR(LETRA: string): string;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btNemClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cdsNFAfterPost(DataSet: TDataSet);
    procedure cdsNFNFI_MARCAIMPChange(Sender: TField);
    procedure btn1Click(Sender: TObject);
  private
    PROCEDURE Imprimir_Cabecalho_Nota_Fiscal;

    procedure BuscarNotasFiscais;
    Procedure Imprime_Rodape_CValores;
  public
    { Public declarations }
  end;

CONST X = '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000' ;
Const Brancos = '                                                                                                                                                                             ' ;
var
  FImprNF: TFImprNF;
  RTIPO : string ;
  RTIPO2 : string ;
  LOCF : integer;
  ///variaveis da impressao da nota///
    STRSTRING : string ;
    F         :  TextFile ;
    CONTLINHA : integer ;
    CONTLINHA2 : integer ;
    TOTLINHA : integer ;
    TOTLINHA3 : integer ;
    NOVONUMERO : string ;
    i, j : integer;
    Notas_size : integer;
    CODNOTA : integer ;
    NotasRetorno : WideString;
    ContadorNotas : integer;
  ///variaveis da impressao da nota///
    FORMULARIO, NUM_FORMULARIOS, REGISTRO : INTEGER;
  SQL : string ;
implementation

uses USenha, UMenu, ufrmNFTransportadora;

{$R *.DFM}

procedure TFImprNF.RadioGroup1Click(Sender: TObject);
begin
      {
    case radiogroup1.itemindex of
     0 : rTipo := '14' ;
     1 : rTipo := '3'  ;
     2 : rTipo := '15' ;
     3 : rTipo := '17' ;
    end ;


    case radiogroup2.itemindex of
     0 : rTipo2 := 'A' ;
     1 : rTipo2 := 'E' ;
     2 : rTipo2 := 'C' ;
    end ;


    IF rTipo2 = 'C' then begin
        Q_NF.close;
        Q_NF.SQL.clear ;
        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
        Q_NF.SQL.add ('from NF A ( NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK) ');
        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
        Q_NF.SQL.add ('and A.TDOC_ID =' + RTIPO );
        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID' );
        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + 'E' + '''' );
        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
        Q_NF.open ;
    end else begin
        Q_NF.close;
        Q_NF.SQL.clear ;
        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
        Q_NF.SQL.add ('from NF A (NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK) ');
        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
        Q_NF.SQL.add ('and A.TDOC_ID = '  + RTIPO );
        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + RTIPO2 + '''' );
        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID ' );
        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
        Q_NF.open ;
    end ;

    
    IF (rTipo <> '17') then begin
    ////end else begin
        wwDBGrid3.Selected.clear;
        wwDBGrid3.Selected.Add('NFI_MARCAIMP'#9'1'#9'***'#9'F');
        wwDBGrid3.Selected.Add('NFI_NUMERO'#9'10'#9'NF Nº'#9'F');
        wwDBGrid3.Selected.Add('NFI_DEMI'#9'9'#9'Dt.Emissão'#9'F');
        wwDBGrid3.Selected.Add('CLIF_RAZA'#9'38'#9'Destinatário'#9'F');
        wwDBGrid3.ApplySelected;
       // wwDBGrid3.Font.Height := {-19 }//-19  ;
       // wwDBGrid3.TitleFont.Height := {-11}-11    ;
   // end else begin
       {
        wwDBGrid3.Selected.clear;
        wwDBGrid3.Selected.Add('NFI_MARCAIMP'#9'1'#9'***'#9'F');
        wwDBGrid3.Selected.Add('NFI_NUMERO'#9'10'#9'NF Nº'#9'F');
        wwDBGrid3.Selected.Add('NFI_DEMI'#9'9'#9'Dt.Emissão'#9'F');
        wwDBGrid3.Selected.Add('NFI_DEST_RAZA'#9'38'#9'Destinatário'#9'F');
        wwDBGrid3.ApplySelected;
       // wwDBGrid3.Font.Height := {-19 }//-19  ;
       // wwDBGrid3.TitleFont.Height := {-11}-11    ;  end ;





end;

procedure TFImprNF.RadioGroup2Click(Sender: TObject);
begin
//    IF   radiogroup1.itemindex = -1 then begin
//         MessageDlg('Escolha o tipo de Nota Fiscal !',mtInformation,[mbOk], 0);
//         radiogroup1.setfocus ;
//         abort  ;
//    end;
//
//
//    case radiogroup1.itemindex of
//     0 : rTipo := '14' ;
//     1 : rTipo := '3'  ;
//     2 : rTipo := '15' ;
//    end ;
//
//
//    case radiogroup2.itemindex of
//     0 : rTipo2 := 'A' ;
//     1 : rTipo2 := 'E' ;
//     2 : rTipo2 := 'C' ;
//    end ;
//
//    IF rTipo2 = 'C' then begin
//        Q_NF.close;
//        Q_NF.SQL.clear ;
//        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
//        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
//        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
//        Q_NF.SQL.add ('from NF A (NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
//        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
//        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK) ');
//        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
//        Q_NF.SQL.add ('and A.TDOC_ID = '  + RTIPO );
//        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID ' );
//        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + 'E' + '''' );
//        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
//        Q_NF.open ;
//    end else begin
//        Q_NF.close;
//        Q_NF.SQL.clear ;
//        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
//        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
//        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
//        Q_NF.SQL.add ('from NF A (NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
//        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
//        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK)');
//        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
//        Q_NF.SQL.add ('and A.TDOC_ID = '  + RTIPO );
//        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + RTIPO2 + '''' );
//        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID ' );
//        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
//        Q_NF.open ;
//    end ;
//
//     IF (rTipo <> '17') then begin
//   //// end else begin
//        wwDBGrid3.Selected.clear;
//        wwDBGrid3.Selected.Add('NFI_MARCAIMP'#9'1'#9'***'#9'F');
//        wwDBGrid3.Selected.Add('NFI_NUMERO'#9'10'#9'NF Nº'#9'F');
//        wwDBGrid3.Selected.Add('NFI_DEMI'#9'11'#9'Dt.Emissão'#9'F');
//        wwDBGrid3.Selected.Add('CLIF_RAZA'#9'45'#9'Destinatário'#9'F');
//        wwDBGrid3.ApplySelected;
//      //  wwDBGrid3.Font.Height := {   -19 }-19;
//      //  wwDBGrid3.TitleFont.Height := {-11}-11    ;
//    end  else begin
//        wwDBGrid3.Selected.clear;
//        wwDBGrid3.Selected.Add('NFI_MARCAIMP'#9'1'#9'***'#9'F');
//        wwDBGrid3.Selected.Add('NFI_NUMERO'#9'10'#9'NF Nº'#9'F');
//        wwDBGrid3.Selected.Add('NFI_DEMI'#9'11'#9'Dt.Emissão'#9'F');
//        wwDBGrid3.Selected.Add('NFI_DEST_RAZA'#9'45'#9'Destinatário'#9'F');
//        wwDBGrid3.ApplySelected;
//     //   wwDBGrid3.Font.Height := {-19 }-19  ;
//     //   wwDBGrid3.TitleFont.Height := {-11}-11    ;
//
//    end ;


end;

procedure TFImprNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Q_NF.close ;

  with Q_AUX do
 begin
     Close;
     sql.Clear;
     sql.Add('UPDATE NF SET NFI_MARCAIMP = NULL ') ;
     ExecSQL;
 end;

  //Q_FAT.close ;
  T_ACEN.close ;
  Q_PAR.close ;
  action := cafree ;

end;

procedure TFImprNF.BitBtn2Click(Sender: TObject);
{//Const Brancos = '                                                                                                                                                                             ' ;
//var
//    STRSTRING : string ;
    F         :  TextFile ;
    CONTLINHA : integer ;
    CONTLINHA2 : integer ;
    TOTLINHA : integer ;
    TOTLINHA3 : integer ;
    NOVONUMERO : string ;
    CODNOTA : integer ; }
begin
 /////////////////////////////////////////////////////////////////////////////
//   {VERIFICA A QUANTIDADE DE NOTAS A SER CANCELADAS OU IMPRESSAS}
//
//     {CANCELAMENTO DE NOTA FISCAL}
//     IF rTipo2 = 'C' then begin  //tipo para cancelamento
//        Q_AUX.close;
//        Q_AUX.SQL.clear ;
//        Q_AUX.SQL.add ('Select count(*) as QTDEMARCADA');
//        Q_AUX.SQL.add ('from NF A,ClienteNBF B');
//        Q_AUX.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
//        Q_AUX.SQL.add ('and A.TDOC_ID = '  + RTIPO );
//        Q_AUX.SQL.add ('and A.NFI_STATUS = '  + '''' + 'E' + '''' );
//        Q_AUX.SQL.add ('and A.NFI_MARCAIMP = '  + '''' + '*' + '''' );
//        Q_AUX.open ;
//    end else begin  {IMPRESSÃO OU REIMPRESSÃO}
//        Q_AUX.close;
//        Q_AUX.SQL.clear ;
//        Q_AUX.SQL.add ('Select count(*) as QTDEMARCADA');
//        Q_AUX.SQL.add ('from NF A,ClienteNBF B');
//        Q_AUX.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
//        Q_AUX.SQL.add ('and A.TDOC_ID = '  + RTIPO );
//        Q_AUX.SQL.add ('and A.NFI_STATUS = '  + '''' + RTIPO2 + '''' );
//        Q_AUX.SQL.add ('and A.NFI_MARCAIMP = '  + '''' + '*' + '''' );
//        Q_AUX.open ;
//    end ;
//  {VERIFICA A QUANTIDADE DE NOTAS A SER CANCELADAS OU IMPRESSAS}
//  //////////////////////////////////////////////////////////////////////
//
//
//
//    //////////VERIFICA SE FOI MARCADA ALGUMA NOTA/////////////////////////
//    IF Q_AUX.fieldbyname('QTDEMARCADA').asinteger = 0  then begin
//
//       MessageDlg('Não foi selecionada nenhuma nota !',mtInformation,[mbOk], 0);
//       abort ;
//
//    end ;
//    ////////////////////////////////////////////////////////////////////
//
//
//
//
//    ////////////REIMPRIMIR ou IMPRIMIR///////////////////////////////////
//    IF (RTIPO2 = 'A') or  (RTIPO2 = 'E')  then begin
//
//            IF  (RTIPO2 = 'A') then begin
//               If MessageDlg('Confirma a Impressão das Notas selecionadas ?',MtConfirmation,[MbYes,
//                  MbNo],0)=MrNO Then abort ;
//            end else begin
//               If MessageDlg('Confirma a Reimpressão das Notas selecionadas ?',MtConfirmation,[MbYes,
//                  MbNo],0)=MrNO Then abort ;
//            end ;
//
//
//
//
//
//      //////////////////INICIA O LOOP DE IMPRESSAO DE NOTAS////////////////////
//               Q_NF.first;
//               While not (Q_NF.eof)  do begin
//
//                 IF (Q_NFNFI_MARCAIMP.asstring = '*')  then begin
//                      //// Assignfile(F,'c:\nota.txt');
//                      ////Assignfile(F,'NF.txt');
//                      ////Assignfile(F,'\\lenice\EpsonFX');
//                      ////  Assignfile(F,'\\elisangela\EpsonFX-2180');
//
//
//
//                       ////////////CRIA O ARQUIVO//////////////
//                       Assignfile(F,Q_PARCAMINHO_MATRICIAL.asstring);
//
//                       Rewrite(F);
//
//                       CODNOTA := Q_NFNFI_CODI.asinteger ;
//
//
//
//                       ///////SE FOR IMPRESSAO PROCURA NOVA NUMERO DE NOTA/////////
//                       IF (RTIPO2 = 'A') then begin
//                           Q_AUX.close;
//                           Q_AUX.Sql.Clear;
//                           Q_AUX.Sql.Add(' SELECT ULT_NF from PARAMETRO ') ;
//                           Q_AUX.open;
//
//                           NOVONUMERO :=  inttostr(Q_AUX.fieldbyname('ULT_NF').asinteger + 1) ;
//
//
//                           Q_aux.close;
//                           Q_aux.Sql.Clear;
//                           Q_aux.Sql.Add(' UPDATE PARAMETRO SET  ULT_NF = '  + '''' + NOVONUMERO + ''''  );
//                           Q_aux.ExecSql;
//
//
//                           Q_aux.close;
//                           Q_aux.Sql.Clear;
//                           Q_aux.Sql.Add(' UPDATE NF SET  NFI_NUMERO = '  + '''' + NOVONUMERO + ''''  );
//                           Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring) ;
//                           Q_aux.ExecSql;
//
//                           Writeln(F,'',#27#48);
//                           ///Writeln(F,'');
//                           StrString := copy(Brancos,1,119) + NOVONUMERO ;
//                           StrString := MUDALETR(StrString ) ;
//                           ///writeln(F,StrString,#27#48);
//                           writeln(F,StrString,#27#48);
//                       ///>>>>>>SE FOR IMPRESSAO PROCURA NOVA NUMERO DE NOTA/////////
//
//
//                       //>>>>>>>>>REIMPRESSAO>>>>>>>>>>>>>>>>>
//                       end else begin
//
//                           Writeln(F,'',#27#48);
//                           ///Writeln(F,'');
//                           StrString := copy(Brancos,1,119) + Q_NFNFI_NUMERO.asstring ;
//                           StrString := MUDALETR(StrString ) ;
//                           ///writeln(F,StrString,#27#48);
//                           {ATRIBUI NUMERO DA NOTA FISCAL}
//                           writeln(F,StrString,#27#48);
//
//                       end     ;
//
//
//
//
//
//                       //Writeln(F,'');
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//
//
//
//
//
//
//                       ///>>>>>>>>>>>>>>PROCURA CFOP<<<<<<<<<<<<<<<<<<<<<<<<<
//                       StrString := copy(Brancos,1,96) + 'XX' ;//Nat.da Operação
//                       StrString := MUDALETR(StrString ) ;
//                       //writeln(F,StrString,#27#48);
//                       writeln(F,StrString,#27#48);
//
//                       ////writeln(F,StrString,#27#50);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//
//                       //Writeln(F,'',#27#48);
//                       //>>>>>>>COLOCA O CABEÇALHO DO CFOP NA NOTA FISCAL}<<<<<<<<<<<<<<<<
//                       StrString := copy(Brancos,1,1) + copy(Q_FATCFA_DCFO.asstring,1,38) + copy(BRANCOS,1,38-length (Trim(Q_FATCFA_DCFO.asstring))) +
//                                    copy(Brancos,1,8) + copy(Q_FATCFA_CODI.asstring,1,1) + '.' + copy(Q_FATCFA_CODI.asstring,2,3)  {+
//                                    copy(Brancos,1,2) + trim(Q_NFNFI_DEST_INSCRG.asstring) + copy(BRANCOS,1,20-length (Trim(Q_NFNFI_DEST_INSCRG.asstring)))};
//
//                       StrString := MUDALETR(StrString ) ;
//                       ///writeln(F,StrString,#27#48);
//                       writeln(F,StrString,#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//
//
//
//                       //IF (TIPO = 14) then begin
//                           Q_NFNFI_DEST_CGC.EditMask := '99.999.999/9999-99;0;_' ;
//                           StrString := copy(Brancos,1,1) + copy(Q_NFNFI_DEST_RAZA.asstring,1,50) + copy(BRANCOS,1,50-length (Trim(Q_NFNFI_DEST_RAZA.asstring))) +
//                                        copy(Brancos,1,34) + Trim(Q_NFNFI_DEST_CGC.DisplayText) +
//                                        copy(BRANCOS,1,15-length (Trim(Q_NFNFI_DEST_CGC.DisplayText))) +
//                                        copy(Brancos,1,18) + formatdatetime('DD/MM/YYYY', Q_NFNFI_DEMI.asdatetime)   ;
//                           StrString := MUDALETR(StrString ) ;
//                           ///writeln(F,StrString,#27#48);
//
//
//
//
//
//                           {ESCREVE NOME DO CLIENTE CNPJ E DATA}
//                           writeln(F,StrString,#27#48);
//                       //end ;
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//
//                       //IF (TIPO = 14) then begin
//                          StrString := copy(Brancos,1,1) + Trim(Q_NFNFI_DEST_ENDERECO.asstring) +
//                                    copy(BRANCOS,1,35  - length (Trim(Q_NFNFI_DEST_ENDERECO.asstring))) +
//
//                                    copy(Brancos,1,1) + Trim(Q_NFNFI_DEST_COMPL.asstring) +
//                                    copy(BRANCOS,1,10 - length (Trim(Q_NFNFI_DEST_COMPL.asstring))) +
//
//                                    copy(Brancos,1,10) + Trim(Q_NFNFI_DEST_BAIRRO.asstring) +
//                                    copy(BRANCOS,1,20 - length (Trim(Q_NFNFI_DEST_BAIRRO.asstring)))+
//
//                                    copy(Brancos,1,7) + copy(Trim(Q_NFNFI_DEST_CEP.asstring),1,5) + '-' +
//                                    copy(Trim(Q_NFNFI_DEST_CEP.asstring),6,3) ;
//
//
//
//                                    {COLOCA ENDEREÇO, BAIRRO,  E CEP DO CLIENTE}
//                                    StrString := MUDALETR(StrString ) ;
//                                    //writeln(F,StrString,#27#48);
//                                    writeln(F,StrString,#27#48);
//                                    Writeln(F,'',#27#48);
//                                    //Writeln(F,'');
//
//                                    ///Writeln(F,'',#27#48);
//
//                                    {Q_AUX.close ;
//                                    Q_AUX.Sql.Clear ;
//                                    Q_AUX.Sql.Add(' Select B.MUN_NOME from MUNICIPIO B,PARAMETRO C ') ;
//                                    Q_AUX.Sql.Add(' where B.MUN_ID  = ' + Q_NFMUN_ID.asstring  ) ;
//                                    Q_AUX.Sql.Add(' and B.MUN_ID = C.MUN_ID ') ;
//                                    Q_AUX.Open ;}
//
//                                    Q_AUX.close ;
//                                    Q_AUX.Sql.Clear ;
//                                    Q_AUX.Sql.Add(' Select MUN_NOME from MUNICIPIO  ') ;
//                                    Q_AUX.Sql.Add(' where MUN_ID  = ' + Q_NFMUN_ID.asstring  ) ;
//                                    Q_AUX.Open ;
//
//
//
//                                    StrString := copy(Brancos,1,1) + Trim(Q_AUX.fieldbyname('MUN_NOME').asstring) +
//                                               copy(BRANCOS,1,40  - length (Trim(Q_AUX.fieldbyname('MUN_NOME').asstring))) +
//                                               copy(Brancos,1,13) + Trim(Q_NFNFI_DEST_TEL.asstring) +
//                                               copy(BRANCOS,1,11  - length (Trim(Q_NFNFI_DEST_TEL.asstring))) +
//                                               copy(Brancos,1,13) + Trim(Q_NFNFI_DEST_UF_SIGLA.asstring) +
//                                               copy(BRANCOS,1,2  - length (Trim(Q_NFNFI_DEST_UF_SIGLA.asstring))) +
//                                               copy(Brancos,1,5) + Trim(Q_NFNFI_DEST_INSCRG.asstring) +
//                                               copy(BRANCOS,1,15  - length (Trim(Q_NFNFI_DEST_INSCRG.asstring))) ;
//
//                                    StrString := MUDALETR(StrString ) ;
//                                    ///writeln(F,StrString,#27#48);
//                                     {COLOCA CIDADE, TELEFONE, UF, }
//                                    writeln(F,StrString,#27#48);
//
//                       ///end ;
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//
//
//
//
//                              {INICIA A ENTRADA DE DADOS DOS ITENS DA NOTA FISCAL}
//                       IF  RTIPO <> '17' then begin
//
//                             Q_AUX.close ;
//                             Q_AUX.Sql.Clear ;
//                             Q_AUX.Sql.Add('Select A.*,B.UVEN_NOME,(A.PRO_COD + ' + '''' + '-' +  '''' + ' + ltrim(rtrim(STR(D.CLIN_ID))))  as CONCA ' )  ;
//                             Q_AUX.Sql.Add('from NF_ITENS A,UNIDVENDA B,PRODUTO C,CLIENTENBF D') ;
//                             Q_AUX.Sql.Add('  where A.UVEN_ID = B.UVEN_ID') ;
//                             Q_AUX.Sql.Add('    and   A.PRO_ID  = C.PRO_ID ') ;
//                             Q_AUX.Sql.Add('    and   C.CLIN_ID = D.CLIN_ID') ;
//                             Q_AUX.Sql.Add('    and   A.NFI_CODI = ' + Q_NFNFI_CODI.asstring  ) ;
//                             Q_AUX.open ;
//
//
//
//
//
//
//                             CONTLINHA := 0 ;
//                             while not (Q_AUX.eof) do
//                             begin
//
//
//                                      CONTLINHA := CONTLINHA + 1 ;
//                                      StrString := //copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_COD').asstring),1,8) +
//                                                   //copy(BRANCOS,1,8-length (Trim( Q_AUX.fieldbyname('PRO_COD').asstring))) +
//                                                   //copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_DESC').asstring),1,60) +
//                                                   //copy(BRANCOS,1,60-length (Trim(Q_AUX.fieldbyname('PRO_DESC').asstring))) +
//
//                                                   copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('CONCA').asstring),1,20) +
//                                                   copy(BRANCOS,1,20-length (Trim( Q_AUX.fieldbyname('CONCA').asstring))) +
//                                                   copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_DESC').asstring),1,60) +
//                                                   copy(BRANCOS,1,60-length (Trim(Q_AUX.fieldbyname('PRO_DESC').asstring))) +
//
//                                                   copy(Brancos,1,5{17}) + copy(Trim(Q_AUX.fieldbyname('UVEN_NOME').asstring),1,2) +
//
//                                                   copy(Brancos,1,2) + Format('%10s',[FormatFloat('########,##0.000',Q_AUX.fieldbyname('INF_QTDE').asfloat)]) +
//
//                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('INF_PUNI').asfloat)]) +
//
//                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('INF_TOTA').asfloat)]) +
//                                                   copy(Brancos,1,1)  + Format('%6s',[FormatFloat('####,##0.00',Q_AUX.fieldbyname('INF_AICM').asfloat)]);
//
//
//                                      StrString := MUDALETR(StrString ) ;
//                                      writeln(F,StrString,#27#48);
//                                      {ADD LINHA AOS ITENS}
//                                 Q_AUX.next ;
//                             end ;
//                       end else begin
//
//                             Q_AUX.close ;
//                             Q_AUX.Sql.Clear ;
//                             Q_AUX.Sql.Add('Select A.*,B.UVEN_NOME' )  ;
//                             Q_AUX.Sql.Add('from NF_ITENS A,UNIDVENDA B') ;
//                             Q_AUX.Sql.Add('  where A.UVEN_ID = B.UVEN_ID') ;
//                             Q_AUX.Sql.Add('    and   A.NFI_CODI = ' + Q_NFNFI_CODI.asstring  ) ;
//                             Q_AUX.open ;
//
//                             CONTLINHA := 0 ;
//                             while not (Q_AUX.eof) do
//                             begin
//
//
//
//                                      CONTLINHA := CONTLINHA + 1 ;
//                                      StrString := copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_COD').asstring),1,8) +
//
//                                                   copy(BRANCOS,1,8-length (Trim( Q_AUX.fieldbyname('PRO_COD').asstring))) +
//                                                   copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_DESC').asstring),1,60) +
//                                                   copy(BRANCOS,1,60-length (Trim(Q_AUX.fieldbyname('PRO_DESC').asstring))) +
//
//
//                                                   copy(Brancos,1,17) + copy(Trim(Q_AUX.fieldbyname('UVEN_NOME').asstring),1,2) +
//
//                                                   copy(Brancos,1,2) + Format('%10s',[FormatFloat('########,##0.000',Q_AUX.fieldbyname('INF_QTDE').asfloat)]) +
//
//                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('INF_PUNI').asfloat)]) +
//
//                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('INF_TOTA').asfloat)]) +
//                                                   copy(Brancos,1,1)  + Format('%6s',[FormatFloat('####,##0.00',Q_AUX.fieldbyname('INF_AICM').asfloat)]);
//
//
//                                      StrString := MUDALETR(StrString ) ;
//                                      writeln(F,StrString,#27#48);
//
//                                 Q_AUX.next ;
//                             end ;
//
//
//                       end ;
//
//
//                       {PREENCHE COM ESPAÇOS EM BRANCO AS LINHAS NAO PREENCHIDAS NA NOTA FISCAL}
//                       IF  RTipo <> '15' then begin
//                            CONTLINHA2 := 29 ;
//                            TOTLINHA := CONTLINHA2 - CONTLINHA ;
//                            if TOTLINHA <> 0 then begin
//                                TOTLINHA3 := 0 ;
//                                while not (TOTLINHA3 = TOTLINHA ) do begin
//                                      TOTLINHA3 := TOTLINHA3 + 1 ;
//                                      writeln(F,'',#27#48);
//                                end ;
//                            end;
//                       end else begin
//                            CONTLINHA2 := 29 ;
//                            TOTLINHA := CONTLINHA2 - CONTLINHA ;
//                            if TOTLINHA > 19 then begin
//                                TOTLINHA3 := 19 ;
//                                while not (TOTLINHA3 = TOTLINHA ) do begin
//                                      TOTLINHA3 := TOTLINHA3 + 1 ;
//                                      writeln(F,'',#27#48);
//                                end ;
//
//
//
//                                 Q_CLI.close ;
//                                 Q_CLI.Sql.Clear ;
//                                 Q_CLI.Sql.Add('  Select A.NFI_NUMERO,B.CLIN_RAZA,B.CLIN_ENDERECO,  ') ;
//                                 Q_CLI.Sql.Add(' CLIN_ENDERECO_COMPL, CLIN_ENDERECO_BAIRRO,  ') ;
//                                 Q_CLI.Sql.Add(' B.CLIN_INSCRG,B.UF_SIGLA,B.CLIN_CGCCPF,C.MUN_NOME   ') ;
//                                 Q_CLI.Sql.Add(' from nf A,CLIENTENBF B, municipio C  ') ;
//                                 Q_CLI.Sql.Add(' where A.NFI_EMIT_CLI = B.CLIN_ID  ') ;
//                                 Q_CLI.Sql.Add(' and     B.MUN_ID = C.MUN_ID     ') ;
//                                 Q_CLI.Sql.Add(' and     A.NFI_CODI = ' + Q_NFNFI_CODI_ORIGINOUNFRS.asstring  ) ;
//                                 Q_CLI.Open ;
//
//
//                                 StrString := MUDALETR('NOTA FISCAL EMITIDA COM BASE NA NF DE VENDA Nº ' )  +
//                                              Q_CLINFI_NUMERO.asstring ;
//                                 writeln(F,StrString,#27#48)  ;
//
//                                 StrString := MUDALETR('Razao: ') + Q_CLICLIN_RAZA.asstring  ;
//                                 writeln(F,StrString,#27#48)  ;
//
//
//                                 StrString := MUDALETR('Endereco: ') +  copy(Trim(Q_CLICLIN_ENDERECO.asstring ),1,30) +
//                                             copy(BRANCOS,1,30-length (Trim(Q_CLICLIN_ENDERECO.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLICLIN_ENDERECO_COMPL.asstring ),1,12) +
//                                             copy(BRANCOS,1,12-length (Trim(Q_CLICLIN_ENDERECO_COMPL.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLICLIN_ENDERECO_BAIRRO.asstring ),1,12) +
//                                             copy(BRANCOS,1,12-length (Trim(Q_CLICLIN_ENDERECO_BAIRRO.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLIMUN_NOME.asstring ),1,40) +
//                                             copy(BRANCOS,1,40-length (Trim(Q_CLIMUN_NOME.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLIUF_SIGLA.asstring ),1,2) +
//                                             copy(BRANCOS,1,2-length (Trim(Q_CLIUF_SIGLA.asstring))) ;
//                                 writeln(F,StrString,#27#48)  ;
//
//
//                                 StrString := MUDALETR('IE: ' + Q_CLICLIN_INSCRG.asstring ) ;
//                                 writeln(F,StrString,#27#48)  ;
//
//                                 StrString := MUDALETR('O Pagamento do ICMS é de responsabilidade do Armazém Geral') ;
//                                 writeln(F,StrString,#27#48)  ;
//
//                                 CONTLINHA  := 15  ;
//                                 CONTLINHA2 := 29 ;
//                                 TOTLINHA := CONTLINHA2 - CONTLINHA ;
//                                 if TOTLINHA <> 0 then begin
//                                      TOTLINHA3 := 0 ;
//                                      while not (TOTLINHA3 = TOTLINHA ) do begin
//                                            TOTLINHA3 := TOTLINHA3 + 1 ;
//                                            writeln(F,'',#27#48);
//                                      end ;
//                                 end;
//                            end else begin
//                                 {StrString := MUDALETR('NOTA FISCAL EMITIDA COM BASE NA NF DE VENDA')  ;
//                                 writeln(F,StrString,#27#48)  ;
//                                 StrString := MUDALETR('Razao') ;
//                                 writeln(F,StrString,#27#48)  ;
//                                 StrString := MUDALETR('Endereco') ;
//                                 writeln(F,StrString,#27#48)  ;
//                                 StrString := MUDALETR('IncrESTa') ;
//                                 writeln(F,StrString,#27#48)  ;
//                                 StrString := MUDALETR('O Pagamento do ICMS é de responsabilidade do Armazém Geral') ;
//                                 writeln(F,StrString,#27#48)  ;    }
//                                 Q_CLI.close ;
//                                 Q_CLI.Sql.Clear ;
//                                 Q_CLI.Sql.Add('  Select A.NFI_NUMERO,B.CLIN_RAZA,B.CLIN_ENDERECO,  ') ;
//                                 Q_CLI.Sql.Add(' CLIN_ENDERECO_COMPL, CLIN_ENDERECO_BAIRRO,  ') ;
//                                 Q_CLI.Sql.Add(' B.CLIN_INSCRG,B.UF_SIGLA,B.CLIN_CGCCPF,C.MUN_NOME   ') ;
//                                 Q_CLI.Sql.Add(' from nf A,CLIENTENBF B, municipio C  ') ;
//                                 Q_CLI.Sql.Add(' where A.NFI_EMIT_CLI = B.CLIN_ID  ') ;
//                                 Q_CLI.Sql.Add(' and     B.MUN_ID = C.MUN_ID     ') ;
//                                 Q_CLI.Sql.Add(' and     A.NFI_CODI = ' + Q_NFNFI_CODI_ORIGINOUNFRS.asstring  ) ;
//                                 Q_CLI.Open ;
//
//
//                                 StrString := MUDALETR('NOTA FISCAL EMITIDA COM BASE NA NF DE VENDA Nº ' )  +
//                                              Q_CLINFI_NUMERO.asstring ;
//                                 writeln(F,StrString,#27#48)  ;
//
//                                 StrString := MUDALETR('Razao: ') + Q_CLICLIN_RAZA.asstring  ;
//                                 writeln(F,StrString,#27#48)  ;
//
//
//                                 StrString := MUDALETR('Endereco: ') +  copy(Trim(Q_CLICLIN_ENDERECO.asstring ),1,30) +
//                                             copy(BRANCOS,1,30-length (Trim(Q_CLICLIN_ENDERECO.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLICLIN_ENDERECO_COMPL.asstring ),1,12) +
//                                             copy(BRANCOS,1,12-length (Trim(Q_CLICLIN_ENDERECO_COMPL.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLICLIN_ENDERECO_BAIRRO.asstring ),1,12) +
//                                             copy(BRANCOS,1,12-length (Trim(Q_CLICLIN_ENDERECO_BAIRRO.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLIMUN_NOME.asstring ),1,40) +
//                                             copy(BRANCOS,1,40-length (Trim(Q_CLIMUN_NOME.asstring))) +
//                                             copy(Brancos,1,2) +  copy(Trim(Q_CLIUF_SIGLA.asstring ),1,2) +
//                                             copy(BRANCOS,1,2-length (Trim(Q_CLIUF_SIGLA.asstring))) ;
//                                 writeln(F,StrString,#27#48)  ;
//
//
//
//                                 StrString := MUDALETR('CNPJ: ') +  copy(Trim(Q_CLICLIN_CGCCPF.asstring ),1,15) +
//                                              copy(BRANCOS,1,15-length (Trim(Q_CLICLIN_CGCCPF.asstring))) +
//                                              copy(Brancos,1,5) + 'IE: ' +  copy(Trim(Q_CLICLIN_INSCRG.asstring ),1,15) +
//                                              copy(BRANCOS,1,15-length (Trim(Q_CLICLIN_INSCRG.asstring))) ;
//
//                                 writeln(F,StrString,#27#48)  ;
//
//                                 StrString := MUDALETR('O Pagamento do ICMS é de responsabilidade do Armazém Geral') ;
//                                 writeln(F,StrString,#27#48)  ;
//
//
//
//                                 CONTLINHA  := 15;
//                                 CONTLINHA2 := 29 ;
//                                 TOTLINHA := CONTLINHA2 - CONTLINHA ;
//                                 if TOTLINHA <> 0 then begin
//                                      TOTLINHA3 := 0 ;
//                                      while not (TOTLINHA3 = TOTLINHA ) do begin
//                                            TOTLINHA3 := TOTLINHA3 + 1 ;
//                                            writeln(F,'',#27#48);
//                                      end ;
//                                 end;
//                            end ;
//
//                       end ;
//
//
//
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                        {COLOCA VALORES DE, ICMS E VALOR DA MERCADORIA}
//                       StrString := copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_BICM.asfloat)]) +
//                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VICM.asfloat)]) +
//                                    copy(Brancos,1,62) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VMER.asfloat)]) ;
//
//
//                       StrString := MUDALETR(StrString ) ;
//                       ///writeln(F,StrString,#27#48);
//                       writeln(F,StrString,#27#48);
//                       writeln(F,'',#27#48);
//
//
//
//
//                       {COLOCA VALOR DO FRETE, IPI, VALOR TOTAL DOS PRODUTOS}
//                       StrString := copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VFRE.asfloat)]) +
//                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VSEG.asfloat)]) +
//                                    copy(Brancos,1,14) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VDES.asfloat)]) +
//                                    copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_VIPI.asfloat)])  +
//                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_TOTA.asfloat)]) ;
//
//                       StrString := MUDALETR(StrString) ;
//                       //writeln(F,StrString,#27#48);
//                       writeln(F,StrString,#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//
//
//                       {INFORMA TOTAL DE VOLUMES}
//                       StrString := copy(Brancos,1,10) + copy(Q_NFNFI_QTDEUV.asstring,1,5) + copy(BRANCOS,1,5-length (Trim(Q_NFNFI_QTDEUV.asstring))) +
//                                    copy(Brancos,1,6) +  'VOLUME(s)' +
//                                    //copy(Brancos,1,84) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_PBRU.asfloat)]) +
//                                    //copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_pliq.asfloat)]) ;
//                                    copy(Brancos,1,54) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_PBRU.asfloat)]) +
//                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_pliq.asfloat)]) ;
//
//
//
//
//                       StrString := MUDALETR(StrString) ;
//                       //writeln(F,StrString,#27#48);
//                       writeln(F,StrString,#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//
//
//                      { IF  (RTipo <> '15') then begin
//                           StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
//                           writeln(F,StrString,#27#48)  ;
//                           StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
//                           writeln(F,StrString,#27#48)  ;
//                       end ;
//
//                       IF  (Q_NFNFI_DEST_CLI.asinteger = 53) then begin
//                           StrString := MUDALETR('BASE DE CÁLCULO REDUZIDA CONFORME ARTIGO 3º INCISO II')  ;
//                           writeln(F,StrString,#27#48)  ;
//                           StrString := MUDALETR('DO ANEXO II DO RICMS/2000') ;
//                           writeln(F,StrString,#27#48)  ;
//                       end ; }
//
//
//
//
//                     { if (Q_NFNFI_DEST_CLI.asinteger = 50751) THEN BEGIN
//                         if (rtipo = '15') OR (RTIPO = '3') THEN BEGIN
//                            StrString := MUDALETR('BASE DE CÁLCULO REDUZIDA CONFORME ARTIGO 3º INCISO II')  ;
//                            writeln(F,StrString,#27#48)  ;
//                            StrString := MUDALETR('DO ANEXO II DO RICMS/2000') ;
//                            writeln(F,StrString,#27#48)  ;
//                         END ;
//                         if (rtipo = '14') then BEGIN
//                              StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
//                              writeln(F,StrString,#27#48)  ;
//                              StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
//                              writeln(F,StrString,#27#48)  ;
//                         END ;
//                      END ELSE BEGIN
//                              StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
//                              writeln(F,StrString,#27#48)  ;
//                              StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
//                              writeln(F,StrString,#27#48)  ;
//                      END ;  }
//
//                      {ADICIONA TEXTO PADRÃO À NOTA FISCAL}
//                      Q_AUX.close;
//                      Q_AUX.Sql.Clear;
//                      Q_AUX.Sql.Add(' SELECT * from TEXPADRAO ') ;
//                      Q_AUX.Sql.Add(' where CodTexto = ' + '''' + Q_FATCFA_TPA1.asstring + '''') ;
//                      Q_AUX.open;
//
//                      StrString := MUDALETR(Q_AUX.fieldbyname('LINHA1').asstring)  ;
//                      writeln(F,StrString,#27#48)  ;
//                      StrString := MUDALETR(Q_AUX.fieldbyname('LINHA2').asstring) ;
//                      writeln(F,StrString,#27#48)  ;
//                      StrString := MUDALETR(Q_AUX.fieldbyname('LINHA3').asstring) ;
//                      writeln(F,StrString,#27#48)  ;
//
//                      //writeln(F,'',#27#48);
//                      writeln(F,'',#27#48);
//
//
//
//                       StrString := copy(Q_NFNFI_DISCRIM.asstring,1,60)  ;
//                       writeln(F,StrString,#27#48);
//
//                       StrString := copy(Q_NFNFI_DISCRIM.asstring,61,60)  ;
//                       writeln(F,StrString,#27#48);
//
//                       StrString := copy(Q_NFNFI_DISCRIM.asstring,121,60)  ;
//                       writeln(F,StrString,#27#48);
//
//                       StrString := copy(Q_NFNFI_DISCRIM.asstring,181,60)  ;
//                       writeln(F,StrString,#27#48);
//
//                       StrString := copy(Q_NFNFI_DISCRIM.asstring,241,14)  ;
//                       writeln(F,StrString,#27#48);
//
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//                       writeln(F,'',#27#48);
//
//                       IF (RTIPO2 = 'A') then begin
//
//                           StrString := copy(Brancos,1,120) + NOVONUMERO ;
//                           StrString := MUDALETR(StrString ) ;
//
//                           {ESCREVE A NOTA FISCAL NOta fiscal no rodape da nota fiscal}
//                           writeln(F,StrString,#27#48);
//
//                       end else begin
//                           StrString := copy(Brancos,1,119) + Q_NFNFI_NUMERO.asstring ;
//                           StrString := MUDALETR(StrString ) ;
//                           writeln(F,StrString,#27#48);
//
//                       end     ;
//
//
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//                       Writeln(F,'',#27#48);
//
//
//                       closefile(f) ;
//
//                       Q_aux.close;
//                       Q_aux.Sql.Clear;
//                       Q_aux.Sql.Add(' UPDATE NF SET  NFI_STATUS = '  + '''' + 'E' + '''');
//                       Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring) ;
//                       Q_aux.ExecSql;
//                 end ;
//
//                   {segionte nota fiscal}
//                    Q_NF.Next ;
//               end ;
//
//               Q_NF.close;
//               Q_NF.open ;
//
//
//    end ;
//    ////REIMPRIMIR ou IMPRIMIR
//
//
//
//
//    IF RTIPO2 = 'C'  then begin
//
//          If MessageDlg('Confirma o Cancelamento das Notas selecionadas ?',MtConfirmation,[MbYes,
//                  MbNo],0)=MrNO Then abort ;
//
//
//                    Q_NF.first;
//                    While not (Q_NF.eof)  do begin
//
//                       IF (Q_NFNFI_MARCAIMP.asstring = '*')  then begin
//
//                            IF RTIPO <> '17' then begin
//                                  IF RTIPO <> '15' then begin
//                                          IF (Q_NFMANI_ID.asstring <> '') then begin
//                                              MessageDlg('Nota Fiscal:' + Q_NFNFI_NUMERO.asstring + ' tem Manifesto de Carga em aberto, não pode ser cancelada !',mtInformation,[mbOk], 0);
//                                              abort ;
//                                          end ;
//
//                                          /////voltar todos os itens para as NFE's
//                                          Q_aux.close    ;
//                                          Q_aux.Sql.Clear;
//                                          Q_aux.Sql.Add(' select * from NF_ITENS'  );
//                                          Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
//                                          Q_aux.open    ;
//
//                                          Q_aux.first;
//                                          While not (Q_aux.eof)  do begin
//
//                                                  Q_aux2.close    ;
//                                                  Q_aux2.Sql.Clear;
//                                                  Q_aux2.Sql.Add(' UPDATE NF_ITENS SET INF_QTDERETORNADA = (INF_QTDERETORNADA -' +  inttostr(Q_AUX.fieldbyname('INF_QTDE').asinteger) + ')');
//                                                  Q_aux2.Sql.Add(' where NFI_CODI = ' + Q_AUX.fieldbyname('INF_NFE').asstring ) ;
//                                                  Q_aux2.Sql.Add(' and  PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring ) ;
//                                                  Q_aux2.ExecSql  ;
//
//
//                                               Q_AUX.next ;
//                                          end ;
//                                  end else begin  {cddgdfg}
//                                      Q_aux.close    ;
//                                      Q_aux.Sql.Clear;
//                                      Q_aux.Sql.Add(' UPDATE NF set NFI_CODI_ORIGINOUNFRS = null ' );
//                                      Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
//                                      Q_aux.ExecSql  ;
//
//                                  end ;
//                            end ;
//
//
//                            Q_aux.close    ;
//                            Q_aux.Sql.Clear;
//                            Q_aux.Sql.Add(' UPDATE NF SET NFI_STATUS = '  + '''' + 'C' + ''''  );
//                            Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
//                            Q_aux.ExecSql  ;
//                       end ;
//                       Q_NF.next ;
//                    end ;
//              Q_NF.close;
//              Q_NF.open ;
//    end ;


end;

procedure TFImprNF.Q_NFNFI_MARCAIMPChange(Sender: TField);
var
SQL : string ;
begin
//     LOCF:=  cdsNFNFI_CODI.AsInteger;
//
//
//     SQL:= '';
//
//     IF cdsNFNFI_MARCAIMP.AsString = '*' THEN BEGIN
//
//     SQL:= ' UPDATE NF set NFI_MARCAIMP = ' + '''' + '*' + '''' +
//           '  where NFI_CODI = ' + '''' + inttostr(LOCF) + ''''
//     END
//     ELSE BEGIN
//
//     SQL:= ' UPDATE NF set NFI_MARCAIMP = ' + '''' + '' + '''' +
//           '  where NFI_CODI = ' + '''' + inttostr(LOCF) + ''''
//     END;
//
//     Q_AUX.Close;
//     Q_AUX.SQL.CLEAR;
//     Q_AUX.SQL.ADD(SQL);
//     Q_AUX.ExecSQL;
//
//     cdsNF.ClosE;
//     cdsNF.Open;
//
//     cdsNF.LOCATE('NFI_CODI', LOCF,[]);



end;

function TFIMPRNF.MUDALETR(LETRA: string): string;
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


procedure TFImprNF.FormCreate(Sender: TObject);
//var Code : TStringList;

begin
   Q_FAT.open ;
   //cdsFat.Open;
   T_ACEN.open ;
   Q_PAR.open ;
   Q_PARAMETRO.Open;


   cdsMunicipio.Open;

   MaskEdit1.Text := DateToStr(Now);
   MaskEdit2.Text := DateToStr(Now);



 {  try
      if not FileExists('C:\Nbf.udl') then
      begin
           Code := TStringList.Create;
           Code.Add('[oledb]');
           Code.Add('; Everything after this line is an OLE DB initstring');
           Code.Add('Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;User ID=sa;Initial Catalog=NBF;Data Source=MIGUEL');
           Code.SaveToFile('C:\Nbf.udl');
      end;
   finally
       FreeAndNil(Code);
   end;  }

   //if UpperCase(FMenu.SqlUsuariosNOME.Value) = 'SA' then
   //    chkImprime.Visible := True;

       

end;

procedure TFImprNF.BitBtn4Click(Sender: TObject);
begin
    SQL:= ' UPDATE NF set NFI_MARCAIMP = ' + '''' + '*' + ''''  +
          'where TDOC_ID = '  +  RTIPO ;
         ///// 'and NFI_STATUS = '  + '''' + RTIPO2 + '''';

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;


     cdsNF.ClosE;
     cdsNF.Open;

end;

procedure TFImprNF.btNemClick(Sender: TObject);
begin
     SQL:=  ' UPDATE NF set NFI_MARCAIMP = ' + '''' + '' + '''' +
            'where TDOC_ID = '  +  RTIPO  ;
            ////'and NFI_STATUS = '  + '''' + RTIPO2 + '''';

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;


     cdsNF.Close;
     cdsNF.Open ;

end;



procedure TFImprNF.Imprimir_Cabecalho_Nota_Fiscal;
begin
                      // Assignfile(F,Q_PARCAMINHO_MATRICIAL.asstring);

                    //  Assignfile(f,'c:\nota'+IntToStr(FORMULARIO)+'.txt');
                    //  Rewrite(F);

                       //CODNOTA := Q_NFNFI_CODI.asinteger ;


                       {BUSCA NUMERO DE FORMULÁRIOS}
                      //  qrFormularios.CLOSE;
                       // qrFormularios.Params[0].AsInteger := CODNOTA;
                       // qrFormularios.OPEN;

                      //  NUM_FORMULARIOS := (qrFormulariositems.Value DIV 29) + 1;
                      //  FORMULARIO := 1;

                       ///////SE FOR IMPRESSAO PROCURA NOVA NUMERO DE NOTA/////////
                       IF (RTIPO2 = 'A') then begin


                           Writeln(F,'',#27#48);
                           ///Writeln(F,'');
                           StrString := copy(Brancos,1,119) + NOVONUMERO ;
                           StrString := MUDALETR(StrString ) ;
                           ///writeln(F,StrString,#27#48);
                           writeln(F,StrString,#27#48);

                           {COLOCA NUMERO DE PÁGINAS NA NF}
                           StrString := copy(Brancos,1,118) + 'PG: '+
                           INTTOSTR(FORMULARIO)+'/'+IntToStr(NUM_FORMULARIOS) ;
                           StrString := MUDALETR(StrString ) ;
                           writeln(F,StrString,#27#48);
                       ///>>>>>>SE FOR IMPRESSAO PROCURA NOVA NUMERO DE NOTA/////////


                       //>>>>>>>>>REIMPRESSAO>>>>>>>>>>>>>>>>>
                       end else begin

                           Writeln(F,'',#27#48);
                           ///Writeln(F,'');
                           StrString := copy(Brancos,1,119) + cdsNFNFI_NUMERO.asstring ;
                           StrString := MUDALETR(StrString ) ;
                           ///writeln(F,StrString,#27#48);
                           {ATRIBUI NUMERO DA NOTA FISCAL}
                           writeln(F,StrString,#27#48);

                            {COLOCA NUMERO DE PÁGINAS NA NF}
                           StrString := copy(Brancos,1,118) + 'PG: '+
                           INTTOSTR(FORMULARIO)+'/'+IntToStr(NUM_FORMULARIOS) ;
                           StrString := MUDALETR(StrString ) ;
                           writeln(F,StrString,#27#48);
                       end     ;





                       //Writeln(F,'');
                      // Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);






                       ///>>>>>>>>>>>>>>PROCURA CFOP<<<<<<<<<<<<<<<<<<<<<<<<<
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
                       //>>>>>>>COLOCA O CABEÇALHO DO CFOP NA NOTA FISCAL}<<<<<<<<<<<<<<<<
                       StrString := copy(Brancos,1,1) + copy(Q_FATCFA_DCFO.asstring,1,38) + copy(BRANCOS,1,38-length (Trim(Q_FATCFA_DCFO.asstring))) +
                                    copy(Brancos,1,8) + copy(Q_FATCFA_CODI.asstring,1,1) + '.' + copy(Q_FATCFA_CODI.asstring,2,3)  {+
                                    copy(Brancos,1,2) + trim(Q_NFNFI_DEST_INSCRG.asstring) + copy(BRANCOS,1,20-length (Trim(Q_NFNFI_DEST_INSCRG.asstring)))};

                       StrString := MUDALETR(StrString ) ;
                       ///writeln(F,StrString,#27#48);
                       writeln(F,StrString,#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);



                       //IF (TIPO = 14) then begin
                           cdsNFNFI_DEST_CGC.EditMask := '99.999.999/9999-99;0;_' ;
                           StrString := copy(Brancos,1,1) + copy(cdsNFNFI_DEST_RAZA.asstring,1,50) + copy(BRANCOS,1,50-length (Trim(cdsNFNFI_DEST_RAZA.asstring))) +
                                        copy(Brancos,1,34) + Trim(cdsNFNFI_DEST_CGC.DisplayText) +
                                        copy(BRANCOS,1,15-length (Trim(cdsNFNFI_DEST_CGC.DisplayText))) +
                                        copy(Brancos,1,18) + formatdatetime('DD/MM/YYYY', cdsNFNFI_DEMI.asdatetime)   ;
                           StrString := MUDALETR(StrString ) ;
                           ///writeln(F,StrString,#27#48);





                           {ESCREVE NOME DO CLIENTE CNPJ E DATA}
                           writeln(F,StrString,#27#48);
                       //end ;
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);

                       //IF (TIPO = 14) then begin
                          StrString := copy(Brancos,1,1) + Trim(cdsNFNFI_DEST_ENDERECO.asstring) +
                                    copy(BRANCOS,1,35  - length (Trim(cdsNFNFI_DEST_ENDERECO.asstring))) +

                                    copy(Brancos,1,1) + Trim(cdsNFNFI_DEST_COMPL.asstring) +
                                    copy(BRANCOS,1,10 - length (Trim(cdsNFNFI_DEST_COMPL.asstring))) +

                                    copy(Brancos,1,10) + Trim(cdsNFNFI_DEST_BAIRRO.asstring) +
                                    copy(BRANCOS,1,20 - length (Trim(cdsNFNFI_DEST_BAIRRO.asstring)))+

                                    copy(Brancos,1,7) + copy(Trim(cdsNFNFI_DEST_CEP.asstring),1,5) + '-' +
                                    copy(Trim(cdsNFNFI_DEST_CEP.asstring),6,3) ;



                                    {COLOCA ENDEREÇO, BAIRRO,  E CEP DO CLIENTE}
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

                                   { Q_AUX3.close ;
                                    Q_AUX3.Sql.Clear ;
                                    Q_AUX3.Sql.Add(' Select MUN_NOME from MUNICIPIO  ') ;
                                    Q_AUX3.Sql.Add(' where MUN_ID  = ' + cdsNFMUN_ID.asstring  ) ;
                                    Q_AUX3.Open ; }

                                    cdsMunicipio.Locate('MUN_ID' , cdsNFMUN_ID.Value, []);



                                    StrString := copy(Brancos,1,1) + Trim(cdsMunicipioMUN_NOME.Value) +
                                               copy(BRANCOS,1,40  - length (Trim(cdsMunicipioMUN_NOME.Value))) +
                                               copy(Brancos,1,13) + Trim(cdsNFNFI_DEST_TEL.asstring) +
                                               copy(BRANCOS,1,11  - length (Trim(cdsNFNFI_DEST_TEL.asstring))) +
                                               copy(Brancos,1,13) + Trim(cdsNFNFI_DEST_UF_SIGLA.asstring) +
                                               copy(BRANCOS,1,2  - length (Trim(cdsNFNFI_DEST_UF_SIGLA.asstring))) +
                                               copy(Brancos,1,5) + Trim(cdsNFNFI_DEST_INSCRG.asstring) +
                                               copy(BRANCOS,1,15  - length (Trim(cdsNFNFI_DEST_INSCRG.asstring))) ;

                                    StrString := MUDALETR(StrString ) ;
                                    ///writeln(F,StrString,#27#48);
                                     {COLOCA CIDADE, TELEFONE, UF, }
                                    writeln(F,StrString,#27#48);

                       ///end ;
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);


end;

procedure TFImprNF.btnImprimirClick(Sender: TObject);
var
 Resto_A, Saldo_campo : Real;
 Proximo : Boolean;
 DanfeOBS : WideString;
 pPesoL, pPesoB : Real;
begin
  DanfeOBS := '';
{Chama somente as notas marcadas}
 if cdsNF.State in [dsInsert, dsEdit] then
    cdsNF.Post;




    IF rTipo2 = 'C' then begin
        //Q_NF.close;
        cdsNF.close;
        Q_NF.SQL.clear ;
        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
        Q_NF.SQL.add ('from NF A (NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK)');
        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
        Q_NF.SQL.add ('and A.TDOC_ID =' + RTIPO );
        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID' );
        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + 'E' + '''' );
        Q_NF.SQL.add ('and A.NFI_MARCAIMP = '  + '''' + '*' + '''' );
        IF MaskEdit1.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

        IF MaskEdit2.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));


        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
       // Q_NF.open ;
       cdsNF.Open;
    end else begin
       // Q_NF.close;
        cdsNF.close;
        Q_NF.SQL.clear ;
        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
        Q_NF.SQL.add ('from NF A (NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK)');
        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
        Q_NF.SQL.add ('and A.TDOC_ID = '  + RTIPO );
        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + RTIPO2 + '''' );
        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID ' );
        Q_NF.SQL.add ('and A.NFI_MARCAIMP = '  + '''' + '*' + '''' );
        IF MaskEdit1.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

        IF MaskEdit2.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));


        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
       // Q_NF.open ;
       cdsNF.Open;
    end ;



// /////////////////////////////////////////////////////////////////////////////
//   {VERIFICA A QUANTIDADE DE NOTAS A SER CANCELADAS OU IMPRESSAS}
//    StatusBar1.Canvas.Font.Size := 11;
//     {CANCELAMENTO DE NOTA FISCAL}
//     IF rTipo2 = 'C' then begin  //tipo para cancelamento
//        Q_AUX.close;
//        Q_AUX.SQL.clear ;
//        Q_AUX.SQL.add ('Select count(*) as QTDEMARCADA');
//        Q_AUX.SQL.add ('from NF A,ClienteNBF B');
//        Q_AUX.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
//        Q_AUX.SQL.add ('and A.TDOC_ID = '  + RTIPO );
//        Q_AUX.SQL.add ('and A.NFI_STATUS = '  + '''' + 'E' + '''' );
//        Q_AUX.SQL.add ('and A.NFI_MARCAIMP = '  + '''' + '*' + '''' );
//        Q_AUX.open ;
//    end else begin  {IMPRESSÃO OU REIMPRESSÃO}
//        Q_AUX.close;
//        Q_AUX.SQL.clear ;
//        Q_AUX.SQL.add ('Select count(*) as QTDEMARCADA');
//        Q_AUX.SQL.add ('from NF A,ClienteNBF B');
//        Q_AUX.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
//        Q_AUX.SQL.add ('and A.TDOC_ID = '  + RTIPO );
//        Q_AUX.SQL.add ('and A.NFI_STATUS = '  + '''' + RTIPO2 + '''' );
//        Q_AUX.SQL.add ('and A.NFI_MARCAIMP = '  + '''' + '*' + '''' );
//        Q_AUX.open ;
//    end ;
//  {VERIFICA A QUANTIDADE DE NOTAS A SER CANCELADAS OU IMPRESSAS}
//  //////////////////////////////////////////////////////////////////////
//
//
//
//    //////////VERIFICA SE FOI MARCADA ALGUMA NOTA/////////////////////////
//    IF Q_AUX.fieldbyname('QTDEMARCADA').asinteger = 0  then begin
//
//       MessageDlg('Não foi selecionada nenhuma nota !',mtInformation,[mbOk], 0);
//       abort ;
//
//    end ;
//    ////////////////////////////////////////////////////////////////////




    ////////////REIMPRIMIR ou IMPRIMIR///////////////////////////////////
    IF (RTIPO2 = 'A') or  (RTIPO2 = 'E')  then begin

            IF  (RTIPO2 = 'A') then begin
               If MessageDlg('Confirma a Impressão das Notas selecionadas ?',MtConfirmation,[MbYes,
                  MbNo],0)=MrNO Then abort ;
            end else begin
               If MessageDlg('Confirma a Reimpressão das Notas selecionadas ?',MtConfirmation,[MbYes,
                  MbNo],0)=MrNO Then abort ;
            end ;





      //////////////////INICIA O LOOP DE IMPRESSAO DE NOTAS////////////////////
               cdsNF.first;
               While not (cdsNF.eof)  do begin

               //atualiza peso das notas de retorno simbolico
                     IF RadioGroup2.ItemIndex = 0 then begin
                      if RadioGroup1.ItemIndex = 0 then begin
                          with Q_AUX do begin
                              close;
                              sql.Clear;
                              sql.Add(
                                 ' select '+
                                 '         SUM(INF_PESO*INF_QTDE) Pbru,  '+
                                 '         SUM(INF_PESOLIQ*INF_QTDE) PLiq   '+
                                 ' FROM NF_ITENS WHERE NFI_CODI = '+  cdsNFNFI_CODI.AsString
                              );
                              Open;
                          end;

                          pPesoL := Q_AUX.fieldByName('Pliq').AsFloat;
                          pPesoB := Q_AUX.fieldByName('PBru').AsFloat;

                          with Q_AUX do begin
                              Close;
                              sql.Clear;
                              sql.Add('update nf set NFI_PBRU = :NFI_PBRU, NFI_PLIQ = :NFI_PLIQ WHERE NFI_CODI = :NFI_CODI');
                              Params[0].AsFloat := pPesoB;
                              Params[1].AsFloat := pPesoL;
                              Params[2].AsInteger :=  cdsNFNFI_CODI.AsInteger;
                              ExecSQL;
                          end;

                      end;
                  end;


                 IF (cdsNFNFI_MARCAIMP.asstring = '*')  then begin
                     // Assignfile(F,'c:\nota'+Q_NFNFI_CODI.ASSTRING+'.TXT');
                      ////Assignfile(F,'NF.txt');
                      ////Assignfile(F,'\\lenice\EpsonFX');
                      ////  Assignfile(F,'\\elisangela\EpsonFX-2180');



                       ////////////CRIA O ARQUIVO//////////////

                      if chkImprime.Checked then   Assignfile(F,'c:\Atelier\nota'+cdsNFNFI_numero.ASSTRING+'.TXT') else
                      Assignfile(F,Q_PARCAMINHO_MATRICIAL.asstring);


                       Rewrite(F);

                       CODNOTA := cdsNFNFI_CODI.asinteger ;
                        //CODNOTA  := 159759;

                       {BUSCA NUMERO DE FORMULÁRIOS}
                        qrFormularios.CLOSE;
                        qrFormularios.Params[0].AsInteger := CODNOTA;
                        qrFormularios.OPEN;

                        if (qrFormulariositems.Value > 29) and
                           (qrFormulariositems.Value mod 29 <> 0) then
                        NUM_FORMULARIOS := (qrFormulariositems.Value DIV 29) + 1
                        else if (qrFormulariositems.Value > 29) and
                           (qrFormulariositems.Value mod 29 = 0) then
                           NUM_FORMULARIOS := (qrFormulariositems.Value DIV 29)
                        else
                        NUM_FORMULARIOS := 1;

                        FORMULARIO := 1;
                        //sao roque
                        //ADOQuery1.ConnectionString := 'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;User ID=sa;Initial Catalog=NBF;Data Source=SRV-01' ;
                        //nbf
                        //ADOQuery1.ConnectionString := 'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;User ID=sa;Initial Catalog=NBF;Data Source=NBFSRV-01' ;
                        //ADOQuery1.ConnectionString := 'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;User ID=sa;Initial Catalog=NBF;Data Source=MIGUEL\SQL' ;
                        ADOQuery1.Close;
                        //ADOQuery1.ConnectionString := Q_PARAMETROCONNECTIONSTRING.Value;

                        ADOQuery1.Parameters[0].Value := cdsNFNFI_CODI.value;
                        ADOQuery1.Open;

                        NotasRetorno := ADOQuery1nfi_discrim.Value;
                        Notas_size := 1;




                       ///////SE FOR IMPRESSAO PROCURA NOVA NUMERO DE NOTA/////////
                       IF (RTIPO2 = 'A') then begin
                           //Q_AUX.close;
                           cdsAux.close;
                           Q_AUX.Sql.Clear;
                           Q_AUX.Sql.Add(' SELECT ULT_NF from PARAMETRO ') ;
                           //Q_AUX.open;
                           cdsAux.Open;

                           NOVONUMERO :=  inttostr(cdsAux.fieldbyname('ULT_NF').asinteger + 1) ;


                           Q_aux.close;

                           Q_aux.Sql.Clear;
                           Q_aux.Sql.Add(' UPDATE PARAMETRO SET  ULT_NF = '  + '''' + NOVONUMERO + ''''  );
                           Q_aux.ExecSql;


                           Q_aux.close;
                           Q_aux.Sql.Clear;
                           Q_aux.Sql.Add(' UPDATE NF SET  NFI_NUMERO = '  + '''' + NOVONUMERO + ''''  );
                           Q_aux.Sql.Add(' where NFI_CODI = ' + cdsNFNFI_CODI.asstring) ;
                           Q_aux.ExecSql;

                           Writeln(F,'',#27#48);
                           ///Writeln(F,'');
                           StrString := copy(Brancos,1,119) + NOVONUMERO ;
                           StrString := MUDALETR(StrString ) ;
                           ///writeln(F,StrString,#27#48);
                           writeln(F,StrString,#27#48);

                           {COLOCA NUMERO DE PÁGINAS NA NF}
                           StrString := copy(Brancos,1,118) + 'PG: '+
                           INTTOSTR(FORMULARIO)+'/'+IntToStr(NUM_FORMULARIOS) ;
                           StrString := MUDALETR(StrString ) ;
                           writeln(F,StrString,#27#48);

                       ///>>>>>>SE FOR IMPRESSAO PROCURA NOVA NUMERO DE NOTA/////////


                       //>>>>>>>>>REIMPRESSAO>>>>>>>>>>>>>>>>>
                       end else begin

                           Writeln(F,'',#27#48);
                           ///Writeln(F,'');
                           StrString := copy(Brancos,1,119) + cdsNFNFI_NUMERO.asstring ;
                           StrString := MUDALETR(StrString ) ;
                           ///writeln(F,StrString,#27#48);
                           {ATRIBUI NUMERO DA NOTA FISCAL}
                           writeln(F,StrString,#27#48);
                          { Application.ProcessMessages;
                           StatusBar1.Panels[0].Text := 'Imprimindo a nota fiscal: '+Q_NFNFI_NUMERO.asstring;
                           StatusBar1.Panels[1].Text := 'Formulário: '+inttostr(FORMULARIO)+'  de:  '+inttostr(NUM_FORMULARIOS);
                           sleep(1000);
                           Application.ProcessMessages;     }


                            {COLOCA NUMERO DE PÁGINAS NA NF}
                           StrString := copy(Brancos,1,118) + 'PG: '+
                           INTTOSTR(FORMULARIO)+'/'+IntToStr(NUM_FORMULARIOS) ;
                           StrString := MUDALETR(StrString ) ;
                           writeln(F,StrString,#27#48);

                       end     ;





                       //Writeln(F,'');
                      // Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);






                       ///>>>>>>>>>>>>>>PROCURA CFOP<<<<<<<<<<<<<<<<<<<<<<<<<
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
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);

                       //Writeln(F,'',#27#48);
                       //>>>>>>>COLOCA O CABEÇALHO DO CFOP NA NOTA FISCAL}<<<<<<<<<<<<<<<<
                       StrString := copy(Brancos,1,1) + copy(Q_FATCFA_DCFO.asstring,1,38) + copy(BRANCOS,1,38-length (Trim(Q_FATCFA_DCFO.asstring))) +
                                    copy(Brancos,1,8) + copy(Q_FATCFA_CODI.asstring,1,1) + '.' + copy(Q_FATCFA_CODI.asstring,2,3)  {+
                                    copy(Brancos,1,2) + trim(Q_NFNFI_DEST_INSCRG.asstring) + copy(BRANCOS,1,20-length (Trim(Q_NFNFI_DEST_INSCRG.asstring)))};

                       StrString := MUDALETR(StrString ) ;
                       ///writeln(F,StrString,#27#48);
                       writeln(F,StrString,#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);



                       //IF (TIPO = 14) then begin
                           cdsNFNFI_DEST_CGC.EditMask := '99.999.999/9999-99;0;_' ;
                           StrString := copy(Brancos,1,1) + copy(cdsNFNFI_DEST_RAZA.asstring,1,50) + copy(BRANCOS,1,50-length (Trim(cdsNFNFI_DEST_RAZA.asstring))) +
                                        copy(Brancos,1,34) + Trim(cdsNFNFI_DEST_CGC.DisplayText) +
                                        copy(BRANCOS,1,15-length (Trim(cdsNFNFI_DEST_CGC.DisplayText))) +
                                        copy(Brancos,1,18) + formatdatetime('DD/MM/YYYY', cdsNFNFI_DEMI.asdatetime)   ;
                           StrString := MUDALETR(StrString ) ;
                           ///writeln(F,StrString,#27#48);





                           {ESCREVE NOME DO CLIENTE CNPJ E DATA}
                           writeln(F,StrString,#27#48);
                       //end ;
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);

                       //IF (TIPO = 14) then begin
                          StrString := copy(Brancos,1,1) + Trim(cdsNFNFI_DEST_ENDERECO.asstring) +
                                    copy(BRANCOS,1,35  - length (Trim(cdsNFNFI_DEST_ENDERECO.asstring))) +

                                    copy(Brancos,1,1) + Trim(cdsNFNFI_DEST_COMPL.asstring) +
                                    copy(BRANCOS,1,10 - length (Trim(cdsNFNFI_DEST_COMPL.asstring))) +

                                    copy(Brancos,1,10) + Trim(cdsNFNFI_DEST_BAIRRO.asstring) +
                                    copy(BRANCOS,1,20 - length (Trim(cdsNFNFI_DEST_BAIRRO.asstring)))+

                                    copy(Brancos,1,7) + copy(Trim(cdsNFNFI_DEST_CEP.asstring),1,5) + '-' +
                                    copy(Trim(cdsNFNFI_DEST_CEP.asstring),6,3) ;



                                    {COLOCA ENDEREÇO, BAIRRO,  E CEP DO CLIENTE}
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

                                   { Q_AUX.close ;
                                    Q_AUX.Sql.Clear ;
                                    Q_AUX.Sql.Add(' Select MUN_NOME from MUNICIPIO  ') ;
                                    Q_AUX.Sql.Add(' where MUN_ID  = ' + cdsNFMUN_ID.asstring  ) ;
                                    Q_AUX.Open ; }

                                    cdsMunicipio.Locate('MUN_ID', cdsNFMUN_ID.Value, [] );



                                    StrString := copy(Brancos,1,1) + Trim(cdsMunicipioMUN_NOME.Value) +
                                               copy(BRANCOS,1,40  - length (Trim(cdsMunicipioMUN_NOME.Value))) +
                                               copy(Brancos,1,13) + Trim(cdsNFNFI_DEST_TEL.asstring) +
                                               copy(BRANCOS,1,11  - length (Trim(cdsNFNFI_DEST_TEL.asstring))) +
                                               copy(Brancos,1,13) + Trim(cdsNFNFI_DEST_UF_SIGLA.asstring) +
                                               copy(BRANCOS,1,2  - length (Trim(cdsNFNFI_DEST_UF_SIGLA.asstring))) +
                                               copy(Brancos,1,5) + Trim(cdsNFNFI_DEST_INSCRG.asstring) +
                                               copy(BRANCOS,1,15  - length (Trim(cdsNFNFI_DEST_INSCRG.asstring))) ;

                                    StrString := MUDALETR(StrString ) ;
                                    ///writeln(F,StrString,#27#48);
                                     {COLOCA CIDADE, TELEFONE, UF, }
                                    writeln(F,StrString,#27#48);

                       ///end ;
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);




                       {INICIA A ENTRADA DE DADOS DOS ITENS DA NOTA FISCAL}
                       IF  RTIPO <> '17' then begin

                             //Q_AUX.close ;
                             cdsAux.close;
                             Q_AUX.Sql.Clear ;
                             Q_AUX.Sql.Add('Select A.*,B.UVEN_NOME,(A.PRO_COD + ' + '''' + '-' +  '''' + ' + ltrim(rtrim(STR(D.CLIN_ID))))  as CONCA ' )  ;
                             Q_AUX.Sql.Add('from NF_ITENS A,UNIDVENDA B,PRODUTO C,CLIENTENBF D') ;
                             Q_AUX.Sql.Add('  where A.UVEN_ID = B.UVEN_ID') ;
                             Q_AUX.Sql.Add('    and   A.PRO_ID  = C.PRO_ID and INF_QTDE > 0') ;
                             Q_AUX.Sql.Add('    and   C.CLIN_ID = D.CLIN_ID') ;
                             Q_AUX.Sql.Add('    and   A.NFI_CODI = ' + cdsNFNFI_CODI.asstring  ) ;
                             //Q_AUX.open ;
                             cdsAux.Open;





                             CONTLINHA := 0 ;
                             while not (cdsAux.eof) do
                             begin
                                      Application.ProcessMessages;
                                      StatusBar1.Panels[0].Text := '  Imprimindo a nota fiscal: '+ NOVONUMERO;
                                      StatusBar1.Panels[1].Text := '  Formulário: '+inttostr(FORMULARIO)+'  de:  '+inttostr(NUM_FORMULARIOS);
                                      //sleep(200);
                                      Application.ProcessMessages;

                                      CONTLINHA := CONTLINHA + 1 ;
                                      StrString := //copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_COD').asstring),1,8) +
                                                   //copy(BRANCOS,1,8-length (Trim( Q_AUX.fieldbyname('PRO_COD').asstring))) +
                                                   //copy(Brancos,1,1) + copy(Trim(Q_AUX.fieldbyname('PRO_DESC').asstring),1,60) +
                                                   //copy(BRANCOS,1,60-length (Trim(Q_AUX.fieldbyname('PRO_DESC').asstring))) +

                                                   copy(Brancos,1,1) + copy(Trim(cdsAux.fieldbyname('CONCA').asstring),1,20) +
                                                   copy(BRANCOS,1,20-length (Trim( cdsAux.fieldbyname('CONCA').asstring))) +
                                                   copy(Brancos,1,1) + copy(Trim(cdsAux.fieldbyname('PRO_DESC').asstring),1,60) +
                                                   copy(BRANCOS,1,60-length (Trim(cdsAux.fieldbyname('PRO_DESC').asstring))) +

                                                   copy(Brancos,1,5{17}) + copy(Trim(cdsAux.fieldbyname('UVEN_NOME').asstring),1,2) +

                                                   copy(Brancos,1,2) + Format('%10s',[FormatFloat('########,##0.000',cdsAux.fieldbyname('INF_QTDE').asfloat)]) +

                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',cdsAux.fieldbyname('INF_PUNI').asfloat)]) +

                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',cdsAux.fieldbyname('INF_TOTA').asfloat)]) +
                                                   copy(Brancos,1,1)  + Format('%6s',[FormatFloat('####,##0.00',cdsAux.fieldbyname('INF_AICM').asfloat)]);


                                      StrString := MUDALETR(StrString ) ;
                                      writeln(F,StrString,#27#48);
                                      {ADD LINHA AOS ITENS}
                                      IF NUM_FORMULARIOS > 1 THEN
                                      BEGIN
                                        IF (CONTLINHA = 29) then
                                        begin
                                         formulario := formulario + 1;
                                        if (FORMULARIO <= NUM_FORMULARIOS) THEN
                                        BEGIN
                                          StatusBar1.Panels[1].Text := 'Formulário: '+inttostr(FORMULARIO)+'  de:  '+inttostr(NUM_FORMULARIOS);
                                      //    sleep(1000);
                                          Imprime_Rodape_CValores;
                                          Imprimir_Cabecalho_Nota_Fiscal;
                                          CONTLINHA := 0;
                                        END;
                                      END;
                                     end;
                                 cdsAux.next ;
                                 Application.ProcessMessages;
                             end ;
                       end else begin

                             //Q_AUX.close ;
                             cdsAux.close;
                             Q_AUX.Sql.Clear ;
                             Q_AUX.Sql.Add('Select A.*,B.UVEN_NOME' )  ;
                             Q_AUX.Sql.Add('from NF_ITENS A,UNIDVENDA B') ;
                             Q_AUX.Sql.Add('  where A.UVEN_ID = B.UVEN_ID') ;
                             Q_AUX.Sql.Add('    and   A.NFI_CODI = ' + cdsNFNFI_CODI.asstring  ) ;
                            // Q_AUX.open ;
                             cdsAux.Open;

                             CONTLINHA := 0 ;
                             while not (cdsAux.eof) do
                             begin



                                      CONTLINHA := CONTLINHA + 1 ;
                                      StrString := copy(Brancos,1,1) + copy(Trim(cdsAux.fieldbyname('PRO_COD').asstring),1,12) +

                                                   copy(BRANCOS,1,8-length (Trim( cdsAux.fieldbyname('PRO_COD').asstring))) +
                                                   copy(Brancos,1,1) + copy(Trim(cdsAux.fieldbyname('PRO_DESC').asstring),1,56) +
                                                   copy(BRANCOS,1,56-length (Trim(cdsAux.fieldbyname('PRO_DESC').asstring))) +


                                                   copy(Brancos,1,17) + copy(Trim(cdsAux.fieldbyname('UVEN_NOME').asstring),1,2) +

                                                   copy(Brancos,1,2) + Format('%10s',[FormatFloat('########,##0.00',cdsAux.fieldbyname('INF_QTDE').asfloat)]) +

                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',cdsAux.fieldbyname('INF_PUNI').asfloat)]) +

                                                   copy(Brancos,1,5)  + Format('%10s',[FormatFloat('########,##0.00',cdsAux.fieldbyname('INF_TOTA').asfloat)]) +
                                                   copy(Brancos,1,1)  + Format('%6s',[FormatFloat('####,##0.00',cdsAux.fieldbyname('INF_AICM').asfloat)]);


                                      StrString := MUDALETR(StrString ) ;
                                      writeln(F,StrString,#27#48);
                                      IF NUM_FORMULARIOS > 1 THEN
                                      BEGIN
                                        IF (CONTLINHA = 29) then
                                        begin
                                        formulario := formulario + 1;
                                        if (FORMULARIO <= NUM_FORMULARIOS) THEN
                                        BEGIN
                                          StatusBar1.Panels[1].Text := 'Formulário: '+inttostr(FORMULARIO)+'  de:  '+inttostr(NUM_FORMULARIOS);
                                      //    sleep(1000);
                                          Imprime_Rodape_CValores;
                                          Imprimir_Cabecalho_Nota_Fiscal;
                                          CONTLINHA := 0;
                                        END;
                                        end;
                                      END;
                                 cdsAux.next ;
                             end ;
                       end ;


                       {PREENCHE COM ESPAÇOS EM BRANCO AS LINHAS NAO PREENCHIDAS NA NOTA FISCAL}
                       IF  RTipo <> '15' then begin
                            CONTLINHA2 := 29 ;
                            TOTLINHA := CONTLINHA2 - CONTLINHA ;
                            if TOTLINHA <> 0 then begin
                                TOTLINHA3 := 0 ;
                                while not (TOTLINHA3 = TOTLINHA ) do begin
                                      TOTLINHA3 := TOTLINHA3 + 1 ;
                                      writeln(F,'',#27#48);
                                end ;
                            end;
                       end else begin
                            CONTLINHA2 := 29 ;
                            TOTLINHA := CONTLINHA2 - CONTLINHA ;
                            if TOTLINHA > 19 then begin
                                TOTLINHA3 := 19 ;
                                while not (TOTLINHA3 = TOTLINHA ) do begin
                                      TOTLINHA3 := TOTLINHA3 + 1 ;
                                      writeln(F,'',#27#48);
                                end ;



                                 //Q_CLI.close ;
                                 cdsCli.close;
                                 Q_CLI.Sql.Clear ;
                                 Q_CLI.Sql.Add('  Select A.NFI_NUMERO,B.CLIN_RAZA,B.CLIN_ENDERECO, A.NFI_SERIE, ') ;
                                 Q_CLI.Sql.Add(' CLIN_ENDERECO_COMPL, CLIN_ENDERECO_BAIRRO,  ') ;
                                 Q_CLI.Sql.Add(' B.CLIN_INSCRG,B.UF_SIGLA,B.CLIN_CGCCPF,C.MUN_NOME   ') ;
                                 Q_CLI.Sql.Add(' from nf A,CLIENTENBF B, municipio C  ') ;
                                 Q_CLI.Sql.Add(' where A.NFI_EMIT_CLI = B.CLIN_ID  ') ;
                                 Q_CLI.Sql.Add(' and     B.MUN_ID = C.MUN_ID     ') ;
                                 Q_CLI.Sql.Add(' and     A.NFI_CODI = ' + cdsNFNFI_CODI_ORIGINOUNFRS.asstring  ) ;
                                 //Q_CLI.Open ;
                                 cdsCli.Open;


                                 StrString := MUDALETR(' NOTA FISCAL EMITIDA COM BASE NA NF DE VENDA Nº ' )  +
                                              cdsCliNFI_NUMERO.asstring + ' SERIE ' + cdsCliNFI_SERIE.AsString;
                                 writeln(F,StrString,#27#48)  ;
                                // DanfeOBS := DanfeOBS + StrString;


                                 StrString := MUDALETR('Razao: ') + cdsCliCLIN_RAZA.asstring  ;
                                 writeln(F,StrString,#27#48)  ;
                                // DanfeOBS := DanfeOBS + StrString;

                                 StrString := MUDALETR('Endereco: ') +  copy(Trim(cdsCliCLIN_ENDERECO.asstring ),1,30) +
                                             copy(BRANCOS,1,30-length (Trim(cdsCliCLIN_ENDERECO.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliCLIN_ENDERECO_COMPL.asstring ),1,12) +
                                             copy(BRANCOS,1,12-length (Trim(cdsCliCLIN_ENDERECO_COMPL.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliCLIN_ENDERECO_BAIRRO.asstring ),1,12) +
                                             copy(BRANCOS,1,12-length (Trim(cdsCliCLIN_ENDERECO_BAIRRO.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliMUN_NOME.asstring ),1,40) +
                                             copy(BRANCOS,1,40-length (Trim(cdsCliMUN_NOME.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliUF_SIGLA.asstring ),1,2) +
                                             copy(BRANCOS,1,2-length (Trim(cdsCliUF_SIGLA.asstring))) ;
                                 writeln(F,StrString,#27#48)  ;
                              //   DanfeOBS := DanfeOBS + StrString;

                                 StrString := MUDALETR('IE: ' + cdsCliCLIN_INSCRG.asstring + ' CNPJ ' + cdsCliCLIN_CGCCPF.AsString ) ;
                                 writeln(F,StrString,#27#48)  ;
                              //   DanfeOBS := DanfeOBS + StrString;

                                 StrString := MUDALETR('O recolhimento do IPI e do ICMS é de responsabilidade do armazém-geral') ;
                                 writeln(F,StrString,#27#48)  ;
                               //  DanfeOBS := DanfeOBS + StrString;

                                 //guardamos a obs para o danfe
                                 with qrAux do begin
                                     close;
                                     sql.Clear;
                                     sql.Add(
                                        ' EXEC NF_ADD_OBS ' +  cdsNFNFI_CODI.AsString + ', ' + QuotedStr(DanfeOBS)
                                     );
                                     ExecSQL;
                                 end;

                                 CONTLINHA  := 15  ;
                                 CONTLINHA2 := 29 ;
                                 TOTLINHA := CONTLINHA2 - CONTLINHA ;
                                 if TOTLINHA <> 0 then begin
                                      TOTLINHA3 := 0 ;
                                      while not (TOTLINHA3 = TOTLINHA ) do begin
                                            TOTLINHA3 := TOTLINHA3 + 1 ;
                                            writeln(F,'',#27#48);
                                      end ;
                                 end;
                            end else begin
                                 {StrString := MUDALETR('NOTA FISCAL EMITIDA COM BASE NA NF DE VENDA')  ;
                                 writeln(F,StrString,#27#48)  ;
                                 StrString := MUDALETR('Razao') ;
                                 writeln(F,StrString,#27#48)  ;
                                 StrString := MUDALETR('Endereco') ;
                                 writeln(F,StrString,#27#48)  ;
                                 StrString := MUDALETR('IncrESTa') ;
                                 writeln(F,StrString,#27#48)  ;
                                 StrString := MUDALETR('O Pagamento do ICMS é de responsabilidade do Armazém Geral') ;
                                 writeln(F,StrString,#27#48)  ;    }
                                // Q_CLI.close ;
                                 cdsCli.close;
                                 Q_CLI.Sql.Clear ;
                                 Q_CLI.Sql.Add('  Select A.NFI_NUMERO,B.CLIN_RAZA,B.CLIN_ENDERECO,  ') ;
                                 Q_CLI.Sql.Add(' CLIN_ENDERECO_COMPL, CLIN_ENDERECO_BAIRRO,  ') ;
                                 Q_CLI.Sql.Add(' B.CLIN_INSCRG,B.UF_SIGLA,B.CLIN_CGCCPF,C.MUN_NOME   ') ;
                                 Q_CLI.Sql.Add(' from nf A,CLIENTENBF B, municipio C  ') ;
                                 Q_CLI.Sql.Add(' where A.NFI_EMIT_CLI = B.CLIN_ID  ') ;
                                 Q_CLI.Sql.Add(' and     B.MUN_ID = C.MUN_ID     ') ;
                                 Q_CLI.Sql.Add(' and     A.NFI_CODI = ' + cdsNFNFI_CODI_ORIGINOUNFRS.asstring  ) ;
                                 //Q_CLI.Open ;
                                 cdsCli.Open;

                                 StrString := MUDALETR('NOTA FISCAL EMITIDA COM BASE NA NF DE VENDA Nº ' )  +
                                              cdsCliNFI_NUMERO.asstring ;
                                 writeln(F,StrString,#27#48)  ;

                                 StrString := MUDALETR('Razao: ') + cdsCliCLIN_RAZA.asstring  ;
                                 writeln(F,StrString,#27#48)  ;


                                 StrString := MUDALETR('Endereco: ') +  copy(Trim(cdsCliCLIN_ENDERECO.asstring ),1,30) +
                                             copy(BRANCOS,1,30-length (Trim(cdsCliCLIN_ENDERECO.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliCLIN_ENDERECO_COMPL.asstring ),1,12) +
                                             copy(BRANCOS,1,12-length (Trim(cdsCliCLIN_ENDERECO_COMPL.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliCLIN_ENDERECO_BAIRRO.asstring ),1,12) +
                                             copy(BRANCOS,1,12-length (Trim(cdsCliCLIN_ENDERECO_BAIRRO.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliMUN_NOME.asstring ),1,40) +
                                             copy(BRANCOS,1,40-length (Trim(cdsCliMUN_NOME.asstring))) +
                                             copy(Brancos,1,2) +  copy(Trim(cdsCliUF_SIGLA.asstring ),1,2) +
                                             copy(BRANCOS,1,2-length (Trim(cdsCliUF_SIGLA.asstring))) ;
                                 writeln(F,StrString,#27#48)  ;



                                 StrString := MUDALETR('CNPJ: ') +  copy(Trim(cdsCliCLIN_CGCCPF.asstring ),1,15) +
                                              copy(BRANCOS,1,15-length (Trim(cdsCliCLIN_CGCCPF.asstring))) +
                                              copy(Brancos,1,5) + 'IE: ' +  copy(Trim(cdsCliCLIN_INSCRG.asstring ),1,15) +
                                              copy(BRANCOS,1,15-length (Trim(cdsCliCLIN_INSCRG.asstring))) ;

                                 writeln(F,StrString,#27#48)  ;

                                 StrString := MUDALETR('O Pagamento do ICMS é de responsabilidade do Armazém Geral') ;
                                 writeln(F,StrString,#27#48)  ;

                                 //guardamos a obs para o danfe
                                 with qrAux do begin
                                     close;
                                     sql.Clear;
                                     sql.Add(
                                        ' EXEC NF_ADD_OBS ' +  cdsNFNFI_CODI.AsString + ', ' + QuotedStr(DanfeOBS)
                                     );
                                     ExecSQL;
                                 end;

                                 CONTLINHA  := 15;
                                 CONTLINHA2 := 29 ;
                                 TOTLINHA := CONTLINHA2 - CONTLINHA ;
                                 if TOTLINHA <> 0 then begin
                                      TOTLINHA3 := 0 ;
                                      while not (TOTLINHA3 = TOTLINHA ) do begin
                                            TOTLINHA3 := TOTLINHA3 + 1 ;
                                            writeln(F,'',#27#48);
                                      end ;
                                 end;
                            end ;

                       end ;

                       //***************INICIO DE RODAPE****************
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);
                        {COLOCA VALORES DE, ICMS E VALOR DA MERCADORIA}
                       StrString := copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_BICM.asfloat)]) +
                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_VICM.asfloat)]) +
                                    copy(Brancos,1,62) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_VMER.asfloat)]) ;


                       StrString := MUDALETR(StrString ) ;
                       ///writeln(F,StrString,#27#48);
                       writeln(F,StrString,#27#48);
                       writeln(F,'',#27#48);




                       {COLOCA VALOR DO FRETE, IPI, VALOR TOTAL DOS PRODUTOS}
                       StrString := copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_VFRE.asfloat)]) +
                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_VSEG.asfloat)]) +
                                    copy(Brancos,1,14) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_VDES.asfloat)]) +
                                    copy(Brancos,1,13) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_VIPI.asfloat)])  +
                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',cdsNFNFI_TOTA.asfloat)]) ;

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


                       {INFORMA TOTAL DE VOLUMES}
                       StrString := copy(Brancos,1,10) + copy(cdsNFNFI_QTDEUV.asstring,1,6) + copy(BRANCOS,1,6-length (Trim(cdsNFNFI_QTDEUV.asstring))) +
                                    copy(Brancos,1,5) +  'VOLUME(s)' +
                                    //copy(Brancos,1,84) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_PBRU.asfloat)]) +
                                    //copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_pliq.asfloat)]) ;
                                    copy(Brancos,1,54) + Format('%10s',[FormatFloat('########,##0.0000',cdsNFNFI_PBRU.asfloat)]) +
                                    copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',cdsNFNFI_pliq.asfloat)]) ;




                       StrString := MUDALETR(StrString) ;
                       //writeln(F,StrString,#27#48);
                       writeln(F,StrString,#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);


                      { IF  (RTipo <> '15') then begin
                           StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
                           writeln(F,StrString,#27#48)  ;
                           StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
                           writeln(F,StrString,#27#48)  ;
                       end ;

                       IF  (Q_NFNFI_DEST_CLI.asinteger = 53) then begin
                           StrString := MUDALETR('BASE DE CÁLCULO REDUZIDA CONFORME ARTIGO 3º INCISO II')  ;
                           writeln(F,StrString,#27#48)  ;
                           StrString := MUDALETR('DO ANEXO II DO RICMS/2000') ;
                           writeln(F,StrString,#27#48)  ;
                       end ; }




                     { if (Q_NFNFI_DEST_CLI.asinteger = 50751) THEN BEGIN
                         if (rtipo = '15') OR (RTIPO = '3') THEN BEGIN
                            StrString := MUDALETR('BASE DE CÁLCULO REDUZIDA CONFORME ARTIGO 3º INCISO II')  ;
                            writeln(F,StrString,#27#48)  ;
                            StrString := MUDALETR('DO ANEXO II DO RICMS/2000') ;
                            writeln(F,StrString,#27#48)  ;
                         END ;
                         if (rtipo = '14') then BEGIN
                              StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
                              writeln(F,StrString,#27#48)  ;
                              StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
                              writeln(F,StrString,#27#48)  ;
                         END ;
                      END ELSE BEGIN
                              StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
                              writeln(F,StrString,#27#48)  ;
                              StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
                              writeln(F,StrString,#27#48)  ;
                      END ;  }

                      {ADICIONA TEXTO PADRÃO À NOTA FISCAL}
                      //Q_AUX.close;
                      cdsAux.close;
                      Q_AUX.Sql.Clear;
                      Q_AUX.Sql.Add(' SELECT * from TEXPADRAO ') ;
                      Q_AUX.Sql.Add(' where CodTexto = ' + '''' + Q_FATCFA_TPA1.asstring + '''') ;
                      //Q_AUX.open;
                      cdsAux.Open;

                      DanfeOBS := '';
                      StrString := MUDALETR(cdsAux.fieldbyname('LINHA1').asstring)  ;
                      DanfeOBS := DanfeOBS + STRSTRING;
                      writeln(F,StrString,#27#48)  ;
                      StrString := MUDALETR(cdsAux.fieldbyname('LINHA2').asstring) ;
                      DanfeOBS := DanfeOBS + STRSTRING;
                      writeln(F,StrString,#27#48)  ;
                      StrString := MUDALETR(cdsAux.fieldbyname('LINHA3').asstring) ;
                      DanfeOBS := DanfeOBS + STRSTRING;
                      writeln(F,StrString,#27#48)  ;

                      //writeln(F,'',#27#48);
                      writeln(F,'',#27#48);

                 //******************NOTAS DE RETORNO

                     {  StrString := copy(Q_NFNFI_DISCRIM.asstring,1,60)  ;
                       writeln(F,StrString,#27#48);

                       StrString := copy(Q_NFNFI_DISCRIM.asstring,61,60)  ;
                       writeln(F,StrString,#27#48);

                       StrString := copy(Q_NFNFI_DISCRIM.asstring,121,60)  ;
                       writeln(F,StrString,#27#48);

                       StrString := copy(Q_NFNFI_DISCRIM.asstring,181,60)  ;
                       writeln(F,StrString,#27#48);

                       StrString := copy(Q_NFNFI_DISCRIM.asstring,241,14)  ;
                       writeln(F,StrString,#27#48);  }
                       NotasRetorno := STRINGREPLACE(NotasRetorno, '/', ' ', [RFREPLACEALL]);

                       for i := 1 to 5 do
                       Begin
                           IF  LENGTH(copy(NotasRetorno,Notas_size,65)) = 0 then
                                STRSTRING := ''
                           else
                                StrString := copy(NotasRetorno,Notas_size,65)  ;
                           DanfeOBS := ' '+ DanfeOBS + STRSTRING;
                           writeln(F,StrString,#27#48);
                           Notas_size := Notas_size + 65;
                       End;

                       
                      //colocar aqui obs do danfe

                      //guardamos a obs para o danfe



                       with qrAux do begin
                           close;
                           sql.Clear;
                           sql.Add(
                              ' EXEC NF_ADD_OBS ' +  cdsNFNFI_CODI.AsString + ', ' + QuotedStr(DanfeOBS)
                           );
                           ExecSQL;
                       end;


                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);

                       IF (RTIPO2 = 'A') then begin

                           StrString := copy(Brancos,1,120) + NOVONUMERO ;
                           StrString := MUDALETR(StrString ) ;

                           {ESCREVE A NOTA FISCAL NOta fiscal no rodape da nota fiscal}
                           writeln(F,StrString,#27#48);

                       end else begin
                           StrString := copy(Brancos,1,119) + cdsNFNFI_NUMERO.asstring ;
                           StrString := MUDALETR(StrString ) ;
                           writeln(F,StrString,#27#48);

                       end     ;


                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);  


                       closefile(f) ;

                      
                       Q_aux.Sql.Clear;
                       Q_aux.Sql.Add(' UPDATE NF SET  NFI_STATUS = '  + '''' + 'E' + '''');
                       Q_aux.Sql.Add(' where NFI_CODI = ' + cdsNFNFI_CODI.asstring) ;
                       Q_aux.ExecSql;
                 end ;

                   {segionte nota fiscal}
                    cdsNF.Next ;
               end ;

               cdsNF.close;
               cdsNF.open ;


    end ;
    ////REIMPRIMIR ou IMPRIMIR




    IF RTIPO2 = 'C'  then begin

          If MessageDlg('Confirma o Cancelamento das Notas selecionadas ?',MtConfirmation,[MbYes,
                  MbNo],0)=MrNO Then abort ;


                    cdsNF.first;
                    While not (cdsNF.eof)  do begin

                       IF (cdsNFNFI_MARCAIMP.asstring = '*')  then begin

                            IF RTIPO <> '17' then begin
                                  IF RTIPO <> '15' then begin
                                          IF (cdsNFMANI_ID.asstring <> '') then begin
                                              MessageDlg('Nota Fiscal:' + cdsNFNFI_NUMERO.asstring + ' tem Manifesto de Carga em aberto, não pode ser cancelada !',mtInformation,[mbOk], 0);
                                              abort ;
                                          end ;

                                         { /////voltar todos os itens para as NFE's
                                          Q_aux.close    ;
                                          Q_aux.Sql.Clear;
                                          Q_aux.Sql.Add(' select * from NF_ITENS'  );
                                          Q_aux.Sql.Add(' where NFI_CODI = ' + Q_NFNFI_CODI.asstring ) ;
                                          Q_aux.open    ;

                                          Q_aux.first;
                                          While not (Q_aux.eof)  do begin

                                                  Q_aux2.close    ;
                                                  Q_aux2.Sql.Clear;
                                                  Q_aux2.Sql.Add(' UPDATE NF_ITENS SET INF_QTDERETORNADA = (INF_QTDERETORNADA -' +  inttostr(Q_AUX.fieldbyname('INF_QTDE').asinteger) + ')');
                                                  Q_aux2.Sql.Add(' where NFI_CODI = ' + Q_AUX.fieldbyname('INF_NFE').asstring ) ;
                                                  Q_aux2.Sql.Add(' and  PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring ) ;
                                                  Q_aux2.ExecSql  ;


                                               Q_AUX.next ;
                                          end ;
                                                }

                                          qrCancelaNota.Params[0].AsInteger := cdsNFNFI_CODI.AsInteger;


                                  end else begin  {cddgdfg}
                                      Q_aux.close    ;
                                      Q_aux.Sql.Clear;
                                      Q_aux.Sql.Add(' UPDATE NF set NFI_CODI_ORIGINOUNFRS = null ' );
                                      Q_aux.Sql.Add(' where NFI_CODI = ' + cdsNFNFI_CODI.asstring ) ;
                                      Q_aux.ExecSql  ;

                                  end ;

                            end ;


                            Q_aux.close    ;
                            Q_aux.Sql.Clear;
                            Q_aux.Sql.Add(' UPDATE NF SET NFI_STATUS = '  + '''' + 'C' + ''''  );
                            Q_aux.Sql.Add(' where NFI_CODI = ' + cdsNFNFI_CODI.asstring ) ;
                            Q_aux.ExecSql  ;

                            //voltamos o saldo das notas de retorno e armazem
                            Q_AUX.Close;
                            Q_AUX.SQL.Clear;
                            Q_AUX.sql.Add('Exec RETORNA_SALDO_SIMBOLICO ' + cdsNFNFI_CODI.asstring);
                            Q_AUX.ExecSQL;


                       end ;

                       //retorna estoque simbolico
                       //**************** MIGUEL ***************
//                       if RTIPO = '14' then
//                       Application.ProcessMessages;
//                       Begin
//                          ///********Procura os itens a serem retornados ***********
//                          qrRetornaEstoque.Close;
//                          qrRetornaEstoque.Params[0].Value := Q_NFNFI_CODI.Value;
//                          qrRetornaEstoque.Open;
//
//                          qrRetornaEstoque.First;
//                          while not qrRetornaEstoque.Eof do
//                          Begin
//                              //****chama o a qtd q foi retornada depois deste item*******
//                              qrTotal.close;
//                              qrTotal.Params[0].AsInteger := Q_NFNFI_CODI.Value;
//                              qrTotal.Params[1].AsString := Q_NFCLIN_RAZA.Value;
//                              qrTotal.Params[2].AsInteger := qrRetornaEstoquePRO_ID.Value;
//                              qrTotal.open;
//
//                              //******** chama as notas que foram abatidas *********
//                              qrNotasEntrada.close;
//                              qrNotasEntrada.Params[0].AsInteger := Q_NFNFI_EMIT_CLI.Value;
//                              qrNotasEntrada.Params[1].AsInteger := qrRetornaEstoquePRO_ID.Value;
//                              qrNotasEntrada.Open;
//
//                              Resto_A := qrTotal.fieldbyname('Total').AsFloat;
//
//                              qrNotasEntrada.First;
////                              while Resto_A > 0 do
////                              Begin
////                                  Resto_A := Resto_A - qrNotasEntrada.fieldbyname('INF_QTDERETORNADA').AsFloat;
////                                  if Resto_A > 0 then
////                                  qrNotasEntrada.Next;
////                              End; //end while
//
//                              Saldo_campo := abs(Resto_A);
//                              Resto_A := qrRetornaEstoqueINF_QTDERETORNADA.Value;
//
////                              if Saldo_campo > 0 then
////                              Begin
////                                  qrExec.Close;
////                                  qrExec.Params[0].AsFloat := qrNotasEntrada.fieldbyname('INF_QTDERETORNADA').AsFloat - Saldo_campo;
////                                  qrExec.Params[1].AsInteger := Q_NFNFI_CODI.Value;
////                                  qrExec.Params[2].AsInteger := qrRetornaEstoquePRO_ID.Value;
////                                  qrExec.ExecSQL;
////                              End;
////                              qrNotasEntrada.Next;
//
//
////                              while Resto_A > 0 DO
////                              Begin
////                                  IF Resto_A > qrNotasEntrada.fieldbyname('INF_QTDERETORNADA').AsFloat THEN
////                                  BEGIN
////                                       qrExec.Close;
////                                       qrExec.Params[0].AsFloat := 0;
////                                       qrExec.Params[1].AsInteger := Q_NFNFI_CODI.Value;
////                                       qrExec.Params[2].AsInteger := qrRetornaEstoquePRO_ID.Value;
////                                       qrExec.ExecSQL;
////                                       Resto_A := Resto_A -  qrNotasEntrada.fieldbyname('INF_QTDERETORNADA').AsFloat;
////                                  END
////                                  ELSE
////                                  BEGIN
////                                       qrExec.Close;
////                                       qrExec.Params[0].AsFloat := qrNotasEntrada.fieldbyname('INF_QTDERETORNADA').AsFloat - Resto_A;
////                                       qrExec.Params[1].AsInteger := Q_NFNFI_CODI.Value;
////                                       qrExec.Params[2].AsInteger := qrRetornaEstoquePRO_ID.Value;
////                                       qrExec.ExecSQL;
////                                  END;
////                                  qrNotasEntrada.Next;
////                              End;
//                          end;
//                       End;
                       application.processmessages;
                       cdsNF.next ;
                    end ;
              cdsNF.close;
              cdsNF.open ;
    end ;

    StatusBar1.Panels[0].Text := '';
    StatusBar1.Panels[1].Text := '';
end;





procedure TFImprNF.Imprime_Rodape_CValores;

begin
                       //***************INICIO DE RODAPE****************
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);

                       writeln(F,'',#27#48);
                        {COLOCA VALORES DE, ICMS E VALOR DA MERCADORIA}
                       StrString := copy(Brancos,1,13) + '*******' +
                                    copy(Brancos,1,15) + '*******' +
                                    copy(Brancos,1,62) + '*******' ;


                       StrString := MUDALETR(X ) ;
                       ///writeln(F,StrString,#27#48);
                       writeln(F,StrString,#27#48);
                       writeln(F,'',#27#48);




                       {COLOCA VALOR DO FRETE, IPI, VALOR TOTAL DOS PRODUTOS}
                       StrString := copy(Brancos,1,13) + '*******' +
                                    copy(Brancos,1,15) + '*******' +
                                    copy(Brancos,1,14) + '*******' +
                                    copy(Brancos,1,13) + '*******'  +
                                    copy(Brancos,1,15) + '*******' ;

                       StrString := MUDALETR(X) ;
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


                       {INFORMA TOTAL DE VOLUMES}
                       StrString := copy(Brancos,1,10) + '*****' + copy(BRANCOS,1,5-length ('*******')) +
                                    copy(Brancos,1,6) +  '*******' +
                                    //copy(Brancos,1,84) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_PBRU.asfloat)]) +
                                    //copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.0000',Q_NFNFI_pliq.asfloat)]) ;
                                    copy(Brancos,1,54) + '*******' +
                                    copy(Brancos,1,15) + '*******' ;




                       StrString := MUDALETR(X) ;
                       //writeln(F,StrString,#27#48);
                       writeln(F,StrString,#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);


                      { IF  (RTipo <> '15') then begin
                           StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
                           writeln(F,StrString,#27#48)  ;
                           StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
                           writeln(F,StrString,#27#48)  ;
                       end ;

                       IF  (Q_NFNFI_DEST_CLI.asinteger = 53) then begin
                           StrString := MUDALETR('BASE DE CÁLCULO REDUZIDA CONFORME ARTIGO 3º INCISO II')  ;
                           writeln(F,StrString,#27#48)  ;
                           StrString := MUDALETR('DO ANEXO II DO RICMS/2000') ;
                           writeln(F,StrString,#27#48)  ;
                       end ; }




                     { if (Q_NFNFI_DEST_CLI.asinteger = 50751) THEN BEGIN
                         if (rtipo = '15') OR (RTIPO = '3') THEN BEGIN
                            StrString := MUDALETR('BASE DE CÁLCULO REDUZIDA CONFORME ARTIGO 3º INCISO II')  ;
                            writeln(F,StrString,#27#48)  ;
                            StrString := MUDALETR('DO ANEXO II DO RICMS/2000') ;
                            writeln(F,StrString,#27#48)  ;
                         END ;
                         if (rtipo = '14') then BEGIN
                              StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
                              writeln(F,StrString,#27#48)  ;
                              StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
                              writeln(F,StrString,#27#48)  ;
                         END ;
                      END ELSE BEGIN
                              StrString := MUDALETR('Não incidência do ICMS Art. 7º., III do RICMS/00.')  ;
                              writeln(F,StrString,#27#48)  ;
                              StrString := MUDALETR('e Suspensão do IPI Art. 40, III, do RIPI/98.') ;
                              writeln(F,StrString,#27#48)  ;
                      END ;  }

                      {ADICIONA TEXTO PADRÃO À NOTA FISCAL}
                      {Q_AUX.close;
                      Q_AUX.Sql.Clear;
                      Q_AUX.Sql.Add(' SELECT * from TEXPADRAO ') ;
                      Q_AUX.Sql.Add(' where CodTexto = ' + '''' + Q_FATCFA_TPA1.asstring + '''') ;
                      Q_AUX.open;   }

                      StrString := ''  ;
                      writeln(F,StrString,#27#48)  ;
                      StrString := '' ;
                      writeln(F,StrString,#27#48)  ;
                      StrString := 'Ref. Notas de saída:';
                      writeln(F,StrString,#27#48)  ;

                      //writeln(F,'',#27#48);
                     // writeln(F,'',#27#48);



                    {   StrString := ''  ;
                       writeln(F,StrString,#27#48);

                       StrString := ''  ;
                       writeln(F,StrString,#27#48);

                       StrString := ''  ;
                       writeln(F,StrString,#27#48);

                       StrString := ''  ;
                       writeln(F,StrString,#27#48);

                       StrString := ''  ;
                       writeln(F,StrString,#27#48);   }
                       {IMPRIMIR AS NOTAS DE SAIDA}
                       for i := 1 to 6 do
                       Begin
                       IF  LENGTH(copy(NotasRetorno,Notas_size,65)) = 0 then
                       STRSTRING := ''
                       else
                       StrString := copy(NotasRetorno,Notas_size,65)  ;
                       writeln(F,StrString,#27#48);
                       Notas_size := Notas_size + 65;
                       End;

                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);
                       writeln(F,'',#27#48);

                       IF (RTIPO2 = 'A') then begin

                           StrString := copy(Brancos,1,120) + NOVONUMERO ;
                           StrString := MUDALETR(StrString ) ;

                           {ESCREVE A NOTA FISCAL NOta fiscal no rodape da nota fiscal}
                           writeln(F,StrString,#27#48);

                       end else begin
                           StrString := copy(Brancos,1,119) + cdsNFNFI_NUMERO.asstring ;
                           StrString := MUDALETR(StrString ) ;
                           writeln(F,StrString,#27#48);

                       end     ;


                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48);
                       Writeln(F,'',#27#48); 


                       ///closefile(f) ;

end;

procedure TFImprNF.BuscarNotasFiscais;
var D1, D2 : TDateTime;
begin


    try
        if MaskEdit1.Text <> '  /  /    ' then
           D1 := StrToDate(MaskEdit1.Text);
        if MaskEdit2.Text <> '  /  /    ' then
           D2 := StrToDate(MaskEdit2.Text);
    except
        MessageBox(Self.Handle, 'Data inválida', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end;

    case radiogroup1.itemindex of
     0 : rTipo := '14' ;
     1 : rTipo := '3'  ;
     2 : rTipo := '15' ;
     3 : rTipo := '17' ;
     4 : RTIPO := '24' ;
     5 : RTIPO := '25' ;
    end ;


    case radiogroup2.itemindex of
     0 : rTipo2 := 'A' ;
     1 : rTipo2 := 'E' ;
     2 : rTipo2 := 'C' ;
    end ;


    IF rTipo2 = 'C' then begin
        //Q_NF.close;
        cdsNF.Close;
        Q_NF.SQL.clear ;
        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
        Q_NF.SQL.add ('from NF A ( NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK) ');
        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
        Q_NF.SQL.add ('and A.TDOC_ID =' + RTIPO );
        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID' );
        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + 'E' + '''' );

        IF MaskEdit1.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

        IF MaskEdit2.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));



        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
       // Q_NF.open ;
       cdsNF.OPEN;
    end else begin
        //Q_NF.close;
        cdsNF.CLOSE;
        Q_NF.SQL.clear ;
        Q_NF.SQL.add ('Select A.*,B.CLIN_RAZA,B.CLIN_ENDERECO,  ');
        Q_NF.SQL.add ('B.CLIN_ENDERECO_COMPL, B.CLIN_ENDERECO_BAIRRO,');
        Q_NF.SQL.add ('B.CLIN_INSCRG,B.UF_SIGLA,C.MUN_NOME,D.CLIF_RAZA ');
        Q_NF.SQL.add ('from NF A (NOLOCK) LEFT OUTER JOIN CLIENTEFINAL D (NOLOCK) ');
        Q_NF.SQL.add ('     ON A.NFI_DEST_CLI = D.CLIF_ID, ');
        Q_NF.SQL.add ('     ClienteNBF B (NOLOCK) ,municipio C (NOLOCK) ');
        Q_NF.SQL.add ('where A.NFI_EMIT_CLI = B.CLIN_ID');
        Q_NF.SQL.add ('and A.TDOC_ID = '  + RTIPO );
        Q_NF.SQL.add ('and A.NFI_STATUS = '  + '''' + RTIPO2 + '''' );
        Q_NF.SQL.add ('and A.MUN_ID = C.MUN_ID ' );

        IF MaskEdit1.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

        IF MaskEdit2.Text <>   '  /  /    ' then
           Q_NF.SQL.add (' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));


        Q_NF.SQL.add ('order by A.NFI_NUMERO ');
       // Q_NF.open ;

       cdsNF.OPEN;
    end ;

    
    IF (rTipo <> '17') then begin
    ////end else begin
        wwDBGrid3.Selected.clear;
        wwDBGrid3.Selected.Add('NFI_MARCAIMP'#9'1'#9'***'#9'F');
        wwDBGrid3.Selected.Add('NFI_NUMERO'#9'10'#9'NF Nº'#9'F');
        wwDBGrid3.Selected.Add('NFI_DEMI'#9'9'#9'Dt.Emissão'#9'F');
        wwDBGrid3.Selected.Add('CLIF_RAZA'#9'38'#9'Destinatário'#9'F');
        wwDBGrid3.ApplySelected;
       // wwDBGrid3.Font.Height := {-19 }-19  ;
       // wwDBGrid3.TitleFont.Height := {-11}-11    ;
    end else begin
        wwDBGrid3.Selected.clear;
        wwDBGrid3.Selected.Add('NFI_MARCAIMP'#9'1'#9'***'#9'F');
        wwDBGrid3.Selected.Add('NFI_NUMERO'#9'10'#9'NF Nº'#9'F');
        wwDBGrid3.Selected.Add('NFI_DEMI'#9'9'#9'Dt.Emissão'#9'F');
        wwDBGrid3.Selected.Add('NFI_DEST_RAZA'#9'38'#9'Destinatário'#9'F');
        wwDBGrid3.ApplySelected;
       // wwDBGrid3.Font.Height := {-19 }-19  ;
       // wwDBGrid3.TitleFont.Height := {-11}-11    ;

    end ;

end;

procedure TFImprNF.RzBitBtn1Click(Sender: TObject);
begin
  BuscarNotasFiscais;
  btnImprimir.Enabled := True;
end;

procedure TFImprNF.cdsNFAfterPost(DataSet: TDataSet);
begin
//  cdsNF.ApplyUpdates(0);
end;

procedure TFImprNF.cdsNFNFI_MARCAIMPChange(Sender: TField);
var
SQL : string ;
begin
     LOCF:=  cdsNFNFI_CODI.AsInteger;


     SQL:= '';

     IF cdsNFNFI_MARCAIMP.AsString = '*' THEN BEGIN

     SQL:= ' UPDATE NF set NFI_MARCAIMP = ' + '''' + '*' + '''' +
           '  where NFI_CODI = ' + '''' + inttostr(LOCF) + ''''
     END
     ELSE BEGIN

     SQL:= ' UPDATE NF set NFI_MARCAIMP = ' + '''' + '' + '''' +
           '  where NFI_CODI = ' + '''' + inttostr(LOCF) + ''''
     END;

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

    // cdsNF.ClosE;
    // cdsNF.Open;

   //  cdsNF.LOCATE('NFI_CODI', LOCF,[]);

end;

procedure TFImprNF.btn1Click(Sender: TObject);
begin
  frmNFTransportadora := TfrmNFTransportadora.Create(Self);
  frmNFTransportadora.qryNota.Close;
  frmNFTransportadora.qryNota.Parameters[0].Value := cdsNFNFI_CODI.AsInteger;
  frmNFTransportadora.qryNota.Open;

  frmNFTransportadora.ShowModal;

  RzBitBtn1.Click;

end;

end.

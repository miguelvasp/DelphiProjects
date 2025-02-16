unit UGeraPagFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, FileCtrl, Buttons, ExtCtrls, Db, DBTables, Wwquery,
  Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, Mask, jpeg, Gauges, ADODB;

type
  TFGeraPagFor = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    btnFechar: TSpeedButton;
    Q_TP10: TwwQuery;
    Q_AUX: TwwQuery;
    DS_TP10: TwwDataSource;
    UPD_PAG: TUpdateSQL;
    DS_PAG: TwwDataSource;
    Q_PAG: TwwQuery;
    Q_PAGNumero: TIntegerField;
    Q_PAGDocumento: TStringField;
    Q_PAGFornecedor: TStringField;
    Q_PAGRazao: TStringField;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Q_PAGVencimento: TDateTimeField;
    Q_TP10Numero: TIntegerField;
    Q_TP10Documento: TStringField;
    Q_TP10Fornecedor: TStringField;
    Q_TP10Razao: TStringField;
    Q_TP10ContaGerencial: TStringField;
    Q_TP10ValorTitulo: TFloatField;
    Q_TP10DescAcresc: TFloatField;
    Q_TP10ValorLiquido: TFloatField;
    Q_TP10Vencimento: TDateTimeField;
    Q_TP10BancoConta: TStringField;
    Q_TP10Emissao: TDateTimeField;
    Q_TP10Moeda: TStringField;
    Q_TP10DataMoeda: TDateTimeField;
    Q_TP10MoedaOriginal: TStringField;
    Q_TP10DataMoedaOriginal: TDateTimeField;
    Q_TP10ValorOriginal: TFloatField;
    Q_TP10VencimentoPrevisto: TDateTimeField;
    Q_TP10Historico: TStringField;
    Q_TP10Flag: TStringField;
    Q_TP10Situacao: TStringField;
    Q_TP10Saldo: TFloatField;
    Q_TP10Filial: TStringField;
    Q_TP10Conferencia: TStringField;
    Q_TP10Flag_Fluxo: TStringField;
    Q_TP10FOR_CODI: TStringField;
    Q_TP10FOR_RAZA: TStringField;
    Q_TP10FOR_PESS: TStringField;
    Q_TP10FOR_CGC: TStringField;
    Q_TP10FOR_INSC: TStringField;
    Q_TP10FOR_ENDE: TStringField;
    Q_TP10FOR_MUNI: TStringField;
    Q_TP10FOR_ESTA: TStringField;
    Q_TP10FOR_CEP: TStringField;
    Q_TP10FOR_TEL1: TStringField;
    Q_TP10FOR_TEL2: TStringField;
    Q_TP10FOR_FAX: TStringField;
    Q_TP10FOR_EMAI: TStringField;
    Q_TP10FOR_NCON: TStringField;
    Q_TP10FOR_CONT: TStringField;
    Q_TP10FOR_IATI: TDateTimeField;
    Q_TP10FOR_CGER: TStringField;
    Q_TP10FOR_MARK: TFloatField;
    Q_TP10FOR_PENT: TFloatField;
    Q_TP10FOR_SEGU: TIntegerField;
    Q_TP10FOR_UCOM: TDateTimeField;
    Q_TP10FOR_VUCO: TFloatField;
    Q_TP10FOR_VUCD: TFloatField;
    Q_TP10FOR_MCOM: TDateTimeField;
    Q_TP10FOR_VMCO: TFloatField;
    Q_TP10FOR_VMCD: TFloatField;
    Q_TP10FOR_AnaIndividual: TStringField;
    Q_TP10FOR_DIMP: TFloatField;
    Q_TP10FOR_DACE: TFloatField;
    Q_TP10ValorPago: TFloatField;
    Q_PAGBancoConta: TStringField;
    Q_PARA: TwwQuery;
    Q_PARASIST_ID: TAutoIncField;
    Q_PARACNPJ: TStringField;
    Q_PARABAN_CODI: TStringField;
    Q_PARABAN_AGEN: TStringField;
    Q_PARABAN_CON: TStringField;
    Q_PARABAN_DAC: TStringField;
    Q_PARARAZAO: TStringField;
    Q_PARABAN_NOME: TStringField;
    Q_PARAENDERECO: TStringField;
    Q_PARANUMERO: TIntegerField;
    Q_PARAEND_COMPL: TStringField;
    Q_PARACIDADE: TStringField;
    Q_PARACEP: TStringField;
    Q_PARAESTADO: TStringField;
    Q_SOMA: TwwQuery;
    Q_SOMAQTDE_REGIS: TIntegerField;
    Q_SOMAVALOR_PAGO: TFloatField;
    Q_PAGContaGerencial: TStringField;
    Q_PAGValorTitulo: TFloatField;
    Q_PAGDescAcresc: TFloatField;
    Q_PAGValorLiquido: TFloatField;
    Q_PAGEmissao: TDateTimeField;
    Q_PAGMoeda: TStringField;
    Q_PAGDataMoeda: TDateTimeField;
    Q_PAGMoedaOriginal: TStringField;
    Q_PAGDataMoedaOriginal: TDateTimeField;
    Q_PAGValorOriginal: TFloatField;
    Q_PAGVencimentoPrevisto: TDateTimeField;
    Q_PAGHistorico: TStringField;
    Q_PAGFlag: TStringField;
    Q_PAGSituacao: TStringField;
    Q_PAGSaldo: TFloatField;
    Q_PAGFilial: TStringField;
    Q_PAGConferencia: TStringField;
    Q_PAGFlag_Fluxo: TStringField;
    Q_PAGFOR_CODI: TStringField;
    Q_PAGFOR_RAZA: TStringField;
    Q_PAGFOR_PESS: TStringField;
    Q_PAGFOR_CGC: TStringField;
    Q_PAGFOR_INSC: TStringField;
    Q_PAGFOR_ENDE: TStringField;
    Q_PAGFOR_MUNI: TStringField;
    Q_PAGFOR_ESTA: TStringField;
    Q_PAGFOR_CEP: TStringField;
    Q_PAGFOR_TEL1: TStringField;
    Q_PAGFOR_TEL2: TStringField;
    Q_PAGFOR_FAX: TStringField;
    Q_PAGFOR_EMAI: TStringField;
    Q_PAGFOR_NCON: TStringField;
    Q_PAGFOR_CONT: TStringField;
    Q_PAGFOR_IATI: TDateTimeField;
    Q_PAGFOR_CGER: TStringField;
    Q_PAGFOR_MARK: TFloatField;
    Q_PAGFOR_PENT: TFloatField;
    Q_PAGFOR_SEGU: TIntegerField;
    Q_PAGFOR_UCOM: TDateTimeField;
    Q_PAGFOR_VUCO: TFloatField;
    Q_PAGFOR_VUCD: TFloatField;
    Q_PAGFOR_MCOM: TDateTimeField;
    Q_PAGFOR_VMCO: TFloatField;
    Q_PAGFOR_VMCD: TFloatField;
    Q_PAGFOR_AnaIndividual: TStringField;
    Q_PAGFOR_DIMP: TFloatField;
    Q_PAGFOR_DACE: TFloatField;
    Q_PAGValorPago: TFloatField;
    Label2: TLabel;
    Q_TP10CONTA: TStringField;
    Q_TP10Barras: TStringField;
    Q_TP10AGENBC: TStringField;
    Q_TP10CONTABC: TStringField;
    Q_TP10NMFAV: TStringField;
    Q_TP10BAN: TStringField;
    Q_TP10TP_TRANS: TStringField;
    Q_TP10TP_PAGCHE: TStringField;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    qrDadosBancarios: TwwQuery;
    qrDadosBancariosSIST_ID: TAutoIncField;
    qrDadosBancariosCNPJ: TStringField;
    qrDadosBancariosBAN_CODI: TStringField;
    qrDadosBancariosBAN_NOME: TStringField;
    qrDadosBancariosBAN_AGEN: TStringField;
    qrDadosBancariosBAN_CON: TStringField;
    qrDadosBancariosBAN_DAC: TStringField;
    qrDadosBancariosRAZAO: TStringField;
    qrDadosBancariosENDERECO: TStringField;
    qrDadosBancariosNUMERO: TIntegerField;
    qrDadosBancariosEND_COMPL: TStringField;
    qrDadosBancariosCIDADE: TStringField;
    qrDadosBancariosCEP: TStringField;
    qrDadosBancariosESTADO: TStringField;
    qrPagamentosReal: TwwQuery;
    Q_TP10ncheque: TAutoIncField;
    qrPagamentosRealBARRAS: TStringField;
    qrPagamentosRealVENCIMENTO: TDateTimeField;
    qrPagamentosRealVALOR: TFloatField;
    qrPagamentosRealRAZAO: TStringField;
    QR_CLIENTE: TwwQuery;
    QR_CLIENTEFOR_CGC: TStringField;
    QR_CLIENTENUMERO: TIntegerField;
    QR_CLIENTEBAN_AGEN: TStringField;
    QR_CLIENTEBAN_CONTA: TStringField;
    QR_CLIENTEFOR_RAZA: TStringField;
    QR_CLIENTEFOR_ENDE: TStringField;
    QR_CLIENTEFOR_CEP: TStringField;
    QR_CLIENTEFOR_MUNI: TStringField;
    QR_CLIENTEFOR_ESTA: TStringField;
    SaveDialog1: TSaveDialog;
    Gauge1: TGauge;
    lbProgress: TLabel;
    QR_CLIENTEFOR_PESS: TStringField;
    qrPagamentosRealNUMERO: TIntegerField;
    qrTitulosReal: TwwQuery;
    qrTitulosRealBARRAS: TStringField;
    qrTitulosRealVALOR: TFloatField;
    qrTitulosRealNUMERO: TIntegerField;
    QR_CLIENTEBAN_DIGITOCC: TStringField;
    qrPagamentosRealNUMCPACHEQ: TAutoIncField;
    qrAux2: TwwQuery;
    qrPagBradesco: TwwQuery;
    qrPagBradescoNUMCPACHEQ: TAutoIncField;
    qrPagBradescoBARRAS: TStringField;
    qrPagBradescoVENCIMENTO: TDateTimeField;
    qrPagBradescoVALOR: TFloatField;
    qrPagBradescoRAZAO: TStringField;
    qrPagBradescoNUMERO: TIntegerField;
    qrPagBradescoCNPJ: TStringField;
    qrPagBradescoNOME: TStringField;
    qrPagBradescoENDERECO: TStringField;
    qrPagBradescoFOR_CEP: TStringField;
    qrPagBradescoNUM_BANCO: TIntegerField;
    qrPagBradescoAGENCIA: TStringField;
    qrPagBradescoCONTA: TStringField;
    qrPagBradescoDIGITO_CONTA: TStringField;
    qrPagBradescoEMISSAO: TDateTimeField;
    qrPagBradescoDESCACRESC: TFloatField;
    qrPagBradescoCOD_BARRAS: TStringField;
    qrEmpresa: TwwQuery;
    qrEmpresaFIL_CODI: TStringField;
    qrEmpresaFIL_DESC: TStringField;
    qrEmpresaFIL_NATOPERA: TStringField;
    qrEmpresaFIL_DESCSERV: TStringField;
    qrEmpresaFIL_ULTIMANF: TStringField;
    qrEmpresaRAZAO: TStringField;
    qrEmpresaCNPJ: TStringField;
    qrEmpresaENDERECO: TStringField;
    qrEmpresaCOMPL: TStringField;
    qrEmpresaCEP: TStringField;
    qrEmpresaCIDADE: TStringField;
    qrEmpresaUF: TStringField;
    qrPagBradescoFOR_PESS: TStringField;
    qrPagBradescoTITULO_BRADESCO: TStringField;
    qrPagBradescoDOCUMENTO: TStringField;
    qrEmpresacodigo_pe: TStringField;
    qrEmpresaSEL: TStringField;
    qrEmpresaBAN_CODI: TStringField;
    qrEmpresaBAN_NOME: TStringField;
    qrEmpresaBAN_AGEN: TStringField;
    qrEmpresaBAN_NAGE: TStringField;
    qrEmpresaBAN_DATA: TDateTimeField;
    qrEmpresaBAN_SALD: TFloatField;
    qrEmpresaBAN_NLAN: TFloatField;
    qrEmpresaBAN_LCHE: TStringField;
    qrEmpresaBAN_UCHE: TStringField;
    qrEmpresaBAN_SALDT: TFloatField;
    qrEmpresaBAN_DATAT: TDateTimeField;
    qrEmpresaBAN_CARTAGECC: TStringField;
    qrEmpresaBAN_CODEMPR: TStringField;
    qrEmpresaBAN_Ordem: TIntegerField;
    qrEmpresaBAN_PE: TStringField;
    qrEmpresaAgencia_PE: TStringField;
    qrEmpresadgAgencia_PE: TStringField;
    qrEmpresaConta_PE: TStringField;
    qrEmpresadgConta_PE: TStringField;
    qrEmpresaDT_CONCILIACAO: TDateTimeField;
    qrUnibanco: TwwQuery;
    qrUnibancoNome: TStringField;
    qrUnibancoValor: TFloatField;
    qrUnibancoNumeroBC: TStringField;
    qrUnibancoAgenBC: TStringField;
    qrUnibancoContaBC: TStringField;
    qrUnibancoBAN_AGEN: TStringField;
    qrUnibancoBAN_CONTA: TStringField;
    qrUnibancoBAN_DIGITOCC: TStringField;
    qrUnibancoDocumento: TStringField;
    qrUnibancoFOR_INSC: TStringField;
    qrUnibancoFOR_CGC: TStringField;
    qrUnibancoFOR_ENDE: TStringField;
    qrUnibancoFOR_MUNI: TStringField;
    qrUnibancoFOR_CEP: TStringField;
    qrUnibancoFOR_ESTA: TStringField;
    qrUnibancoBARRAS: TStringField;
    qrUnibancoFOR_PESS: TStringField;
    qrAux: TwwQuery;
    qrItau: TwwQuery;
    qrItauNumero: TIntegerField;
    qrItauDocumento: TStringField;
    qrItauFornecedor: TStringField;
    qrItauRazao: TStringField;
    qrItauContaGerencial: TStringField;
    qrItauValorTitulo: TFloatField;
    qrItauDescAcresc: TFloatField;
    qrItauValorLiquido: TFloatField;
    qrItauVencimento: TDateTimeField;
    qrItauBancoConta: TStringField;
    qrItauEmissao: TDateTimeField;
    qrItauMoeda: TStringField;
    qrItauDataMoeda: TDateTimeField;
    qrItauMoedaOriginal: TStringField;
    qrItauDataMoedaOriginal: TDateTimeField;
    qrItauValorOriginal: TFloatField;
    qrItauVencimentoPrevisto: TDateTimeField;
    qrItauHistorico: TStringField;
    qrItauFlag: TStringField;
    qrItauSituacao: TStringField;
    qrItauSaldo: TFloatField;
    qrItauFilial: TStringField;
    qrItauConferencia: TStringField;
    qrItauFlag_Fluxo: TStringField;
    qrItauTP_PAG: TStringField;
    qrItauDescricao2: TStringField;
    qrItauBARRAS: TStringField;
    qrItauvalor_dolar: TFloatField;
    qrItauvalor_dolar_real: TFloatField;
    qrItauDT_COMPETENCIA: TDateTimeField;
    qrItauNOTA: TStringField;
    qrItauFOR_CODI: TStringField;
    qrItauFOR_RAZA: TStringField;
    qrItauFOR_PESS: TStringField;
    qrItauFOR_CGC: TStringField;
    qrItauFOR_INSC: TStringField;
    qrItauFOR_ENDE: TStringField;
    qrItauFOR_MUNI: TStringField;
    qrItauFOR_ESTA: TStringField;
    qrItauFOR_CEP: TStringField;
    qrItauFOR_TEL1: TStringField;
    qrItauFOR_TEL2: TStringField;
    qrItauFOR_FAX: TStringField;
    qrItauFOR_EMAI: TStringField;
    qrItauFOR_NCON: TStringField;
    qrItauFOR_CONT: TStringField;
    qrItauFOR_IATI: TDateTimeField;
    qrItauFOR_CGER: TStringField;
    qrItauFOR_MARK: TFloatField;
    qrItauFOR_PENT: TFloatField;
    qrItauFOR_SEGU: TIntegerField;
    qrItauFOR_UCOM: TDateTimeField;
    qrItauFOR_VUCO: TFloatField;
    qrItauFOR_VUCD: TFloatField;
    qrItauFOR_MCOM: TDateTimeField;
    qrItauFOR_VMCO: TFloatField;
    qrItauFOR_VMCD: TFloatField;
    qrItauFOR_AnaIndividual: TStringField;
    qrItauFOR_DIMP: TFloatField;
    qrItauFOR_DACE: TFloatField;
    qrItauFOR_OBS: TStringField;
    qrItauBAN_ID: TIntegerField;
    qrItauAGENCIA: TStringField;
    qrItauCONTA: TStringField;
    qrItauDESCRICAO: TStringField;
    qrItauF_ALMOX: TStringField;
    qrItauNumero_1: TAutoIncField;
    qrItauChequeNumero: TStringField;
    qrItauDataEmissao: TDateTimeField;
    qrItauFavorecido: TStringField;
    qrItauNome: TStringField;
    qrItauValor: TFloatField;
    qrItauBanco: TStringField;
    qrItauTipo: TStringField;
    qrItauEmitido: TStringField;
    qrItauMarcador: TStringField;
    qrItauNumeroCP: TIntegerField;
    qrItauFB_ID_BancoCred: TIntegerField;
    qrItauNumeroBC: TStringField;
    qrItauAgenBC: TStringField;
    qrItauContaBC: TStringField;
    qrItauTp_Pag_1: TStringField;
    qrItauTp_Trans: TStringField;
    qrItauVENCIMENTO_1: TDateTimeField;
    qrItauFB_ID: TAutoIncField;
    qrItauBAN_ID_1: TIntegerField;
    qrItauBAN_AGEN: TStringField;
    qrItauBAN_CONTA: TStringField;
    qrItauFOR_CODI_1: TStringField;
    qrItauPADRAOSN: TStringField;
    qrItauBAN_DIGITOCC: TStringField;
    qrItauCODIGOBANCO: TIntegerField;
    qrItauTIPO_PAGAMENTO: TStringField;
    qrItauCodigoPagamento: TIntegerField;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc1LoteCNAB: TIntegerField;
    procedure escrevetexto(valor:string; tamanho:integer);
    procedure escrevenumero(valor:integer;tamanho:integer);
    procedure escrevecnpj(valor:string; tamanho:integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure Q_PAGAfterOpen(DataSet: TDataSet);
    procedure Q_PAGAfterClose(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    function  TiraSimbolos(txt :String) :String;
    function  CalculaDigito(Txt :String) : String;
    function  CalculaDigitoGeral(Txt :String) : String;
    function RemoveDigitoAgencia(Agencia : string) : string;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CNAB_ITAU;

  private
    procedure SISPAG_REAL;
    procedure SISPAG_RAL_REGISTRO_TIPO_4(CP : Integer);
    procedure SISPAG_ITAU;
    procedure SISPAG_BRADESCO;
    procedure SISPAG_UNIBANCO;
    procedure SISPAG_SANTANDER;
    function writeString(Value : string; iSize : Integer) : string;
    function writeStringZero(Value : string; iSize : Integer) : string;
    function writeInt(Value, iSize : Integer) : string;
    function writeFloat(Value : Double; iSize, Decimal : Integer; Virgula : Boolean) : string;



  public
    { Public declarations }
  end;

var
  FGeraPagFor: TFGeraPagFor;
  F : TextFile;
  contnf : integer;
  continf : integer;
  totvar : real;
  NLote:Integer = 1;
  LAYOUT:INTEGER = 080;
//  TP_PAGTO: INTEGER = 98; //diversos
  TP_PAGTO: INTEGER = 20; //fornecedores
  CHEQ_PAGTO:INTEGER = 2; //CHEQUE PAGAMENTO
  FORMA_PAGTO:INTEGER = 30;
  LAYOUT_LOTE: INTEGER= 030;
  Segmento :string = 'J';
  TP_Movi  : integer = 000;
  QTDE_LOTE: INTEGER = 1;

   {/************** miguel *************/}
   {
       VARIAVEIS DO BANCO REAL
   }
       Seq : Real;
       Filex : TStringList;
       Linha, Aux, Aux2 : string;
       Size, I, J : Integer;

       Barras_empty : string;
       p : Integer;

       contador : Integer;
   {/************** end ****************/}




implementation

uses U_funcoes, CPPMENU, U_ChBor;

{$R *.DFM}


procedure   TFGeraPagFor.CNAB_ITAU;
var F : TStringList;
    L : WideString;
    i : Integer;
    Aux : WideString;
    LotesRegistro : Integer;
    LotesGeral : Integer;
    LoteAtual : Integer;
    Contador : Integer;
    Valor_total: Double;
    TotalLotesCNAB : Integer;

    TOTAL_FINAL : Integer;

begin
     TOTAL_FINAL := 0;
     f := TStringList.Create;
     LoteAtual := 0;
     qrEmpresa.Close;
     qrEmpresa.Params[0].AsString := FChBor.Q_BANCBAN_CODI.AsString;
     qrEmpresa.open;

     ADOStoredProc1.Close;
     ADOStoredProc1.Parameters[0].Value :=  FChBor.Q_BANCBAN_CODI.AsString;
     ADOStoredProc1.Open;

    // LoteAtual := ADOStoredProc1LoteCNAB.AsInteger;

     TotalLotesCNAB := 0;
     //adiciona o header do arquivo no totalde regristrs
    // Inc(TotalLotesCNAB);
     L := '';
     L := L + writeString('341', 3); //codigo banco
     L := L + writeInt(0, 4);
     L := L + writeString('0', 1);
     L := L + writeString('', 6);
     L := L + writeString('080', 3);
     L := L + writeString('2', 1);
     L := L + writeString(qrEmpresaCNPJ.AsString, 14);
     L := L + writeString('', 20);
     L := L + writeInt(qrEmpresaAgencia_PE.AsINTEGER, 5);
     L := L + writeString('', 1);
     L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12);
     L := L + writeString('', 1);
     L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1);
     L := L + writeString(qrEmpresaRAZAO.AsString, 30);
     L := L + writeString('Banco Itau', 30);
     L := L + writeString('', 10);
     L := L + writeString('1', 1);
     L := L + writeString(FormatDateTime('ddMMyyyy', Date), 8);
     L := L + writeString(FormatDateTime('hhmmss', now), 6);
     L := L + writeString('000000000', 9);
     L := L + writeString('00000', 5);
     L := L + writeString('', 69);

     F.Add(L);

     TOTAL_FINAL := TOTAL_FINAL + 1;

     L := '';


     //traz os transferencia entre contas Itau
     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT  CP.Numero as CodigoPagamento, CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  AND B.NUMERO IN (341, 409) AND ISNULL(CP.BARRAS, '''') = '''' '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;



     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin
         Inc(LoteAtual);

         Inc(TotalLotesCNAB);


         L := L + writeString('341', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1);
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO
         L := L + writeString('01', 2); //Codigo de opera��o transferencia entre contas
         L := L + writeString('040', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1); //BRANCO
         L := L + writeString('2', 1); //TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);  //CNPJ
         // L := L + writeString('1707', 4);
         L := L + writeString('', 4); //IDENTIFICA��O
         L := L + writeString('', 16);  //BRANCOS
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString(qrEmpresaRAZAO.AsString, 30);  //NOME DA EMPRESA
         L := L + writeString('', 30);   //FINALIDADE DEVE ESTAR EM BRANCO
         L := L + writeString('', 10);   //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30); //RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5); //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);//CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8);    //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10);     //OCORRENCIAS EM BRANCO

         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0; //adiciona um pelo header
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3); //CODIGO
             L := L + writeInt(LoteAtual, 4); //numero do lote
             L := L + writeString('3', 1);   //tipo registro
             L := L + writeInt(Contador, 5);  //contador
             L := L + writeString('A', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('000', 3); //zeros
             L := L + writeint(qrItauCODIGOBANCO.AsInteger, 3); //CODIGO DO BANCO
             //AGENCIA CONTA
             //SE FOR ITAU OU UNIBANCO
             if (qrItauCODIGOBANCO.AsInteger = 341) OR (qrItauCODIGOBANCO.AsInteger = 409) then begin
                 Aux := '0';
                 Aux := Aux + writeInt(qrItauBAN_AGEN.AsInteger, 4) + ' ';
                 Aux := Aux + writeInt(0, 6);
                 Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 6) + ' ';
                 Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 1);
             end else begin
                 Aux := '';
                 Aux := Aux + writeInt(StrToInt(RemoveDigitoAgencia(qrItauBAN_AGEN.AsString)) , 5) + ' ';
                 Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 12);
                 if Length(Trim(qrItauBAN_DIGITOCC.AsString)) = 1 then
                        Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 1)
                 else
                        Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 2);
             end;
             L:= L + writeString(Aux, 20); //completa os 20 caracteres
             L := L + writeString(qrItauFOR_RAZA.AsString, 30);//nome do favorecido
             L := L + writeString(qrItauCodigoPagamento.AsString, 20);  //titulo
             L := L + writeString( FormatDateTime('ddMMyyyy', qrItauVencimento.AsDateTime), 8); //data prev de pagamento
             L := L + writeString('009', 3);  //tipo de moeda
             L := L + writeString('', 8); //identifica��o da institui��o para o SPB
             L := L + writeInt(0, 7);
             Aux :=  FormatFloat('##0.00', qrItauValorLiquido.AsFloat) ;//valor do pagamento
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 15);

             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L := L + writeString('', 15); //numero de rotorno em branco
             L := L + writeString('', 5);  //brancos
             L := L + writeString('00000000', 8);  //data de efetiva��o real 

             L := L + writeInt(0, 15); //valor real

             L := L + writeString('', 18); //fialidade
             L := L + writeString('', 2); //brancos
             L := L + writeString('000000', 6); //numero doc retorno


             L := L + writeStringZero(qrItauFOR_CGC.AsString, 14); //cnpj
             L := L + writeString('', 2); //finalidae
             L := L + writeString('00005', 5);  //finalidade da ted nota 26
             L := L + writeString('', 5); //brancos
             L := L + writeString('0', 1); //aviso ao favorecido
             //L := L + writeString('', 10); //ocorrencias
             L := L + writeString('00', 10); //ocorrencias

             f.Add(L);
             l:= '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;
             //escreve o trailer do lote
             //Inc(Contador);
             Inc(TotalLotesCNAB);//adiciona o trailer no total de registros L:= '';
             L := L + writeString('341', 3);  //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1);    //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador + 2, 6); //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;//valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeString('', 171); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
     end;


     //traz os pagamentos do tipo DOC C - credito em conta de terceiros
     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT  CP.Numero as CodigoPagamento, CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''D''  ' +
            '  AND B.NUMERO NOT IN (341, 409)  AND ISNULL(CP.BARRAS, '''') = ''''  '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;



     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin
            

     Inc(LoteAtual);// := ADOStoredProc1LoteCNAB.AsInteger;

         Inc(TotalLotesCNAB);


         L := L + writeString('341', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1);
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO
         L := L + writeString('03', 2);
         L := L + writeString('040', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1); //BRANCO
         L := L + writeString('2', 1); //TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);  //CNPJ
         // L := L + writeString('1707', 4);
         L := L + writeString('', 4); //IDENTIFICA��O
         L := L + writeString('', 16);  //BRANCOS
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString(qrEmpresaRAZAO.AsString, 30);  //NOME DA EMPRESA
         L := L + writeString('', 30);   //FINALIDADE DEVE ESTAR EM BRANCO
         L := L + writeString('', 10);   //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30); //RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5); //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);//CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8);    //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10);     //OCORRENCIAS EM BRANCO

         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0; //adiciona um pelo header
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3); //CODIGO
             L := L + writeInt(LoteAtual, 4); //numero do lote
             L := L + writeString('3', 1);   //tipo registro
             L := L + writeInt(Contador, 5);  //contador
             L := L + writeString('A', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('000', 3); //zeros
             L := L + writeInt(qrItauCODIGOBANCO.AsInteger, 3); //CODIGO DO BANCO
             //AGENCIA CONTA
             //SE FOR ITAU OU UNIBANCO
             if (qrItauCODIGOBANCO.AsInteger = 341) OR (qrItauCODIGOBANCO.AsInteger = 409) then begin
                 Aux := '0';
                 Aux := Aux + writeInt(qrItauBAN_AGEN.AsInteger, 4) + ' ';
                 Aux := Aux + writeInt(0, 6);
                 Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 6) + ' ';
                 Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 1);
             end else begin
                 Aux := '';
                 //Aux := Aux + writeInt(qrItauBAN_AGEN.AsInteger, 5) + ' ';
                 Aux := Aux + writeInt(StrToInt(RemoveDigitoAgencia(qrItauBAN_AGEN.AsString)) , 5) + ' ';
                 Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 12);
                 if Length(Trim(qrItauBAN_DIGITOCC.AsString)) = 1 then
                        Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 1)
                 else
                        Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 2);
             end;
             L:= L + writeString(Aux, 20); //completa os 20 caracteres
             L := L + writeString(qrItauFOR_RAZA.AsString, 30);//nome do favorecido
             L := L + writeString(qrItauCodigoPagamento.AsString, 20);  //titulo
             L := L + writeString( FormatDateTime('ddMMyyyy', qrItauVencimento.AsDateTime), 8); //data prev de pagamento
             L := L + writeString('009', 3);  //tipo de moeda
             L := L + writeString('', 8); //identifica��o da institui��o para o SPB
             L := L + writeInt(0, 7);
             Aux :=  FormatFloat('##0.00', qrItauValorLiquido.AsFloat) ;//valor do pagamento
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 15);

             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L := L + writeString('', 15); //numero de rotorno em branco
             L := L + writeString('', 5);  //brancos
             L := L + writeString('00000000', 8);  //data de efetiva��o real

             L := L + writeInt(0, 15); //valor real
             L := L + writeString('', 18); //fialidade
             L := L + writeString('', 2); //brancos
             L := L + writeString('000000', 6); //numero doc retorno
             L := L + writeStringZero(qrItauFOR_CGC.AsString, 14); //cnpj
             L := L + writeString('', 2); //finalidae
             L := L + writeString('00005', 5);  //finalidade da ted nota 26
             L := L + writeString('', 5); //brancos
             L := L + writeString('0', 1); //aviso ao favorecido
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             l:= '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;
             //escreve o trailer do lote
             //Inc(Contador);
             Inc(TotalLotesCNAB);//adiciona o trailer no total de registros L:= '';
             L := L + writeString('341', 3);  //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1);    //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador + 2, 6); //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;//valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeString('', 171); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
     end;


//traz os pagamentos do tipo TED =
     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT  CP.Numero as CodigoPagamento, CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''T''  ' +
            '  AND B.NUMERO NOT IN (341, 409)  AND ISNULL(CP.BARRAS, '''') = '''' '
     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;



     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin

         Inc(LoteAtual);// := ADOStoredProc1LoteCNAB.AsInteger;

         Inc(TotalLotesCNAB);


         L := L + writeString('341', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1);
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO
         L := L + writeString('41', 2); //FORMA DE PAGAMENTO
         L := L + writeString('040', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1); //BRANCO
         L := L + writeString('2', 1); //TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);  //CNPJ
         // L := L + writeString('1707', 4);
         L := L + writeString('', 4); //IDENTIFICA��O
         L := L + writeString('', 16);  //BRANCOS
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString(qrEmpresaRAZAO.AsString, 30);  //NOME DA EMPRESA
         L := L + writeString('', 30);   //FINALIDADE DEVE ESTAR EM BRANCO
         L := L + writeString('', 10);   //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30); //RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5); //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);//CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8);    //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10);     //OCORRENCIAS EM BRANCO

         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0; //adiciona um pelo header
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3); //CODIGO
             L := L + writeInt(LoteAtual, 4); //numero do lote
             L := L + writeString('3', 1);   //tipo registro
             L := L + writeInt(Contador, 5);  //contador
             L := L + writeString('A', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('000', 3); //zeros
             L := L + writeInt(qrItauCODIGOBANCO.AsInteger, 3); //CODIGO DO BANCO
             //AGENCIA CONTA
             //SE FOR ITAU OU UNIBANCO
             if (qrItauCODIGOBANCO.AsInteger = 341) OR (qrItauCODIGOBANCO.AsInteger = 409) then begin
                 Aux := '0';
                 Aux := Aux + writeInt(qrItauBAN_AGEN.AsInteger, 4) + ' ';
                 Aux := Aux + writeInt(0, 6);
                 Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 6) + ' ';
                 Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 1);
             end else begin
                 Aux := '';
                 //Aux := Aux + writeInt(qrItauBAN_AGEN.AsInteger, 5) + ' ';
                 Aux := Aux + writeInt(StrToInt(RemoveDigitoAgencia(qrItauBAN_AGEN.AsString)) , 5) + ' ';
                 Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 12);
                 if Length(Trim(qrItauBAN_DIGITOCC.AsString)) = 1 then
                        Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 1)
                 else
                        Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 2);
             end;
             L:= L + writeString(Aux, 20); //completa os 20 caracteres
             L := L + writeString(qrItauFOR_RAZA.AsString, 30);//nome do favorecido
             L := L + writeString(qrItauCodigoPagamento.AsString, 20);  //titulo
             L := L + writeString( FormatDateTime('ddMMyyyy', qrItauVencimento.AsDateTime), 8); //data prev de pagamento
             L := L + writeString('009', 3);  //tipo de moeda
             L := L + writeString('', 8); //identifica��o da institui��o para o SPB
             L := L + writeInt(0, 7);
             Aux :=  FormatFloat('##0.00', qrItauValorLiquido.AsFloat) ;//valor do pagamento
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 15);

             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L := L + writeString('', 15); //numero de rotorno em branco
             L := L + writeString('', 5);  //brancos
             L := L + writeString('00000000', 8);  //data de efetiva��o real

             L := L + writeInt(0, 15); //valor real
             L := L + writeString('', 18); //fialidade
             L := L + writeString('', 2); //brancos
             L := L + writeString('000000', 6); //numero doc retorno
             L := L + writeStringZero(qrItauFOR_CGC.AsString, 14); //cnpj
             L := L + writeString('', 2); //finalidae
             L := L + writeString('00005', 5);  //finalidade da ted nota 26
             L := L + writeString('', 5); //brancos
             L := L + writeString('0', 1); //aviso ao favorecido
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             l:= '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;
             //escreve o trailer do lote
             //Inc(Contador);
             Inc(TotalLotesCNAB);//adiciona o trailer no total de registros L:= '';
             L := L + writeString('341', 3);  //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1);    //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador + 2, 6); //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;//valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeString('', 171); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
     end;


     //****************************************************************************
     //Boletos bancarios do itau
     //****************************************************************************





     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT  CP.Numero as CodigoPagamento, CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''B''  '  +
            '  AND SUBSTRING(CP.BARRAS, 1, 3) IN (''341'', ''409'') '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;

     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin


         Inc(LoteAtual);// := ADOStoredProc1LoteCNAB.AsInteger;

         Inc(TotalLotesCNAB);

         L := L + writeString('341', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1); //TIPO DE OPERA��O
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO
         L := L + writeString('30', 2); //FORMA DE PAGAMENTO
         L := L + writeString('030', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1);//BRANCO
         L := L + writeString('2', 1);//TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);//CNPJ
         L := L + writeString('', 20); //BRANCOS
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString(qrEmpresaRAZAO.AsString, 30); //NOME DA EMPRESA
         L := L + writeString('', 30); //FINALIDADE DEVE ESTAR EM BRANCO
         L := L + writeString('', 10);    //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30);//RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5);  //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);   //CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8); //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10); //OCORRENCIAS EM BRANCO
         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0;
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3);//CODIGO
             L := L + writeInt(LoteAtual, 4);//numero do lote
             L := L + writeString('3', 1);  //tipo registro
             L := L + writeInt(Contador, 5); //contador
             L := L + writeString('J', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento

             //come�a a ler o codigo de barras
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 1, 3), 3); //Codigo do banco
             L:= L + writeString('9', 1); //codigo da moeda
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 33, 1), 1);  //digito verificador
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 34, 4), 4); //fator de vencimento
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 38, 10), 10);  //valor
             //campo livre
             Aux:= Copy(qrItauBARRAS.AsString, 5, 5);
             Aux := aux + Copy(qrItauBARRAS.AsString, 11, 10);
             Aux := aux + Copy(qrItauBARRAS.AsString, 22, 10);
             L:= L + writeString(Aux, 25);
             L:= L + writeString(qrItauRazao.AsString, 30);//nome
             L:= L + writeString(FormatDateTime('DDMMYYYY', qrItauVencimento.AsDateTime), 8); //data do vencimento
             L:= L + writeInt(StrToInt(FormatFloat('000', qrItauValorLiquido.AsFloat * 100)), 15);//valor do titulo
             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L:= L + writeInt(0, 15);//valor do desconto
             L:= L + writeint(0, 15); //valor multa
             L:= L + writeString(FormatDateTime('DDMMYYYY', qrItauVencimento.AsDateTime), 8); //data do pagamento
             L:= L + writeInt(StrToInt(FormatFloat('000', qrItauValorLiquido.AsFloat * 100)), 15); //valor do pagamento
             L:= L + writeint(0, 15); //zeros
             L:= L + writeString(qrItauCodigoPagamento.AsString, 20); //numero de documento
             L:= L + writeString('', 13); //brancos
             L:= L + writeString('', 15); //brancos
             L:= L + writeString('', 10);  //ocorrencias
             f.Add(L);
             L := '';

             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3);//CODIGO
             L := L + writeInt(LoteAtual, 4);//numero do lote
             L := L + writeString('3', 1);  //tipo registro
             L := L + writeInt(Contador, 5); //contador
             L := L + writeString('J', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('52', 2); //C�DIGO DO REGISTRO
             L := L + '2'; //tipo inscri��o
             L := L + writeStringZero(qrEmpresaCNPJ.AsString, 15);
             L := L + writeString(qrEmpresaRAZAO.AsString, 40);
             L := L + '2';
             L := L + writeStringZero(qrItauFOR_CGC.AsString, 15);
             L := L + writeString(qrItauFOR_RAZA.AsString, 40);
             L := L + '2';
             L := L + writeInt(0, 15);
             L := L + writeString('', 40);
             L := L + writeString('', 53);
             f.Add(L);
             L := '';
             
             TOTAL_FINAL := TOTAL_FINAL + 1;





             qrItau.Next;
         end;

         //escreve o trailer do lote
             L:= '';
             L := L + writeString('341', 3); //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1); //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador+ 2, 6);  //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;  //valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeString('', 171); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             TOTAL_FINAL := TOTAL_FINAL + 1;
             L := '';
     end;













      
     //****************************************************************************
     //Boletos bancarios de bancos que n�o o itau
     //****************************************************************************





     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT  CP.Numero as CodigoPagamento, CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''B''  '  +
            '  AND SUBSTRING(CP.BARRAS, 1, 3) not IN (''341'', ''409'') '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;

     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin

         Inc(LoteAtual);// := ADOStoredProc1LoteCNAB.AsInteger;

         Inc(TotalLotesCNAB);

         L := L + writeString('341', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1); //TIPO DE OPERA��O
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO
         L := L + writeString('31', 2); //FORMA DE PAGAMENTO
         L := L + writeString('030', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1);//BRANCO
         L := L + writeString('2', 1);//TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);//CNPJ
         L := L + writeString('', 20); //BRANCOS
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString(qrEmpresaRAZAO.AsString, 30); //NOME DA EMPRESA
         L := L + writeString('', 30); //FINALIDADE DEVE ESTAR EM BRANCO
         L := L + writeString('', 10);    //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30);//RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5);  //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);   //CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8); //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10); //OCORRENCIAS EM BRANCO
         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0;
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3);//CODIGO
             L := L + writeInt(LoteAtual, 4);//numero do lote
             L := L + writeString('3', 1);  //tipo registro
             L := L + writeInt(Contador, 5); //contador
             L := L + writeString('J', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento

             //come�a a ler o codigo de barras
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 1, 3), 3); //Codigo do banco
             L:= L + writeString('9', 1); //codigo da moeda
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 33, 1), 1);  //digito verificador
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 34, 4), 4); //fator de vencimento
             L:= L + writeString(Copy(qrItauBARRAS.AsString, 38, 10), 10);  //valor
             //campo livre
             Aux:= Copy(qrItauBARRAS.AsString, 5, 5);
             Aux := aux + Copy(qrItauBARRAS.AsString, 11, 10);
             Aux := aux + Copy(qrItauBARRAS.AsString, 22, 10);
             L:= L + writeString(Aux, 25);
             L:= L + writeString(qrItauRazao.AsString, 30);//nome
             L:= L + writeString(FormatDateTime('DDMMYYYY', qrItauVencimento.AsDateTime), 8); //data do vencimento
             L:= L + writeInt(StrToInt(FormatFloat('000', qrItauValorLiquido.AsFloat * 100)), 15);//valor do titulo
             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L:= L + writeInt(0, 15);//valor do desconto
             L:= L + writeint(0, 15); //valor multa
             L:= L + writeString(FormatDateTime('DDMMYYYY', qrItauVencimento.AsDateTime), 8); //data do pagamento
             L:= L + writeInt(StrToInt(FormatFloat('000', qrItauValorLiquido.AsFloat * 100)), 15); //valor do pagamento
             L:= L + writeint(0, 15); //zeros
             L:= L + writeString(qrItauCodigoPagamento.AsString, 20); //numero de documento
             L:= L + writeString('', 13); //brancos
             L:= L + writeString('', 15); //brancos
             L:= L + writeString('', 10);  //ocorrencias
             f.Add(L);
             L := '';


             
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('341', 3);//CODIGO
             L := L + writeInt(LoteAtual, 4);//numero do lote
             L := L + writeString('3', 1);  //tipo registro
             L := L + writeInt(Contador, 5); //contador
             L := L + writeString('J', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('52', 2); //C�DIGO DO REGISTRO
             L := L + '2'; //tipo inscri��o
             L := L + writeStringZero(qrEmpresaCNPJ.AsString, 15);
             L := L + writeString(qrEmpresaRAZAO.AsString, 40);
             L := L + '2';
             L := L + writeStringZero(qrItauFOR_CGC.AsString, 15);
             L := L + writeString(qrItauFOR_RAZA.AsString, 40);
             L := L + '2';
             L := L + writeInt(0, 15);
             L := L + writeString('', 40);
             L := L + writeString('', 53);
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;

         //escreve o trailer do lote
             L:= '';
             L := L + writeString('341', 3); //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1); //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador+ 2, 6);  //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;  //valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeString('', 171); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             TOTAL_FINAL := TOTAL_FINAL + 1;
             L := '';
     end;
















     //escreve o trailer do arquivo
     L:= '';

     //add o trailer dos registros
     Inc(TotalLotesCNAB);
     Inc(LoteAtual);
     //codigo

     TOTAL_FINAL := TOTAL_FINAL + 1;
     L := L + writeString('341', 3); //codigo banco
     L := L + writestring('9999', 4);
     L := L + writeString('9', 1);
     L := L + writeString('', 9);
     L := L + writeInt(LoteAtual, 6);//qtde lotes
     L := L + writeInt(TOTAL_FINAL, 6);//qtde registros
     L := L + writeString('', 211);
     f.Add(L);
     L:= '';


     f.SaveToFile(SaveDialog1.FileName);

     ShowMessage('Gera��o efetuada com sucesso');
end;









function TFGeraPagFor.writeString(Value: string; iSize: Integer): string;
var
   Aux : string;
   i   : Integer;
begin
      Aux := Trim(Value);
      Aux := StringReplace(Aux, '-', '', [rfReplaceAll]);
      Aux := Copy(Aux, 1, iSize);
      for i := Length(Aux) to pred(iSize) do begin
          Aux := Aux + ' ';
      end;
      Result := Aux;
end;


function TFGeraPagFor.writeStringZero(Value: string; iSize: Integer): string;
var
   Aux : string;
   i   : Integer;
begin
      Aux := Trim(Value);
      Aux := StringReplace(Aux, '-', '', [rfReplaceAll]);
      Aux := Copy(Aux, 1, iSize);
      for i := Length(Aux) to pred(iSize) do begin
          Aux := '0' + Aux;
      end;
      Result := Aux;
end;


function TFGeraPagFor.writeInt(Value, iSize: Integer): string;
var
   Aux : string;
   i   : Integer;
begin
      Aux := IntToStr(Value);
      for i := Length(Aux) to pred(iSize) do begin
          Aux := '0' + Aux;
      end;
      Result := Aux;
end;

function TFGeraPagFor.writeFloat(Value: Double; iSize, Decimal: Integer;
  Virgula: Boolean): string;
var
        i : Integer;
        FormatMaks : string;
        Aux : string;
begin
   for i := 1 to  Decimal do begin
       FormatMaks := FormatMaks + '0';
   end;

  FormatMaks := '##0.' + FormatMaks;
  Aux := FormatFloat(FormatMaks, Value);
  Aux := StringReplace(Aux, ',','.',[rfReplaceAll]);
  if Virgula = False then  begin
        Aux := StringReplace(Aux, '.','',[rfReplaceAll]);
  end;

  for i := Length(Aux) to pred(iSize) do begin
          Aux := '0' + Aux;
  end;

  Result := Aux;
end;


function  TFGeraPagFor.CalculaDigito(Txt :String) : String;
var Mult, NAtual: Integer;
    Total, Resto, Pos : Integer;
    Sair  : Boolean;
    TextoCompleto,
    Texto, TextoMontado, TextoFinal : String;
    TamCampo:Integer;
Const    TamText :Integer = 29;
Begin
        Sair := False;
        Mult := 1;
        // O primeiro campo tem 9 posi��es, os outros dois t�m 10
        TamCampo := 9;

        Total :=  0;
        TextoCompleto := Copy(Txt,1,TamText);
        //S� seleciona at� o campo 3, a partir do d�gito geral n�o faz calculo de d�gito de controle
        TextoFinal := Copy(Txt,TamText+1,Length(Txt)-TamText);

        Texto := Copy(TextoCompleto,1,TamCampo);
        TextoMontado := Texto;
        TextoCompleto := Copy(TextoCompleto,TamCampo+1,Length(TextoCompleto)-(TamCampo));

        While Length (Texto) > 0 Do
        Begin
            Pos := 1;

            While Pos < Length(Texto) + 1 Do
            Begin
                    If Mult = 1 then
                            Mult := 2
                    Else
                            Mult := 1;

                    NAtual := StrToInt(Copy(Texto,Pos,1));

                    Total := Total + ((NAtual * Mult)Div(10));
                    Total := Total + ((NAtual * Mult)Mod(10));

                    Inc (Pos);
            End;

            Resto := Total Mod 10;
            Total := 0;
            TextoMontado := TextoMontado + InttoStr(10 - Resto);

            TamCampo := 10;
            Texto := Copy(TextoCompleto,1,TamCampo);
            TextoMontado := TextoMontado + Texto;
            TextoCompleto := Copy(TextoCompleto,TamCampo + 1,Length(TextoCompleto)-(TamCampo))
        End;

        CalculaDigito := TextoMontado + TextoFinal;

End;

procedure TFGeraPagFor.SISPAG_UNIBANCO;
var Linha : string;
    nTipoA, nTipoB, nTipo1, nTipo3, nTipo5, LoteConta : Integer;
    valorDep, valorBoleto : Double;
    Registros_lote : Integer;
    valorLote : Double;
    Transferencias, Docs, Teds, Boletos : Integer;
    TedVTotal, TransfVTotal, DocVTotal, BoletoVTotal : Double;
    Numero_Registros: Integer;
    Numero_lotes : Integer;
begin


    //Header
    IF not Assigned(FILEX) then
        Filex := TStringList.Create;

    Numero_lotes := 0;
    Numero_Registros := 0;
    nTipo1 := 0;
    nTipo3 := 0;
    nTipo5 := 0;
    LoteConta := 0;
    Registros_lote := 0;

    qrEmpresa.close;
    qrEmpresa.Params[0].AsString := FChBor.DBLC_REC_RAZA.LookupValue;
    qrEmpresa.Open;

    Linha := '';
    Linha := Linha + '409';//banco
    Linha := Linha + '0000';//lote
    Linha := Linha + '0';//tipo
    Numero_Registros := Numero_Registros + 1;
    Linha := Linha + Funcoes.writeString('', 9);//cnab em branco
    Linha := Linha + '2';//tipo = cnpj
    Linha := Linha + Funcoes.writeString(qrEmpresaCNPJ.AsString,14); //inscri��o
    Linha := Linha + Funcoes.writeString(qrEmpresacodigo_pe.AsString,20);//codigo de autoriza��o
    Linha := Linha + Funcoes.writeInt(qrEmpresaAgencia_PE.AsInteger, 5);//agencia do pagador
    if qrEmpresadgAgencia_PE.AsString <> '' then
       Linha := Linha + Funcoes.writeString(qrEmpresadgAgencia_PE.AsString, 1)//digito agencia do pagador
    else
       Linha := Linha + '0';
    Linha := Linha + Funcoes.writeInt(qrEmpresaConta_PE.AsInteger, 12);   //conta corrente
    Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 1, 1), 1);   //primeiro numero do digito da conta
    Linha := Linha + Funcoes.writeString( Copy(qrEmpresadgConta_PE.AsString, 2, 1), 1);   //segundo numero do digito da conta
    Linha := Linha + Funcoes.writeString(qrEmpresaRAZAO.Value, 30); //nome empresa
    Linha := Linha + Funcoes.writeString('Unibanco', 30); //nome banco
    Linha := Linha + Funcoes.writeString('', 10); //cnab uso do banco
    Linha := Linha + '1';//codigo de remesa
    Linha := Linha + FormatDateTime('ddMMyyyy', Date);
    Linha := Linha + FormatDateTime('HHmmss', Now);
    Linha := Linha + Funcoes.writeInt(1, 6); //criar auto numera��o
    Linha := Linha + '060';//versao do layout
    Linha := Linha + '00000';//densidade
    Linha := Linha + Funcoes.writeString('', 20);
    Linha := Linha + Funcoes.writeString('', 20);
    Linha := Linha + Funcoes.writeString('', 29);
    Filex.Add(Linha);
    Linha := '';
    {****************************************************************************************************}














    {***** TED*******}
    //chamada dos itens que sao transferencia de conta para conta
    //Primeira chama as transferencias do proprio unibanco
    with qrUnibanco do begin
        close;
        sql.Clear;
        sql.Add(
             '   SELECT   '+
             '         A.Nome    '+
             '         ,A.Valor    '+
             '         ,A.NumeroBC  '+
             '         ,A.AgenBC    '+
             '         ,A.ContaBC   '+
             '         ,D.BAN_AGEN  '+
             '         ,D.BAN_CONTA '+
             '         ,D.BAN_DIGITOCC  '+
             '         ,B.Documento '+
             '         ,C.FOR_INSC  '+
             '         ,C.FOR_CGC   '+
             '         ,C.FOR_ENDE  '+
             '         ,C.FOR_MUNI  '+
             '         ,C.FOR_CEP   '+
             '         ,C.FOR_ESTA   '+
             '         ,C.FOR_PESS  '+
             '         ,B.BARRAS  '+
             '   FROM CPACHEQ A LEFT OUTER JOIN CPAPAGA B  '+
             '   ON B.Numero = A.NumeroCP LEFT OUTER JOIN CPAFORN C '+
             '   ON B.Fornecedor = C.FOR_CODI LEFT OUTER JOIN FORNECEDOR_BANCO D  '+
             '   ON C.FOR_CODI = D.FOR_CODI LEFT OUTER JOIN BANCOS E '+
             '   ON D.BAN_ID = E.BAN_ID '+
             '   WHERE A.DATAEMISSAO IS NULL  '+
             '   and A.Marcador = ''*'' AND VALOR >= 5000  '+
             '   and A.nUMERObc <> ''409'' and A.Tipo = ''S'' '+
             '   and ( '+
             '   Case  '+
             '           when B.BARRAS IS null then '''' '+
             '           else B.BARRAS END '+
             '   ) = '''' '
        );
        Open ;
    end;



    valorDep := 0;
    valorBoleto := 0;
    TedVTotal := 0;

    if qrUnibanco.IsEmpty = False then begin
              //Registro header do lote - Transferencia p conta
              Linha := '';
              Linha := Linha + '409';//banco
              inc(LoteConta);
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '1';//tipo
              Numero_lotes := Numero_lotes + 1;
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo1);

              Linha := Linha + 'C';//tipo de opera��o
              Linha := Linha + '98';//tipo de servi�o - pagamentos diversos
              Linha := Linha + '41';//forma de lan�amento, verificar com Rubens
              Linha := Linha + '031';//versao do layout
              Linha := Linha + Funcoes.writeString('', 1);//cnab em branco
              Linha := Linha + '2';//tipo = cnpj
              Linha := Linha + Funcoes.writeStringZero(qrEmpresaCNPJ.AsString,14); //inscri��o
              Linha := Linha + Funcoes.writeString(qrEmpresacodigo_pe.AsString,20);//codigo de autoriza��o
              Linha := Linha + Funcoes.writeInt(qrEmpresaAgencia_PE.AsInteger, 5);//agencia do pagador
              if qrEmpresadgAgencia_PE.AsString <> '' then
                  Linha := Linha + Funcoes.writeString(qrEmpresadgAgencia_PE.AsString, 1)//digito agencia do pagador
              else
                  Linha := Linha + '0';
              Linha := Linha + Funcoes.writeInt(qrEmpresaConta_PE.AsInteger, 12);   //conta corrente
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 1, 1), 1);   //primeiro numero do digito da conta
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 2, 1), 1);   //segundo numero do digito da conta
              Linha := Linha + Funcoes.writeString(qrEmpresaRAZAO.Value, 30); //nome empresa
              Linha := Linha + Funcoes.writeString('', 40); //mensagem
              Linha := Linha + Funcoes.writeString(qrEmpresaENDERECO.Value , 30);//endereco
              Linha := Linha + Funcoes.writeInt(0, 5);//numero
              Linha := Linha + Funcoes.writeString('' , 15);//endereco
              Linha := Linha + Funcoes.writeString('SAO PAULO' , 20);//endereco
              Linha := Linha + Funcoes.writeString( StringReplace(qrEmpresaCEP.Value, '-', '', [rfReplaceAll]) , 8);//endereco
              Linha := Linha + 'SP';
              Linha := Linha + Funcoes.writeString('', 18);//cnab e brancos
              Filex.Add(Linha);

              qrUnibanco.Last;
              nTipoA := 0;
              Teds := 0 ;
              qrUnibanco.First;
              while not qrUnibanco.Eof do begin
                        Inc(nTipoA);
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(Teds);
                        Linha := Linha + Funcoes.writeInt(Teds, 5);
                        Linha := Linha + 'A';
                        Linha := Linha + '0';//inclusao
                        Linha := Linha + '09';//bloqueado
                        if qrUnibancoValor.AsFloat >= 5000 then
                              Linha := Linha + '018'//ted
                        else
                              Linha := Linha + '700';//doc
                        Linha := Linha + Funcoes.writeString(qrUnibancoNumeroBC.AsString, 3);//numero do banco
                        Linha := Linha + Funcoes.writeInt(qrUnibancoBAN_AGEN.AsInteger, 5);
                        Linha := Linha + Funcoes.writeString('0', 1);
                        Linha := Linha + Funcoes.writeInt(qrUnibancoBAN_CONTA.AsInteger, 12);
                        Linha := Linha + Funcoes.writeString(copy(qrUnibancoBAN_DIGITOCC.AsString, 1, 1), 1);
                        Linha := Linha + Funcoes.writeString(copy(qrUnibancoBAN_DIGITOCC.AsString, 2, 1), 1);
                        Linha := Linha + Funcoes.writeString(qrUnibancoNome.AsString,30);
                        Linha := Linha + Funcoes.writeString(qrUnibancoDocumento.AsString,20);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + 'BRL';//TIPO DE MOEDA = REAL
                        Linha := Linha + Funcoes.writeFloat(0,15,5,TRUE);//QTDE DA MOEDA???
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        TedVTotal := TedVTotal +   qrUnibancoValor.AsFloat;

                        //add valor total
                        valorDep := valorDep + StrToFloat(FormatFloat('##0.00',qrUnibancoValor.AsFloat));


                        Linha := Linha + Funcoes.writeString('',20);//numero do banco
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);//data real para efetiva��o
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeString('',40);
                        Linha := Linha + '01';//credito em conta
                        Linha := Linha + Funcoes.writeString('',10);
                        Linha := Linha + '0';
                        Linha := Linha + Funcoes.writeString('',10);//codigos das ocorrencias
                        filex.Add(Linha);

                        //registro do detalhe segmento B
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(nTipo3);
                        inc(Teds);
                        Linha := Linha + Funcoes.writeInt(Teds, 5);
                        Linha := Linha + 'B';
                        Linha := Linha + Funcoes.writeString('',3);
                        IF qrUnibancoFOR_PESS.Value = 'F' then
                                linha := Linha + '1'//CPF
                        else
                                Linha := Linha + '2';
                        Linha := Linha + Funcoes.writeStringZero(qrUnibancoFOR_CGC.AsString,14);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_ENDE.Value,30);
                        Linha := Linha + Funcoes.writeInt(0,5);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_MUNI.Value,20);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_CEP.Value,8);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_ESTA.Value,2);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString('',15);
                        filex.Add(Linha);

                        Application.ProcessMessages;
                        qrUnibanco.Next;
              end;


              //trailer do lote de depositos
              Linha := '';
              Linha := Linha + '409';//banco
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '5';//tipo
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo5);
              Linha := Linha + Funcoes.writeString('',9);//uso febraban
              Linha := Linha + Funcoes.writeInt(Teds + 2,6);//n registros + 2 do header e footer
              Linha := Linha + Funcoes.writeFloat(TedVTotal,18,2,TRUE);
              Linha := Linha + Funcoes.writeFloat(0,18,5,TRUE);
              Linha := Linha + Funcoes.writeInt(0,6);//aviso
              Linha := Linha + Funcoes.writeString('',165);
              Linha := Linha + Funcoes.writeString('',10);
              filex.Add(Linha);


    end;//end if empty


























    {***** DOC *******}
    //chamada dos itens que sao transferencia de conta para conta
    //Primeira chama as transferencias do proprio unibanco
    with qrUnibanco do begin
        close;
        sql.Clear;
        sql.Add(
             '   SELECT   '+
             '         A.Nome    '+
             '         ,A.Valor    '+
             '         ,A.NumeroBC  '+
             '         ,A.AgenBC    '+
             '         ,A.ContaBC   '+
             '         ,D.BAN_AGEN  '+
             '         ,D.BAN_CONTA '+
             '         ,D.BAN_DIGITOCC  '+
             '         ,B.Documento '+
             '         ,C.FOR_INSC  '+
             '         ,C.FOR_CGC   '+
             '         ,C.FOR_ENDE  '+
             '         ,C.FOR_MUNI  '+
             '         ,C.FOR_CEP   '+
             '         ,C.FOR_ESTA   '+
             '         ,C.FOR_PESS  '+
             '         ,B.BARRAS  '+
             '   FROM CPACHEQ A LEFT OUTER JOIN CPAPAGA B  '+
             '   ON B.Numero = A.NumeroCP LEFT OUTER JOIN CPAFORN C '+
             '   ON B.Fornecedor = C.FOR_CODI LEFT OUTER JOIN FORNECEDOR_BANCO D  '+
             '   ON C.FOR_CODI = D.FOR_CODI LEFT OUTER JOIN BANCOS E '+
             '   ON D.BAN_ID = E.BAN_ID '+
             '   WHERE A.DATAEMISSAO IS NULL  '+
             '   and A.Marcador = ''*''  AND A.VALOR < 5000 '+
             '   and A.nUMERObc <> ''409'' and A.Tipo = ''S'' '+
             '   and ( '+
             '   Case  '+
             '           when B.BARRAS IS null then '''' '+
             '           else B.BARRAS END '+
             '   ) = '''' '
        );
        Open ;
    end;



    valorDep := 0;
    valorBoleto := 0;
    Docs := 0;
    DocVTotal := 0;
    if qrUnibanco.IsEmpty = False then begin
              //Registro header do lote - Transferencia p conta
              Linha := '';
              Linha := Linha + '409';//banco
              inc(LoteConta) ;
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '1';//tipo
              Numero_lotes := Numero_lotes + 1;
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo1);

              Linha := Linha + 'C';//tipo de opera��o
              Linha := Linha + '98';//tipo de servi�o - pagamentos diversos
              Linha := Linha + '03';//forma de lan�amento, verificar com Rubens
              Linha := Linha + '031';//versao do layout
              Linha := Linha + Funcoes.writeString('', 1);//cnab em branco
              Linha := Linha + '2';//tipo = cnpj
              Linha := Linha + Funcoes.writeString(qrEmpresaCNPJ.Value,14); //inscri��o
              Linha := Linha + Funcoes.writeString(qrEmpresacodigo_pe.AsString,20);//codigo de autoriza��o
              Linha := Linha + Funcoes.writeInt(qrEmpresaAgencia_PE.AsInteger, 5);//agencia do pagador
              Linha := Linha + Funcoes.writeString(qrEmpresadgAgencia_PE.AsString, 1);//digito agencia do pagador
              Linha := Linha + Funcoes.writeInt(qrEmpresaConta_PE.AsInteger, 12);   //conta corrente
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 1, 1), 1);   //primeiro numero do digito da conta
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 2, 1), 1);   //segundo numero do digito da conta
              Linha := Linha + Funcoes.writeString(qrEmpresaRAZAO.Value, 30); //nome empresa
              Linha := Linha + Funcoes.writeString('', 40); //mensagem
              Linha := Linha + Funcoes.writeString(qrEmpresaENDERECO.Value , 30);//endereco
              Linha := Linha + Funcoes.writeInt(0, 5);//numero
              Linha := Linha + Funcoes.writeString('' , 15);//endereco
              Linha := Linha + Funcoes.writeString('SAO PAULO' , 20);//endereco
              Linha := Linha + Funcoes.writeString( StringReplace(qrEmpresaCEP.Value, '-', '', [rfReplaceAll]) , 8);//endereco
              Linha := Linha + 'SP';
              Linha := Linha + Funcoes.writeString('', 18);//cnab e brancos
              Filex.Add(Linha);

              qrUnibanco.Last;
              nTipoA := 0;
              qrUnibanco.First;
              while not qrUnibanco.Eof do begin
                        Inc(nTipoA);
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(nTipo3);
                        Inc(Docs);
                        Linha := Linha + Funcoes.writeInt(Docs, 5);
                        Linha := Linha + 'A';
                        Linha := Linha + '0';//inclusao
                        Linha := Linha + '09';//bloqueado
                        if qrUnibancoValor.AsFloat >= 5000 then
                              Linha := Linha + '018'//ted
                        else
                              Linha := Linha + '700';//doc
                        Linha := Linha + Funcoes.writeString(qrUnibancoNumeroBC.AsString, 3);//numero do banco
                        Linha := Linha + Funcoes.writeInt(qrUnibancoBAN_AGEN.AsInteger, 5);
                        Linha := Linha + Funcoes.writeString('', 1);
                        Linha := Linha + Funcoes.writeInt(qrUnibancoBAN_CONTA.AsInteger, 12);
                        Linha := Linha + Funcoes.writeString(copy(qrUnibancoBAN_DIGITOCC.AsString, 1, 1), 1);
                        Linha := Linha + Funcoes.writeString(copy(qrUnibancoBAN_DIGITOCC.AsString, 2, 1), 1);
                        Linha := Linha + Funcoes.writeString(qrUnibancoNome.AsString,30);
                        Linha := Linha + Funcoes.writeString(qrUnibancoDocumento.AsString,20);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + 'BRL';//TIPO DE MOEDA = REAL
                        Linha := Linha + Funcoes.writeFloat(0,15,5,TRUE);//QTDE DA MOEDA???
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        DocVTotal := DocVTotal + qrUnibancoValor.AsFloat;

                        //add valor total
                        valorDep := valorDep + StrToFloat(FormatFloat('##0.00',qrUnibancoValor.AsFloat));


                        Linha := Linha + Funcoes.writeString('',20);//numero do banco
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);//data real para efetiva��o
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeString('',40);
                        Linha := Linha + '01';//credito em conta
                        Linha := Linha + Funcoes.writeString('',10);
                        Linha := Linha + '0';
                        Linha := Linha + Funcoes.writeString('',10);//codigos das ocorrencias
                        filex.Add(Linha);

                        //registro do detalhe segmento B
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(nTipo3);
                        inc(docs);
                        Linha := Linha + Funcoes.writeInt(docs, 5);
                        Linha := Linha + 'B';
                        Linha := Linha + Funcoes.writeString('',3);
                        IF qrUnibancoFOR_PESS.Value = 'F' then
                                linha := Linha + '1'//CPF
                        else
                                Linha := Linha + '2';
                        Linha := Linha + Funcoes.writeStringZero(qrUnibancoFOR_CGC.AsString,14);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_ENDE.Value,30);
                        Linha := Linha + Funcoes.writeInt(0,5);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_MUNI.Value,20);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_CEP.Value,8);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_ESTA.Value,2);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString('',15);
                        filex.Add(Linha);

                        Application.ProcessMessages;
                        qrUnibanco.Next;
              end;


              //trailer do lote de depositos
              Linha := '';
              Linha := Linha + '409';//banco
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '5';//tipo
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo5);
              Linha := Linha + Funcoes.writeString('',9);//uso febraban
              Linha := Linha + Funcoes.writeInt(docs + 2,6);//n registros + 2 header e footer
              Linha := Linha + Funcoes.writeFloat(DocVTotal,18,2,TRUE);
              Linha := Linha + Funcoes.writeFloat(0,18,5,TRUE);
              Linha := Linha + Funcoes.writeInt(0,6);//aviso
              Linha := Linha + Funcoes.writeString('',165);
              Linha := Linha + Funcoes.writeString('',10);
              filex.Add(Linha);


    end;//end if empty













































    {***** TRansferencia dentro do Unibanc*******}
    //chamada dos itens que sao transferencia de conta para conta
    //Primeira chama as transferencias do proprio unibanco
    with qrUnibanco do begin
        close;
        sql.Clear;
        sql.Add(
             '   SELECT   '+
             '         A.Nome    '+
             '         ,A.Valor    '+
             '         ,A.NumeroBC  '+
             '         ,A.AgenBC    '+
             '         ,A.ContaBC   '+
             '         ,D.BAN_AGEN  '+
             '         ,D.BAN_CONTA '+
             '         ,D.BAN_DIGITOCC  '+
             '         ,B.Documento '+
             '         ,C.FOR_INSC  '+
             '         ,C.FOR_CGC   '+
             '         ,C.FOR_ENDE  '+
             '         ,C.FOR_MUNI  '+
             '         ,C.FOR_CEP   '+
             '         ,C.FOR_ESTA   '+
             '         ,C.FOR_PESS  '+
             '         ,B.BARRAS  '+
             '   FROM CPACHEQ A LEFT OUTER JOIN CPAPAGA B  '+
             '   ON B.Numero = A.NumeroCP LEFT OUTER JOIN CPAFORN C '+
             '   ON B.Fornecedor = C.FOR_CODI LEFT OUTER JOIN FORNECEDOR_BANCO D  '+
             '   ON C.FOR_CODI = D.FOR_CODI LEFT OUTER JOIN BANCOS E '+
             '   ON D.BAN_ID = E.BAN_ID '+
             '   WHERE A.DATAEMISSAO IS NULL  '+
             '   and A.Marcador = ''*''   '+
             '   and A.nUMERObc = ''409'' and A.Tipo = ''S'' '+
             '   and ( '+
             '   Case  '+
             '           when B.BARRAS IS null then '''' '+
             '           else B.BARRAS END '+
             '   ) = '''' '
        );
        Open ;
    end;



    valorDep := 0;
    valorBoleto := 0;

    if qrUnibanco.IsEmpty = False then begin
              //Registro header do lote - Transferencia p conta
              Linha := '';
              Linha := Linha + '409';//banco
              inc(LoteConta);
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '1';//tipo
              Numero_lotes := Numero_lotes + 1;
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo1);

              Linha := Linha + 'C';//tipo de opera��o
              Linha := Linha + '98';//tipo de servi�o - pagamentos diversos
              Linha := Linha + '01';//forma de lan�amento, verificar com Rubens
              Linha := Linha + '031';//versao do layout
              Linha := Linha + Funcoes.writeString('', 1);//cnab em branco
              Linha := Linha + '2';//tipo = cnpj
              Linha := Linha + Funcoes.writeString(qrEmpresaCNPJ.Value,14); //inscri��o
              Linha := Linha + Funcoes.writeString(qrEmpresacodigo_pe.AsString,20);//codigo de autoriza��o
              Linha := Linha + Funcoes.writeInt(qrEmpresaAgencia_PE.AsInteger, 5);//agencia do pagador
              Linha := Linha + Funcoes.writeString(qrEmpresadgAgencia_PE.AsString, 1);//digito agencia do pagador
              Linha := Linha + Funcoes.writeInt(qrEmpresaConta_PE.AsInteger, 12);   //conta corrente
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 1, 1), 1);   //primeiro numero do digito da conta
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 2, 1), 1);   //segundo numero do digito da conta
              Linha := Linha + Funcoes.writeString(qrEmpresaRAZAO.Value, 30); //nome empresa
              Linha := Linha + Funcoes.writeString('', 40); //mensagem
              Linha := Linha + Funcoes.writeString(qrEmpresaENDERECO.Value , 30);//endereco
              Linha := Linha + Funcoes.writeInt(0, 5);//numero
              Linha := Linha + Funcoes.writeString('' , 15);//endereco
              Linha := Linha + Funcoes.writeString('SAO PAULO' , 20);//endereco
              Linha := Linha + Funcoes.writeString( StringReplace(qrEmpresaCEP.Value, '-', '', [rfReplaceAll]) , 8);//endereco
              Linha := Linha + 'SP';
              Linha := Linha + Funcoes.writeString('', 18);//cnab e brancos
              Filex.Add(Linha);

              qrUnibanco.Last;
              nTipoA := 0;
              qrUnibanco.First;
              Transferencias := 0;
              TransfVTotal := 0;


              while not qrUnibanco.Eof do begin
                        Inc(nTipoA);
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(nTipo3);
                        Inc(Transferencias);
                        Linha := Linha + Funcoes.writeInt(Transferencias, 5);
                        Linha := Linha + 'A';
                        Linha := Linha + '0';//inclusao
                        Linha := Linha + '09';//bloqueado
                        if qrUnibancoValor.AsFloat >= 5000 then
                              Linha := Linha + '018'//ted
                        else
                              Linha := Linha + '700';//doc
                        Linha := Linha + Funcoes.writeString(qrUnibancoNumeroBC.AsString, 3);//numero do banco
                        Linha := Linha + Funcoes.writeInt(qrUnibancoBAN_AGEN.AsInteger, 5);
                        Linha := Linha + Funcoes.writeString('', 1);
                        Linha := Linha + Funcoes.writeInt(qrUnibancoBAN_CONTA.AsInteger, 12);
                        Linha := Linha + Funcoes.writeString(copy(qrUnibancoBAN_DIGITOCC.AsString, 1, 1), 1);
                        Linha := Linha + Funcoes.writeString(copy(qrUnibancoBAN_DIGITOCC.AsString, 2, 1), 1);
                        Linha := Linha + Funcoes.writeString(qrUnibancoNome.AsString,30);
                        Linha := Linha + Funcoes.writeString(qrUnibancoDocumento.AsString,20);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + 'BRL';//TIPO DE MOEDA = REAL
                        Linha := Linha + Funcoes.writeFloat(0,15,5,TRUE);//QTDE DA MOEDA???
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        TransfVTotal := TransfVTotal +  qrUnibancoValor.AsFloat;

                        //add valor total
                        valorDep := valorDep + StrToFloat(FormatFloat('##0.00',qrUnibancoValor.AsFloat));


                        Linha := Linha + Funcoes.writeString('',20);//numero do banco
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);//data real para efetiva��o
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeString('',40);
                        Linha := Linha + '01';//credito em conta
                        Linha := Linha + Funcoes.writeString('',10);
                        Linha := Linha + '0';
                        Linha := Linha + Funcoes.writeString('',10);//codigos das ocorrencias
                        filex.Add(Linha);

                        //registro do detalhe segmento B
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(nTipo3);
                        inc(Transferencias);
                        Linha := Linha + Funcoes.writeInt(Transferencias, 5);
                        Linha := Linha + 'B';
                        Linha := Linha + Funcoes.writeString('',3);
                        IF qrUnibancoFOR_PESS.Value = 'F' then
                                linha := Linha + '1'//CPF
                        else
                                Linha := Linha + '2';
                        Linha := Linha + Funcoes.writeStringZero(qrUnibancoFOR_CGC.AsString,14);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_ENDE.Value,30);
                        Linha := Linha + Funcoes.writeInt(0,5);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_MUNI.Value,20);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_CEP.Value,8);
                        Linha := Linha + Funcoes.writeString(qrUnibancoFOR_ESTA.Value,2);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeString('',15);
                        Linha := Linha + Funcoes.writeString('',15);
                        filex.Add(Linha);

                        Application.ProcessMessages;
                        qrUnibanco.Next;
              end;


              //trailer do lote de depositos
              Linha := '';
              Linha := Linha + '409';//banco
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '5';//tipo
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo5);
              Linha := Linha + Funcoes.writeString('',9);//uso febraban
              Linha := Linha + Funcoes.writeInt(Transferencias + 2,6);//n registros + 2 header e footer
              Linha := Linha + Funcoes.writeFloat(TransfVTotal,18,2,TRUE);
              Linha := Linha + Funcoes.writeFloat(0,18,5,TRUE);
              Linha := Linha + Funcoes.writeInt(0,6);//aviso
              Linha := Linha + Funcoes.writeString('',165);
              Linha := Linha + Funcoes.writeString('',10);
              filex.Add(Linha);


    end;//end if empty























    //  chama os boletos

    with qrUnibanco do begin
        close;
        sql.Clear ;
        sql.Add(
             '   SELECT   '+
             '         A.Nome    '+
             '         ,A.Valor    '+
             '         ,A.NumeroBC  '+
             '         ,A.AgenBC    '+
             '         ,A.ContaBC   '+
             '         ,D.BAN_AGEN  '+
             '         ,D.BAN_CONTA '+
             '         ,D.BAN_DIGITOCC  '+
             '         ,B.Documento '+
             '         ,C.FOR_INSC  '+
             '         ,C.FOR_CGC   '+
             '         ,C.FOR_ENDE  '+
             '         ,C.FOR_MUNI  '+
             '         ,C.FOR_CEP   '+
             '         ,C.FOR_ESTA   '+
             '         ,C.FOR_PESS  '+
             '         ,B.BARRAS  '+
             '   FROM CPACHEQ A LEFT OUTER JOIN CPAPAGA B  '+
             '   ON B.Numero = A.NumeroCP LEFT OUTER JOIN CPAFORN C '+
             '   ON B.Fornecedor = C.FOR_CODI LEFT OUTER JOIN FORNECEDOR_BANCO D  '+
             '   ON C.FOR_CODI = D.FOR_CODI LEFT OUTER JOIN BANCOS E '+
             '   ON D.BAN_ID = E.BAN_ID '+
             '   WHERE A.DATAEMISSAO IS NULL  '+
             '   and A.Marcador = ''*''   '+
             '   and A.Tipo = ''S'' '+
             '   and ( '+
             '   Case  '+
             '           when B.BARRAS IS null then '''' '+
             '           else B.BARRAS END '+
             '   ) <> '''' '

        );
        Open ;
    end;
    nTipoB := 0;
    if qrUnibanco.IsEmpty = False then begin
              //Registro header do lote - Transferencia p conta
              Linha := '';
              Linha := Linha + '409';//banco
              Inc(LoteConta);
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '1';//tipo
              Numero_lotes := Numero_lotes + 1;
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo1);
              Linha := Linha + 'C';//tipo de opera��o
              Linha := Linha + '98';//tipo de servi�o - pagamentos diversos
              //forma de lan�amento, titulos do unibanco ou outro banco
              if copy(qrUnibancoBARRAS.AsString, 1, 3) = '409' then
                  linha := Linha + '30'
              else
                  linha := Linha + '31';

              Linha := Linha + '030';//versao do layout
              Linha := Linha + Funcoes.writeString('', 1);//cnab em branco
              Linha := Linha + '2';//tipo = cnpj
              Linha := Linha + Funcoes.writeString(qrEmpresaCNPJ.Value,14); //inscri��o
              Linha := Linha + Funcoes.writeString(qrEmpresacodigo_pe.AsString,20);//codigo de autoriza��o
              Linha := Linha + Funcoes.writeInt(qrEmpresaAgencia_PE.AsInteger, 5);//agencia do pagador
              Linha := Linha + Funcoes.writestring(qrEmpresadgAgencia_PE.AsString, 1);//digito agencia do pagador
              Linha := Linha + Funcoes.writeInt(qrEmpresaConta_PE.AsInteger, 12);   //conta corrente
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 1, 1), 1);   //primeiro numero do digito da conta
              Linha := Linha + Funcoes.writeString(Copy(qrEmpresadgConta_PE.AsString, 2, 1), 1);   //segundo numero do digito da conta
              Linha := Linha + Funcoes.writeString(qrEmpresaRAZAO.Value, 30); //nome empresa
              Linha := Linha + Funcoes.writeString('', 40); //mensagem
              Linha := Linha + Funcoes.writeString(qrEmpresaENDERECO.Value , 30);//endereco
              Linha := Linha + Funcoes.writeInt(0, 5);//numero
              Linha := Linha + Funcoes.writeString('' , 15);//endereco
              Linha := Linha + Funcoes.writeString('SAO PAULO' , 20);//endereco
              Linha := Linha + Funcoes.writeString( StringReplace(qrEmpresaCEP.Value, '-', '', [rfReplaceAll]) , 8);//endereco
              Linha := Linha + 'SP';
              Linha := Linha + Funcoes.writeString('', 18);//cnab e brancos
              Filex.Add(Linha);

              qrUnibanco.Last;
              nTipob := 0;
              qrUnibanco.First;
              while not qrUnibanco.Eof do begin
                        Inc(nTipob);
                        Linha := '';
                        Linha := Linha + '409';//banco
                        Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
                        Linha := Linha + '3';//tipo
                        Numero_Registros := Numero_Registros + 1;
                        inc(nTipo3);
                        Linha := Linha + Funcoes.writeInt(nTipob, 5);
                        Linha := Linha + 'J';
                        Linha := Linha + '0';//inclusao
                        Linha := Linha + '09';//bloqueado
                        Linha := Linha + Funcoes.writeString(qrUnibancoBARRAS.Value,44);
                        Linha := Linha + Funcoes.writeString(qrUnibancoNome.AsString,30);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        valorBoleto := valorBoleto + qrUnibancoValor.AsFloat;
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,2,TRUE);
                        Linha := Linha + FormatDateTime('ddMMyyyy', date);
                        Linha := Linha + Funcoes.writeFloat(qrUnibancoValor.AsFloat,15,2,TRUE);
                        Linha := Linha + Funcoes.writeFloat(0,15,5,TRUE);//QTDE DA MOEDA???
                        Linha := Linha + Funcoes.writeString(qrUnibancoDocumento.Value,20);
                        Linha := Linha + Funcoes.writeString('',20);
                        Linha := Linha + '09';//TIPO DE MOEDA = REAL
                        Linha := Linha + Funcoes.writeString('',16);
                        filex.Add(Linha);

                        Application.ProcessMessages;
                        qrUnibanco.Next;
              end;


              //trailer do lote de boletos
              Linha := '';
              Linha := Linha + '409';//banco
              Linha := Linha + Funcoes.writeInt(LoteConta, 4);//lote
              Linha := Linha + '5';//tipo
              Numero_Registros := Numero_Registros + 1;
              inc(nTipo5);
              Linha := Linha + Funcoes.writeString('',9);//uso febraban
              Linha := Linha + Funcoes.writeInt(nTipob + 2,6);//n registros + 2 header e footer
              Linha := Linha + Funcoes.writeFloat(valorBoleto,18,2,TRUE);
              Linha := Linha + Funcoes.writeFloat(0,18,5,TRUE);
              Linha := Linha + Funcoes.writeInt(0,6);//aviso
              Linha := Linha + Funcoes.writeString('',165);
              Linha := Linha + Funcoes.writeString('',10);
              filex.Add(Linha);



    end;//end if empty









//Trailer   do arquivo
    Linha := '';
    Linha := Linha + '409';//banco
    Linha := Linha + '9999';//lote
    Linha := Linha + '9';//tipo
    Numero_Registros := Numero_Registros + 1;
    Linha := Linha + Funcoes.writeString('', 9);//cnab em branco
    Linha := Linha + Funcoes.writeInt(Numero_lotes,6);//qtde registros tipo 1
    Linha := Linha + Funcoes.writeInt(Numero_Registros, 6);//qtde registros tipo 0, 1, 5 e 9
    Linha := Linha + Funcoes.writeInt(nTipo1,6);//qtde registros tipo 1 e opera��o tipo E
    Linha := Linha + Funcoes.writeString('', 205);
    {****************************************************************************************************}
    Filex.Add(Linha);


   if SaveDialog1.FileName <> '' then begin
      Filex.SaveToFile(SaveDialog1.FileName);
      FreeAndNil(filex);
   end else
   begin
     MessageBox(Self.Handle, 'N�o foi informado destino do arquivo gerado!!!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
   end;




end;



procedure TFGeraPagFor.SISPAG_RAL_REGISTRO_TIPO_4(CP : Integer);
BEGIN
    //

    qrTitulosReal.CLOSE;
    qrTitulosReal.Params[0].AsInteger := CP;
    qrTitulosReal.Open;

            Linha := '';

            {codigo do registro - Tipo de Opera��o - Sigla da Legenda - FILLER}
            Linha := Linha + '4IPG   ';

            {Agencia do convenio - 4}
            Aux := trim(qrDadosBancariosBAN_AGEN.Value);
            Size := LENGTH(AUX);
            for I := 1 TO 4 - Size do
               Aux := '0' + Aux;
            Linha := Linha +  Aux + ' ';

            //ADD DIGITO DA AGENCIA




            {cta corrente do convernio - 7}
            Aux := trim(qrDadosBancariosBAN_CON.Value);
            Size := LENGTH(AUX);
            for I := 1 TO 7 - Size do
               Aux := '0' + Aux;
            Linha := Linha +  Aux ; //ADD DIGITO DA conta
            Linha := Linha + copy(qrDadosBancariosBAN_DAC.Value,1,1);



            {CODIGO DE BARRAS}
            Aux := '';
            FOR I := 1 TO 44 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {LINHA DE DIGITA��O}
            Aux := qrTitulosRealBARRAS.Value;
            AUX := StringReplace(Aux,'.','',[rfReplaceAll]);
            Linha := Linha + Aux;

            {NRO DOCUMENTO}
            Aux := '';
            FOR I := 1 TO 20 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {ESPECIE DA MOEDA}
            Aux := '';
            FOR I := 1 TO 3 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {AG/COD CEDENTE}
            Aux := '';
            FOR I := 1 TO 20 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {NOSSO NUMERO}
            Aux := '';
            FOR I := 1 TO 20 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {INSTU��ES 1 E 2}
            Aux := '';
            FOR I := 1 TO 60 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {FILLER}
            Aux := '';
            FOR I := 1 TO 152 do
                Aux := Aux + ' ';
            Linha := Linha  + Aux;

            {NUMERO DO TITULO}
            Aux := COPY(qrTitulosRealNUMERO.AsString,1,8);

            FOR I := Length(Aux) TO 7 do
               Aux := '0' + Aux ;
            Linha := Linha + Aux;


            {NUMERO DA SEQUENCIA}
            Seq := Seq + 1;
            Linha := Linha + FormatFloat('000000',Seq);

           //atualiza��o da numera��o do titulo na tabela cpacheq
            qrAux2.Params[0].Value := qrTitulosRealNUMERO.Value;
            qrAux2.ExecSQL;

            Filex.Add(Linha);


end;

function  TFGeraPagFor.CalculaDigitoGeral(Txt :String) : String;
var Mult, NAtual: Integer;
    Total, Resto, Pos : Integer;
    Sair  : Boolean;
    TextoCompleto,
    Texto, TextoMontado, TextoFinal : String;
    Soma, DV:Integer;
Const
    TamText :Integer = 31;

Begin
        Sair := False;
        Total :=  0;
        Mult := 1;
        Texto := Txt;
        Pos := Length(Texto);
        TextoMontado := Texto;

        While Pos >= 1 Do
        Begin
                If Mult >= 9 then
                        Mult := 2
                Else
                        Inc(Mult);

                NAtual := StrToInt(Copy(Texto,Pos,1));

                Soma := NAtual * Mult;
                Total := Total + Soma;

                Dec (Pos);
        End;

        Resto := 11 - (Total Mod 11);

        If (Resto = 0) or (Resto = 1) or (Resto = 10) or (Resto = 11) then
                Resto := 1;

        CalculaDigitoGeral := Copy(Texto,1,4) + IntToStr(Resto) + Copy(Texto,5,Length(Texto)-4);

End;

function  TFGeraPagFor.TiraSimbolos(Txt :String) : String;
var Pox: Integer;
    Car : Char;
    NewTxt :String;
Begin
        NewTxt := Txt;
        Car := '.';

        While pos(Car,NewTxt) > 0 do
        Begin
                Pox := pos(Car, NewTxt);
                NewTxt := Copy(Newtxt,1,Pox - 1) +
                          Copy(NewTxt,Pox+1, Length(NewTxt)-Pox + 1);
        End;

        TiraSimbolos := NewTxt;
End;

procedure TFGeraPagFor.escrevetexto(valor:string;tamanho:integer);
var
I : integer;
begin
valor := copy(valor,0,tamanho);
Write(F,valor);
for I := 1 to (tamanho - length(valor)) do
        Write(F,' ');
end;

procedure TFGeraPagFor.escrevenumero(valor:integer;tamanho:integer);
var
I : integer;
begin
valor := strtoint(copy(inttostr(valor),0,tamanho));
for I := 1 to (tamanho - length(inttostr(valor))) do
        Write(F,'0');
Write(F,valor);
end;

procedure TFGeraPagFor.escrevecnpj(valor:string;tamanho:integer);
var
I : integer;
begin
        valor := TrimRight(valor);
        While Copy(Valor,1,1) = '0' do
                Valor := Copy(Valor,2,length(Valor)-1);

        for I := 1 to (tamanho - length(valor)) do
                Write(F,'0');

        Write(F,valor);
end;

procedure TFGeraPagFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_TP10.Close;
   Q_PAG.Close;
   Q_PARA.CLOSE;
   Q_SOMA.Close;
end;

procedure TFGeraPagFor.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TFGeraPagFor.Q_PAGAfterOpen(DataSet: TDataSet);
begin
   BitBtn1.Enabled := true;
end;

procedure TFGeraPagFor.Q_PAGAfterClose(DataSet: TDataSet);
begin
   BitBtn1.Enabled := false;
end;

procedure TFGeraPagFor.FormCreate(Sender: TObject);
begin

        Q_PAG.Open;
        Q_PARA.OPEN;

end;

procedure TFGeraPagFor.SISPAG_REAL;
begin
   Barras_empty :=  '     .     .     .      .     .      . .              ';
   Linha := '';
   try
      Filex := TStringList.Create;

      //****************Header********************//
      Linha := '';

      {Indicador do numero da Sequancia}
      Seq := 1;

      {Busca das informa��es sobre conta bancaria}
      qrDadosBancarios.close;
      qrDadosBancarios.Open;

      
      Linha := Linha + '0';{C�digo do registro - 1}
      Linha := Linha + '1';{Codigo da Remessa - 1}
      Linha := Linha + 'REMESSA';{Literal da Remessa 7}
      Linha := Linha + '05';{Codigo do Servi�o - 2}
      Linha := Linha + 'PG FORNECEDORES'; {Literal do Servi�o - 15}
      Aux := trim(qrDadosBancariosBAN_AGEN.Value); {Agencia do convenio - 4}
      Size := LENGTH(AUX);
      for I := 1 TO 4 - Size do
         Aux := '0' + Aux;
      Linha := Linha +  Aux + ' ';   //ADD DIGITO DA AGENCIA
      {cta corrente do convernio - 7}
      Aux := trim(qrDadosBancariosBAN_CON.Value);
      Size := LENGTH(AUX);
      for I := 1 TO 7 - Size do
         Aux := '0' + Aux;
      Linha := Linha +  Aux + Copy(qrDadosBancariosBAN_DAC.Value, 1,1); //ADD DIGITO DA conta
      Linha := Linha + '       ';{Filler - 7}
      Aux := '';
      for i := 1 to 30 do
         Aux := Aux + ' ';
      Linha := Linha + Aux;{Nome do conveniado - 30 opcional}
      Linha := Linha + '356';{Numero do banco}
      Linha := Linha + 'ABN AMRO REAL  '; {Nome do Banco}
      Linha := Linha + FormatDateTime('DDMMYY',Date); {DATA PROCESSAMENTO - 6}
      Linha := Linha + FormatDateTime('DDMMYY',Date); {DATA MOVIMENTA��O}
      Linha := Linha + FormatDateTime('hhmmss',Now);  {HORA DE PROCESSAMENTO}
      Linha := Linha + '000000';  {N� GERA��O MOVIMENTO - 6}
      Linha := Linha + 'PG  '; {SIGLA DA LEGENDA}


      {FILLER - 30}
      Aux := '';
      FOR I := 1 TO 30 DO
         Aux := Aux +  ' ';
      Linha := Linha + Aux;
      Linha := Linha + '01';{TIPO COD EMPRESA - CNPJ - 2}

      
      Aux := '';
      FOR I := 1 TO 15 DO
         Aux := Aux +  ' ';
      Linha := Linha + Aux; {codigo da empresa - 15}

      
      Aux := '';
      FOR I := 1 TO 185 DO
         Aux := Aux +  ' ';
      Linha := Linha + Aux;  {filler - 185}

      
      Aux := '';
      FOR I := 1 TO 40 DO
         Aux := Aux +  ' ';
      Linha := Linha + Aux; {Filler - 40}

      
      Linha := Linha + FormatFloat('000000',Seq);  {N� da sequencia}


      {adiciona registro ao arquivo}
      Filex.Add(Linha);






      //**************** 5.2 - Registro Trasa��o Pagamento - Contas Bancarias********************//
      Linha := '';

      {iNICIO do loop de gera��o de pagamentos}
      qrPagamentosReal.Open;
      qrPagamentosReal.Last;
      Gauge1.MaxValue := qrPagamentosReal.RecordCount;
      lbProgress.Caption := 'Gerando pagamentos em conta bancaria';
      qrPagamentosReal.First;


      while not qrPagamentosReal.Eof do
      begin
            {codigo do Registro}
            Gauge1.Progress := Gauge1.Progress + 1 ;
            Linha := '';
            Linha := Linha + '1';

            {Tipo de Opera��o}
            Linha := Linha + 'I';

            {sigla da legenda - 4}
            Linha := Linha + 'PG  ';

            {codigo de libera��o - 2 nao liberado}
            Linha := Linha + '2';

            {Agencia do convenio - 4}
            Aux := trim(qrDadosBancariosBAN_AGEN.Value);
            Size := LENGTH(AUX);
            for I := 1 TO 4 - Size do
               Aux := '0' + Aux;
            Linha := Linha +  Aux + ' ';

            //ADD DIGITO DA AGENCIA




            {cta corrente do convernio - 7}
            Aux := trim(qrDadosBancariosBAN_CON.Value);
            Size := LENGTH(AUX);
            for I := 1 TO 7 - Size do
               Aux := '0' + Aux;
            Linha := Linha +  Aux;

            Linha := Linha + copy(qrDadosBancariosBAN_DAC.Value,1,1);

            {tipo de documento}
            Linha := Linha + '   '; 

            {IDENT DO TITULO-CLIENTE 15}
            Aux := '';
            Aux := qrPagamentosRealNUMERO.AsString;
            if Aux <> '' then
            begin
                Size := length(Aux);
                Size := 15 - Size;
                for i := 1 to Size do
                begin
                    Aux := '0' + Aux;
                end;
                Linha := Linha + Aux;
            end
            else
            Linha := Linha + '000000000000000';

            {Data_pagamento}
            linha := linha + FormatDateTime('DDMMYY',qrPagamentosRealVENCIMENTO.Value);

            {Codigo de antecipa��o pgto}
            linha := linha + '0';//verificar com rubens

            {Valor do Pgto}
            AUX := '';
            Aux := FormatFloat('0000000000000.00', qrPagamentosRealVALOR.AsFloat);
            Aux := StringReplace(aux,',','',[rfReplaceAll]);
            Linha := Linha + Aux;

            {C�digo de finalidade padrao 398}
            linha := Linha + '398';

            {Descri��o finalidade}
            Aux := 'PG.FORNECEDOR';
            Size := Length(AUX);
            Size := 30 - Size;
            FOR I := 1 TO Size do
                Aux := Aux + ' ';

            Linha := LINHA + Aux;


            QR_CLIENTE.CLOSE;
            QR_CLIENTE.Params[0].AsString := qrPagamentosRealRAZAO.Value;
            QR_CLIENTE.Open;

            {cOD FORMA DE PAGAMENTO - verifica se o pagamento ser� efetuado no banco real ou em
            outro banco, 4 para outro banco, 2 para real}
            if qrPagamentosRealBARRAS.AsString = '' then
            begin
                if QR_CLIENTENUMERO.AsString <> '356' then
                   Linha := Linha + '4'
                else
                   Linha := Linha + '2';
            end
            else
               Linha := Linha + '6';


            {COD AVISO DE CREDITO}
            LINHA := Linha + '0';

            {TIPO DE MOEDA - 000 PARA REAIS}
            Linha := Linha + '000';

            {VALOR DA MOEDA - ZEROS PARA REAL}
            Linha := Linha + '000000000000000';

            {CODIGO DE ERRO 1}
            Linha := Linha + '000';

            {CODIGO DE ERRO 2}
            Linha := Linha + '000';

            {ind. n/numero cobran�a}
            Linha := Linha + '0';

            {INFORMA��O DO CLIENTE 2}
            Linha := Linha + '00000000000';

            {INFORMA��O DO CLIENTE 3}
            Linha := Linha + '0000000';



            {TIPO COD. FORNECEDOR}
            IF QR_CLIENTEFOR_PESS.AsString = 'J' then
               Linha := Linha + '01'//CNPJ
            ELSE IF  QR_CLIENTEFOR_PESS.AsString = 'F' then
               Linha := Linha + '02';//CPF



            {CODIGO DO FORNECEDOR - CNPJ/CPF}
            Aux := Copy(QR_CLIENTEFOR_CGC.Value,1,14);
            Size := length(Aux);
            Size := 14 - Size;
            for i := 1 to Size do
                Aux :=  Aux + ' ';
            Linha := Linha + Aux;

            {numero do banco}
            Aux := FormatFloat('000',QR_CLIENTENUMERO.AsFloat);
            Linha := Linha + Aux;

            {agencia + digito da agencia}
            Aux2 := '';
            Aux := COPY(Trim(QR_CLIENTEBAN_AGEN.AsString),1,5);
            p := pos('-',Aux);
            if p > 0 then
               Aux2 := copy(aux,1,p-1)
            else
               Aux2 := aux;

            Size := 5 - Length(Aux2);
            for i := 1 to Size do
              Aux2 := '0' + Aux2;
            Linha := Linha + Aux2;

            {digito da agencia}
            {if p > 0 then
               aux2 := copy(Aux,p+1,1)
            else  }
            aux2 := ' ';
            Linha := Linha + Aux2;

            {conta }
            Aux2 := '';
            Aux := trim(QR_CLIENTEBAN_CONTA.AsString);
            p := pos('-',Aux);
            if p > 0 then
               Aux2 := copy(aux,1,p-1)
            else
               aux2 := aux;
            Size := 10 - Length(Aux2);
            for i := 1 to Size do
              Aux2 := '0' + Aux2;
            Linha := Linha + Aux2;

            {digito da conta}
            Aux2 := COPY(TRIM(QR_CLIENTEBAN_DIGITOCC.Value),1,1);
            IF AUX2 <> '' THEN
               Linha := Linha + Aux2
            ELSE
            Begin
                if qrPagamentosRealBARRAS.AsString = '' then
                begin
                        MessageBox(Self.Handle,PChar('Fornecedor: '+ QR_CLIENTEFOR_RAZA.Value + ' - Digito da Conta corrente em branco'),'Erro',MB_OK + MB_ICONERROR);
                        Abort;
                end
                else
                   Linha := Linha + ' ';
            end;

            {Nome agencia fornecedor}
            Aux := '';
            for i := 1 to 30 do
            Aux := Aux + ' ';
            Linha := Linha + Aux;



            {cep da agencia}
            Linha := Linha + '00000000';

            {a ordem}
            Linha := Linha + '1';

            {Nome do fornecedor}
            Aux := copy(QR_CLIENTEFOR_RAZA.Value,1,40);
            Aux :=     Trim(Aux);
            Size := Length(Aux);
            Size := 40 - Size;
            for i := 1 to Size do
              Aux := Aux + ' ' ;
            Linha := Linha + Aux;

            {nome logradouro}
            Aux := copy(QR_CLIENTEFOR_ENDE.Value,1,30);
            Aux :=  Trim(Aux);
            Size := Length(Aux);
            Size := 30 - Size;
            for i := 1 to Size do
              Aux := Aux + ' ' ;
            Linha := Linha + Aux;

            {numero - nao tem esse campo no banco}
            Linha := Linha + '00000';

            {complemento}
            Linha := Linha + '          ';

            {bairro}
            Linha := Linha + '               ';

            {cep}
            Aux := QR_CLIENTEFOR_CEP.Value;
            Aux := Trim(aux);
            Size := Length(Aux);
            Size := 8 - Size;
            for i := 1 to Size do
              Aux := Aux + '0';
            Linha := Linha + Aux;

            {cidade}
            Aux := copy(QR_CLIENTEFOR_MUNI.Value,1,20);
            Aux := Trim(Aux);
            Size := 20 - Length(Aux);
            for i := 1 to Size do
               Aux := Aux + ' ';
            Linha := Linha + Aux;

            {estado}
            Aux := QR_CLIENTEFOR_ESTA.Value;
            Aux := Trim(aux);
            Size := Length(Aux);
            Size := 2 - Size;
            for i := 1 to Size do
              Aux := Aux + ' ';
            Linha := Linha + Aux;


            {iNFORMA��O DO CLIENTE}
            Linha := Linha + '           ';

            {DATA DO MOVIMENTO}
            Linha := Linha + '      ';

            {CONTRA ENTREGA - NUMERO DO LOTE - CODIGO DE ERRO}
            Linha := Linha + '   0';

            {DATA ULTIMA ALTERA��O}
            Linha := Linha + '      ';

            {COD CAMARA CENTRALIZADORA}
            IF qrPagamentosRealBARRAS.AsString = '' THEN
            BEGIN
                if QR_CLIENTENUMERO.AsString = '356' then
                    Linha := Linha + '000'
                else
                begin
                    if qrPagamentosRealVALOR.AsFloat <= 5000 then
                       Linha := Linha + '700' //doc com valor menor ou igual a R$ 5000
                    else
                       Linha := Linha + '018'
                end;
            end
            else
               Linha := Linha + '000';
            

            {FILLER - DIGITO DA AGENCIA}
            Linha := Linha + '   ';

            {NUMERO DO DOCUMENTO - COD. TIPO DE COMUNICA��O- CODIGO MODO DE ENTRADA}
            Linha := Linha + '          ';

            {NUMERO DO TITULO}
            Linha := Linha + '00000000';

            {NUMERO DA SEQUENCIA}
            Seq := Seq + 1;
            Linha := Linha + FormatFloat('000000',Seq);


            Filex.Add(Linha);

            if qrPagamentosRealBARRAS.AsString <> '' then
                SISPAG_RAL_REGISTRO_TIPO_4(qrPagamentosRealNUMERO.Value);

            qrPagamentosReal.Next;
      end;   //end while qrpgtoreal





      //***************** Registro Trailer *****************************
      Linha := '';
      {Codigo do Registro}
      Linha := Linha + '9';

      

      with Q_AUX do
      begin
          Close;
          sql.Clear;
          sql.Add('Select sum(A.VALOR) as total From  CPAcheq A where a.DATAEMISSAO IS NULL and marcador = ''*''');
          Open;
      end;

      {somatorio dos valores}
      Aux := FormatFloat('0000000000000.00', Q_AUX.FieldByName('Total').AsFloat);
      Aux := StringReplace(Aux,',','',[rfReplaceAll]);
      Linha := Linha + Aux;

      {Filler}
      Aux := '';
      for i := 1 to 378 do
        Aux := Aux + ' ';

      Linha := Linha + Aux;

      {numero da sequencia}
      Linha := Linha + FormatFloat('000000',(Seq + 1));


      Filex.Add(Linha);
   if SaveDialog1.FileName <> '' then
      Filex.SaveToFile(SaveDialog1.FileName)
   else
   begin
     MessageBox(Self.Handle, 'N�o foi informado destino do arquivo gerado!!!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
   end;

   IF FileExists(SaveDialog1.FileName) then
      ShowMessage('Arquivo gerado com sucesso!');
   finally
      FreeAndNil(Filex);
   end;

end;

procedure TFGeraPagFor.SISPAG_ITAU;
var
caminho   : string;
Valor     : STRING;  // d� o formato ao valor
Conver    : STRING;  // converte a virgula para V
Val_Con   : string;  //completa de zeros
contador  ,
ContadorArq: integer;
valor_pon : double;
SQL       : STRING;
BANCO     : STRING;
AGENCIA   : STRING;
CC        : STRING;
DAC       : STRING;
Posx      : Integer;
SQLX      : STRING;
SQL_SOMA  : STRING;
Barras    : STRING;
Barr_CodBan,
Barr_CodMoe,
Barr_CL,
Barr_DV,
Barr_Fator,
Barr_Valor: String;
data      : string;
Pox       : Integer;
ValorTot  ,
ValorTotArq : Real;
TP_TRANSANT:String;
PrimeiraVez:Boolean;
begin


   SQLX:=
                'SELECT         CP.*, ' +
                '	        FORN.*, ' +
                '               CHE.VALOR ValorPago, ' +
                '               CHE.NUMEROBC BAN, ' +
                '               CHE.AGENBC, ' +
                '               CHE.CONTABC, ' +
                '               CHE.NOME NMFAV, ' +
                '               CHE.TP_PAG TP_PAGCHE, ' +
	        '               CHE.TP_TRANS, che.numero as ncheque ' +
                ' FROM 	        CPAPAGA CP, ' +
                '               CPAFORN FORN, ' +
                '               CPACHEQ CHE ' +
                ' WHERE         CP.NUMERO = CHE.NUMEROCP ' +
                ' AND           CP.FORNECEDOR = FORN.FOR_CODI ' +
                ' AND           FORN.FOR_CODI = CHE.FAVORECIDO ' +
                ' AND           CHE.TIPO = ''S''' +
                ' AND           CHE.EMITIDO IN  (''N'',''G'')' +
                ' AND           CHE.MARCADOR = ''*''';

   //Caminho := DirectoryListBox1.Directory + trim(edtFileName.Text) +'.txt';
   //caminho := Label1.Caption + '\'+trim(edtFileName.Text) +'.txt';
   if SaveDialog1.FileName <> '' then
      caminho := SaveDialog1.FileName
   else
   begin
     MessageBox(Self.Handle, 'N�o foi informado destino do arquivo gerado!!!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
   end;
   AssignFile(F,caminho);
   Rewrite(F);

   {
        layout atualizado para a vers�o 080 de agosto de 2014 - Efetuada por Miguel em mar�o de 2019
   }




   //Registro Header de Arquivo

   escrevenumero(341,3);//01
   escrevenumero(0,4);//02 --Daniel
   escrevenumero(0,1);//03
   escrevetexto('',6);//04
   escrevenumero(080,3);//05
   escrevenumero(2,1);//06   CNPJ
   escrevecnpj(Q_PARACNPJ.asstring,14);//07
   escrevetexto('',20);//08
   escrevenumero(Q_PARABAN_AGEN.AsInteger,5);//09
   escrevetexto('',1);//10
   escrevenumero(Q_PARABAN_CON.AsInteger,12);//11
   escrevetexto('',1);//12
   escrevenumero(Q_PARABAN_DAC.AsInteger,1);//13
   escrevetexto(Q_PARARAZAO.AsString,30);//14
   escrevetexto(Q_PARABAN_NOME.AsString,30);//15
   escrevetexto('',10);//16
   escrevenumero(1,1);//17
   escrevetexto(formatdatetime('DDMMYYYY',date),8);//18
   escrevetexto(formatdatetime('HHMMSS',date),6);//19
   escrevenumero(0,9);//20
   escrevenumero(0,5);//21
   escrevetexto('',69);//22
   //Fim do Header     --at� aqui OK.

   Writeln(F);
   Q_TP10.CLOSE;
   Q_TP10.SQL.CLEAR;
   Q_TP10.SQL.ADD(SQLX);
   Q_TP10.SQL.Add(' AND CHE.TP_PAG = ' + '''' + 'C' + '''');
   Q_TP10.SQL.Add(' ORDER BY   CHE.TP_TRANS, CP.FORNECEDOR DESC ');
   Q_TP10.OPEN;

   NLote := 0;

   /////////////////////*************************************************/////
   // CHEQUES
   /////////////////////*************************************************/////

   IF not Q_TP10.Eof THEN
   BEGIN
        ContadorArq := 1;  //Conta a partir do header de arquivo. Por este motivo n�o come�a com zero
        ValortotArq := 0;
        TP_TRANSANT := '';

        PrimeiraVez := True;
        //Q_TP10.First;
        While Not Q_TP10.EOF DO
        Begin


            //Registro Header de Lote - CHEQUES
            //Muda quando muda o tipo de Transacao, DOC, TED, etc, que �
            //o fator de ordena��o da query.
            If TP_TRANSANT <> Q_TP10TP_TRANS.AsString then
            Begin

                //Terminou um lote e come�a outro, assim, escreve o trailer
                If not PrimeiraVez then
                Begin
                      //Registro Trailer de Lote - CHEQUES
                      Inc(ContadorArq);
                      //Seguindo instru��o do Wilson de que o contador
                      //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.
                      escrevenumero(341,3);//01
                      escrevenumero(Nlote,4);//02
                      escrevenumero(5,1);//03
                      escrevetexto('',9);//04
                      escrevenumero(Contador+ 2,6);//05
                      valor_pon:= ValorTot * 100; //Mudei para n�o usar mais a outra query -- Daniel
                      valor:= formatfloat('000000000000000000',valor_pon);
                      Write(F,valor); //06
                      escrevenumero(0,18);//07
                      escrevetexto('',171);//08
                      escrevetexto('',10);//09
                      //Fim do Trailer de Lote  - CHEQUES
                      WriteLn(F);
                End;

                PrimeiraVez := False;

                Inc(ContadorArq);
                //Seguindo instru��o do Wilson de que o contador
                //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.

                Contador:= 0;  //Sequencial do registro dentro do lote.
                ValorTot := 0;

                TP_TRANSANT := Q_TP10TP_TRANS.AsString;
                Inc (NLote);

                escrevenumero(341,3);//01
                escrevenumero(Nlote,4);//02
                escrevenumero(1,1);//03
                escrevetexto('C',1);//04   //CR�DITO
                escrevenumero(TP_PAGTO,2);//05    //DIVERSOS

                //escrevenumero(CHEQ_PAGTO,2);//06 //AQUI TEM QUE PERGUNTAR PRO ITA� SE PARA CADA LOTE � UM
                escrevenumero(Q_TP10TP_TRANS.AsInteger,2);

                escrevenumero(40,3);//07
                escrevetexto('',1);//08
                escrevenumero(2,1);//09 --Tipo de inscri��o CNPJ, 1 seria CPF.
                escrevecnpj(Q_PARACNPJ.asstring,14);//10
                escrevetexto('',20);//11
                escrevenumero(Q_PARABAN_AGEN.AsInteger,5);//12
                escrevetexto('',1);//13
                escrevenumero(Q_PARABAN_CON.AsInteger,12);//14
                escrevetexto('',1);//15
                escrevenumero(Q_PARABAN_DAC.ASINTEGER,1);//16
                escrevetexto(Q_PARARAZAO.AsString,30);//17
                escrevetexto('',30);//18
                escrevetexto('',10);//19
                escrevetexto(Q_PARAENDERECO.AsString,30);//20
                escrevenumero(Q_PARANUMERO.AsInteger,5);//21
                escrevetexto(Q_PARAEND_COMPL.AsString,15);//22
                escrevetexto(Q_PARACIDADE.AsString,20);//23
                escrevenumero(Q_PARACEP.AsInteger,8);//24
                escrevetexto(Q_PARAESTADO.AsString,2);//25
                escrevetexto('',8);//26
                escrevetexto('',10);//27
                //Fim do Header de Lote - CHEQUES

                Writeln(F);
            End;

            //Registro Detalhe de segmento de Lote - A   - CHEQUES

            Inc(Contador);
            ValorTot := ValorTot + Q_TP10ValorPago.AsFloat;

            //Vari�veis que ser�o utilizadas no Trailer de Arquivo
            //para totaliza��o de Registros e de Valor
            Inc(ContadorArq);
            ValorTotArq := ValorTotArq + Q_TP10ValorPago.AsFloat;

            escrevenumero(341,3);//01
            escrevenumero(NLote,4);//02
            escrevenumero(3,1);//03
            escrevenumero(Contador,5);//04
            escrevetexto('A',1);//05
            escrevenumero(0,3);//06
            escrevenumero(0,3);//07
            escrevenumero(Q_TP10BAN.AsInteger,3);//08

            ///Preparam-se as vari�veis, separando ag�ncia e conta de DAC
            Pox := pos('-',Q_TP10AGENBC.AsString);
            If Pox <> 0 then
            Begin
                    Agencia := Copy(Q_TP10AGENBC.AsString,1,Pox-1);
            End Else Begin
                    Agencia := Q_TP10AGENBC.AsString;
            End;

            Pox := pos('-',Q_TP10CONTABC.AsString);
            If Pox <> 0 then
            Begin
                    CC := TiraSimbolos(Copy(Q_TP10CONTABC.AsString,1,Pox-1));

                    If Length(Q_TP10CONTABC.AsString) - Pox > 1 then
                        Dac := Copy(Q_TP10CONTABC.AsString,Pox+1,2)
                    Else
                        Dac := Copy(Q_TP10CONTABC.AsString,Pox+1,1);

            End Else Begin
                    CC := TiraSimbolos(Q_TP10CONTABC.AsString);
                    Dac := '0';
            End;

            //Se o banco for Ita�, o formato � um, se for
            //qq outro banco, usa-se de outro formato.

            If Q_TP10BAN.AsInteger = 341 then
            Begin
                    escrevenumero(0,1);//09 A
                    escrevenumero(StrToInt(Agencia),4);//09 B
                    escrevetexto ('',1);//09 C
                    escrevenumero(0,7);//09 D
                    escrevenumero(StrtoInt(CC),5);//09 E   --garantir que n�o tem dac
                    If length(Dac) = 1 then
                    Begin
                            escrevetexto('',1);//09 F
                            escrevenumero(StrtoInt(Dac),1);//09 G  -- encontrar o dac
                    End Else
                            escrevenumero(StrtoInt(Dac),2);//09 G  -- encontrar o dac
            End Else Begin
                    escrevenumero(strToInt(Agencia),5);//09 A
                    escrevetexto('',1);//09 B
                    escrevenumero(StrtoInt(CC),12);//09 C
                    If length(Dac) = 1 then
                    Begin
                            escrevetexto('',1);//09 D
                            escrevenumero(StrtoInt(Dac),1);//09 G  -- encontrar o dac
                    End Else
                            escrevenumero(StrtoInt(Dac),2);//09 G  -- encontrar o dac
            End;

            escrevetexto(Q_TP10NMFav.AsString,30);//10
            escrevetexto(Q_TP10Documento.AsString,20);//11
            escrevetexto(formatdatetime('DDMMYYYY',Q_TP10Vencimento.Value),8);//12
//            escrevetexto(formatdatetime('DDMMYYYY',Now),8);//12
            escrevetexto('REA',3);//013
            escrevenumero(0,15);//14
            valor_pon:= Q_TP10ValorPago.asfloat * 100;
            valor:= formatfloat('000000000000000',valor_pon);
            Write(F,valor); //15
            escrevetexto('',15);   //16
            escrevetexto('',5);   //17
            escrevetexto(formatdatetime('DDMMYYYY',Q_TP10Vencimento.Value),8);//12

            Write(F,valor); //19

            escrevetexto('',20);//20
            escrevenumero(0,6);//22

            //Se for DOC ou TED, � obrigat�rio o preenchimento do cnpj ou cpf
            //Caso contrario o valor no banco de dados pode ser em branco que ser� preenchido
            //com zeros, o mesmo vale para Isentos.

            escrevecnpj(Q_TP10FOR_CGC.asstring,14);//23
            escrevetexto('',2);//24
            escrevetexto('00010',5);//25 -- C�digo de Cr�dito em Conta (campo finalidade da TED)
            escrevetexto('',5);//26
            escrevetexto('0',1);//27
            escrevetexto('',10);//28

           //Fim do Registro Detalhe de segmento de Lote - A  - CHEQUES

            Writeln(F);



            Q_TP10.Next;
        End;

        //Registro Trailer de Lote - CHEQUES
        Inc(ContadorArq);
        //Seguindo instru��o do Wilson de que o contador
        //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.
        escrevenumero(Q_PARABAN_CODI.AsInteger,3);//01
        escrevenumero(Nlote,4);//02
        escrevenumero(5,1);//03
        escrevetexto('',9);//04
        escrevenumero(Contador+2,6);//05
        valor_pon:= ValorTot * 100; //Mudei para n�o usar mais a outra query -- Daniel
        valor:= formatfloat('000000000000000000',valor_pon);
        Write(F,valor); //06
        escrevenumero(0,18);//07
        escrevetexto('',171);//08
        escrevetexto('',10);//09
        //Fim do Trailer de Lote  - CHEQUES

        Writeln(F);
    END;

    /////////////////////*************************************************/////
    /////////////////////*************************************************/////
    // T�TULOS
    /////////////////////*************************************************/////

    Q_TP10.CLOSE;
    Q_TP10.SQL.CLEAR;
    Q_TP10.SQL.ADD(SQLX);
    Q_TP10.SQL.Add(' AND (CHE.TP_PAG = ('+ ''''+ 'T' + '''' + ') OR CHE.TP_PAG IS NULL)');
    Q_TP10.SQL.Add(' ORDER BY   CHE.TP_TRANS, CP.FORNECEDOR DESC ');
    Q_TP10.OPEN;

    Q_TP10.Last;
    Gauge1.Progress := 0;
    Gauge1.MaxValue := Q_TP10.RecordCount;
    Q_TP10.First;

    TP_TRANSANT := '';
    PrimeiraVez := True;

    IF not Q_TP10.Eof THEN
    BEGIN

        While not Q_TP10.EOF Do
        Begin
             Gauge1.Progress := Gauge1.Progress + 1;
            //Registro Header de Lote - TITULOS
            //Muda quando muda o tipo de Transacao, que pode ser pagamento de t�tulo dentro
            //do Ita� ou de outro banco, esta coluna � o fator de ordena��o da query.

            If TP_TRANSANT <> Q_TP10TP_TRANS.AsString then
            Begin
                If not PrimeiraVez then
                Begin
                      //Registro Trailer de Lote   - T�tulo
                      Inc(ContadorArq);
                      //Seguindo instru��o do Wilson de que o contador
                      //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.
                      escrevenumero(Q_PARABAN_CODI.AsInteger,3);//01
                      escrevenumero(Nlote,4);//02
                      escrevenumero(5,1);//03
                      escrevetexto('',9);//04
                      escrevenumero(Contador+2,6);//05
                      valor_pon:= ValorTot * 100;
                      valor:= formatfloat('000000000000000000',valor_pon);
                      Write(F,valor); //06
                      escrevenumero(0,18);//07
                      escrevetexto('',171);//08
                      escrevetexto('',10);//09
                      //Fim do Trailer de Lote - T�tulo
                      WriteLn(F);
                End;

                Contador:= 0;  //Sequencial do registro dentro do lote.
                ValorTot := 0;

                PrimeiraVez := False;

                TP_TRANSANT := Q_TP10TP_TRANS.AsString;
                Inc (NLote);

                Inc(ContadorArq);
                //Seguindo instru��o do Wilson de que o contador
                //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.
                //Registro Header de Lote - LIQUIDA��O DE TITULOS

                escrevenumero(Q_PARABAN_CODI.AsInteger,3);//01
                escrevenumero(Nlote,4);//02
                escrevenumero(1,1);//03
                escrevetexto('C',1);//04   //CR�DITO
                escrevenumero(TP_PAGTO,2);//05    //Fornecedores

                //Para t�tulos existem duas op��es: 30, pagamento de t�tulos em cobran�a no Ita� e
                //                                  31, pagamento de t�tulos em cobran�a em outros bancos
                //AQUI TEM QUE PERGUNTAR PRO ITA� SE PARA CADA LOTE � UM

                If (Q_TP10TP_TRANS.AsString = '30') or (Q_TP10TP_TRANS.AsString = '31') then
                        escrevenumero(Q_TP10TP_TRANS.AsInteger,2)//06   //PAGAMENTO DE T�TULOS
                Else
                        escrevenumero(31,2);//06   //PAGAMENTO DE T�TULOS

                escrevenumero(30,3);//07
                escrevetexto('',1);//08
                escrevenumero(2,1);//09  --Est� fixo como CNPJ
                escrevecnpj(Q_PARACNPJ.asstring,14);//10
                escrevetexto('',20);//11
                escrevenumero(Q_PARABAN_AGEN.AsInteger,5);//12
                escrevetexto('',1);//13
                escrevenumero(Q_PARABAN_CON.AsInteger,12);//14
                escrevetexto('',1);//15
                escrevenumero(Q_PARABAN_DAC.ASINTEGER,1);//16
                escrevetexto(Q_PARARAZAO.AsString,30);//17
                escrevetexto('',30);//18
                escrevetexto('',10);//19
                escrevetexto(Q_PARAENDERECO.AsString,30);//20
                escrevenumero(Q_PARANUMERO.AsInteger,5);//21
                escrevetexto(Q_PARAEND_COMPL.AsString,15);//22
                escrevetexto(Q_PARACIDADE.AsString,20);//23
                escrevenumero(Q_PARACEP.AsInteger,8);//24
                escrevetexto(Q_PARAESTADO.AsString,2);//25
                escrevetexto('',8);//26
                escrevetexto('',10);//27
                //Fim do Header de Lote
                Writeln(F);

            End;

            //Registro Detalhe de segmento de Lote - J

            Inc(Contador);
            ValorTot := ValorTot + Q_TP10ValorPago.AsFloat;

            //Vari�veis que ser�o utilizadas no Trailer de Arquivo
            //para totaliza��o de Registros e de Valor
            Inc(ContadorArq);
            ValorTotArq := ValorTotArq + Q_TP10ValorPago.AsFloat;

            escrevenumero(Q_PARABAN_CODI.AsInteger,3);//01
            escrevenumero(NLote,4);//02
            escrevenumero(3,1);//03
            escrevenumero(Contador,5);//04
            escrevetexto(Segmento,1);//05
            escrevenumero(TP_Movi,3);//06

            //C�digo de barras ---------------------------XX
            IF Q_TP10Barras.ASSTRING <> '' THEN BEGIN
                //Formulado para atender a digita��o manual do c�digo de barras.
                //Caso a leitura passe a ser feita "leitor" dever� mudar o lay-out em
                //acordo com a documenta��o do Ita� para Sispag.

                Barras := TiraSimbolos(Q_TP10Barras.ASSTRING);
                Barras := Copy(Barras,1,9) + Copy(Barras,11,10) + Copy(Barras,22,10) + Copy(Barras,34,Length(Barras)-33);

//                Barras := CalculaDigitoGeral(Barras);

                Barr_CodBan := COPY(Barras,1,3);
                Barr_CodMoe := COPY(Barras,4,1);
                Barr_CL     := COPY(Barras,5,25);
                Barr_Fator  := COPY(Barras,30,4);
                Barr_Valor  := COPY(Barras,34,10);

                Barras := CalculaDigitoGeral(Barr_CodBan +
                                             Barr_CodMoe +
                                             Barr_Fator  +
                                             Barr_Valor +
                                             Barr_CL);

                //Armazena o Digito de Controle Obtido.
                Barr_DV := COPY(Barras,5,1);

                Barras  := CalculaDigito(Barr_CodBan +
                                        Barr_CodMoe +
                                        Barr_CL +
                                        Barr_DV +
                                        Barr_Fator +
                                        Barr_Valor);

                //Barras:= COPY(Q_TP10Barras.ASSTRING,1,3);
                escrevetexto(Barr_CodBan,3);//07
                //Barras:= COPY(Q_TP10Barras.ASSTRING,4,1);
                escrevetexto(Barr_CodMoe,1);//08
                //Barras:= COPY(Q_TP10Barras.ASSTRING,5,1);
                escrevetexto(Barr_DV,1);//09
                //Barras:= COPY(Q_TP10Barras.ASSTRING,7,4);
                escrevetexto(Barr_Fator,4);//10

               //-- antes destava ao inv�s de 6,4; 7,4.
            //C�digo de barras ---------------------------XX
            END ELSE BEGIN

                escrevenumero(0,3);//07
                escrevenumero(0,1);//08
                escrevenumero(0,1);//09
                escrevenumero(0,4);//10

            END;

            //valor_pon:= Q_TP10ValorTitulo.asfloat * 100;
            valor_pon:= Q_TP10ValorPago.asfloat * 100;
            valor:= formatfloat('0000000000',valor_pon);
            //Write(F,valor);  //11
            Write(F,Barr_Valor);  //11

            //escrevenumero(0,25);//12 --Esse virou Campo Livre
            escreveTexto(Barr_CL,25);//12

            //escrevetexto(Q_TP10Fornecedor.AsString,30);//013
            escrevetexto(Q_TP10NMFav.AsString,30);//13  -- Daniel
            escrevetexto(formatdatetime('DDMMYYYY',Q_TP10Vencimento.Value),8);//14

            valor_pon:= Q_TP10ValorTitulo.asfloat * 100;
            valor:= formatfloat('000000000000000',valor_pon);
            Write(F,valor);  //15

            valor_pon:= Q_TP10DescAcresc.asfloat * 100 ;
            valor:= formatfloat('000000000000000',valor_pon);    //DESCONTO

            IF copy(VALOR,1,1) = '-' Then Begin
               Conver:= (copy(VALOR,2,15));
               Write(F,Conver)              //16
            END
            Else Begin
               valor:= '000000000000000';
               Write(F,valor);            //16
            End;

            valor_pon:= Q_TP10DescAcresc.asfloat * 100 ;
            valor:= formatfloat('000000000000000',valor_pon);  //ACRESCIMO

            IF copy(VALOR,1,1) <> '-' Then Begin
               Write(F,valor)      //17
            End
            Else Begin
               valor:= '000000000000000';
               Write(F,valor);     //17
            End;

           escrevetexto(formatdatetime('DDMMYYYY',Q_TP10Emissao.Value),8);//18
//           escrevetexto(formatdatetime('DDMMYYYY',Now),8);//18

           valor_pon:= Q_TP10ValorPago.asfloat * 100;
           valor:= formatfloat('000000000000000',valor_pon);
           Write(F,valor);   //19

           escrevenumero(0,15);//20
           escrevetexto(Q_TP10Documento.AsString,20);//21
           escrevetexto('',13);//22
           escrevetexto('',15);//23
           escrevetexto('',10);//24

           //Fim do Registro Detalhe de segmento de Lote - J

           Writeln(F);



   {/************** miguel *************/}
   {
       comentada por miguel, procedimento executado na tele de programa��o de pagamentos
       procedure geracheque
            ///////// MIGUEL ////////////////////////////////////////////////
           //ATUALIZA O NUMERO DO TITULO PARA O CAMPO NUMERO DA TABELA CPACHEQ
           SQL:= 'UPDATE CPACHEQ SET CHEQUENUMERO = '+ QuotedStr(Q_TP10ncheque.AsString) ;
           SQL := SQL + ' WHERE NUMERO = ' + Q_TP10ncheque.AsString;
           Q_AUX.Close;
           Q_AUX.SQL.CLEAR;
           Q_AUX.SQL.ADD(SQL);
           Q_AUX.ExecSQL;

           SQL:= 'UPDATE CPAIPAG SET DOCUMENTO = '+ QuotedStr(Q_TP10ncheque.AsString) ;
           SQL := SQL + ' WHERE NUMERO = ' + Q_TP10ncheque.AsString;
           Q_AUX.Close;
           Q_AUX.SQL.CLEAR;
           Q_AUX.SQL.ADD(SQL);
           Q_AUX.ExecSQL;
           //////////////////////////////////////////////////////////
   }

   {/************** end ****************/}



           Q_TP10.Next;
        End;

        //Registro Trailer de Lote
        Inc(ContadorArq);
        //Seguindo instru��o do Wilson de que o contador
        //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.
        escrevenumero(Q_PARABAN_CODI.AsInteger,3);//01
        escrevenumero(Nlote,4);//02
        escrevenumero(5,1);//03
        escrevetexto('',9);//04
        escrevenumero(Contador+2,6);//05
        valor_pon:= ValorTot * 100;
        valor:= formatfloat('000000000000000000',valor_pon);
        Write(F,valor); //06
        escrevenumero(0,18);//07
        escrevetexto('',171);//08
        escrevetexto('',10);//09
        //Fim do Trailer de Lote

        Writeln(F);

     END;

     //Registro do Trailer de Arquivo

     Inc(ContadorArq);
     //Seguindo instru��o do Wilson de que o contador
     //do trailer do arquivo deve totalizar a quantidade de linhas do arquivo.

     escrevenumero(Q_PARABAN_CODI.AsInteger,3);//01
     escrevenumero(9999,4);//02
     escrevenumero(9,1);//03
     escrevetexto('',9);//04
     escrevenumero(NLOTE,6);//05
     escrevenumero(ContadorArq,6);//06
     escrevetexto('',211);//07

     //Fim do Trailer de Arquivo, s� no fim do arquivo se coloca 10 + 13.
     Write(F,#10+#13);
     CloseFile(F);

     MessageDlg('Arquivo gerado com sucesso!',mtInformation,[mbok],0);
     CLOSE;

end;

procedure TFGeraPagFor.SpeedButton1Click(Sender: TObject);
begin


  try
       SaveDialog1.FileName := '';
       SaveDialog1.Execute;
       lbProgress.Visible := True;
       lbProgress.Caption := 'Processando Informa��es';
       Gauge1.Visible := True;
       Gauge1.Progress := 0;
       Application.ProcessMessages;

       if FChBor.Q_BANCban_pe.AsString = '1' then
         //SISPAG_ITAU;
         CNAB_ITAU;
       if FChBor.Q_BANCban_pe.AsString = '2' then
         SISPAG_REAL;
       if FChBor.Q_BANCban_pe.AsString = '3' then
         SISPAG_BRADESCO;
       if FChBor.Q_BANCban_pe.AsString = '4' then
          SISPAG_UNIBANCO;
  finally
       lbProgress.Visible := False;
       Gauge1.Visible := False;
       close;
  end;
end;

procedure TFGeraPagFor.SISPAG_BRADESCO;
var
        nseq : Double;
        MOD_PAGAMENTO : string;
        AuxAgCC : string;
        Valor_total : Double;


begin
   Linha := '';
   try
      Filex := TStringList.Create;

      nseq := 1;
      Valor_total := 0;

{========================Header================================================}
      qrEmpresa.close;
      qrEmpresa.Params[0].AsString := FChBor.DBLC_REC_RAZA.LookupValue;
      qrEmpresa.Open;

      Linha := '';

      //IDENTIFICA��O
      Linha := Linha + '0';

      //codigo de comunica��o fornecido pelo bradesco
      Aux :=  Copy(qrEmpresacodigo_pe.AsString, 1,8);
      Size := LENGTH(AUX);
      for I := 1 TO 8 - Size do
         Aux := '0' + Aux;
      Linha := Linha +  Aux ;

      //tipo inscri��o
      Linha := Linha + '2';//cnpj

      //cnpj da empresa pagadora
      Aux := Copy(qrEmpresaCNPJ.Value, 1,14);
      Size := LENGTH(AUX);
      for I := 1 TO 15 - Size do
          Aux :=  Aux + ' ';
      Linha := Linha +  Aux ;

      //nome da empresa
      Aux := UpperCase(Copy(qrEmpresaRAZAO.Value, 1, 40));
      Size := LENGTH(AUX);
      for I := 1 TO 40 - Size do
          Aux :=  Aux + ' ';
      Linha := Linha +  Aux ;

      //tipo servi�o
      Linha := Linha + '20';

      //codigo origem
      Linha := Linha + '1';

      //numero remessa
      Linha := Linha + FormatFloat('00000', 1);

      //numero do retorno
      Linha := Linha + '00000';

      //data da grava�a� do arquivo
      Linha := Linha + FormatDateTime('YYYYMMDD', DATE);

      //HORA DA GRAVA��O
      Linha := Linha + FormatDateTime('hhmmss', Now);

      //densidade
      Linha := Linha + '     ';

      //unidade de densidade
      Linha := Linha + '   ';

      //ident modulo micro
      Linha := Linha + '     ';

      //tipo processamento 'Retorno do banco'
      Linha := Linha + '0';

      //espa�o reservado para empresa
      Aux := '';
      Size := LENGTH(AUX);
      for I := 1 TO 74  - Size do
          Aux :=  Aux + ' ';
      Linha := Linha +  Aux ;


      //espa�o reservado em branco
      Aux := '';
      Size := LENGTH(AUX);
      for I := 1 TO 314  - Size do
          Aux :=  Aux + ' ';
      Linha := Linha +  Aux;


      Linha := Linha + FormatFloat('000000', nseq);


      Filex.Add(Linha);


{================================= PAGAMENTOS =================================}
      qrPagBradesco.Open;
      qrPagBradesco.Last;

      Gauge1.MaxValue := qrPagBradesco.RecordCount;

      qrPagBradesco.First;

      WHILE not qrPagBradesco.Eof DO
      begin

      Gauge1.Progress := Gauge1.Progress + 1;
      {VERIFICAR A MODALIDADE DE PAGAMENTO}
      if qrPagBradescoCOD_BARRAS.AsString = 'N' then
      begin
          //verificamos a conta do fornecedor
          if qrPagBradescoNUM_BANCO.Value = 237 then
                MOD_PAGAMENTO := '01' //credito em conta
          else
          begin
              if qrPagBradescoVALOR.Value <= 5000 then
                MOD_PAGAMENTO := '03'
              else
                MOD_PAGAMENTO := '08';

          end;
      end
      else  //verifica se o titulo � do bradesco ou nao
      begin
        if qrPagBradescoTITULO_BRADESCO.AsString = 'S' then
                MOD_PAGAMENTO := '30'
        else
                MOD_PAGAMENTO := '31';
      end;


          Linha := '';

          //IDENTIFICACAO
          Linha := Linha + '1';

          //TIPO CNPJ/CPF DO FORNECEDOR
          if qrPagBradescoFOR_PESS.Value = 'F' then
                Linha := Linha + '1'
          else
                Linha := Linha + '2';

          //CNPJ
          Aux :=  Copy(qrPagBradescoCNPJ.Value,1,14);
          Size := LENGTH(AUX);
          for I := 1 TO 15 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux;

          //NOME DO FORNECEDOR
          Aux := UpperCase(Copy(qrPagBradescoNOME.Value,1,30)) ;
          Size := LENGTH(AUX);
          for I := 1 TO 30  - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux;

          //ENDERECO
          Aux := UpperCase(Copy(qrPagBradescoENDERECO.Value,1,40)) ;
          Size := LENGTH(AUX);
          for I := 1 TO 40 - Size do
            Aux :=  Aux + ' ';
          Linha := Linha +  Aux;

          //CEP
          Aux := UpperCase(Copy(qrPagBradescoFOR_CEP.Value,1,8)) ;
          Size := LENGTH(AUX);
          for I := 1 TO 8 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux;



          
          //NUMERO DO BANCO

          if (MOD_PAGAMENTO = '01') or (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
             Aux := qrPagBradescoNUM_BANCO.AsString
          else if MOD_PAGAMENTO = '30' then
                Aux := '237'
          else if MOD_PAGAMENTO = '31' then
                Aux := Copy(qrPagBradescoBARRAS.Value, 1,3);

          Size := LENGTH(AUX);
          for I := 1 TO 3 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux;




          //AGENCIA
          if (MOD_PAGAMENTO = '01') or (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
             Aux := qrPagBradescoAGENCIA.Value
          else if MOD_PAGAMENTO = '30' then
                Aux := Copy(qrPagBradescoBARRAS.Value, 20,4)
          else if MOD_PAGAMENTO = '31' then
                Aux := '0';
          AuxAgCC := Aux;
          Size := LENGTH(AUX);
          for I := 1 TO 5 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;

          //DIGITO DA AGENCIA
          if (MOD_PAGAMENTO = '01') or (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
                Aux := ' '
          else if MOD_PAGAMENTO = '30' then
                Aux := copy(CalculaDigito(AuxAgCC), Length(AuxAgCC) + 1, 1)
          else if MOD_PAGAMENTO = '31' then
                Aux := ' ';
          Linha := Linha + Aux;

          //CONTA CORRENTE
          if (MOD_PAGAMENTO = '01') or (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
             Aux := qrPagBradescoCONTA.Value
          else if MOD_PAGAMENTO = '30' then
                Aux := Copy(qrPagBradescoBARRAS.Value, 37,7)
          else if MOD_PAGAMENTO = '31' then
                Aux := '0';
          AuxAgCC := Aux;
          Size := LENGTH(AUX);
          for I := 1 TO 13 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;

          //DIGITO DA conta
          if (MOD_PAGAMENTO = '01') or (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
                Aux := qrPagBradescoDIGITO_CONTA.Value
          else if MOD_PAGAMENTO = '30' then
                Aux := copy(CalculaDigito(AuxAgCC), Length(AuxAgCC) + 1, 1)
          else if MOD_PAGAMENTO = '31' then
                Aux := ' ';
          Size := LENGTH(AUX);
          for I := 1 TO 2 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;


          //numero do pagamento
          if MOD_PAGAMENTO = '30' then
              aUX := ''
          else
              Aux := 'CP' + qrPagBradescoNUMERO.AsString ;
          Size := LENGTH(AUX);
          for I := 1 TO 16 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;


          //carteira
          if MOD_PAGAMENTO = '30' then
              aUX := Copy(qrPagBradescoBARRAS.Value, 24, 1)
          else
              Aux := '0';
          Size := LENGTH(AUX);
          for I := 1 TO 3 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;


          //nosso numero
          if MOD_PAGAMENTO = '30' then
              aUX := Copy(qrPagBradescoBARRAS.Value, 26, 11)
          else
              Aux := '0';
          Size := LENGTH(AUX);
          for I := 1 TO 12 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;



          //seu numero
          if MOD_PAGAMENTO = '08' then
             Aux := Copy(qrPagBradescoCNPJ.Value, 1, 14)
          else
                Aux := '';
          Size := LENGTH(AUX);
          for I := 1 TO 15 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //data de vencimento
          Linha := Linha + FormatDateTime('YYYYMMDD', qrPagBradescoVENCIMENTO.Value);


          //data de emissao do documento
          Linha := Linha + '00000000';

          //data limite para desconto
          Linha := Linha + '00000000';

          //zeros
          Linha := Linha + '0';

          //fator de vencimento
          if (MOD_PAGAMENTO = '01') or (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
             Aux := '0'
          else if MOD_PAGAMENTO = '30' then
                Aux := Copy(qrPagBradescoBARRAS.Value, 6,4)
          else if MOD_PAGAMENTO = '31' then
                Aux := Copy(qrPagBradescoBARRAS.Value, 34,4);
          Size := LENGTH(AUX);
          for I := 1 TO 4 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;


          //valor do documento
          Aux := FormatFloat('0000000000', qrPagBradescoVALOR.Value * 100);
          Size := LENGTH(AUX);
          for I := 1 TO 10  - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;

          Valor_total := Valor_total +  qrPagBradescoVALOR.Value;


          //valor do pagamento
          Aux := FormatFloat('0000000000', qrPagBradescoVALOR.Value * 100);
          Size := LENGTH(AUX);
          for I := 1 TO 15 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;


          //valor do desconto
          Aux := FormatFloat('0000000000', 0);
          Size := LENGTH(AUX);
          for I := 1 TO 15 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;

          //valor do Acrescimo
          Aux := FormatFloat('0000000000', 0);
          Size := LENGTH(AUX);
          for I := 1 TO  15 - Size do
              Aux := '0'  + Aux;
          Linha := Linha +  Aux ;


          //tipo de documento
          Aux := '05';
          Size := LENGTH(AUX);
          for I := 1 TO  2- Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //numero do documento verificar se � para colocar o numero do CP
          Aux :=  '0';
          Size := LENGTH(AUX);
          for I := 1 TO 10 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;


          //serie do documento
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 2 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //Modalidade do pagamento
          Linha := Linha + MOD_PAGAMENTO;

          //data para efetiva��o do pagamento
          Linha := Linha + '00000000';

          //codigo cnab
          Linha := Linha + '   ';

          //situa��o do agendamento
          Linha := Linha + '01';

          //informa��es de retorno
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 10 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //tipo de movimento
          Linha := Linha + '0';//inclusao

          //codigo de movimento
          Linha := Linha +  '00';

          //horario para consulta saldo
          Linha := Linha + '    ';

          //saldo disponivel no momento
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 15 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //valor tx pre funding
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 15 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //reserva
          Linha := Linha + '      ';

          //sacador avalista
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 40 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //reserva  + nivel de informa�ao
          Linha := Linha + '  ';

          //informa��es complementares
          Aux := '';

          {carteira no bradesco}
          if (MOD_PAGAMENTO = '01') then
               Aux := '';

          {doc / ted de outros bancos}
          if  (MOD_PAGAMENTO = '03') or (MOD_PAGAMENTO = '08')then
               Aux := 'C' + '      ' + '01';

          {titulos do proprio bradesco}
          if (MOD_PAGAMENTO = '30') then
          begin
              for I := 1 TO 25 do
                  Aux :=  Aux + ' ';

              Aux := aux + '0';

              Aux := Aux + qrPagBradescoCNPJ.Value;

          end;

          {titulo de outros bancos}
          if (MOD_PAGAMENTO = '31') then
          begin
              Aux := Copy(qrPagBradescoBARRAS.Value, 20, 25);
              Aux := Aux + Copy(qrPagBradescoBARRAS.Value, 5, 1);
              Aux := Aux + Copy(qrPagBradescoBARRAS.Value, 4, 1);
          end;

          Size := LENGTH(AUX);
          for I := 1 TO 40 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //codigo area na empresa
          Linha := Linha + '00';

          //campo para uso na empresa
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 35 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //reserva
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 22 - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          //codigo de lan�amento
          Aux :=  '';//verificar com Rubens sobre isto
          Size := LENGTH(AUX);
          for I := 1 TO 5 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;

          //reserva
          Linha := Linha + ' ';


          //tipo de conta do fornecedor
          Linha := Linha +  '1';


          //conta complementar
          Aux :=   '';
          Size := LENGTH(AUX);
          for I := 1 TO 7 - Size do
              Aux := '0' + Aux;
          Linha := Linha +  Aux ;


          //reserva
          Aux := '' ;
          Size := LENGTH(AUX);
          for I := 1 TO 8  - Size do
              Aux :=  Aux + ' ';
          Linha := Linha +  Aux ;

          nseq := nseq + 1;

          Linha := Linha + FormatFloat('000000', nseq);

          Filex.Add(Linha);
          qrPagBradesco.Next;
      end;       //end while



{================================= TRAILER ====================================}

        Linha := '';

        Linha := Linha + '9';

        nseq := nseq + 1;

        Linha := Linha + FormatFloat('000000', nseq);


        Aux := FormatFloat('000000000000', Valor_total * 100);
        Size := LENGTH(AUX);
        for I := 1 TO 17 - Size do
            Aux := '0' + Aux;
        Linha := Linha +  Aux ;

        Aux := '';
        Size := LENGTH(AUX);
        for I := 1 TO 470 - Size do
            Aux :=  Aux + ' ';
        Linha := Linha +  Aux ;

        Linha := Linha + FormatFloat('000000', nseq);

        Filex.Add(Linha);






   Filex.SaveToFile(SaveDialog1.FileName);
   finally
       FreeAndNil(Filex);
   end;
end;

function TFGeraPagFor.RemoveDigitoAgencia(Agencia: string): string;
var aux, letra : string;
     i : Integer;
     achou : Boolean;
begin
     achou := False;
     i := 1;
     while i < Length(Agencia) do begin

         letra := Copy(Agencia, i , 1);
         if letra = '-' then
            achou := True
         else begin
             if achou = False then
                aux := aux + letra;
         end;

         Inc(i);
     end;
     Result := aux;

end;

procedure TFGeraPagFor.SISPAG_SANTANDER;
var F : TStringList;
    L : WideString;
    i : Integer;
    Aux : WideString;
    LotesRegistro : Integer;
    LotesGeral : Integer;
    LoteAtual : Integer;
    Contador : Integer;
    Valor_total: Double;
    TotalLotesCNAB : Integer;

    TOTAL_FINAL : Integer;

begin
     TOTAL_FINAL := 0;
     f := TStringList.Create;
     LoteAtual := 0;
     qrEmpresa.Close;
     qrEmpresa.Params[0].AsString := FChBor.Q_BANCBAN_CODI.AsString;
     qrEmpresa.open;

     TotalLotesCNAB := 0;
     //adiciona o header do arquivo no totalde regristrs
    // Inc(TotalLotesCNAB);
     L := '';
     L := L + writeString('033', 3); //codigo banco
     L := L + writeString('0000', 4);
     L := L + writeString('0', 1);
     L := L + writeString('', 9);
     L := L + writeString('2', 1);
     L := L + writeString(qrEmpresaCNPJ.AsString, 14);
     L := L + writeString('', 20);
     L := L + writeInt(qrEmpresaAgencia_PE.AsINTEGER, 5);
     L := L + writeString('', 1);
     L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12);
     L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1);
     L := L + writeString('', 1);

     L := L + writeString(qrEmpresaRAZAO.AsString, 30);
     L := L + writeString('Banco Itau', 30);
     L := L + writeString('', 10);
     L := L + writeString('1', 1);
     L := L + writeString(FormatDateTime('ddMMyyyy', Date), 8);
     L := L + writeString(FormatDateTime('hhmmss', now), 6);
     L := L + writeString('000000000', 6);
     L := L + writeString('060', 3);
     L := L + writeString('00000', 5);
     L := L + writeString('', 69);

     F.Add(L);

     TOTAL_FINAL := TOTAL_FINAL + 1;

     L := '';


     //traz os transferencia entre contas Itau
     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  AND B.NUMERO IN (33) '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;



     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin
         Inc(LoteAtual);

         Inc(TotalLotesCNAB);


         L := L + writeString('033', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1);
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO


         // SE FOR CODIGO DE BARRAS VERIFICA SE O TITULO � DO ITAU OU NAO
         IF qrItauTIPO_PAGAMENTO.AsString = 'B' then begin
            if Copy(qrItauBARRAS.AsString, 1, 3) = '341' then
                L := L + writeString('30', 2)
            else
                L := L + writeString('31', 2)
         end ;
         L := L + writeString('01', 2); //Codigo de opera��o transferencia entre contas
         L := L + writeString('031', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1); //BRANCO
         L := L + writeString('2', 1); //TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);  //CNPJ
         L := L + writeString('', 20); //IDENTIFICA��O
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeString(qrEmpresaRAZAO.AsString, 30);  //NOME DA EMPRESA
         L := L + writeString('', 40);   //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30); //RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5); //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);//CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8);    //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10);     //OCORRENCIAS EM BRANCO

         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0; //adiciona um pelo header
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('033', 3); //CODIGO
             L := L + writeInt(LoteAtual, 4); //numero do lote
             L := L + writeString('3', 1);   //tipo registro
             L := L + writeInt(Contador, 5);  //contador
             L := L + writeString('A', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('000', 3); //zeros
             L := L + writeint(qrItauCODIGOBANCO.AsInteger, 3); //CODIGO DO BANCO
             //AGENCIA CONTA

             Aux := '';
             Aux := Aux + writeInt(StrToInt(RemoveDigitoAgencia(qrItauBAN_AGEN.AsString)) , 5) + ' ';  //agencia
             Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 12);  //Conta
             Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 2); //Digito da conta


             L := L + writeString(qrItauFOR_RAZA.AsString, 30);//nome do favorecido
             L := L + writeString(qrItauDocumento.AsString, 20);  //titulo
             L := L + writeString( FormatDateTime('ddMMyyyy', qrItauVencimento.AsDateTime), 8); //data prev de pagamento
             L := L + writeString('009', 3);  //tipo de moeda
             L := L + writeInt(0, 19); //quantidade da moeda
             Aux :=  FormatFloat('##0.00', qrItauValorLiquido.AsFloat) ;//valor do pagamento
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 15);

             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L := L + writeString('', 20); //numero de rotorno em branco
             L := L + writeString('00000000', 8);  //data de efetiva��o real

             L := L + writeInt(0, 15); //valor real
             L := L + writeString('', 40); //mensagem
             L := L + writeString('07', 2);  //finalidade da ted nota 26
             L := L + writeString('', 21); //brancos

             f.Add(L);
             l:= '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;
             //escreve o trailer do lote
             //Inc(Contador);
             Inc(TotalLotesCNAB);//adiciona o trailer no total de registros L:= '';
             L := L + writeString('033', 3);  //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1);    //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador + 2, 6); //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;//valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeInt(0, 6); //aviso debito
             L := L + writeString('', 165); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
     end;












     //traz os pagamentos do tipo DOC C - credito em conta de terceiros
     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''D''  ' +
            '  AND B.NUMERO NOT IN (33) '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;



     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin
         Inc(LoteAtual);

         Inc(TotalLotesCNAB);


         L := L + writeString('033', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1);
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO


         // SE FOR CODIGO DE BARRAS VERIFICA SE O TITULO � DO ITAU OU NAO
         IF qrItauTIPO_PAGAMENTO.AsString = 'B' then begin
            if Copy(qrItauBARRAS.AsString, 1, 3) = '341' then
                L := L + writeString('30', 2)
            else
                L := L + writeString('31', 2)
         end ;
         L := L + writeString('01', 2); //Codigo de opera��o transferencia entre contas
         L := L + writeString('031', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1); //BRANCO
         L := L + writeString('2', 1); //TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);  //CNPJ
         L := L + writeString('', 20); //IDENTIFICA��O
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeString(qrEmpresaRAZAO.AsString, 30);  //NOME DA EMPRESA
         L := L + writeString('', 40);   //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30); //RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5); //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);//CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8);    //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10);     //OCORRENCIAS EM BRANCO

         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0; //adiciona um pelo header
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('033', 3); //CODIGO
             L := L + writeInt(LoteAtual, 4); //numero do lote
             L := L + writeString('3', 1);   //tipo registro
             L := L + writeInt(Contador, 5);  //contador
             L := L + writeString('A', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('000', 3); //zeros
             L := L + writeint(qrItauCODIGOBANCO.AsInteger, 3); //CODIGO DO BANCO
             //AGENCIA CONTA

             Aux := '';
             Aux := Aux + writeInt(StrToInt(RemoveDigitoAgencia(qrItauBAN_AGEN.AsString)) , 5) + ' ';  //agencia
             Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 12);  //Conta
             Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 2); //Digito da conta


             L := L + writeString(qrItauFOR_RAZA.AsString, 30);//nome do favorecido
             L := L + writeString(qrItauDocumento.AsString, 20);  //titulo
             L := L + writeString( FormatDateTime('ddMMyyyy', qrItauVencimento.AsDateTime), 8); //data prev de pagamento
             L := L + writeString('009', 3);  //tipo de moeda
             L := L + writeInt(0, 19); //quantidade da moeda
             Aux :=  FormatFloat('##0.00', qrItauValorLiquido.AsFloat) ;//valor do pagamento
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 15);

             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L := L + writeString('', 20); //numero de rotorno em branco
             L := L + writeString('00000000', 8);  //data de efetiva��o real

             L := L + writeInt(0, 15); //valor real
             L := L + writeString('', 40); //mensagem
             L := L + writeString('07', 2);  //finalidade da ted nota 26
             L := L + writeString('', 21); //brancos

             f.Add(L);
             l:= '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;
             //escreve o trailer do lote
             //Inc(Contador);
             Inc(TotalLotesCNAB);//adiciona o trailer no total de registros L:= '';
             L := L + writeString('033', 3);  //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1);    //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador + 2, 6); //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;//valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeInt(0, 6); //aviso debito
             L := L + writeString('', 165); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
     end;












//traz os pagamentos do tipo TED =
     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''T''  ' +
            '  AND B.NUMERO NOT IN (33) '
     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;



     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin
         Inc(LoteAtual);

         Inc(TotalLotesCNAB);


         L := L + writeString('033', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1);
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO


         // SE FOR CODIGO DE BARRAS VERIFICA SE O TITULO � DO ITAU OU NAO
         IF qrItauTIPO_PAGAMENTO.AsString = 'B' then begin
            if Copy(qrItauBARRAS.AsString, 1, 3) = '341' then
                L := L + writeString('30', 2)
            else
                L := L + writeString('31', 2)
         end ;
         L := L + writeString('01', 2); //Codigo de opera��o transferencia entre contas
         L := L + writeString('031', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1); //BRANCO
         L := L + writeString('2', 1); //TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);  //CNPJ
         L := L + writeString('', 20); //IDENTIFICA��O
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString('', 1); //BRANCOS
         L := L + writeString(qrEmpresaRAZAO.AsString, 30);  //NOME DA EMPRESA
         L := L + writeString('', 40);   //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30); //RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5); //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);//CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8);    //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10);     //OCORRENCIAS EM BRANCO

         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0; //adiciona um pelo header
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('033', 3); //CODIGO
             L := L + writeInt(LoteAtual, 4); //numero do lote
             L := L + writeString('3', 1);   //tipo registro
             L := L + writeInt(Contador, 5);  //contador
             L := L + writeString('A', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L := L + writeString('000', 3); //zeros
             L := L + writeint(qrItauCODIGOBANCO.AsInteger, 3); //CODIGO DO BANCO
             //AGENCIA CONTA

             Aux := '';
             Aux := Aux + writeInt(StrToInt(RemoveDigitoAgencia(qrItauBAN_AGEN.AsString)) , 5) + ' ';  //agencia
             Aux := Aux + writeInt(qrItauBAN_CONTA.AsInteger, 12);  //Conta
             Aux := Aux + writeString(qrItauBAN_DIGITOCC.AsString, 2); //Digito da conta


             L := L + writeString(qrItauFOR_RAZA.AsString, 30);//nome do favorecido
             L := L + writeString(qrItauDocumento.AsString, 20);  //titulo
             L := L + writeString( FormatDateTime('ddMMyyyy', qrItauVencimento.AsDateTime), 8); //data prev de pagamento
             L := L + writeString('009', 3);  //tipo de moeda
             L := L + writeInt(0, 19); //quantidade da moeda
             Aux :=  FormatFloat('##0.00', qrItauValorLiquido.AsFloat) ;//valor do pagamento
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 15);

             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L := L + writeString('', 20); //numero de rotorno em branco
             L := L + writeString('00000000', 8);  //data de efetiva��o real

             L := L + writeInt(0, 15); //valor real
             L := L + writeString('', 40); //mensagem
             L := L + writeString('07', 2);  //finalidade da ted nota 26
             L := L + writeString('', 21); //brancos

             f.Add(L);
             l:= '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;
             //escreve o trailer do lote
             //Inc(Contador);
             Inc(TotalLotesCNAB);//adiciona o trailer no total de registros L:= '';
             L := L + writeString('033', 3);  //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1);    //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador + 2, 6); //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;//valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 18); //zeros
             L := L + writeInt(0, 6); //aviso debito
             L := L + writeString('', 165); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
     end;



























     //****************************************************************************
     //Boletos bancarios
     //****************************************************************************





     qrItau.Close;
     qrItau.SQL.Clear;
     qrItau.sql.Add(
            '  SELECT CP.*, '+
            '  FORN.*, '+
            '  CHE.*, '+
            '  FB.*, '+
            '  B.NUMERO AS CODIGOBANCO, '+
            '  CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T''  '+
            '  ELSE ''I'' END AS TIPO_PAGAMENTO '+
            '  FROM   CPAPAGA CP inner join  CPAFORN FORN  '+
            '  ON CP.FORNECEDOR = FORN.FOR_CODI INNER JOIN CPACHEQ CHE  '+
            '  ON CP.NUMERO = CHE.NUMEROCP LEFT OUTER JOIN FORNECEDOR_BANCO FB  '+
            '  ON FB.FOR_CODI = FORN.FOR_CODI left outer join BANCOS B  '+
            '  ON B.BAN_ID = FB.BAN_ID  '+
            '  WHERE CHE.TIPO = ''S''  '+
            '  AND CHE.MARCADOR = ''*'' '+
            '  and CASE '+
            '  WHEN ISNULL(CP.BARRAS, '''') <> '''' THEN ''B''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido <= 5000 THEN ''D''  '+
            '  WHEN ISNULL(CP.BARRAS, '''') = '''' AND ISNULL(FB.BAN_AGEN, '''') <> '''' AND ValorLiquido > 5000 THEN ''T'' '+
            '  ELSE ''I'' END = ''B''  '

     );
     qrItau.Open;

     qrItau.Last;
     qrItau.First;

     //se tem registros ele grava o header
     if(qrItau.IsEmpty = False) then
     begin
         Inc(LoteAtual);

         Inc(TotalLotesCNAB);

         L := L + writeString('033', 3);
         L := L + writeInt(LoteAtual, 4);
         L := L + writeString('1', 1);
         L := L + writeString('C', 1); //TIPO DE OPERA��O
         L := L + writeString('20', 2);  //TIPO DE PAGAMENTO
         // SE FOR CODIGO DE BARRAS VERIFICA SE O TITULO � DO ITAU OU NAO
         IF qrItauTIPO_PAGAMENTO.AsString = 'B' then begin
            if Copy(qrItauBARRAS.AsString, 1, 3) = '033' then
                L := L + writeString('30', 2)
            else
                L := L + writeString('31', 2)
         end ;

         L := L + writeString('030', 3);//VERSAO DO LAYOUT
         L := L + writeString('', 1);//BRANCO
         L := L + writeString('2', 1);//TTIPO DE INSCRI��O = CNPJ
         L := L + writeString(qrEmpresaCNPJ.AsString, 14);//CNPJ
         L := L + writeString('', 20); //BRANCOS
         L := L + writeINT(qrEmpresaAgencia_PE.AsInteger, 5); //AGENCIA A DEBITAR DINHEIRO
         L := L + writeString('', 1); //BRANCO
         L := L + writeINT(qrEmpresaConta_PE.AsInteger, 12); //CONTA A SER DEBITADA
         L := L + writeINT(qrEmpresadgConta_PE.AsInteger, 1); //DAC DA CONTA
         L := L + writeString('', 1); //BRANCOS

         L := L + writeString(qrEmpresaRAZAO.AsString, 30); //NOME DA EMPRESA
         L := L + writeString('', 30); //FINALIDADE DEVE ESTAR EM BRANCO
         L := L + writeString('', 10);    //HISTORICO EM BRANCO

         Q_PARA.Open;

         L := L + writeString(Q_PARAENDERECO.AsString, 30);//RUA
         L := L + writeINT(Q_PARANUMERO.AsInteger, 5);  //NUMERO
         L := L + writeString('CASA', 15); //CASA
         L := L + writeString('SAO PAULO', 20);   //CIDADE
         L := L + writeString(Q_PARACEP.AsString, 8); //CEP
         L := L + writeString('SP', 2); //UF
         L := L + writeString('', 8);  //BRANCOS
         L := L + writeString('', 10); //OCORRENCIAS EM BRANCO
         F.Add(L);
         TOTAL_FINAL := TOTAL_FINAL + 1;
         L := '';


         //COME�AMOS A INFORMAR A MOVIMENTA��O DO LOTE
         Contador := 0;
         Valor_total := 0.00;
         qrItau.First;
         WHILE not qrItau.Eof DO BEGIN
             Inc(Contador);
             Inc(TotalLotesCNAB);
             L := L + writeString('033', 3);//CODIGO
             L := L + writeInt(LoteAtual, 4);//numero do lote
             L := L + writeString('3', 1);  //tipo registro
             L := L + writeInt(Contador, 5); //contador
             L := L + writeString('J', 1); //codigo do segmento
             L := L + writeString('000', 3); //tipo de movimento
             L:= L + writeString(qrItauBARRAS.AsString, 44); //codigo de barras
             L:= L + writeString(qrItauRazao.AsString, 30);//nome
             L:= L + writeString(FormatDateTime('DDMMYYYY', qrItauVencimento.AsDateTime), 8); //data do vencimento
             L:= L + writeInt(StrToInt(FormatFloat('000', qrItauValorLiquido.AsFloat * 100)), 15);//valor do titulo
             Valor_total := Valor_total + qrItauValorLiquido.AsFloat;
             L:= L + writeInt(0, 15);//valor do desconto
             L:= L + writeint(0, 15); //valor multa
             L:= L + writeString(FormatDateTime('DDMMYYYY', qrItauVencimento.AsDateTime), 8); //data do pagamento
             L:= L + writeInt(StrToInt(FormatFloat('000', qrItauValorLiquido.AsFloat * 100)), 15); //valor do pagamento
             L:= L + writeint(0, 15); //zeros
             L:= L + writeString(qrItauDocumento.AsString, 20); //numero de documento
             L:= L + writeString('', 20); //brancos
             L:= L + writeString('00', 2); //moeda
             L:= L + writeString('', 6);  //ocorrencias
             L:= L + writeString('', 10);  //ocorrencias
             f.Add(L);
             L := '';
             TOTAL_FINAL := TOTAL_FINAL + 1;
             qrItau.Next;
         end;

         //escreve o trailer do lote
             L:= '';
             L := L + writeString('033', 3); //numero do banco
             L := L + writeint(LoteAtual, 4); //codigo do lote
             L := L + writeString('5', 1); //tipo de registro
             L := L + writeString('', 9); //brancos
             L := L + writeInt(Contador+ 2, 6);  //total de registros do lote
             Aux :=  FormatFloat('##0.00', Valor_total) ;  //valor total dos pagamentos
             Aux := StringReplace(aux, ',', '', [rfReplaceAll]);
             L := L + writeint(StrToInt(Aux), 18);
             Valor_total := 0;
             L := L + writeInt(0, 15); //zeros
             L := L + writeInt(0, 6); //aviso debito
             L := L + writeString('', 165); //brancos
             L := L + writeString('', 10); //ocorrencias
             f.Add(L);
             TOTAL_FINAL := TOTAL_FINAL + 1;
             L := '';
     end;



     //escreve o trailer do arquivo
     L:= '';

     //add o trailer dos registros
     Inc(TotalLotesCNAB);
     //Inc(LoteAtual);
     //codigo

     TOTAL_FINAL := TOTAL_FINAL + 1;
     L := L + writeString('033', 3); //codigo banco
     L := L + writestring('9999', 4);
     L := L + writeString('9', 1);
     L := L + writeString('', 9);
     L := L + writeInt(LoteAtual, 6);//qtde lotes
     L := L + writeInt(TOTAL_FINAL, 6);//qtde registros
     L := L + writeString('', 211);
     f.Add(L);
     L:= '';


     f.SaveToFile(SaveDialog1.FileName);

     ShowMessage('Gera��o efetuada com sucesso');

end;

end.

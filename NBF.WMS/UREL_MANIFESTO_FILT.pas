unit UREL_MANIFESTO_FILT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ADODB, DBClient, Provider, Mask, Grids, Wwdbigrd,
  Wwdbgrid, JvProgressBar, DBGrids, JvExDBGrids, JvDBGrid, wwdblook, ComObj;

type
  TfrmREL_MANIFESTO_FILT = class(TForm)
    qrMani: TADOQuery;
    BitBtn1: TBitBtn;
    qrManiMANI_ID: TAutoIncField;
    dspMani: TDataSetProvider;
    cdsMani: TClientDataSet;
    cdsManiMANI_ID: TAutoIncField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    qrApagaRegistros: TADOQuery;
    JvGradientProgressBar1: TJvGradientProgressBar;
    lbProgress: TLabel;
    cdsRelManifesto: TClientDataSet;
    qrRelManifesto: TADOQuery;
    dspRelManifesto: TDataSetProvider;
    qrManiMANI_DATA: TDateTimeField;
    cdsManiMANI_DATA: TDateTimeField;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    qrClienteNBF: TADOQuery;
    qrClienteNBFCLIN_RAZA: TStringField;
    qrClienteNBFCLIN_ID: TAutoIncField;
    cboClienteNBF: TwwDBLookupCombo;
    dspClienteNBF: TDataSetProvider;
    cdsClienteNBF: TClientDataSet;
    cdsClienteNBFCLIN_RAZA: TStringField;
    cdsClienteNBFCLIN_ID: TAutoIncField;
    cboClienteFinal: TwwDBLookupCombo;
    qrClienteFinal: TADOQuery;
    DSPClienteFinal: TDataSetProvider;
    CDSClienteFinal: TClientDataSet;
    CDSClienteFinalCLIF_RAZA: TStringField;
    CDSClienteFinalCLIF_ID: TAutoIncField;
    qrManiVEIC_ID: TIntegerField;
    qrManiREG_ID: TIntegerField;
    cdsManiVEIC_ID: TIntegerField;
    cdsManiREG_ID: TIntegerField;
    qrConhecimentos: TADOQuery;
    dspConhecimentos: TDataSetProvider;
    cdsConhecimentos: TClientDataSet;
    qrConhecimentosORD_ID: TAutoIncField;
    qrConhecimentosOS_ID: TIntegerField;
    qrConhecimentosMANI_ID: TIntegerField;
    qrConhecimentosTRANS_ID: TIntegerField;
    qrConhecimentosVEIC_ID: TIntegerField;
    qrConhecimentosVEIC_ID_RECEB: TIntegerField;
    qrConhecimentosREG_ID: TIntegerField;
    qrConhecimentosORD_PESO_TOTAL: TFloatField;
    qrConhecimentosORD_QTDE_PALLET: TFloatField;
    qrConhecimentosORD_VOLUME: TFloatField;
    qrConhecimentosORD_VALORTOTAL: TFloatField;
    qrConhecimentosORD_COLETA_ENTREGA: TStringField;
    qrConhecimentosORD_COL_ENDERECO: TStringField;
    qrConhecimentosORD_COL_ENDERECO_COMPL: TStringField;
    qrConhecimentosORD_COL_ENDERECO_BAIRRO: TStringField;
    qrConhecimentosMUN_ID_COL: TIntegerField;
    qrConhecimentosORD_COL_MUNICIPIO: TStringField;
    qrConhecimentosUF_SIGLA_COL: TStringField;
    qrConhecimentosORD_COL_CEP: TStringField;
    qrConhecimentosORD_COL_TEL1: TStringField;
    qrConhecimentosORD_COL_TEL2: TStringField;
    qrConhecimentosORD_COL_FAX: TStringField;
    qrConhecimentosORD_COL_EMAIL: TStringField;
    qrConhecimentosORD_COL_CONTATO: TStringField;
    qrConhecimentosORD_ENT_ENDERECO: TStringField;
    qrConhecimentosORD_ENT_ENDERECO_COMPL: TStringField;
    qrConhecimentosORD_ENT_ENDERECO_BAIRRO: TStringField;
    qrConhecimentosMUN_ID_ENT: TIntegerField;
    qrConhecimentosORD_ENT_MUNICIPIO: TStringField;
    qrConhecimentosUF_SIGLA_ENT: TStringField;
    qrConhecimentosORD_ENT_CEP: TStringField;
    qrConhecimentosORD_ENT_TEL1: TStringField;
    qrConhecimentosORD_ENT_TEL2: TStringField;
    qrConhecimentosORD_ENT_FAX: TStringField;
    qrConhecimentosORD_ENT_EMAIL: TStringField;
    qrConhecimentosORD_ENT_CONTATO: TStringField;
    qrConhecimentosCLIF_ID: TIntegerField;
    qrConhecimentosORD_TPCARGA: TStringField;
    qrConhecimentosORD_QTDE_UV: TFloatField;
    qrConhecimentosORD_REDESPACHO: TStringField;
    qrConhecimentosORD_PLACA: TStringField;
    qrConhecimentosCFA_ID: TIntegerField;
    qrConhecimentosORD_TOTALPREST: TFloatField;
    qrConhecimentosORD_VLR_ICMS: TFloatField;
    qrConhecimentosORD_NOTAS: TStringField;
    qrConhecimentosTRANS_ID_REDES: TIntegerField;
    qrConhecimentosORD_PAGO: TStringField;
    qrConhecimentosCLIN_ID: TIntegerField;
    qrConhecimentosORD_CONSIGN: TStringField;
    qrConhecimentosORD_VLR_FRETE: TFloatField;
    qrConhecimentosORD_VLR_SECCAT: TFloatField;
    qrConhecimentosORD_VLR_DESPACHO: TFloatField;
    qrConhecimentosORD_VLR_PEDAGIO: TFloatField;
    qrConhecimentosORD_VLR_OUTROS: TFloatField;
    qrConhecimentosORD_CONH: TStringField;
    qrConhecimentosORD_ALIQ: TFloatField;
    qrConhecimentosMARCADOR: TStringField;
    qrConhecimentosORD_MINUTA: TStringField;
    qrConhecimentosORD_STATUS: TStringField;
    qrConhecimentosORD_DATA: TDateTimeField;
    qrConhecimentosORD_OBS: TStringField;
    qrConhecimentosORD_GENERICO: TStringField;
    qrRelManifestoID: TAutoIncField;
    qrRelManifestoMANIFESTO: TIntegerField;
    qrRelManifestoNOTAS: TStringField;
    qrRelManifestoQTDE_UV: TFloatField;
    qrRelManifestoPESO: TFloatField;
    qrRelManifestoVALOR: TFloatField;
    qrRelManifestoDESTINATARIO: TStringField;
    qrRelManifestoENTREGAS: TIntegerField;
    qrRelManifestoVEICULOS: TIntegerField;
    qrRelManifestoDATA_MANI: TDateTimeField;
    qrRelManifestoTIPO_VEICULO: TIntegerField;
    qrRelManifestoREGIAO: TIntegerField;
    qrRelManifestoDATA_CONH: TDateTimeField;
    qrRelManifestoFRETE: TFloatField;
    qrRelManifestoOUTROS: TFloatField;
    qrRelManifestoICMS: TFloatField;
    qrRelManifestoTOTAL: TFloatField;
    qrRelManifestoFRETE_OP: TFloatField;
    qrRelManifestoNSS_FRETE: TFloatField;
    qrRelManifestoOUTROS_OP: TFloatField;
    qrRelManifestoTOTAL_OP: TFloatField;
    qrRelManifestoUSUARIO: TIntegerField;
    cdsRelManifestoID: TAutoIncField;
    cdsRelManifestoMANIFESTO: TIntegerField;
    cdsRelManifestoNOTAS: TStringField;
    cdsRelManifestoQTDE_UV: TFloatField;
    cdsRelManifestoPESO: TFloatField;
    cdsRelManifestoVALOR: TFloatField;
    cdsRelManifestoDESTINATARIO: TStringField;
    cdsRelManifestoENTREGAS: TIntegerField;
    cdsRelManifestoVEICULOS: TIntegerField;
    cdsRelManifestoDATA_MANI: TDateTimeField;
    cdsRelManifestoTIPO_VEICULO: TIntegerField;
    cdsRelManifestoREGIAO: TIntegerField;
    cdsRelManifestoDATA_CONH: TDateTimeField;
    cdsRelManifestoFRETE: TFloatField;
    cdsRelManifestoOUTROS: TFloatField;
    cdsRelManifestoICMS: TFloatField;
    cdsRelManifestoTOTAL: TFloatField;
    cdsRelManifestoFRETE_OP: TFloatField;
    cdsRelManifestoNSS_FRETE: TFloatField;
    cdsRelManifestoOUTROS_OP: TFloatField;
    cdsRelManifestoTOTAL_OP: TFloatField;
    cdsRelManifestoUSUARIO: TIntegerField;
    qrManiMANI_VFRETEPAG: TFloatField;
    cdsManiMANI_VFRETEPAG: TFloatField;
    DataSource1: TDataSource;
    cdsConhecimentosORD_ID: TAutoIncField;
    cdsConhecimentosOS_ID: TIntegerField;
    cdsConhecimentosMANI_ID: TIntegerField;
    cdsConhecimentosTRANS_ID: TIntegerField;
    cdsConhecimentosVEIC_ID: TIntegerField;
    cdsConhecimentosVEIC_ID_RECEB: TIntegerField;
    cdsConhecimentosREG_ID: TIntegerField;
    cdsConhecimentosORD_PESO_TOTAL: TFloatField;
    cdsConhecimentosORD_QTDE_PALLET: TFloatField;
    cdsConhecimentosORD_VOLUME: TFloatField;
    cdsConhecimentosORD_VALORTOTAL: TFloatField;
    cdsConhecimentosORD_COLETA_ENTREGA: TStringField;
    cdsConhecimentosORD_COL_ENDERECO: TStringField;
    cdsConhecimentosORD_COL_ENDERECO_COMPL: TStringField;
    cdsConhecimentosORD_COL_ENDERECO_BAIRRO: TStringField;
    cdsConhecimentosMUN_ID_COL: TIntegerField;
    cdsConhecimentosORD_COL_MUNICIPIO: TStringField;
    cdsConhecimentosUF_SIGLA_COL: TStringField;
    cdsConhecimentosORD_COL_CEP: TStringField;
    cdsConhecimentosORD_COL_TEL1: TStringField;
    cdsConhecimentosORD_COL_TEL2: TStringField;
    cdsConhecimentosORD_COL_FAX: TStringField;
    cdsConhecimentosORD_COL_EMAIL: TStringField;
    cdsConhecimentosORD_COL_CONTATO: TStringField;
    cdsConhecimentosORD_ENT_ENDERECO: TStringField;
    cdsConhecimentosORD_ENT_ENDERECO_COMPL: TStringField;
    cdsConhecimentosORD_ENT_ENDERECO_BAIRRO: TStringField;
    cdsConhecimentosMUN_ID_ENT: TIntegerField;
    cdsConhecimentosORD_ENT_MUNICIPIO: TStringField;
    cdsConhecimentosUF_SIGLA_ENT: TStringField;
    cdsConhecimentosORD_ENT_CEP: TStringField;
    cdsConhecimentosORD_ENT_TEL1: TStringField;
    cdsConhecimentosORD_ENT_TEL2: TStringField;
    cdsConhecimentosORD_ENT_FAX: TStringField;
    cdsConhecimentosORD_ENT_EMAIL: TStringField;
    cdsConhecimentosORD_ENT_CONTATO: TStringField;
    cdsConhecimentosCLIF_ID: TIntegerField;
    cdsConhecimentosORD_TPCARGA: TStringField;
    cdsConhecimentosORD_QTDE_UV: TFloatField;
    cdsConhecimentosORD_REDESPACHO: TStringField;
    cdsConhecimentosORD_PLACA: TStringField;
    cdsConhecimentosCFA_ID: TIntegerField;
    cdsConhecimentosORD_TOTALPREST: TFloatField;
    cdsConhecimentosORD_VLR_ICMS: TFloatField;
    cdsConhecimentosORD_NOTAS: TStringField;
    cdsConhecimentosTRANS_ID_REDES: TIntegerField;
    cdsConhecimentosORD_PAGO: TStringField;
    cdsConhecimentosCLIN_ID: TIntegerField;
    cdsConhecimentosORD_CONSIGN: TStringField;
    cdsConhecimentosORD_VLR_FRETE: TFloatField;
    cdsConhecimentosORD_VLR_SECCAT: TFloatField;
    cdsConhecimentosORD_VLR_DESPACHO: TFloatField;
    cdsConhecimentosORD_VLR_PEDAGIO: TFloatField;
    cdsConhecimentosORD_VLR_OUTROS: TFloatField;
    cdsConhecimentosORD_CONH: TStringField;
    cdsConhecimentosORD_ALIQ: TFloatField;
    cdsConhecimentosMARCADOR: TStringField;
    cdsConhecimentosORD_MINUTA: TStringField;
    cdsConhecimentosORD_STATUS: TStringField;
    cdsConhecimentosORD_DATA: TDateTimeField;
    cdsConhecimentosORD_OBS: TStringField;
    cdsConhecimentosORD_GENERICO: TStringField;
    qrConhecimentosCLIF_RAZA: TStringField;
    cdsConhecimentosCLIF_RAZA: TStringField;
    qrRelManifestoCONHECIMENTO: TStringField;
    cdsRelManifestoCONHECIMENTO: TStringField;
    qrManiPESO_TOTAL: TFloatField;
    cdsManiPESO_TOTAL: TFloatField;
    qrRegiao: TADOQuery;
    qrRegiaoREG_ID: TAutoIncField;
    qrRegiaoREG_NOME: TStringField;
    dspRegiao: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    cdsRegiaoREG_ID: TAutoIncField;
    cdsRegiaoREG_NOME: TStringField;
    qrTPVeiculo: TADOQuery;
    dspTPVeiculo: TDataSetProvider;
    cdsTPVeiculo: TClientDataSet;
    qrTPVeiculoVEIC_ID: TAutoIncField;
    qrTPVeiculoVEIC_NOME: TStringField;
    qrTPVeiculoVEIC_ORDEM: TIntegerField;
    cdsTPVeiculoVEIC_ID: TAutoIncField;
    cdsTPVeiculoVEIC_NOME: TStringField;
    cdsTPVeiculoVEIC_ORDEM: TIntegerField;
    qrTotaisRegiao: TADOQuery;
    qrTotaisRegiaoREG_NOME: TStringField;
    qrTotaisRegiaoQTDE_UV: TFloatField;
    qrTotaisRegiaoPESO: TFloatField;
    qrTotaisRegiaoVALOR: TFloatField;
    qrTotaisRegiaoENTREGAS: TIntegerField;
    qrTotaisRegiaoVEICULOS: TIntegerField;
    qrTotaisRegiaoPESO_MEDIO: TFloatField;
    qrTotaisRegiaoVALOR_MEDIO: TFloatField;
    qrTotaisRegiaoTOTAL: TFloatField;
    qrTotaisRegiaoFRETE: TFloatField;
    qrTotaisRegiaoFR_S_FAT: TFloatField;
    qrTotaisRegiaoFRETE_KG: TFloatField;
    qrTotaisRegiaoFRETE_TON: TFloatField;
    dspTotaisRegiao: TDataSetProvider;
    cdsTotaisRegiao: TClientDataSet;
    cdsTotaisRegiaoREG_NOME: TStringField;
    cdsTotaisRegiaoQTDE_UV: TFloatField;
    cdsTotaisRegiaoPESO: TFloatField;
    cdsTotaisRegiaoVALOR: TFloatField;
    cdsTotaisRegiaoENTREGAS: TIntegerField;
    cdsTotaisRegiaoVEICULOS: TIntegerField;
    cdsTotaisRegiaoPESO_MEDIO: TFloatField;
    cdsTotaisRegiaoVALOR_MEDIO: TFloatField;
    cdsTotaisRegiaoTOTAL: TFloatField;
    cdsTotaisRegiaoFRETE: TFloatField;
    cdsTotaisRegiaoFR_S_FAT: TFloatField;
    cdsTotaisRegiaoFRETE_KG: TFloatField;
    cdsTotaisRegiaoFRETE_TON: TFloatField;
    qrTotaisRegiaoOUTROS: TFloatField;
    cdsTotaisRegiaoOUTROS: TFloatField;
    qrTotaisRegiaoICMS: TFloatField;
    cdsTotaisRegiaoICMS: TFloatField;
    qrTotaisVeiculo: TADOQuery;
    qrTotaisVeiculoVEIC_NOME: TStringField;
    qrTotaisVeiculoQTDE_UV: TFloatField;
    qrTotaisVeiculoPESO: TFloatField;
    qrTotaisVeiculoVALOR: TFloatField;
    qrTotaisVeiculoENTREGAS: TIntegerField;
    qrTotaisVeiculoVEICULOS: TIntegerField;
    qrTotaisVeiculoPESO_MEDIO: TFloatField;
    qrTotaisVeiculoVALOR_MEDIO: TFloatField;
    qrTotaisVeiculoTOTAL: TFloatField;
    qrTotaisVeiculoFRETE: TFloatField;
    qrTotaisVeiculoFR_S_FAT: TFloatField;
    qrTotaisVeiculoFRETE_KG: TFloatField;
    qrTotaisVeiculoFRETE_TON: TFloatField;
    dspTotaisVEiculo: TDataSetProvider;
    cdsTotaisVeiculo: TClientDataSet;
    cdsTotaisVeiculoVEIC_NOME: TStringField;
    cdsTotaisVeiculoQTDE_UV: TFloatField;
    cdsTotaisVeiculoPESO: TFloatField;
    cdsTotaisVeiculoVALOR: TFloatField;
    cdsTotaisVeiculoENTREGAS: TIntegerField;
    cdsTotaisVeiculoVEICULOS: TIntegerField;
    cdsTotaisVeiculoPESO_MEDIO: TFloatField;
    cdsTotaisVeiculoVALOR_MEDIO: TFloatField;
    cdsTotaisVeiculoTOTAL: TFloatField;
    cdsTotaisVeiculoFRETE: TFloatField;
    cdsTotaisVeiculoFR_S_FAT: TFloatField;
    cdsTotaisVeiculoFRETE_KG: TFloatField;
    cdsTotaisVeiculoFRETE_TON: TFloatField;
    qrTotaisVeiculoOUTROS: TFloatField;
    qrTotaisVeiculoICMS: TFloatField;
    cdsTotaisVeiculoOUTROS: TFloatField;
    cdsTotaisVeiculoICMS: TFloatField;
    qrTotais: TADOQuery;
    qrTotaisQTDE_UV: TFloatField;
    qrTotaisPESO: TFloatField;
    qrTotaisVALOR: TFloatField;
    qrTotaisENTREGAS: TIntegerField;
    qrTotaisVEICULOS: TIntegerField;
    qrTotaisPESO_MEDIO: TFloatField;
    qrTotaisVALOR_MEDIO: TFloatField;
    qrTotaisTOTAL: TFloatField;
    qrTotaisFRETE: TFloatField;
    qrTotaisFR_S_FAT: TFloatField;
    qrTotaisFRETE_KG: TFloatField;
    qrTotaisFRETE_TON: TFloatField;
    qrTotaisOUTROS: TFloatField;
    qrTotaisICMS: TFloatField;
    qrNotasSemConh: TADOQuery;
    qrNotasSemConhNFI_NUMERO: TStringField;
    qrNotasSemConhNFI_QTDEUV: TFloatField;
    qrNotasSemConhNFI_PBRU: TFloatField;
    qrNotasSemConhNFI_TOTA: TFloatField;
    qrNotasSemConhNFI_DEST_RAZA: TStringField;
    qrNotasSemConhORD_CONH: TStringField;
    qrNotasSemConhORD_STATUS: TStringField;
    qrNotasSemConhNFI_EMIT_CLI: TIntegerField;
    qrAux: TADOQuery;
    qrAuxCLIN_RAZA: TStringField;
    qrRelManifestoRemetente: TStringField;
    cdsRelManifestoRemetente: TStringField;
    qrConhecimentosNFSE: TStringField;
    cdsConhecimentosNFSE: TStringField;
    qrRelManifestoNFSE: TStringField;
    cdsRelManifestoNFSE: TStringField;
    qry1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ProgressBarLoad(max :Integer; caption : string);
    procedure ProgressBarUnload;
    procedure IncProgressBar;
    procedure cboClienteNBFCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cdsRelManifestoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    function RateioDeFrete (value : Double) : Double;
    function Porcentagem(value : Double) : Double;
  public
    { Public declarations }
  end;

var
  frmREL_MANIFESTO_FILT: TfrmREL_MANIFESTO_FILT;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmREL_MANIFESTO_FILT.BitBtn1Click(Sender: TObject);
const
  XlBottom = -4107;
  XlLeft = -4131;
  XlRight = -4152;
  XlTop = -4160;
  XlHAlignCenter = -4108;

var d1, d2 : TDateTime;
    veiculo : Integer;
    excel,ColumnRange :Variant;
    linha, contaConhecimento : Integer; 
    QTDEUV, PESO, VALOR, ENTREGAS, VEICULOS, FRETE, OUTROS, ICMS, TOTALOE, FRETEOP, INSS, TOTALOP: Double;

begin
  QTDEUV := 0;
  PESO:= 0;
  VALOR:= 0;
  ENTREGAS:= 0;
  VEICULOS:= 0;
  FRETE:= 0;
  OUTROS:= 0;
  ICMS:= 0;
  TOTALOE:= 0;
  FRETEOP:= 0;
  INSS:= 0;
  TOTALOP := 0;

        try
            d1 := StrToDate(MaskEdit1.Text);
            d2 := StrToDate(MaskEdit2.Text);
        except
            MessageBox(Self.Handle, 'Data inválida','Erro', MB_OK + MB_ICONERROR);
            Abort;
        end;

        //APAGAMOS OS REGISTROS NA TABELA E ABRIMOS A TABELA TEMP
        qrApagaRegistros.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
        qrApagaRegistros.ExecSQL;


        cdsRelManifesto.CLOSE;
        qrRelManifesto.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
        cdsRelManifesto.Open;




        {MIGUEL - BUSCAMOS OS MANIFESTOS PELOS FILTROS - A ROTINA USA DADOS TEMPORARIOS, USANDO CLIENTDATASET}
        cdsMani.Close;
        with qrMani do
        begin
            Close;
            sql.Clear;

            SQL.Add('SELECT');
            SQL.Add('        A.MANI_ID, ');
            SQL.Add('        A.MANI_DATA, ');
            SQL.Add('        A.VEIC_ID, ');
            SQL.Add('        A.REG_ID, ');
            SQL.Add('        A.MANI_VFRETEPAG, ');
            SQL.Add('        SUM(B.ORD_PESO_TOTAL) AS PESO_TOTAL ');
            SQL.Add('FROM ');
            SQL.Add('        MANIFESTO A WITH(NOLOCK) ');
            SQL.Add('        left outer JOIN ORDEM_COLETA_ENTREGA B WITH(NOLOCK) ON A.MANI_ID = B.MANI_ID ');
            SQL.Add('WHERE CONVERT(CHAR(10), A.MANI_DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', d1)));
            SQL.Add('AND CONVERT(CHAR(10), A.MANI_DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', d2)));
           // SQL.Add('AND  A.CONFIRMA_MANI = ''S''  ');

            IF cboClienteNBF.Text <> '' then
                SQL.Add('AND B.CLIN_ID = ' + cboClienteNBF.LookupValue);

            IF cboClienteFinal.Text <> '' then
                SQL.Add('AND B.CLIF_ID = ' + cboClienteFinal.LookupValue);

            SQL.Add('GROUP BY ');
            SQL.Add('        A.MANI_ID, ');
            SQL.Add('        A.MANI_DATA, ');
            SQL.Add('        A.VEIC_ID,');
            SQL.Add('        A.REG_ID, ');
            SQL.Add('        A.MANI_VFRETEPAG  ');
            SQL.Add('ORDER BY A.MANI_ID ');

        end;
        cdsMani.Open;
        cdsMani.Last;

        ProgressBarLoad(cdsMani.RecordCount, 'Buscando informações...');



        //iniciamos uma instancia para trabalhar com o excel
        Excel := CreateOleObject('excel.application');

        Excel.WorkBooks.Add;

        //cabeçalho
        Excel.Cells[1,1] := 'Relatório de Manifestos de Transporte';
        Excel.Rows[1].RowHeight := 24.75;
        Excel.Range['A1:A1'].Font.Size := 16;

        //filtros:  Periodo
        Excel.Cells[2,1] := 'Período de ' + FormatDateTime('DD/MM/YYYY', D1) + ' até ' + FormatDateTime('DD/MM/YYYY', D2);
        Excel.Rows[2].RowHeight := 18.75;
        Excel.Range['A2:A2'].Font.Size := 10;

        //filtros:  Cliente NBF
        if cboClienteNBF.Text <> '' then
                Excel.Cells[3,1] := 'Cliente NBF: ' + cboClienteNBF.Text
        else
                Excel.Cells[3,1] := 'Cliente NBF: Todos';
        Excel.Rows[3].RowHeight := 18.75;
        Excel.Range['A3:A3'].Font.Size := 10;

        //filtros:  Cliente Final
        if cboClienteFinal.Text <> '' then
                Excel.Cells[4,1] := 'Cliente Final: ' + cboClienteFinal.Text
        else
                Excel.Cells[4,1] := 'Cliente Final: Todos';
        Excel.Rows[4].RowHeight := 18.75;
        Excel.Range['A4:A4'].Font.Size := 10;









        Excel.Workbooks[1].WorkSheets[1].Name := 'Manifestos';


        //ordenação das colunas
        ColumnRange := Excel.Workbooks[1].WorkSheets[1].Columns;

        Excel.Cells[5,1] := 'Manifesto de Carga';
        Excel.Cells[5,5] := 'Nota Fiscal';
        Excel.Cells[5,13] := 'Conhecimento de Carga';
        Excel.Cells[5,19] := 'Custo Operacional';

        Excel.Range['A5:D5'].Mergecells := True;
        Excel.Range['A5:D5'].Borders.LineStyle := 1;
        Excel.Range['A5:D5'].interior.color := $00C8C8C8;
        Excel.Range['E5:J5'].Mergecells := True;
        Excel.Range['E5:J5'].Borders.LineStyle := 1;
        Excel.Range['E5:J5'].interior.color := $00C8C8C8;
        Excel.Range['M5:R5'].Mergecells := True;
        Excel.Range['M5:R5'].Borders.LineStyle := 1;
        Excel.Range['M5:R5'].interior.color := $00C8C8C8;
        Excel.Range['S5:V5'].Mergecells := True;
        Excel.Range['S5:V5'].Borders.LineStyle := 1;
        Excel.Range['S5:V5'].interior.color := $00C8C8C8;

        Excel.Cells[5,1].HorizontalAlignment := XlHAlignCenter;
        Excel.Cells[5,5].HorizontalAlignment := XlHAlignCenter;
        Excel.Cells[5,13].HorizontalAlignment := XlHAlignCenter;
        Excel.Cells[5,19].HorizontalAlignment := XlHAlignCenter;



        //altera o tamanho da fonte do cabeçalho da s linhas
        Excel.Range['A6:V6'].Font.Size := 9;
        //altera a cor da linha
        Excel.Range['A6:V6'].interior.color := $00C8C8C8;

        Excel.Range['A6:V6'].Borders.LineStyle := 1;

        ColumnRange.Columns[1].ColumnWidth := 9;
        Excel.Cells[6,1] := 'N°';
        ColumnRange.Columns[2].ColumnWidth := 10;
        Excel.Cells[6,2] := 'Data';
        ColumnRange.Columns[3].ColumnWidth := 13;
        Excel.Cells[6,3] := 'TP Veiculo';
        ColumnRange.Columns[4].ColumnWidth := 20;
        Excel.Cells[6,4] := 'Região';
        ColumnRange.Columns[5].ColumnWidth := 30;
        Excel.Cells[6,5] := 'Notas Fiscais ';
        ColumnRange.Columns[6].ColumnWidth := 9;
        Excel.Cells[6,6] := 'Qtde UV';
        ColumnRange.Columns[7].ColumnWidth := 10;
        Excel.Cells[6,7] := 'Peso';
        ColumnRange.Columns[8].ColumnWidth := 11;
        Excel.Cells[6,8] := 'Valor';

        ColumnRange.Columns[9].ColumnWidth := 30;
        Excel.Cells[6,9] := 'Remetente';


        ColumnRange.Columns[10].ColumnWidth := 30;
        Excel.Cells[6,10] := 'Destinatário';
        ColumnRange.Columns[11].ColumnWidth := 9;
        Excel.Cells[6,11] := 'Entregas';
        ColumnRange.Columns[12].ColumnWidth := 9;
        Excel.Cells[6,12] := 'Veiculos';
        ColumnRange.Columns[13].ColumnWidth := 10;
        Excel.Cells[6,13] := 'CTRC Nº';
        ColumnRange.Columns[14].ColumnWidth := 10;
        Excel.Cells[6,14] := 'Emissão';
        ColumnRange.Columns[15].ColumnWidth := 11;
        Excel.Cells[6,15] := 'Frete';
        ColumnRange.Columns[16].ColumnWidth := 11;
        Excel.Cells[6,16] := 'Outros';
        ColumnRange.Columns[17].ColumnWidth := 11;
        Excel.Cells[6,17] := 'ICMS';
        ColumnRange.Columns[18].ColumnWidth := 11;
        Excel.Cells[6,18] := 'Total';
        ColumnRange.Columns[19].ColumnWidth := 11;
        Excel.Cells[6,19] := 'Frete Op';
        ColumnRange.Columns[20].ColumnWidth := 12;
        Excel.Cells[6,20] := 'INSS s/Frete';
        ColumnRange.Columns[21].ColumnWidth := 11;
        Excel.Cells[6,21] := 'Outros';
        ColumnRange.Columns[22].ColumnWidth := 11;
        Excel.Cells[6,22] := 'Total';
        Excel.Cells[6,23] := 'RPS';




        veiculo := 0;
        linha := 6;



        {INICIA A MANIPULAÇÃO DOS DADOS}
        cdsMani.First;
        while not cdsMani.Eof do
        begin

             {BUSCAR INFORMAÇÕES SOBRE ORDEM DE COLETA ENTREGA A PARTIR DAS FATURAS}
             cdsConhecimentos.Close;
             with qrConhecimentos do
             begin
               Close;
               sql.Clear;
               sql.Add(
                 ' SELECT  A.*, B.CLIF_RAZA, dbo.NFSEORD(A.ORD_ID, A.GEROU_NFSE) as NFSE FROM ORDEM_COLETA_ENTREGA A INNER JOIN CLIENTEFINAL B ON A.CLIF_ID = B.CLIF_ID '+
                 ' WHERE MANI_ID = ' +  cdsManiMANI_ID.AsString +
                 ' AND (A.ORD_STATUS = ''E'' OR A.GEROU_NFSE = ''S'' )');

                 if cboClienteNBF.Text <> '' then
                        sql.Add('AND A.CLIN_ID = ' + cboClienteNBF.LookupValue);

                 if cboClienteFinal.Text <> '' then
                        sql.Add('AND A.CLIF_ID = ' + cboClienteFinal.LookupValue);

               sql.Add(' ORDER BY ORD_CONH ');
             end;
             cdsConhecimentos.Open;
             contaConhecimento := 0;


        cdsConhecimentos.Last;
        contaConhecimento := cdsConhecimentos.RecordCount;

        {---------------------------------------------------------------------}

        //verifica se nao teve conhecimentos e adiciona as notas sem valores do conhecimento

        IF contaConhecimento = 0 then begin

                qrNotasSemConh.Close;
                qrNotasSemConh.Parameters[0].Value := cdsManiMANI_ID.AsInteger;
                qrNotasSemConh.Open;

                while not qrNotasSemConh.Eof do begin

                          Inc(linha);
                          //LOCALIZAMOS OS VALORES NOS CDSS
                          cdsRegiao.Locate('REG_ID', cdsManiREG_ID.Value, []);
                          cdsTPVeiculo.Locate('VEIC_ID', cdsManiVEIC_ID.Value, []);


                          //Alteramos o tamanho da fonte da linha
                          Excel.Range['A' + IntToStr(linha) +':U' + IntToStr(linha)].Font.Size := 8;


                          Excel.Range['A' + IntToStr(linha) +':U' + IntToStr(linha)].Borders.LineStyle := 1;

                          //ALTERAMOS A COR DE ALGUMAS CELULAS
                          Excel.Range['A' + IntToStr(linha) +':U' + IntToStr(linha)].interior.color := $00092DF7;


                          Excel.Rows[linha].RowHeight := 12;


                          Excel.Cells[linha,1] := cdsManiMANI_ID.AsString;
                          Excel.Cells[linha,2] := StrToDate(FormatDateTime('dd/MM/yyyy', cdsManiMANI_DATA.Value));
                          Excel.Cells[linha,3] := cdsTPVeiculoVEIC_NOME.Value;
                          Excel.Cells[linha,4] := cdsRegiaoREG_NOME.Value;
                          Excel.Cells[linha,5] := qrNotasSemConhNFI_NUMERO.AsString + ' ';
                          Excel.Cells[Linha,5].HorizontalAlignment := xlleft;
                          Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',qrNotasSemConhNFI_QTDEUV.asfloat));
                          Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',qrNotasSemConhNFI_PBRU.Value));
                          Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',qrNotasSemConhNFI_TOTA.Value));
                          qrAux.Close;
                          qrAux.Parameters[0].Value := qrNotasSemConhNFI_EMIT_CLI.AsInteger;
                          qrAux.Open;
                          Excel.Cells[linha,9] := qrAuxCLIN_RAZA.AsString;

                          {
                          qry1.close;
                          qry1.SQL.Clear;
                          qry1.SQL.Add(
                            '  SELECT B.CLIN_RAZA   '+
                           '  FROM CLIENTE_NBFINAL A inner JOIN CLIENTENBF B '+
                            ' ON A.CLIN_ID = B.CLIN_ID '+
                            ' WHERE CLIF_ID =  ' + cdsConhecimentosCLIF_ID.AsString
                          );
                          qry1.Open;
                          Excel.Cells[linha,9] := qry1.FieldByName('CLIN_RAZA').AsString; }

                          Excel.Cells[linha,10] := qrNotasSemConhNFI_DEST_RAZA.Value;
                          Excel.Cells[linha,13] := qrNotasSemConhORD_CONH.AsString;
                          if qrNotasSemConhORD_STATUS.AsString = 'C' then
                                Excel.Cells[linha,14] := 'CANCELADO';


                        qrNotasSemConh.next;
                end;
        end;

        {---------------------------------------------------------------------}




        cdsConhecimentos.First;

             //iniciamos a escrita dos dados na tabela rel_manifesto
             while not cdsConhecimentos.Eof do
             begin
                contaConhecimento := contaConhecimento + 1;
                cdsRelManifesto.Append;
                cdsRelManifestoUSUARIO.Value := FMenu.SqlUsuariosCH.Value;
                cdsRelManifestoMANIFESTO.Value := cdsManiMANI_ID.Value;
                cdsRelManifestoDATA_MANI.Value := cdsManiMANI_DATA.Value;
                cdsRelManifestoREGIAO.Value := cdsManiREG_ID.Value;
                cdsRelManifestoTIPO_VEICULO.Value := cdsManiVEIC_ID.Value;
                cdsRelManifestoNOTAS.Value := cdsConhecimentosORD_NOTAS.Value;
                cdsRelManifestoQTDE_UV.Value := cdsConhecimentosORD_QTDE_UV.Value;
                cdsRelManifestoPESO.Value := cdsConhecimentosORD_PESO_TOTAL.Value;
                cdsRelManifestoVALOR.Value := cdsConhecimentosORD_VALORTOTAL.Value;
                cdsRelManifestoNFSE.Value := cdsConhecimentosNFSE.AsString;

                if cdsConhecimentosCLIN_ID.AsString <> '' then begin
                    qrAux.Close;
                    qrAux.Parameters[0].Value := cdsConhecimentosCLIN_ID.AsInteger;
                    qrAux.Open;
                    cdsRelManifestoRemetente.Value := qrAuxCLIN_RAZA.Value;
                end
                else
                begin
                     qry1.close;
                     qry1.SQL.Clear;
                     qry1.SQL.Add(
                      '  SELECT B.CLIN_RAZA   '+
                      '  FROM CLIENTE_NBFINAL A inner JOIN CLIENTENBF B '+
                       ' ON A.CLIN_ID = B.CLIN_ID '+
                       ' WHERE CLIF_ID =  ' + cdsConhecimentosCLIF_ID.AsString
                     );
                     qry1.Open;
                     cdsRelManifestoRemetente.Value := qry1.FieldByName('CLIN_RAZA').AsString;
                end;

                cdsRelManifestoDESTINATARIO.Value := cdsConhecimentosCLIF_RAZA.Value;
                cdsRelManifestoCONHECIMENTO.Value := cdsConhecimentosORD_CONH.Value;
                cdsRelManifestoDATA_CONH.Value := cdsConhecimentosORD_DATA.Value;
                cdsRelManifestoFRETE.Value := cdsConhecimentosORD_VLR_FRETE.Value;

                //if cdsConhecimentosORD_PESO_TOTAL.Value = 0 then
                //        ShowMessage(cdsConhecimentosORD_ID.AsString);

                //a pedido do alberto outros - Icms + seccat + despacho + pedagio
                cdsRelManifestoOUTROS.Value :=  cdsConhecimentosORD_TOTALPREST.Value -
                                                cdsConhecimentosORD_VLR_ICMS.Value -
                                                cdsConhecimentosORD_VLR_FRETE.Value;


                cdsRelManifestoICMS.Value := cdsConhecimentosORD_VLR_ICMS.Value;
                cdsRelManifestoTOTAL.Value := cdsConhecimentosORD_TOTALPREST.Value;
                cdsRelManifestoENTREGAS.Value := 1;
                cdsRelManifestoFRETE_OP.Value := RateioDeFrete(cdsManiMANI_VFRETEPAG.Value); //procura a função q rateia o frete
                cdsRelManifestoNSS_FRETE.Value :=  Porcentagem(Porcentagem(cdsRelManifestoFRETE_OP.Value));  //calcula 20% de 20% sobre o frete - INSS

                cdsRelManifestoOUTROS_OP.Value := cdsConhecimentosORD_VLR_OUTROS.Value;
                if veiculo = 0 then
                begin
                      //  cdsRelManifestoFRETE_OP.Value :=   cdsManiMANI_VFRETEPAG.Value  ;
                      //  cdsRelManifestoNSS_FRETE.Value :=  Porcentagem(Porcentagem(cdsRelManifestoFRETE_OP.Value));  //calcula 20% de 20% sobre o frete - INSS
                        cdsRelManifestoVEICULOS.Value := 1;
                        veiculo := 1;
                end
                else
                begin
                      //  cdsRelManifestoFRETE_OP.Value :=  0;
                      //  cdsRelManifestoNSS_FRETE.Value :=  0;
                        cdsRelManifestoVEICULOS.Value := 0;
                end;


                cdsRelManifestoTOTAL_OP.Value := cdsRelManifestoFRETE_OP.Value + cdsRelManifestoOUTROS.Value +  cdsRelManifestoNSS_FRETE.Value;


                cdsRelManifesto.Post;



                  QTDEUV := QTDEUV + cdsRelManifestoQTDE_UV.Value;
                  PESO:=  PESO + cdsRelManifestoPESO.Value;
                  VALOR:= VALOR  + cdsRelManifestoVALOR.Value;
                  ENTREGAS:= ENTREGAS + cdsRelManifestoENTREGAS.Value;
                  VEICULOS:= VEICULOS + cdsRelManifestoVEICULOS.Value;
                  FRETE:= FRETE + cdsRelManifestoFRETE.Value;
                  OUTROS:= OUTROS + cdsRelManifestoOUTROS.Value;
                  ICMS:= ICMS + cdsRelManifestoICMS.Value;
                  TOTALOE:= TOTALOE + cdsRelManifestoTOTAL.Value;
                  FRETEOP:= FRETEOP + cdsRelManifestoFRETE_OP.Value;
                  INSS:= INSS + cdsRelManifestoNSS_FRETE.Value;
                  TOTALOP := TOTALOP + cdsRelManifestoTOTAL_OP.Value;



                //Geração para Excel
                Inc(linha);

                //Alteramos o tamanho da fonte da linha
                Excel.Range['A' + IntToStr(linha) +':U' + IntToStr(linha)].Font.Size := 8;


                Excel.Range['A' + IntToStr(linha) +':U' + IntToStr(linha)].Borders.LineStyle := 1;

                //ALTERAMOS A COR DE ALGUMAS CELULAS
                Excel.Range['J' + IntToStr(linha) +':J' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['K' + IntToStr(linha) +':K' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['N' + IntToStr(linha) +':N' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['Q' + IntToStr(linha) +':Q' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['S' + IntToStr(linha) +':S' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['T' + IntToStr(linha) +':T' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['U' + IntToStr(linha) +':U' + IntToStr(linha)].interior.color := $00C8C8C8;
                Excel.Range['V' + IntToStr(linha) +':V' + IntToStr(linha)].interior.color := $00C8C8C8;


                Excel.Rows[linha].RowHeight := 12;

                //LOCALIZAMOS OS VALORES NOS CDSS
                cdsRegiao.Locate('REG_ID', cdsRelManifestoREGIAO.Value, []);
                cdsTPVeiculo.Locate('VEIC_ID', cdsRelManifestoTIPO_VEICULO.Value, []);



                Excel.Cells[linha,1] := cdsRelManifestoMANIFESTO.Value;
                Excel.Cells[linha,2] := StrToDate(FormatDateTime('dd/MM/yyyy', cdsRelManifestoDATA_MANI.Value));
                Excel.Cells[linha,3] := cdsTPVeiculoVEIC_NOME.Value;
                Excel.Cells[linha,4] := cdsRegiaoREG_NOME.Value;
                Excel.Cells[linha,5] := cdsRelManifestoNOTAS.Value + ' ';
                Excel.Cells[Linha,5].HorizontalAlignment := xlleft;
                Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoQTDE_UV.Value));
                Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoPESO.Value));
                Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoVALOR.Value));

                Excel.Cells[linha,9] := cdsRelManifestoRemetente.Value;

                Excel.Cells[linha,10] := cdsRelManifestoDESTINATARIO.Value;

                Excel.Cells[linha,11] := cdsRelManifestoENTREGAS.Value;

                Excel.Cells[linha,12] := cdsRelManifestoVEICULOS.Value;

                //verifica se tem NFSE se tiver lista  a RPS
                if Trim(cdsRelManifestoNFSE.Value) <> '' then
                    Excel.Cells[linha,13] := cdsRelManifestoNFSE.Value
                else
                    Excel.Cells[linha,13] := cdsRelManifestoCONHECIMENTO.Value;


                Excel.Cells[linha,14] := StrToDate(FormatDateTime('dd/MM/yyyy',cdsRelManifestoDATA_CONH.Value));
                Excel.Cells[linha,15] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoFRETE.Value));
                Excel.Cells[linha,16] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoOUTROS.Value));
                Excel.Cells[linha,17] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoICMS.Value));
                Excel.Cells[linha,18] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoTOTAL.Value));
                Excel.Cells[linha,19] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoFRETE_OP.Value));
                Excel.Cells[linha,20] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoNSS_FRETE.Value));
                Excel.Cells[linha,21] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoOUTROS.Value));
                Excel.Cells[linha,22] := StrToFloat(FormatFloat('##0.00',cdsRelManifestoTOTAL_OP.Value));
                Excel.Cells[linha,23] := cdsRelManifestoNFSE.Value;
                cdsConhecimentos.Next;
             end;

             veiculo := 0;

             cdsMani.Next;
             Application.ProcessMessages;
             IncProgressBar;//incrementa o progress
        end;



















        Inc(linha);
        Inc(linha);

        Excel.Range['E' + IntToStr(linha) +':U' + IntToStr(linha)].Borders.LineStyle := 1;

        Excel.Cells[linha,5] := 'Totais';
        Excel.Cells[Linha,5].HorizontalAlignment := xlleft;
        Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',QTDEUV));
        Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',PESO));
        Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',VALOR));
        Excel.Cells[linha,11] := ENTREGAS;
        Excel.Cells[linha,12] := VEICULOS;
        Excel.Cells[linha,15] := StrToFloat(FormatFloat('##0.00',FRETE));
        Excel.Cells[linha,16] := StrToFloat(FormatFloat('##0.00',OUTROS));
        Excel.Cells[linha,17] := StrToFloat(FormatFloat('##0.00',ICMS));
        Excel.Cells[linha,18] := StrToFloat(FormatFloat('##0.00',TOTALOE));
        Excel.Cells[linha,19] := StrToFloat(FormatFloat('##0.00',FRETEOP));
        Excel.Cells[linha,20] := StrToFloat(FormatFloat('##0.00',iNSS));
        Excel.Cells[linha,21] := StrToFloat(FormatFloat('##0.00',OUTROS));
        Excel.Cells[linha,22] := StrToFloat(FormatFloat('##0.00',TOTALOP));


        //gerando totais por regiao

        Inc(linha);
        Inc(linha);
        Inc(linha);
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Mergecells := True;
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].interior.color := $00C8C8C8;
        Excel.Cells[linha,5].HorizontalAlignment := XlHAlignCenter;
        Excel.Cells[linha,5] := 'Totais por Região' ;

        Inc(linha);


        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].interior.color := $00C8C8C8;
        Excel.Cells[linha,5] := 'Região' ;
        Excel.Cells[linha,6] := 'Qtde UV' ;
        Excel.Cells[linha,7] := 'Peso';
        Excel.Cells[linha,8] :=  'Valor';
        Excel.Cells[linha,9] := 'Peso Medio';
        Excel.Cells[linha,10] := 'Valor Medio';
        Excel.Cells[linha,11] := '% Fr s/ Fat';
        Excel.Cells[linha,12] := 'Entregas';
        Excel.Cells[linha,13] := 'Cargas'     ;
        Excel.Cells[linha,14] := 'Frete';
        Excel.Cells[linha,15] := 'Outros';
        Excel.Cells[linha,16] := 'ICMS';
        Excel.Cells[linha,17] := 'ToTal';
        Excel.Cells[linha,18] := 'Frete p/kg';
        Excel.Cells[linha,19] := 'Frete p/Ton';


        cdsTotaisRegiao.close;
        qrTotaisRegiao.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
        cdsTotaisRegiao.Open;
        while not cdsTotaisRegiao.Eof do
        begin
            Inc(linha);
            Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
            Excel.Cells[linha,5] := cdsTotaisRegiaoREG_NOME.Value ;
            Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoQTDE_UV.Value));
            Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoPESO.Value));
            Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoVALOR.Value));
            Excel.Cells[linha,9] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoPESO_MEDIO.Value));
            Excel.Cells[linha,10] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoVALOR_MEDIO.Value));
            Excel.Cells[linha,11] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoFR_S_FAT.Value));
            Excel.Cells[linha,12] := cdsTotaisRegiaoENTREGAS.Value;
            Excel.Cells[linha,13] := cdsTotaisRegiaoVEICULOS.Value  ;
            Excel.Cells[linha,14] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoFRETE.Value));
            Excel.Cells[linha,15] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoOUTROS.Value));
            Excel.Cells[linha,16] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoICMS.Value));
            Excel.Cells[linha,17] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoTOTAL.Value));
            Excel.Cells[linha,18] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoFRETE_KG.Value));
            Excel.Cells[linha,19] := StrToFloat(FormatFloat('##0.00',cdsTotaisRegiaoFRETE_TON.Value));
            cdsTotaisRegiao.Next;
        end;


        qrTotais.Close;
        qrTotais.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
        qrTotais.Open;

        //totais
            Inc(linha);
            Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
            Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].interior.color := $00C8C8C8;
            Excel.Cells[linha,5] := 'Totais';
            Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',qrTotaisQTDE_UV.Value));
            Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',qrTotaisPESO.Value));
            Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',qrTotaisVALOR.Value));
            Excel.Cells[linha,9] := StrToFloat(FormatFloat('##0.00',qrTotaisPESO_MEDIO.Value));
            Excel.Cells[linha,10] := StrToFloat(FormatFloat('##0.00',qrTotaisVALOR_MEDIO.Value));
            Excel.Cells[linha,11] := StrToFloat(FormatFloat('##0.00',qrTotaisFR_S_FAT.Value));
            Excel.Cells[linha,12] := qrTotaisENTREGAS.Value;
            Excel.Cells[linha,13] := qrTotaisVEICULOS.Value  ;
            Excel.Cells[linha,14] := StrToFloat(FormatFloat('##0.00',qrTotaisFRETE.Value));
            Excel.Cells[linha,15] := StrToFloat(FormatFloat('##0.00',qrTotaisOUTROS.Value));
            Excel.Cells[linha,16] := StrToFloat(FormatFloat('##0.00',qrTotaisICMS.Value));
            Excel.Cells[linha,17] := StrToFloat(FormatFloat('##0.00',qrTotaisTOTAL.Value));
            Excel.Cells[linha,18] := StrToFloat(FormatFloat('##0.00',qrTotaisFRETE_KG.Value));
            Excel.Cells[linha,19] := StrToFloat(FormatFloat('##0.00',qrTotaisFRETE_TON.Value));





        //geramos totais por veiculo
        Inc(linha);
        Inc(linha);
        Inc(linha);
        //gerando totais por regiao

        Inc(linha);
        Inc(linha);
        Inc(linha);
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Mergecells := True;
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].interior.color := $00C8C8C8;
        Excel.Cells[linha,5].HorizontalAlignment := XlHAlignCenter;
        Excel.Cells[linha,5] := 'Totais por Veiculo' ;

        Inc(linha);


        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
        Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].interior.color := $00C8C8C8;
        Excel.Cells[linha,5] := 'Veiculo' ;
        Excel.Cells[linha,6] := 'Qtde UV' ;
        Excel.Cells[linha,7] := 'Peso';
        Excel.Cells[linha,8] :=  'Valor';
        Excel.Cells[linha,9] := 'Peso Medio';
        Excel.Cells[linha,10] := 'Valor Medio';
        Excel.Cells[linha,11] := '% Fr s/ Fat';
        Excel.Cells[linha,12] := 'Entregas';
        Excel.Cells[linha,13] := 'Cargas'     ;
        Excel.Cells[linha,14] := 'Frete';
        Excel.Cells[linha,15] := 'Outros';
        Excel.Cells[linha,16] := 'ICMS';
        Excel.Cells[linha,17] := 'ToTal';
        Excel.Cells[linha,18] := 'Frete p/kg';
        Excel.Cells[linha,19] := 'Frete p/Ton';


        cdsTotaisVeiculo.close;
        qrTotaisVeiculo.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
        cdsTotaisVeiculo.Open;
        while not cdsTotaisVeiculo.Eof do
        begin
            Inc(linha);
            Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
            Excel.Cells[linha,5] := cdsTotaisVeiculoVEIC_NOME.Value ;
            Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoQTDE_UV.Value));
            Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoPESO.Value));
            Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoVALOR.Value));
            Excel.Cells[linha,9] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoPESO_MEDIO.Value));
            Excel.Cells[linha,10] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoVALOR_MEDIO.Value));
            Excel.Cells[linha,11] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoFR_S_FAT.Value));
            Excel.Cells[linha,12] := cdsTotaisVeiculoENTREGAS.Value;
            Excel.Cells[linha,13] := cdsTotaisVeiculoVEICULOS.Value  ;
            Excel.Cells[linha,14] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoFRETE.Value));
            Excel.Cells[linha,15] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoOUTROS.Value));
            Excel.Cells[linha,16] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoICMS.Value));
            Excel.Cells[linha,17] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoTOTAL.Value));
            Excel.Cells[linha,18] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoFRETE_KG.Value));
            Excel.Cells[linha,19] := StrToFloat(FormatFloat('##0.00',cdsTotaisVeiculoFRETE_TON.Value));
            cdsTotaisVeiculo.Next;
        end;

           //totais
            Inc(linha);
            Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].Borders.LineStyle := 1;
            Excel.Range['E'+ IntToStr(linha)+':S'+IntToStr(linha)].interior.color := $00C8C8C8;
            Excel.Cells[linha,5] := 'Totais';
            Excel.Cells[linha,6] := StrToFloat(FormatFloat('##0.00',qrTotaisQTDE_UV.Value));
            Excel.Cells[linha,7] := StrToFloat(FormatFloat('##0.00',qrTotaisPESO.Value));
            Excel.Cells[linha,8] := StrToFloat(FormatFloat('##0.00',qrTotaisVALOR.Value));
            Excel.Cells[linha,9] := StrToFloat(FormatFloat('##0.00',qrTotaisPESO_MEDIO.Value));
            Excel.Cells[linha,10] := StrToFloat(FormatFloat('##0.00',qrTotaisVALOR_MEDIO.Value));
            Excel.Cells[linha,11] := StrToFloat(FormatFloat('##0.00',qrTotaisFR_S_FAT.Value));
            Excel.Cells[linha,12] := qrTotaisENTREGAS.Value;
            Excel.Cells[linha,13] := qrTotaisVEICULOS.Value  ;
            Excel.Cells[linha,14] := StrToFloat(FormatFloat('##0.00',qrTotaisFRETE.Value));
            Excel.Cells[linha,15] := StrToFloat(FormatFloat('##0.00',qrTotaisOUTROS.Value));
            Excel.Cells[linha,16] := StrToFloat(FormatFloat('##0.00',qrTotaisICMS.Value));
            Excel.Cells[linha,17] := StrToFloat(FormatFloat('##0.00',qrTotaisTOTAL.Value));
            Excel.Cells[linha,18] := StrToFloat(FormatFloat('##0.00',qrTotaisFRETE_KG.Value));
            Excel.Cells[linha,19] := StrToFloat(FormatFloat('##0.00',qrTotaisFRETE_TON.Value));

        ProgressBarUnload;


        If not Excel.Application.Visible then
          Excel.Application.Visible := true;
        


end;

procedure TfrmREL_MANIFESTO_FILT.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('DD/MM/YYYY', Date);
  MaskEdit2.Text := FormatDateTime('DD/MM/YYYY', Date);
  Self.Width := 533;
  Self.Height := 344;
  cdsClienteNBF.Open;
  cdsRegiao.Open;
  cdsTPVeiculo.Open;
  ProgressBarUnload;

end;

procedure TfrmREL_MANIFESTO_FILT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
        frmREL_MANIFESTO_FILT := nil;
end;

procedure TfrmREL_MANIFESTO_FILT.ProgressBarLoad(max: Integer; caption : string);
begin
   JvGradientProgressBar1.Max := max;
   JvGradientProgressBar1.Position := 0;
   JvGradientProgressBar1.Visible := True;
   lbProgress.Caption := Caption;
   lbProgress.Visible := True;
end;

procedure TfrmREL_MANIFESTO_FILT.ProgressBarUnload;
begin
    JvGradientProgressBar1.Visible := False;
    lbProgress.Visible := False;
end;

procedure TfrmREL_MANIFESTO_FILT.IncProgressBar;
begin
    JvGradientProgressBar1.Position := JvGradientProgressBar1.Position + 1;
end;

procedure TfrmREL_MANIFESTO_FILT.cboClienteNBFCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  IF cboClienteNBF.LookupValue = '' then
        Abort;

  cboClienteFinal.LookupValue := '';
  cboClienteFinal.Text := '';

        
  CDSClienteFinal.CLOSE;
  with qrClienteFinal do
  BEGIN
      Close;
      SQL.Clear;
      SQL.Add('SELECT A.CLIF_ID, B.CLIF_RAZA');
      SQL.Add('FROM CLIENTE_NBFINAL A INNER JOIN CLIENTEFINAL B ON  A.CLIF_ID = B.CLIF_ID');
      SQL.Add('WHERE A.CLIN_ID = ' + cboClienteNBF.LookupValue);
      SQL.Add('ORDER  BY B.CLIF_RAZA');
  end;
  CDSClienteFinal.Open;
end;

procedure TfrmREL_MANIFESTO_FILT.cdsRelManifestoAfterPost(
  DataSet: TDataSet);
begin
  cdsRelManifesto.ApplyUpdates(0);
end;

function TfrmREL_MANIFESTO_FILT.RateioDeFrete(value : Double): Double;
var valor, porcentagem : Double;
begin
      valor := 0;

      //buscamos a porcentagem q equivale por peso
      if cdsManiPESO_TOTAL.Value <> 0 then
        porcentagem := (cdsConhecimentosORD_PESO_TOTAL.Value * 100) / cdsManiPESO_TOTAL.Value;

      //conforme a porcentagem calculamos o valor do frete operacional
      valor := (porcentagem * Value) / 100;

      Result := valor;

end;

function TfrmREL_MANIFESTO_FILT.Porcentagem(value: Double): Double;
var valor : Double;
begin
      //calcula 20% sobre o valor

      valor := (value * 20) / 100;

      Result := valor;
end;

end.

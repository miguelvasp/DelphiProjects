unit UfrmExportaPAMCARD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, RzTreeVw, RzShellCtrls, ExtCtrls, Mask, Grids,
  Wwdbigrd, Wwdbgrid, Db, ADODB;

type
  TfrmExportaPAMCARD = class(TForm)
    Panel1: TPanel;
    RzShellTree1: TRzShellTree;
    Label1: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    edtDiretorio: TEdit;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button3: TButton;
    Label4: TLabel;
    Button4: TButton;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    qrDados: TADOQuery;
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    qrMunIbge: TADOQuery;
    qrMunIbgeCOD_MUN: TIntegerField;
    qrClienteNBF: TADOQuery;
    qrClienteNBFCLIN_ID: TAutoIncField;
    qrClienteNBFCLIN_PESSOA: TStringField;
    qrClienteNBFCLIN_RAZA: TStringField;
    qrClienteNBFCLIN_NOME: TStringField;
    qrClienteNBFCLIN_CGCCPF: TStringField;
    qrClienteNBFCLIN_INSCRG: TStringField;
    qrClienteNBFCLIN_ENDERECO: TStringField;
    qrClienteNBFCLIN_ENDERECO_COMPL: TStringField;
    qrClienteNBFCLIN_ENDERECO_BAIRRO: TStringField;
    qrClienteNBFCLIN_MUNICIPIO: TStringField;
    qrClienteNBFUF_SIGLA: TStringField;
    qrClienteNBFCLIN_CEP: TStringField;
    qrClienteNBFCLIN_TEL1: TStringField;
    qrClienteNBFCLIN_TEL2: TStringField;
    qrClienteNBFCLIN_FAX: TStringField;
    qrClienteNBFCLIN_EMAIL: TStringField;
    qrClienteNBFCON_CODI: TStringField;
    qrClienteNBFCLIN_CONTRATO: TStringField;
    qrClienteNBFCLIN_UTIL_COD: TStringField;
    qrClienteNBFMUN_ID: TIntegerField;
    qrClienteNBFCLIN_WEB: TStringField;
    qrClienteNBFCLIN_ENDC: TStringField;
    qrClienteNBFCLIN_END_COMPLC: TStringField;
    qrClienteNBFCLIN_END_BAIRC: TStringField;
    qrClienteNBFCLIN_MUNICC: TStringField;
    qrClienteNBFUF_SIGLAC: TStringField;
    qrClienteNBFCLIN_CEPC: TStringField;
    qrClienteNBFCLIN_TELC: TStringField;
    qrClienteNBFCLIN_FAXC: TStringField;
    qrClienteNBFCLIN_EMAILC: TStringField;
    qrClienteNBFMUN_IDC: TIntegerField;
    qrClienteNBFCLIN_TIPOSALDO: TStringField;
    qrClienteNBFCLIN_VLRSALDO: TFloatField;
    qrClienteNBFCLIN_TPMERC: TStringField;
    qrClienteNBFCLIN_LOTE: TStringField;
    qrClienteNBFCLIN_ISS: TFloatField;
    qrClienteNBFCLIN_DESCONTO: TFloatField;
    qrClienteNBFRemanejaSN: TStringField;
    qrClienteNBFIBGE_ID: TIntegerField;
    qrFinal: TADOQuery;
    qrFinalCLIF_ID: TAutoIncField;
    qrFinalCLIF_PESSOA: TStringField;
    qrFinalCLIF_RAZA: TStringField;
    qrFinalCLIF_NOME: TStringField;
    qrFinalCLIF_CGCCPF: TStringField;
    qrFinalCLIF_INSCRG: TStringField;
    qrFinalCLIF_ENDERECO: TStringField;
    qrFinalCLIF_ENDERECO_COMPL: TStringField;
    qrFinalCLIF_ENDERECO_BAIRRO: TStringField;
    qrFinalCLIF_MUNICIPIO: TStringField;
    qrFinalCLIF_MUNICIPIO2: TStringField;
    qrFinalUF_SIGLA: TStringField;
    qrFinalCLIF_CEP: TStringField;
    qrFinalCLIF_TEL1: TStringField;
    qrFinalCLIF_TEL2: TStringField;
    qrFinalCLIF_FAX: TStringField;
    qrFinalCLIF_EMAIL: TStringField;
    qrFinalCLIF_CONTATO: TStringField;
    qrFinalMUN_ID: TIntegerField;
    qrFinalCLIF_CARGAPALLET: TStringField;
    qrFinalCLIE_ENDERECO: TStringField;
    qrFinalCLIE_ENDERECO_COMPL: TStringField;
    qrFinalCLIE_ENDERECO_BAIRRO: TStringField;
    qrFinalCLIE_MUNICIPIO: TStringField;
    qrFinalCLIE_MUN_ID: TIntegerField;
    qrFinalCLIE_UF_SIGLA: TStringField;
    qrFinalCLIE_CEP: TStringField;
    qrFinalCLI_HORARIO: TStringField;
    qrFinalCLI_VL_DESCARGA: TFloatField;
    qrFinalCLI_OBS: TStringField;
    qrFinalCLI_UNCOBRACA: TStringField;
    qrFinalIBGE_ID: TIntegerField;
    qrFinalCNPJ: TStringField;
    qrClienteNBFCNPJ: TStringField;
    qrColetaNF: TADOQuery;
    qrColetaNFCNF_NF: TStringField;
    qrColetaNFSERIE: TStringField;
    qrColetaNFCNF_PALLETS: TIntegerField;
    qrColetaNFESPECIE: TStringField;
    qrColetaNFCNF_PESO: TFloatField;
    qrColetaNFCNF_VALOR: TFloatField;
    qrColetaNFCLIF_ID: TIntegerField;
    qrColetaNFCLIN_ID: TIntegerField;
    qrDadosMANI_ID: TAutoIncField;
    qrDadosMANI_TIPOCARGA: TStringField;
    qrDadosMANI_PESO: TFloatField;
    qrDadosMANI_QTDEPALLET: TIntegerField;
    qrDadosMANI_VOLUME: TFloatField;
    qrDadosMANI_QTDEUV: TFloatField;
    qrDadosTRANS_ID: TIntegerField;
    qrDadosMOT_ID: TIntegerField;
    qrDadosVEIC_ID: TIntegerField;
    qrDadosMANI_DATA: TDateTimeField;
    qrDadosMANI_CENDERECO: TStringField;
    qrDadosMANI_CENDERECOCOMPL: TStringField;
    qrDadosMANI_CENDERECOBAIRRO: TStringField;
    qrDadosMANI_CMUNICIPIO: TStringField;
    qrDadosMANI_CUF_SIGLA: TStringField;
    qrDadosMANI_CCEP: TStringField;
    qrDadosMANI_CTEL1: TStringField;
    qrDadosMANI_CTEL2: TStringField;
    qrDadosMANI_CFAX: TStringField;
    qrDadosMANI_CEMAIL: TStringField;
    qrDadosMANI_CCONTATO: TStringField;
    qrDadosMANI_EENDERECO: TStringField;
    qrDadosMANI_EENDERECOCOMPL: TStringField;
    qrDadosMANI_EENDERECOBAIRRO: TStringField;
    qrDadosMANI_EMUNICIPIO: TStringField;
    qrDadosMANI_EUF_SIGLA: TStringField;
    qrDadosMANI_ECEP: TStringField;
    qrDadosMANI_ETEL1: TStringField;
    qrDadosMANI_ETEL2: TStringField;
    qrDadosMANI_EFAX: TStringField;
    qrDadosMANI_EEMAIL: TStringField;
    qrDadosMANI_ECONTATO: TStringField;
    qrDadosPAR_ID: TIntegerField;
    qrDadosCONFIRMA: TStringField;
    qrDadosNFI_TRANS: TStringField;
    qrDadosVEIC_ID_FRETE: TIntegerField;
    qrDadosREG_ID: TIntegerField;
    qrDadosMANI_ENT_COL: TStringField;
    qrDadosMANI_VFRETEPAG: TFloatField;
    qrDadosCONFIRMA_MANI: TStringField;
    qrDadosCLIN_ID: TIntegerField;
    qrDadosCTT_ID: TIntegerField;
    qrDadosVEIC_ID_COBRA: TIntegerField;
    qrDadosREG_ID_COBRA: TIntegerField;
    qrDadosFRETE_NEGOCIA: TStringField;
    qrDadosVLR_NEGOCIA: TFloatField;
    qrDadosVLR_TOTAL: TFloatField;
    qrDadosMANI_DTAGENDA: TDateTimeField;
    qrDadosMANI_HORAGENDA: TStringField;
    qrDadosMANI_SOLICITANTE: TStringField;
    qrDadosMANI_AJUDANTE: TStringField;
    qrDadosMANI_OBS: TStringField;
    qrDadosCLIF_ID: TIntegerField;
    qrDadosMANI_NF: TStringField;
    qrDadosMANI_DT_TRANSP: TDateTimeField;
    qrDadosMANI_MUN_IDC: TIntegerField;
    qrDadosFLAG: TStringField;
    qrDadosPGTO_FRETE: TStringField;
    qrDadosSEL: TStringField;
    qrDadosMANI_KM_IDA: TIntegerField;
    qrDadosMANI_KM_TOTAL: TIntegerField;
    qrDadosCHAVE: TStringField;
    qrDadosNFS_GERAL: TStringField;
    qrDadosMOT_EQUIP: TStringField;
    qrDadosSEL_EXPORT: TStringField;
    qrDadosMOT_ID_1: TAutoIncField;
    qrDadosTRANS_ID_1: TIntegerField;
    qrDadosMOT_NOME: TStringField;
    qrDadosMOT_ENDERECO: TStringField;
    qrDadosMOT_MUNICIPIO: TStringField;
    qrDadosMOT_CEP: TStringField;
    qrDadosUF_SIGLA: TStringField;
    qrDadosMOT_CPF: TStringField;
    qrDadosMOT_RG: TStringField;
    qrDadosMOT_DT_NASC: TDateTimeField;
    qrDadosMOT_RG_ORGAO: TStringField;
    qrDadosMOT_CNH: TStringField;
    qrDadosMOT_CNH_CATEG: TStringField;
    qrDadosMOT_CNH_VALID: TDateTimeField;
    qrDadosMOT_PAI: TStringField;
    qrDadosMOT_MAE: TStringField;
    qrDadosMOT_TEL_PESS: TStringField;
    qrDadosMOT_TEL_COM: TStringField;
    qrDadosMOT_PAMCARD: TStringField;
    qrDadosMOT_PAMCARD_VIG: TDateTimeField;
    qrDadosMOT_ENDERECO_COMPL: TStringField;
    qrDadosMOT_ENDERECO_BAIRRO: TStringField;
    qrDadosVEIC_ID_1: TIntegerField;
    qrDadosMOT_VEIC_PLACA: TStringField;
    qrDadosMOT_VEIC_CIDADE: TStringField;
    qrDadosMOT_VEIC_UF_SIGLA: TStringField;
    qrDadosMOT_VEIC_MARCA: TStringField;
    qrDadosMOT_VEIC_ANO: TStringField;
    qrDadosMOT_VEIC_MODELO: TStringField;
    qrDadosMOT_VEIC_COR: TStringField;
    qrDadosMOT_VEIC_CHASSI: TStringField;
    qrDadosMOT_CARRETA_PLACA: TStringField;
    qrDadosMOT_CARRETA_CIDADE: TStringField;
    qrDadosMOT_CARRETA_UF_SIGLA: TStringField;
    qrDadosMOT_CARRETA_MARCA: TStringField;
    qrDadosMOT_CARRETA_ANO: TStringField;
    qrDadosMOT_CARRETA_MODELO: TStringField;
    qrDadosMOT_CARRETA_COR: TStringField;
    qrDadosMOT_CARRETA_CHASSI: TStringField;
    qrDadosMOT_PAMC_NUM: TStringField;
    qrDadosMOT_NUMPIS: TStringField;
    qrDadosMOT_CARRETA_COMPR: TFloatField;
    qrDadosMOT_CARRETA_LARG: TFloatField;
    qrDadosMOT_CARRETA_ALT: TFloatField;
    qrDadosMOT_CARRETA_M3: TFloatField;
    qrDadosMOT_NEXTEL: TStringField;
    qrDadosMOT_EQUIP_1: TStringField;
    qrDadosRENAVAN: TStringField;
    qrDadosRNTRC: TStringField;
    qrDadosTRANS_ID_2: TAutoIncField;
    qrDadosTRANS_FANTASIA: TStringField;
    qrDadosTRANS_RAZA: TStringField;
    qrDadosTRANS_CNPJ: TStringField;
    qrDadosTRANS_INSCRICAO: TStringField;
    qrDadosTRANS_ENDERECO: TStringField;
    qrDadosTRANS_ENDERECO_COMPL: TStringField;
    qrDadosTRANS_ENDERECO_BAIRRO: TStringField;
    qrDadosTRANS_MUNICIPIO: TStringField;
    qrDadosTRANS_CEP: TStringField;
    qrDadosUF_SIGLA_1: TStringField;
    qrDadosTRANS_TEL: TStringField;
    qrDadosTRANS_TEL2: TStringField;
    qrDadosTRANS_FAX: TStringField;
    qrDadosTRANS_EMAIL: TStringField;
    qrDadosTRANS_CONTATO: TStringField;
    qrDadosTRANS_FLAG: TStringField;
    qrDadosCON_CODI: TStringField;
    qrDadosMUN_ID: TIntegerField;
    qrDadosTRANS_PESSOA: TStringField;
    qrDadosTRANS_REDES: TStringField;
    qrDadosPIS: TStringField;
    qrDadosIBGE_ID: TIntegerField;
    qrDadoscnpj: TStringField;
    qrDadosIBGE_MOT: TIntegerField;
    qrDadosVEIC_CATEGORIA: TStringField;
    qrDadosIBGE_ID_DESTINO: TIntegerField;
    qrDadosORD_COLETA_ENTREGA: TStringField;
    qrDadosMUN_ID_COL: TIntegerField;
    qrAux2: TADOQuery;
    qrConhecimento: TADOQuery;
    qrConhecimentoORD_CONH: TStringField;
    qrConhecimentoORD_QTDE_UV: TFloatField;
    qrConhecimentoESPECIE: TStringField;
    qrConhecimentoORD_PESO_TOTAL: TFloatField;
    qrConhecimentoORD_TOTALPREST: TFloatField;
    qrConhecimentoCLIF_ID: TIntegerField;
    qrConhecimentoCLIN_ID: TIntegerField;
    qrConhecimentoORD_SERIE: TStringField;
    qrConhecimentoCUBAGEM: TFloatField;
    qrBuscaMANI_ID: TAutoIncField;
    qrBuscaMANI_DATA: TDateTimeField;
    qrBuscaCIOT: TStringField;
    qrBuscaPROTOCOLO_ANTT: TStringField;
    qrBuscaSEL_CIOT: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure GeraArquivo(pManiId : Integer);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrBuscaSEL_CIOTChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportaPAMCARD: TfrmExportaPAMCARD;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmExportaPAMCARD.Button1Click(Sender: TObject);
begin
  panel1.Visible := False;
  edtDiretorio.Text :=  RzShellTree1.SelectedPathName;
end;

procedure TfrmExportaPAMCARD.Button2Click(Sender: TObject);
begin
   Panel1.Visible := True;
   Panel1.Align := alClient;
end;

procedure TfrmExportaPAMCARD.Button4Click(Sender: TObject);
begin
  if edtDiretorio.Text = '' then begin
      ShowMessage('Informe a pasta de destino dos arquivos.');
      Panel1.Visible := True;
      Panel1.Align := alClient;
      Abort;
  end;

  qrBusca.First;
  while not qrBusca.Eof DO BEGIN
        if qrBuscaSEL_CIOT.AsString = 'S' then
                GeraArquivo(qrBuscaMANI_ID.AsInteger);
        qrBusca.Next;
        Application.ProcessMessages;
  end;

  qrBusca.First;
  ShowMessage('arquivos gerados com sucesso');
end;

procedure TfrmExportaPAMCARD.GeraArquivo(pManiId: Integer);
var f : TStringList;
    aux : string;
    QTDE_NOTAS : Integer;
    N_NOTA : Integer;
    DIA, meS, ANO : Integer;
    data_efetivacao : TDateTime;

begin
    try
           try
                qrDados.Close;
                qrDados.Parameters[0].Value := pManiId;
                qrDados.Open;
                f := TStringList.Create;
                f.Add('transacional.operacao=26');
                f.Add('');
                f.Add('viagem.contratante.documento.numero=' + qrDadoscnpj.AsString );
                f.Add('#viagem.unidade.documento.tipo=1'); //1 indica q � CNPJ
                f.Add('#viagem.unidade.documento.numero=' + qrDadoscnpj.AsString);
                f.Add('#viagem.id.cliente=' + qrDadosMANI_ID.AsString);
                f.Add('viagem.contrato.numero=');
                f.Add('');
                f.Add('#SEM FAVORECIDO');
                f.Add('');
                f.Add('viagem.favorecido.qtde=1');
                f.Add('viagem.favorecido1.tipo=1');
                f.Add('viagem.favorecido1.documento.qtde=1');
                f.Add('viagem.favorecido1.documento1.tipo=2');//CPF
                f.Add('viagem.favorecido1.documento1.numero=' + qrDadosMOT_CPF.AsString);
                f.Add('#viagem.favorecido1.documento2.tipo=5'); //RNTRC
                f.Add('#viagem.favorecido1.documento2.numero=' + qrDadosRNTRC.AsString);
                f.Add('#viagem.favorecido1.documento3.tipo=3');//RG
                f.Add('#viagem.favorecido1.documento3.numero=' + qrDadosMOT_RG.AsString);
                f.Add('#viagem.favorecido1.documento3.uf=' + qrDadosMOT_RG_ORGAO.AsString);
                f.Add('#viagem.favorecido1.nome=' + qrDadosMOT_NOME.AsString);
                f.Add('#viagem.favorecido1.data.nascimento=' + FormatDateTime('dd/MM/yyyy', qrDadosMOT_DT_NASC.AsDateTime));
                f.Add('#viagem.favorecido1.endereco.logradouro=' + qrDadosMOT_ENDERECO.AsString);
                f.Add('#viagem.favorecido1.endereco.numero=');
                f.Add('#viagem.favorecido1.endereco.complemento=' + qrDadosMOT_ENDERECO_COMPL.AsString);
                f.Add('#viagem.favorecido1.endereco.bairro=' + qrDadosMOT_ENDERECO_BAIRRO.AsString);
                f.Add('#viagem.favorecido1.endereco.cidade.ibge=' + qrDadosIBGE_MOT.AsString);
                f.Add('#viagem.favorecido1.endereco.cep=' + qrDadosMOT_CEP.AsString);
                f.Add('#viagem.favorecido1.telefone.ddd=' + Copy(qrDadosMOT_TEL_COM.AsString, 1, 3));
                f.Add('#viagem.favorecido1.telefone.numero=' + Copy(qrDadosMOT_TEL_COM.AsString, 4, Length(qrDadosMOT_TEL_COM.AsString) - 3));
                f.Add('#viagem.favorecido1.celular.ddd=' +  Copy(qrDadosMOT_TEL_PESS.AsString, 1, 3));
                f.Add('#viagem.favorecido1.celular.numero=' + Copy(qrDadosMOT_TEL_COM.AsString, 4, Length(qrDadosMOT_TEL_PESS.AsString) - 3));
                f.Add('#viagem.favorecido1.email=' + qrDadosTRANS_EMAIL.AsString);
                f.Add('viagem.favorecido1.meio.pagamento=');
                f.Add('#viagem.favorecido1.conta.banco=');
                f.Add('#viagem.favorecido1.conta.agencia=');
                f.Add('#viagem.favorecido1.conta.numero=');
                f.Add('#viagem.favorecido1.conta.tipo=2');
                f.Add('#viagem.favorecido1.cartao.numero=' + qrDadosMOT_PAMC_NUM.AsString  );
                f.Add('viagem.veiculo.qtde=1');
                f.Add('viagem.veiculo1.placa=' + StringReplace(qrDadosMOT_CARRETA_PLACA.AsString, '-', '', [rfReplaceAll]) );
                f.Add('#viagem.veiculo1.rntrc=' + qrDadosRNTRC.AsString);
                f.Add('viagem.veiculo.categoria=' + qrDadosVEIC_CATEGORIA.AsString);
                f.Add('');
                f.Add('viagem.data.partida=' + FormatDateTime('DD/MM/YYYY', qrDadosMANI_DATA.AsDateTime) );
                f.Add('viagem.data.termino=' + FormatDateTime('DD/MM/YYYY', qrDadosMANI_DATA.AsDateTime) );
                f.Add('');
                f.Add('');
                f.Add('#viagem.rota.id='); //NAO INFORMAR
                f.Add('#viagem.rota.nome='); //NAO INFORMAR

                //BUSCAR OS MUNICIPIOS IBGE
                qrMunIbge.Close;
                qrMunIbge.Parameters[0].Value := qrDadosMUN_ID_COL.AsInteger;
                qrMunIbge.Open;

                if qrMunIbgeCOD_MUN.AsString = '' then ShowMessage('Manifesto c�digo: ' + qrDadosMANI_ID.AsString + ' com municipio de origem sem vinculo com a tabela IBGE');

                f.Add('viagem.origem.cidade.ibge=' + qrMunIbgeCOD_MUN.AsString);

               // qrMunIbge.Close;
               // qrMunIbge.Parameters[0].Value := qrDadosMUN_ID_COL.AsInteger;
               // qrMunIbge.Open;

               // if qrMunIbgeCOD_MUN.AsString = '' then ShowMessage('Conhecimento c�digo: ' + qrDadosORD_ID.AsString + ' com municipio de destino sem vinculo com a tabela IBGE');



                f.Add('viagem.destino.cidade.ibge=' + qrDadosIBGE_ID_DESTINO.AsString);
                f.Add('viagem.ponto.qtde=0');
                f.Add('viagem.ponto1.cidade.ibge=');


                //BUSCA PEDAGIO
                with qrAux2 do begin
                   Close;
                   sql.Clear;
                   sql.Add('select sum(a.ORD_VLR_PEDAGIO) VLR_PEDAGIO  from ORDEM_COLETA_ENTREGA a WHERE MANI_ID =' + qrDadosMANI_ID.AsString);
                   Open;
                end;


                f.Add('#viagem.pedagio.valor=' + StringReplace(FormatFloat('##0.00', qrAux2.FIELDBYNAME('VLR_PEDAGIO').AsFloat), ',', '.', [rfReplaceAll]   ) );
                f.Add('viagem.pedagio.status.id=');
                f.Add('viagem.pedagio.roteirizar=');
                f.Add('viagem.pedagio.obter.praca=');
                f.Add('#viagem.pedagio.utiliza.saldo=');
                f.Add('viagem.pedagio.cartao=');
                f.Add('');
                f.Add('viagem.carga.tipo=');
                f.Add('viagem.carga.natureza=');
                f.Add('viagem.carga.peso=' + StringReplace(FormatFloat('##0.000', qrDadosMANI_PESO.AsFloat), ',', '.', [rfReplaceAll]    ));
                f.Add('');

                //COME�AMOS A LISTAR OS CONHECIMENTOS DO MANIFESTO

                      qrConhecimento.Close;
                      qrConhecimento.Parameters[0].Value := qrDadosMANI_ID.AsInteger;
                      qrConhecimento.Open;

                      QTDE_NOTAS := 0;
                      N_NOTA := 0;
                      while not qrConhecimento.Eof do begin
                           Inc(QTDE_NOTAS);
                           qrConhecimento.next;
                      end;
                      qrConhecimento.First;
                      f.Add('viagem.documento.qtde=' + IntToStr(QTDE_NOTAS) );
                      while not qrConhecimento.Eof do begin
                                Inc(N_NOTA);
                                
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.tipo=6');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.numero=' + qrConhecimentoORD_CONH.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.serie=' + qrConhecimentoORD_SERIE.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.quantidade=' + StringReplace(FormatFloat('##0.000', qrConhecimentoORD_QTDE_UV.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.especie=' + qrConhecimentoESPECIE.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.cubagem=' + StringReplace(FormatFloat('##0.00', qrConhecimentoCUBAGEM.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.peso=' + StringReplace(FormatFloat('##0.000', qrConhecimentoORD_PESO_TOTAL.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.natureza=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.mercadoria.valor=' + StringReplace(FormatFloat('##0.00', qrConhecimentoORD_TOTALPREST.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal.qtde=3');


                                //DADOS DO REMETENTE DA NOTA FISCAL
                                qrClienteNBF.Close;
                                qrClienteNBF.Parameters[0].Value := qrConhecimentoCLIN_ID.AsInteger;
                                qrClienteNBF.Open;


                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.tipo=1');
                                f.Add('');
                                f.Add('');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.codigo=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.documento.tipo=1');//CNPJ
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.documento.numero=' + qrClienteNBFCNPJ.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.nome=' + qrClienteNBFCLIN_RAZA.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.logradouro=' + qrClienteNBFCLIN_ENDERECO.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.numero=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.complemento=' + qrClienteNBFCLIN_ENDERECO_COMPL.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.bairro=' + qrClienteNBFCLIN_ENDERECO_BAIRRO.AsString);

                                qrMunIbge.Close;
                                qrMunIbge.Parameters[0].Value := qrClienteNBFMUN_ID.AsInteger;
                                qrMunIbge.Open;

                                if qrMunIbgeCOD_MUN.AsString = '' then ShowMessage('Manifesto c�digo: ' + qrDadosMANI_ID.AsString + ' com municipio do remetente da nota fiscal '+ qrConhecimentoORD_CONH.AsString + ' sem vinculo com a tabela IBGE');


                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.cidade.ibge=' + qrMunIbgeCOD_MUN.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.cep=' + qrClienteNBFCLIN_CEP.AsString);


                                qrFinal.Close;
                                qrFinal.Parameters[0].Value := qrConhecimentoCLIF_ID.AsInteger;
                                qrFinal.Open;

                                //escrevemos os dados do destinat�rio.
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.tipo=2');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.codigo=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.documento.tipo=2');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.documento.numero=' + qrFinalCNPJ.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.nome=' + qrFinalCLIF_RAZA.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.logradouro=' + qrFinalCLIF_ENDERECO.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.numero=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.complemento=' + qrFinalCLIF_ENDERECO_COMPL.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.bairro=' + qrFinalCLIF_ENDERECO_BAIRRO.AsString);

                                qrMunIbge.Close;
                                qrMunIbge.Parameters[0].Value := qrFinalMUN_ID.AsInteger;
                                qrMunIbge.Open;

                                if qrMunIbgeCOD_MUN.AsString = '' then ShowMessage('Conhecimento c�digo: ' + qrDadosMANI_ID.AsString + ' com municipio do destinat�rio do conhecimento '+ qrConhecimentoORD_CONH.AsString + ' sem vinculo com a tabela IBGE');

                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.cidade.ibge=' + qrMunIbgeCOD_MUN.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.cep=' + qrFinalCLIF_CEP.AsString);

                                //dados do consignatario
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.tipo=3');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.codigo=2');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.documento.tipo=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.documento.numero=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.nome=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.logradouro=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.numero=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.complemento=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.bairro=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.cidade.ibge=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.enderco.cep=');

                      qrConhecimento.Next;
                      end;


                {
                //informamos as notas de coleta
                IF qrDadosORD_COLETA_ENTREGA.AsString = 'C' then begin


                      qrColetaNF.close;
                      qrColetaNF.Parameters[0].Value := qrDadosMANI_ID.AsInteger;
                      qrColetaNF.Open;
                      QTDE_NOTAS := 0;
                      N_NOTA := 0;
                      while not qrColetaNF.Eof do begin
                           Inc(QTDE_NOTAS);
                           qrColetaNF.next;
                      end;
                      qrColetaNF.First;

                      while not qrNotas.Eof do begin
                                Inc(N_NOTA);
                                f.Add('viagem.documento.qtde=' + IntToStr(QTDE_NOTAS) );
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.tipo=6');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.numero=' + qrColetaNFCNF_NF.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.serie=' + qrColetaNFSERIE.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.quantidade=' + StringReplace(FormatFloat('##0.000', qrColetaNFCNF_PALLETS.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.especie=' + qrColetaNFESPECIE.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.cubagem=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.peso=' + StringReplace(FormatFloat('##0.000', qrColetaNFCNF_PESO.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.natureza=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.mercadoria.valor=' + StringReplace(FormatFloat('##0.00', qrColetaNFCNF_VALOR.AsFloat), ',', '.', [rfReplaceAll]    ));
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal.qtde=3');


                                //DADOS DO REMETENTE DA NOTA FISCAL
                                qrClienteNBF.Close;
                                qrClienteNBF.Parameters[0].Value := qrColetaNFCLIN_ID.AsInteger;
                                qrClienteNBF.Open;


                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.tipo=1');
                                f.Add('');
                                f.Add('');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.codigo=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.documento.tipo=1');//CNPJ
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.documento.numero=' + qrClienteNBFCNPJ.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.nome=' + qrClienteNBFCLIN_RAZA.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.logradouro=' + qrClienteNBFCLIN_ENDERECO.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.numero=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.complemento=' + qrClienteNBFCLIN_ENDERECO_COMPL.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.bairro=' + qrClienteNBFCLIN_ENDERECO_BAIRRO.AsString);

                                qrMunIbge.Close;
                                qrMunIbge.Parameters[0].Value := qrClienteNBFMUN_ID.AsInteger;
                                qrMunIbge.Open;

                                if qrMunIbgeCOD_MUN.AsString = '' then ShowMessage('Conhecimento c�digo: ' + qrDadosORD_ID.AsString + ' com municipio do remetente da nota fiscal '+ qrNotasNFI_NUMERO.AsString + ' sem vinculo com a tabela IBGE');


                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.cidade.ibge=' + qrMunIbgeCOD_MUN.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal1.endereco.cep=' + qrClienteNBFCLIN_CEP.AsString);


                                qrFinal.Close;
                                qrFinal.Parameters[0].Value := qrColetaNFCLIF_ID.AsInteger;
                                qrFinal.Open;

                                //escrevemos os dados do destinat�rio.
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.tipo=2');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.codigo=');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.documento.tipo=2');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.documento.numero=' + qrFinalCNPJ.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.nome=' + qrFinalCLIF_RAZA.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.logradouro=' + qrFinalCLIF_ENDERECO.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.numero=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.complemento=' + qrFinalCLIF_ENDERECO_COMPL.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.bairro=' + qrFinalCLIF_ENDERECO_BAIRRO.AsString);

                                qrMunIbge.Close;
                                qrMunIbge.Parameters[0].Value := qrFinalMUN_ID.AsInteger;
                                qrMunIbge.Open;

                                if qrMunIbgeCOD_MUN.AsString = '' then ShowMessage('Conhecimento c�digo: ' + qrDadosORD_ID.AsString + ' com municipio do destinat�rio da nota fiscal '+ qrNotasNFI_NUMERO.AsString + ' sem vinculo com a tabela IBGE');

                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.cidade.ibge=' + qrMunIbgeCOD_MUN.AsString);
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal2.endereco.cep=' + qrFinalCLIF_CEP.AsString);

                                //dados do consignatario
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.tipo=3');
                                f.Add('viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.codigo=2');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.documento.tipo=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.documento.numero=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.nome=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.logradouro=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.numero=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.complemento=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.bairro=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.endereco.cidade.ibge=');
                                f.Add('#viagem.documento' + IntToStr(N_NOTA) + '.pessoafiscal3.enderco.cep=');

                      qrNotas.Next;
                      end;
                end;

                }




                f.Add('');
                f.Add('viagem.documento.complementar.qtde=');
                f.Add('viagem.documento.complementar1.tipo=');
                f.Add('');
                f.Add('viagem.parcela.qtde=1');
                f.Add('viagem.parcela1.efetivacao.tipo=1');  //EFETIVA��O MANUAL, PARA AUTOMATICA MUDAR PARA 2
                f.Add('viagem.parcela1.valor=' + StringReplace(FormatFloat('##0.000', qrDadosMANI_VFRETEPAG.AsFloat), ',', '.', [rfReplaceAll]    ));
                f.Add('viagem.parcela1.subtipo=');
                f.Add('#viagem.parcela1.base=N');
                f.Add('viagem.parcela1.status.id=1');

                //CALCULAMOS A DATA DE PAGAMENTO FORA QUINZENA
                DIA := StrToInt(FormatDateTime('dd', qrDadosMANI_DATA.AsDateTime));
                meS := StrToInt(FormatDateTime('MM', qrDadosMANI_DATA.AsDateTime));
                ANO := StrToInt(FormatDateTime('yyyy', qrDadosMANI_DATA.AsDateTime));
                aux := '';
                if DIA <= 15 then begin
                    aux := '30';

                    if meS < 10 then
                        aux := aux + '/0' + IntToStr(meS)
                    else
                        aux := aux + '/' + IntToStr(meS);

                    aux := aux + '/' + IntToStr(ANO);

                    data_efetivacao := StrToDate(aux);
                end
                else
                begin
                    aux := '15/';
                    meS := meS + 1;

                    if meS = 13 then begin
                        meS := 1;
                        ANO := ANO + 1;
                    end;

                    if meS < 10 then
                        aux := aux + '0' + IntToStr(meS)
                    else
                        aux := aux + IntToStr(meS);

                    aux := aux + '/' + IntToStr(ANO);
                end;

                f.Add('viagem.parcela1.data=' + FormatDateTime('dd/MM/yyyy', data_efetivacao) );
                f.Add('viagem.parcela1.favorecido.tipo.id=1');
                f.Add('viagem.parcela1.numero.cliente=');
                {
                f.Add('viagem.parcela2.efetivacao.tipo=2');
                f.Add('viagem.parcela2.valor=2.00');
                f.Add('viagem.parcela2.subtipo=2');
                f.Add('#viagem.parcela2.base=N');
                f.Add('viagem.parcela2.status.id=1 ');
                f.Add('viagem.parcela2.data=31/10/2011 ');
                f.Add('viagem.parcela2.favorecido.tipo.id=1  ');
                f.Add('viagem.parcela2.numero.cliente=2');
                }
                f.Add('');
                f.Add('#viagem.quitacao.prazo=');
                f.Add('#viagem.quitacao.indicador=');
                f.Add('#viagem.quitacao.entrega.ressalva=');
                f.Add('#viagem.indicador.provedor.certificacao=');
                f.Add('#viagem.comprovacao.observacao=');
                f.Add('');
                f.Add('viagem.frete.valor.bruto=' +  StringReplace(FormatFloat('##0.000', qrDadosMANI_VFRETEPAG.AsFloat), ',', '.', [rfReplaceAll]    ));
                f.Add('viagem.frete.item.qtde=1');
                f.Add('viagem.frete.item1.tipo=');
                f.Add('viagem.frete.item1.valor=');



                f.SaveToFile(edtDiretorio.Text + '\' + qrDadosMANI_ID.AsString + '.tmp');
           except
               on e : Exception do begin
                    ShowMessage('Aconteceu um erro: ' + e.Message);
               end;
           end;
    finally
           f.Clear;
           FreeAndNil(f);
    end;

end;

procedure TfrmExportaPAMCARD.Button3Click(Sender: TObject);
begin
   qrAux.ExecSQL;

   with qrBusca do begin
       Close;
       sql.Clear;
       SQL.Add(
           'SELECT  DISTINCT	b.MANI_ID,	b.MANI_DATA,	b.CIOT,	b.PROTOCOLO_ANTT,	b.SEL_CIOT ' +
           ' from ORDEM_COLETA_ENTREGA A inner JOIN MANIFESTO B '+
           ' ON A. MANI_ID = B.MANI_ID left outer JOIN TRANSPORTADORA_MOTORISTA C    '+
           ' ON B.MOT_ID = C.MOT_ID INNER JOIN OEC_AUX D  '+
           ' ON A.ORD_ID = D.ORD_ID INNER JOIN TRANSPORTADORA E   '+
           ' ON B.TRANS_ID = E.TRANS_ID '
       );
       sql.Add('WHERE convert(varchar(10), B.MANI_DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))) );
       sql.Add('and convert(varchar(10), B.MANI_DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))) );
       sql.Add('order by  B.MANI_ID DESC');
       Open;
   end;
end;

procedure TfrmExportaPAMCARD.FormCreate(Sender: TObject);
begin
   MaskEdit1.Text := DateToStr(now);
   MaskEdit2.Text := DateToStr(now);
end;

procedure TfrmExportaPAMCARD.qrBuscaSEL_CIOTChange(Sender: TField);
VAR MANI_ID : Integer;
begin
   IF qrBuscaSEL_CIOT.AsString = 'S' then begin
        WITH qrAux2 DO begin
            CLOSE;
            SQL.Clear;
            SQL.Add(
               ' select COUNT(*) AS ACHEI FROM ORDEM_COLETA_ENTREGA ' +
               ' WHERE MANI_ID = ' + qrBuscaMANI_ID.AsString +
               ' AND ORD_ID NOT IN ( '+
               '         SELECT ORD_ID FROM OEC_AUX '+
               ' ) '
            );
            Open
        end;
        IF qrAux2.FieldByName('ACHEI').AsInteger > 0 then
        begin
            ShowMessage('Manifesto possui conhecimentos sem confirma��o de valores.');
            MANI_ID := qrBuscaMANI_ID.AsInteger;
            with qrAux2 DO BEGIN

                Close;
                SQL.Clear;
                SQL.Add('UPDATE MANIFESTO SET SEL_CIOT = ''N'' WHERE MANI_ID = ' + IntToStr(MANI_ID));
                ExecSQL;
            end;
            qrBusca.Close;
            qrBusca.Open;
            qrBusca.Locate('MANI_ID', MANI_ID, []);
            Abort;
        end;
    end;

    MANI_ID := qrBuscaMANI_ID.AsInteger;
    with qrAux2 DO BEGIN

        Close;
        SQL.Clear;
        SQL.Add('UPDATE MANIFESTO SET SEL_CIOT = ''S'' WHERE MANI_ID = ' + IntToStr(MANI_ID));
        ExecSQL;
    end;
    qrBusca.Close;
            qrBusca.Open;
            qrBusca.Locate('MANI_ID', MANI_ID, []);


end;

end.


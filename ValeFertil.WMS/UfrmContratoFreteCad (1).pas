unit UfrmContratoFreteCad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, DBCtrls, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, ComCtrls, Buttons, wwdblook;

type
  TfrmContratoFreteCad = class(TForm)
    qrContrato: TADOQuery;
    qrContratoIdContratoFrete: TAutoIncField;
    qrContratoTipoContrato: TStringField;
    qrContratoNumeroContrato: TStringField;
    qrContratoData: TDateTimeField;
    qrContratoRota: TStringField;
    qrContratoPrevisaoEntrega: TStringField;
    qrContratoOrigem: TStringField;
    qrContratoDestino: TStringField;
    qrContratoCIOT: TStringField;
    qrContratoCTE: TStringField;
    qrContratoRazao: TStringField;
    qrContratoTipoPessoa: TStringField;
    qrContratoCNPJ_CPF: TStringField;
    qrContratoIE_RG: TStringField;
    qrContratoIM_PIS: TStringField;
    qrContratoRNTRC: TStringField;
    qrContratovalRNTRC: TStringField;
    qrContratoEndereco: TStringField;
    qrContratoCEP: TStringField;
    qrContratoTelefone: TStringField;
    qrContratoEmail: TStringField;
    qrContratoBanco: TStringField;
    qrContratoAgencia: TStringField;
    qrContratoContaBancaria: TStringField;
    qrContratoTipoConta: TStringField;
    qrContratoPlaca: TStringField;
    qrContratoChassi: TStringField;
    qrContratoMarca: TStringField;
    qrContratoAno: TStringField;
    qrContratoRenavam: TStringField;
    qrContratoMotorista: TStringField;
    qrContratoMotoristaDtNas: TDateTimeField;
    qrContratoMotoristaTelefone: TStringField;
    qrContratoMotoristaCPF: TStringField;
    qrContratoMotoristaRG: TStringField;
    qrContratoMotoristaCNH: TStringField;
    qrContratoMotoristaCNHCategoria: TStringField;
    qrContratoMotoristaCNHValidade: TDateTimeField;
    qrContratoMotoristaMae: TStringField;
    qrContratoMotoristaPai: TStringField;
    qrContratoValorFrete: TBCDField;
    qrContratoValorOutros: TBCDField;
    qrContratoValorTotalContratado: TBCDField;
    qrContratoValorRetencoes: TBCDField;
    qrContratoValorFreteLiquido: TBCDField;
    qrContratoValorAdiantamento: TBCDField;
    qrContratoValorSaldoPagar: TBCDField;
    qrContratoValorReembolsoDesconto: TBCDField;
    qrContratoValorSaldoQuitacao: TBCDField;
    qrContratoBaseCalculoINSS: TBCDField;
    qrContratoRetencaoINSS: TBCDField;
    qrContratoRetencaoSEST: TBCDField;
    qrContratoRetencaoIRPF: TBCDField;
    qrContratoTotalRetencoes: TBCDField;
    qrContratoReembolsoPedagio: TBCDField;
    qrContratoReembolsoDescarga: TBCDField;
    qrContratoReembolsoOutros: TBCDField;
    qrContratoDescontos: TBCDField;
    qrContratoReembolsoDesconto: TBCDField;
    qrContratoObservacoes1: TStringField;
    qrContratoObservacoes2: TStringField;
    qrContratoDocumento: TStringField;
    qrContratoNotas: TStringField;
    qrContratoNatureza: TStringField;
    qrContratoUnidadeMedida: TStringField;
    qrContratoQuantidade: TStringField;
    qrContratoRemetente: TStringField;
    qrContratoDestinatario: TStringField;
    qrContratoRemetenteEndereco: TStringField;
    qrContratoDestinatarioEndereco: TStringField;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    GroupBox5: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Label49: TLabel;
    DBEdit49: TDBEdit;
    Label50: TLabel;
    DBEdit50: TDBEdit;
    Label51: TLabel;
    DBEdit51: TDBEdit;
    Label52: TLabel;
    DBEdit52: TDBEdit;
    Label53: TLabel;
    DBEdit53: TDBEdit;
    Label54: TLabel;
    DBEdit54: TDBEdit;
    Label55: TLabel;
    DBEdit55: TDBEdit;
    Label56: TLabel;
    DBEdit56: TDBEdit;
    Label57: TLabel;
    DBEdit57: TDBEdit;
    Label58: TLabel;
    DBEdit58: TDBEdit;
    Label59: TLabel;
    DBMemo1: TDBMemo;
    TabSheet5: TTabSheet;
    DBMemo2: TDBMemo;
    TabSheet6: TTabSheet;
    Label60: TLabel;
    DBEdit59: TDBEdit;
    Label61: TLabel;
    DBEdit60: TDBEdit;
    Label62: TLabel;
    DBEdit61: TDBEdit;
    Label63: TLabel;
    DBEdit62: TDBEdit;
    Label64: TLabel;
    DBEdit63: TDBEdit;
    Label65: TLabel;
    DBEdit64: TDBEdit;
    Label66: TLabel;
    DBEdit65: TDBEdit;
    Label67: TLabel;
    DBEdit66: TDBEdit;
    Label68: TLabel;
    DBEdit67: TDBEdit;
    SpeedButton1: TSpeedButton;
    qrTrans: TADOQuery;
    qrTransTRANS_ID: TAutoIncField;
    qrTransTRANS_FANTASIA: TStringField;
    qrTransTRANS_RAZA: TStringField;
    qrTransTRANS_CNPJ: TStringField;
    qrTransTRANS_INSCRICAO: TStringField;
    qrTransTRANS_ENDERECO: TStringField;
    qrTransTRANS_ENDERECO_COMPL: TStringField;
    qrTransTRANS_ENDERECO_BAIRRO: TStringField;
    qrTransTRANS_MUNICIPIO: TStringField;
    qrTransTRANS_CEP: TStringField;
    qrTransUF_SIGLA: TStringField;
    qrTransTRANS_TEL: TStringField;
    qrTransTRANS_TEL2: TStringField;
    qrTransTRANS_FAX: TStringField;
    qrTransTRANS_EMAIL: TStringField;
    qrTransTRANS_CONTATO: TStringField;
    qrTransTRANS_FLAG: TStringField;
    qrTransCON_CODI: TStringField;
    qrTransMUN_ID: TIntegerField;
    qrTransTRANS_PESSOA: TStringField;
    qrTransTRANS_REDES: TStringField;
    qrTransPIS: TStringField;
    qrTransIBGE_ID: TIntegerField;
    qrTransRNTRC: TStringField;
    qrTransTRANS_CATEGORIA: TStringField;
    qrMot: TADOQuery;
    qrMotMOT_ID: TAutoIncField;
    qrMotTRANS_ID: TIntegerField;
    qrMotMOT_NOME: TStringField;
    qrMotMOT_ENDERECO: TStringField;
    qrMotMOT_MUNICIPIO: TStringField;
    qrMotMOT_CEP: TStringField;
    qrMotUF_SIGLA: TStringField;
    qrMotMOT_CPF: TStringField;
    qrMotMOT_RG: TStringField;
    qrMotMOT_DT_NASC: TDateTimeField;
    qrMotMOT_RG_ORGAO: TStringField;
    qrMotMOT_CNH: TStringField;
    qrMotMOT_CNH_CATEG: TStringField;
    qrMotMOT_CNH_VALID: TDateTimeField;
    qrMotMOT_PAI: TStringField;
    qrMotMOT_MAE: TStringField;
    qrMotMOT_TEL_PESS: TStringField;
    qrMotMOT_TEL_COM: TStringField;
    qrMotMOT_PAMCARD: TStringField;
    qrMotMOT_PAMCARD_VIG: TDateTimeField;
    qrMotMOT_ENDERECO_COMPL: TStringField;
    qrMotMOT_ENDERECO_BAIRRO: TStringField;
    qrMotVEIC_ID: TIntegerField;
    qrMotMOT_VEIC_PLACA: TStringField;
    qrMotMOT_VEIC_CIDADE: TStringField;
    qrMotMOT_VEIC_UF_SIGLA: TStringField;
    qrMotMOT_VEIC_MARCA: TStringField;
    qrMotMOT_VEIC_ANO: TStringField;
    qrMotMOT_VEIC_MODELO: TStringField;
    qrMotMOT_VEIC_COR: TStringField;
    qrMotMOT_VEIC_CHASSI: TStringField;
    qrMotMOT_CARRETA_PLACA: TStringField;
    qrMotMOT_CARRETA_CIDADE: TStringField;
    qrMotMOT_CARRETA_UF_SIGLA: TStringField;
    qrMotMOT_CARRETA_MARCA: TStringField;
    qrMotMOT_CARRETA_ANO: TStringField;
    qrMotMOT_CARRETA_MODELO: TStringField;
    qrMotMOT_CARRETA_COR: TStringField;
    qrMotMOT_CARRETA_CHASSI: TStringField;
    qrMotMOT_PAMC_NUM: TStringField;
    qrMotMOT_NUMPIS: TStringField;
    qrMotMOT_CARRETA_COMPR: TFloatField;
    qrMotMOT_CARRETA_LARG: TFloatField;
    qrMotMOT_CARRETA_ALT: TFloatField;
    qrMotMOT_CARRETA_M3: TFloatField;
    qrMotMOT_NEXTEL: TStringField;
    qrMotMOT_EQUIP: TStringField;
    qrMotRENAVAN: TStringField;
    qrMotRNTRC: TStringField;
    qrMotPADRAO: TStringField;
    qrMotCIOT: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    qrContratoAdiantamentoPercentual: TBCDField;
    DBEdit10: TDBEdit;
    qrTransBANCO: TStringField;
    qrTransTIPOCONTA: TStringField;
    qrTransAGENCIA: TStringField;
    qrTransCONTACORRENTE: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure wwDBLookupCombo2Change(Sender: TObject);
    procedure CalculaValores();
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratoFreteCad: TfrmContratoFreteCad;

implementation

uses UMenu, UfrmContratoFreteRel;

{$R *.DFM}

procedure TfrmContratoFreteCad.SpeedButton1Click(Sender: TObject);
begin
   if qrContrato.State in [dsinsert, dsedit] then
        qrContrato.Post;
   frmContratoFreteRel := TfrmContratoFreteRel.Create(Self);
   frmContratoFreteRel.QuickRep1.Preview;

end;

procedure TfrmContratoFreteCad.FormCreate(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 0;
   qrTrans.Open;

end;

procedure TfrmContratoFreteCad.wwDBLookupCombo1Change(Sender: TObject);
begin
  try
        qrContratoTipoPessoa.Value := qrTransTRANS_PESSOA.Value;
        qrContratoCNPJ_CPF.Value := qrTransTRANS_CNPJ.Value;
        qrContratoIE_RG.Value := qrTransTRANS_INSCRICAO.Value;
        qrContratoRNTRC.Value := qrTransRNTRC.Value;
        qrContratoEndereco.Value := qrTransTRANS_ENDERECO.Value;
        qrContratoCEP.Value := qrTransTRANS_CEP.Value;
        qrContratoTelefone.Value := qrTransTRANS_TEL.Value;
        qrContratoIM_PIS.Value := qrTransPIS.Value;
        qrContratoEmail.Value := qrTransTRANS_EMAIL.Value;
        qrContratoBanco.AsString :=  qrTransBANCO.AsString;
        qrContratoTipoConta.AsString := qrTransTIPOCONTA.AsString;
        qrContratoAgencia.AsString := qrTransAGENCIA.AsString;
        qrContratoContaBancaria.AsString := qrTransCONTACORRENTE.AsString;

        qrMot.close;
        qrMot.Parameters[0].Value := qrTransTRANS_ID.AsInteger;
        qrMot.Open;
  except
    end;
end;

procedure TfrmContratoFreteCad.wwDBLookupCombo2Change(Sender: TObject);
begin
  try
   if wwDBLookupCombo2.Text <> '' then begin
       qrContratoMotoristaDtNas.Value := qrMotMOT_DT_NASC.Value;
       qrContratoMotoristaCPF.Value := qrMotMOT_CPF.Value;
       qrContratoMotoristaRG.Value := qrMotMOT_RG.Value;
       qrContratoMotoristaTelefone.Value := qrMotMOT_TEL_PESS.Value;
       qrContratoMotoristaCNH.Value := qrMotMOT_CNH.Value;
       qrContratoMotoristaCNHCategoria.Value := qrMotMOT_CNH_CATEG.Value;
       qrContratoMotoristaCNHValidade.Value := qrMotMOT_CNH_VALID.Value;
       qrContratoMotoristaMae.Value := qrMotMOT_MAE.Value;
       qrContratoMotoristaPai.Value := qrMotMOT_PAI.Value;
       qrContratoPlaca.Value := qrMotMOT_VEIC_PLACA.Value;
       qrContratoChassi.Value := qrMotMOT_VEIC_CHASSI.Value;
       qrContratoMarca.Value := qrMotMOT_VEIC_MARCA.Value;
       qrContratoAno.Value := qrMotMOT_VEIC_ANO.Value;
       qrContratoRenavam.Value := qrMotRENAVAN.Value;

   end;
   except
     end;
end;

procedure TfrmContratoFreteCad.CalculaValores;
var
    Total, BaseINSS, RetencaoINSS, RetencaoSEST, RetencaoIRPF, TotalRetencoes, FRETEPERCENTUAL : Real;

begin
    try
      qrContrato.Edit;
      qrContratoValorTotalContratado.AsFloat := qrContratoValorFrete.AsFloat + qrContratoValorOutros.AsFloat;
      if qrContratoTipoPessoa.AsString = 'F' then begin


          qrContratoBaseCalculoINSS.AsFloat := (20 * qrContratoValorTotalContratado.AsFloat) / 100;
          qrContratoRetencaoINSS.Value :=  (11 * qrContratoBaseCalculoINSS.AsFloat) / 100;
          qrContratoRetencaoSEST.Value := (2.5 * qrContratoBaseCalculoINSS.AsFloat) / 100;

          //calcula IRPF
          FRETEPERCENTUAL := (10 * qrContratoValorFrete.AsFloat) / 100;
          if FRETEPERCENTUAL <  1787.77 then
                qrContratoRetencaoIRPF.Value := 0;

          if (FRETEPERCENTUAL >= 1787.78) AND (FRETEPERCENTUAL <= 2679.29) then begin
              qrContratoRetencaoIRPF.Value := ((7.5 * FRETEPERCENTUAL) / 100) - 134.08;
          end;

          if (FRETEPERCENTUAL >= 2679.30) AND (FRETEPERCENTUAL <= 3572.43) then begin
              qrContratoRetencaoIRPF.Value := ((15 * FRETEPERCENTUAL) / 100) - 335.03;
          end;

          if (FRETEPERCENTUAL >= 3572.44) AND (FRETEPERCENTUAL <= 4463.81) then begin
              qrContratoRetencaoIRPF.Value := ((22.5 * FRETEPERCENTUAL) / 100) - 602.96;
          end;

          if FRETEPERCENTUAL >= 4463.82 then begin
              qrContratoRetencaoIRPF.Value := ((27.5 * FRETEPERCENTUAL) / 100) - 826.15;
          end;

          qrContratoTotalRetencoes.AsFloat :=  qrContratoRetencaoINSS.AsFloat + qrContratoRetencaoSEST.AsFloat + qrContratoRetencaoIRPF.AsFloat;
          qrContratoValorRetencoes.AsFloat :=  qrContratoTotalRetencoes.AsFloat;
      end;

      qrContratoValorFreteLiquido.AsFloat :=  qrContratoValorTotalContratado.AsFloat - qrContratoTotalRetencoes.AsFloat;
      qrContratoValorSaldoPagar.AsFloat :=  qrContratoValorFreteLiquido.AsFloat - qrContratoValorAdiantamento.AsFloat;
      qrContratoReembolsoDesconto.AsFloat := qrContratoReembolsoPedagio.AsFloat + qrContratoReembolsoDescarga.AsFloat + qrContratoReembolsoOutros.AsFloat - qrContratoDescontos.AsFloat;


      qrContratoValorReembolsoDesconto.AsFloat := qrContratoReembolsoDesconto.AsFloat;
      qrContratoValorSaldoQuitacao.AsFloat := qrContratoValorSaldoPagar.AsFloat + qrContratoValorReembolsoDesconto.AsFloat;
      
      qrContrato.POST;
    except

    end;
end;

procedure TfrmContratoFreteCad.DBEdit40Exit(Sender: TObject);
begin
     CalculaValores();
end;

procedure TfrmContratoFreteCad.DBEdit10Exit(Sender: TObject);
begin
  qrContrato.Edit;
  if qrContratoAdiantamentoPercentual.AsFloat > 0 then
        qrContratoValorAdiantamento.AsFloat := (qrContratoAdiantamentoPercentual.AsFloat * qrContratoValorFrete.AsFloat) / 100;

  CalculaValores;
end;

end.

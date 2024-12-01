unit UfrmContratoFretePesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, Db, ADODB;

type
  TfrmContratoFretePesq = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    MaskEdit3: TMaskEdit;
    Label3: TLabel;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    qrBuscaIdContratoFrete: TAutoIncField;
    qrBuscaTipoContrato: TStringField;
    qrBuscaNumeroContrato: TStringField;
    qrBuscaData: TDateTimeField;
    qrBuscaRota: TStringField;
    qrBuscaPrevisaoEntrega: TStringField;
    qrBuscaOrigem: TStringField;
    qrBuscaDestino: TStringField;
    qrBuscaCIOT: TStringField;
    qrBuscaCTE: TStringField;
    qrBuscaRazao: TStringField;
    qrBuscaTipoPessoa: TStringField;
    qrBuscaCNPJ_CPF: TStringField;
    qrBuscaIE_RG: TStringField;
    qrBuscaIM_PIS: TStringField;
    qrBuscaRNTRC: TStringField;
    qrBuscavalRNTRC: TStringField;
    qrBuscaEndereco: TStringField;
    qrBuscaCEP: TStringField;
    qrBuscaTelefone: TStringField;
    qrBuscaEmail: TStringField;
    qrBuscaBanco: TStringField;
    qrBuscaAgencia: TStringField;
    qrBuscaContaBancaria: TStringField;
    qrBuscaTipoConta: TStringField;
    qrBuscaPlaca: TStringField;
    qrBuscaChassi: TStringField;
    qrBuscaMarca: TStringField;
    qrBuscaAno: TStringField;
    qrBuscaRenavam: TStringField;
    qrBuscaMotorista: TStringField;
    qrBuscaMotoristaDtNas: TDateTimeField;
    qrBuscaMotoristaTelefone: TStringField;
    qrBuscaMotoristaCPF: TStringField;
    qrBuscaMotoristaRG: TStringField;
    qrBuscaMotoristaCNH: TStringField;
    qrBuscaMotoristaCNHCategoria: TStringField;
    qrBuscaMotoristaCNHValidade: TDateTimeField;
    qrBuscaMotoristaMae: TStringField;
    qrBuscaMotoristaPai: TStringField;
    qrBuscaValorFrete: TBCDField;
    qrBuscaValorOutros: TBCDField;
    qrBuscaValorTotalContratado: TBCDField;
    qrBuscaValorRetencoes: TBCDField;
    qrBuscaValorFreteLiquido: TBCDField;
    qrBuscaValorAdiantamento: TBCDField;
    qrBuscaValorSaldoPagar: TBCDField;
    qrBuscaValorReembolsoDesconto: TBCDField;
    qrBuscaValorSaldoQuitacao: TBCDField;
    qrBuscaBaseCalculoINSS: TBCDField;
    qrBuscaRetencaoINSS: TBCDField;
    qrBuscaRetencaoSEST: TBCDField;
    qrBuscaRetencaoIRPF: TBCDField;
    qrBuscaTotalRetencoes: TBCDField;
    qrBuscaReembolsoPedagio: TBCDField;
    qrBuscaReembolsoDescarga: TBCDField;
    qrBuscaReembolsoOutros: TBCDField;
    qrBuscaDescontos: TBCDField;
    qrBuscaReembolsoDesconto: TBCDField;
    qrBuscaObservacoes1: TStringField;
    qrBuscaObservacoes2: TStringField;
    qrBuscaDocumento: TStringField;
    qrBuscaNotas: TStringField;
    qrBuscaNatureza: TStringField;
    qrBuscaUnidadeMedida: TStringField;
    qrBuscaQuantidade: TStringField;
    qrBuscaRemetente: TStringField;
    qrBuscaDestinatario: TStringField;
    qrBuscaRemetenteEndereco: TStringField;
    qrBuscaDestinatarioEndereco: TStringField;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratoFretePesq: TfrmContratoFretePesq;

implementation

uses UMenu, UfrmContratoFreteCad, ufrmContratoFreteListaRel;

{$R *.DFM}

procedure TfrmContratoFretePesq.Button1Click(Sender: TObject);
begin
  with qrBusca do begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM CONTRATOFRETE WHERE 1 = 1 ');
      sql.Add(' and convert(varchar, data, 121) >= ' + QuotedStr(FormatDateTime('yyyymmdd', StrToDate(MaskEdit1.Text))));
      sql.Add(' and convert(varchar, data, 121) <= ' + QuotedStr(FormatDateTime('yyyymmdd', StrToDate(MaskEdit2.Text))));

      if MaskEdit3.Text <> '' then
        sql.Add(' and Razao like ' + QuotedStr('%' + MaskEdit3.Text + '%'));

      SQL.Add('order by data desc');
      Open;

  end;
end;

procedure TfrmContratoFretePesq.FormCreate(Sender: TObject);
begin
        MaskEdit1.Text := FormatDateTime('dd/mm/yyyy', Now);
        MaskEdit2.Text := FormatDateTime('dd/mm/yyyy', Now);
end;

procedure TfrmContratoFretePesq.wwDBGrid1DblClick(Sender: TObject);
begin
  try
   frmContratoFreteCad := TfrmContratoFreteCad.Create(Self);
   frmContratoFreteCad.qrTrans.Open;
   frmContratoFreteCad.qrContrato.Close;
   frmContratoFreteCad.qrContrato.Parameters[0].Value := qrBuscaIdContratoFrete.AsInteger;
   frmContratoFreteCad.qrContrato.Open;
   frmContratoFreteCad.ShowModal;
  except

  end;
end;

procedure TfrmContratoFretePesq.Button2Click(Sender: TObject);
begin
  try
   frmContratoFreteCad := TfrmContratoFreteCad.Create(Self);
   frmContratoFreteCad.qrTrans.Open;
   frmContratoFreteCad.qrContrato.Close;
   frmContratoFreteCad.qrContrato.Parameters[0].Value := 0;
   frmContratoFreteCad.qrContrato.Open;
   frmContratoFreteCad.ShowModal;
  except

  end;
end;

procedure TfrmContratoFretePesq.Button3Click(Sender: TObject);
begin
        frmContratoFreteListaRel := TfrmContratoFreteListaRel.Create(Self);
        frmContratoFreteListaRel.QuickRep1.Preview;
end;

end.

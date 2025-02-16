unit UfrmConfirmaSolicitacaoEstoqueMinimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, Buttons, Mask;

type
  TfrmConfirmaSolicitacaoEstoqueMinimo = class(TForm)
    qrCentroCusto: TADOQuery;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoFinancSN: TStringField;
    qrLocal: TADOQuery;
    qrLocalDescricao: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    Label1: TLabel;
    cboLocal: TwwDBLookupCombo;
    cboCentroCusto: TwwDBLookupCombo;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmaSolicitacaoEstoqueMinimo: TfrmConfirmaSolicitacaoEstoqueMinimo;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmConfirmaSolicitacaoEstoqueMinimo.BitBtn1Click(
  Sender: TObject);
  var sql : string;
begin
  if cboLocal.Text = '' then begin
      ShowMessage('Informe o local');
      Abort;
  end;

    if cboCentroCusto.Text = '' then begin
      ShowMessage('Informe o centro de custo');
      Abort;
  end;

   sql := 'EXEC STP_GerarSolicitacaoCotacaoEstoqueMinimo ';
   sql :=  sql + ' @Usuario = ' + FMenu.sqlUsuariosCH.AsString;
   sql :=  sql + ' ,@CC = ' + cboCentroCusto.LookupValue;
   sql :=  sql + ' ,@DATAPROGRAMACAO = ' + QuotedStr(FormatDateTime('yyyy-MM-dd', StrToDate(MaskEdit1.Text)));
   sql :=  sql + ' ,@LOCAL_ID = ' + cboLocal.LookupValue;
   sql :=  sql + ' , @MOTIVO = ' + QuotedStr('Solicitação Referente a Consulta de Estoque');

   ADOQuery1.sql.Clear;
   ADOQuery1.SQL.Add(sql);
   ADOQuery1.ExecSQL;

   ShowMessage('Solicitação criada com sucesso!');
   Self.Close;


end;

procedure TfrmConfirmaSolicitacaoEstoqueMinimo.FormCreate(Sender: TObject);
begin
  qrCentroCusto.Open;
  qrLocal.Open;
  MaskEdit1.Text := FormatDateTime('dd/MM/yyyy', Now);
end;

end.

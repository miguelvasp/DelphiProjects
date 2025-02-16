unit UfrmNFeGerarRecebimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, ExtCtrls, Db, ADODB;

type
  TfrmNFeGerarRecebimento = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    cboCondicao: TwwDBLookupCombo;
    Label2: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label3: TLabel;
    cboFilial: TwwDBLookupCombo;
    Button1: TButton;
    qrCond: TADOQuery;
    qrLocal: TADOQuery;
    qrFilial: TADOQuery;
    qrCondCOND_PGTO_ID: TAutoIncField;
    qrCondDESCRICAO: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrFilialFIL_CODI: TStringField;
    qrFilialFIL_DESC: TStringField;
    lbOk: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFeGerarRecebimento: TfrmNFeGerarRecebimento;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmNFeGerarRecebimento.FormCreate(Sender: TObject);
begin
  qrCond.Open;
  qrLocal.Open;
  qrFilial.Open;
end;

procedure TfrmNFeGerarRecebimento.Button1Click(Sender: TObject);
begin
  lbOk.Caption := '';
  if (cboCondicao.Text = '') or (cboLocal.Text = '') or (cboFilial.Text = '') then begin
      ShowMessage('Preencha todas as informações');
      Abort;
  end;

  lbOk.Caption := 'ok';
  Self.Close;

end;

end.

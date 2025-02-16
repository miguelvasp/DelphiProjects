unit ufrmReqExcecao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, ExtCtrls;

type
  TfrmReqExcecao = class(TForm)
    pnlExecao: TPanel;
    Label5: TLabel;
    lbUsuario: TLabel;
    Label6: TLabel;
    edtJustificativa: TEdit;
    Button4: TButton;
    Button5: TButton;
    qrExcecao: TADOQuery;
    qrExcecaoID: TAutoIncField;
    qrExcecaoREQ_ID: TIntegerField;
    qrExcecaoDATA: TDateTimeField;
    qrExcecaoMAT_ID: TIntegerField;
    qrExcecaoN_LOTE: TStringField;
    qrExcecaoVALID: TDateTimeField;
    qrExcecaoJustificativa: TStringField;
    qrExcecaoUsuario: TStringField;
    qrExcecaoQtde: TFloatField;
    Label1: TLabel;
    edtSenha: TEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReqExcecao: TfrmReqExcecao;

implementation

uses UMenu, ufrmLeitorCodigo, URequisicao;

{$R *.DFM}

procedure TfrmReqExcecao.Button4Click(Sender: TObject);
begin

    iF edtSenha.Text <> FMenu.sqlUsuariosSenha.AsString then begin
        ShowMessage('A senha informada est� incorreta');
        Abort;
    end;

    IF edtJustificativa.Text = '' then begin
        ShowMessage('Informe a justificativa');
        edtJustificativa.SetFocus;
        Abort;
    end;

    qrExcecao.Open;
    qrExcecao.Append;
    qrExcecaoREQ_ID.AsInteger := FRequisicao.Q_REQYReq_ID.AsInteger;
    qrExcecaoDATA.AsDateTime := FRequisicao.Q_REQYData.AsDateTime;
    qrExcecaoMAT_ID.AsInteger := frmLeitorCodigo.qrBarrasMAT_ID.AsInteger;
    qrExcecaoN_LOTE.AsString := frmLeitorCodigo.qrBarrasN_LOTE.AsString;
    qrExcecaoVALID.Value := frmLeitorCodigo.qrBarrasVALIDADE.Value;
    qrExcecaoJustificativa.AsString := edtJustificativa.Text;
    qrExcecaoQtde.AsFloat := StrToFloat(frmLeitorCodigo.edtQtde.Text);
    qrExcecaoUsuario.AsString := FMenu.sqlUsuariosNome.AsString;
    qrExcecao.Post;
    frmLeitorCodigo.lbExcecaoOK.Caption := 'OK';
    Close;
end;

procedure TfrmReqExcecao.Button5Click(Sender: TObject);
begin
    frmLeitorCodigo.lbExcecaoOK.Caption := 'ERRO';
    CLOSE;
end;

procedure TfrmReqExcecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmReqExcecao := nil;
end;

end.

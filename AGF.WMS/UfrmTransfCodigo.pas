unit UfrmTransfCodigo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, ADODB;

type
  TfrmTransfCodigo = class(TForm)
    qrCliente: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    edtAntigo: TEdit;
    Label3: TLabel;
    edtNovo: TEdit;
    Alterar: TButton;
    qrAux: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransfCodigo: TfrmTransfCodigo;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmTransfCodigo.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
end;

procedure TfrmTransfCodigo.AlterarClick(Sender: TObject);
var pro_id : string;
begin

     if wwDBLookupCombo1.Text = '' then begin
         ShowMessage('informe o cliente');
         Abort;
     end;

     if edtAntigo.Text = '' then begin
         ShowMessage('Informe o codigo antigo');
         Abort;
     end;

     if edtNovo.Text = '' then begin
         ShowMessage('Informe o codigo novo');
         Abort;
     end;

     with qrAux do begin
         Close;
         sql.Clear;
         sql.Add('select pro_id from produto where pro_cod = ' + QuotedStr(edtAntigo.Text));
         SQL.Add('AND CLIN_ID = ' + wwDBLookupCombo1.LookupValue);
         Open;
     end;
     if qrAux.FieldByName('pro_id').AsString = '' then begin
         shoWmessage('Produto nao encontrado');
         Abort;
     end;

     pro_id := qrAux.FieldByName('pro_id').AsString;


     FMenu.ADOConnection.BeginTrans;
     try

         with qrAux do begin
             close;
             sql.Clear  ;
             sql.Add('exec TRANSFERE_PRODUTO ' + pro_id + ', ' + QuotedStr(edtNovo.Text) + ', ' + FMenu.SqlUsuariosCH.AsString);
             ExecSQL;
         end;
         FMenu.ADOConnection.CommitTrans;
         edtAntigo.Text := '';
         edtNovo.Text := '';
         ShowMessage('Transferência efetuada com sucesso!');
         edtAntigo.SetFocus;
     except
       on e : Exception do begin
         FMenu.ADOConnection.RollbackTrans;
         ShowMessage('Ocorreu um erro: ' + e.Message);
       end;
     end;


end;

procedure TfrmTransfCodigo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrCliente.Close;
  Action := caFree;
  frmTransfCodigo := nil;
end;

end.

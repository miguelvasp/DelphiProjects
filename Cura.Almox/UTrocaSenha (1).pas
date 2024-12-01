unit UTrocaSenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, RzPanel;

type
  TfrmAlteraSenha = class(TForm)
    Image1: TImage;
    RzGroupBox1: TRzGroupBox;
    edtSenha: TEdit;
    RzGroupBox2: TRzGroupBox;
    edtNovaSenha: TEdit;
    RzGroupBox3: TRzGroupBox;
    edtConfirmaSenha: TEdit;
    BitBtn1: TBitBtn;
    qrSenha: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraSenha: TfrmAlteraSenha;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmAlteraSenha.BitBtn1Click(Sender: TObject);
begin
   if edtSenha.Text = FMenu.sqlUsuariosSenha.Value then
   begin
        if edtNovaSenha.Text = edtConfirmaSenha.Text then
        begin
            qrSenha.Parameters[0].Value := edtNovaSenha.Text;
            qrSenha.Parameters[1].Value := FMenu.sqlUsuariosCH.Value;
            qrSenha.ExecSQL;
            FMenu.RecarregaUsuario;
            MessageBox(Self.Handle, 'Senha alterada com sucesso', 'Informação', MB_OK + MB_ICONINFORMATION);
            close;
        end
        else
           MessageBox(Self.Handle, 'A nova senha e a confirmação não são iguais', 'Erro', MB_OK + MB_ICONERROR);
   end
   else
   begin
       MessageBox(Self.Handle, 'A senha informada não é igual a senha da base de dados.', 'Erro', MB_OK + MB_ICONERROR);
   end;
end;

procedure TfrmAlteraSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmAlteraSenha := nil;
end;

end.

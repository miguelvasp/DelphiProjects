unit Unt_Senha;
                             
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DbTables, Wwquery, QuickRpt, Qrctrls,
  jpeg;

type
  TDfm_Senha = class(TForm)
    wwQ_Empresa: TwwQuery;
    wwQ_EmpresaEmp_Sequencia: TIntegerField;
    wwQ_EmpresaEmp_Razao: TStringField;
    Q_AUX: TwwQuery;
    Q_AUXNOME: TStringField;
    Q_AUXSENHA: TStringField;
    Image3: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dfm_Senha: TDfm_Senha;
  StrUsuario: STRING;

implementation
uses UMenu ;

{$R *.DFM}

procedure TDfm_Senha.FormShow(Sender: TObject);
begin
     Edit1.SetFocus;
end;

procedure TDfm_Senha.Edit1Enter(Sender: TObject);
begin
     (Sender as TEdit).Color := ClAqua;
end;

procedure TDfm_Senha.Edit1Exit(Sender: TObject);
begin
     (Sender as TEdit).Color := ClWindow;
end;


procedure TDfm_Senha.FormCreate(Sender: TObject);
begin

   if upperCase(ParamStr(1)) = 'TRATOR' then
      MessageDlg('Atenção : Você está conectado ao Servidor Principal e no Banco TRATOR !!!!',MtInformation,[Mbok],0);
   if upperCase(ParamStr(1)) = 'TRATORBK' then
      MessageDlg('Atenção : Você está conectado ao Servidor Principal e no Banco de Backup !!!!',MtInformation,[Mbok],0);
   if upperCase(ParamStr(1)) = 'TRATORTST' then
      MessageDlg('Atenção : Você está conectado ao Servidor Principal e no Banco de TESTE !!!!',MtInformation,[Mbok],0);
   if upperCase(ParamStr(1)) = 'HIDTRATOR' then
      MessageDlg('Atenção : Você está conectado ao Servidor Reserva e no Banco TRATOR !!!!',MtInformation,[Mbok],0);
   if upperCase(ParamStr(1)) = 'HIDTRATORBK' then
      MessageDlg('Atenção : Você está conectado ao Servidor Reserva e no Banco de Backup !!!!',MtInformation,[Mbok],0);
   if upperCase(ParamStr(1)) = 'HIDTRATORTST' then
      MessageDlg('Atenção : Você está conectado ao Servidor Reserva e no Banco de TESTE !!!!',MtInformation,[Mbok],0);
end;

procedure TDfm_Senha.SpeedButton1Click(Sender: TObject);
var
StrSenha : string;
begin
     StrUsuario:= '';
     StrUsuario:= uppercase(Edit1.text);
     StrSenha := edit2.Text;

     FMenu.Database1.Open;

     Q_AUX.SQL.Clear;
     Q_AUX.SQL.Add(' SELECT NOME, SENHA FROM USUARIOALMOX ');
     Q_AUX.SQL.Add(' WHERE NOME = ''' + StrUsuario + '''');
     Q_AUX.Open;

     if Q_AUX.EOF then
     begin
        MessageDlg('Usuário não cadastrado.', mtError, [mbok], 0);
        abort;
     end
     else
     begin
        if UPPERCASE(Q_AUX.FieldByName('SENHA').asstring) <> StrSenha then
        begin
                MessageDlg('Senha incorreta.', mtError, [mbok], 0);
                abort;
        end;

        //Fmenu.FUsuario := edit1.text ;
        close;
      end;
     
end;

procedure TDfm_Senha.SpeedButton2Click(Sender: TObject);
begin
     Application.Terminate;
     close;
end;

procedure TDfm_Senha.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
    Begin
        SpeedButton1.Click;
    End;
end;

procedure TDfm_Senha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
    Begin
        Edit2.setfocus;
    End;
end;

end.

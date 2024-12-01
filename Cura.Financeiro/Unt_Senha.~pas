unit Unt_Senha;
                             
interface                                       

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DbTables, Wwquery, QuickRpt, Qrctrls,
  wwdblook, jpeg;

type
  TDfm_Senha = class(TForm)
    wwQ_Empresa: TwwQuery;
    wwQ_EmpresaEmp_Sequencia: TIntegerField;
    wwQ_EmpresaEmp_Razao: TStringField;
    Q_AUX: TwwQuery;
    Label3: TLabel;
    qrBancos_BDE: TwwQuery;
    qrBancos_BDEALIAS: TStringField;
    qrBancos_BDENOME: TStringField;
    img1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    cboBancosBDE: TwwDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
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
  StrUsuFinan: STRING;
  BaseDados:String;

implementation

uses cppMenu ;

{$R *.DFM}

procedure TDfm_Senha.FormShow(Sender: TObject);
begin
     //Dfm_Senha.Height := 160;
     Edit1.SetFocus;
     qrBancos_BDE.open;
     qrBancos_BDE.Last;

     {
        NESTE PONTO É VERIFICADO SE EXISTE MAIS DE UM BANCO PREPARADO PARA SER
        ACESSADO PELO SISTEMA FINANCEIRO
     }

     if qrBancos_BDE.RecordCount > 0 then
     begin
         //cboBancosBDE.Visible := True;
        // lbBase.Visible := TRUE;
         cboBancosBDE.Visible := True;
         qrBancos_BDE.First;
         cboBancosBDE.Text := qrBancos_BDENOME.Value;
         cboBancosBDE.LookupValue := qrBancos_BDEALIAS.Value;
     end;

end;

procedure TDfm_Senha.Edit1Enter(Sender: TObject);
begin
     //(Sender as TEdit).Color := clAqua ;
end;

procedure TDfm_Senha.SpeedButton1Click(Sender: TObject);
var
StrSenha : string;
SQL      : string;
Alias    : string;
begin


     StrUsuFinan:= '';
     StrUsuFinan:= uppercase(Edit1.text);
     StrSenha := uppercase(edit2.Text);

     SQL:= ' SELECT EMP_NOME FROM PARAMETROS ' ;

     Q_AUX.SQL.Clear;
     Q_AUX.SQL.Add(sql);
     Q_AUX.OPEN;


     {
     INFORMAÇÕES SOBRE ACESSO A DIVERSOS BANCOS DE DADOS

     NO BANCO RELACIONADO AO ALIAS NO BDE - "FINANCEIRO"

     EXISTE UMA TABELA CHAMADA BANCOS_BDE, NELA DEVEM SER PREENCHIDOS

     OS VALORES PARA O ALIAS E O NOME DOS BANCOS QUE PODEM SER ACESSADOS
     }


     if cboBancosBDE.Visible = True then
        Alias := cboBancosBDE.LookupValue;


     FMenu.Database1.Close;


     if cboBancosBDE.Visible = True then
        FMenu.Database1.AliasName := Alias;


     FMenu.Database1.Open;
     FMenu.Q_FOTO.OPEN;

     Q_AUX.SQL.Clear;
     Q_AUX.SQL.Add('SELECT UPPER(NOME) NOME, UPPER(SENHA) SENHA FROM USUARIOFINANCEIRO');
     Q_AUX.Open;

     if not Q_AUX.Locate('NOME',StrUsuFinan,[]) then
     begin
        MessageDlg('Usuário não cadastrado.', mtError, [mbok], 0);
        abort;
     end
     else
     begin
        if Q_AUX.FieldByName('SENHA').asstring <> StrSenha then
        begin
                MessageDlg('Senha incorreta !', mtError, [mbok], 0);
                abort;
        end;

        Fmenu.FUsuario := edit1.text ;
        if cboBancosBDE.Text <> '' then
                FMenu.StatusBar1.Panels[2].Text := 'Conectado ao banco: ' + cboBancosBDE.Text;
        close ;
     end;

end;

procedure TDfm_Senha.SpeedButton2Click(Sender: TObject);
begin
     Application.Terminate;
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

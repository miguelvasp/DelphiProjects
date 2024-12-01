
unit USenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DbTables, Wwquery, ADODB, RzPanel,
  RzRadGrp, jpeg;    {p}

type
  TFSenha = class(TForm)
    wwQ_Empresa: TwwQuery;
    wwQ_EmpresaEmp_Sequencia: TIntegerField;
    wwQ_EmpresaEmp_Razao: TStringField;
    Dtb_BaseDados: TDatabase;
    Session1: TSession;
    Q_USUA: TwwQuery;
    Q_USUACH: TAutoIncField;
    Q_USUANOME: TStringField;
    Q_USUASENHA: TStringField;
    Q_USUACHAMADA1: TStringField;
    Q_USUACHAMADA1A: TStringField;
    Q_USUACHAMADA1B: TStringField;
    Q_USUACHAMADA1C: TStringField;
    Q_USUACHAMADA1D: TStringField;
    Q_USUACHAMADA1E: TStringField;
    Q_USUACHAMADA1F: TStringField;
    Q_USUACHAMADA1G: TStringField;
    Q_USUACHAMADA1H: TStringField;
    Q_USUACHAMADA1I: TStringField;
    Q_USUACHAMADA1J: TStringField;
    Q_USUACHAMADA1K: TStringField;
    Q_USUACHAMADA1L: TStringField;
    Q_USUACHAMADA1M: TStringField;
    Q_USUACHAMADA1N: TStringField;
    Q_USUACHAMADA1O: TStringField;
    Q_USUACHAMADA1P: TStringField;
    Q_USUACHAMADA2: TStringField;
    Q_USUACHAMADA2A: TStringField;
    Q_USUACHAMADA2B: TStringField;
    Q_USUACHAMADA2C: TStringField;
    Q_USUACHAMADA2D: TStringField;
    Q_USUACHAMADA2E: TStringField;
    Q_USUACHAMADA2F: TStringField;
    Q_USUACHAMADA2F1: TStringField;
    Q_USUACHAMADA2F2: TStringField;
    Q_USUACHAMADA2F3: TStringField;
    Q_USUACHAMADA3: TStringField;
    Q_USUACHAMADA3A: TStringField;
    Q_USUACHAMADA3B: TStringField;
    Q_USUACHAMADA3C: TStringField;
    Q_USUACHAMADA3D: TStringField;
    Q_USUACHAMADA3E: TStringField;
    Q_USUACHAMADA3F: TStringField;
    Q_USUACHAMADA3F1: TStringField;
    Q_USUACHAMADA4: TStringField;
    Q_USUACHAMADA4A: TStringField;
    Q_USUACHAMADA4B: TStringField;
    Q_USUASAIR: TStringField;
    Q_USUACHAMADA2F4: TStringField;
    Q_USUACHAMADA3K: TStringField;
    qrLogin: TwwQuery;
    qrLoginnome: TStringField;
    qrLoginsenha: TStringField;
    Image3: TImage;
    RadioGroup1: TRzRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Function FQuery(Q: TwwQuery; L0, L1, L2, L3, L4: String): Boolean;

var
  FSenha: TFSenha;
  StrUsuario : string ;
  SQLCorrente : TwwQuery;
  RegistroCorrente: Variant;

implementation

uses UMenu, U_Funcoes;

{$R *.DFM}

Function FQuery(Q: TwwQuery; L0, L1, L2, L3, L4: String): Boolean;
begin
   Q.Close;
   Q.SQL.Clear;
   Q.SQL.Add(L0);
   Q.SQL.Add(L1);
   Q.SQL.Add(L2);
   Q.SQL.Add(L3);
   Q.SQL.Add(L4);
   Q.Open;
   Result := (Q.recordcount > 0);
end;

procedure TFSenha.FormShow(Sender: TObject);
begin
     Edit1.SetFocus;
end;

procedure TFSenha.Edit1Enter(Sender: TObject);
begin
     (Sender as TEdit).Color := clSilver;
end;

procedure TFSenha.Edit1Exit(Sender: TObject);
begin
 (Sender as TEdit).Color := ClWindow;

//     
//
//     IF (TRIM(EDIt1.text) <> '') and (TRIM(EDIt2.text) <> '') then begin
//
//
//               Try
//              With Dtb_Basedados do
//                   Begin
//                        Connected := False ;
//                        Screen.Cursor := CrHourGlass;
//                        Self.Caption  := 'Aguarde, conectando ao Banco...';
//                        if ParamStr(1) <> '' then
//                           AliasName  := upperCase(ParamStr(1)) ;
//                        Close;
//                        Params.Clear;
//                        Params.Add('USER NAME='+Edit1.text);
//                        Params.Add('PASSWORD='+EDit2.Text);
//                        Open;
//                        StrUsuario := Edit1.text ;
//                        Q_USUA.Open ;
//                        ///Q_USUA2.Open ;
//                        if not Q_USUA.Locate('NOME',edit1.text,[loCaseInsensitive]) then begin
//                           MessageDlg('Usuário não autorizado !',MtInformation,[Mbok],0);
//                           Q_USUA.close ;
//                           Connected := False ;
//                           Edit1.setfocus ;
//                           abort ;
//                        end ;
//                        ///Q_USUA2.Locate('CH',Q_USUACH.asstring,[])    ;
//                        Q_USUA.close ;
//                        Screen.Cursor := CrDefault;
//                        Self.Close;
//
//                   End
//              Except
//              On E:EdbEngineError do
//                 Begin
//
//                      MessageDlg(e.Message,MtError,[mbok],0);
//                 End;
//              End;
//           Application.CreateForm(TFMenu, FMenu);
//           Fmenu.Showmodal;
//           FMenu.release ;
//        end ;


end;

procedure TFSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin

       If Key = #13 Then
        Begin
             Key := #0;
             SendMessage(Self.Handle,Wm_NextDlgCtl,0,0);
        End;

end;

procedure TFSenha.SpeedButton5Click(Sender: TObject);
begin

//    Try
//        With Dtb_Basedados do
//             Begin
//                  Connected := False ;
//                  Screen.Cursor := CrHourGlass;
//                  Self.Caption  := 'Aguarde, conectando ao Banco...';
//                  if ParamStr(1) <> '' then
//                     AliasName  := upperCase(ParamStr(1)) ;
//                  Close;
//                  Params.Clear;
//                  Params.Add('USER NAME='+Edit1.text);
//                  Params.Add('PASSWORD='+EDit2.Text);
//                  Open;
//                  StrUsuario := Edit1.text ;
//                  Q_USUA.Open ;
//                  ///Q_USUA2.Open ;
//                  if not Q_USUA.Locate('NOME',edit1.text,[loCaseInsensitive]) then begin
//                     MessageDlg('Usuário não autorizado !',MtInformation,[Mbok],0);
//                     Q_USUA.close ;
//                     Connected := False ;
//                     Edit1.setfocus ;
//                     abort ;
//                  end ;
//                  ///Q_USUA2.Locate('CH',Q_USUACH.asstring,[])    ;
//                  Q_USUA.close ;
//                  Screen.Cursor := CrDefault;
//                  Self.Close;
//             End
//        Except
//        On E:EdbEngineError do
//           Begin
//                MessageDlg(e.Message,MtError,[mbok],0);
//           End;
//        End;
//     Application.CreateForm(TFMenu, FMenu);
//     Fmenu.Showmodal;
//     FMenu.release ;

end;

procedure TFSenha.SpeedButton1Click(Sender: TObject);
begin
    Dtb_BaseDados.Connected := False;
    Application.Terminate;
end;

procedure TFSenha.SpeedButton2Click(Sender: TObject);
begin

    With Dtb_Basedados do
    Begin
        Connected := False ;
        if RadioGroup1.ItemIndex = 0 then
           AliasName  := 'NBFsql'
        else
           AliasName  := 'CERRADO_SQL';
        Close;
    end;


     qrLogin.Close;
     qrLogin.Params[0].AsString := Edit1.Text;
     qrLogin.open;

     if qrLoginnome.Value = '' then
     begin
        MessageBox(Self.Handle, 'Usuário não cadastrado!', 'Erro', MB_OK + MB_ICONERROR);
        Edit1.Clear;
        Edit2.Clear;
        Edit1.SetFocus;
        Abort;
     end
     else
     begin
         if UpperCase( qrLoginsenha.Value) <> UpperCase(Edit2.Text) then
         begin
               MessageBox(Self.Handle, 'Senha incorreta!', 'Erro', MB_OK + MB_ICONERROR);
               Edit2.Clear;
               Edit2.SetFocus;
               Abort;
         end;
     end;

   { With Dtb_Basedados do
    Begin
        Connected := False ;
       // if ParamStr(1) <> '' then
       //    AliasName  := upperCase(ParamStr(1)) ;
       if RadioGroup1.ItemIndex = 0 then
           AliasName  := 'NBFsql'
        else
           AliasName  := 'CERRADO_SQL';
        Close;
        Params.Clear;
        Params.Add('USER NAME='+Edit1.text);
        //Params.Add('PASSWORD='+EDit2.Text);
        Params.Add('PASSWORD='+qrLoginsenha.Value);

        Open;
    end;  }

     StrUsuario := Edit1.Text;
     FSenha.AutoSize := False;
     FSenha.Width := 0;
     FSenha.Height := 0;
     FSenha.Top := 2000;
     FSenha.Visible := False;
     Application.CreateForm(TFMenu, FMenu);
     FMenu.ADOConnection.Open;
     Fmenu.Showmodal;

     FMenu.release ;
end;

procedure TFSenha.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
           SpeedButton2.Click;     
end;

procedure TFSenha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
                Edit2.SetFocus;
end;

procedure TFSenha.FormCreate(Sender: TObject);
var path : string;
    Arquivo : TStringList;
    cripto : string;
begin

IF FileExists('C:\NBF.UDL') THEN
     CopyFile('C:\NBF.UDL', PCHAR(ExtractFilePath(Application.ExeName) + 'NBF.UDL'), FALSE);

IF FileExists(ExtractFilePath(Application.ExeName) + 'CERRADO.UDL') THEN
        RadioGroup1.Visible := TRUE;


   //rotina que evita que o sistema rode fora da configuração do Atelier
  { Arquivo := TStringList.create;
   try
      Arquivo.LoadFromFile('Util.Atelier');
   except
      messagebox(self.handle, 'File not found: Util.Atelier', 'Erro', mb_ok+ MB_ICONERROR);
      Application.Terminate; 
   end;


   try
      cripto :=  Arquivo.Strings[0];
      cripto := StringReplace(cripto, '#$D#$A', '', [rfReplaceAll]);
      path := Funcoes.Crypt('D', cripto);
      if FileExists(path) = false then begin
         messagebox(self.handle, 'Exception: No library found', 'Erro', mb_ok+ MB_ICONERROR);
         Application.Terminate;
      end;
   except
      messagebox(self.handle, 'Exception: No library found', 'Erro', mb_ok+ MB_ICONERROR);
      Application.Terminate;
   end;   }


end;

end.








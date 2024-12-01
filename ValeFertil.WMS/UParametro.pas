unit UParametro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, wwdbedit, Db, DBTables,
  Wwdatsrc, Wwquery, DBCtrls;

type
  TFParametro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    DBE_CLI_CGC: TwwDBEdit;
    Label5: TLabel;
    DBE_CLI_INSC: TwwDBEdit;
    Label11: TLabel;
    DBE_CLI_FCEP: TwwDBEdit;
    Label18: TLabel;
    DBE_CLI_FEND: TwwDBEdit;
    Label42: TLabel;
    wwDBEdit18: TwwDBEdit;
    Label41: TLabel;
    wwDBEdit16: TwwDBEdit;
    Label12: TLabel;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    Label10: TLabel;
    DBE_CLI_FTE2: TwwDBEdit;
    Label8: TLabel;
    DBE_CLI_FTEL: TwwDBEdit;
    Label7: TLabel;
    DBE_CLI_FEMA: TwwDBEdit;
    Q_UF: TwwQuery;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_PAR: TwwQuery;
    DS_PAR: TwwDataSource;
    UPD_PAR: TUpdateSQL;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARPAR_CNPJ: TStringField;
    Q_PARPAR_INSC: TStringField;
    Q_PARPAR_ENDERECO: TStringField;
    Q_PARPAR_ENDERECO_COMPL: TStringField;
    Q_PARPAR_ENDERECO_BAIRRO: TStringField;
    Q_PARPAR_UF_SIGLA: TStringField;
    Q_PARPAR_CEP: TStringField;
    Q_PARPAR_TEL: TStringField;
    Q_PARPAR_FAX: TStringField;
    Q_PARPAR_EMAIL: TStringField;
    Q_AREA: TwwQuery;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOME: TStringField;
    Q_AREAAR_CONTROL_POS: TStringField;
    Q_AREAAR_EMPILHA_LIVRE: TStringField;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    Label6: TLabel;
    Label9: TLabel;
    DS_AREA: TwwDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_PARAR_ID: TIntegerField;
    Q_PARMUN_ID: TIntegerField;
    Label17: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    DS_MUNI: TwwDataSource;
    Label13: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Q_PARAR_ID_OPER: TIntegerField;
    DBNavigator1: TDBNavigator;
    Q_AUX: TwwQuery;
    SpeedButton1: TSpeedButton;
    Label14: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label15: TLabel;
    Q_PARPALLET_M2: TFloatField;
    Q_PARULT_TAG: TIntegerField;
    Label16: TLabel;
    Label19: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_PARCO_SER_ID: TIntegerField;
    Q_PAREN_SER_ID: TIntegerField;
    Q_SERV: TwwQuery;
    Q_SERVSER_NOME: TStringField;
    Q_SERVTSER_NOME: TStringField;
    Q_SERVSER_ID: TAutoIncField;
    Q_SERVTSER_ID: TIntegerField;
    Q_SERV1: TwwQuery;
    Q_SERV1SER_ID: TAutoIncField;
    Q_SERV1TSER_ID: TIntegerField;
    Q_SERV1SER_NOME: TStringField;
    Q_SERV1TSER_NOME: TStringField;
    Label20: TLabel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_Id: TAutoIncField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_PARCLIN_ID: TIntegerField;
    Label21: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label22: TLabel;
    wwDBEdit5: TwwDBEdit;
    Q_PARFLAGTELA: TStringField;
    Q_PARFLAGTELA2: TStringField;
    Q_PARFLAGTELA3: TStringField;
    Q_PARVERSAO: TStringField;
    Q_PARFLAGTELA_USUARIO: TStringField;
    Q_PARFLAGTELA_DATA: TDateTimeField;
    Q_PARFLAGTELA2_USUARIO: TStringField;
    Q_PARFLAGTELA2_DATA: TDateTimeField;
    Q_PARPORTA: TIntegerField;
    Q_PARHOST: TStringField;
    Q_PARCAMINHO: TStringField;
    Label23: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label24: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Q_PARAR_ID_AVARIA: TIntegerField;
    Label25: TLabel;
    wwDBEdit7: TwwDBEdit;
    Q_PARCAMINHO_MATRICIAL: TStringField;
    Label26: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label27: TLabel;
    wwDBEdit9: TwwDBEdit;
    Q_PARCAMINHO_MATRICIAL_FATURA: TStringField;
    Q_PARCAMINHO_MATRICIAL_CONH: TStringField;
    Label28: TLabel;
    wwDBEdit10: TwwDBEdit;
    Q_PARALIQ_ISS: TFloatField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_PARAfterDelete(DataSet: TDataSet);
    procedure Q_PARAfterPost(DataSet: TDataSet);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DBE_CLI_CGCEnter(Sender: TObject);
    procedure DBE_CLI_INSCEnter(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit18Enter(Sender: TObject);
    procedure DBE_CLI_FTE2Enter(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBE_CLI_CGCExit(Sender: TObject);
    procedure DBE_CLI_INSCExit(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure wwDBEdit18Exit(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure DBE_CLI_FTE2Exit(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParametro: TFParametro;

implementation
uses USenha,Umenu, UAbTabelas , URelEMP;
{$R *.DFM}

procedure TFParametro.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFParametro.Q_PARAfterDelete(DataSet: TDataSet);
var
PAR : string ;
begin
   PAR := Q_PARPAR_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PAR])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_PAR.close ;
   Q_PAR.Open ;

   if PAR <> '' then
     Q_PAR.locate('PAR_id',PAR,[])    ;
         

end;

procedure TFParametro.Q_PARAfterPost(DataSet: TDataSet);
var
PAR : string ;
begin
   PAR := Q_PARPAR_ID.asstring ;

   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_PAR])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_PAR.close ;
   Q_PAR.Open ;

   if PAR = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(PAR_id) as Numero from PARAMETRO ' ) ;
     Q_AUX.open ;
     PAR := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_PAR.locate('PAR_id',PAR,[])    ;
         

end;

procedure TFParametro.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFParametro.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_CGCEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_INSCEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_FCEPEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.wwDBEdit16Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.wwDBEdit18Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_FTE2Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_FTELEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_FEMAEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.DBE_CLI_FENDEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFParametro.wwDBEdit3Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.wwDBEdit1Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_CGCExit(Sender: TObject);

   Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;
begin

        A:= StrtoInt(copy(DBE_CLI_CGC.Text,1,1));
        B:= StrtoInt(copy(DBE_CLI_CGC.Text,2,1));
        C:= StrtoInt(copy(DBE_CLI_CGC.Text,3,1));
        D:= StrtoInt(copy(DBE_CLI_CGC.Text,4,1));
        E:= StrtoInt(copy(DBE_CLI_CGC.Text,5,1));
        F:= StrtoInt(copy(DBE_CLI_CGC.Text,6,1));
        G:= StrtoInt(copy(DBE_CLI_CGC.Text,7,1));
        H:= StrtoInt(copy(DBE_CLI_CGC.Text,8,1));
        I:= StrtoInt(copy(DBE_CLI_CGC.Text,9,1));
        J:= StrtoInt(copy(DBE_CLI_CGC.Text,10,1));
        K:= StrtoInt(copy(DBE_CLI_CGC.Text,11,1));
        L:= StrtoInt(copy(DBE_CLI_CGC.Text,12,1));
        X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
        M:= 11-((X)-(11*((X div 11))));
        if M > 9 then
           M:=0;
           Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
           N:= 11-((Y)-(11*((Y div 11))));
        if N > 9 then
           N:=0;
           DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
           if DC <> copy(DBE_CLI_CGC.Text,13,2) then

              Begin
                 MessageDlg('Digito de controle não confere.', mtInformation,
                 [mbOk], 0);
                 DBE_CLI_CGC.Clear;
                 DBE_CLI_CGC.Setfocus;
               end  ;
     (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_INSCExit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_FCEPExit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.wwDBEdit16Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.wwDBEdit18Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_FENDExit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_FTE2Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_FTELExit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBE_CLI_FEMAExit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFParametro.DBLC_DBE_FESTExit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFParametro.DBLC_DBE_FESTEnter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFParametro.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 6;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     FAbTabelas.Gauge1.Progress            := 1;
                     FParametro.Q_PAR.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     FParametro.Q_UF.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     FParametro.Q_AREA.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     FParametro.Q_MUNI.Open;

                     FAbTabelas.Gauge1.Progress            := 5;
                     FParametro.Q_SERV.Open;
                     FAbTabelas.Gauge1.Progress            := 6;
                     FParametro.Q_SERV1.Open;


                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             FAbTabelas.Close;
             FAbTabelas.Release;
             If Self.Tag = 2 Then Self.Close;
    end  ;
end;

procedure TFParametro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PAR.close ;
  Q_UF.close ;
  Q_AREA.close;
  Q_MUNI.close ;
  Q_SERV.close;
  Q_SERV1.close;
  action := cafree ;
end;

procedure TFParametro.wwDBLookupCombo1Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFParametro.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFParametro.wwDBLookupCombo2Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFParametro.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFParametro.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelEMP,FRelEMP);
   FRelEMP.EMP.Preview;
   FRelEMP.Close;

end;

procedure TFParametro.FormCreate(Sender: TObject);
begin
   Q_CLINBF.open ; 
end;

end.

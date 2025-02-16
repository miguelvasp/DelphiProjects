unit UClienteFINAL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwdatsrc, Wwquery, DBCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, wwdblook, StdCtrls, Mask, wwdbedit, ExtCtrls, ComCtrls,
  Tabnotbk, Wwdotdot, Wwdbcomb, wwDialog, wwidlg, ADODB;

type
  TFClienteFINAL = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    DBE_CLI_CGC: TwwDBEdit;
    DBE_CLI_INSC: TwwDBEdit;
    DBE_CLI_FEMA: TwwDBEdit;
    DBE_CLI_FFAX: TwwDBEdit;
    DBE_CLI_FTE2: TwwDBEdit;
    DBE_CLI_FTEL: TwwDBEdit;
    DBText4: TDBText;
    Label15: TLabel;
    Panel6: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    DBNavigator1: TDBNavigator;
    Q_CLIFINAL: TwwQuery;
    DS_CLIFINAL: TwwDataSource;
    UPD_CLIFINAL: TUpdateSQL;
    Q_NBFIN: TwwQuery;
    DS_NBFIN: TwwDataSource;
    UPD_NBFIN: TUpdateSQL;
    Q_CLIFINALCLIF_ID: TAutoIncField;
    Q_CLIFINALCLIF_PESSOA: TStringField;
    Q_CLIFINALCLIF_RAZA: TStringField;
    Q_CLIFINALCLIF_NOME: TStringField;
    Q_CLIFINALCLIF_CGCCPF: TStringField;
    Q_CLIFINALCLIF_INSCRG: TStringField;
    Q_CLIFINALCLIF_ENDERECO: TStringField;
    Q_CLIFINALCLIF_MUNICIPIO: TStringField;
    Q_CLIFINALUF_SIGLA: TStringField;
    Q_CLIFINALCLIF_CEP: TStringField;
    Q_CLIFINALCLIF_TEL1: TStringField;
    Q_CLIFINALCLIF_TEL2: TStringField;
    Q_CLIFINALCLIF_FAX: TStringField;
    Q_CLIFINALCLIF_EMAIL: TStringField;
    Q_CLIFINALCLIF_CONTATO: TStringField;
    Q_NBFINNBFINAL_ID: TAutoIncField;
    Q_NBFINCLIF_ID: TIntegerField;
    Q_NBFINCLIN_ID: TIntegerField;
    Q_NBFINNBFINAL_DT_INCL: TDateTimeField;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label34: TLabel;
    DBCB_CLI_PESS: TwwDBComboBox;
    Q_UF: TwwQuery;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_ID: TAutoIncField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLIFINALCLIF_ENDERECO_COMPL: TStringField;
    Q_CLIFINALCLIF_ENDERECO_BAIRRO: TStringField;
    Q_CEP: TwwQuery;
    Q_NBFINNBFINAL_COD_CLIN: TStringField;
    Q_MUNI: TwwQuery;
    DS_MUNI: TwwDataSource;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_NOME: TStringField;
    Q_CLIFINALMUN_ID: TIntegerField;
    Q_MUNIUF_SIGLA: TStringField;
    Q_CLIFINALCLIF_CARGAPALLET: TStringField;
    Label6: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    SpeedButton4: TSpeedButton;
    wwSearchDialog1: TwwSearchDialog;
    Q_NBFINCLIN_RAZA: TStringField;
    Panel2: TPanel;
    Panel4: TPanel;
    SBT_VISU: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Q_CLIENTEFINAL_FILTRO: TwwQuery;
    Q_CLIENTEFINAL_FILTROCLIF_ID: TAutoIncField;
    Q_CLIENTEFINAL_FILTROCLIF_RAZA: TStringField;
    Q_CLIENTENBF_FILTRO: TwwQuery;
    StringField18: TStringField;
    AutoIncField2: TAutoIncField;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    DBE_CLI_FEND: TwwDBEdit;
    Label41: TLabel;
    wwDBEdit16: TwwDBEdit;
    Label42: TLabel;
    wwDBEdit18: TwwDBEdit;
    Label12: TLabel;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    Label17: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label11: TLabel;
    DBE_CLI_FCEP: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit7: TwwDBEdit;
    Q_CLIFINALCLIF_MUNICIPIO2: TStringField;
    Q_CLIFINALCLIE_ENDERECO: TStringField;
    Q_CLIFINALCLIE_ENDERECO_COMPL: TStringField;
    Q_CLIFINALCLIE_ENDERECO_BAIRRO: TStringField;
    Q_CLIFINALCLIE_MUNICIPIO: TStringField;
    Q_CLIFINALCLIE_MUN_ID: TIntegerField;
    Q_CLIFINALCLIE_UF_SIGLA: TStringField;
    Q_CLIFINALCLIE_CEP: TStringField;
    Q_MUNI2: TwwQuery;
    Q_MUNI2MUN_ID: TAutoIncField;
    Q_MUNI2DIPAM: TStringField;
    Q_MUNI2MUN_NOME: TStringField;
    Q_MUNI2UF_SIGLA: TStringField;
    Q_MUNI2REG_ID: TIntegerField;
    Q_UF2: TwwQuery;
    Q_UF2UF_SIGLA: TStringField;
    Q_UF2UF_NOME: TStringField;
    Q_UF2UF_ALIQUOTA: TFloatField;
    Q_AUX2: TwwQuery;
    Label26: TLabel;
    Q_CLIFINALCLI_HORARIO: TStringField;
    Q_CLIFINALCLI_VL_DESCARGA: TFloatField;
    Q_CLIFINALCLI_OBS: TStringField;
    Q_CLIFINALCLI_UNCOBRACA: TStringField;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit2: TDBEdit;
    Label29: TLabel;
    DBEdit3: TDBEdit;
    Label30: TLabel;
    qrIbge: TADOQuery;
    qrIbgeMUNICIPIO: TStringField;
    qrIbgeUF: TStringField;
    qrIbgeID: TAutoIncField;
    qrIbgeCOD_UF: TIntegerField;
    qrIbgeCOD_MUN: TIntegerField;
    wwDBLookupCombo14: TwwDBLookupCombo;
    Q_CLIFINALIBGE_ID: TIntegerField;
    Label31: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Label32: TLabel;
    wwDBEdit8: TwwDBEdit;
    Q_CLIFINALCLIF_LOGRADOURO: TStringField;
    Q_CLIFINALCLIF_NUMERO: TStringField;
    qrLog: TADOQuery;
    qrLogLOGRADOURO: TStringField;
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DBE_CLI_CGCEnter(Sender: TObject);
    procedure DBE_CLI_INSCEnter(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure DBE_CLI_FFAXEnter(Sender: TObject);
    procedure DBE_CLI_FTE2Enter(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBE_CLI_CGCExit(Sender: TObject);
    procedure DBE_CLI_INSCExit(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure DBE_CLI_FFAXExit(Sender: TObject);
    procedure DBE_CLI_FTE2Exit(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBEdit17Exit(Sender: TObject);
    procedure wwDBEdit19Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBEdit19Enter(Sender: TObject);
    procedure wwDBEdit17Enter(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure Q_CLIFINALAfterDelete(DataSet: TDataSet);
    procedure Q_CLIFINALAfterPost(DataSet: TDataSet);
    procedure Q_NBFINAfterDelete(DataSet: TDataSet);
    procedure Q_NBFINAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Q_NBFINNewRecord(DataSet: TDataSet);
    procedure Q_NBFINBeforePost(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure wwDBEdit18Enter(Sender: TObject);
    procedure wwDBEdit18Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure Q_CLIFINALNewRecord(DataSet: TDataSet);
    procedure Q_CLIFINALBeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure DBE_CLI_INSCKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClienteFINAL: TFClienteFINAL;

implementation
uses USenha,Umenu, UAbTabelas, UCLIENTE, URelCFinais;
{$R *.DFM}

procedure TFClienteFINAL.wwDBEdit3Enter(Sender: TObject);
begin
       (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit3Exit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.wwDBEdit1Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_CGCEnter(Sender: TObject);
begin
       (Sender as TwwDBEdit).Color := ClAqua;
         Q_CliFINALCLIF_CGCCPF.EditMask := '' ;
   if DBCB_CLI_PESS.text = 'F�sica' then
      Q_CliFINALCLIF_CGCCPF.EditMask := '!999.999.999-99;0;_'
   else Q_CliFINALCLIF_CGCCPF.EditMask := '!99.999.999/9999-99;0;_';

end;

procedure TFClienteFINAL.DBE_CLI_INSCEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_FCEPEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_FENDEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_FFAXEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_FTE2Enter(Sender: TObject);
begin
       (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_FTELEnter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBE_CLI_FEMAEnter(Sender: TObject);
begin
       (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.DBLC_DBE_FESTEnter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit1Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_CGCExit(Sender: TObject);
Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;
begin


  if DBCB_CLI_PESS.text = 'Jur�dica' then
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
                 MessageDlg('Digito de controle n�o confere.', mtInformation,
                 [mbOk], 0);
                 DBE_CLI_CGC.Clear;
                 DBE_CLI_CGC.Setfocus;
               end
     end
  else
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
        X:= (2*I+3*H+4*G+5*F+6*E+7*D+8*C+9*B+10*A)*10;
        M:= X-((11*((X div 11))));
        if M > 9 then
           M:=0;
        Y:= (2*M+3*I+4*H+5*G+6*F+7*E+8*D+9*C+10*B+11*A)*10 ;
        N:= Y-((11*((Y div 11))));
        if N > 9 then
           N:=0;
        DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
        if DC <> copy(DBE_CLI_CGC.Text,10,2) then
           Begin
              MessageDlg('Digito de controle n�o confere.', mtInformation,
              [mbOk], 0);
              DBE_CLI_CGC.Clear;
              DBE_CLI_CGC.Setfocus;
           end
    end   ;

  if Q_CLIFINAL.State = dsInsert then
  begin
      with Q_AUX2 do
      begin
           Close;
           sql.Clear;
           sql.Add('Select count(*) as XValor from CLIENTEFINAL where clif_cgccpf = :clif_cgccpf') ;
           Params[0].AsString :=  DBE_CLI_CGC.Text;
           Open;
      end;

      if Q_AUX2.FieldByName('XValor').AsInteger > 0 then
      begin
         MessageBox(Self.Handle, 'CPNJ/CPF Cadastrado!', 'Erro', MB_OK + MB_ICONERROR);
         DBE_CLI_CGC.SetFocus;
      end;
  end;


     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_INSCExit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_FCEPExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;

      If (Q_CLIFINAL.state = dsedit ) or (Q_CLIFINAL.state = dsinsert )  then  begin
         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + DBE_CLI_FCEP.text + ''''  ) ;
         Q_CEP.Open ;


         Q_CLIFINALCLIF_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_CLIFINALCLIF_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;

         IF Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_CLIFINALMUN_ID.asinteger  := Q_MUNIMUN_ID.asinteger ;
             Q_CLIFINALUF_SIGLA.asstring := Q_MUNIUF_SIGLA.asstring ;

         end else begin
             Q_CLIFINALMUN_ID.asinteger  := 0 ;
             Q_CLIFINALUF_SIGLA.asstring := '0' ;
         end ;

         Q_CLIFINALCLIF_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
        /// Q_CLIFINALUF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwdbedit16.setfocus ;
      end ;


end;

procedure TFClienteFINAL.DBE_CLI_FENDExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_FFAXExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_FTE2Exit(Sender: TObject);
begin
          (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_FTELExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_FEMAExit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBLC_DBE_FESTExit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFClienteFINAL.wwDBLookupCombo4Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFClienteFINAL.wwDBEdit17Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.wwDBEdit19Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.wwDBLookupCombo4Enter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := Claqua;
end;

procedure TFClienteFINAL.wwDBEdit19Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFClienteFINAL.wwDBEdit17Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFClienteFINAL.TabbedNotebook1Click(Sender: TObject);
begin
  If (TabbedNotebook1.pageindex = 0) then
     DBNavigator1.datasource := DS_CLIFINAL;

  If (TabbedNotebook1.pageindex = 1) then begin
     if (Q_CLIFINAL.state = dsedit ) or (Q_CLIFINAL.state = dsinsert ) then
        Q_CLIFINAL.post ;
     DBNavigator1.datasource := DS_NBFIN;
     Q_NBFIN.edit ;

  end ;


end;

procedure TFClienteFINAL.Q_CLIFINALAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_CLIFINALCLIF_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CLIFINAL])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CLIFINAL.close ;
   Q_CLIFINAL.Open ;
   Q_CLIFINAL.locate('CLIF_NOME',StrNome,[]);
end;

procedure TFClienteFINAL.Q_CLIFINALAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
  
   STRNOME :=  Q_CLIFINALCLIF_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CLIFINAL])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CLIFINAL.close ;
   Q_CLIFINAL.Open ;
   Q_CLIFINAL.locate('CLIF_NOME',StrNome,[]);


end;

procedure TFClienteFINAL.Q_NBFINAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_NBFINCLIF_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NBFIN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NBFIN.close ;
   Q_NBFIN.Open ;
   Q_NBFIN.locate('CLIF_ID',StrNome,[]);



end;

procedure TFClienteFINAL.Q_NBFINAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_NBFINCLIN_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NBFIN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NBFIN.close ;
   Q_NBFIN.Open ;
   Q_NBFIN.locate('CLIN_ID',StrNome,[]);



end;

procedure TFClienteFINAL.SpeedButton3Click(Sender: TObject);
begin
  CLIF := '' ; 
  close ;
end;

procedure TFClienteFINAL.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFClienteFINAL.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 7;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     ///FAbTabelas.Gauge1.Progress            := 1;
                     ///FAbTabelas.DS_REG.OnStateChange      := DS_CATEStateChange;

                     //FAbTabelas.Gauge1.Progress            := 1;
                     ///FRegiao.Q_REG.BeforePost          := Q_REGBeforePost;

                     FAbTabelas.Gauge1.Progress            := 1;
                     Q_CLIFINAL.Open;

                     if (CLIF <> '') then
                        Q_CliFINAL.locate('CLIF_ID',CLIF,[]); 

                     FAbTabelas.Gauge1.Progress            := 2;
                     Q_NBFIN.Open;

                     FAbTabelas.Gauge1.Progress            := 3;
                     Q_CLIN.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     Q_UF.Open;
                     FAbTabelas.Gauge1.Progress            := 5;
                     Q_MUNI.Open;
                     FAbTabelas.Gauge1.Progress            := 6;
                     Q_MUNI2.Open;
                     FAbTabelas.Gauge1.Progress            := 7;
                     Q_UF2.Open;


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

procedure TFClienteFINAL.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFClienteFINAL.DBCB_CLI_PESSEnter(Sender: TObject);
begin
     (Sender as TwwDBCOMBOBOX).Color := Claqua;
end;

procedure TFClienteFINAL.DBCB_CLI_PESSExit(Sender: TObject);
begin
   (Sender as TwwDBCOMBOBOX).Color := Clwindow;
     Q_CliFINALCLIF_CGCCPF.EditMask := '' ;
   if DBCB_CLI_PESS.text = 'F�sica' then
      Q_CliFINALCLIF_CGCCPF.EditMask := '!999.999.999-99;0;_'
   else Q_CliFINALCLIF_CGCCPF.EditMask := '!99.999.999/9999-99;0;_';

end;

procedure TFClienteFINAL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_NBFIN.close ;
  Q_CLIN.close ;
  Q_CLIFINAL.close ;
  Q_UF.close;
  Q_MUNI.close;
  Q_MUNI2.close ;
  Q_UF2.close ; 
  Q_CLIENTEFINAL_FILTRO.close ;
  Q_CLIENTENBF_FILTRO.close ;
  action := cafree;
end;

procedure TFClienteFINAL.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  TabbedNotebook1.pageindex := 0 ;
  qrIbge.Open;
  Q_CLIENTEFINAL_FILTRO.open ;
  Q_CLIENTENBF_FILTRO.open ;
  qrLog.Open;
end;

procedure TFClienteFINAL.wwDBLookupCombo1Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Claqua;
end;

procedure TFClienteFINAL.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFClienteFINAL.Q_NBFINNewRecord(DataSet: TDataSet);
begin
   Q_NBFINCLIF_ID.asstring :=  Q_CLIFINALCLIF_ID.asstring   ;
   
end;

procedure TFClienteFINAL.Q_NBFINBeforePost(DataSet: TDataSet);
begin
      Q_NBFINCLIN_ID.asstring :=  Q_CLINCLIN_ID.asstring   ;
end;

procedure TFClienteFINAL.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   if button in [nbInsert] then  begin
       If (TabbedNotebook1.pageindex = 0) then
           wwDBEdit3.setfocus ;
       If (TabbedNotebook1.pageindex = 1) then
           wwDBLookupCombo1.setfocus ;
   end ;

   if Button in [nbFirst,nbPrior,nbNext,nbLast] then begin
      if (Q_CLIFINALCLIF_PESSOA.AsString = 'F') then
          Q_CLIFINALCLIF_CGCCPF.EditMask := '!999.999.999/99;0;_'
      else
         if (Q_CLIFINALCLIF_PESSOA.AsString = 'J') then
              Q_CLIFINALCLIF_CGCCPF.EditMask := '!99.999.999/9999-99;0;_'
         else Q_CLIFINALCLIF_CGCCPF.EditMask := '';
   end ;



end;

procedure TFClienteFINAL.wwDBEdit16Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit16Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFClienteFINAL.wwDBEdit18Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit18Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFClienteFINAL.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFClienteFINAL.Q_CLIFINALNewRecord(DataSet: TDataSet);
begin
    Q_CLIFINALCLIF_CARGAPALLET.asstring := 'N' ;
end;

procedure TFClienteFINAL.Q_CLIFINALBeforePost(DataSet: TDataSet);
begin
    If (wwDBComboBox1.text = '') then begin
       MessageDlg('Somente Carga Palletizada ? � Campo de preenchimento obrigat�rio ',mtWarning,[mbok],0);
       wwDBComboBox1.SetFocus;
       Abort;
   end ;

   IF (DBCB_CLI_PESS.text = '')  then begin
       MessageDlg('Tipo de Pessoa � campo de preenchimento obrigat�rio !',mtWarning,[mbok],0);
       DBCB_CLI_PESS.setfocus ;
       abort ;
   end ;

end;

procedure TFClienteFINAL.SpeedButton4Click(Sender: TObject);
begin
   wwSearchDialog1.execute ;
end;

procedure TFClienteFINAL.SpeedButton1Click(Sender: TObject);
begin
    Panel2.visible := true ;
   TabbedNotebook1.enabled := false ;
   Panel3.enabled := false ;
end;

procedure TFClienteFINAL.SBT_VISUClick(Sender: TObject);
begin
   Application.CreateForm(TFRelCFinais,FRelCFinais);
   FRelCFinais.CFINAIS.Preview;
   FRelCFinais.Close;  
end;

procedure TFClienteFINAL.SBT_SAIRClick(Sender: TObject);
begin
   Panel2.visible := false ;
    TabbedNotebook1.enabled := true ;
    Panel3.enabled := true ;
end;

procedure TFClienteFINAL.wwDBEdit7Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit7Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;

      If (Q_CLIFINAL.state = dsedit ) or (Q_CLIFINAL.state = dsinsert )  then  begin
         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit7.text + ''''  ) ;
         Q_CEP.Open ;


         Q_CLIFINALCLIE_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_CLIFINALCLIE_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;

         IF Q_MUNI2.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
             Q_CLIFINALCLIE_MUN_ID.asinteger  := Q_MUNI2MUN_ID.asinteger ;
             Q_CLIFINALCLIE_UF_SIGLA.asstring := Q_MUNI2UF_SIGLA.asstring ;

         end else begin
             Q_CLIFINALCLIE_MUN_ID.asinteger  := 0 ;
             Q_CLIFINALCLIE_UF_SIGLA.asstring := '0' ;
         end ;

         Q_CLIFINALCLIE_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
        /// Q_CLIFINALUF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwdbedit5.setfocus ;
      end ;


end;

procedure TFClienteFINAL.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFClienteFINAL.wwDBEdit5Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit5Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFClienteFINAL.wwDBEdit6Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFClienteFINAL.wwDBLookupCombo6Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFClienteFINAL.wwDBLookupCombo6Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFClienteFINAL.wwDBLookupCombo5Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFClienteFINAL.wwDBLookupCombo5Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFClienteFINAL.DBE_CLI_INSCKeyPress(Sender: TObject;
  var Key: Char);
begin
   // IF NOT (Key IN ['0'..'9', #8,#13, #9]) then
   //     key := #0
end;

end.




unit UEmpresas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwtable, wwdblook,
  Wwdotdot, Wwdbcomb, ComCtrls, Tabnotbk, wwstorep;

type
  TFEmpresas = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_EMP: TwwQuery;
    DS_EMP: TwwDataSource;
    UPD_EMP: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    T_UFED: TwwTable;
    DS_UFED: TwwDataSource;
    SBT_REFR: TSpeedButton;
    T_CONT: TwwTable;
    T_CGER: TwwTable;
    DS_CONT: TwwDataSource;
    DS_CGER: TwwDataSource;
    T_CONTCTC_CODI: TStringField;
    T_CONTCTC_DESC: TStringField;
    T_UFEDUFE_CODI: TStringField;
    T_UFEDUFE_DESC: TStringField;
    T_CGERCON_CODI: TStringField;
    T_CGERCON_DESC: TStringField;
    T_CGERCON_ENSA: TStringField;
    T_CGERCON_OPER: TStringField;
    T_CGERCON_FLOA: TFloatField;
    T_CGERCON_FLUX: TStringField;
    T_CGERCON_CTCO: TStringField;
    wwQ_Aux: TwwQuery;
    TabbedNotebook1: TTabbedNotebook;
    Q_PFAB: TwwQuery;
    DS_PFAB: TwwDataSource;
    Q_PFABPFA_PROD: TStringField;
    Q_PFABPFA_FORN: TStringField;
    Q_PFABPFA_FABR: TStringField;
    Q_PFABPFA_PREC: TFloatField;
    Q_PFABPFA_AIPI: TFloatField;
    Q_PFABPFA_Desconto: TFloatField;
    SpeedButton1: TSpeedButton;
    SBT_CONS: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBE_FOR_CODI: TwwDBEdit;
    DBE_FOR_RAZA: TwwDBEdit;
    DBE_FOR_CGC: TwwDBEdit;
    DBE_FOR_INSC: TwwDBEdit;
    DBE_FOR_ENDE: TwwDBEdit;
    DBE_FOR_MUNI: TwwDBEdit;
    DBLC_FOR_ESTA: TwwDBLookupCombo;
    DBE_FOR_CEP: TwwDBEdit;
    DBE_FOR_TELE: TwwDBEdit;
    DBE_FOR_TEL2: TwwDBEdit;
    DBE_FOR_FAX: TwwDBEdit;
    DBE_FOR_EMAI: TwwDBEdit;
    Label16: TLabel;
    DBE_FOR_NCON: TwwDBEdit;
    Label4: TLabel;
    Label15: TLabel;
    wwDBEdit1: TwwDBEdit;
    Q_EMPEmp_Sequencia: TAutoIncField;
    Q_EMPEmp_Razao: TStringField;
    Q_EMPEmp_CGC: TStringField;
    Q_EMPEmp_Insc: TStringField;
    Q_EMPEmp_EndFiscal: TStringField;
    Q_EMPEmp_MunFiscal: TStringField;
    Q_EMPEmp_EstFiscal: TStringField;
    Q_EMPEmp_CepFiscal: TStringField;
    Q_EMPEmp_Telefone1: TStringField;
    Q_EMPEmp_Telefone2: TStringField;
    Q_EMPEmp_Fax: TStringField;
    Q_EMPEmp_NomeFantasia: TStringField;
    Q_EMPEmp_Logo: TBlobField;
    Q_EMPEmp_Email: TStringField;
    Q_EMPEmp_Internet: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_EMPAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DS_EMPStateChange(Sender: TObject);
    procedure Q_EMPAfterDelete(DataSet: TDataSet);
    procedure Q_EMPBeforeDelete(DataSet: TDataSet);
    procedure Q_EMPAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure DBE_FOR_CGCEnter(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_FORNFOR_CGCValidate(Sender: TField);
    procedure DBLC_FOR_ESTAChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_CONSClick(Sender: TObject);
    procedure DBE_FOR_CODIExit(Sender: TObject);
    procedure DBE_FOR_CGCExit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_EMPBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBLookupCombo14KeyPress(Sender: TObject; var Key: Char);
    procedure Q_OFORNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sCodigo : String;
  end;

var
  FEmpresas: TFEmpresas;
  dData : TDateTime;
  sCodigo : String;
implementation

uses CppMenu, PesqForn, U_Funcoes, Unt_Splash1, Fornec;

{$R *.DFM}

procedure TFEmpresas.SBT_SAIRClick(Sender: TObject);
begin
     Fempresas.Close;
end;

procedure TFEmpresas.Q_EMPAfterPost(DataSet: TDataSet);
Var
   sCodigo   : String ;
begin
  // sCodigo := Q_EMPFilial.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_EMP])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   DBE_FOR_CODI.Enabled := false;
   Q_EMP.Close;
   Q_EMP.Open;
   Q_EMP.locate('FILIAL',sCodigo,[loCaseInsensitive]);

end;

procedure TFEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_EMP.Close;
   T_UFED.Close;
   T_CONT.close;
   T_CGER.Close;
   Action := caFree;
end;

procedure TFEmpresas.DS_EMPStateChange(Sender: TObject);
begin
   if (Q_EMP.State = dsEdit) or (Q_EMP.State = dsInsert) then
     begin
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
        if Q_EMP.State = dsEdit then
          begin
            LBL_STATUS.Caption := 'ALTERAÇÃO';
          end
        else
          begin
            LBL_STATUS.Caption := 'INCLUSÃO';
            DBE_FOR_CODI.Enabled := true;
            DBE_FOR_CODI.SetFocus;
          end;
        LBL_STATUS.Visible := true;
     end
   else
     begin
        SBT_SAIR.Enabled := true;
        SBT_REFR.Enabled := true;
        LBL_STATUS.Visible := false;
     end;
end;

procedure TFEmpresas.Q_EMPAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_EMP]);
    end;
  except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
  end;
end;

procedure TFEmpresas.Q_EMPBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFEmpresas.Q_EMPAfterCancel(DataSet: TDataSet);
begin
  DBE_FOR_CODI.Enabled := false;
end;

procedure TFEmpresas.SBT_REFRClick(Sender: TObject);
begin
     Q_EMP.close;
     T_UFED.close;
     T_CONT.close;
     T_CGER.close;
     Q_EMP.Open;
     T_UFED.Open;
     T_CONT.Open;
     T_CGER.Open;
end;

procedure TFEmpresas.DBE_FOR_CGCEnter(Sender: TObject);
begin

             Q_EMPEMP_CGC.EditMask := '99.999.999/9999-99;0;_'

end;

procedure TFEmpresas.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
 // sCodigo := Q_EMPFILIAL.AsString;
  if (Button in [nbFirst,nbPrior,nbNext,nbLast]) then
   begin
   //  sCodigo := Q_EMPFILIAL.AsString;

         Q_EMPEMP_CGC.EditMask := '!999.999.999/99;0;_';
       end ;


     Case Button Of
          NbInsert : Begin
                      //  DBE_FOR_INIC.Text := '';
                     End;
          NbPost : Begin
                      FMenu.DATABASE1.ApplyUpdates([Q_EMP]);
                   End;
     End;


end;

procedure TFEmpresas.Q_FORNFOR_CGCValidate(Sender: TField);
var RT : Integer;
begin
  if (DBE_FOR_CGC.Text <> '') then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if  (DBE_FOR_CGC.Text <> '') then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;

  
  

   if (RT = 1) then
    begin
      MessageDlg('CGC/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      Abort;
    end;
end;

procedure TFEmpresas.DBLC_FOR_ESTAChange(Sender: TObject);
begin
  if ((DBLC_FOR_ESTA.Text = '') and (DS_EMP.state in [dsInsert,dsEdit])) then
   begin
     Q_EMPEMP_ESTFISCAL.Clear;
   end;
end;

procedure TFEmpresas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
     begin
 //      Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;
end;

procedure TFEmpresas.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqForn, FPesqForn);
   FPesqForn.ShowModal;

end;

procedure TFEmpresas.DBE_FOR_CODIExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
   sCodigo :=DBE_FOR_CODI.TEXT;

   if (Q_EMP.State = dsInsert) or (Q_EMP.State = dsEdit) then
      Begin
         With wwQ_Aux do begin
            Close;
            SQL.Clear;
            SQL.Add('Select FOR_CODI from CpaForn');
            SQL.Add('Where FOR_CODI = '+'"'+sCodigo+'"');
            Open;
         End;
         If not wwQ_Aux.Eof then
            Begin
               MessageDlg('Nome fantasia já cadastrado',MtError,[mbok],0);
               DBE_FOR_CODI.SetFocus;
              // Q_EMPFILIAL.AsString := '';
               DBE_FOR_CODI.Text := '';
            End;
      End;


end;

procedure TFEmpresas.DBE_FOR_CGCExit(Sender: TObject);
var RT : Integer;
begin
  if  (DBE_FOR_CGC.Text <> '') then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if (DBE_FOR_CGC.Text <> '') then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;


  

   if (RT = 1) then
    begin
      MessageDlg('CNPJ/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      Abort;
    end;

end;

procedure TFEmpresas.FormPaint(Sender: TObject);
Var
   i : Integer;
begin
//
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 6;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     T_CGER.Open;

                     Dfm_Splash1.Gauge1.Progress := 2;
                     T_CONT.Open;

                     Dfm_Splash1.Gauge1.Progress := 3;
                     T_UFED.Open;

                     Q_EMP.Open;

                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
             If Self.Tag = 2 Then Self.Close;
        End;
end;

procedure TFEmpresas.Q_EMPBeforePost(DataSet: TDataSet);
begin
   If DBE_FOR_CODI.Text = '' then Begin
      MessageDlg('Nome Fantasia é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FOR_CODI.SetFocus;
      Abort;
   End;

   If DBE_FOR_ENDE.Text = '' then Begin
      MessageDlg('Endereço é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FOR_ENDE.SetFocus;
      Abort;
   End;
   If DBE_FOR_MUNI.Text = '' then Begin
      MessageDlg('Município é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FOR_MUNI.SetFocus;
      Abort;
   End;
   If DBLC_FOR_ESTA.Text = '' then Begin
      MessageDlg('UF é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBLC_FOR_ESTA.SetFocus;
      Abort;
   End;
end;



procedure TFEmpresas.FormCreate(Sender: TObject);
begin
  TabbedNotebook1.pageindex := 0;
end;

procedure TFEmpresas.TabbedNotebook1Click(Sender: TObject);
begin
  Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbPost,nbCancel]);
  if TabbedNotebook1.pageindex = 1 then begin
     Fonte.Datasource := DS_PFAB ;
     Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
     Dfm_Splash1.label1.caption := 'Aguarde...                    Selecionando Dados ';
     Dfm_Splash1.Gauge1.MaxValue := 1;
     Dfm_Splash1.Show;
     Dfm_Splash1.RePaint;
     Self.Repaint;
     Dfm_Splash1.Gauge1.Progress := 2;
   //  Q_PFAB.close;
   //  Q_PFAB.SQL.clear;
   //  Q_PFAB.SQL.Add('Select * from SIAPFAB' ) ;
  //   Q_PFAB.SQL.Add('where PFA_FORN = ' + '''' + Q_FORNFOR_CODI.asstring + '''' );
  //   Q_PFAB.open;
     Dfm_Splash1.Close;
     Dfm_Splash1.Release;
//     wwDBGrid1.visible := true ;
     Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbCancel]) ;
  end ;
  if TabbedNotebook1.pageindex = 0 then begin
      Fonte.Datasource := DS_EMP ;
//      wwDBGrid1.visible := false ;
  end;
 
  


end;


procedure TFEmpresas.SpeedButton1Click(Sender: TObject);
begin
   // Ajusta o posicionamento do Panel de Localização rápida
  

  

   Panel2.enabled := false;
   Panel1.enabled := false;
   TabbedNotebook1.enabled := false ;





end;

procedure TFEmpresas.SpeedButton6Click(Sender: TObject);
begin


   TabbedNotebook1.enabled := true;

   Panel2.enabled := true ;
   Panel1.enabled := true;
  

  
   


end;

procedure TFEmpresas.SpeedButton5Click(Sender: TObject);
begin

   TabbedNotebook1.enabled := true;
   Panel2.enabled := true ;
   Panel1.enabled := true;
end;

procedure TFEmpresas.wwDBLookupCombo14KeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then begin

      TabbedNotebook1.enabled := true;

      Panel2.enabled := true ;
      Panel1.enabled := true;
   
    
   end ;
end;

procedure TFEmpresas.Q_OFORNewRecord(DataSet: TDataSet);
begin
 // Q_OFOROFO_FORN.asstring := Q_FORNFOR_CODI.Asstring ;
end;

procedure TFEmpresas.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFEmpresas.DBMemo1Change(Sender: TObject);
var txt:string;
begin
        txt := 'tst';
end;

end.

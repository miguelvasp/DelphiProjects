unit CPPCLIE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwdotdot,
  Wwdbcomb, ComCtrls, Tabnotbk, Wwtable;

type
  TFClientes = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_CLIE: TwwQuery;
    DS_CLIE: TwwDataSource;
    UPD_CLIE: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    TBN_CLIE: TTabbedNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBE_CLI_CODI: TwwDBEdit;
    DBE_CLI_RAZA: TwwDBEdit;
    DBE_CLI_ATIV: TwwDBEdit;
    DBE_CLI_CGC: TwwDBEdit;
    DBE_CLI_INSC: TwwDBEdit;
    DBE_CLI_FEND: TwwDBEdit;
    DBE_CLI_FMUN: TwwDBEdit;
    DBE_CLI_FCEP: TwwDBEdit;
    DBE_CLI_FTEL: TwwDBEdit;
    DBE_CLI_FTE2: TwwDBEdit;
    DBE_CLI_FFAX: TwwDBEdit;
    DBE_CLI_FEMA: TwwDBEdit;
    DBE_CLI_FCON: TwwDBEdit;
    DBLC_CLI_RAAT: TwwDBLookupCombo;
    DBLC_CLI_VEND: TwwDBLookupCombo;
    DBLC_DBE_REPR: TwwDBLookupCombo;
    DBLC_CLI_TRAN: TwwDBLookupCombo;
    DBLC_CLI_CONT: TwwDBLookupCombo;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    DBCB_CLI_PESS: TwwDBCombobox;
    RadioGroup1: TRadioGroup;
    CKB_INDI: TCheckBox;
    CKB_REVE: TCheckBox;
    CKB_CONS: TCheckBox;
    Panel4: TPanel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    DBE_CLI_CODI2: TwwDBEdit;
    DBE_CLI_RAZA2: TwwDBEdit;
    DBE_CLI_INIC2: TwwDBEdit;
    DBCB_CLI_PESS2: TwwDBCombobox;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_PESS: TStringField;
    Q_CLIECLI_CGC: TStringField;
    Q_CLIECLI_INSC: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    Q_CLIECLI_FEMA: TStringField;
    Q_CLIECLI_FCON: TStringField;
    Q_CLIECLI_CEND: TStringField;
    Q_CLIECLI_CMUN: TStringField;
    Q_CLIECLI_CEST: TStringField;
    Q_CLIECLI_CCEP: TStringField;
    Q_CLIECLI_CTEL: TStringField;
    Q_CLIECLI_CTE2: TStringField;
    Q_CLIECLI_CFAX: TStringField;
    Q_CLIECLI_CEMA: TStringField;
    Q_CLIECLI_CCON: TStringField;
    Q_CLIECLI_CONT: TStringField;
    Q_CLIECLI_TRAN: TStringField;
    Q_CLIECLI_RAAT: TStringField;
    Q_CLIECLI_CANA: TStringField;
    Q_CLIECLI_VEND: TStringField;
    Q_CLIECLI_REPR: TStringField;
    Q_CLIECLI_INIC: TDateTimeField;
    Q_CLIECLI_UCOM: TDateTimeField;
    Q_CLIECLI_VUCO: TFloatField;
    Q_CLIECLI_VUCD: TFloatField;
    Q_CLIECLI_MCOM: TDateTimeField;
    Q_CLIECLI_VMCO: TFloatField;
    Q_CLIECLI_VMCD: TFloatField;
    Q_CLIECLI_ATRA: TIntegerField;
    Q_CLIECLI_LCRE: TFloatField;
    Q_CLIECLI_VATR: TFloatField;
    Q_CLIECLI_SCRE: TStringField;
    Q_CLIECLI_CGER: TStringField;
    DBLC_CLI_CGER: TwwDBLookupCombo;
    Label27: TLabel;
    Panel5: TPanel;
    Label28: TLabel;
    DBE_CLI_CODI3: TwwDBEdit;
    DBE_CLI_RAZA3: TwwDBEdit;
    Label30: TLabel;
    DBLC_CLI_PESS3: TwwDBCombobox;
    Label31: TLabel;
    DBE_CLI_INIC3: TwwDBEdit;
    Label42: TLabel;
    Label44: TLabel;
    DS_RAAT: TwwDataSource;
    T_RAAT: TwwTable;
    T_UFED: TwwTable;
    DS_UFED: TwwDataSource;
    Label32: TLabel;
    DBE_CLI_CGC2: TwwDBEdit;
    Label53: TLabel;
    DBE_CLI_INSC2: TwwDBEdit;
    Label54: TLabel;
    DBLC_CLI_RAAT2: TwwDBLookupCombo;
    Label55: TLabel;
    DBLC_CLI_VEND2: TwwDBLookupCombo;
    Label56: TLabel;
    DBLC_CLI_REPR2: TwwDBLookupCombo;
    RadioGroup2: TRadioGroup;
    Label57: TLabel;
    DBLC_CLI_TRAN2: TwwDBLookupCombo;
    Label58: TLabel;
    DBLC_CLI_CONT2: TwwDBLookupCombo;
    Label59: TLabel;
    DBLC_CLI_CGER2: TwwDBLookupCombo;
    CKB_CLI_INDI2: TCheckBox;
    CKB_REVE2: TCheckBox;
    CKB_CONS2: TCheckBox;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    DBE_CLI_CEND: TwwDBEdit;
    Label33: TLabel;
    DBE_CLI_CMUN: TwwDBEdit;
    Label34: TLabel;
    DBLC_CLI_CEST: TwwDBLookupCombo;
    Label35: TLabel;
    DBE_CLI_CCEP: TwwDBEdit;
    Label36: TLabel;
    DBE_CLI_CTEL: TwwDBEdit;
    Label37: TLabel;
    DBE_CLI_CTE2: TwwDBEdit;
    Label38: TLabel;
    DBE_CLI_CFAX: TwwDBEdit;
    Label39: TLabel;
    DBE_CLI_CEMA: TwwDBEdit;
    Label40: TLabel;
    DBE_CLI_CCON: TwwDBEdit;
    Label41: TLabel;
    DBLC_CLI_BANC: TwwDBLookupCombo;
    GroupBox3: TGroupBox;
    Label29: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    DBE_CLI_UCOM: TwwDBEdit;
    DBE_CLI_VUCO: TwwDBEdit;
    DBE_CLI_VUCD: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBE_CLI_MCOM: TwwDBEdit;
    DBE_CLI_VMCO: TwwDBEdit;
    DBE_CLI_VMCD: TwwDBEdit;
    GroupBox5: TGroupBox;
    Label49: TLabel;
    Label51: TLabel;
    DBE_CLI_ATRA: TwwDBEdit;
    DBE_CLI_VATR: TwwDBEdit;
    GroupBox6: TGroupBox;
    Label50: TLabel;
    Label52: TLabel;
    DBE_CLI_SCRE: TwwDBEdit;
    DBE_CLI_LCRE: TwwDBEdit;
    Label60: TLabel;
    DBE_CLI_CGC3: TwwDBEdit;
    Label61: TLabel;
    DBE_CLI_INSC3: TwwDBEdit;
    Label62: TLabel;
    DBLC_CLI_RAAT3: TwwDBLookupCombo;
    Label63: TLabel;
    DBLC_CLI_VEND3: TwwDBLookupCombo;
    Label64: TLabel;
    DBLC_CLI_REPR3: TwwDBLookupCombo;
    Label65: TLabel;
    DBLC_CLI_TRAN3: TwwDBLookupCombo;
    Label66: TLabel;
    DBLC_CLI_CCON: TwwDBLookupCombo;
    Label67: TLabel;
    DBLC_CLI_CGER3: TwwDBLookupCombo;
    RadioGroup3: TRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    SBT_REFR: TSpeedButton;
    Q_CLIECLI_CBAN: TStringField;
    Q_CLIECLI_CCBA: TStringField;
    T_VEND: TwwTable;
    DS_VEND: TwwDataSource;
    T_REPR: TwwTable;
    DS_REPR: TwwDataSource;
    T_CTCO: TwwTable;
    DS_CTCO: TwwDataSource;
    T_VENDVEN_CODI: TStringField;
    T_VENDVEN_NOME: TStringField;
    T_REPRREP_RAZA: TStringField;
    T_REPRREP_CODI: TStringField;
    T_CTCOCTC_CODI: TStringField;
    T_CTCOCTC_DESC: TStringField;
    Q_CLIECLI_CODI: TIntegerField;
    STP_CLICGCDUPL: TStoredProc;
    T_TRAN: TwwTable;
    DS_TRAN: TwwDataSource;
    T_TRANTRA_RAZA: TStringField;
    T_TRANTRA_CODI: TStringField;
    DS_CGER: TwwDataSource;
    T_CGER: TwwTable;
    T_CGERCON_CODI: TStringField;
    T_CGERCON_DESC: TStringField;
    T_CGERCON_ENSA: TStringField;
    T_CGERCON_OPER: TStringField;
    T_CGERCON_FLOA: TFloatField;
    T_CGERCON_FLUX: TStringField;
    T_CGERCON_CTCO: TStringField;
    T_BANC: TwwTable;
    DS_BANC: TwwDataSource;
    T_BANCBAN_CODI: TStringField;
    T_BANCBAN_CONT: TStringField;
    T_BANCBAN_NOME: TStringField;
    T_BANCBAN_AGEN: TStringField;
    T_BANCBAN_NAGE: TStringField;
    T_BANCBAN_DATA: TDateTimeField;
    T_BANCBAN_SALD: TFloatField;
    T_BANCBAN_NLAN: TFloatField;
    T_BANCBAN_LCHE: TStringField;
    T_BANCBAN_UCHE: TStringField;
    Label68: TLabel;
    DBE_CLI_CCBA: TwwDBEdit;
    SBT_CONS: TSpeedButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_CLIEAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_CLIEStateChange(Sender: TObject);
    procedure Q_CLIEAfterDelete(DataSet: TDataSet);
    procedure Q_CLIEBeforeDelete(DataSet: TDataSet);
    procedure Q_CLIEAfterCancel(DataSet: TDataSet);
    procedure DS_CLIEDataChange(Sender: TObject; Field: TField);
    procedure DBE_CLI_CGCEnter(Sender: TObject);
    procedure Q_CLIECLI_PESSValidate(Sender: TField);
    procedure TBN_CLIEChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure CKB_INDIExit(Sender: TObject);
    procedure CKB_REVEExit(Sender: TObject);
    procedure CKB_CONSExit(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_CLIENewRecord(DataSet: TDataSet);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_CLIECLI_CGCValidate(Sender: TField);
    procedure Q_CLIEBeforePost(DataSet: TDataSet);
    procedure DBE_CLI_FCONExit(Sender: TObject);
    procedure DBLC_CLI_BANCExit(Sender: TObject);
    procedure DBE_CLI_LCREExit(Sender: TObject);
    procedure DBLC_CLI_VENDChange(Sender: TObject);
    procedure TBN_CLIEClick(Sender: TObject);
    procedure DBLC_CLI_TRANChange(Sender: TObject);
    procedure DBLC_DBE_REPRChange(Sender: TObject);
    procedure DBLC_CLI_RAATChange(Sender: TObject);
    procedure DBLC_CLI_CONTChange(Sender: TObject);
    procedure DBLC_CLI_CGERChange(Sender: TObject);
    procedure DBLC_DBE_FESTChange(Sender: TObject);
    procedure DBLC_CLI_CESTChange(Sender: TObject);
    procedure DBLC_CLI_BANCChange(Sender: TObject);
    procedure Q_CLIEBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_CONSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses CPPMENU, CPPPCLI;
var L_MUDOU : Boolean;

{$R *.DFM}

procedure TFClientes.SBT_SAIRClick(Sender: TObject);
begin
     FClientes.Close;
end;

procedure TFClientes.Q_CLIEAfterPost(DataSet: TDataSet);
begin
  try
   begin
     FMenu.DATABASE1.ApplyUpdates([Q_CLIE]);
   end;
  except
   begin
     Q_CLIE.RevertRecord;
   end;
  end;
{  DBE_CLI_CODI.Enabled := false;}
  Q_CLIE.Close;
  Q_CLIE.Open;
end;

procedure TFClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CLIE.Close;
   T_RAAT.Close;
   T_UFED.Close;
   T_VEND.close;
   T_REPR.Close;
   T_TRAN.Close;
   T_CTCO.Close;
   T_CGER.Close;
end;

procedure TFClientes.FormShow(Sender: TObject);
begin
   T_CGER.Open;
   T_RAAT.Open;
   T_UFED.Open;
   T_VEND.Open;
   T_REPR.Open;
   T_TRAN.Open;
   T_CTCO.Open;
   Q_CLIE.Open;
   TBN_CLIE.PageIndex := 0;
   L_MUDOU := false;
end;

procedure TFClientes.DS_CLIEStateChange(Sender: TObject);
begin
   if (Q_CLIE.State = dsEdit) or (Q_CLIE.State = dsInsert) then
     begin
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
        if Q_CLIE.State = dsEdit then
          begin
            LBL_STATUS.Caption := 'ALTERAÇÃO';
          end
        else
          begin
            LBL_STATUS.Caption := 'INCLUSÃO';
            TBN_CLIE.PageIndex := 0;
{            DBE_CLI_CODI.Enabled := true;}
            DBE_CLI_RAZA.SetFocus;
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

procedure TFClientes.Q_CLIEAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CLIE]);
    end;
  except
    begin
       Q_CLIE.RevertRecord;
    end;
  end;
end;

procedure TFClientes.Q_CLIEBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFClientes.Q_CLIEAfterCancel(DataSet: TDataSet);
begin
 { DBE_CLI_CODI.Enabled := false;}
end;

procedure TFClientes.DS_CLIEDataChange(Sender: TObject; Field: TField);
begin
   if not (DS_CLIE.State in [dsInsert,dsEdit]) then
   begin
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='1') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='1')) then CKB_INDI.Checked := true
     else CKB_INDI.Checked := false;
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='2') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='2')) then CKB_REVE.Checked := true
     else CKB_REVE.Checked := false;
     if ((copy(Q_CLIECLI_CANA.AsString,1,1)='3') or
         (copy(Q_CLIECLI_CANA.AsString,2,1)='3')) then CKB_CONS.Checked := true
     else CKB_CONS.Checked := false;

   end;
end;

procedure TFClientes.DBE_CLI_CGCEnter(Sender: TObject);
begin
     if Q_CLIECLI_PESS.AsString = '' then
      begin
         MessageDlg('Preencha o tipo de pessoa antes de preencher o CGC/CPF.', mtInformation,
               [mbOk], 0);
         Abort;
      end;

     if (Q_CLIECLI_PESS.AsString = 'F') then
       begin
         Q_CLIECLI_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_CLIECLI_PESS.AsString = 'J') then
           begin
             Q_CLIECLI_CGC.EditMask := '99.999.999/9999-99;0;_';
           end
         else
           begin
             Q_CLIECLI_CGC.EditMask := '';
           end;
       end;

end;

procedure TFClientes.Q_CLIECLI_PESSValidate(Sender: TField);
begin
   if not ((Q_CLIECLI_PESS.AsString = 'F') or
           (Q_CLIECLI_PESS.AsString = 'J') or
           (Q_CLIECLI_PESS.AsString = 'E')) then
   begin
     MessageDlg('Tipo de Pessoa Inválida',mtInformation,[mbOk], 0);
     Abort;
   end;
end;

procedure TFClientes.TBN_CLIEChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     if ((NewTab = 1) and (DS_CLIE.State = dsInsert)) then
     begin
        if Q_CLIECLI_CEND.AsString = '' then Q_CLIECLI_CEND.AsString := Q_CLIECLI_FEND.AsString;
        if Q_CLIECLI_CMUN.AsString = '' then Q_CLIECLI_CMUN.AsString := Q_CLIECLI_FMUN.AsString;
        if ((Q_CLIECLI_CEST.AsString = '') and (Q_CLIECLI_FEST.AsString <> '')) then Q_CLIECLI_CEST.AsString := Q_CLIECLI_FEST.AsString;
        if Q_CLIECLI_CCEP.AsString = '' then Q_CLIECLI_CCEP.AsString := Q_CLIECLI_FCEP.AsString;
        if Q_CLIECLI_CTEL.AsString = '' then Q_CLIECLI_CTEL.AsString := Q_CLIECLI_FTEL.AsString;
        if Q_CLIECLI_CTE2.AsString = '' then Q_CLIECLI_CTE2.AsString := Q_CLIECLI_FTE2.AsString;
        if Q_CLIECLI_CFAX.AsString = '' then Q_CLIECLI_CFAX.AsString := Q_CLIECLI_FFAX.AsString;
        if Q_CLIECLI_CEMA.AsString = '' then Q_CLIECLI_CEMA.AsString := Q_CLIECLI_FEMA.AsString;
        if Q_CLIECLI_CCON.AsString = '' then Q_CLIECLI_CCON.AsString := DBE_CLI_FCON.Text;
     end;
     CKB_CLI_INDI2.Checked := CKB_INDI.Checked;
     CKB_REVE2.Checked := CKB_REVE.Checked;
     CKB_CONS2.Checked := CKB_CONS.Checked;
     CheckBox1.Checked := CKB_INDI.Checked;
     CheckBox2.Checked := CKB_REVE.Checked;
     CheckBox3.Checked := CKB_CONS.Checked;
     L_MUDOU := true;
end;

procedure TFClientes.CKB_INDIExit(Sender: TObject);
begin
     Q_CLIECLI_CANA.AsString := '';
     if CKB_INDI.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '1';
     if CKB_REVE.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '2';
     if CKB_CONS.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '3';
end;

procedure TFClientes.CKB_REVEExit(Sender: TObject);
begin
     Q_CLIECLI_CANA.AsString := '';
     if CKB_INDI.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '1';
     if CKB_REVE.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '2';
     if CKB_CONS.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '3';
end;

procedure TFClientes.CKB_CONSExit(Sender: TObject);
begin
    if (DS_CLIE.State in [ dsEdit,dsInsert]) then
    begin
     Q_CLIECLI_CANA.AsString := '';
     if CKB_INDI.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '1';
     if CKB_REVE.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '2';
     if CKB_CONS.Checked then Q_CLIECLI_CANA.AsString := Q_CLIECLI_CANA.AsString + '3';
    end;
end;

procedure TFClientes.SBT_REFRClick(Sender: TObject);
begin
     Q_CLIE.Close;
     T_RAAT.Close;
     T_UFED.Close;
     T_VEND.Close;
     T_TRAN.Close;
     T_REPR.Close;
     T_CTCO.Close;
     T_CGER.Close;
     T_VEND.Open;
     T_REPR.Open;
     T_TRAN.Open;
     T_CTCO.Open;
     T_RAAT.Open;
     T_CGER.Open;
     T_UFED.Open;
     Q_CLIE.Open;
end;

procedure TFClientes.Q_CLIENewRecord(DataSet: TDataSet);
begin
     CKB_INDI.Checked := false;
     CKB_REVE.Checked := false;
     CKB_CONS.Checked := false;
end;

procedure TFClientes.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button in [nbFirst,nbPrior,nbNext,nbLast]) then
   begin
     if (Q_CLIECLI_PESS.AsString = 'F') then
       begin
         Q_CLIECLI_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_CLIECLI_PESS.AsString = 'J') then
           begin
             Q_CLIECLI_CGC.EditMask := '99.999.999/9999-99;0;_';
           end
         else
           begin
             Q_CLIECLI_CGC.EditMask := '';
           end;
       end;
   end;
end;

procedure TFClientes.Q_CLIECLI_CGCValidate(Sender: TField);
var RT : Integer;
begin
  if ((Q_CLIECLI_PESS.AsString = 'J') and (DBE_CLI_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_CLI_CGC.Text)) then
      begin
       MessageDlg('CGC Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_CLIECLI_PESS.AsString = 'F') and (DBE_CLI_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_CLI_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;

   try
     STP_CLICGCDUPL.ParamByName('@V_CLI_CODI').AsInteger := Q_CLIECLI_CODI.AsInteger;
     STP_CLICGCDUPL.ParamByName('@V_CLI_CGC').AsString := Q_CLIECLI_CGC.AsString;
     STP_CLICGCDUPL.ExecProc;
   finally
     RT := STP_CLICGCDUPL.ParamByName('Result').AsInteger
   end;

   if (RT = 1) then
    begin
      MessageDlg('CGC/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      Abort;
    end;

end;


procedure TFClientes.Q_CLIEBeforePost(DataSet: TDataSet);
begin
    if Q_CLIECLI_CEND.AsString = '' then Q_CLIECLI_CEND.AsString := Q_CLIECLI_FEND.AsString;
    if Q_CLIECLI_CMUN.AsString = '' then Q_CLIECLI_CMUN.AsString := Q_CLIECLI_FMUN.AsString;
    if ((Q_CLIECLI_CEST.AsString = '') and (Q_CLIECLI_FEST.AsString <> '')) then Q_CLIECLI_CEST.AsString := Q_CLIECLI_FEST.AsString;
    if Q_CLIECLI_CCEP.AsString = '' then Q_CLIECLI_CCEP.AsString := Q_CLIECLI_FCEP.AsString;
    if Q_CLIECLI_CTEL.AsString = '' then Q_CLIECLI_CTEL.AsString := Q_CLIECLI_FTEL.AsString;
    if Q_CLIECLI_CTE2.AsString = '' then Q_CLIECLI_CTE2.AsString := Q_CLIECLI_FTE2.AsString;
    if Q_CLIECLI_CFAX.AsString = '' then Q_CLIECLI_CFAX.AsString := Q_CLIECLI_FFAX.AsString;
    if Q_CLIECLI_CEMA.AsString = '' then Q_CLIECLI_CEMA.AsString := Q_CLIECLI_FEMA.AsString;
    if Q_CLIECLI_CCON.AsString = '' then Q_CLIECLI_CCON.AsString := DBE_CLI_FCON.Text;

     if (((Q_CLIECLI_PESS.AsString = 'F') or (Q_CLIECLI_PESS.AsString = 'J'))
         and (Q_CLIECLI_CGC.AsString = '')) then
       begin
         MessageDlg('CGC/CPF Não Preenchido.',mtInformation,[mbOk], 0);
         TBN_CLIE.PageIndex := 0;
         DBE_CLI_CGC.SetFocus;
         Abort;
       end;
     if (Q_CLIECLI_RAZA.AsString = '') then
       begin
         MessageDlg('Razão Social Não Preenchida.',mtInformation,[mbOk], 0);
         TBN_CLIE.PageIndex := 0;
         DBE_CLI_RAZA.SetFocus;
         Abort;
       end;
     if (Q_CLIECLI_PESS.AsString = '') then
       begin
         MessageDlg('Tipo de Pessoa Não Preenchida.',mtInformation,[mbOk], 0);
         TBN_CLIE.PageIndex := 0;
         DBCB_CLI_PESS.SetFocus;
         Abort;
       end;
     if (Q_CLIECLI_CANA.AsString = '') then
       begin
         MessageDlg('Canal de Consumo Não Preenchido.',mtInformation,[mbOk], 0);
         TBN_CLIE.PageIndex := 0;
         CKB_INDI.SetFocus;
         Abort;
       end;

end;

procedure TFClientes.DBE_CLI_FCONExit(Sender: TObject);
begin
     if (DS_CLIE.State in [dsInsert]) then
      begin
          if not (L_MUDOU) then TBN_CLIE.PageIndex := 1;
          L_MUDOU := false;
      end;
end;

procedure TFClientes.DBLC_CLI_BANCExit(Sender: TObject);
begin
     if (DS_CLIE.State in [dsInsert]) then
      begin
           if not (L_MUDOU) then TBN_CLIE.PageIndex := 2;
           L_MUDOU := false;
      end;
end;

procedure TFClientes.DBE_CLI_LCREExit(Sender: TObject);
begin
     if (DS_CLIE.State in [dsInsert]) then
      begin
           if not (L_MUDOU) then TBN_CLIE.PageIndex := 0;
           L_MUDOU := false;
      end;
end;

procedure TFClientes.DBLC_CLI_VENDChange(Sender: TObject);
begin
     if ((DBLC_CLI_VEND.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_VEND.Clear;
      end;
end;

procedure TFClientes.TBN_CLIEClick(Sender: TObject);
begin
     L_MUDOU := false;
end;

procedure TFClientes.DBLC_CLI_TRANChange(Sender: TObject);
begin
     if ((DBLC_CLI_TRAN.Text = '') and (DS_CLIE.State in [dsInsert,dsEdit]))then
      begin
        Q_CLIECLI_TRAN.Clear;
      end;
end;

procedure TFClientes.DBLC_DBE_REPRChange(Sender: TObject);
begin
     if ((DBLC_DBE_REPR.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_REPR.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_RAATChange(Sender: TObject);
begin
     if ((DBLC_CLI_RAAT.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_RAAT.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_CONTChange(Sender: TObject);
begin
     if ((DBLC_CLI_CONT.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CONT.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_CGERChange(Sender: TObject);
begin
     if ((DBLC_CLI_CGER.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CGER.Clear;
      end;
end;

procedure TFClientes.DBLC_DBE_FESTChange(Sender: TObject);
begin
     if ((DBLC_DBE_FEST.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_FEST.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_CESTChange(Sender: TObject);
begin
     if ((DBLC_CLI_CEST.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CEST.Clear;
      end;
end;

procedure TFClientes.DBLC_CLI_BANCChange(Sender: TObject);
begin
     if ((DBLC_CLI_BANC.Text = '') and (DS_CLIE.state in [dsInsert,dsEdit])) then
      begin
        Q_CLIECLI_CBAN.Clear;
        Q_CLIECLI_CCBA.Clear;
      end
     else
      begin
        if (DS_CLIE.state in [dsInsert,dsEdit]) then
          begin
            Q_CLIECLI_CCBA.Value := T_BANCBAN_CONT.AsString;
          end;  
      end;
end;

procedure TFClientes.Q_CLIEBeforeInsert(DataSet: TDataSet);
begin
   DBE_CLI_CODI.Enabled := true;
   DBE_CLI_CODI.SetFocus;
end;

procedure TFClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) then
      begin
         Key := #0;
         Perform(WM_Nextdlgctl,0,0);
      end;
end;

procedure TFClientes.SBT_CONSClick(Sender: TObject);
begin
     FPesqClie.ShowModal;
end;

end.

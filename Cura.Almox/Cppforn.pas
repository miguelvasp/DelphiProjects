unit CPPFORN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwtable, wwdblook,
  Wwdotdot, Wwdbcomb;

type
  TFFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_FORN: TwwQuery;
    DS_FORN: TwwDataSource;
    UPD_FORN: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    LBL_STATUS: TLabel;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_CGC: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Label4: TLabel;
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
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBE_FOR_CODI: TwwDBEdit;
    DBE_FOR_RAZA: TwwDBEdit;
    DBLC_DBE_PESS: TwwDBCombobox;
    DBE_FOR_INIC: TwwDBEdit;
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
    DBE_FOR_NCON: TwwDBEdit;
    DBE_FOR_MARK: TwwDBEdit;
    DBE_FOR_PENT: TwwDBEdit;
    T_UFED: TwwTable;
    DS_UFED: TwwDataSource;
    DBLC_FOR_CONT: TwwDBLookupCombo;
    DBLC_FOR_CGER: TwwDBLookupCombo;
    SBT_REFR: TSpeedButton;
    T_CONT: TwwTable;
    T_CGER: TwwTable;
    DS_CONT: TwwDataSource;
    DS_CGER: TwwDataSource;
    T_CONTCTC_CODI: TStringField;
    T_CONTCTC_DESC: TStringField;
    T_CGERCON_CODI: TStringField;
    T_CGERCON_DESC: TStringField;
    T_CGERCON_ENSA: TStringField;
    T_CGERCON_OPER: TStringField;
    T_CGERCON_FLOA: TFloatField;
    T_CGERCON_FLUX: TStringField;
    T_CGERCON_CTCO: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_FORNAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_FORNStateChange(Sender: TObject);
    procedure Q_FORNAfterDelete(DataSet: TDataSet);
    procedure Q_FORNBeforeDelete(DataSet: TDataSet);
    procedure Q_FORNAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure DBE_FOR_CGCEnter(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_FORNFOR_CGCValidate(Sender: TField);
    procedure DBLC_FOR_ESTAChange(Sender: TObject);
    procedure DBLC_FOR_CONTChange(Sender: TObject);
    procedure DBLC_FOR_CGERChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFornecedores: TFFornecedores;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TFFornecedores.SBT_SAIRClick(Sender: TObject);
begin
     FFornecedores.Close;
end;

procedure TFFornecedores.Q_FORNAfterPost(DataSet: TDataSet);
begin
  try
   begin
     FMenu.DATABASE1.ApplyUpdates([Q_FORN]);
   end;
  except
   begin
     Q_FORN.RevertRecord;
   end;
  end;
  DBE_FOR_CODI.Enabled := false;
  Q_FORN.Close;
  Q_FORN.Open;
end;

procedure TFFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_FORN.Close;
   T_UFED.Close;
   T_CONT.close;
   T_CGER.Close;
end;

procedure TFFornecedores.FormShow(Sender: TObject);
begin
   T_CGER.Open;
   T_CONT.Open;
   T_UFED.Open;
   Q_FORN.Open;
end;

procedure TFFornecedores.DS_FORNStateChange(Sender: TObject);
begin
   if (Q_FORN.State = dsEdit) or (Q_FORN.State = dsInsert) then
     begin
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
        if Q_FORN.State = dsEdit then
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

procedure TFFornecedores.Q_FORNAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_FORN]);
    end;
  except
    begin
       Q_FORN.RevertRecord;
    end;
  end;
end;

procedure TFFornecedores.Q_FORNBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFFornecedores.Q_FORNAfterCancel(DataSet: TDataSet);
begin
  DBE_FOR_CODI.Enabled := false;
end;

procedure TFFornecedores.SBT_REFRClick(Sender: TObject);
begin
     Q_FORN.close;
     T_UFED.close;
     T_CONT.close;
     T_CGER.close;
     Q_FORN.Open;
     T_UFED.Open;
     T_CONT.Open;
     T_CGER.Open;
end;

procedure TFFornecedores.DBE_FOR_CGCEnter(Sender: TObject);
begin
     if Q_FORNFOR_PESS.AsString = '' then
      begin
         MessageDlg('Preencha o tipo de pessoa antes de preencher o CGC/CPF.', mtInformation,
               [mbOk], 0);
         Abort;
      end;

     if (Q_FORNFOR_PESS.AsString = 'F') then
       begin
         Q_FORNFOR_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_FORNFOR_PESS.AsString = 'J') then
           begin
             Q_FORNFOR_CGC.EditMask := '99.999.999/9999-99;0;_';
           end
         else
           begin
             Q_FORNFOR_CGC.EditMask := '';
           end;
       end;
end;

procedure TFFornecedores.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button in [nbFirst,nbPrior,nbNext,nbLast]) then
   begin
     if (Q_FORNFOR_PESS.AsString = 'F') then
       begin
         Q_FORNFOR_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_FORNFOR_PESS.AsString = 'J') then
           begin
             Q_FORNFOR_CGC.EditMask := '99.999.999/9999-99;0;_';
           end
         else
           begin
             Q_FORNFOR_CGC.EditMask := '';
           end;
       end;
   end;

end;

procedure TFFornecedores.Q_FORNFOR_CGCValidate(Sender: TField);
begin
  if ((Q_FORNFOR_PESS.AsString = 'J') and (DBE_FOR_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_FORNFOR_PESS.AsString = 'F') and (DBE_FOR_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;

end;

procedure TFFornecedores.DBLC_FOR_ESTAChange(Sender: TObject);
begin
  if ((DBLC_FOR_ESTA.Text = '') and (DS_FORN.state in [dsInsert,dsEdit])) then
   begin
     Q_FORNFOR_ESTA.Clear;
   end;
end;

procedure TFFornecedores.DBLC_FOR_CONTChange(Sender: TObject);
begin
  if ((DBLC_FOR_CONT.Text = '') and (DS_FORN.state in [dsInsert,dsEdit])) then
   begin
     Q_FORNFOR_CONT.Clear;
   end;

end;

procedure TFFornecedores.DBLC_FOR_CGERChange(Sender: TObject);
begin
  if ((DBLC_FOR_CGER.Text = '') and (DS_FORN.state in [dsInsert,dsEdit])) then
   begin
     Q_FORNFOR_CGER.Clear;
   end;

end;

end.

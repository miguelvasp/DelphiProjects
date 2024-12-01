unit URateios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook;

type
  TFRateios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_CTCO: TwwQuery;
    DS_CTCO: TwwDataSource;
    UPD_CTCO: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    DBE_CTC_CODI: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    LBL_STATUS: TLabel;
    DBG_CTCO: TwwDBGrid;
    SBT_REFR: TSpeedButton;
    DBG_CTCOIButton: TwwIButton;
    Q_CTCOCger_SubID: TIntegerField;
    Q_CTCOSub_ID: TIntegerField;
    Q_CTCOCON_CODI: TStringField;
    Q_CTCOPercentual: TFloatField;
    Q_SUB: TwwQuery;
    Q_CONT: TwwQuery;
    DBLC_FORN: TwwDBLookupCombo;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label4: TLabel;
    Q_SUBSub_ID: TAutoIncField;
    Q_SUBDescricao: TStringField;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_ENSA: TStringField;
    Q_CONTCON_OPER: TStringField;
    Q_CONTCON_FLOA: TFloatField;
    Q_CONTCON_FLUX: TStringField;
    Q_CONTCON_CTCO: TStringField;
    Q_CTCODSCont: TStringField;
    Q_CTCODSSub: TStringField;
    wwDBEdit1: TwwDBEdit;
    Label6: TLabel;
    cboFil: TwwDBLookupCombo;
    Q_CONN: TwwQuery;
    StringField2: TStringField;
    Q_CONNCON_CODI: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    DS_CONN: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Label7: TLabel;
    Q_AUX: TwwQuery;
    StringField3: TStringField;
    FloatField2: TFloatField;
    Q_SQL: TwwQuery;
    StringField8: TStringField;
    FloatField3: TFloatField;
    Q_CONNDS: TStringField;
    Q_CONTDS: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_CTCOAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_CTCOStateChange(Sender: TObject);
    procedure Q_CTCOAfterDelete(DataSet: TDataSet);
    procedure Q_CTCOBeforeDelete(DataSet: TDataSet);
    procedure Q_CTCOAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_CTCOBeforeInsert(DataSet: TDataSet);
    procedure DBE_CTC_CODIEnter(Sender: TObject);
    procedure DBE_CTC_CODIExit(Sender: TObject);
    procedure BDE_CTC_DESCExit(Sender: TObject);
    procedure BDE_CTC_DESCEnter(Sender: TObject);
    procedure SBT_CONSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Q_CTCONewRecord(DataSet: TDataSet);
    procedure cboFilCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Q_CTCOAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRateios: TFRateios;

implementation

uses CPPMENU, UPesqCCont, ContCont ;

{$R *.DFM}

procedure TFRateios.SBT_SAIRClick(Sender: TObject);
Var SQL:String;
begin

     Q_AUX.CLOSE;
     Q_AUX.OPEN;

     If not Q_AUX.Eof then
     Begin
         If MessageDlg('Há Rateios para Contas Gerenciais que não completam 100%, caso escolha por sair, estes rateios serão apagados. Deseja Prosseguir?',
         MtError,[mbYes,mbNo],0) = mrYes then
         Begin
             SQL := ' DELETE FROM CGER_SUB WHERE CON_CODI IN ' +
             ' (SELECT		CON_CODI ' +
             ' FROM		CGER_SUB ' +
             ' GROUP BY	CON_CODI  ' +
             ' HAVING		SUM(PERCENTUAL) <> 100 OR SUM(PERCENTUAL) IS NULL) ';

             Q_SQL.SQL.CLEAR;
             Q_SQL.SQL.ADD(SQL);
             Q_SQL.EXECSQL;

             FRateios.Close;
         End
     End Else
        FRateios.Close;
end;

procedure TFRateios.Q_CTCOAfterPost(DataSet: TDataSet);
begin
   try
      FMenu.DATABASE1.ApplyUpdates([Q_CTCO])
   except
      On E:EdbEngineError do
      Begin
         MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      End;
   end;
     DBE_CTC_CODI.Enabled := false;
     Q_CTCO.Close;
     Q_CTCO.Open;
end;

procedure TFRateios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CTCO.Close;
   Q_CONT.Close;
   Q_CONN.Close;
   Q_SUB.Close;

   Action := caFree;
end;

procedure TFRateios.FormShow(Sender: TObject);
begin
     Q_CTCO.Open;
     Q_CONT.Open;
     Q_CONN.Open;
     Q_SUB.Open;
end;

procedure TFRateios.DS_CTCOStateChange(Sender: TObject);
begin
     if (Q_CTCO.State = dsEdit) or (Q_CTCO.State = dsInsert) then
        begin
             SBT_SAIR.Enabled := false;
             SBT_REFR.Enabled := false;
             if Q_CTCO.State = dsEdit then
                begin
                     LBL_STATUS.Caption := 'ALTERAÇÃO';
                end
             else
                begin
                     LBL_STATUS.Caption := 'INCLUSÃO';
                     //DBE_CTC_CODI.Enabled := true;
                     //DBE_CTC_CODI.SetFocus;
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

procedure TFRateios.Q_CTCOAfterDelete(DataSet: TDataSet);
begin
   try
      FMenu.DATABASE1.ApplyUpdates([Q_CTCO])
   except
      On E:EdbEngineError do
      Begin
         MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      End;
   
   end;
end;

procedure TFRateios.Q_CTCOBeforeDelete(DataSet: TDataSet);
begin
     if MessageDlg('Confirma Exclusão ?',
        mtInformation, [mbYes, mbNo], 0) = mrNo then
        Abort;
end;

procedure TFRateios.Q_CTCOAfterCancel(DataSet: TDataSet);
begin
     DBE_CTC_CODI.Enabled := false;
end;

procedure TFRateios.SBT_REFRClick(Sender: TObject);
begin
     Q_CTCO.SQL.CLEAR;

     Q_CTCO.SQL.ADD('SELECT * FROM CGER_SUB ');

     If (cboFil.LookupValue <> '') and (cboFil.Text <> '') then
     Begin
        Q_CTCO.SQL.ADD('WHERE CON_CODI = :CON_CODI ');
     End;

     Q_CTCO.Open;

     Q_CTCO.Open;
end;

procedure TFRateios.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) then
        begin
             Key := #0;
             Perform(WM_Nextdlgctl,0,0);
      end;
end;

procedure TFRateios.Q_CTCOBeforeInsert(DataSet: TDataSet);
begin
     //DBE_CTC_CODI.Enabled := true;
     //DBE_CTC_CODI.SetFocus;
end;
procedure TFRateios.DBE_CTC_CODIEnter(Sender: TObject);
begin
    // (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRateios.DBE_CTC_CODIExit(Sender: TObject);
begin
//   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFRateios.BDE_CTC_DESCExit(Sender: TObject);
begin
//   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFRateios.BDE_CTC_DESCEnter(Sender: TObject);
begin
  //   (Sender as TwwDBEdit).Color := ClAqua;
end;


procedure TFRateios.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqCCont, FPesqCCont);
   FPesqCCont.ShowModal ;
   FPesqCCont.Release ;
   if Gs_Cont <> '' then begin
      Q_CTCO.Close;
      Q_CTCO.Open;
      Q_CTCO.locate('CTC_CODI',Gs_Cont,[]);
      Gs_Cont := '' ;
   end;
end;

procedure TFRateios.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

procedure TFRateios.Q_CTCONewRecord(DataSet: TDataSet);
begin
        If  Q_CONNCon_Codi.AsString <> '' then
                Q_CTCOCon_Codi.AsString := Q_CONNCON_Codi.AsString
end;

procedure TFRateios.cboFilCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        SBT_REFR.Click;
end;

procedure TFRateios.Q_CTCOAfterOpen(DataSet: TDataSet);
begin
        Q_AUX.CLOSE;
        Q_AUX.OPEN;
end;

end.



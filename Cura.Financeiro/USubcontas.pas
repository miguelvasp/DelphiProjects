unit USubcontas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFSubContas = class(TForm)
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
    BDE_CTC_DESC: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    LBL_STATUS: TLabel;
    DBG_CTCO: TwwDBGrid;
    SBT_REFR: TSpeedButton;
    DBG_CTCOIButton: TwwIButton;
    Q_CTCOSub_ID: TAutoIncField;
    Q_CTCODescricao: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSubContas: TFSubContas;

implementation

uses CPPMENU, UPesqCCont, ContCont ;

{$R *.DFM}

procedure TFSubContas.SBT_SAIRClick(Sender: TObject);
begin
     FSubContas.Close;
end;

procedure TFSubContas.Q_CTCOAfterPost(DataSet: TDataSet);
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

procedure TFSubContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CTCO.Close;
   Action := caFree;
end;

procedure TFSubContas.FormShow(Sender: TObject);
begin
     Q_CTCO.Open;
end;

procedure TFSubContas.DS_CTCOStateChange(Sender: TObject);
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

procedure TFSubContas.Q_CTCOAfterDelete(DataSet: TDataSet);
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

procedure TFSubContas.Q_CTCOBeforeDelete(DataSet: TDataSet);
begin
     if MessageDlg('Confirma Exclusão ?',
        mtInformation, [mbYes, mbNo], 0) = mrNo then
        Abort;
end;

procedure TFSubContas.Q_CTCOAfterCancel(DataSet: TDataSet);
begin
     DBE_CTC_CODI.Enabled := false;
end;

procedure TFSubContas.SBT_REFRClick(Sender: TObject);
begin
     Q_CTCO.Close;
     Q_CTCO.Open;
end;

procedure TFSubContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) then
        begin
             Key := #0;
             Perform(WM_Nextdlgctl,0,0);
      end;
end;

procedure TFSubContas.Q_CTCOBeforeInsert(DataSet: TDataSet);
begin
     //DBE_CTC_CODI.Enabled := true;
     //DBE_CTC_CODI.SetFocus;
end;
procedure TFSubContas.DBE_CTC_CODIEnter(Sender: TObject);
begin
    // (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFSubContas.DBE_CTC_CODIExit(Sender: TObject);
begin
//   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFSubContas.BDE_CTC_DESCExit(Sender: TObject);
begin
//   (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFSubContas.BDE_CTC_DESCEnter(Sender: TObject);
begin
  //   (Sender as TwwDBEdit).Color := ClAqua;
end;


procedure TFSubContas.SBT_CONSClick(Sender: TObject);
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

procedure TFSubContas.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.



unit CPPFERI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwdotdot, Wwdbcomb;

type
  TFFeriados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    DS_FERI: TwwDataSource;
    UPD_FERI: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label42: TLabel;
    DBE_FER_DESC: TwwDBEdit;
    c: TwwDBGrid;
    DBCB_FER_DUTIL: TwwDBCombobox;
    DBCB_FER_DUTIL2: TwwDBCombobox;
    SBT_CONS: TSpeedButton;
    cIButton: TwwIButton;
    dbe_fer_data: TwwDBEdit;
    Q_FERI: TwwQuery;
    Q_FERIFER_DATA: TDateTimeField;
    Q_FERIFER_DESC: TStringField;
    Q_FERIFER_DUTIL: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_FERIAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_FERIStateChange(Sender: TObject);
    procedure Q_FERIAfterDelete(DataSet: TDataSet);
    procedure Q_FERIBeforeDelete(DataSet: TDataSet);
    procedure Q_FERIAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_FERIBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_FERIBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFeriados: TFFeriados;

implementation

uses CPPMENU , UPesqFer ;

{$R *.DFM}

procedure TFFeriados.SBT_SAIRClick(Sender: TObject);
begin
  FFeriados.Close;
end;

procedure TFFeriados.Q_FERIAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_FERI]);
  end;
  except
    begin
      Q_FERI.RevertRecord;
    end;
  end;
  DBE_FER_DATA.Enabled := false;
  Q_FERI.Close;
  Q_FERI.Open;
end;

procedure TFFeriados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_FERI.Close;
  Action := caFree;
end;

procedure TFFeriados.FormShow(Sender: TObject);
begin
  Q_FERI.Open;
end;

procedure TFFeriados.DS_FERIStateChange(Sender: TObject);
begin
  if (Q_FERI.State = dsEdit) or (Q_FERI.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_FERI.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_FER_DATA.Enabled := true;
      DBE_FER_DATA.SetFocus;
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

procedure TFFeriados.Q_FERIAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_FERI]);
    end;
  except
    begin
       Q_FERI.RevertRecord;
    end;
  end;
end;

procedure TFFeriados.Q_FERIBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFFeriados.Q_FERIAfterCancel(DataSet: TDataSet);
begin
  DBE_FER_DATA.Enabled := false;
end;

procedure TFFeriados.SBT_REFRClick(Sender: TObject);
begin
  Q_FERI.Close;
  Q_FERI.Open;
end;

procedure TFFeriados.Q_FERIBeforeInsert(DataSet: TDataSet);
begin
  DBE_FER_DATA.Enabled := True;
  DBE_FER_DATA.Setfocus;
end;

procedure TFFeriados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFFeriados.Q_FERIBeforePost(DataSet: TDataSet);
begin
  if DBE_FER_DATA.text = '' then begin
     MessageDlg('Data em Branco !',mterror, [mbOk], 0);
     DBE_FER_DATA.setfocus ;
     abort ;
  end;
  if DBE_FER_DESC.text = '' then begin
     MessageDlg('Descrição em Branco !',mterror, [mbOk], 0);
     DBE_FER_DESC.setfocus ;
     abort ;
  end;
  if DBCB_FER_DUTIL.text = '' then begin
     MessageDlg('Dia Útil em Branco !',mterror, [mbOk], 0);
     DBCB_FER_DUTIL.setfocus ;
     abort ;
  end;
end;


procedure TFFeriados.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqFer, FPesqFer);
   FPesqFer.ShowModal ;
   FPesqFer.Release ;
   if Gs_feri <> '' then begin
      Q_FERI.Close;
      Q_FERI.Open;
      Q_FERI.locate('FER_DATA',Gs_feri,[]);
      Gs_feri := '' ;
   end;
end;


procedure TFFeriados.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.

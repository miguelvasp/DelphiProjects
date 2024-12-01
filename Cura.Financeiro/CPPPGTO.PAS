unit CPPPGTO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFFPgto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_PGTO: TwwQuery;
    DS_PGTO: TwwDataSource;
    UPD_PGTO: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    DBE_PGT_CODI: TwwDBEdit;
    DBE_PGT_DESC: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    LBL_STATUS: TLabel;
    DBG_PGTO: TwwDBGrid;
    SBT_REFR: TSpeedButton;
    Q_PGTOPGT_CODI: TStringField;
    Q_PGTOPGT_DESC: TStringField;
    SBT_CONS: TSpeedButton;
    DBG_PGTOIButton: TwwIButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_PGTOAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_PGTOStateChange(Sender: TObject);
    procedure Q_PGTOAfterDelete(DataSet: TDataSet);
    procedure Q_PGTOBeforeDelete(DataSet: TDataSet);
    procedure Q_PGTOAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_PGTOBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_PGTOBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFPgto: TFFPgto;

implementation
uses CPPMENU , UPesqFPg ;

{$R *.DFM}

procedure TFFPgto.SBT_SAIRClick(Sender: TObject);
begin
  FFPgto.Close;
end;

procedure TFFPgto.Q_PGTOAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_PGTO]);
  end;
  except
    begin
      Q_PGTO.RevertRecord;
    end;
  end;
  DBE_PGT_CODI.Enabled := false;
  Q_PGTO.Close;
  Q_PGTO.Open;
end;

procedure TFFPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PGTO.Close;
  Action := caFree;
end;

procedure TFFPgto.FormShow(Sender: TObject);
begin
  Q_PGTO.Open;
end;

procedure TFFPgto.DS_PGTOStateChange(Sender: TObject);
begin
  if (Q_PGTO.State = dsEdit) or (Q_PGTO.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_PGTO.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_PGT_CODI.Enabled := true;
      DBE_PGT_CODI.SetFocus;
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

procedure TFFPgto.Q_PGTOAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_PGTO]);
    end;
  except
    begin
       Q_PGTO.RevertRecord;
    end;
  end;
end;

procedure TFFPgto.Q_PGTOBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFFPgto.Q_PGTOAfterCancel(DataSet: TDataSet);
begin
  DBE_PGT_CODI.Enabled := false;
end;

procedure TFFPgto.SBT_REFRClick(Sender: TObject);
begin
  Q_PGTO.Close;
  Q_PGTO.Open;
end;

procedure TFFPgto.Q_PGTOBeforeInsert(DataSet: TDataSet);
begin
  DBE_PGT_CODI.Enabled := True;
  DBE_PGT_CODI.Setfocus;
end;

procedure TFFPgto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFFPgto.Q_PGTOBeforePost(DataSet: TDataSet);
begin
  if DBE_PGT_CODI.text = '' then begin
     MessageDlg('Código em Branco !',mterror, [mbOk], 0);
     DBE_PGT_CODI.setfocus ;
     abort ;
  end;
  if DBE_PGT_DESC.text = '' then begin
     MessageDlg('Descrição em Branco !',mterror, [mbOk], 0);
     DBE_PGT_DESC.setfocus ;
     abort ;
  end;
end;


procedure TFFPgto.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqFPg, FPesqFPg);
   FPesqFPg.ShowModal ;
   FPesqFPg.Release ;
   if gs_FPG <> '' then begin
      Q_PGTO.Close;
      Q_PGTO.Open;
      Q_PGTO.locate('PGT_CODI',gs_FPG,[]);
      gs_FPG := '' ;
   end;
end;

procedure TFFPgto.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False)
end;

end.

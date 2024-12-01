unit UBancoFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFBancoFor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Fonte: TDBNavigator;
    Q_BANCO: TwwQuery;
    DS_BANCO: TwwDataSource;
    UPD_BANCO: TUpdateSQL;
    DBE_CCU_CODI: TwwDBEdit;
    DBE_CCU_DESC: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    LBL_STATUS: TLabel;
    DBG_CCUS: TwwDBGrid;
    SBT_REFR: TSpeedButton;
    DBG_CCUSIButton: TwwIButton;
    Q_BANCOBAN_ID: TAutoIncField;
    Q_BANCONUMERO: TIntegerField;
    Q_BANCODESCRICAO: TStringField;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label5: TLabel;
    pnl1: TPanel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAtualizar: TSpeedButton;
    SBT_CONS: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_BANCOAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_BANCOStateChange(Sender: TObject);
    procedure Q_BANCOAfterDelete(DataSet: TDataSet);
    procedure Q_BANCOBeforeDelete(DataSet: TDataSet);
    procedure Q_BANCOAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_BANCOBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_BANCOBeforePost(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBancoFor: TFBancoFor;

implementation

uses CPPMENU , UPesqCCus, CPPCCUS ;

{$R *.DFM}

procedure TFBancoFor.SBT_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFBancoFor.Q_BANCOAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_banco]);
  end;
  except
    begin
      Q_banco.RevertRecord;
    end;
  end;
  DBE_CCU_CODI.Enabled := false;
  Q_BANCO.Close;
  Q_BANCO.Open;
end;

procedure TFBancoFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_BANCO.Close;
  Action := caFree;
end;

procedure TFBancoFor.FormShow(Sender: TObject);
begin
  Q_BANCO.Open;
end;

procedure TFBancoFor.DS_BANCOStateChange(Sender: TObject);
begin
  if (Q_BANCO.State = dsEdit) or (Q_BANCO.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_BANCO.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_CCU_CODI.Enabled := true;
      DBE_CCU_CODI.SetFocus;
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

procedure TFBancoFor.Q_BANCOAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_BANCO]);
    end;
  except
    begin
       Q_BANCO.RevertRecord;
    end;
  end;
end;

procedure TFBancoFor.Q_BANCOBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFBancoFor.Q_BANCOAfterCancel(DataSet: TDataSet);
begin
  DBE_CCU_CODI.Enabled := false;
end;

procedure TFBancoFor.SBT_REFRClick(Sender: TObject);
begin
  Q_BANCO.Close;
  Q_BANCO.Open;
end;

procedure TFBancoFor.Q_BANCOBeforeInsert(DataSet: TDataSet);
begin
  DBE_CCU_CODI.Enabled := True;
  DBE_CCU_CODI.Setfocus;
end;

procedure TFBancoFor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFBancoFor.Q_BANCOBeforePost(DataSet: TDataSet);
begin
  if DBE_CCU_CODI.text = '' then begin
     MessageDlg('Código em Branco !',mterror, [mbOk], 0);
     DBE_CCU_CODI.setfocus ;
     abort ;
  end;
  if DBE_CCU_DESC.text = '' then begin
     MessageDlg('Descrição em Branco !',mterror, [mbOk], 0);
     DBE_CCU_DESC.setfocus ;
     abort ;
  end;
end;


procedure TFBancoFor.btnAddClick(Sender: TObject);
begin
  fonte.BtnClick(nbInsert);
end;

procedure TFBancoFor.btnAtualizarClick(Sender: TObject);
begin
  fonte.BtnClick(nbRefresh);
end;

procedure TFBancoFor.btnCancelClick(Sender: TObject);
begin
  fonte.BtnClick(nbCancel);
end;

procedure TFBancoFor.btnDeleteClick(Sender: TObject);
begin
   fonte.BtnClick(nbDelete);
end;

procedure TFBancoFor.btnFirstClick(Sender: TObject);
begin
    fonte.BtnClick(nbFirst);
end;

procedure TFBancoFor.btnLastClick(Sender: TObject);
begin
    fonte.BtnClick(nbLast);
end;

procedure TFBancoFor.btnNextClick(Sender: TObject);
begin
     fonte.BtnClick(nbNext);
end;

procedure TFBancoFor.btnPostClick(Sender: TObject);
begin
  if fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  fonte.BtnClick(nbPost);
end;

procedure TFBancoFor.btnPriorClick(Sender: TObject);
begin
     fonte.BtnClick(nbPrior);
end;

end.

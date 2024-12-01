unit CPPMOED;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Tabnotbk,
  Wwdotdot, Wwdbcomb;

type
  TFMoedas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    TBN_MOED: TTabbedNotebook;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBE_MOE_SIGL: TDBEdit;
    DBE_MOE_NOME: TDBEdit;
    UPD_MOED: TUpdateSQL;
    UPD_CMOE: TUpdateSQL;
    Panel5: TPanel;
    DS_CMOE: TwwDataSource;
    DS_MOED: TwwDataSource;
    Q_CMOE: TwwQuery;
    Q_MOED: TwwQuery;
    Q_MOEDMOE_SIGL: TStringField;
    Q_CMOECMO_MOED: TStringField;
    Q_CMOECMO_DATA: TDateTimeField;
    Q_CMOECMO_VALO: TFloatField;
    DBG_MOED: TwwDBGrid;
    DBG_CMOE: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    Q_MOEDMOE_NOME: TStringField;
    SBT_CONS: TSpeedButton;
    DBG_MOEDIButton: TwwIButton;
    DBG_CMOEIButton: TwwIButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_MOEDAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_MOEDStateChange(Sender: TObject);
    procedure Q_MOEDAfterDelete(DataSet: TDataSet);
    procedure Q_MOEDBeforeDelete(DataSet: TDataSet);
    procedure Q_MOEDAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure TBN_MOEDChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure DS_CMOEStateChange(Sender: TObject);
    procedure Q_CMOEAfterDelete(DataSet: TDataSet);
    procedure Q_CMOEAfterPost(DataSet: TDataSet);
    procedure Q_CMOEBeforeDelete(DataSet: TDataSet);
    procedure Q_CMOENewRecord(DataSet: TDataSet);
    procedure Q_MOEDBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_MOEDBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
   // procedure DS_MOEDDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMoedas: TFMoedas;

implementation

uses CPPMENU , UPesqMoe ;

{$R *.DFM}

procedure TFMoedas.SBT_SAIRClick(Sender: TObject);
begin
  FMoedas.Close;
end;

procedure TFMoedas.Q_MOEDAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_MOED]);
  end;
  except
    begin
      Q_MOED.RevertRecord;
    end;
  end;
  DBE_MOE_SIGL.Enabled := false;
  Q_MOED.Close;
  Q_MOED.Open;
end;

procedure TFMoedas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_MOED.Close;
  Q_CMOE.Close;
  Action := caFree;
end;

procedure TFMoedas.FormShow(Sender: TObject);
begin
  Q_MOED.Open;
  Q_CMOE.Open;
  TBN_MOED.PageIndex := 0;
end;

procedure TFMoedas.DS_MOEDStateChange(Sender: TObject);
begin
  if (Q_MOED.State = dsEdit) or (Q_MOED.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_MOED.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_MOE_SIGL.Enabled := true;
      DBE_MOE_SIGL.SetFocus;
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

procedure TFMoedas.Q_MOEDAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_MOED]);
    end;
  except
    begin
      Q_MOED.RevertRecord;
    end;
  end;
end;

procedure TFMoedas.Q_MOEDBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
  begin
    Abort;
  end;
end;

procedure TFMoedas.Q_MOEDAfterCancel(DataSet: TDataSet);
begin
  DBE_MOE_SIGL.Enabled := false;
end;

procedure TFMoedas.SBT_REFRClick(Sender: TObject);
begin
  Q_MOED.Close;
  Q_CMOE.Close;
  Q_MOED.Open;
  Q_CMOE.Open;
end;

procedure TFMoedas.TBN_MOEDChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    AllowChange := false;
  end;
  if (AllowChange) then
  begin
    case NewTab of
      0 : begin
            Fonte.DataSource := DS_MOED;
            FMoedas.KeyPreview := True;
          end;
      1 : begin
            Fonte.DataSource   := DS_CMOE;
            FMoedas.KeyPreview := False;
          end;
    end;
  end;
end;

procedure TFMoedas.DS_CMOEStateChange(Sender: TObject);
begin
  if (Q_CMOE.State = dsEdit) or (Q_CMOE.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_CMOE.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      LBL_STATUS.Caption   := 'INCLUSÃO';
      DBG_CMOE.Setfocus;
      DBG_CMOE.SelectedIndex := 0;
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

procedure TFMoedas.Q_CMOEAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CMOE]);
    end;
  except
    begin
       Q_CMOE.RevertRecord;
    end;
  end;
end;

procedure TFMoedas.Q_CMOEAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_CMOE]);
  end;
  except
    begin
      Q_CMOE.RevertRecord;
    end;
  end;
  Q_CMOE.Close;
  Q_CMOE.Open;
end;

procedure TFMoedas.Q_CMOEBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
  begin
    Abort;
  end;
end;

procedure TFMoedas.Q_CMOENewRecord(DataSet: TDataSet);
begin
   Q_CMOECMO_MOED.AsString := Q_MOEDMOE_SIGL.AsString;
end;

procedure TFMoedas.Q_MOEDBeforeInsert(DataSet: TDataSet);
begin
  DBE_MOE_SIGL.Enabled := True;
  DBE_MOE_SIGL.SetFocus;
end;

procedure TFMoedas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFMoedas.Q_MOEDBeforePost(DataSet: TDataSet);
begin
  if DBE_MOE_SIGL.text = '' then begin
     MessageDlg('Sigla em Branco !',mterror, [mbOk], 0);
     DBE_MOE_SIGL.setfocus ;
     abort ;
   end;
  if DBE_MOE_NOME.text = '' then begin
     MessageDlg('Nome em Branco !',mterror, [mbOk], 0);
     DBE_MOE_NOME.setfocus ;
     abort ;
   end;
end;


procedure TFMoedas.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqMoe, FPesqMoe);
   FPesqMoe.showmodal ;
   FPesqMoe.Release ;
   if Gs_MOE <> '' then begin
      Q_MOED.Close;
      Q_MOED.Open;
      Q_MOED.locate('MOE_SIGL',Gs_MOE,[]);
      Gs_MOE := '' ;
   end;
end;

end.

procedure TFMoedas.DS_MOEDDataChange(Sender: TObject; Field: TField);
begin

end;



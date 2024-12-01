unit CPPCCUS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFCCusto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_CCUS: TwwQuery;
    DS_CCUS: TwwDataSource;
    UPD_CCUS: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    DBE_CCU_CODI: TwwDBEdit;
    DBE_CCU_DESC: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    LBL_STATUS: TLabel;
    DBG_CCUS: TwwDBGrid;
    SBT_REFR: TSpeedButton;
    Q_CCUSFIL_CODI: TStringField;
    Q_CCUSFIL_DESC: TStringField;
    SBT_CONS: TSpeedButton;
    DBG_CCUSIButton: TwwIButton;
    Q_CCUSFIL_NATOPERA: TStringField;
    Q_CCUSFIL_DESCSERV: TStringField;
    Q_CCUSFIL_ULTIMANF: TStringField;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Q_CCUSRAZAO: TStringField;
    Q_CCUSCNPJ: TStringField;
    Q_CCUSENDERECO: TStringField;
    Q_CCUSCOMPL: TStringField;
    Q_CCUSCEP: TStringField;
    Q_CCUSCIDADE: TStringField;
    Q_CCUSUF: TStringField;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_CCUSAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_CCUSStateChange(Sender: TObject);
    procedure Q_CCUSAfterDelete(DataSet: TDataSet);
    procedure Q_CCUSBeforeDelete(DataSet: TDataSet);
    procedure Q_CCUSAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_CCUSBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_CCUSBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure Q_CCUSCNPJValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCCusto: TFCCusto;

implementation

uses CPPMENU , UPesqCCus, U_Funcoes;

{$R *.DFM}

procedure TFCCusto.SBT_SAIRClick(Sender: TObject);
begin
  FCCusto.Close;
end;

procedure TFCCusto.Q_CCUSAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_CCUS]);
  end;
  except
    begin
      Q_CCUS.RevertRecord;
    end;
  end;
  DBE_CCU_CODI.Enabled := false;
  Q_CCUS.Close;
  Q_CCUS.Open;
end;

procedure TFCCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CCUS.Close;
  Action := caFree;
end;

procedure TFCCusto.FormShow(Sender: TObject);
begin
  Q_CCUS.Open;
end;

procedure TFCCusto.DS_CCUSStateChange(Sender: TObject);
begin
  if (Q_CCUS.State = dsEdit) or (Q_CCUS.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_CCUS.State = dsEdit then
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

procedure TFCCusto.Q_CCUSAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_CCUS]);
    end;
  except
    begin
       Q_CCUS.RevertRecord;
    end;
  end;
end;

procedure TFCCusto.Q_CCUSBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFCCusto.Q_CCUSAfterCancel(DataSet: TDataSet);
begin
  DBE_CCU_CODI.Enabled := false;
end;

procedure TFCCusto.SBT_REFRClick(Sender: TObject);
begin
  Q_CCUS.Close;
  Q_CCUS.Open;
end;

procedure TFCCusto.Q_CCUSBeforeInsert(DataSet: TDataSet);
begin
  DBE_CCU_CODI.Enabled := True;
  DBE_CCU_CODI.Setfocus;
end;

procedure TFCCusto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFCCusto.Q_CCUSBeforePost(DataSet: TDataSet);
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


procedure TFCCusto.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqCCus, FPesqCCus);
   FPesqCCus.ShowModal ;
   FPesqCCus.Release ;
   if gs_cust <> '' then begin
      Q_CCUS.Close;
      Q_CCUS.Open;
      Q_CCUS.locate('FIL_CODI',gs_cust,[]);
      gs_cust := '' ;
   end;
end;

procedure TFCCusto.Q_CCUSCNPJValidate(Sender: TField);
begin
  if Funcoes.CGC(Q_CCUSCNPJ.Value) = False then
  begin
      MessageBox(Self.Handle, 'CNPJ inválido!', 'Erro', MB_OK);
  end;
end;

end.

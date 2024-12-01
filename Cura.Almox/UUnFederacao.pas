unit UUnFederacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, Wwdotdot, Wwdbcomb, wwDialog, wwidlg;

type
  TFUnFederacao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_REFR: TSpeedButton;
    Bt_Incluir: TSpeedButton;
    bt_gravar: TSpeedButton;
    Bt_cancelar: TSpeedButton;
    Bt_excluir: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    wwDBGrid1: TwwDBGrid;
    BDE_UNI_DESC: TwwDBEdit;
    DBE_UNI_CODI: TwwDBEdit;
    Panel3: TPanel;
    LBL_STATUS: TLabel;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    SrchDlg_UF: TwwSearchDialog;
    SpeedButton2: TSpeedButton;
    Q_UFED: TwwQuery;
    DS_UFED: TwwDataSource;
    UPD_UFED: TUpdateSQL;
    Q_UFEDUFE_CODI: TStringField;
    Q_UFEDUFE_DESC: TStringField;
    Q_UFEDUFE_AICM: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure Bt_cancelarClick(Sender: TObject);
    procedure Bt_excluirClick(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure DS_UFEDDataChange(Sender: TObject;Field: TField);
    procedure DS_UFEDStateChange(Sender: TObject);
    procedure Q_UFEDAfterDelete(DataSet: TDataSet);
    procedure Q_UFEDAfterPost(DataSet: TDataSet);
    procedure Q_UFEDBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBE_UNI_CODIEnter(Sender: TObject);
    procedure DBE_UNI_CODIExit(Sender: TObject);
    procedure BDE_UNI_DESCExit(Sender: TObject);
    procedure BDE_UNI_DESCEnter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnFederacao: TFUnFederacao;

implementation
uses CPPMENU;//,  URelUniFed;

{$R *.DFM}

procedure TFUnFederacao.SBT_SAIRClick(Sender: TObject);
begin
     Close;
end;

procedure TFUnFederacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DS_UFED.onStateChange := nil ;
   Q_UFED.AfterDelete  :=  nil ;
   Q_UFED.AfterPost    :=  nil ;
   Q_UFED.BeforeInsert :=  nil ;
   DS_UFED.onDataChange := nil ;
   Q_UFED.Close;
   Action := caFree;
end;


procedure TFUnFederacao.DS_UFEDStateChange(Sender: TObject);
begin
   if (Q_UFED.State = dsEdit) or (Q_UFED.State = dsInsert) then
     begin
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
        if Q_UFED.State = dsEdit then
          begin
            LBL_STATUS.Caption := 'ALTERAÇÃO';
          end
        else
          begin
            LBL_STATUS.Caption := 'INCLUSÃO';
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

procedure TFUnFederacao.Q_UFEDAfterDelete(DataSet: TDataSet);
begin
   try
     begin
         FMenu.DATABASE1.ApplyUpdates([Q_UFED]);
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UFED.Close;
   Q_UFED.Open ;
end;

procedure TFUnFederacao.SBT_REFRClick(Sender: TObject);
begin
     Q_UFED.close;
     Q_UFED.Open;
end;

procedure TFUnFederacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;


end;


procedure TFUnFederacao.Q_UFEDAfterPost(DataSet: TDataSet);
var StrChave : string ;
begin
  StrChave := Q_UFEDUFE_CODI.asstring ;
  try
   begin
       FMenu.DATABASE1.ApplyUpdates([Q_UFED]);
   end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
  Q_UFED.Close;
  Q_UFED.Open;
  Q_UFED.locate('ufe_codi',StrChave ,[]) ;
  DBE_UNI_CODI.enabled := false ;
end ;

procedure TFUnFederacao.Q_UFEDBeforeInsert(DataSet: TDataSet);
begin
  DBE_UNI_CODI.enabled := true ;
  DBE_UNI_CODI.setfocus ;
end ;
procedure TFUnFederacao.Bt_IncluirClick(Sender: TObject);
begin
  Q_UFED.insert;
  bt_Excluir.enabled := false ;
  bt_Cancelar.enabled := true ;

end;

procedure TFUnFederacao.Bt_cancelarClick(Sender: TObject);
begin
 Q_UFED.cancel ;
end;

procedure TFUnFederacao.DS_UFEDDataChange(Sender: TObject;
  Field: TField);
begin
  if Q_UFED.eof then begin
     bt_Excluir.enabled := false ;
     bt_Cancelar.enabled := false ;
     Bt_Gravar.enabled := false ;
     Bt_Incluir.enabled := true ;
  end else begin
     bt_Excluir.enabled := true  ;
     bt_Cancelar.enabled := false ;
     Bt_Gravar.enabled := false ;
     Bt_Incluir.enabled := true ;
  end ;
  if Q_UFED.state = dsedit  then begin
      bt_Excluir.enabled := true  ;
      bt_Cancelar.enabled := true  ;
      bt_Incluir.enabled := false ;
      Bt_Gravar.enabled := true ;
  end ;
  if Q_UFED.state = dsinsert then begin
      bt_Excluir.enabled := false   ;
      bt_Cancelar.enabled := true  ;
      bt_Incluir.enabled := false ;
      Bt_Gravar.enabled := true ;
  end ;


end;

procedure TFUnFederacao.Bt_excluirClick(Sender: TObject);
begin
 Q_UFED.delete;
end;

procedure TFUnFederacao.bt_gravarClick(Sender: TObject);
begin
  Q_UFED.post ;
  if Q_UFED.eof then begin
     bt_Excluir.enabled := false ;
     bt_Cancelar.enabled := false ;
  end else begin
     bt_Excluir.enabled := true ;
     bt_Cancelar.enabled := false ;
  end ;

end;

procedure TFUnFederacao.FormShow(Sender: TObject);
begin
        DS_UFED.onStateChange := DS_UFEDStateChange ;
        Q_UFED.AfterDelete  :=  Q_UFEDAfterDelete ;
        Q_UFED.AfterPost    :=  Q_UFEDAfterPost;
        Q_UFED.BeforeInsert :=  Q_UFEDBeforeInsert ;
        DS_UFED.onDataChange := DS_UFEDDataChange ;
        Q_UFED.Open;

end;

procedure TFUnFederacao.DBE_UNI_CODIEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;    //
end;

procedure TFUnFederacao.DBE_UNI_CODIExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := clWindow ;
end;

procedure TFUnFederacao.BDE_UNI_DESCExit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFUnFederacao.BDE_UNI_DESCEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUnFederacao.wwDBEdit1Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUnFederacao.wwDBEdit1Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClWindow ;
end;

procedure TFUnFederacao.SpeedButton1Click(Sender: TObject);
begin
 // Application.CreateForm(TFRelUniFed,FRelUniFed);
 // FRelUniFed.UNIFED.Preview;
 // FRelUniFed.Close;
end;

procedure TFUnFederacao.SpeedButton2Click(Sender: TObject);
begin
SrchDlg_UF.EXECUTE;
end;

end.

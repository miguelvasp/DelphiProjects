unit CPPLAYC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFLCheques = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_LAYO: TwwQuery;
    DS_LAYO: TwwDataSource;
    UPD_LAYO: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    DBE_LAY_CODI: TwwDBEdit;
    Label2: TLabel;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    DBE_LAY_DESC: TwwDBEdit;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBE_LAY_VALL: TwwDBEdit;
    DBE_LAY_VALC: TwwDBEdit;
    DBE_LAY_EXL1: TwwDBEdit;
    DBE_LAY_EXC1: TwwDBEdit;
    DBE_LAY_EXL2: TwwDBEdit;
    DBE_LAY_EXC2: TwwDBEdit;
    DBE_LAY_FAVL: TwwDBEdit;
    DBE_LAY_FAVC: TwwDBEdit;
    DBE_LAY_LOCL: TwwDBEdit;
    DBE_LAY_LOCC: TwwDBEdit;
    DBE_LAY_DIAL: TwwDBEdit;
    DBE_LAY_DIAC: TwwDBEdit;
    DBE_LAY_MESL: TwwDBEdit;
    DBE_LAY_MESC: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBE_LAY_ANOL: TwwDBEdit;
    Label15: TLabel;
    DBE_LAY_LINH: TwwDBEdit;
    DBE_LAY_ANOC: TwwDBEdit;
    Q_LAYOLAY_CODI: TStringField;
    Q_LAYOLAY_DESC: TStringField;
    Q_LAYOLAY_VALLIN: TIntegerField;
    Q_LAYOLAY_VALCOL: TIntegerField;
    Q_LAYOLAY_EXTLIN1: TIntegerField;
    Q_LAYOLAY_EXTCOL1: TIntegerField;
    Q_LAYOLAY_EXTLIN2: TIntegerField;
    Q_LAYOLAY_EXTCOL2: TIntegerField;
    Q_LAYOLAY_FAVLIN: TIntegerField;
    Q_LAYOLAY_FAVCOL: TIntegerField;
    Q_LAYOLAY_LOCLIN: TIntegerField;
    Q_LAYOLAY_LOCCOL: TIntegerField;
    Q_LAYOLAY_DIALIN: TIntegerField;
    Q_LAYOLAY_DIACOL: TIntegerField;
    Q_LAYOLAY_MESLIN: TIntegerField;
    Q_LAYOLAY_MESCOL: TIntegerField;
    Q_LAYOLAY_ANOLIN: TIntegerField;
    Q_LAYOLAY_ANOCOL: TIntegerField;
    Q_LAYOLAY_LINHAS: TIntegerField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_LAYOAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_LAYOStateChange(Sender: TObject);
    procedure Q_LAYOAfterDelete(DataSet: TDataSet);
    procedure Q_LAYOBeforeDelete(DataSet: TDataSet);
    procedure Q_LAYOAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_LAYOBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLCheques: TFLCheques;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TFLCheques.SBT_SAIRClick(Sender: TObject);
begin
  FLCheques.Close;
end;

procedure TFLCheques.Q_LAYOAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_LAYO]);
  end;
  except
    begin
      Q_LAYO.RevertRecord;
    end;
  end;
  DBE_LAY_CODI.Enabled := false;
  Q_LAYO.Close;
  Q_LAYO.Open;
end;

procedure TFLCheques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_LAYO.Close;
  Action := caFree;
end;

procedure TFLCheques.FormShow(Sender: TObject);
begin
  Q_LAYO.Open;
end;

procedure TFLCheques.DS_LAYOStateChange(Sender: TObject);
begin
  if (Q_LAYO.State = dsEdit) or (Q_LAYO.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_LAYO.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_LAY_CODI.Enabled := true;
      DBE_LAY_CODI.SetFocus;
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

procedure TFLCheques.Q_LAYOAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_LAYO]);
    end;
  except
    begin
       Q_LAYO.RevertRecord;
    end;
  end;
end;

procedure TFLCheques.Q_LAYOBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFLCheques.Q_LAYOAfterCancel(DataSet: TDataSet);
begin
  DBE_LAY_CODI.Enabled := false;
end;

procedure TFLCheques.SBT_REFRClick(Sender: TObject);
begin
  Q_LAYO.Close;
  Q_LAYO.Open;
end;

procedure TFLCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFLCheques.Q_LAYOBeforePost(DataSet: TDataSet);
begin
  if DBE_LAY_CODI.text = '' then begin
     MessageDlg('Código em Branco !',mterror, [mbOk], 0);
     DBE_LAY_CODI.setfocus ;
     abort ;
   end;
  if DBE_LAY_DESC.text = '' then begin
     MessageDlg('Banco em Branco !',mterror, [mbOk], 0);
     DBE_LAY_DESC.setfocus ;
     abort ;
   end;
  if DBE_LAY_VALL.text = '' then begin
     MessageDlg('Valor(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_VALL.setfocus ;
     abort ;
   end;
  if DBE_LAY_VALC.text = '' then begin
     MessageDlg('Valor(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_VALC.setfocus ;
     abort ;
   end;
  if DBE_LAY_EXL1.text = '' then begin
     MessageDlg('Extenso(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_EXL1.setfocus ;
     abort ;
   end;
  if DBE_LAY_EXC1.text = '' then begin
     MessageDlg('Extenso(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_EXC1.setfocus ;
     abort ;
   end;
  if DBE_LAY_EXL2.text = '' then begin
     MessageDlg('Extenso Continuação(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_EXL2.setfocus ;
     abort ;
   end;
  if DBE_LAY_EXC2.text = '' then begin
     MessageDlg('Extenso Continuação(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_EXC2.setfocus ;
     abort ;
   end;
  if DBE_LAY_FAVL.text = '' then begin
     MessageDlg('Favorecido(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_FAVL.setfocus ;
     abort ;
   end;
  if DBE_LAY_FAVC.text = '' then begin
     MessageDlg('Favorecido(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_FAVC.setfocus ;
     abort ;
   end;
  if DBE_LAY_LOCL.text = '' then begin
     MessageDlg('Local(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_LOCL.setfocus ;
     abort ;
   end;
  if DBE_LAY_LOCC.text = '' then begin
     MessageDlg('Local(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_LOCC.setfocus ;
     abort ;
   end;
  if DBE_LAY_DIAL.text = '' then begin
     MessageDlg('Dia(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_DIAL.setfocus ;
     abort ;
   end;
  if DBE_LAY_DIAC.text = '' then begin
     MessageDlg('Dia(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_DIAC.setfocus ;
     abort ;
   end;
  if DBE_LAY_MESL.text = '' then begin
     MessageDlg('Mês(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_MESL.setfocus ;
     abort ;
   end;
  if DBE_LAY_MESC.text = '' then begin
     MessageDlg('Mês(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_MESC.setfocus ;
     abort ;
   end;
  if DBE_LAY_ANOL.text = '' then begin
     MessageDlg('Ano(linha) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_ANOL.setfocus ;
     abort ;
   end;
  if DBE_LAY_ANOC.text = '' then begin
     MessageDlg('Ano(coluna) em Branco !',mterror, [mbOk], 0);
     DBE_LAY_ANOC.setfocus ;
     abort ;
   end;
  if DBE_LAY_LINH.text = '' then begin
     MessageDlg('Nr.de Linhas em Branco !',mterror, [mbOk], 0);
     DBE_LAY_LINH.setfocus ;
     abort ;
   end;
end;

procedure TFLCheques.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.

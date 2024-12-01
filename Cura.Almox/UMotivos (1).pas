unit UMotivos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwdatsrc, Wwquery, StdCtrls, Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid, DBCtrls, Buttons, ExtCtrls, wwDialog, wwidlg,
  Wwdotdot, Wwdbcomb, wwSpeedButton, wwDBNavigator, wwclearpanel, ImgList;

type
  TFMotivos = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    Fonte: TDBNavigator;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    DBE_MOT_DESC: TwwDBEdit;
    Panel3: TPanel;
    LBL_STATUS: TLabel;
    PESQ_MOT: TwwSearchDialog;
    Q_PSQMOT: TwwQuery;
    Q_MOTI: TwwQuery;
    DS_MOTI: TwwDataSource;
    UPD_MOTI: TUpdateSQL;
    Q_MOTIMOT_ID: TAutoIncField;
    Q_MOTIMOT_DESC: TStringField;
    Q_PSQMOTMOT_ID: TAutoIncField;
    Q_PSQMOTMOT_DESC: TStringField;
    Q_MOTITP_MOT: TStringField;
    cboTP: TwwDBComboBox;
    Label2: TLabel;
    cboTipo: TwwDBComboBox;
    DBText3: TDBText;
    Q_AUX: TwwQuery;
    ImageList1: TImageList;
    wwDBNavigator1: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    procedure SBT_PESClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_MOTBeforeDelete(DataSet: TDataSet);
    procedure DS_MOTIStateChange(Sender: TObject);
    procedure Q_MOTIAfterDelete(DataSet: TDataSet);
    procedure Q_MOTIAfterPost(DataSet: TDataSet);
    procedure DBE_MOT_DESCEnter(Sender: TObject);
    procedure DBE_MOT_DESCExit(Sender: TObject);
    procedure Q_MOTIBeforeDelete(DataSet: TDataSet);
    procedure Q_MOTIBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cboTPEnter(Sender: TObject);
    procedure cboTPExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_MOTIAfterScroll(DataSet: TDataSet);
    procedure fonteEditClick(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure fonteInsertClick(Sender: TObject);
    procedure fonteFirstClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMotivos: TFMotivos;

implementation

uses Unt_Splash1, UMenu, URelMot;

{$R *.DFM}

procedure TFMotivos.SBT_PESClick(Sender: TObject);
begin
        Q_PSQMOT.Open;
        PESQ_MOT.Execute ;
        Q_MOTI.Locate('MOT_ID',Q_PSQMOTMOT_ID.AsString,[]);
        Q_PSQMOT.Close ;
end;

procedure TFMotivos.SBT_SAIRClick(Sender: TObject);
begin
        FMotivos.Close;
end;

procedure TFMotivos.FormPaint(Sender: TObject);
begin
        If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 1;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     Q_MOTI.Open;

                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
             If Self.Tag = 2 Then Self.Close;
        End;
end;

procedure TFMotivos.Q_MOTBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFMotivos.DS_MOTIStateChange(Sender: TObject);
begin
      IF (Q_MOTI.State = dsEdit) or (Q_MOTI.State = dsInsert) THEN
                begin
                       if Q_MOTI.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';
                                DBE_MOT_DESC.visible := true ;
                                DBE_MOT_DESC.SetFocus;
                              
                        end;
                                LBL_STATUS.Visible := true;
     end
   ELSE
     begin
       LBL_STATUS.Visible := false;
     end;
end;

procedure TFMotivos.Q_MOTIAfterDelete(DataSet: TDataSet);
var ID:String;
begin
        ID:= Q_MOTIMOT_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MOTI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
        If ID <> '' then Begin
       Q_MOTI.Close;
       Q_MOTI.Open;
       Q_MOTI.locate('MOT_DESC',ID,[loCaseInsensitive]);
        end;
end;

procedure TFMotivos.Q_MOTIAfterPost(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_MOTIMOT_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MOTI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


   Q_MOTI.Close;
   Q_MOTI.Open;
   Q_MOTI.locate('MOT_DESC',ID,[loCaseInsensitive]);



   DBE_MOT_DESC.visible := false ;
   DBText3.visible := true ;
end;

procedure TFMotivos.DBE_MOT_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMotivos.DBE_MOT_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMotivos.Q_MOTIBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFMotivos.Q_MOTIBeforePost(DataSet: TDataSet);
begin
         If DBE_MOT_DESC.Text = '' then Begin
                MessageDlg('Descrição é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                DBE_MOT_DESC.SetFocus;
                Abort;
        End;

        IF  (Q_MOTI.State = dsInsert) THEN  begin
             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select count(*) as xvalor from  MOTIVOS ') ;
             Q_AUX.Sql.Add(' where MOT_DESC LIKE ' + '''' + Q_MOTIMOT_DESC.asstring + '''');
             Q_AUX.open ;

             If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin

                      MessageDlg('Motivo já cadastrado!',mtWarning,[mbok],0);
                      DBE_MOT_DESC.SetFocus;
                      DBE_MOT_DESC.text := '' ;
                      Abort;
             end ;
        end ;
end;

procedure TFMotivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFMotivos.cboTPEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFMotivos.cboTPExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFMotivos.SpeedButton2Click(Sender: TObject);
begin
  Q_MOTI.Edit ;

  
end;

procedure TFMotivos.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin

       If button in [nbInsert] then  begin
            Q_MOTI.insert ;

            
        END;


       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
            
       end ;
end;

procedure TFMotivos.Q_MOTIAfterScroll(DataSet: TDataSet);
begin
  if Q_MOTI.State in [dsEdit, dsInsert] then
  else
  begin
    DBE_MOT_DESC.visible := false ;
    DBText3.visible := true ;
  end;
end;

procedure TFMotivos.fonteEditClick(Sender: TObject);
begin
DBE_MOT_DESC.visible := true ;
  DBText3.visible := false ;
end;

procedure TFMotivos.wwDBNavigator1ButtonClick(Sender: TObject);
begin
        Application.CreateForm(TFRelMotivos,FRelMotivos);
        FRelMotivos.QR_MOTI.Preview;
        FRelMotivos.Close;
end;

procedure TFMotivos.fonteInsertClick(Sender: TObject);
begin
DBE_MOT_DESC.visible := true ;
            DBText3.visible := false ;

            DBE_MOT_DESC.Text := '';
            DBE_MOT_DESC.SetFocus;
end;

procedure TFMotivos.fonteFirstClick(Sender: TObject);
begin
DBE_MOT_DESC.visible := false ;
            DBText3.visible := true ;
end;

end.

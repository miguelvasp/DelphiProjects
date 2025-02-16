unit UUnidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Wwdotdot, Wwdbcomb, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, DBTables, Wwdatsrc, Wwquery, Grids, Wwdbigrd, Wwdbgrid,
  wwDialog, wwidlg, wwSpeedButton, wwDBNavigator, wwclearpanel, ImgList;

type
  TFUnidades = class(TForm)
    Panel1: TPanel;
    Fonte: TDBNavigator;
    Panel2: TPanel;
    Label2: TLabel;
    DBE_UNI_SIGLA: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    Q_UNI: TwwQuery;
    DS_UNI: TwwDataSource;
    UPD_UNI: TUpdateSQL;
    PESQ_UNI: TwwSearchDialog;
    Q_PSQUNI: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    Label3: TLabel;
    DBE_UNI_DESC: TwwDBEdit;
    Q_PSQUNIUNI_ID: TAutoIncField;
    Q_PSQUNIUNI_SIGLA: TStringField;
    Q_PSQUNIUNI_DESC: TStringField;
    Panel6: TPanel;
    LBL_STATUS: TLabel;
    Q_AUX: TwwQuery;
    DBText3: TDBText;
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
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_UNIAfterDelete(DataSet: TDataSet);
    procedure Q_UNIAfterPost(DataSet: TDataSet);
    procedure SBT_PESClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_UNI_SIGLAEnter(Sender: TObject);
    procedure DBE_UNI_SIGLAExit(Sender: TObject);
    procedure DS_UNIStateChange(Sender: TObject);
    procedure Q_UNIBeforeDelete(DataSet: TDataSet);
    procedure Q_UNIBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBE_UNI_DESCEnter(Sender: TObject);
    procedure DBE_UNI_DESCExit(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_UNINewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Q_UNIAfterScroll(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure fonteInsertClick(Sender: TObject);
    procedure fonteFirstClick(Sender: TObject);
    procedure fonteEditClick(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnidades: TFUnidades;
  ID: String;

implementation

uses Unt_Splash1, UMenu, URelUni;

{$R *.DFM}

procedure TFUnidades.SBT_SAIRClick(Sender: TObject);
begin
        FUnidades.Close;
end;

procedure TFUnidades.Q_UNIAfterDelete(DataSet: TDataSet);
begin
   ID:= Q_UNIUNI_SIGLA.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_UNI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_UNI.Close;
       Q_UNI.Open;
       Q_UNI.locate('UNI_SIGLA',ID,[loCaseInsensitive]);
   end;
end;

procedure TFUnidades.Q_UNIAfterPost(DataSet: TDataSet);
begin
   ID:= Q_UNIUNI_SIGLA.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_UNI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


   Q_UNI.Close;
   Q_UNI.Open;
   Q_UNI.locate('UNI_SIGLA',ID,[loCaseInsensitive]);


   DBE_UNI_SIGLA.visible := false ;
   DBText3.visible := true ;
end;

procedure TFUnidades.SBT_PESClick(Sender: TObject);
begin
       Q_PSQUNI.Open;
       PESQ_UNI.Execute ;
       Q_UNI.Locate('UNI_ID',Q_PSQUNIUNI_ID.AsString,[]);
       Q_PSQUNI.Close ;
end;

procedure TFUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFUnidades.DBE_UNI_SIGLAEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;

end;

procedure TFUnidades.DBE_UNI_SIGLAExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFUnidades.DS_UNIStateChange(Sender: TObject);
begin
        IF (Q_UNI.State = dsEdit) or (Q_UNI.State = dsInsert) THEN
                begin
                        if Q_UNI.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERA��O';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUS�O';

                                DBE_UNI_SIGLA.Visible := true ;
                                DBE_UNI_SIGLA.SetFocus;
                        end;
                                LBL_STATUS.Visible := true;
     end
   ELSE
     begin
        LBL_STATUS.Visible := false;
     end;
end;

procedure TFUnidades.Q_UNIBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclus�o ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFUnidades.Q_UNIBeforePost(DataSet: TDataSet);
begin
      If DBE_UNI_SIGLA.Text = '' then Begin
              MessageDlg('Sigla � Campo de preenchimento obrigat�rio',
              mtWarning,[mbok],0);
              DBE_UNI_SIGLA.SetFocus;
              Abort;
      End;

      IF  (Q_UNI.State = dsInsert) THEN  begin
           Q_AUX.close;
           Q_AUX.Sql.Clear;
           Q_AUX.Sql.Add('Select count(*) as xvalor from  UNIDADES ') ;
           Q_AUX.Sql.Add(' where UNI_SIGLA =' + '''' + DBE_UNI_SIGLA.text + '''');
           Q_AUX.open ;

           If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin
                    MessageDlg('Unidade j� cadastrada !',mtWarning,[mbok],0);
                    DBE_UNI_SIGLA.SetFocus;
                    DBE_UNI_SIGLA.text := '' ;
                    Abort;
           end ;
      end ;





end;

procedure TFUnidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_UNI.Close;
        Action := caFree;
end;

procedure TFUnidades.DBE_UNI_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUnidades.DBE_UNI_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFUnidades.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
        If button in [nbInsert] then  begin
            
        END;


       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
            
       end ;


end;

procedure TFUnidades.Q_UNINewRecord(DataSet: TDataSet);
begin
        DBE_UNI_SIGLA.SetFocus;
end;

procedure TFUnidades.FormCreate(Sender: TObject);
begin
        Q_UNI.Open;

end;

procedure TFUnidades.Q_UNIAfterScroll(DataSet: TDataSet);
begin
   if Q_UNI.State in [dsEdit, dsInsert] then
  else begin
       DBE_UNI_SIGLA.visible := false ;
          DBText3.visible := true ;     end;
end;

procedure TFUnidades.SpeedButton2Click(Sender: TObject);
begin
    Q_UNI.Edit ;

    
end;

procedure TFUnidades.fonteInsertClick(Sender: TObject);
begin
DBE_UNI_SIGLA.visible := true ;
            DBText3.visible := false ;

            DBE_UNI_SIGLA.Text := '';
            DBE_UNI_DESC.Text := '';
            DBE_UNI_SIGLA.SetFocus;
end;

procedure TFUnidades.fonteFirstClick(Sender: TObject);
begin
DBE_UNI_SIGLA.visible := false ;
            DBText3.visible := true ;
end;

procedure TFUnidades.fonteEditClick(Sender: TObject);
begin
DBE_UNI_SIGLA.visible := true ;
    DBText3.visible := false ;
end;

procedure TFUnidades.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFRelUnidades,FRelUnidades);
        FRelUnidades.QR_UNI.Preview;
        FRelUnidades.Close;
end;

end.


unit UCCs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwdatsrc, Wwquery, StdCtrls, Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid, DBCtrls, Buttons, ExtCtrls, wwDialog, wwidlg,
  wwSpeedButton, wwDBNavigator, wwclearpanel, ImgList;

type
  TFCCs = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    SBT_REL: TSpeedButton;
    Fontex: TDBNavigator;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    LBL_STATUS: TLabel;
    PESQ_CCs: TwwSearchDialog;
    Q_PSQCCs: TwwQuery;
    Q_CC: TwwQuery;
    DS_CCs: TwwDataSource;
    UPD_CCs: TUpdateSQL;
    Q_CCCC_ID: TAutoIncField;
    Q_CCCC_Desc: TStringField;
    Q_PSQCCsCC_ID: TAutoIncField;
    Q_PSQCCsCC_Desc: TStringField;
    DBE_CC_DESC: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    Q_AUX: TwwQuery;
    DBText3: TDBText;
    ImageList1: TImageList;
    fonte: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    procedure SBT_PESClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_MOTBeforeDelete(DataSet: TDataSet);
    procedure DS_CCsStateChange(Sender: TObject);
    procedure Q_CCAfterDelete(DataSet: TDataSet);
    procedure Q_CCAfterPost(DataSet: TDataSet);
    procedure DBE_CC_DESCEnter(Sender: TObject);
    procedure DBE_CC_DESCExit(Sender: TObject);
    procedure SBT_RELClick(Sender: TObject);
    procedure Q_CCBeforeDelete(DataSet: TDataSet);
    procedure Q_CCBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FontexClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_CCAfterScroll(DataSet: TDataSet);
    procedure Q_CCNewRecord(DataSet: TDataSet);
    procedure fonteInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCCs: TFCCs;

implementation

uses Unt_Splash1, UMenu, URelMot, UMotivos, URelCCs;

{$R *.DFM}

procedure TFCCs.SBT_PESClick(Sender: TObject);
begin
        Q_PSQCCS.Open;
        PESQ_CCS.Execute ;
        Q_CC.Locate('CC_ID',Q_PSQCCSCC_ID.AsString,[]);
        Q_PSQCCS.Close ;             
end;

procedure TFCCs.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFCCs.FormPaint(Sender: TObject);
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
                     Q_CC.Open;

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

procedure TFCCs.Q_MOTBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFCCs.DS_CCsStateChange(Sender: TObject);
begin
      IF (Q_CC.State = dsEdit) or (Q_CC.State = dsInsert) THEN
                begin
                       if Q_CC.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';

                                DBE_CC_DESC.visible := true ;
                                DBE_CC_DESC.SetFocus;
                        end;
                                LBL_STATUS.Visible := true;
     end
   ELSE
     begin
       LBL_STATUS.Visible := false;
     end;
end;

procedure TFCCs.Q_CCAfterDelete(DataSet: TDataSet);
var ID:String;
begin
        ID:= Q_CCCC_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_CC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
        If ID <> '' then Begin
       Q_CC.Close;
       Q_CC.Open;
       Q_CC.locate('CC_DESC',ID,[loCaseInsensitive]);
        end;
end;

procedure TFCCs.Q_CCAfterPost(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_CCCC_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_CC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


   Q_CC.Close;
   Q_CC.Open;
   Q_CC.locate('CC_DESC',ID,[loCaseInsensitive]);


    DBE_CC_DESC.visible := false ;
    DBText3.visible := true ;

end;

procedure TFCCs.DBE_CC_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCCs.DBE_CC_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCCs.SBT_RELClick(Sender: TObject);
begin

        Application.CreateForm(TFRelCCs,FRelCCs);
        FRelCCs.QR_CCs.Preview;
        FRelCCs.Close;

end;

procedure TFCCs.Q_CCBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFCCs.Q_CCBeforePost(DataSet: TDataSet);
begin
         If DBE_CC_DESC.Text = '' then Begin
                MessageDlg('Descrição é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                DBE_CC_DESC.SetFocus;
                Abort;
        End;



       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  CENTRO_CUSTO ') ;
       Q_AUX.Sql.Add(' where CC_Desc LIKE ' + '''' + Q_CCCC_Desc.asstring + '''');
       Q_AUX.open ;

       If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin

                MessageDlg('Centro de Custo já cadastrado!',mtWarning,[mbok],0);
                DBE_cc_DESC.SetFocus;
                DBE_cc_DESC.text := '' ; 
                Abort;
       end ;
end;

procedure TFCCs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_PSQCCS.Close;
        Q_CC.Close;
        Action := CaFree;

end;

procedure TFCCs.SpeedButton1Click(Sender: TObject);
begin
  Q_CC.Edit ;

  DBE_CC_DESC.visible := true ;
  DBText3.visible := false ;
end;

procedure TFCCs.FontexClick(Sender: TObject; Button: TNavigateBtn);
begin
      If button in [nbInsert] then  begin
            Q_CC.insert ;
            
            DBE_CC_DESC.visible := true ;
            DBText3.visible := false ;

            DBE_CC_DESC.Text := '';
            DBE_CC_DESC.SetFocus;
        END;


       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
            DBE_CC_DESC.visible := false ;
            DBText3.visible := true ;
       end ;

end;

procedure TFCCs.Q_CCAfterScroll(DataSet: TDataSet);
begin
  IF  Q_CC.State  IN [dsInsert, dsEdit] then
  
  else
     begin
   DBE_CC_DESC.visible := false ;
   DBText3.visible := true ;
  end
end;

procedure TFCCs.Q_CCNewRecord(DataSet: TDataSet);
begin
  DBE_CC_DESC.Visible := True;
end;

procedure TFCCs.fonteInsertClick(Sender: TObject);
begin
            DBE_CC_DESC.visible := true ;
            DBText3.visible := false ;

            DBE_CC_DESC.Text := '';
            DBE_CC_DESC.SetFocus;
end;

end.

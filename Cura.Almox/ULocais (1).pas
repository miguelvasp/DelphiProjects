unit ULocais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, wwDialog, wwidlg, Wwdatsrc, DBTables, Wwquery, StdCtrls, Mask,
  wwdbedit, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, Buttons, ExtCtrls,
  Wwdotdot, Wwdbcomb, ADODB, wwSpeedButton, wwDBNavigator, wwclearpanel,
  ImgList;

type
  TFLocais = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    Fonte: TDBNavigator;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    DBE_LOC_DESC: TwwDBEdit;
    UPD_LOC: TUpdateSQL;
    Q_LOC: TwwQuery;
    DS_LOC: TwwDataSource;
    PESQ_LOC: TwwSearchDialog;
    Q_PSQLOC: TwwQuery;
    Panel6: TPanel;
    LBL_STATUS: TLabel;
    Q_LOCLocal_ID: TAutoIncField;
    Q_LOCDescricao: TStringField;
    Q_LOCDisponivelSN: TStringField;
    Q_PSQLOCLocal_ID: TAutoIncField;
    Q_PSQLOCDescricao: TStringField;
    Q_PSQLOCDisponivelSN: TStringField;
    DBCB_MAT_CONTROLA: TwwDBComboBox;
    Label2: TLabel;
    DBText3: TDBText;
    Q_AUX: TwwQuery;
    Q_LOCCONSUMO: TStringField;
    rgCentral: TDBRadioGroup;
    rgControlaEstoque: TDBRadioGroup;
    Q_LOCCONTROLA_ESTOQUE: TStringField;
    qrVErifica: TADOQuery;
    qrVErificalocal_id: TAutoIncField;
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
    procedure Q_LOCAfterPost(DataSet: TDataSet);
    procedure Q_LOCAfterDelete(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure SBT_PESClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure DBE_LOC_DESCExit(Sender: TObject);
    procedure DBE_LOC_DESCEnter(Sender: TObject);
    procedure DS_LOCStateChange(Sender: TObject);
    procedure Q_LOCBeforeDelete(DataSet: TDataSet);
    procedure Q_LOCBeforePost(DataSet: TDataSet);
    procedure Q_LOCNewRecord(DataSet: TDataSet);
    procedure DBCB_MAT_CONTROLAEnter(Sender: TObject);
    procedure DBCB_MAT_CONTROLAExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_LOCAfterScroll(DataSet: TDataSet);
    procedure rgCentralChange(Sender: TObject);
    procedure fonteEditClick(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure fonteCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocais: TFLocais;

implementation

uses UMenu, Unt_Splash1, URelLoc;

{$R *.DFM}

procedure TFLocais.Q_LOCAfterPost(DataSet: TDataSet);
var ID: String;
begin
   ID := Q_LOCDescricao.asstring ;
        try
                FMenu.Database1.ApplyUpdates([Q_LOC])
        except
                On E:EdbEngineError do
                begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
                end;
        end;
        Q_LOC.close ;
        Q_LOC.Open ;
        Q_LOC.locate('DESCRICAO',ID,[]);


         DBE_LOC_DESC.visible := false ;
         DBText3.visible := true ;


         FMenu.qrLocais.CLOSE;
         FMenu.qrLocais.Open;

end;
procedure TFLocais.Q_LOCAfterDelete(DataSet: TDataSet);
begin
    try

   FMenu.DATABASE1.ApplyUpdates([Q_LOC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_LOC.close ;
   Q_LOC.Open ;

end;

procedure TFLocais.FormPaint(Sender: TObject);
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
                     Q_LOC.Open;

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

procedure TFLocais.SBT_PESClick(Sender: TObject);
begin
        Q_PSQLOC.Open;
        PESQ_LOC.Execute;
        Q_LOC.Locate('LOCAL_ID', Q_PSQLOCLOCAL_ID.AsString,[]);
        Q_PSQLOC.Close;
end;

procedure TFLocais.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFLocais.SBT_SAIRClick(Sender: TObject);
begin
        FLocais.Close;
end;

procedure TFLocais.DBE_LOC_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFLocais.DBE_LOC_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFLocais.DS_LOCStateChange(Sender: TObject);
begin
        IF (Q_LOC.State = dsEdit) or (Q_LOC.State = dsInsert) THEN
                begin
                       if Q_LOC.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';

                                DBE_LOC_DESC.visible := true ;
                                DBE_LOC_DESC.SetFocus;
                        end;
                                LBL_STATUS.Visible := true;
     end
   ELSE
     begin
       LBL_STATUS.Visible := false;
     end;
end;

procedure TFLocais.Q_LOCBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFLocais.Q_LOCBeforePost(DataSet: TDataSet);
begin
        If DBE_LOC_DESC.Text = '' then Begin
                MessageDlg('Descrição é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                DBE_LOC_DESC.SetFocus;
                Abort;
        End;

       If rgCentral.ItemIndex < 0 then  Begin
                MessageDlg('Informe se o local é Estoque central ou não.',
                mtWarning,[mbok],0);
                Abort;
        End;


        qrVErifica.close;
        qrVErifica.Open;

        if (qrVErificalocal_id.AsString <> '') and ( qrVErificalocal_id.Value <> Q_LOCLocal_ID.Value) and (Q_LOCCONSUMO.Value = 'S') then
        begin
                MessageDlg('Já existe um local cadastrado como Central',
                mtWarning,[mbok],0);
                Abort;
        end;


        If rgCentral.ItemIndex = 0 then
                Q_LOCCONTROLA_ESTOQUE.Value := 'S';








        IF  (Q_LOC.State = dsInsert) THEN  begin
             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select count(*) as xvalor from  LOCAL ') ;
             Q_AUX.Sql.Add(' where DESCRICAO LIKE ' + '''' + Q_LOCDescricao.asstring + '''');
             Q_AUX.open ;

             If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin

                      MessageDlg('Local já cadastrado!',mtWarning,[mbok],0);
                      DBE_LOC_DESC.SetFocus;
                      DBE_LOC_DESC.text := '' ;
                      Abort;
             end ;
        end ;
end;

procedure TFLocais.Q_LOCNewRecord(DataSet: TDataSet);
begin
        IF Q_LOCDisponivelSN.AsString = '' THEN
           Q_LOCDisponivelSN.AsString:= 'N';
end;

procedure TFLocais.DBCB_MAT_CONTROLAEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFLocais.DBCB_MAT_CONTROLAExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFLocais.SpeedButton2Click(Sender: TObject);
begin
  Q_LOC.Edit ;

  
end;

procedure TFLocais.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
       If button in [nbInsert] then  begin
            Q_LOC.insert ;

            DBE_LOC_DESC.visible := true ;
            DBText3.visible := false ;

            DBE_LOC_DESC.Text := '';
            DBE_LOC_DESC.SetFocus;
        END;


       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
            DBE_LOC_DESC.visible := false ;
            DBText3.visible := true ;
       end ;
end;

procedure TFLocais.Q_LOCAfterScroll(DataSet: TDataSet);
begin
  if Q_LOC.State in [dsinsert, dsedit] then
  else
  begin
    DBE_LOC_DESC.visible := false ;
    DBText3.visible := true ;
  end;
end;

procedure TFLocais.rgCentralChange(Sender: TObject);
begin
  if rgCentral.ItemIndex = 0 then
  begin
       rgControlaEstoque.ItemIndex := 0;
  end;
end;

procedure TFLocais.fonteEditClick(Sender: TObject);
begin
DBE_LOC_DESC.visible := true ;
  DBText3.visible := false ;
end;

procedure TFLocais.wwDBNavigator1ButtonClick(Sender: TObject);
begin
        Application.CreateForm(TFRelLocais,FRelLocais);
        FRelLocais.QR_LOC.Preview;
        FRelLocais.Close;
end;

procedure TFLocais.fonteCancelClick(Sender: TObject);
begin
DBE_LOC_DESC.visible := false ;
    DBText3.visible := true ;
end;

end.

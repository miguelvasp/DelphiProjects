unit UCondPagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask,
  wwdbedit, ComCtrls, Tabnotbk, Buttons, ExtCtrls, DBTables, Db, Wwdatsrc,
  Wwquery, wwDialog, wwidlg, ImgList, wwSpeedButton, wwDBNavigator,
  wwclearpanel, ADODB, wwdblook;

type
  TFCondPagto = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    SBT_REL: TSpeedButton;
    Fontex: TDBNavigator;
    TabbedNotebook1: TTabbedNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBE_COND_DESC: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    DBE_COD_NUMPARC: TwwDBEdit;
    DBCB_COND_FORA: TwwDBComboBox;
    Panel3: TPanel;
    wwDBGrid2: TwwDBGrid;
    Label4: TLabel;
    Q_COND: TwwQuery;
    Q_CONDCOND_PGTO_ID: TAutoIncField;
    Q_CONDDESCRICAO: TStringField;
    Q_CONDNUM_PARCELAS: TFloatField;
    Q_CONDPAGAMENTO: TStringField;
    Q_CONDFORA: TStringField;
    DS_COND: TwwDataSource;
    Q_CONDI: TwwQuery;
    Q_CONDIINTERVALO_ID: TAutoIncField;
    Q_CONDICOND_PGTO_ID: TIntegerField;
    Q_CONDIPERCENTUAL: TFloatField;
    Q_CONDINUM_DIAS: TFloatField;
    DS_CONDI: TwwDataSource;
    UPD_COND: TUpdateSQL;
    UPD_CONDI: TUpdateSQL;
    Panel4: TPanel;
    LBL_STATUS: TLabel;
    PESQ_COND: TwwSearchDialog;
    Q_PSQCOND: TwwQuery;
    Q_PSQCONDCOND_PGTO_ID: TAutoIncField;
    Q_PSQCONDDESCRICAO: TStringField;
    Q_PSQCONDNUM_PARCELAS: TFloatField;
    Q_PSQCONDPAGAMENTO: TStringField;
    Q_PSQCONDFORA: TStringField;
    PESQ_CONDI: TwwSearchDialog;
    Q_PSQCONDI: TwwQuery;
    Q_PSQCONDIINTERVALO_ID: TAutoIncField;
    Q_PSQCONDICOND_PGTO_ID: TIntegerField;
    Q_PSQCONDIPERCENTUAL: TFloatField;
    Q_PSQCONDINUM_DIAS: TFloatField;
    DBText3: TDBText;
    Q_AUX: TwwQuery;
    DBText1: TDBText;
    dsMyNavPanel: TDataSource;
    ImageList1: TImageList;
    fonte: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    qrBionexo: TADOQuery;
    qrBionexopgtoBio_id: TIntegerField;
    qrBionexopgtoBio_desc: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Q_CONDpgtoBio_id: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure Q_CONDAfterPost(DataSet: TDataSet);
    procedure Q_CONDAfterDelete(DataSet: TDataSet);
    procedure Q_CONDIAfterDelete(DataSet: TDataSet);
    procedure Q_CONDIAfterPost(DataSet: TDataSet);
    procedure DS_CONDStateChange(Sender: TObject);
    procedure Q_CONDINewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure DS_CONDIStateChange(Sender: TObject);
    procedure DBE_COND_DESCEnter(Sender: TObject);
    procedure DBE_COD_NUMPARCEnter(Sender: TObject);
    procedure DBE_COND_DESCExit(Sender: TObject);
    procedure DBE_COD_NUMPARCExit(Sender: TObject);
    procedure DBCB_COND_FORAEnter(Sender: TObject);
    procedure DBCB_COND_FORAExit(Sender: TObject);
    procedure SBT_PESClick(Sender: TObject);
    procedure SBT_RELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_CONDFORAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Q_CONDBeforePost(DataSet: TDataSet);
    procedure Q_CONDAfterScroll(DataSet: TDataSet);
    procedure FontexClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure Q_CONDNewRecord(DataSet: TDataSet);
    procedure fonteEditClick(Sender: TObject);
    procedure fontePostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCondPagto: TFCondPagto;

implementation

uses Unt_Splash1, UMenu, URelCondPagto, URelCondPagtoIn;

{$R *.DFM}

procedure TFCondPagto.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFCondPagto.FormPaint(Sender: TObject);
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
                     Q_COND.Open;
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

procedure TFCondPagto.Q_CONDAfterPost(DataSet: TDataSet);
var DESCRICAO : string ;
begin
        DESCRICAO := Q_CONDDESCRICAO.asstring ;
        try
                FMenu.Database1.ApplyUpdates([Q_COND])
        except
                On E:EdbEngineError do
                begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
                end;
        end;
        Q_COND.close ;
        Q_COND.Open ;
        Q_COND.locate('Descricao',DESCRICAO,[]);


         DBE_COND_DESC.visible := false ;
         DBText3.visible := true ;

end;

procedure TFCondPagto.Q_CONDAfterDelete(DataSet: TDataSet);
Var DESCRICAO: String;
begin
        DESCRICAO := Q_CONDDescricao.asstring ;
        try
                FMenu.DataBase1.ApplyUpdates([Q_COND])
        except
                On E:EdbEngineError do
                begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
                end;
        end;
        Q_COND.close ;
        Q_COND.Open ;
        Q_COND.locate('Descricao',DESCRICAO,[]);
end;

procedure TFCondPagto.Q_CONDIAfterDelete(DataSet: TDataSet);
Var StrNOME : string ;
    StrNUMDIA : string ;
begin
        StrNOME := Q_CONDCOND_PGTO_ID.asstring;
        StrNUMDIA  := Q_CONDINUM_DIAS.asstring;
        try
                FMenu.DataBase1.ApplyUpdates([Q_CONDI])
        except
                On E:EdbEngineError do
                begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
                end;
        end;
        Q_CONDI.close ;
        Q_CONDI.Open ;
        Q_CONDI.locate('COND_PGTO_ID;NUM_DIAS',vararrayof([StrNOME,StrNUMDIA]),[]);
end;

procedure TFCondPagto.Q_CONDIAfterPost(DataSet: TDataSet);
Var StrNOME : string ;
    StrNUMDIA : string ;
begin
        StrNOME := Q_CONDCOND_PGTO_ID.asstring;
        StrNUMDIA  := Q_CONDINUM_DIAS.asstring;
        try
                FMenu.DataBase1.ApplyUpdates([Q_CONDI])
        except
                On E:EdbEngineError do
                begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
                end;
        end;
        Q_CONDI.close ;
        Q_CONDI.Open ;
        Q_CONDI.locate('COND_PGTO_ID;NUM_DIAS',vararrayof([StrNOME,StrNUMDIA]),[]);
end;

procedure TFCondPagto.DS_CONDStateChange(Sender: TObject);
begin
        IF (Q_COND.State = dsEdit) or (Q_COND.State = dsInsert) THEN
                begin
                        if Q_COND.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERA��O';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUS�O';
                                DBE_COND_DESC.visible := true ;
                                DBE_COND_DESC.SetFocus;
                        end;
                                LBL_STATUS.Visible := true;
                end
        ELSE
        begin
                LBL_STATUS.Visible := false;
        end;
end;

procedure TFCondPagto.Q_CONDINewRecord(DataSet: TDataSet);
begin
        Q_CONDICOND_PGTO_ID.asstring := Q_CONDCOND_PGTO_ID.asstring ;
end;

procedure TFCondPagto.FormCreate(Sender: TObject);
begin

        TabbedNotebook1.pageindex := 0;
        dsMyNavPanel.DataSet := DS_COND.DataSet;

        qrBionexo.Open;
end;

procedure TFCondPagto.TabbedNotebook1Click(Sender: TObject);
begin
        If (TabbedNotebook1.PageIndex =1) then
        BEGIN
                dsMyNavPanel.DataSet := DS_CONDI.DataSet;
                Fonte.Datasource := DS_CONDI;
               // SBT_PES.Enabled :=False;
                Q_CONDI.Open;
                Q_CONDI.SQL.clear;
                Q_CONDI.SQL.Add('SELECT * FROM CONDICAO_PAGTO_INTERVALO' ) ;
                Q_CONDI.SQL.Add(' where COND_PGTO_ID = ' + '''' + Q_CONDCOND_PGTO_ID.asstring + '''' );
                Q_CONDI.Open;

                //SpeedButton2.enabled := false ;
        end ;

        If (TabbedNotebook1.PageIndex =0) then
        begin
        dsMyNavPanel.DataSet :=  DS_COND.DataSet;
        Fonte.DataSource := DS_COND;
       // SBT_PES.Enabled := True;
        //SpeedButton2.enabled := true ;
        end;



end;

procedure TFCondPagto.SBT_SAIRClick(Sender: TObject);
begin
        FCondPagto.Close;
end;

procedure TFCondPagto.DS_CONDIStateChange(Sender: TObject);
begin
        IF (Q_CONDI.State = dsEdit) or (Q_CONDI.State = dsInsert) THEN
                begin
                        if Q_CONDI.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERA��O';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUS�O';
                                wwDBGrid2.SetFocus;
                        end;
                                LBL_STATUS.Visible := true;
     end
   ELSE
     begin
        LBL_STATUS.Visible := false;
     END;
end;

procedure TFCondPagto.DBE_COND_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCondPagto.DBE_COD_NUMPARCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFCondPagto.DBE_COND_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCondPagto.DBE_COD_NUMPARCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFCondPagto.DBCB_COND_FORAEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFCondPagto.DBCB_COND_FORAExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFCondPagto.SBT_PESClick(Sender: TObject);
begin
       If (TabbedNotebook1.PageIndex =0) then
       begin
        Q_PSQCOND.Open;
        PESQ_COND.Execute ;
        Q_COND.Locate('COND_PGTO_ID',Q_PSQCONDCOND_PGTO_ID.AsString,[]);
        Q_PSQCOND.Close;
       end;
       {If (TabbedNotebook1.PageIndex =1) then
       begin
        Q_PSQCONDI.Open;
        PESQ_CONDI.Execute ;
        Q_CONDI.Locate('COND_PGTO_ID',Q_PSQCONDICOND_PGTO_ID.asstring,[]);
        Q_CONDI.Close;
       end;}

end;

procedure TFCondPagto.SBT_RELClick(Sender: TObject);
begin
        If (TabbedNotebook1.PageIndex = 0) then
        begin
                {Application.CreateForm(TFRelCondPagto,FRelCondPagto);
                FRelCondPagto.QR_CONDPAGTO.Preview;
                FRelCondPagto.Close;}
                Application.CreateForm(TFRelCondPagto,FRelCondPagto);
                FRelCondPagto.QR_CONDPAGTO.Preview;
                FRelCondPagto.Close;
        end;
     {   If (TabbedNotebook1.PageIndex = 1) then
        begin
        Application.CreateForm(TFRelCondPagtoI,FRelCondPagtoI);
        FRelCondPagtoI.QR_CONDPAGTOI.Preview;
        FRelCondPagtoI.Close;
        end;
        }
end;

procedure TFCondPagto.FormClose(Sender: TObject; var Action: TCloseAction);
var Valor : Double;
begin
        valor := 0;
        Q_CONDi.Open;
        Q_CONDI.First;
        while not Q_CONDI.Eof do
        begin
           Valor := Valor +  StrToFloat(FormatFloat('##0.00',Q_CONDIPERCENTUAL.Value))     ;
           Q_CONDI.Next;
        end;

        if Valor <> 100 then
        begin
           MessageBox(Self.Handle, 'O valor da soma do percentual deve ser igual a 100%', 'Erro', MB_OK + MB_ICONERROR);
           Abort;
        end;

        Q_COND.Close;
        Q_CONDI.Close;
        action:= cafree;
end;

procedure TFCondPagto.Q_CONDFORAGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
        If Q_CONDFORA.AsString = 'S' then
                Text := 'A Semana';
        If Q_CONDFORA.AsString = 'D' then
                Text := 'A Dezena';
        If Q_CONDFORA.AsString = 'Q' then
                Text := 'A Quinzena';
        If Q_CONDFORA.AsString = 'M' then
                Text := 'O M�s';
        If Q_CONDFORA.AsString = '' then
                Text := '';
end;

procedure TFCondPagto.SpeedButton2Click(Sender: TObject);
begin
  Q_COND.Edit ;

  DBE_CONd_DESC.visible := true ;
  DBText3.visible := false ;
end;

procedure TFCondPagto.Q_CONDBeforePost(DataSet: TDataSet);
begin

       If DBE_COND_DESC.Text = '' then Begin
                MessageDlg('Descri��o � Campo de preenchimento obrigat�rio',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBE_COND_DESC.SetFocus;
                Abort;
        End;

      IF  (Q_COND.State = dsInsert) THEN  begin
             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select count(*) as xvalor from  CONDICAO_PAGTO  ') ;
             Q_AUX.Sql.Add(' where DESCRICAO LIKE ' + '''' + Q_CONDDESCRICAO.asstring + '''');
             Q_AUX.open ;

             If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin
                      MessageDlg('Condi��o de Pagto. j� cadastrada!',mtWarning,[mbok],0);
                      DBE_COND_DESC.SetFocus;
                      DBE_COND_DESC.text := '' ;
                      Abort;
             end ;
        end ;


end;

procedure TFCondPagto.Q_CONDAfterScroll(DataSet: TDataSet);
begin
   // DBE_COND_DESC.visible := false ;
    DBText3.visible := true ;
end;

procedure TFCondPagto.FontexClick(Sender: TObject; Button: TNavigateBtn);
begin
     if button in [nbInsert] then  begin
               IF TabbedNotebook1.pageindex = 0 then begin

                  Q_cond.insert ;
                  DBE_COND_DESC.visible := true ;
                  DBText3.visible := false ;
                  DBE_COND_DESC.setfocus ;
               end ;
       end ;

       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
                 IF TabbedNotebook1.pageindex = 0 then begin
                    DBE_COND_DESC.visible := false ;
                    DBText3.visible := true ;
                 end ;   
       end ;
end;

procedure TFCondPagto.btnAddClick(Sender: TObject);
begin
   if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Append;
end;

procedure TFCondPagto.btnCancelClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsEdit, dsInsert] then
     dsMyNavPanel.DataSet.Cancel;
end;

procedure TFCondPagto.btnDeleteClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Delete;
end;

procedure TFCondPagto.btnFirstClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
    dsMyNavPanel.DataSet.First;
end;

procedure TFCondPagto.btnLastClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Last;
end;

procedure TFCondPagto.btnNextClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Next;
end;

procedure TFCondPagto.btnPostClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsEdit, dsInsert] then
     dsMyNavPanel.DataSet.Post;
end;

procedure TFCondPagto.btnPriorClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Prior;
end;

procedure TFCondPagto.Q_CONDNewRecord(DataSet: TDataSet);
begin
 DBE_COND_DESC.Visible := True;
end;

procedure TFCondPagto.fonteEditClick(Sender: TObject);
begin
   DBE_COND_DESC.Visible := True;
end;

procedure TFCondPagto.fontePostClick(Sender: TObject);
begin
    DBE_COND_DESC.Visible := False;
end;

end.

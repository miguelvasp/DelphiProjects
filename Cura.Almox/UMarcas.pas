unit UMarcas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, wwDialog, wwidlg, Wwdatsrc, Wwquery, StdCtrls, Mask,
  wwdbedit, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, Buttons, ExtCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, ImgList;

type
  TFMarcas = class(TForm)
    Panel1: TPanel;
    SBT_PES: TSpeedButton;
    Fonte: TDBNavigator;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    DBE_MOT_DESC: TwwDBEdit;
    Q_MARC: TwwQuery;
    Q_PSQMARC: TwwQuery;
    DS_MARC: TwwDataSource;
    PESQ_MARC: TwwSearchDialog;
    UPD_MARC: TUpdateSQL;
    Q_PSQMARCMARCA_ID: TAutoIncField;
    Q_PSQMARCMARCA_DESC: TStringField;
    Q_MARCMARCA_ID: TAutoIncField;
    Q_MARCMARCA_DESC: TStringField;
    Q_AUX: TwwQuery;
    DBText3: TDBText;
    SpeedButton1: TSpeedButton;
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
    procedure Q_MARCAfterDelete(DataSet: TDataSet);
    procedure Q_MARCAfterPost(DataSet: TDataSet);
    procedure Q_MARCBeforePost(DataSet: TDataSet);
    procedure DBE_MOT_DESCEnter(Sender: TObject);
    procedure DBE_MOT_DESCExit(Sender: TObject);
    procedure SBT_PESClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_MARCBeforeDelete(DataSet: TDataSet);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DS_MARCStateChange(Sender: TObject);
    procedure Q_MARCAfterScroll(DataSet: TDataSet);
    procedure fonteInsertClick(Sender: TObject);
    procedure fonteFirstClick(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMarcas: TFMarcas;

implementation

uses UMenu, Unt_Splash1, URelMarcas;

{$R *.DFM}

procedure TFMarcas.Q_MARCAfterDelete(DataSet: TDataSet);
var ID: String; 
begin
   ID:= Q_MARCMARCA_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MARC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
        If ID <> '' then Begin
       Q_MARC.Close;
       Q_MARC.Open;
       Q_MARC.locate('MARCA_DESC',ID,[loCaseInsensitive]);
        end;
end;

procedure TFMarcas.Q_MARCAfterPost(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_MARCMARCA_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MARC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


   Q_MARC.Close;
   Q_MARC.Open;
   Q_MARC.locate('MARCA_DESC',ID,[loCaseInsensitive]);


    DBE_MOT_DESC.visible := false ;
    DBText3.visible := true ;

end;

procedure TFMarcas.Q_MARCBeforePost(DataSet: TDataSet);
begin
        If DBE_MOT_DESC.Text = '' then Begin
                MessageDlg('Descrição é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                DBE_MOT_DESC.SetFocus;
                Abort;
        End;
                    
        
       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  MARCAS ') ;
       Q_AUX.Sql.Add(' where MARCA_DESC LIKE ' + '''' + Q_MARCMARCA_DESC.asstring + '''');
       Q_AUX.open ;

       If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin

                MessageDlg('Marca já cadastrada!',mtWarning,[mbok],0);
                DBE_MOT_DESC.SetFocus;
                DBE_MOT_DESC.text := '' ; 
                Abort;
       end ;

end;

procedure TFMarcas.DBE_MOT_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMarcas.DBE_MOT_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFMarcas.SBT_PESClick(Sender: TObject);
begin
        Q_PSQMARC.Open;
        PESQ_MARC.Execute;
        Q_MARC.Locate('MARCA_ID', Q_PSQMARCMARCA_ID.AsString, []);
        Q_PSQMARC.Close;
end;

procedure TFMarcas.FormPaint(Sender: TObject);
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
                     Q_MARC.Open;

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

procedure TFMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_MARC.Close;
        Action := cafree;
end;

procedure TFMarcas.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFMarcas.Q_MARCBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFMarcas.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
      If button in [nbInsert] then  begin
            Q_MARC.insert ;

           
        END;


       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
           
       end ;

end;

procedure TFMarcas.SpeedButton1Click(Sender: TObject);
begin
  Q_MARC.Edit ;

  DBE_MOT_DESC.visible := true ;
  DBText3.visible := false ;


 

end;

procedure TFMarcas.DS_MARCStateChange(Sender: TObject);
begin
   IF (Q_MARC.State = dsEdit) or (Q_MARC.State = dsInsert) THEN
                begin
                       if Q_MARC.State = dsEdit then
                                begin
                             //   LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                              //  LBL_STATUS.Caption := 'INCLUSÃO';

                                DBE_MOT_DESC.visible := true ;
                                DBE_MOT_DESC.SetFocus;
                        end;
                               // LBL_STATUS.Visible := true;
     end
   ELSE
     begin
     //  LBL_STATUS.Visible := false;
     end;
end;

procedure TFMarcas.Q_MARCAfterScroll(DataSet: TDataSet);
begin
  if Q_MARC.State in [dsEdit, dsInsert] then
  else begin

                 DBE_MOT_DESC.visible := false ;
                    DBText3.visible := true ;
                    end;
end;

procedure TFMarcas.fonteInsertClick(Sender: TObject);
begin
 DBE_MOT_DESC.visible := true ;
            DBText3.visible := false ;

            DBE_MOT_DESC.Text := '';
            DBE_MOT_DESC.SetFocus;
end;

procedure TFMarcas.fonteFirstClick(Sender: TObject);
begin
 DBE_MOT_DESC.visible := false ;
            DBText3.visible := true ;
end;

procedure TFMarcas.wwDBNavigator1ButtonClick(Sender: TObject);
begin
        Application.CreateForm(TFRelMarcas,FRelMarcas);
        FRelMarcas.QR_MARC.Preview;
        FRelMarcas.Close;
end;

end.

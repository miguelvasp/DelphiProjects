unit UTpDocumento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Wwdotdot, Wwdbcomb, wwDialog,
  wwidlg, wwSpeedButton, wwDBNavigator, wwclearpanel, ImgList;

type
  TFTpDocumento = class(TForm)
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Label2: TLabel;
    Label5: TLabel;
    wwDBEdit4: TwwDBEdit;
    Q_TDOC: TwwQuery;
    UPD_TDOC: TUpdateSQL;
    DS_TDOC: TwwDataSource;
    DBMemo2: TDBMemo;
    Q_TDOCTD_ID: TAutoIncField;
    Q_TDOCDescricao: TStringField;
    Q_TDOCConceito: TMemoField;
    Q_TDOCApelido: TStringField;
    Q_PSQTP: TwwQuery;
    PESQ_TP: TwwSearchDialog;
    Q_PSQTPTD_ID: TAutoIncField;
    Q_PSQTPDescricao: TStringField;
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
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_TDOCAfterPost(DataSet: TDataSet);
    procedure Q_TDOCAfterDelete(DataSet: TDataSet);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Q_TDOCBeforeDelete(DataSet: TDataSet);
    procedure SBT_PESClick(Sender: TObject);
    procedure DS_TDOCStateChange(Sender: TObject);
    procedure Q_TDOCBeforePost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Q_TDOCAfterScroll(DataSet: TDataSet);
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
  FTpDocumento: TFTpDocumento;

implementation

uses UMenu, URelTpDocumento;


 
{$R *.DFM}

procedure TFTpDocumento.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpDocumento.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit3Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpDocumento.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpDocumento.wwDBEdit4Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit4Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpDocumento.SpeedButton3Click(Sender: TObject);
begin
   close ; 
end;

procedure TFTpDocumento.Q_TDOCAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_TDOCDescricao.asstring ;
   try
       FMenu.DATABASE1.ApplyUpdates([Q_TDOC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TDOC.close ;
   Q_TDOC.Open ;
   Q_TDOC.locate('Descricao',StrNome,[]);


   wwDBEdit3.visible := false ;
   DBText3.visible := true ;


end;

procedure TFTpDocumento.Q_TDOCAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_TDOCDescricao.asstring ;
   try
       FMenu.DATABASE1.ApplyUpdates([Q_TDOC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TDOC.close ;
   Q_TDOC.Open ;
   Q_TDOC.locate('Descricao',StrNome,[]);



end;

procedure TFTpDocumento.DBMemo2Enter(Sender: TObject);
begin
   (Sender as TDBMemo).Color := ClAqua;
    FTpDocumento.KeyPreview:=false;
end;

procedure TFTpDocumento.DBMemo2Exit(Sender: TObject);
begin
     (Sender as TDBMemo).Color := Clwindow;
      FTpDocumento.KeyPreview:=true;
end;

procedure TFTpDocumento.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTpDocumento.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin               

        If button in [nbInsert] then  begin
            Q_TDOC.insert ;

            
        END;

       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
            
       end ;
end;

procedure TFTpDocumento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TDOC.close ;
  action := cafree ;
end;

procedure TFTpDocumento.DBCB_CLI_PESSEnter(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFTpDocumento.DBCB_CLI_PESSExit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := CLWINDOW ;
end;

procedure TFTpDocumento.FormShow(Sender: TObject);
begin
        Q_TDOC.Open;
end;

procedure TFTpDocumento.Q_TDOCBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;

end;

procedure TFTpDocumento.SBT_PESClick(Sender: TObject);
begin
        Q_PSQTP.Open;
        PESQ_TP.Execute;
        Q_TDOC.Locate('TD_ID', Q_PSQTPTD_ID.AsString, []);
        Q_PSQTP.Close;
end;

procedure TFTpDocumento.DS_TDOCStateChange(Sender: TObject);
begin
    IF (Q_TDOC.State = dsEdit) or (Q_TDOC.State = dsInsert) THEN
                begin
                       if Q_TDOC.State = dsEdit then
                                begin
                             //   LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                              //  LBL_STATUS.Caption := 'INCLUSÃO';

                                wwDBEdit3.visible := true ;
                                wwDBEdit3.SetFocus;
                        end;
                               // LBL_STATUS.Visible := true;
     end
   ELSE
     begin
     //  LBL_STATUS.Visible := false;
     end;
end;

procedure TFTpDocumento.Q_TDOCBeforePost(DataSet: TDataSet);
begin
       If wwDBEdit3.Text = '' then Begin
          MessageDlg('Nome é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
          wwDBEdit3.SetFocus;
          Abort;
        End;

        If wwDBEdit4.Text = '' then Begin
          MessageDlg('Apelido é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
          wwDBEdit4.SetFocus;
          Abort;
        End;



      IF  (Q_TDOC.State = dsInsert) THEN  begin
               Q_AUX.close;
               Q_AUX.Sql.Clear;
               Q_AUX.Sql.Add('Select count(*) as xvalor from  TIPO_DOCUMENTO ') ;
               Q_AUX.Sql.Add(' where DESCRICAO =' + '''' + wwDBEdit3.text + '''');
               Q_AUX.open ;

               If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin
                  MessageDlg('Tipo de Documento já cadastrado!',mtWarning,[mbok],0);
                  wwDBEdit3.SetFocus;
                  wwDBEdit3.text := '' ;
                  Abort;
               end ;
       end ;
end;

procedure TFTpDocumento.SpeedButton2Click(Sender: TObject);
begin
    Q_TDOC.Edit ;

    
end;

procedure TFTpDocumento.Q_TDOCAfterScroll(DataSet: TDataSet);
begin
  if Q_TDOC.State in [dsEdit, dsInsert] then
  else begin
          wwDBEdit3.visible := false ;
          DBText3.visible := true ;
          end;
end;

procedure TFTpDocumento.fonteInsertClick(Sender: TObject);
begin
wwDBEdit3.visible := true ;
            DBText3.visible := false ;


            wwDBEdit3.Text := '';
            wwDBEdit3.SetFocus;
end;

procedure TFTpDocumento.fonteFirstClick(Sender: TObject);
begin
wwDBEdit3.visible := false ;
            DBText3.visible := true ;
end;

procedure TFTpDocumento.fonteEditClick(Sender: TObject);
begin
wwDBEdit3.visible := true ;
    DBText3.visible := false ;
end;

procedure TFTpDocumento.wwDBNavigator1ButtonClick(Sender: TObject);
begin
        Application.CreateForm(tFRelTpDocumento,FRelTpDocumento);
        FRelTpDocumento.TpDocumento.Preview;
        FRelTpDocumento.Close;
end;

end.

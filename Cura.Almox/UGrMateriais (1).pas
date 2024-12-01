unit UGrMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, wwdblook, Wwdotdot, Wwdbcomb, StdCtrls,
  Mask, wwdbedit, DBCtrls, Buttons, ExtCtrls, wwDialog, wwidlg, Grids,
  Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator, wwclearpanel, ImgList,
  ADODB, RzPanel, RzTabs, DBGrids;

type
  TFGrMateriais = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    SBT_REL: TSpeedButton;
    Fonte2: TDBNavigator;
    V: TPanel;
    Q_GRMAT: TwwQuery;
    DS_GRMAT: TwwDataSource;
    UPD_GRMAT: TUpdateSQL;
    PESQ_GRMAT: TwwSearchDialog;
    Q_PSQGRMAT: TwwQuery;
    Q_PSQGRMATGRU_ID: TAutoIncField;
    Q_PSQGRMATGRU_DESC: TStringField;
    Q_GRMATGRU_ID: TAutoIncField;
    Q_GRMATGRU_DESC: TStringField;
    btAna: TSpeedButton;
    DBText3: TDBText;
    SpeedButton2: TSpeedButton;
    Q_AUX: TwwQuery;
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
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    DBE_GRU_DESC: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    RzGroupBox2: TRzGroupBox;
    wwDBGrid2: TwwDBGrid;
    BitBtn1: TBitBtn;
    pnlBuscaFornecedor: TPanel;
    Panel3: TPanel;
    edtBuscaFornecedor: TEdit;
    qrFornecedores: TADOQuery;
    qrFornecedoresFOR_CODI: TStringField;
    dsFornecedores: TDataSource;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    qrGrupoFornecedor: TADOQuery;
    qrGrupoFornecedorGRU_ID: TIntegerField;
    qrGrupoFornecedorFOR_CODI: TStringField;
    BitBtn3: TBitBtn;
    dsGrupoFornecedor: TDataSource;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_GRMATAfterDelete(DataSet: TDataSet);
    procedure Q_GRMATAfterPost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DS_GRMATStateChange(Sender: TObject);
    procedure DBE_GRU_DESCEnter(Sender: TObject);
    procedure DBE_GRU_DESCExit(Sender: TObject);
    procedure Q_GRMATBeforeDelete(DataSet: TDataSet);
    procedure Q_GRMATBeforePost(DataSet: TDataSet);
    procedure SBT_RELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fonte2Click(Sender: TObject; Button: TNavigateBtn);
    procedure btAnaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Q_GRMATAfterScroll(DataSet: TDataSet);
    procedure fonteInsertClick(Sender: TObject);
    procedure fontePostClick(Sender: TObject);
    procedure fonteCancelClick(Sender: TObject);
    procedure edtBuscaFornecedorChange(Sender: TObject);
    procedure DS_GRMATDataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrMateriais: TFGrMateriais;
  ID: String;
  
implementation

uses UMenu, Unt_Splash1, URelGrMat, URelGrMatAna;

{$R *.DFM}

procedure TFGrMateriais.SpeedButton1Click(Sender: TObject);
begin
       Q_PSQGRMAT.Open;
       PESQ_GRMAT.Execute ;
       Q_GRMAT.Locate('GRU_ID',Q_PSQGRMATGRU_ID.AsString,[]);
       Q_PSQGRMAT.Close ;
end;

procedure TFGrMateriais.SBT_SAIRClick(Sender: TObject);
begin
        FGrMateriais.Close;
end;

procedure TFGrMateriais.Q_GRMATAfterDelete(DataSet: TDataSet);
begin
   ID:= Q_GRMATGRU_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_GRMAT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_GRMAT.Close;
       Q_GRMAT.Open;
       Q_GRMAT.locate('GRU_DESC',ID,[loCaseInsensitive]);
   end;
end;

procedure TFGrMateriais.Q_GRMATAfterPost(DataSet: TDataSet);
begin
   ID:= Q_GRMATGRU_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_GRMAT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


   Q_GRMAT.Close;
   Q_GRMAT.Open;
   Q_GRMAT.locate('GRU_DESC',ID,[loCaseInsensitive]);

   // DBE_GRU_DESC.visible := false ;
   // DBText3.visible := true ;
end;

procedure TFGrMateriais.FormPaint(Sender: TObject);
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
                     Q_GRMAT.Open;

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

procedure TFGrMateriais.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFGrMateriais.DS_GRMATStateChange(Sender: TObject);
begin
        IF (Q_GRMAT.State = dsEdit) or (Q_GRMAT.State = dsInsert) THEN
                begin
                       if Q_GRMAT.State = dsEdit then
                                begin
                             //   LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                              //  LBL_STATUS.Caption := 'INCLUSÃO';

                                DBE_GRU_DESC.visible := true ;
                                DBE_GRU_DESC.SetFocus;
                        end;
                               // LBL_STATUS.Visible := true;
     end
   ELSE
     begin
     //  LBL_STATUS.Visible := false;
     end;
end;

procedure TFGrMateriais.DBE_GRU_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFGrMateriais.DBE_GRU_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFGrMateriais.Q_GRMATBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFGrMateriais.Q_GRMATBeforePost(DataSet: TDataSet);
begin
        If DBE_GRU_DESC.Text = '' then Begin
                MessageDlg('Descrição é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                DBE_GRU_DESC.SetFocus;
                Abort;
        End;


       Q_AUX.close;
       Q_AUX.Sql.Clear;
       Q_AUX.Sql.Add('Select count(*) as xvalor from  GRUPO_MATERIAL   ') ;
       Q_AUX.Sql.Add(' where GRU_DESC LIKE ' + '''' + Q_GRMATGRU_DESC.asstring + '''');
       Q_AUX.open ;

       If (Q_AUX.fieldbyname('XVALOR').asinteger  = 1 ) and (Q_GRMAT.State = dsInsert) then begin

                MessageDlg('Grupo de Material já cadastrado!',mtWarning,[mbok],0);
                DBE_GRU_DESC.SetFocus;
                DBE_GRU_DESC.text := '' ; 
                Abort;
       end ;


end;

procedure TFGrMateriais.SBT_RELClick(Sender: TObject);
begin
        Application.CreateForm(TFRelGrMateriais,FRelGrMateriais);
        FRelGrMateriais.QR_GRMAT.Preview;
        FRelGrMateriais.Close;
end;

procedure TFGrMateriais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_GRMAT.Close;
   Action := caFree;
end;

procedure TFGrMateriais.Fonte2Click(Sender: TObject; Button: TNavigateBtn);
begin            
        If button in [nbInsert] then  begin
            Q_GRMAT.insert ;

            DBE_GRU_DESC.visible := true ;
            DBText3.visible := false ;


            DBE_GRU_DESC.Text := '';
            DBE_GRU_DESC.SetFocus;
        END;

       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
          //  DBE_GRU_DESC.visible := false ;
         //   DBText3.visible := true ;
       end ;
end;

procedure TFGrMateriais.btAnaClick(Sender: TObject);
begin
        Application.CreateForm(TFRelGrMatAna,FRelGrMatAna);
        FRelGrMatAna.QR_GRMAT.Preview;
        FRelGrMatAna.Close;

end;

procedure TFGrMateriais.SpeedButton2Click(Sender: TObject);
begin
    Q_GRMAT.Edit ;
    
    DBE_GRU_DESC.visible := true ;
    DBText3.visible := false ;   
end;

procedure TFGrMateriais.Q_GRMATAfterScroll(DataSet: TDataSet);
begin
                  // DBE_GRU_DESC.visible := false ;
                 //   DBText3.visible := true ;
end;

procedure TFGrMateriais.fonteInsertClick(Sender: TObject);
begin
//
            Q_GRMAT.insert ;

            DBE_GRU_DESC.visible := true ;
            DBText3.visible := false ;


            DBE_GRU_DESC.Text := '';
            DBE_GRU_DESC.SetFocus;
end;

procedure TFGrMateriais.fontePostClick(Sender: TObject);
begin
//DBE_GRU_DESC.visible := false ;
          //  DBText3.visible := true ;
end;

procedure TFGrMateriais.fonteCancelClick(Sender: TObject);
begin
//DBE_GRU_DESC.visible := false ;
           // DBText3.visible := true ;
end;

procedure TFGrMateriais.edtBuscaFornecedorChange(Sender: TObject);
begin
  with qrFornecedores DO
  BEGIN
      CLOSE;
      SQL.Clear;
      SQL.Add('SELECT FOR_CODI FROM CPAFORN WHERE FOR_CODI LIKE ' + QuotedStr('%'+ edtBuscaFornecedor.Text + '%'));
      SQL.Add(' AND F_ALMOX = ''S'' order by for_codi');
      Open;
  end;
end;

procedure TFGrMateriais.DS_GRMATDataChange(Sender: TObject; Field: TField);
begin
   qrGrupoFornecedor.Close;
   qrGrupoFornecedor.Parameters[0].Value := Q_GRMATGRU_ID.Value;
   qrGrupoFornecedor.Open;
end;

procedure TFGrMateriais.BitBtn2Click(Sender: TObject);
begin
  IF qrFornecedoresFOR_CODI.AsString <> '' then
  BEGIN
      qrGrupoFornecedor.Append;
      qrGrupoFornecedorGRU_ID.Value := Q_GRMATGRU_ID.Value;
      qrGrupoFornecedorFOR_CODI.Value := qrFornecedoresFOR_CODI.Value;
      qrGrupoFornecedor.Post;
      pnlBuscaFornecedor.Visible := False;
      edtBuscaFornecedor.Clear;
      qrFornecedores.Close;
  end;
end;

procedure TFGrMateriais.BitBtn3Click(Sender: TObject);
begin
  pnlBuscaFornecedor.Visible := False;
  edtBuscaFornecedor.Clear;
   qrFornecedores.Close;
end;

procedure TFGrMateriais.BitBtn1Click(Sender: TObject);
begin
   pnlBuscaFornecedor.Visible := True;
   edtBuscaFornecedor.Clear;
   edtBuscaFornecedor.SetFocus;
end;

procedure TFGrMateriais.FormCreate(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex := 0;
end;

procedure TFGrMateriais.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TFGrMateriais.BitBtn4Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Confirma Exclusão do Fornecedor?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
   begin
       qrGrupoFornecedor.Delete;
       qrGrupoFornecedor.close;
       qrGrupoFornecedor.Open;
   end;
end;

end.


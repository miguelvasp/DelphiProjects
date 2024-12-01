unit UMatFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Buttons, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Mask, wwdbedit, wwdblook, Grids, Wwdbigrd, Wwdbgrid;

type
  TFMatFornecedores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_REL: TSpeedButton;
    SBT_PES: TSpeedButton;
    Fonte: TDBNavigator;
    Panel2: TPanel;
    Label3: TLabel;
    Panel3: TPanel;
    LBL_STATUS: TLabel;
    DBLC_MATFORN_FOR_CODI: TwwDBLookupCombo;
    Q_MATFORN: TwwQuery;
    DS_MATFORN: TwwDataSource;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_CGC: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNFOR_SEGU: TIntegerField;
    Q_FORNFOR_UCOM: TDateTimeField;
    Q_FORNFOR_VUCO: TFloatField;
    Q_FORNFOR_VUCD: TFloatField;
    Q_FORNFOR_MCOM: TDateTimeField;
    Q_FORNFOR_VMCO: TFloatField;
    Q_FORNFOR_VMCD: TFloatField;
    DS_FORN: TwwDataSource;
    DBText1: TDBText;
    UPD_MATFORN: TUpdateSQL;
    Q_AUX: TwwQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    FloatField2: TFloatField;
    DateTimeField2: TDateTimeField;
    FloatField3: TFloatField;
    Q_MATFORNMFOR_ID: TAutoIncField;
    Q_MATFORNMAT_ID: TIntegerField;
    Q_MATFORNFOR_CODI: TStringField;
    Q_MATFORNMFOR_EMBALAGEM: TStringField;
    Q_MATFORNUNI_ID: TIntegerField;
    Q_MATFORNMFOR_CONVERSAO: TFloatField;
    Q_MATFORNMFOR_DT_ULTCOMP: TDateTimeField;
    Q_MATFORNMFOR_PRE_ULTCOMP: TFloatField;
    Q_MATFORNMFOR_DT_ULTCOTA: TDateTimeField;
    Q_MATFORNMFOR_PRE_ULTCOTA: TFloatField;
    Q_MAT: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MATGRU_ID: TIntegerField;
    Q_MATUNI_ID: TIntegerField;
    Q_MATMAT_IPI: TFloatField;
    Q_MATMAT_CONTROLA: TStringField;
    Q_MATMAT_ESTMIN: TIntegerField;
    Q_MATMAT_LOTEPED: TStringField;
    DS_MAT: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBE_MATFORN_CONVERSAO: TwwDBEdit;
    DBE_MATFORN_DT_ULTCOMP: TwwDBEdit;
    DBE_MATFORN_DT_ULTCOTA: TwwDBEdit;
    DBE_MATFORN_PRE_ULTCOMP: TwwDBEdit;
    DBE_MATFORN_PRE_ULTCOTA: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure DBE_MATFORN_EMBALAGEMEnter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DBE_MATFORN_CONVERSAOEnter(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOMPEnter(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOMPEnter(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOTAEnter(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOTAEnter(Sender: TObject);
    procedure DBE_MATFORN_EMBALAGEMExit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBE_MATFORN_CONVERSAOExit(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOMPExit(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOMPExit(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOTAExit(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOTAExit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_FORNAfterCancel(DataSet: TDataSet);
    procedure Q_FORNAfterDelete(DataSet: TDataSet);
    procedure Q_FORNAfterPost(DataSet: TDataSet);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_MATFORNAfterDelete(DataSet: TDataSet);
    procedure Q_MATFORNAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMatFornecedores: TFMatFornecedores;
  ID: String;

implementation

uses Unt_Splash1, UMenu;

{$R *.DFM}

procedure TFMatFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
       key := #0;
       Perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFMatFornecedores.SBT_SAIRClick(Sender: TObject);
begin
        FMatFornecedores.Close;
end;

procedure TFMatFornecedores.DBE_MATFORN_EMBALAGEMEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.wwDBEdit1Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.DBE_MATFORN_CONVERSAOEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.DBE_MATFORN_DT_ULTCOMPEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.DBE_MATFORN_PRE_ULTCOMPEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.DBE_MATFORN_DT_ULTCOTAEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.DBE_MATFORN_PRE_ULTCOTAEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMatFornecedores.DBE_MATFORN_EMBALAGEMExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.wwDBEdit1Exit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.DBE_MATFORN_CONVERSAOExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.DBE_MATFORN_DT_ULTCOMPExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.DBE_MATFORN_PRE_ULTCOMPExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.DBE_MATFORN_DT_ULTCOTAExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.DBE_MATFORN_PRE_ULTCOTAExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clWindow;
end;

procedure TFMatFornecedores.FormPaint(Sender: TObject);
begin
        If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 2;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     Q_MATFORN.Open;

                     Dfm_Splash1.Gauge1.Progress := 2;
                     Q_FORN.Open;
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

procedure TFMatFornecedores.Q_FORNAfterCancel(DataSet: TDataSet);
begin
        DBLC_MATFORN_FOR_CODI.visible := false ;
end;

procedure TFMatFornecedores.Q_FORNAfterDelete(DataSet: TDataSet);
begin
   ID:= Q_FORNFOR_CODI.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_FORN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_FORN.Close;
       Q_FORN.Open;
       Q_FORN.locate('FOR_CODI',ID,[loCaseInsensitive]);
   end;
end;

procedure TFMatFornecedores.Q_FORNAfterPost(DataSet: TDataSet);
begin
   ID := Q_FORNFOR_CODI.asstring   ;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_FORN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_FORN.close ;
   Q_FORN.Open  ;
   Q_FORN.locate('FOR_CODI',ID,[]);


   DBLC_MATFORN_FOR_CODI.visible := false ;
end;

procedure TFMatFornecedores.FonteClick(Sender: TObject;
  Button: TNavigateBtn);
begin
        If button in [nbInsert] then
        begin
        DBLC_MATFORN_FOR_CODI.Visible := True;
        DBLC_MATFORN_FOR_CODI.setfocus ;
        end;
end;

procedure TFMatFornecedores.Q_MATFORNAfterDelete(DataSet: TDataSet);
begin
   ID:= Q_MATFORNFOR_CODI.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MATFORN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_MATFORN.Close;
       Q_MATFORN.Open;
       Q_MATFORN.locate('FOR_CODI',ID,[loCaseInsensitive]);
   end;
end;

procedure TFMatFornecedores.Q_MATFORNAfterCancel(DataSet: TDataSet);
begin
        DBLC_MATFORN_FOR_CODI.visible := false ;
end;

end.

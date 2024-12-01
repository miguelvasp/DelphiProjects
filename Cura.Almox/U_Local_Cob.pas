unit U_Local_Cob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwdotdot,
  Wwdbcomb;

type
  TDfm_LocalCob = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    SBT_SAIR: TSpeedButton;
    DBE_FAM_CODI: TwwDBEdit;
    BDE_FAM_DESC: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBG_FAMI: TwwDBGrid;
    SBT_REFR: TSpeedButton;
    DBG_FAMIIButton: TwwIButton;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_BANC: TwwQuery;
    DS_LCOB: TwwDataSource;
    UPD_LCOB: TUpdateSQL;
    Q_LCOB: TwwQuery;
    Q_LCOBLCO_CODI: TStringField;
    Q_LCOBLCO_BANC: TStringField;
    Q_LCOBBANC_CODI: TStringField;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_AGEN: TStringField;
    Q_BANCBAN_NAGE: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Q_BANCBAN_SALD: TFloatField;
    Q_BANCBAN_NLAN: TFloatField;
    Q_BANCBAN_LCHE: TStringField;
    Q_BANCBAN_UCHE: TStringField;
    SBT_CONS: TSpeedButton;
    Q_LCOBLco_Floating: TIntegerField;
    Q_LCOBLco_FluxoCaixa: TStringField;
    Label5: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label6: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwQ_LocCobAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwQ_LocCobBeforeInsert(DataSet: TDataSet);
    procedure DBE_FAM_CODIExit(Sender: TObject);
    procedure BDE_FAM_DESCExit(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure SBT_CONSClick(Sender: TObject);
    procedure Q_LCOBBeforeDelete(DataSet: TDataSet);
    procedure Q_LCOBBeforePost(DataSet: TDataSet);
    procedure Q_LCOBAfterDelete(DataSet: TDataSet);
    procedure Q_LCOBAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dfm_LocalCob: TDfm_LocalCob;
  sCodigo : String;
implementation

uses CppMenu, U_Funcoes, Unt_Splash1 , UPesqLCobr ;

{$R *.DFM}

procedure TDfm_LocalCob.SBT_SAIRClick(Sender: TObject);
begin
     Close;
end;

procedure TDfm_LocalCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_LCOB.Close;
   Q_BANC.Close ;
   Action := caFree;
end;

procedure TDfm_LocalCob.FormShow(Sender: TObject);
begin
//
// Ajusta o Formulário
//
  //Top := 0; Left := 0; Height := 452; Width := 640;

     DBE_FAM_CODI.Visible:=True;
end;


procedure TDfm_LocalCob.wwQ_LocCobAfterCancel(DataSet: TDataSet);
begin
  DBE_FAM_CODI.Enabled := false;
end;

procedure TDfm_LocalCob.SBT_REFRClick(Sender: TObject);
begin
   Q_LCOB.Close;
   Q_LCOB.Open;
end;

procedure TDfm_LocalCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;
end;

procedure TDfm_LocalCob.wwQ_LocCobBeforeInsert(DataSet: TDataSet);
Var
   iCodigo : Integer;
   Obj_Consulta:TwwQuery;
begin

{   Obj_Consulta:=TwwQuery.Create(Self);
   Obj_Consulta.DataBaseName:='Financeiro';
   Obj_Consulta.SessionName:='Sec_BaseFin';
   Obj_Consulta.Sql.Add('SELECT MAX(LCO_CODI) As Novo_Codi FROM SIALCOB');
   Obj_Consulta.Open;
   sCodigo := Obj_Consulta.FieldbyName('Novo_Codi').AsString;

   Obj_Consulta.Close;
   Obj_Consulta.Destroy;

   If sCodigo = '' then
      sCodigo := '0';
   Try
      iCodigo:=StrToInt(sCodigo);
      INC(iCodigo);
      sCodigo:=IntToStr(iCodigo);
      sCodigo:=Funcoes.StrZero(sCodigo,
      Q_LCOBLCO_CODI.Size);
   Except
      sCodigo := '';
   End;}


end;

procedure TDfm_LocalCob.DBE_FAM_CODIExit(Sender: TObject);
Var sCodigo,sDesc : String;
begin
   (Sender as TwwDBEdit).Color := ClWindow;

   sCodigo:=DBE_FAM_CODI.TEXT;

{   if ( Q_LCOB.State = dsInsert) then
      Begin
      If Q_LCOB.Locate('LCO_CODI',sCodigo,[]) then
         Begin
            MessageDlg('Código já cadastrado',mtWarning,[mbok],0);
            DBE_FAM_CODI.Enabled:=True;
            DBE_FAM_CODI.Text := '';
            DBE_FAM_CODI.SetFocus;
         End;
      End;}

end;

procedure TDfm_LocalCob.BDE_FAM_DESCExit(Sender: TObject);
Var sDescricao : String;
begin
{
   sDescricao:=BDE_FAM_DESC.TEXT;

    If Q_LCOB.Locate('LCO_BANC',sDescricao,[loCaseInsensitive]) then
      Begin
         MessageDlg('Descrição já cadastrada',mtWarning,[mbok],0);
         BDE_FAM_DESC.Enabled:=True;
         Q_LCOBLCO_BANC.AsString := '';
         BDE_FAM_DESC.TEXT :='';
         BDE_FAM_DESC.SetFocus;
         Abort;
      End;  }
end;

procedure TDfm_LocalCob.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
   Case Button Of
        NbInsert : Begin
{                      Q_LCOBLCO_CODI.AsString:= sCodigo;
                      DBE_FAM_CODI.text := sCodigo;}
                      DBE_FAM_CODI.Enabled:=True;
                      DBE_FAM_CODI.SetFocus;
                   End;
        NbCancel : Begin
                      DBE_FAM_CODI.Enabled:=False;
                   End;

   End;

end;


procedure TDfm_LocalCob.SpeedButton1Click(Sender: TObject);
begin
   if ( Q_LCOB.State = dsEdit) or (Q_LCOB.State = dsInsert) then
      Begin
         Q_LCOB.Close;
         Q_LCOB.Open;
      End;

end;

procedure TDfm_LocalCob.FormPaint(Sender: TObject);
Var
   i : Integer;
begin
//
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 3;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     Q_LCOB.Open;

                     Dfm_Splash1.Gauge1.Progress := 2;
                     Q_BANC.Open;


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

procedure TDfm_LocalCob.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqLCobr, FPesqLCobr);
   FPesqLCobr.ShowModal ;
   FPesqLCobr.Release ;
   if gs_LC <> '' then begin
      Q_LCOB.Close;
      Q_LCOB.Open;
      Q_LCOB.locate('LCO_CODI',gs_LC,[]);
      gs_LC := '' ;
   end;
end;

procedure TDfm_LocalCob.Q_LCOBBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;

end;

procedure TDfm_LocalCob.Q_LCOBBeforePost(DataSet: TDataSet);
begin
   If DBE_FAM_CODI.Text = '' then Begin
      MessageDlg('Código é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FAM_CODI.SetFocus;
      Abort;
   End;

end;

procedure TDfm_LocalCob.Q_LCOBAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_LCOB]);
    end;
  except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
  end;
  Q_LCOB.Close ;
  Q_LCOB.Open ;

end;

procedure TDfm_LocalCob.Q_LCOBAfterPost(DataSet: TDataSet);
var sCHAVE : string ;
begin
   try
      FMenu.DATABASE1.ApplyUpdates([Q_LCOB])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   sChave := DBE_FAM_CODI.text ;
   Q_LCOB.Close ;
   Q_LCOB.Open ;
   Q_LCOB.Locate('LCO_CODI',sChave,[]);

end;

procedure TDfm_LocalCob.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.

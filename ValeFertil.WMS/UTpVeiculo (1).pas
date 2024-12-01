unit UTpVeiculo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, wwdblook, ComCtrls, Tabnotbk,
  Wwdotdot, Wwdbcomb;

type
  TFTpVeiculo = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    UPD_VEIC: TUpdateSQL;
    Q_VEIC: TwwQuery;
    DS_VEIC: TwwDataSource;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_VEICVEIC_NOME: TStringField;
    TabbedNotebook1: TTabbedNotebook;
    Panel6: TPanel;
    Label15: TLabel;
    DBText3: TDBText;
    Panel4: TPanel;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label6: TLabel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Q_FRETE: TwwQuery;
    UPD_FRETE: TUpdateSQL;
    DS_FRETE: TwwDataSource;
    Q_FRETEFRET_ID: TAutoIncField;
    Q_FRETEVEIC_ID: TIntegerField;
    Q_FRETEREG_ID: TIntegerField;
    Q_FRETEFRET_VALOR: TFloatField;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Q_REG: TwwQuery;
    Q_REGREG_ID: TAutoIncField;
    Q_REGREG_NOME: TStringField;
    Q_FRETEREG_DESC: TStringField;
    Label2: TLabel;
    wwDBEdit2: TwwDBEdit;
    Q_FRETEFRET_VALOR_GRANEL: TFloatField;
    Label5: TLabel;
    wwDBEdit4: TwwDBEdit;
    Q_VEICVEIC_ORDEM: TIntegerField;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit5: TwwDBEdit;
    Q_FRETETARA_PALLET: TFloatField;
    Q_FRETETARA_GRANEL: TFloatField;
    wwDBEdit6: TwwDBEdit;
    Label9: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Q_VEICCATEGORIA: TStringField;
    Q_VEICCodigoEDI: TStringField;
    lbl1: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit8: TwwDBEdit;
    Q_VEICValorAdicional: TFloatField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure Q_VEICAfterDelete(DataSet: TDataSet);
    procedure Q_VEICAfterPost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure Q_FRETENewRecord(DataSet: TDataSet);
    procedure Q_FRETEBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Q_FRETEAfterDelete(DataSet: TDataSet);
    procedure Q_FRETEAfterPost(DataSet: TDataSet);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTpVeiculo: TFTpVeiculo;

implementation
uses USenha,Umenu, UAbTabelas ;
{$R *.DFM}

procedure TFTpVeiculo.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFTpVeiculo.wwDBEdit3Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpVeiculo.wwDBEdit3Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpVeiculo.Q_VEICAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_VEICVEIC_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_VEIC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_VEIC.close ;
   Q_VEIC.Open ;
   q_VEIC.locate('VEIC_NOME',StrNome,[]);



end;

procedure TFTpVeiculo.Q_VEICAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_VEICVEIC_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_VEIC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_VEIC.close ;
   Q_VEIC.Open ;
   q_VEIC.locate('VEIC_NOME',StrNome,[]);



end;

procedure TFTpVeiculo.FormPaint(Sender: TObject);
begin
      If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 3;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     ///FAbTabelas.Gauge1.Progress            := 1;
                     ///FAbTabelas.DS_REG.OnStateChange      := DS_CATEStateChange;

                     //FAbTabelas.Gauge1.Progress            := 1;
                     ///FRegiao.Q_REG.BeforePost          := Q_REGBeforePost;

                     FAbTabelas.Gauge1.Progress            := 1;
                     FTpVeiculo.Q_VEIC.Open;

                     FAbTabelas.Gauge1.Progress            := 2;
                     FTpVeiculo.Q_FRETE.Open;

                     FAbTabelas.Gauge1.Progress            := 3;
                     FTpVeiculo.Q_REG.Open;
                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             FAbTabelas.Close;
             FAbTabelas.Release;
             If Self.Tag = 2 Then Self.Close;
    end  ;
end;

procedure TFTpVeiculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTpVeiculo.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then
           wwDBEdit3.setfocus ;
         If (TabbedNotebook1.pageindex = 1) then
           wwDBLookupCombo2.setfocus ;
   end ;
end;

procedure TFTpVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_VEIC.close;
   Q_FRETE.close;
   Q_REG.close ;
   action := cafree ;

end;

procedure TFTpVeiculo.TabbedNotebook1Click(Sender: TObject);
begin
  If (TabbedNotebook1.pageindex = 0) then
     DBNavigator1.datasource := DS_VEIC;

  If (TabbedNotebook1.pageindex = 1) then begin
     DBNavigator1.datasource := DS_FRETE;
      Q_FRETE.edit;
  end ;
end;

procedure TFTpVeiculo.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpVeiculo.wwDBEdit1Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpVeiculo.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFTpVeiculo.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFTpVeiculo.Q_FRETENewRecord(DataSet: TDataSet);
begin
  Q_FRETEVEIC_ID.asstring := Q_VEICVEIC_ID.asstring ;
 
end;

procedure TFTpVeiculo.Q_FRETEBeforePost(DataSet: TDataSet);
begin
       Q_FRETEREG_ID.asstring := Q_REGREG_ID.asstring ;
end;

procedure TFTpVeiculo.FormCreate(Sender: TObject);
begin
       TabbedNotebook1.pageindex := 0 ;
end;

procedure TFTpVeiculo.Q_FRETEAfterDelete(DataSet: TDataSet);
var
StrVEIC : string ;
StrREG : string ;
begin
   StrVEIC := Q_FRETEVEIC_ID.asstring   ;
   StrREG  := Q_FRETEREG_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_FRETE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_FRETE.close ;
   Q_FRETE.Open ;
   Q_FRETE.locate('VEIC_ID;REG_ID',vararrayof([StrVEIC,StrREG]),[]);



end;

procedure TFTpVeiculo.Q_FRETEAfterPost(DataSet: TDataSet);
var
StrVEIC : string ;
StrREG : string ;
begin
   StrVEIC := Q_FRETEVEIC_ID.asstring   ;
   StrREG  := Q_FRETEREG_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_FRETE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_FRETE.close ;
   Q_FRETE.Open ;
   Q_FRETE.locate('VEIC_ID;REG_ID',vararrayof([StrVEIC,StrREG]),[]);



end;

procedure TFTpVeiculo.wwDBEdit2Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpVeiculo.wwDBEdit2Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpVeiculo.wwDBEdit4Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpVeiculo.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

end.

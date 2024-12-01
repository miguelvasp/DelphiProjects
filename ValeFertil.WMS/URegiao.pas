unit URegiao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRegiao = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    DS_REG: TwwDataSource;
    UPD_REG: TUpdateSQL;
    Q_REG: TwwQuery;
    Q_REGREG_ID: TAutoIncField;
    Q_REGREG_NOME: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_REGAfterDelete(DataSet: TDataSet);
    procedure Q_REGAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegiao: TFRegiao;

implementation
uses USenha,Umenu, UAbTabelas ,URelRegiao ;
{$R *.DFM}

procedure TFRegiao.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFRegiao.FormPaint(Sender: TObject);
begin
    If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 1;
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
                     FRegiao.Q_REG.Open;

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

procedure TFRegiao.Q_REGAfterDelete(DataSet: TDataSet);
var StrNOME : string ;
begin

     StrNOME := Q_REGREG_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_REG])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


   Q_REG.close ;
   Q_REG.Open ;
   Q_REG.locate('REG_NOME',StrNOME,[]);







end;

procedure TFRegiao.Q_REGAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
    STRNOme :=  Q_REGREG_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_REG])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_REG.close ;
   Q_REG.Open ;
   Q_REG.locate('REG_NOME',StrNome,[]);


end;

procedure TFRegiao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFRegiao.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRegiao.wwDBEdit3Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFRegiao.FormCreate(Sender: TObject);
begin
 Q_REG.open ; 
end;

procedure TFRegiao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_REG.close ;
  action := cafree ;
end;

procedure TFRegiao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFRegiao.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelRegiao,FRelRegiao);
   FRelRegiao.REG.Preview;
   FRelRegiao.Close;

end;

end.

unit UTpContato;
                                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBTables,
  Wwdatsrc, Wwquery, DBCtrls, Buttons, ExtCtrls;

type
  TFTpContato = class(TForm)
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
    Q_TCONT: TwwQuery;
    DS_TCONT: TwwDataSource;
    UPD_TCONT: TUpdateSQL;
    Q_TCONTTCONT_ID: TAutoIncField;
    Q_TCONTTCONT_DESCRICAO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_TCONTAfterDelete(DataSet: TDataSet);
    procedure Q_TCONTAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTpContato: TFTpContato;

implementation
uses USenha,Umenu, UAbTabelas, URelTContato ;
{$R *.DFM}

procedure TFTpContato.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTpContato.FormPaint(Sender: TObject);
begin
  If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 10;
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
                     FTpContato.Q_TCONT.Open;

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

procedure TFTpContato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_tCONT.close ;
   action :=cafree ;
end;


procedure TFTpContato.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFTpContato.wwDBEdit3Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpContato.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpContato.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFTpContato.FormCreate(Sender: TObject);
begin
  Q_tCONT.open ;
end;

procedure TFTpContato.Q_TCONTAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TCONTTCONT_DESCRICAO.asstring ;
   try
     FSenha.Dtb_BaseDados.ApplyUpdates([Q_TCONT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TCONT.close ;
   Q_TCONT.Open ;
   Q_TCONT.locate('TCONT_DESCRICAO',StrNome,[]);


end;

procedure TFTpContato.Q_TCONTAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TCONTTCONT_DESCRICAO.asstring ;
   try
     FSenha.Dtb_BaseDados.ApplyUpdates([Q_TCONT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TCONT.close ;
   Q_TCONT.Open ;
   Q_TCONT.locate('TCONT_DESCRICAO',StrNome,[]);

end;

procedure TFTpContato.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelTContato,FRelTContato);
   FRelTContato.TContato.Preview;
   FRelTContato.Close;
end;

end.

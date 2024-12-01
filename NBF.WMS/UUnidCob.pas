unit UUnidCob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFUnidCob = class(TForm)
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
    Q_UCOB: TwwQuery;
    UPD_UCOB: TUpdateSQL;
    DS_UCOB: TwwDataSource;
    Q_UCOBUCOB_ID: TAutoIncField;
    Q_UCOBUCOB_NOME: TStringField;
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_UCOBAfterDelete(DataSet: TDataSet);
    procedure Q_UCOBAfterPost(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnidCob: TFUnidCob;

implementation
 uses USenha,Umenu, UAbTabelas, URelUniCOB ;
{$R *.DFM}

procedure TFUnidCob.wwDBEdit3Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUnidCob.wwDBEdit3Exit(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFUnidCob.SpeedButton3Click(Sender: TObject);
begin
    close ; 
end;

procedure TFUnidCob.Q_UCOBAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_UCOBUCOB_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_UCOB])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UCOB.close ;
   Q_UCOB.Open ;
   Q_UCOB.locate('UCOB_NOME',StrNome,[]);



end;

procedure TFUnidCob.Q_UCOBAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_UCOBUCOB_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_UCOB])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UCOB.close ;
   Q_UCOB.Open ;
   Q_UCOB.locate('UCOB_NOME',StrNome,[]);


end;

procedure TFUnidCob.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFUnidCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFUnidCob.FormPaint(Sender: TObject);
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
                     FUnidCob.Q_UCOB.Open;

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

procedure TFUnidCob.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelUniCOB,FRelUniCOB);
   FRelUniCOB.UNICOB.Preview;
   FRelUniCOB.Close;
end;

end.

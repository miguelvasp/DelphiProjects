unit UTexPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, StdCtrls, Mask, wwdbedit, DBCtrls,
  Buttons, ExtCtrls;

type
  TFTexPadrao = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Q_TEX: TwwQuery;
    UPD_TEX: TUpdateSQL;
    DS_TEX: TwwDataSource;
    Q_TEXCodTexto: TStringField;
    Q_TEXLinha1: TStringField;
    Q_TEXLinha2: TStringField;
    Q_TEXLinha3: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_TEXAfterDelete(DataSet: TDataSet);
    procedure Q_TEXAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTexPadrao: TFTexPadrao;

implementation
uses USenha,Umenu, UAbTabelas, URelTPadrao ;
{$R *.DFM}

procedure TFTexPadrao.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFTexPadrao.Q_TEXAfterDelete(DataSet: TDataSet);
var StrNOME : string ;
begin
      StrNOME := Q_TEXCODTEXTO.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TEX])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TEX.close ;
   Q_TEX.Open ;
   Q_TEX.locate('CODTEXTO',StrNOME,[]);

end;

procedure TFTexPadrao.Q_TEXAfterPost(DataSet: TDataSet);
var StrNOME : string ;
begin
      StrNOME := Q_TEXCODTEXTO.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TEX])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TEX.close ;
   Q_TEX.Open ;
   Q_TEX.locate('CODTEXTO',StrNOME,[]);


end;

procedure TFTexPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTexPadrao.FormPaint(Sender: TObject);
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
                     FAbTabelas.Gauge1.Progress        := 1;
                     FTexPadrao.Q_TEX.Open;
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

procedure TFTexPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_TEX.close;
  action := cafree ; 
end;

procedure TFTexPadrao.wwDBEdit3Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTexPadrao.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTexPadrao.wwDBEdit2Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTexPadrao.wwDBEdit4Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTexPadrao.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTexPadrao.wwDBEdit1Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTexPadrao.wwDBEdit2Exit(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTexPadrao.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTexPadrao.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelTPadrao,FRelTPadrao);
   FRelTPadrao.TPADRAO.Preview;
   FRelTPadrao.Close;
end;

end.

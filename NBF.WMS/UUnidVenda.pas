unit UUnidVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFUnidVenda = class(TForm)
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
    Q_UVENDA: TwwQuery;
    UPD_UVENDA: TUpdateSQL;
    DS_UVENDA: TwwDataSource;
    Q_UVENDAUVEN_ID: TAutoIncField;
    Q_UVENDAUVEN_NOME: TStringField;
   
    procedure Q_UVENDAAfterDelete(DataSet: TDataSet);
    procedure Q_UVENDAAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnidVenda: TFUnidVenda;

implementation
uses USenha,Umenu, UAbTabelas, URelUniVenda ;
{$R *.DFM}
           

procedure TFUnidVenda.Q_UVENDAAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_UVENDAUVEN_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_UVENDA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UVENDA.close ;
   Q_UVENDA.Open ;
   Q_UVENDA.locate('UVEN_NOME',StrNome,[]);



end;
procedure TFUnidVenda.Q_UVENDAAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_UVENDAUVEN_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_UVENDA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UVENDA.close ;
   Q_UVENDA.Open ;
   Q_UVENDA.locate('UVEN_NOME',StrNome,[]);


end;

procedure TFUnidVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFUnidVenda.FormPaint(Sender: TObject);
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
                     FUnidVENDA.Q_UVENDA.Open;

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

procedure TFUnidVenda.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFUnidVenda.wwDBEdit3Enter(Sender: TObject);
begin
         (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUnidVenda.wwDBEdit3Exit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFUnidVenda.SpeedButton3Click(Sender: TObject);
begin
    close ; 
end;

procedure TFUnidVenda.FormCreate(Sender: TObject);
begin
   Q_UVENDA.open ; 
end;

procedure TFUnidVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_UVENDA.close ;
  action := cafree ;  
end;

procedure TFUnidVenda.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelUniVenda,FRelUniVenda);
   FRelUniVenda.UNIVENDA.Preview;
   FRelUniVenda.Close;
end;

end.

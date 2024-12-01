unit UTpServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, StdCtrls, DBCtrls, Wwdbigrd, Grids,
  Wwdbgrid, Mask, wwdbedit, Buttons, ExtCtrls;

type
  TFTpServico = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    wwDBEdit3: TwwDBEdit;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    DBMemo2: TDBMemo;
    Q_TSERV: TwwQuery;
    UPD_TSERV: TUpdateSQL;
    DS_TSERV: TwwDataSource;
    Q_TSERVTSER_ID: TAutoIncField;
    Q_TSERVTSER_NOME: TStringField;
    Q_TSERVTSER_CONCEITO: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure Q_TSERVAfterDelete(DataSet: TDataSet);
    procedure Q_TSERVAfterPost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTpServico: TFTpServico;

implementation
uses USenha,Umenu, UAbTabelas, URelTServico ;
{$R *.DFM}

procedure TFTpServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_TSERV.close;
   action := cafree ;
end;

procedure TFTpServico.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTpServico.FormPaint(Sender: TObject);
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
                     FTpSERVICO.Q_TSERV.Open;

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

procedure TFTpServico.Q_TSERVAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_TSERVTSER_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TSERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TSERV.close ;
   Q_TSERV.Open ;
   Q_TSERV.locate('TSER_NOME',StrNome,[]);



end;

procedure TFTpServico.Q_TSERVAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_TSERVTSER_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TSERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TSERV.close ;
   Q_TSERV.Open ;
   Q_TSERV.locate('TSER_NOME',StrNome,[]);



end;

procedure TFTpServico.SpeedButton3Click(Sender: TObject);
begin
   close ; 
end;

procedure TFTpServico.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpServico.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpServico.DBMemo2Enter(Sender: TObject);
begin
      (Sender as TDBMemo).Color := Claqua;
      FTpServico.KeyPreview:=false;
end;

procedure TFTpServico.DBMemo2Exit(Sender: TObject);
begin
  (Sender as TDBMemo).Color := Clwindow;
      FTpServico.KeyPreview:=true;
end;

procedure TFTpServico.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFTpServico.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelTServico,FRelTServico);
   FRelTServico.TServico.Preview;
   FRelTServico.Close;
end;

end.

unit UUF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFUF = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Q_UF: TwwQuery;
    UPD_UF: TUpdateSQL;
    DS_UF: TwwDataSource;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label7: TLabel;
    Q_UFUF_ALIQUOTACONH: TFloatField;
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_UFAfterDelete(DataSet: TDataSet);
    procedure Q_UFAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUF: TFUF;

implementation
uses USenha,Umenu, UAbTabelas , URelUF;
{$R *.DFM}

procedure TFUF.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUF.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFUF.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUF.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFUF.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFUF.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFUF.SpeedButton3Click(Sender: TObject);
begin
   close ; 
end;

procedure TFUF.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
   if button in [nbInsert] then
          wwDBEdit1.setfocus ;
end;

procedure TFUF.FormPaint(Sender: TObject);
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
                     FUF.Q_UF.Open;

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

procedure TFUF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFUF.Q_UFAfterDelete(DataSet: TDataSet);
var StrSIGLA : string ;
begin
   StrSIGLA :=  Q_UFUF_SIGLA.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_UF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UF.close ;
   Q_UF.Open ;
   Q_UF.locate('UF_SIGLA',StrSIGLA,[]);


end;

procedure TFUF.Q_UFAfterPost(DataSet: TDataSet);
var StrSIGLA : string ;
begin
   StrSIGLA :=  Q_UFUF_SIGLA.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_UF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_UF.close ;
   Q_UF.Open ;
   Q_UF.locate('UF_SIGLA',StrSIGLA,[]);



end;

procedure TFUF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_UF.close ;
  action := cafree ;
end;

procedure TFUF.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelUF,FRelUF);
   FRelUF.uf.Preview;
   FRelUF.Close;
end;

end.

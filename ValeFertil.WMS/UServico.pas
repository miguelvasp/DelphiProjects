unit UServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, wwdblook, DBTables, Wwquery, Wwdatsrc, Wwdbigrd, Grids, Wwdbgrid,
  StdCtrls, Mask, wwdbedit, DBCtrls, Buttons, ExtCtrls, Wwdotdot, Wwdbcomb;

type
  TFServico = class(TForm)
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
    DS_SERV: TwwDataSource;
    UPD_SERV: TUpdateSQL;
    Q_SERV: TwwQuery;
    Q_SERVSER_ID: TAutoIncField;
    Q_SERVTSER_ID: TIntegerField;
    Q_SERVSER_NOME: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_TSERV: TwwQuery;
    Q_TSERVTSER_NOME: TStringField;
    Q_TSERVTSER_ID: TAutoIncField;
    Q_TSERVTSER_CONCEITO: TMemoField;
    Q_SERVTSER_DESC: TStringField;
    Q_SERV2: TwwQuery;
    DS_SERV2: TwwDataSource;
    Q_SERV2SER_NOME: TStringField;
    Q_SERV2TSER_NOME: TStringField;
    Q_SERV2TSER_ID: TIntegerField;
    Label6: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Q_SERVSER_COMPOSICAO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_SERVAfterDelete(DataSet: TDataSet);
    procedure Q_SERVAfterPost(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DS_SERV2DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure Q_SERVNewRecord(DataSet: TDataSet);
    procedure Q_SERVBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FServico: TFServico;

implementation
uses USenha,Umenu, UAbTabelas, URelServico ;
{$R *.DFM}

procedure TFServico.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFServico.FormPaint(Sender: TObject);
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
                     FSERVICO.Q_SERV.Open;

                     FAbTabelas.Gauge1.Progress            := 2;
                     FSERVICO.Q_TSERV.Open;

                     FAbTabelas.Gauge1.Progress            := 3;
                     FSERVICO.Q_SERV2.Open;

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

procedure TFServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_TSERV.close ;
  Q_SERV.close ;
  Q_SERV2.close ;
  action := cafree  ;  
end;

procedure TFServico.Q_SERVAfterDelete(DataSet: TDataSet);
var
StrNome : string ;
begin
   STRNOme :=  Q_SERVSER_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_SERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_SERV.close ;
   Q_SERV.Open ;
   Q_SERV.locate('SER_NOME',StrNome,[]);

   Q_SERV2.close ;
   Q_SERV2.Open ;


end;

procedure TFServico.Q_SERVAfterPost(DataSet: TDataSet);
var
StrNome : string ;
StrTSER_ID :  string ;
begin
   STRNOme :=  Q_SERVSER_NOME.asstring ;
   StrTSER_ID := Q_SERVTSER_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_SERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_SERV.close ;
   Q_SERV.Open ;
   Q_SERV.locate('SER_NOME',StrNome,[]);

   Q_SERV2.close ;
   Q_SERV2.open  ;
   Q_SERV2.locate('SER_NOME;TSER_ID',vararrayof([StrNome,StrTSER_ID]),[]);


end;

procedure TFServico.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if button in [nbInsert] then
          wwDBEdit3.setfocus ;

  if button in [nbprior,nblast,nbfirst,nbnext] then
      Q_SERV2.locate('SER_NOME;TSER_ID',vararrayof([Q_SERVSER_NOME.asstring,Q_SERVTSER_Id.asstring]),[]);


end;

procedure TFServico.wwDBEdit3Exit(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFServico.wwDBEdit3Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFServico.wwDBLookupCombo1Exit(Sender: TObject);
begin
      (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFServico.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFServico.SpeedButton3Click(Sender: TObject);
begin
close ; 
end;

procedure TFServico.DS_SERV2DataChange(Sender: TObject; Field: TField);
begin
    if (Q_SERV2.state = dsbrowse ) then
        Q_SERV.locate('SER_NOME;TSER_ID',vararrayof([Q_SERV2SER_NOME.asstring,Q_SERV2TSER_Id.asstring]),[]);
end;

procedure TFServico.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelServico,FRelServico);
   FRelServico.SERVICO.Preview;
   FRelServico.Close;
end;

procedure TFServico.wwDBComboBox1Enter(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := Claqua ;
end;

procedure TFServico.wwDBComboBox1Exit(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := Clwindow  ;
end;

procedure TFServico.Q_SERVNewRecord(DataSet: TDataSet);
begin
     Q_SERVSER_COMPOSICAO.asstring := 'N' ;
end;

procedure TFServico.Q_SERVBeforePost(DataSet: TDataSet);
begin
    If wwDBEdit3.text = '' then begin
       MessageDlg('Nome � campo de preenchimento obrigat�rio !',mtWarning,[mbok],0);
       wwDBEdit3.setfocus ;
       abort ;
    end ;

    If wwDBLookupCombo1.text = '' then begin
       MessageDlg('Tipos de Servi�os � campo de preenchimento obrigat�rio !',mtWarning,[mbok],0);
       wwDBLookupCombo1.setfocus ;
       abort ;
    end ;


    If wwDBComboBox1.text = '' then begin
       MessageDlg('Composi��o de Frete � campo de preenchimento obrigat�rio !',mtWarning,[mbok],0);
       wwDBComboBox1.setfocus ;
       abort ;
    end ;


end;

end.

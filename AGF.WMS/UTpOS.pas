unit UTpOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Wwdbigrd, Grids, Wwdbgrid, Mask, wwdbedit, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, ComCtrls, Tabnotbk, wwdblook;

type
  TFTpOS = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Q_TOS: TwwQuery;
    UPD_TOS: TUpdateSQL;
    DS_TOS: TwwDataSource;
    Q_TOSTOS_ID: TAutoIncField;
    Q_TOSTOS_NOME: TStringField;
    Q_TOSTOS_CONCEITO: TMemoField;
    Q_TOSTOS_ORDEM: TIntegerField;
    TabbedNotebook1: TTabbedNotebook;
    Label15: TLabel;
    DBText3: TDBText;
    Panel6: TPanel;
    Label5: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBMemo2: TDBMemo;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Panel4: TPanel;
    Label19: TLabel;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    wwDBEdit2: TwwDBEdit;
    Label1: TLabel;
    Q_TDTO: TwwQuery;
    UPD_TDTO: TUpdateSQL;
    DS_TDTO: TwwDataSource;
    Q_TDTOTDTO_ID: TAutoIncField;
    Q_TDTOTOS_ID: TIntegerField;
    Q_TDTOTDOC_ID: TIntegerField;
    Q_TDTOTDTO_ORDEM: TIntegerField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_TDOC: TwwQuery;
    Q_TDOCTDOC_ID: TAutoIncField;
    Q_TDOCTDOC_NOME: TStringField;
    Q_TDTOTDOC_DESC: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure Q_TOSAfterDelete(DataSet: TDataSet);
    procedure Q_TOSAfterPost(DataSet: TDataSet);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure Q_TDTONewRecord(DataSet: TDataSet);
    procedure Q_TDTOAfterPost(DataSet: TDataSet);
    procedure Q_TDTOAfterDelete(DataSet: TDataSet);
    procedure Q_TDTOBeforePost(DataSet: TDataSet);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTpOS: TFTpOS;

implementation
uses USenha,Umenu, UAbTabelas, URelTOS ;

{$R *.DFM}

procedure TFTpOS.SpeedButton3Click(Sender: TObject);
begin
   close ; 
end;

procedure TFTpOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_TOS.close ;
  Q_TDTO.close ;
  Q_TDOC.close;
  action := cafree ;
end;

procedure TFTpOS.FormPaint(Sender: TObject);
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
                     FTpOS.Q_TOS.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     FTpOS.Q_TDTO.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     FTpOS.Q_TDOC.Open;


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

procedure TFTpOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTpOS.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin

    if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then
           wwDBEdit4.setfocus ;
         If (TabbedNotebook1.pageindex = 1) then
           wwDBEdit2.setfocus ;
   end ;  
end;

procedure TFTpOS.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpOS.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpOS.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpOS.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpOS.DBMemo2Exit(Sender: TObject);
begin
     (Sender as TDBMemo).Color := Clwindow;
      FTpOS.KeyPreview:=true;
end;

procedure TFTpOS.DBMemo2Enter(Sender: TObject);
begin
    (Sender as TDBMemo).Color := Claqua;
      FTpOS.KeyPreview:=false;
end;

procedure TFTpOS.Q_TOSAfterDelete(DataSet: TDataSet);
var
StrNome : string ;
StrORD : string ;
begin
   STRNOme :=  Q_TOSTOS_NOME.asstring ;
   StrORD := Q_TOSTOS_ORDEM.asstring     ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TOS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TOS.close ;
   Q_TOS.Open ;
   Q_TOS.locate('TOS_ORDEM;TOS_NOME',vararrayof([StrORD,STRNOme]),[]);



end;

procedure TFTpOS.Q_TOSAfterPost(DataSet: TDataSet);
var
StrNome : string ;
StrORD : string ;
begin
   STRNOme :=  Q_TOSTOS_NOME.asstring ;
   StrORD := Q_TOSTOS_ORDEM.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TOS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TOS.close ;
   Q_TOS.Open ;
   Q_TOS.locate('TOS_ORDEM;TOS_NOME',vararrayof([StrORD,STRNOme]),[]);



end;

procedure TFTpOS.TabbedNotebook1Click(Sender: TObject);
begin
  If (TabbedNotebook1.pageindex = 0) then
     DBNavigator1.datasource := DS_TOS;

  If (TabbedNotebook1.pageindex = 1) then begin
     DBNavigator1.datasource := DS_TDTO;
      Q_TDTO.edit;
  end ;

end;

procedure TFTpOS.Q_TDTONewRecord(DataSet: TDataSet);
begin
     Q_TDTOTOS_ID.asstring := Q_TOSTOS_ID.asstring ; 
end;

procedure TFTpOS.Q_TDTOAfterPost(DataSet: TDataSet);
var
StrORD2 : string ;
begin
   StrORD2 := Q_TDTOTDTO_ORDEM.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TDTO])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TDTO.close ;
   Q_TDTO.Open ;
   Q_TDTO.locate('TDTO_ORDEM',StrORD2,[]);



end;

procedure TFTpOS.Q_TDTOAfterDelete(DataSet: TDataSet);
var
StrORD2 : string ;
begin
   StrORD2 := Q_TDTOTDTO_ORDEM.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TDTO])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TDTO.close ;
   Q_TDTO.Open ;
   Q_TDTO.locate('TDTO_ORDEM',StrORD2,[]);



end;

procedure TFTpOS.Q_TDTOBeforePost(DataSet: TDataSet);
begin
    Q_TDTOTDOC_ID.asstring :=  Q_TDOCTDOC_ID.asstring  ;
end;

procedure TFTpOS.wwDBEdit2Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpOS.wwDBEdit2Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpOS.wwDBLookupCombo2Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFTpOS.wwDBLookupCombo2Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFTpOS.FormCreate(Sender: TObject);
begin
   TabbedNotebook1.pageindex := 0 ;
end;

procedure TFTpOS.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelTOS,FRelTOS);
   FRelTOS.TOS.Preview;
   FRelTOS.Close;
end;

end.

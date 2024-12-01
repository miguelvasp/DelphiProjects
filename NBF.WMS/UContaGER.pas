unit UContaGER;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Wwdotdot, Wwdbcomb, Db, Wwdatsrc, DBTables, Wwquery, wwdblook,
  wwDialog, wwidlg;

type
  TFContaGER = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Label3: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    DBCB_CLI_PESS: TwwDBComboBox;
    DBR_CON_ENSA: TDBRadioGroup;
    DBR_CON_OPER: TDBRadioGroup;
    Q_CG: TwwQuery;
    UPD_CG: TUpdateSQL;
    DS_CG: TwwDataSource;
    Q_CGCON_CODI: TStringField;
    Q_CGCON_DESC: TStringField;
    Q_CGCON_ENSA: TStringField;
    Q_CGCON_OPER: TStringField;
    Q_CGCON_FLOA: TFloatField;
    Q_CGCON_FLUX: TStringField;
    DBCB_CON_FLUX2: TwwDBComboBox;
    DBCB_CON_OPER: TwwDBComboBox;
    DBCB_CON_ENSA: TwwDBComboBox;
    Q_CGCON_CTCO: TStringField;
    Label6: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_CTCO: TwwQuery;
    Q_CTCOCTC_CODI: TStringField;
    Q_CTCOCTC_DESC: TStringField;
    wwSearchDialog1: TwwSearchDialog;
    SpeedButton4: TSpeedButton;
    Q_CG2: TwwQuery;
    Q_CG2CON_CODI: TStringField;
    Q_CG2CON_DESC: TStringField;
    Q_CG2CON_ENSA: TStringField;
    Q_CG2CON_OPER: TStringField;
    Q_CG2CON_FLOA: TFloatField;
    Q_CG2CON_FLUX: TStringField;
    Q_CG2CON_CTCO: TStringField;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_CGAfterDelete(DataSet: TDataSet);
    procedure Q_CGAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContaGER: TFContaGER;

implementation
uses USenha,Umenu, UAbTabelas, URelConGer ;
{$R *.DFM}

procedure TFContaGER.SpeedButton3Click(Sender: TObject);
begin
 close ;
end;

procedure TFContaGER.Q_CGAfterDelete(DataSet: TDataSet);
var StrCOD : string ;
begin
     StrCOD := Q_CGCON_CODI.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CG])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CG.close ;
   Q_CG.Open ;
   Q_CG.locate('CON_CODI',StrCOD,[]);

end;

procedure TFContaGER.Q_CGAfterPost(DataSet: TDataSet);
var StrCOD : string ;
begin
     StrCOD := Q_CGCON_CODI.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CG])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CG.close ;
   Q_CG.Open ;
   Q_CG.locate('CON_CODI',StrCOD,[]);


end;

procedure TFContaGER.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CG.close ;
  Q_CTCO.close  ; 
  action := cafree ; 
end;

procedure TFContaGER.FormPaint(Sender: TObject);
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
                     FAbTabelas.Gauge1.Progress            := 1;
                     Fcontager.Q_CG.Open;

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

procedure TFContaGER.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFContaGER.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFContaGER.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContaGER.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFContaGER.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContaGER.DBCB_CLI_PESSEnter(Sender: TObject);
begin
   (Sender as TwwDBcombobox).Color := Claqua ;
end;

procedure TFContaGER.DBCB_CLI_PESSExit(Sender: TObject);
begin
     (Sender as TwwDBcombobox).Color := Clwindow  ;
end;

procedure TFContaGER.wwDBLookupCombo2Enter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := Claqua ;
end;

procedure TFContaGER.wwDBLookupCombo2Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFContaGER.FormCreate(Sender: TObject);
begin
  Q_CTCO.open ; 
end;

procedure TFContaGER.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 If button in [nbInsert] then  
           wwDBEdit3.setfocus ;
end;

procedure TFContaGER.SpeedButton4Click(Sender: TObject);
begin
     Q_CG2.open ;
     wwSearchDialog1.execute ;
     Q_CG.locate('CON_CODI',Q_CG2CON_CODI.asstring,[]);
     Q_CG2.close ;
end;

procedure TFContaGER.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelCONGER,FRelCONGER);
   FRelCONGER.CONGER.Preview;
   FRelCONGER.Close;

end;

end.

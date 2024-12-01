unit UTpDocumento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Wwdotdot, Wwdbcomb;

type
  TFTpDocumento = class(TForm)
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
    Label2: TLabel;
    Label5: TLabel;
    wwDBEdit4: TwwDBEdit;
    Q_TDOC: TwwQuery;
    UPD_TDOC: TUpdateSQL;
    DS_TDOC: TwwDataSource;
    Q_TDOCTDOC_ID: TAutoIncField;
    Q_TDOCTDOC_NOME: TStringField;
    Q_TDOCTDOC_APELIDO: TStringField;
    DBMemo2: TDBMemo;
    Q_TDOCTDOC_CONCEITO: TMemoField;
    Label1: TLabel;
    DBCB_CLI_PESS: TwwDBComboBox;
    Q_TDOCTDOC_CATEGORIA: TStringField;
    Label6: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label7: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Q_TDOCTDOC_EMIT: TStringField;
    Q_TDOCTDOC_DEST: TStringField;
    Label8: TLabel;
    wwDBComboBox3: TwwDBComboBox;
    Q_TDOCTDOC_CONTRATO: TStringField;
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_TDOCAfterPost(DataSet: TDataSet);
    procedure Q_TDOCAfterDelete(DataSet: TDataSet);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure DS_TDOCDataChange(Sender: TObject; Field: TField);
    procedure Q_TDOCBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTpDocumento: TFTpDocumento;

implementation
uses USenha,Umenu, UAbTabelas ;
{$R *.DFM}

procedure TFTpDocumento.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpDocumento.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit3Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpDocumento.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTpDocumento.wwDBEdit4Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTpDocumento.wwDBEdit4Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTpDocumento.SpeedButton3Click(Sender: TObject);
begin
   close ; 
end;

procedure TFTpDocumento.Q_TDOCAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_TDOCTDOC_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TDOC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TDOC.close ;
   Q_TDOC.Open ;
   Q_TDOC.locate('TDOC_NOME',StrNome,[]);


end;

procedure TFTpDocumento.Q_TDOCAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOme :=  Q_TDOCTDOC_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TDOC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TDOC.close ;
   Q_TDOC.Open ;
   Q_TDOC.locate('TDOC_NOME',StrNome,[]);



end;

procedure TFTpDocumento.DBMemo2Enter(Sender: TObject);
begin
   (Sender as TDBMemo).Color := ClAqua;
    FTpDocumento.KeyPreview:=false;
end;

procedure TFTpDocumento.DBMemo2Exit(Sender: TObject);
begin
     (Sender as TDBMemo).Color := Clwindow;
      FTpDocumento.KeyPreview:=true;
end;

procedure TFTpDocumento.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTpDocumento.FormPaint(Sender: TObject);
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
                     FTpDocumento.Q_TDOC.Open;

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

procedure TFTpDocumento.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFTpDocumento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_TDOC.close ;
  action := cafree ; 
end;

procedure TFTpDocumento.DBCB_CLI_PESSEnter(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFTpDocumento.DBCB_CLI_PESSExit(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := CLWINDOW ;
end;

procedure TFTpDocumento.DS_TDOCDataChange(Sender: TObject; Field: TField);
begin

    If (Q_TDOC.state = dsedit ) or (Q_TDOC.state = dsBROWSE ) then begin
        If Q_TDOCTDOC_CATEGORIA.asstring = 'N' then begin
            Label6.visible := true ;
            Label7.visible := true ;
            wwDBComboBox1.visible := true ;
            wwDBComboBox2.visible := true ;
        end else begin
            Label6.visible := false ;
            Label7.visible := false ;
            wwDBComboBox1.visible := false ;
            wwDBComboBox2.visible := false ;
        end ;
    end ;

end;

procedure TFTpDocumento.Q_TDOCBeforePost(DataSet: TDataSet);
begin

    {  If (Q_TDOCTDOC_EMIT.asstring = Q_TDOCTDOC_DEST.asstring) and
         (wwDBComboBox1.text <> '') and (wwDBComboBox2.text <> '')  then begin
         MessageDlg('Emitente deve ser diferente do Destinatário ! ',mtWarning,[mbok],0);
         wwDBComboBox1.SetFocus;
         abort ;
      end ;    }

end;

end.

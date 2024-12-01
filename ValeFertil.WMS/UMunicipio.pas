unit UMunicipio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, wwdbedit, Wwdbigrd,
  Grids, Wwdbgrid, Db, DBTables, Wwdatsrc, Wwquery, wwDialog, wwidlg;

type
  TFMunicipio = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    SpeedButton4: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    DS_MUNI: TwwDataSource;
    UPD_MUNI: TUpdateSQL;
    Q_MUNIREG_ID: TIntegerField;
    Q_UF: TwwQuery;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_REG: TwwQuery;
    Q_REGREG_NOME: TStringField;
    Q_REGREG_ID: TAutoIncField;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Q_MUNIREG_NOME: TStringField;
    Q_MUNIUF_NOME: TStringField;
    wwSearchDialog1: TwwSearchDialog;
    qrIbge: TwwQuery;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label5: TLabel;
    qrIbgeID: TAutoIncField;
    qrIbgeMUNICIPIO: TStringField;
    qrIbgeUF: TStringField;
    Q_MUNIIBGE_ID: TIntegerField;
    Button1: TButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure Q_MUNIAfterPost(DataSet: TDataSet);
    procedure Q_MUNIAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMunicipio: TFMunicipio;

implementation
uses USenha,Umenu, UAbTabelas, URelMUNICIPIO, ufrmTBIBGE ;

{$R *.DFM}

procedure TFMunicipio.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFMunicipio.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMunicipio.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFMunicipio.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMunicipio.wwDBEdit1Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFMunicipio.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFMunicipio.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFMunicipio.wwDBLookupCombo2Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Claqua;
end;

procedure TFMunicipio.wwDBLookupCombo2Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFMunicipio.Q_MUNIAfterPost(DataSet: TDataSet);
Var
StrCOD : string ;
StrNOME : string ;
begin
   StrCOD := Q_MUNIDIPAM.asstring   ;
   StrNOME  := Q_MUNIMUN_NOME.asstring   ;

   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_MUNI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_MUNI.close ;
   Q_MUNI.Open ;
   Q_MUNI.locate('DIPAM;MUN_NOME',vararrayof([StrCOD,StrNOME]),[]);


end;

procedure TFMunicipio.Q_MUNIAfterDelete(DataSet: TDataSet);
Var
StrCOD : string ;
StrNOME : string ;
begin
   StrCOD := Q_MUNIDIPAM.asstring   ;
   StrNOME  := Q_MUNIMUN_NOME.asstring   ;

   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_MUNI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_MUNI.close ;
   Q_MUNI.Open ;
   Q_MUNI.locate('DIPAM;MUN_NOME',vararrayof([StrCOD,StrNOME]),[]);



end;

procedure TFMunicipio.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
         perform(WM_nextdlgctl,0,0);
    end;
end;

procedure TFMunicipio.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 3;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin

                     FAbTabelas.Gauge1.Progress            := 1;
                     Q_MUNI.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     Q_REG.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     Q_UF.Open;

                     qrIbge.Open

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

procedure TFMunicipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_MUNI.close;
  Q_REG.close;
  Q_UF.close ;
  action := cafree ;
end;

procedure TFMunicipio.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button in [nbInsert] then
          wwDBEdit3.setfocus ;
end;

procedure TFMunicipio.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelMUNICIPIO,FRelMUNICIPIO);
   FRelMUNICIPIO.MUNI.Preview;
   FRelMUNICIPIO.Close;
end;

procedure TFMunicipio.SpeedButton4Click(Sender: TObject);
begin
   wwSearchDialog1.execute  ;
end;

procedure TFMunicipio.Button1Click(Sender: TObject);
begin
   frmTBIBGE := TfrmTBIBGE.Create(Self);
   frmTBIBGE.ShowModal;
end;

end.

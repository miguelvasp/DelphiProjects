unit UCodFAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Wwdotdot, Wwdbcomb, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, Mask,
  wwdbedit, DBCtrls, Buttons, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  wwDialog, wwidlg;

type
  TFCodFAT = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    wwDBEdit3: TwwDBEdit;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    GRB_ICMS: TGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBCB_CFA_TICM: TwwDBComboBox;
    DBE_CFA_RICM: TwwDBEdit;
    DBCB_CFA_FICM: TwwDBComboBox;
    GRB_IPI: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBE_CFA_IIPI: TwwDBComboBox;
    DBCB_CFA_TIPI: TwwDBComboBox;
    GRB_ISS: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DBCB_CFA_FISS: TwwDBComboBox;
    DBE_CFA_AISS: TwwDBEdit;
    GRB_OUTRAS: TGroupBox;
    Label16: TLabel;
    DBCB_CFA_GDUP: TwwDBComboBox;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_FAT: TwwQuery;
    DS_FAT: TwwDataSource;
    Q_FATCFA_CODI: TStringField;
    Q_FATCFA_DCFO: TStringField;
    Q_FATCFA_DCCF: TStringField;
    Q_FATTDOC_ID: TIntegerField;
    Q_FATCFA_TPA1: TStringField;
    Q_FATCFA_TPA2: TStringField;
    Q_FATCFA_TPA3: TStringField;
    Q_FATCFA_TICM: TStringField;
    Q_FATCFA_RICM: TFloatField;
    Q_FATCFA_FICM: TStringField;
    Q_FATCFA_IIPI: TStringField;
    Q_FATCFA_TIPI: TStringField;
    Q_FATCFA_FISS: TStringField;
    Q_FATCFA_AISS: TFloatField;
    Q_FATCFA_GDUP: TStringField;
    Q_TDOC: TwwQuery;
    DS_TDOC: TwwDataSource;
    Q_TDOCTDOC_ID: TAutoIncField;
    Q_TDOCTDOC_NOME: TStringField;
    Q_TDOCTDOC_CONCEITO: TMemoField;
    Q_TDOCTDOC_APELIDO: TStringField;
    Q_TDOCTDOC_CATEGORIA: TStringField;
    Q_TDOCTDOC_EMIT: TStringField;
    Q_TDOCTDOC_DEST: TStringField;
    Q_TEX: TwwQuery;
    DS_TEX: TwwDataSource;
    wwDataSource2: TwwDataSource;
    Q_TEXCodTexto: TStringField;
    Q_TEXLinha1: TStringField;
    Q_TEXLinha2: TStringField;
    Q_TEXLinha3: TStringField;
    Q_TEX2: TwwQuery;
    DS_TEX2: TwwDataSource;
    Q_TEX2CodTexto: TStringField;
    Q_TEX2Linha1: TStringField;
    Q_TEX2Linha2: TStringField;
    Q_TEX2Linha3: TStringField;
    Q_TEX3: TwwQuery;
    DS_TEX3: TwwDataSource;
    Q_TEX3CodTexto: TStringField;
    Q_TEX3Linha1: TStringField;
    Q_TEX3Linha2: TStringField;
    Q_TEX3Linha3: TStringField;
    Q_FATCFA_ID: TAutoIncField;
    UPD_FAT: TUpdateSQL;
    SpeedButton4: TSpeedButton;
    wwSearchDialog1: TwwSearchDialog;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Q_FATCST_PIS: TStringField;
    Q_FATCST_COFINS: TStringField;
    Q_FATALQ_PIS: TFloatField;
    Q_FATALQ_COFINS: TFloatField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure DBE_CFA_RICMEnter(Sender: TObject);
    procedure DBE_CFA_AISSEnter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure DBE_CFA_AISSExit(Sender: TObject);
    procedure DBE_CFA_RICMExit(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure DBCB_CFA_TICMExit(Sender: TObject);
    procedure DBCB_CFA_FICMExit(Sender: TObject);
    procedure DBE_CFA_IIPIExit(Sender: TObject);
    procedure DBCB_CFA_TIPIExit(Sender: TObject);
    procedure DBCB_CFA_IPIDExit(Sender: TObject);
    procedure DBCB_CFA_TICMEnter(Sender: TObject);
    procedure DBCB_CFA_FICMEnter(Sender: TObject);
    procedure DBE_CFA_IIPIEnter(Sender: TObject);
    procedure DBCB_CFA_TIPIEnter(Sender: TObject);
    procedure DBCB_CFA_IPIDEnter(Sender: TObject);
    procedure DBCB_CFA_GDUPEnter(Sender: TObject);
    procedure DBCB_CFA_FISSEnter(Sender: TObject);
    procedure DBCB_CFA_FISSExit(Sender: TObject);
    procedure DBCB_CFA_GDUPExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_FATAfterDelete(DataSet: TDataSet);
    procedure Q_FATAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCodFAT: TFCodFAT;

implementation
uses USenha,Umenu, UAbTabelas, URelCodFat ;
{$R *.DFM}


procedure TFCodFAT.wwDBEdit3Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFCodFAT.wwDBEdit1Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFCodFAT.wwDBEdit2Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFCodFAT.DBE_CFA_RICMEnter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFCodFAT.DBE_CFA_AISSEnter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFCodFAT.wwDBEdit3Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFCodFAT.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFCodFAT.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFCodFAT.DBE_CFA_AISSExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFCodFAT.DBE_CFA_RICMExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFCodFAT.wwDBLookupCombo5Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAQUA ;
end;

procedure TFCodFAT.wwDBLookupCombo7Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAQUA ;
end;

procedure TFCodFAT.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAQUA ;
end;

procedure TFCodFAT.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAQUA ;
end;

procedure TFCodFAT.wwDBLookupCombo5Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFCodFAT.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFCodFAT.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFCodFAT.wwDBLookupCombo7Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFCodFAT.DBCB_CFA_TICMExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow;
end;

procedure TFCodFAT.DBCB_CFA_FICMExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow;
end;

procedure TFCodFAT.DBE_CFA_IIPIExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow;
end;

procedure TFCodFAT.DBCB_CFA_TIPIExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow;
end;

procedure TFCodFAT.DBCB_CFA_IPIDExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow;
end;

procedure TFCodFAT.DBCB_CFA_TICMEnter(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBCB_CFA_FICMEnter(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBE_CFA_IIPIEnter(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBCB_CFA_TIPIEnter(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBCB_CFA_IPIDEnter(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBCB_CFA_GDUPEnter(Sender: TObject);
begin
 (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBCB_CFA_FISSEnter(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Claqua ;
end;

procedure TFCodFAT.DBCB_CFA_FISSExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow ;
  end ; 

procedure TFCodFAT.DBCB_CFA_GDUPExit(Sender: TObject);
begin
  (Sender as TwwDBcomboBOX).Color := Clwindow ;
end;

procedure TFCodFAT.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFCodFAT.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
    end;
end;

procedure TFCodFAT.FormPaint(Sender: TObject);
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
                     FAbTabelas.Gauge1.Progress            := 1;
                     FCodFAT.Q_FAT.Open;



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

procedure TFCodFAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_FAT.close ;
   Q_TDOC.close ;
   Q_TEX.close ;
   Q_TEX2.close ;
   Q_TEX3.close ;
   action := cafree ;
end;

procedure TFCodFAT.Q_FATAfterDelete(DataSet: TDataSet);
var StrNOME : string ;
begin
      StrNOME := Q_FATCFA_CODI.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_FAT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_FAT.close ;
   Q_FAT.Open ;
   Q_FAT.locate('CFA_CODI',StrNOME,[]);

end;

procedure TFCodFAT.Q_FATAfterPost(DataSet: TDataSet);
var StrNOME : string ;
begin
      StrNOME := Q_FATCFA_CODI.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_FAT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_FAT.close ;
   Q_FAT.Open ;
   Q_FAT.locate('CFA_CODI',StrNOME,[]);


end;

procedure TFCodFAT.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   Q_TDOC.open ;
   Q_TEX.open ;
   Q_TEX2.open ;
   Q_TEX3.open ;
end;

procedure TFCodFAT.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRelCodFat,FRelCodFat);
   FRelCodFat.CODFAT.Preview;
   FRelCodFat.Close;
end;

procedure TFCodFAT.SpeedButton4Click(Sender: TObject);
begin
   wwSearchDialog1.execute ;  {}
end;

end.

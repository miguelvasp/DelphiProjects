unit UContrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Mask, wwdbedit, StdCtrls, wwdblook,
  Wwdbigrd, Grids, Wwdbgrid, DBCtrls, ComCtrls, Tabnotbk, Buttons, ExtCtrls,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg;

type
  TFContrato = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    TabbedNotebook1: TTabbedNotebook;
    Label15: TLabel;
    DBText3: TDBText;
    Q_CTT: TwwQuery;
    DS_CTT: TwwDataSource;
    Q_CLIN: TwwQuery;
    Q_CTTCTT_ID: TAutoIncField;
    Q_CTTCLIN_ID: TIntegerField;
    Q_CTTCTT_NOME: TStringField;
    Q_CTTCTT_DT_INICIO: TDateTimeField;
    Q_CTTCTT_DT_FINAL: TDateTimeField;
    Q_CTTEMP_ID: TIntegerField;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label7: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label8: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Q_CLINCLIN_RAZA: TStringField;
    Q_TOS: TwwQuery;
    Q_TOSTOS_ID: TAutoIncField;
    Q_TOSTOS_NOME: TStringField;
    Q_CTTTOS_ID: TIntegerField;
    UPD_CTT: TUpdateSQL;
    Q_CTTTOS_NOMe: TStringField;
    Q_CTTCLIN_NOME: TStringField;
    Label9: TLabel;
    DBText1: TDBText;
    Q_CTTxSERV: TwwQuery;
    DS_CTTxSERV: TwwDataSource;
    UPD_CTTxSERV: TUpdateSQL;
    Q_CTTxSERVCTTSERV_ID: TAutoIncField;
    Q_CTTxSERVCTT_ID: TIntegerField;
    Q_CTTxSERVSER_ID: TIntegerField;
    Q_CTTxSERVTSER_ID: TIntegerField;
    Q_CTTxSERVTDOC_ID: TIntegerField;
    Q_SERV: TwwQuery;
    Q_TSERV: TwwQuery;
    Q_SERVSER_ID: TAutoIncField;
    Q_SERVTSER_ID: TIntegerField;
    Q_SERVSER_NOME: TStringField;
    Q_TSERVTSER_ID: TAutoIncField;
    Q_TSERVTSER_NOME: TStringField;
    Q_TSERVTSER_CONCEITO: TMemoField;
    Q_CTTxSERVTSER_NOME: TStringField;
    Q_CTTxSERVCTTSERV_COBRADO: TStringField;
    Q_CTTxSERVSER_NOME: TStringField;
    Q_CTTxSERVTDOC_NOME: TStringField;
    Q_CTTxESPEC: TwwQuery;
    DS_CTTxESPEC: TwwDataSource;
    UPD_CTTxESPEC: TUpdateSQL;
    Q_CTTxESPECCTTESPEC_ID: TAutoIncField;
    Q_CTTxESPECCTTESPEC_ORDEM: TIntegerField;
    Q_CTTxESPECCTT_ID: TIntegerField;
    Q_CTTxESPECSER_ID: TIntegerField;
    Q_CTTxESPECTSER_ID: TIntegerField;
    Q_CTTxESPECUCOB_ID: TIntegerField;
    Q_CTTxESPECCTTESPEC_TPCARGA: TStringField;
    Q_CTTxESPECCLIF_ID: TIntegerField;
    Q_CTTxESPECVEIC_ID: TIntegerField;
    Q_CTTxESPECREG_ID: TIntegerField;
    Q_CTTxESPECTPRO_ID: TIntegerField;
    Q_CTTxESPECCTTESPEC_QTDEPALLET_DE: TIntegerField;
    Q_CTTxESPECCTTESPEC_QTDEPALLET_ATE: TIntegerField;
    Q_UCOB: TwwQuery;
    Q_CLIF: TwwQuery;
    Q_REG: TwwQuery;
    Q_REGREG_ID: TAutoIncField;
    Q_REGREG_NOME: TStringField;
    Q_VEIC: TwwQuery;
    Q_TPROD: TwwQuery;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_VEICVEIC_NOME: TStringField;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODCLIN_ID: TIntegerField;
    Q_UCOBUCOB_ID: TAutoIncField;
    Q_UCOBUCOB_NOME: TStringField;
    Q_CTTxESPECREG_NOME: TStringField;
    Q_CTTxESPECCLIF_NOME: TStringField;
    Q_CTTxESPECVEIC_NOME: TStringField;
    Q_CTTxESPECUCOB_NOME: TStringField;
    Q_CTTxESPECTPRO_NOME: TStringField;
    TabbedNotebook2: TTabbedNotebook;
    Label47: TLabel;
    DBText11: TDBText;
    Label48: TLabel;
    DBText12: TDBText;
    Panel3: TPanel;
    Label13: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBComboBox4: TwwDBComboBox;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo10: TwwDBLookupCombo;
    wwDBLookupCombo11: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBComboBox2: TwwDBComboBox;
    Panel4: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DBCB_CLI_PESS: TwwDBComboBox;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBComboBox1: TwwDBComboBox;
    Label12: TLabel;
    Q_GERAESPEC: TwwQuery;
    Q_SERVTSER_NOME: TStringField;
    DS_CLIN: TwwDataSource;
    Q_CLIFNBFINAL_ID: TAutoIncField;
    Q_CLIFCLIF_ID: TIntegerField;
    Q_CLIFCLIN_ID: TIntegerField;
    Q_CLIFNBFINAL_DT_INCL: TDateTimeField;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_CTTxESPECCTTESPEC_FATOR: TFloatField;
    Q_TDTO: TwwQuery;
    DS_TOS: TwwDataSource;
    Q_TDTOTDTO_ID: TAutoIncField;
    Q_TDTOTOS_ID: TIntegerField;
    Q_TDTOTDOC_ID: TIntegerField;
    Q_TDTOTDTO_ORDEM: TIntegerField;
    Q_TDTOTDOC_NOME: TStringField;
    Q_CTTxESPECCTTESPEC_PESO_DE: TFloatField;
    Q_CTTxESPECCTTESPEC_PESO_ATE: TFloatField;
    Q_CTTxESPECCTTESPEC_AREA_DE: TFloatField;
    Q_CTTxESPECCTTESPEC_AREA_ATE: TFloatField;
    Q_CTTxESPECCTTESPEC_VOL_DE: TFloatField;
    Q_CTTxESPECCTTESPEC_VOL_ATE: TFloatField;
    Q_ESPECdel: TwwQuery;
    Q_CTTxESPECCTTSERV_ID: TIntegerField;
    Q_SERVdel: TwwQuery;
    Q_OSconsulta: TwwQuery;
    Panel5: TPanel;
    Q_CLINCLIN_ID: TAutoIncField;
    Label45: TLabel;
    wwDBComboBox3: TwwDBComboBox;
    Q_CTTCTT_TERCEIRO: TStringField;
    Q_AUX: TwwQuery;
    Q_CLIFNBFINAL_COD_CLIN: TStringField;
    SpeedButton2: TSpeedButton;
    wwSearchDialog1: TwwSearchDialog;
    Q_CTT2: TwwQuery;
    SpeedButton4: TSpeedButton;
    wwSearchDialog2: TwwSearchDialog;
    Q_CTTxSERV2: TwwQuery;
    Q_CTTxSERV2CTTSERV_ID: TAutoIncField;
    Q_CTTxSERV2CTT_ID: TIntegerField;
    Q_CTTxSERV2SER_ID: TIntegerField;
    Q_CTTxSERV2TSER_ID: TIntegerField;
    Q_CTTxSERV2CTTSERV_COBRADO: TStringField;
    Q_CTTxSERV2TDOC_ID: TIntegerField;
    Q_CTTxSERV2TSER_NOME: TStringField;
    Q_CTTxSERV2SER_NOME: TStringField;
    Q_CTT3: TwwQuery;
    DS_CTT3: TwwDataSource;
    Q_CTT3CTT_ID: TAutoIncField;
    Q_CTT3CLIN_ID: TIntegerField;
    Q_CTT3CTT_NOME: TStringField;
    Q_CTT3TOS_ID: TIntegerField;
    Q_CTT3CTT_DT_INICIO: TDateTimeField;
    Q_CTT3CTT_DT_FINAL: TDateTimeField;
    Q_CTT3EMP_ID: TIntegerField;
    Q_CTT3CTT_TERCEIRO: TStringField;
    Q_CTT3CLIN_RAZA: TStringField;
    Q_CTT3TOS_NOME: TStringField;
    Q_CTT2CLIN_RAZA: TStringField;
    Q_CTT2CLIN_NOME: TStringField;
    Q_CTT2CLIN_ID: TAutoIncField;
    Label18: TLabel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Q_EMP: TwwQuery;
    Q_EMPPAR_ID: TAutoIncField;
    Q_CTTPAR_ID: TIntegerField;
    Q_EMPPAR_NOME: TStringField;
    DBText2: TDBText;
    Q_CTTxESPECCTTESPEC_MINIMA: TFloatField;
    Q_CTTMIN_M2: TFloatField;
    Label19: TLabel;
    wwDBEdit16: TwwDBEdit;
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure Q_CTTAfterDelete(DataSet: TDataSet);
    procedure Q_CTTAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo8Enter(Sender: TObject);
    procedure wwDBLookupCombo9Enter(Sender: TObject);
    procedure wwDBLookupCombo11Enter(Sender: TObject);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBLookupCombo9Exit(Sender: TObject);
    procedure wwDBLookupCombo11Exit(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit15Enter(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure wwDBEdit15Exit(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_CTTxSERVAfterDelete(DataSet: TDataSet);
    procedure Q_CTTxSERVBeforePost(DataSet: TDataSet);
    procedure Q_CTTxSERVAfterPost(DataSet: TDataSet);
    procedure Q_CTTxSERVNewRecord(DataSet: TDataSet);
    procedure Q_CTTxESPECAfterDelete(DataSet: TDataSet);
    procedure Q_CTTxESPECAfterPost(DataSet: TDataSet);
    procedure Q_CTTxESPECNewRecord(DataSet: TDataSet);
    procedure TabbedNotebook2Click(Sender: TObject);
    procedure TabbedNotebook2Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DS_CTTxSERVDataChange(Sender: TObject; Field: TField);
    procedure Q_CTTxESPECBeforePost(DataSet: TDataSet);
    procedure Q_CTTxSERVBeforeDelete(DataSet: TDataSet);
    procedure Q_CTTBeforeDelete(DataSet: TDataSet);
    procedure Q_CTTAfterCancel(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DS_CTTDataChange(Sender: TObject; Field: TField);
    procedure Q_CTTBeforeInsert(DataSet: TDataSet);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure Q_CTTBeforePost(DataSet: TDataSet);
    procedure Q_CTTNewRecord(DataSet: TDataSet);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContrato: TFContrato;
  BOOPRIMEIRO : BOOLEAN ;
  BOOPRIMEIRO2 : BOOLEAN ;
  CONTR : string ;
 
implementation
uses USenha,Umenu, UAbTabelas, UCliente;
{$R *.DFM}

procedure TFContrato.wwDBLookupCombo1Enter(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo1Exit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;

  If wwDBLookupCombo1.text <> '' then
     wwDBLookupCombo1.text := Q_CLINCLIN_RAZA.asstring  ;

end;

procedure TFContrato.wwDBLookupCombo3Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo3Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;

   If wwDBLookupCombo3.text <> '' then
     wwDBLookupCombo3.text := Q_TOSTOS_NOME.asstring  ;

end;

procedure TFContrato.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit2Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFContrato.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFContrato.wwDBEdit3Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit4Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit4Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFContrato.Q_CTTAfterDelete(DataSet: TDataSet);
var
StrNOMECTTT : string ;
begin
   StrNOMECTTT := Q_CTTCTT_NOME.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CTT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   IF (StrNOMECTTT <> '')  then begin
       Q_CTT.close ;
       Q_CTT.Open ;
       Q_CTT.locate('CTT_NOME',StrNOMECTTT,[]);
   end ; 

   MessageDlg(' Contrato juntamente com os seus Serviços/Especificações foram excluídos com sucesso !  ',mtInformation,[mbok],10);




end;

procedure TFContrato.Q_CTTAfterPost(DataSet: TDataSet);
var
StrNOMECTTT : string ;
begin
   StrNOMECTTT := Q_CTTCTT_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CTT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CTT.close ;
   Q_CTT.Open  ;

   if StrNOMECTTT = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add('select max(CTT_ID) as Numero from CONTRATO') ;
     Q_AUX.open ;
     StrNOMECTTT := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
   Q_CTT.locate('CTT_ID',StrNOMECTTT,[]);


   wwDBLookupCombo1.visible := false ;

end;

procedure TFContrato.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
    end;
end;

procedure TFContrato.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 14;
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
                     FContrato.Q_CTT.Open;

                     If ( EXISTE = 'N')  then
                       FContrato.Q_CTT.Insert ;

                     If ( EXISTE = 'S')  then
                       FContrato.Q_CTT.locate('CTT_ID',FCliente.Q_CTTCTT_ID.asstring,[]);



                     FAbTabelas.Gauge1.Progress            := 2;
                     FContrato.Q_CLIN.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     FContrato.Q_TOS.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     FContrato.Q_CTTxSERV.Open;
                     FAbTabelas.Gauge1.Progress            := 5;
                     FContrato.Q_CTTxESPEC.Open;
                     FAbTabelas.Gauge1.Progress            := 6;
                     FContrato.Q_CLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 7;
                     FContrato.Q_REG.Open;
                     FAbTabelas.Gauge1.Progress            := 8;
                     FContrato.Q_TPROD.Open;
                     FAbTabelas.Gauge1.Progress            := 9;
                     FContrato.Q_UCOB.Open;
                     FAbTabelas.Gauge1.Progress            := 10;
                     FContrato.Q_VEIC.Open;
                     FAbTabelas.Gauge1.Progress            := 11;
                     FContrato.Q_TDTO.Open;
                     FAbTabelas.Gauge1.Progress            := 12;
                     FContrato.Q_SERV.Open;
                     FAbTabelas.Gauge1.Progress            := 13;
                     FContrato.Q_TSERV.Open;
                     FAbTabelas.Gauge1.Progress            := 14;
                     FContrato.Q_EMP.Open;
                     BOOPRIMEIRO2 := TRUE ;
                    
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

procedure TFContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Q_CTT.close ;
     Q_CLIN.close ;
     Q_TOS.close ;
     Q_CTTxSERV.close ;
     Q_CTTxESPEC.close ;
     Q_CLIF.close ;
     Q_REG.close ;
     Q_TPROD.close ;
     Q_VEIC.close ;
     Q_TDTO.close ;
     Q_SERV.close ;
     Q_TSERV.close ;
     Q_UCOB.close ;
     Q_AUX.close ;
     Q_EMP.close; 
     action := cafree ;
end;

procedure TFContrato.SpeedButton3Click(Sender: TObject);
begin
        if not BooPrimeiro then Begin
            If (Q_CTTxESPEC.state = dsedit ) or
                (Q_CTTxESPEC.state = dsinsert ) {and
                 (Q_CTTxSERVSER_ID.asstring <> '')} then  begin

                  If (TabbedNotebook2.pageindex = 1) then begin

                       If (wwDBEdit5.text = '') then begin
                           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit5.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBEdit6.text = '') then begin
                           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If  strtofloat(wwDBEdit6.text) <= 0  then begin
                           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo5.text = '') then begin
                           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo5.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBComboBox4.text = '') then begin
                           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBComboBox4.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo9.text = '') then begin
                           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo9.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo10.text = '') then begin
                           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo10.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       Q_AUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
                       Q_AUX.Sql.Add(' where CLIN_ID = ' + Q_CTTCLIN_ID.asstring ) ;
                       Q_AUX.open ;

                       If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
                             If (wwDBLookupCombo11.text = '') then begin
                                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                                wwDBLookupCombo11.SetFocus;
                                Q_CTTxESPEC.edit;
                                Abort;
                             end ;
                       end ;

                  end ;

            end ;

        end ;
        BOOPRIMEIRO := FALSE ;
  EXISTE := '' ; 
  close ;
end;

procedure TFContrato.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFContrato.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFContrato.DBCB_CLI_PESSExit(Sender: TObject);
begin
     (Sender as TwwDBComboBOX).Color := Clwindow;

    If (Q_CTTxSERVCTTSERV_COBRADO.asstring = 'S') or
       (Q_CTTxSERVCTTSERV_COBRADO.asstring = '' ) then
      Panel5.visible := false
    else
      Panel5.visible := true ;
end;

procedure TFContrato.DBCB_CLI_PESSEnter(Sender: TObject);
begin
       (Sender as TwwDBComboBOX).Color := Claqua;
end;

procedure TFContrato.wwDBLookupCombo5Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo8Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo9Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo11Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo10Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFContrato.wwDBComboBox4Enter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := ClAqua;
end;

procedure TFContrato.wwDBLookupCombo5Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFContrato.wwDBLookupCombo8Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFContrato.wwDBLookupCombo10Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFContrato.wwDBLookupCombo9Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFContrato.wwDBLookupCombo11Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFContrato.wwDBComboBox4Exit(Sender: TObject);
begin
    (Sender as TwwDBcombobox).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit5Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit5Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit6Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit7Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit8Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit9Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit10Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit11Enter(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit12Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit13Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit14Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit15Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit8Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit12Exit(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit14Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit15Exit(Sender: TObject);
begin
(Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit6Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFContrato.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     if button in [nbInsert] then  begin
         If (TabbedNotebook1.pageindex = 0) then
           wwDBLookupCombo1.setfocus ;

         If (TabbedNotebook1.pageindex = 1) and (TabbedNotebook2.pageindex = 0) then begin
             wwDBLookupCombo2.setfocus ;
             Label12.caption := '' ;
         end ;

         If (TabbedNotebook1.pageindex = 1) and (TabbedNotebook2.pageindex = 1) then begin
             wwdbedit5.setfocus ;

             ///Panel3.enabled := true;
         end ;

     end ;

     if (Q_CTTCTT_ID.asstring <> '') then
        Q_CTT3.locate('CTT_ID',Q_CTTCTT_ID.asstring,[]);

     


end;

procedure TFContrato.TabbedNotebook1Click(Sender: TObject);
begin
     DBNavigator1.enabled := true ; 
  If (TabbedNotebook1.pageindex = 0) then
     DBNavigator1.datasource := DS_CTT;

  If (TabbedNotebook1.pageindex = 1) then begin
     DBNavigator1.datasource := DS_CTTxSERV;
     TabbedNotebook2.pageindex := 0 ;
     Q_CTTxSERV.edit;
     Q_CTTxSERV.cancel;
  end ;                       

  If wwDBLookupCombo2.text = '' then 
     LaBel12.caption := '' ;
end;

procedure TFContrato.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   BOOPRIMEIRO := TRUE ;
   TabbedNotebook1.pageindex := 0 ;
   BOOPRIMEIRO := TRUE ;
   TabbedNotebook2.pageindex := 0 ;
   Q_CTT3.open ;

end;

procedure TFContrato.Q_CTTxSERVAfterDelete(DataSet: TDataSet);
var
StrSER_ID : string ;
StrCTT_ID  : string ;
begin
   StrSER_ID := Q_CTTxSERVSER_ID.asstring   ;
   StrCTT_ID  := Q_CTTxSERVCTT_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CTTxSERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   MessageDlg(' Serviço juntamente com suas Especificações foram excluídas com sucesso !  ',mtInformation,[mbok],10);

   IF (StrSER_ID = '') or (StrCTT_ID = '') then begin
      Label12.caption := '' ;
      ABORT ;
   end ;

   Q_CTTxSERV.close ;
   Q_CTTxSERV.Open ;
   Q_CTTxSERV.locate('SER_ID;CTT_ID',vararrayof([StrSER_ID,StrCTT_ID]),[]);



end;

procedure TFContrato.Q_CTTxSERVBeforePost(DataSet: TDataSet);
begin
   ///Q_CTTxSERVSER_ID.asstring   := Q_SERVSER_ID.asstring  ;
   Q_CTTxSERVTSER_ID.asstring  := Q_SERVTSER_ID.asstring ;
   ////Q_CTTxSERVTDOC_ID.asstring     := Q_TDOCTDOC_ID.asstring ;
end;

procedure TFContrato.Q_CTTxSERVAfterPost(DataSet: TDataSet);
var
StrSER_ID : string ;
StrCTT_ID  : string ;
begin
   StrSER_ID := Q_CTTxSERVSER_ID.asstring   ;
   StrCTT_ID  := Q_CTTxSERVCTT_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CTTxSERV])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CTTxSERV.close ;
   Q_CTTxSERV.Open ;
   Q_CTTxSERV.locate('SER_ID;CTT_ID',vararrayof([StrSER_ID,StrCTT_ID]),[]);


   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add( ' select count(*) as Numero from CONTRATO_ESPECIFICACOES ' ) ;
   Q_AUX.Sql.Add( ' where CTTSERV_ID = ' + Q_CTTxSERVCTTSERV_ID.asstring ) ;
   Q_AUX.open ; }


  If (Q_CTTxSERVCTTSERV_COBRADO.asstring = 'S') and
     (Q_CTTxSERVSER_ID.asstring <> '') {and
     (Q_AUX.fieldbyname('NUMERO').asinteger = 0)} then  begin

     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select count(*) as Numero from CONTRATO_ESPECIFICACOES ' ) ;
     Q_AUX.Sql.Add( ' where CTTSERV_ID = ' + Q_CTTxSERVCTTSERV_ID.asstring ) ;
     Q_AUX.open ;

     If Q_AUX.fieldbyname('Numero').asinteger > 0 then begin

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('UPDATE CONTRATO_ESPECIFICACOES SET ') ;
             Q_AUX.Sql.Add('SER_ID = ' + Q_CTTxSERVSER_ID.asstring ) ;
             Q_AUX.Sql.Add('Where  CTTSERV_ID = ' + Q_CTTxSERVCTTSERV_ID.asstring ) ;
             Q_AUX.ExecSql;

             Q_CTTxESPEC.close ;
             Q_CTTxESPEC.open ;


     end else begin


           TabbedNotebook2.pageindex := 1 ;
           Q_AUX.close ;
           Q_AUX.Sql.Clear ;
           Q_AUX.Sql.Add( ' select min(TPRO_id) as Numero from TPPRODUTO_CLINBF ' ) ;
           Q_AUX.Sql.Add( ' where CLIN_ID = ' + Q_CttCLIN_ID.asstring ) ;
           Q_AUX.open ;      


           IF Q_AUX.fieldbyname('NUMERO').asstring <> '' then
              Q_TPROD.locate('TPRO_ID',Q_AUX.fieldbyname('NUMERO').asstring,[]);

           Q_GERAESPEC.close;
           Q_GERAESPEC.Sql.Clear;
           Q_GERAESPEC.Sql.Add(' insert into CONTRATO_ESPECIFICACOES (CTTSERV_ID,CTT_ID,SER_ID,');
           Q_GERAESPEC.Sql.Add(' CTTESPEC_ORDEM,CTTESPEC_FATOR,');
           Q_GERAESPEC.Sql.Add(' UCOB_ID,CTTESPEC_TPCARGA,REG_ID,VEIC_ID,TPRO_ID,TSER_ID) ') ;
           Q_GERAESPEC.Sql.Add(' values ( ' );
           Q_GERAESPEC.Sql.Add( '''' + Q_CTTxSERVCTTSERV_ID.asstring + '''' + ',');
           Q_GERAESPEC.Sql.Add( '''' + Q_CTTxSERVCTT_ID.asstring + '''' + ',');
           Q_GERAESPEC.Sql.Add( '''' + Q_CTTxSERVSER_ID.asstring + '''' + ',');
           Q_GERAESPEC.Sql.Add( inttostr(10) + ',');
           Q_GERAESPEC.Sql.Add( floattostr(0) + ',');
           Q_GERAESPEC.Sql.Add( inttostr(1) + ',');
           Q_GERAESPEC.Sql.Add( '''' + 'N' + '''' + ',');
           Q_GERAESPEC.Sql.Add( inttostr(1) + ',');
           Q_GERAESPEC.Sql.Add( inttostr(1) + ',');

            IF (Q_TPRODTPRO_ID.asstring <> '') then
              Q_GERAESPEC.Sql.Add( '''' + Q_TPRODTPRO_ID.asstring + '''' + ',')
           else
              Q_GERAESPEC.Sql.Add( '''' + '' + '''' + ',') ;

           Q_GERAESPEC.Sql.Add( '''' + Q_CTTxSERVTSER_ID.asstring + '''' + ')' );
           Q_GERAESPEC.ExecSql;

           Q_CTTxESPEC.close ;
           Q_CTTxESPEC.open ;

           DBNavigator1.datasource := DS_CTTxESPEC;
           Q_CTTxESPEC.edit;

           wwdbedit5.setfocus;
     end ;
  end ;

end;

procedure TFContrato.Q_CTTxSERVNewRecord(DataSet: TDataSet);
begin
  Q_CTTxSERVCTT_ID.asstring := Q_CTTCTT_ID.asstring ;
end;

procedure TFContrato.Q_CTTxESPECAfterDelete(DataSet: TDataSet);
var
StrORDEM : string ;
StrSER_ID : string ;
StrCTT  : string ;
begin
   StrORDEM := Q_CTTxESPECCTTESPEC_ORDEM.asstring   ;
   StrSER_ID  := Q_CTTxESPECSER_ID.asstring   ;
   StrCTT  := Q_CTTxESPECCTT_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CTTxESPEC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   IF (StrORDEM = '') or (StrSER_ID = '') or (StrCTT = '') then abort ;

   Q_CTTxESPEC.close ;
   Q_CTTxESPEC.Open ;
   Q_CTTxESPEC.locate('CTTESPEC_ORDEM;SER_ID;CTT_ID',vararrayof([StrORDEM,StrSER_ID,StrCTT]),[]);




end;

procedure TFContrato.Q_CTTxESPECAfterPost(DataSet: TDataSet);
var
StrORDEM : string ;
StrSER_ID : string ;
StrCTT  : string ;
begin
   StrORDEM := Q_CTTxESPECCTTESPEC_ORDEM.asstring   ;
   StrSER_ID  := Q_CTTxESPECSER_ID.asstring   ;
   StrCTT  := Q_CTTxESPECCTT_ID.asstring      ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_CTTxESPEC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_CTTxESPEC.close ;
   Q_CTTxESPEC.Open ;
   Q_CTTxESPEC.locate('CTTESPEC_ORDEM;SER_ID;CTT_ID',vararrayof([StrORDEM,StrSER_ID,StrCTT]),[]);

end;

procedure TFContrato.Q_CTTxESPECNewRecord(DataSet: TDataSet);
begin
     Q_CTTxESPECCTT_ID.asstring  :=  Q_CTTCTT_ID.asstring ;
     Q_CTTxESPECSER_ID.asstring  :=  Q_CTTxSERVSER_ID.asstring ;
     Q_CTTxESPECTSER_ID.asstring :=  Q_CTTxSERVTSER_ID.asstring ;
     Q_CTTxESPECVEIC_ID.asinteger  :=  1 ;
     Q_CTTxESPECREG_ID.asinteger   :=   1 ;
     Q_CTTxESPECCTTESPEC_TPCARGA.asstring := 'N' ;
     Q_CTTxESPECCTTSERV_ID.asstring := Q_CTTxSERVCTTSERV_ID.asstring ;

     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select min(TPRO_id) as Numero from TPPRODUTO_CLINBF ' ) ;
     Q_AUX.Sql.Add( ' where CLIN_ID = ' + Q_CttCLIN_ID.asstring ) ;
     Q_AUX.open ;

     {Q_TPROD.close ;
     Q_TPROD.Sql.Clear ;
     Q_TPROD.Sql.Add( ' select * from TPPRODUTO_CLINBF where ' ) ;
     Q_TPROD.Sql.Add( ' CLIN_ID = ' + Q_CttCLIN_ID.asstring ) ;
     Q_TPROD.Sql.Add( ' and TPRO_ID = ' + Q_AUX.fieldbyname('NUMERO').asstring);
     Q_TPROD.open ;}
     Q_TPROD.locate('TPRO_ID',Q_AUX.fieldbyname('NUMERO').asstring,[]);

     IF (Q_TPRODTPRO_ID.asstring <> '') then
       Q_CTTxESPECTPRO_ID.asinteger := Q_TPRODTPRO_ID.asinteger ;

end;

procedure TFContrato.TabbedNotebook2Click(Sender: TObject);
begin

  If (TabbedNotebook2.pageindex = 0) then  begin
     DBNavigator1.datasource := DS_CTTxSERV;
     ///Panel3.enabled := true;
     DBNavigator1.enabled := true ;

     If (Q_CTTxESPEC.state = dsedit ) or (Q_CTTxESPEC.state = dsinsert ) then
         Q_CTTxESPEC.post ;

  end ;

  If (TabbedNotebook2.pageindex = 1) then begin
     DBNavigator1.datasource := DS_CTTxESPEC;

     If (Q_CTTxSERVSER_ID.asstring = '') then begin
        Q_CTTxESPEC.edit;
        Q_CTTxESPEC.CANCEL;
        DBNavigator1.enabled := false ;
     end else begin
        DBNavigator1.enabled := true  ;
        Q_CTTxESPEC.edit;
        Q_CTTxESPEC.CANCEL;
     end ;

     If (Q_CTTxSERVSER_ID.asstring <> '') and
        (Q_CTTxESPECCTTESPEC_ID.asstring <> '')  then
        Q_CTTxESPEC.edit;

     If (Q_CTTxSERV.state = dsedit ) or (Q_CTTxSERV.state = dsinsert ) then
         Q_CTTxSERV.post ;

  end ;


end;

procedure TFContrato.TabbedNotebook2Change(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
begin
        if not BooPrimeiro then Begin
            If (Q_CTTxESPEC.state = dsedit ) or
               (Q_CTTxESPEC.state = dsinsert ) {and
               (Q_CTTxSERVSER_ID.asstring <> '')}then  begin

                  If (TabbedNotebook2.pageindex = 1) then begin
                       If (wwDBEdit5.text = '') then begin
                           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit5.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBEdit6.text = '') then begin
                           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If  strtofloat(wwDBEdit6.text) <= 0  then begin
                           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;


                       If (wwDBLookupCombo5.text = '') then begin
                           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo5.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBComboBox4.text = '') then begin
                           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBComboBox4.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo9.text = '') then begin
                           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo9.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo10.text = '') then begin
                           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo10.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       Q_AUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
                       Q_AUX.Sql.Add(' where CLIN_ID = ' + Q_CTTCLIN_ID.asstring ) ;
                       Q_AUX.open ;

                       If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
                             If (wwDBLookupCombo11.text = '') then begin
                                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                                wwDBLookupCombo11.SetFocus;
                                Q_CTTxESPEC.edit;
                                Abort;
                             end ;
                       end ;
                  end ;
            end ;
        end ;
        BOOPRIMEIRO := FALSE ;

end;

procedure TFContrato.TabbedNotebook1Change(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
begin
        if not BooPrimeiro then Begin
            If (Q_CTTxESPEC.state = dsedit ) or
                (Q_CTTxESPEC.state = dsinsert ) {and
                 (Q_CTTxSERVSER_ID.asstring <> '')} then  begin

                  If (TabbedNotebook2.pageindex = 1) then begin

                       If (wwDBEdit5.text = '') then begin
                           MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit5.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBEdit6.text = '') then begin
                           MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If  strtofloat(wwDBEdit6.text) <= 0  then begin
                           MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
                           wwDBEdit6.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;


                       If (wwDBLookupCombo5.text = '') then begin
                           MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo5.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBComboBox4.text = '') then begin
                           MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBComboBox4.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo9.text = '') then begin
                           MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo9.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;

                       If (wwDBLookupCombo10.text = '') then begin
                           MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                           wwDBLookupCombo10.SetFocus;
                           Q_CTTxESPEC.edit;
                           Abort;
                       end ;


                       Q_AUX.close;
                       Q_AUX.Sql.Clear;
                       Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
                       Q_AUX.Sql.Add(' where CLIN_ID = ' + Q_CTTCLIN_ID.asstring ) ;
                       Q_AUX.open ;

                       If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
                             If (wwDBLookupCombo11.text = '') then begin
                                MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                                wwDBLookupCombo11.SetFocus;
                                Q_CTTxESPEC.edit;
                                Abort;
                             end ;
                       end ;
                  end ;
            end ;
        end ;
        BOOPRIMEIRO := FALSE ;


end;

procedure TFContrato.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    Q_TSERV.locate('TSER_ID',Q_SERVTSER_ID.asstring,[]);
    Label12.caption :=  Q_TSERVTSER_NOMe.asstring ;
end;

procedure TFContrato.DS_CTTxSERVDataChange(Sender: TObject; Field: TField);
begin
   Q_TSERV.locate('TSER_ID',Q_SERVTSER_ID.asstring,[]);
   Label12.caption :=  Q_TSERVTSER_NOMe.asstring ;

   If (Q_CTTxSERVCTTSERV_COBRADO.asstring = 'S') or
       (Q_CTTxSERVCTTSERV_COBRADO.asstring = '' ) then
      Panel5.visible := false
    else
      Panel5.visible := true ;
end;

procedure TFContrato.Q_CTTxESPECBeforePost(DataSet: TDataSet);
begin

           If (wwDBEdit5.text = '') then begin
               MessageDlg('Ordem é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
               wwDBEdit5.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;

           If (wwDBEdit6.text = '') then begin
               MessageDlg('Fator é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
               wwDBEdit6.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;

           If  strtofloat(wwDBEdit6.text) <= 0  then begin
               MessageDlg('Fator deve ser superior a ZERO ',mtWarning,[mbok],0);
               wwDBEdit6.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;


           If (wwDBLookupCombo5.text = '') then begin
               MessageDlg('Unidade de Cobrança é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
               wwDBLookupCombo5.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;

           If (wwDBComboBox4.text = '') then begin
               MessageDlg('Tipo de Carga é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
               wwDBComboBox4.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;

           If (wwDBLookupCombo9.text = '') then begin
               MessageDlg('Região é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
               wwDBLookupCombo9.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;

           If (wwDBLookupCombo10.text = '') then begin
               MessageDlg('Tipo de Veículo é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
               wwDBLookupCombo10.SetFocus;
               Q_CTTxESPEC.edit;
               Abort;
           end ;

           Q_AUX.close;
           Q_AUX.Sql.Clear;
           Q_AUX.Sql.Add('Select count(*) as xvalor from  TPPRODUTO_CLINBF ') ;
           Q_AUX.Sql.Add(' where CLIN_ID = ' + Q_CTTCLIN_ID.asstring ) ;
           Q_AUX.open ;

           If Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
                 If (wwDBLookupCombo11.text = '') then begin
                    MessageDlg('Tipo de Produto é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
                    wwDBLookupCombo11.SetFocus;
                    Q_CTTxESPEC.edit;
                    Abort;
                 end ;
           end ;

end;

procedure TFContrato.Q_CTTxSERVBeforeDelete(DataSet: TDataSet);
begin
   Q_ESPECdel.close;
   Q_ESPECdel.Sql.Clear;
   Q_ESPECdel.Sql.Add(' delete from CONTRATO_ESPECIFICACOES') ;
   Q_ESPECdel.Sql.Add(' where CTTSERV_ID = ' + Q_CTTxSERVCTTSERV_ID.asstring );
   Q_ESPECdel.ExecSql;
end;

procedure TFContrato.Q_CTTBeforeDelete(DataSet: TDataSet);
begin

   Q_OSconsulta.close ;
   Q_OSconsulta.Sql.Clear ;
   Q_OSconsulta.Sql.Add(' SELECT Count(*) as QTDEReg from OS') ;
   Q_OSconsulta.Sql.Add(' where CTT_ID = ' + Q_CTTCTT_ID.asstring);
   Q_OSconsulta.open  ;

   If Q_OSconsulta.fieldbyname('QTDEReg').asinteger > 0 then begin
      MessageDlg('Existe O.S. para o Contrato: ' + Q_CTTCtt_NOME.asstring +  ' , exclusão não poderá ser efetuada !',mtWarning,[mbok],0);
      Abort;
   end ;

   Q_SERVdel.close;
   Q_SERVdel.Sql.Clear;
   Q_SERVdel.Sql.Add(' delete from CONTRATO_SERVICO') ;
   Q_SERVdel.Sql.Add(' where CTT_ID = ' + Q_CTTCTT_ID.asstring );
   Q_SERVdel.ExecSql;

   Q_ESPECdel.close;
   Q_ESPECdel.Sql.Clear;
   Q_ESPECdel.Sql.Add(' delete from CONTRATO_ESPECIFICACOES') ;
   Q_ESPECdel.Sql.Add(' where CTT_ID = ' + Q_CTTCTT_ID.asstring );
   Q_ESPECdel.ExecSql;

  

end;

procedure TFContrato.Q_CTTAfterCancel(DataSet: TDataSet);
begin
    If ( EXISTE = 'N')  then begin
       FContrato.close ;
       EXISTE := '' ;
    end ;
     wwDBLookupCombo1.visible := false ; 
end;

procedure TFContrato.SpeedButton2Click(Sender: TObject);
begin
  Q_CTT2.open  ;
  wwSearchDialog1.execute ;
  Q_CTT.locate('CLIN_ID',Q_CTT2CLIN_ID.asstring,[]);
  Q_CTT2.close ;
end;

procedure TFContrato.SpeedButton4Click(Sender: TObject);
begin
     Q_CTTxSERV2.open ;
     wwSearchDialog2.execute ;
     Q_CTTxSERV.locate('CTTSERV_ID',Q_CTTxSERV2CTTSERV_ID.asstring,[]);
     Q_CTTxSERV2.close ;
end;

procedure TFContrato.DS_CTTDataChange(Sender: TObject; Field: TField);
begin
  IF (Q_CTTCLIN_ID.asstring <> '') then begin
     If CONTR = '' then begin
         Q_CTT3.close;
         Q_CTT3.Sql.Clear;
         Q_CTT3.Sql.Add('select A.*,B.CLIN_RAZA,C.TOS_NOME ');
         Q_CTT3.Sql.Add('from CONTRATO A,CLIENTENBF B,TPOS C ');
         Q_CTT3.Sql.Add('where');
         Q_CTT3.Sql.Add('A.CLIN_ID = B.CLIN_ID  and ');
         Q_CTT3.Sql.Add('A.TOS_ID  = C.TOS_ID  ');
         ///Q_CTT3.Sql.Add('and A.CTT_ID = ' + Q_CTTCTT_ID.asstring);
         Q_CTT3.Sql.Add('and exists(Select CLIN_ID from CLIENTENBF where');
         Q_CTT3.Sql.Add('CLIN_ID = ' + Q_CTTCLIN_ID.asstring);
         Q_CTT3.Sql.Add('and A.CLIN_ID = CLIN_ID ' + ')');
         Q_CTT3.Sql.Add('order by B.CLIN_NOME');
         Q_CTT3.open ;
     end ;

    {IF (EXISTE = 'S')  then
        Q_CLIN.locate('CLIN_ID', FCliente.Q_CTTCLIN_ID.asstring,[]); }


  end else Q_CTT3.close ;

  IF Q_CTTCLIN_ID.asstring <> ''  then
        Q_CLIN.locate('CLIN_ID', Q_CTTCLIN_ID.asstring,[]); 

  
end;

procedure TFContrato.Q_CTTBeforeInsert(DataSet: TDataSet);
begin
  wwDBLookupCombo1.visible := true ;
end;

procedure TFContrato.wwDBGrid1RowChanged(Sender: TObject);
begin
    If BOOPRIMEIRO2  then begin
      If (Q_CTT3CTT_ID.asstring <> '') and (Q_CTTCTT_ID.asstring <> '') then begin
        CONTR := 'N' ;
        Q_CTT.locate('CTT_ID',Q_CTT3CTT_ID.asstring,[]);
        CONTR := '' ;
      end ;
          {hhh}
    end ;
end;

procedure TFContrato.wwDBLookupCombo6Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow;

   If wwDBLookupCombo6.text <> '' then
       wwDBLookupCombo6.text := Q_EMPPAR_NOME.asstring  ;

end;

procedure TFContrato.wwDBLookupCombo6Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Claqua;

end;

procedure TFContrato.Q_CTTBeforePost(DataSet: TDataSet);
begin

   IF Q_CTTCTT_ID.asstring = '' then begin
       IF (wwDBLookupCombo1.text = '')  then begin
           MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo1.setfocus ;
           abort ;
       end ;
   end ; 
   IF (wwDBLookupCombo3.text = '')  then begin
       MessageDlg('Tipo de OS é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo3.setfocus ;
       abort ;
   end ;


   IF (wwDBLookupCombo6.text = '')  then begin
       MessageDlg('Empresa é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo6.setfocus ;
       abort ;
   end ;

end;

procedure TFContrato.Q_CTTNewRecord(DataSet: TDataSet);
begin
 Q_CTTMIN_M2.asfloat := 0.00 ;
end;

procedure TFContrato.wwDBEdit16Enter(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFContrato.wwDBEdit16Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

end.

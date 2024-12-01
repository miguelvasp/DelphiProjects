unit UEntrNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, StdCtrls, DBCtrls, wwdblook, Grids, Wwdbigrd,
  Wwdbgrid, Mask, wwdbedit, ComCtrls, Tabnotbk, Buttons, ExtCtrls,
  DBTables, Db, Wwdatsrc, Wwquery;

type
  TFEntNf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    Fonte: TDBNavigator;
    TB1: TTabbedNotebook;
    Panel3: TPanel;
    txtCh: TLabel;
    Panel4: TPanel;
    Panel6: TPanel;
    LBL_STATUS: TLabel;
    Label19: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label31: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    DBEDNumRec: TwwDBEdit;
    DBEDNumNf: TwwDBEdit;
    DBEDSerie: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    DBEDDtEntra: TwwDBEdit;
    DBEDCfo: TwwDBEdit;
    DBEDValorTotFrete: TwwDBEdit;
    DBEDValorDesp: TwwDBEdit;
    DBEDValorSeg: TwwDBEdit;
    DBEDValorDesc: TwwDBEdit;
    DBEDVlTotNota: TwwDBEdit;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    DBCB_CFA_TICM: TwwDBComboBox;
    GroupBox6: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBCB_CFA_TIPI: TwwDBComboBox;
    DBEDBaseCalcIcms: TwwDBEdit;
    DBEDValorIcms: TwwDBEdit;
    DBEDBaseCalcIpi: TwwDBEdit;
    DBEDVaorIpi: TwwDBEdit;
    DBLCForn: TwwDBLookupCombo;
    DBEDAliqicms: TwwDBEdit;
    DBLCCond: TwwDBLookupCombo;
    DBLCLocal: TwwDBLookupCombo;
    SpeedButton5: TSpeedButton;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    GroupBox4: TGroupBox;
    GridItens: TwwDBGrid;
    PanelOC: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Btn_seleciona: TSpeedButton;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Q_NFREC: TwwQuery;
    Q_NFRECNFR_ID: TAutoIncField;
    Q_NFRECFOR_CODI: TStringField;
    Q_NFRECCOND_PGTO_ID: TIntegerField;
    Q_NFRECLOC_ID: TIntegerField;
    Q_NFRECNFR_CFOP: TStringField;
    Q_NFRECNFR_DTEMISS: TDateTimeField;
    Q_NFRECNFR_ALIQICMS: TFloatField;
    Q_NFRECNFR_CODTRIBICMS: TStringField;
    Q_NFRECNFR_BASECALCICMS: TFloatField;
    Q_NFRECNFR_VALORICMS: TFloatField;
    Q_NFRECNFR_CODTRIBIPI: TStringField;
    Q_NFRECNFR_BASECALCIPI: TFloatField;
    Q_NFRECNFR_VALORIPI: TFloatField;
    Q_NFRECNFR_VLRFRETE: TFloatField;
    Q_NFRECNFR_VLRDESPESAS: TFloatField;
    Q_NFRECNFR_VLRSEGURO: TFloatField;
    Q_NFRECNFR_DESCONTO: TFloatField;
    Q_NFRECNFR_TOTALNF: TFloatField;
    DS_NFREC: TwwDataSource;
    UPD_NFREC: TUpdateSQL;
    SpeedButton6: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_NFRECI: TwwQuery;
    Q_NFRECINFRI_ID: TAutoIncField;
    Q_NFRECINFRI_SEQ: TIntegerField;
    Q_NFRECINFR_ID: TIntegerField;
    Q_NFRECIMAT_ID: TIntegerField;
    Q_NFRECINFRI_QTDE: TIntegerField;
    Q_NFRECINFRI_VLRUNIT: TFloatField;
    Q_NFRECINFRI_ALIQICMS: TFloatField;
    Q_NFRECINFRI_ALIQIPI: TFloatField;
    Q_NFRECINFRI_VLRIPI: TFloatField;
    Q_NFRECINFRI_VLRTOTAL: TFloatField;
    Q_NFRECINFRI_BXTOTAL: TStringField;
    DS_NFRECI: TwwDataSource;
    UPD_NFRECI: TUpdateSQL;
    Q_FORN: TwwQuery;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_COND: TwwQuery;
    Q_CONDCOND_PGTO_ID: TAutoIncField;
    Q_CONDDESCRICAO: TStringField;
    Q_LOCAL: TwwQuery;
    Q_LOCALLOC_ID: TAutoIncField;
    Q_LOCALLOC_DESC: TStringField;
    Q_NFRECNFR_NF: TStringField;
    Q_NFRECNFR_SERIE: TStringField;
    Q_NFRECNFR_PED: TStringField;
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label5: TLabel;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    GroupBox1: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    Q_OC: TwwQuery;
    DS_OC: TwwDataSource;
    Q_OCORD_ID: TAutoIncField;
    Q_OCI: TwwQuery;
    DS_OCI: TwwDataSource;
    Q_OCIMAT_DESC: TStringField;
    Q_OCIMAT_ID: TIntegerField;
    Q_OCIQTDE_COMP: TFloatField;
    Q_OCIMATMARCA_ID: TIntegerField;
    Q_OCIUNI_ID: TIntegerField;
    Q_OCIalterar: TStringField;
    UPD_OCI: TUpdateSQL;
    Q_OCIiord_id: TAutoIncField;
    Q_OCIVALOR: TFloatField;
    Q_OCIVL_TOTITEM: TFloatField;
    Q_OCIPRECO_UNIT: TFloatField;
    Q_OCIIPI: TFloatField;
    Q_OCIVL_IPI: TFloatField;
    Q_OCIMARC_ID: TIntegerField;
    Q_OCIORD_ID: TIntegerField;
    Q_OCIUNI_COMP_ID: TStringField;
    Q_OCIUNI_ESTQ_ID: TStringField;
    Q_OCIQTDE: TFloatField;
    Q_OCIQTDE_REC: TFloatField;
    Q_OCIQTDE_COMP_REC: TFloatField;
    Q_OCIQTDE_ESTQ_COMP: TFloatField;
    Q_OCICONVERSAO: TFloatField;
    Q_OCINFIS: TIntegerField;
    Q_OCIREC_ID: TIntegerField;
    Q_OCISTATUS: TStringField;
    Q_OCIUSU_CANCEL: TStringField;
    Q_OCIDT_CANCEL: TDateTimeField;
    Q_AUX: TwwQuery;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEDNumRecEnter(Sender: TObject);
    procedure DBEDNumRecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TB1Click(Sender: TObject);
    procedure Q_NFRECAfterPost(DataSet: TDataSet);
    procedure Q_NFRECAfterDelete(DataSet: TDataSet);
    procedure Q_NFRECBeforeDelete(DataSet: TDataSet);
    procedure DBLCFornEnter(Sender: TObject);
    procedure DBLCFornExit(Sender: TObject);
    procedure DBLCCondExit(Sender: TObject);
    procedure DBLCLocalExit(Sender: TObject);
    procedure DBCB_CFA_TICMEnter(Sender: TObject);
    procedure DBCB_CFA_TICMExit(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure DS_NFRECStateChange(Sender: TObject);
    procedure DS_NFRECIStateChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_OCIAfterDelete(DataSet: TDataSet);
    procedure Q_OCIAfterPost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Q_NFRECINewRecord(DataSet: TDataSet);
    procedure Q_OCIQTDE_COMPChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntNf: TFEntNf;

implementation

uses UMenu;

{$R *.DFM}

procedure TFEntNf.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFEntNf.DBEDNumRecEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFEntNf.DBEDNumRecExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFEntNf.FormCreate(Sender: TObject);
begin
         TB1.PageIndex := 0;
        Q_NFREC.Open;
        Q_NFRECI.Open;
        Q_FORN.Open;
        Q_COND.Open;
        Q_LOCAL.Open;
        Q_OC.Open;
        Q_OCI.Open;        

end;

procedure TFEntNf.TB1Click(Sender: TObject);
begin
        IF (Q_NFREC.State = dsEdit) or (Q_NFREC.State = dsInsert) Then
                begin
                         Q_NFREC.Post;
                end;
        IF (Q_NFRECI.State = dsEdit) or (Q_NFRECI.State = dsInsert) Then
                begin
                        Q_NFRECI.Post;
                end;


              If TB1.PageIndex = 1 then
                Fonte.DataSource := DS_NFRECI;
                SpeedButton6.Hint :='Pesquisa de Itens';

        {If TB1.PageIndex = 2 then
                Fonte.DataSource := DS_;}

        If TB1.PageIndex = 0 then
                Fonte.DataSource := DS_NFREC;
                SpeedButton6.Hint :='Pesquisa de NF';
end;

procedure TFEntNf.Q_NFRECAfterPost(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_NFRECNFR_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_NFREC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_NFREC.Close;
   Q_NFREC.Open;
end;

procedure TFEntNf.Q_NFRECAfterDelete(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_NFRECNFR_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_NFREC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_NFREC.Close;
       Q_NFREC.Open;
       Q_NFREC.locate('NFR_ID',ID,[loCaseInsensitive]);
   end;
end;

procedure TFEntNf.Q_NFRECBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?', mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFEntNf.DBLCFornEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFEntNf.DBLCFornExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If DBLCForn.text <> '' then
                DBLCForn.text := Q_FORNFOR_RAZA.AsString;
end;

procedure TFEntNf.DBLCCondExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If DBLCCond.text <> '' then
                DBLCCond.text := Q_CONDDESCRICAO.AsString;
end;

procedure TFEntNf.DBLCLocalExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If DBLCLocal.text <> '' then
                DBLCLocal.text := Q_LOCALLOC_DESC.AsString;
end;

procedure TFEntNf.DBCB_CFA_TICMEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFEntNf.DBCB_CFA_TICMExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFEntNf.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFEntNf.DS_NFRECStateChange(Sender: TObject);
begin
                IF (Q_NFREC.State = dsEdit) or (Q_NFREC.State = dsInsert) THEN
                begin
                if Q_NFREC.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';
                                
                end;
                LBL_STATUS.Visible := true;
                end
                ELSE
                begin
                LBL_STATUS.Visible := false;
                end;

end;

procedure TFEntNf.DS_NFRECIStateChange(Sender: TObject);
begin
                IF (Q_NFRECI.State = dsEdit) or (Q_NFRECI.State = dsInsert) THEN
                begin
                if Q_NFRECI.State = dsEdit then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';

                end;
                                LBL_STATUS.Visible := true;
                end
                ELSE
                begin
                LBL_STATUS.Visible := false;
                end;

end;

procedure TFEntNf.SpeedButton3Click(Sender: TObject);
begin
        GridItens.Enabled := true;
        PanelOC.Visible := true;
        wwDBGrid1.Visible := true;
        wwDBGrid3.Visible := true;
        Btn_seleciona.Visible := true;
        SpeedButton4.Visible := true;
        SpeedButton2.Visible := true;
end;

procedure TFEntNf.Q_OCIAfterDelete(DataSet: TDataSet);
VAR ID: String;
begin
           ID:= Q_OCIIORD_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_OCI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' Then
   begin
       Q_OCI.Close;
       Q_OCI.Open;
       Q_OCI.locate('IORD_ID',ID,[loCaseInsensitive]);
   end;
end;

procedure TFEntNf.Q_OCIAfterPost(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_OCIMAT_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_OCI])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


    Q_OCI.Close;
    Q_OCI.Open;
    Q_OCI.Last ;

    If ID <> '' then
    Q_OCI.locate('MAT_ID',ID,[loCaseInsensitive]);
end;

procedure TFEntNf.SpeedButton4Click(Sender: TObject);
begin
        PanelOC.visible := False;
        GridItens.Enabled := true;
end;

procedure TFEntNf.SpeedButton2Click(Sender: TObject);
VAR SQL: STRING;
begin

   Q_OCI.Edit;

   Q_OCI.Post;
   Q_OCI.FIRST;

        {PanelOC.visible := False;
        GridItens.Enabled := true;


        SQL:=   ' INSERT   NF_RECEBE_ITEM ' +
                '	  (NFR_ID,  ' +
                '          NFRI_QTDE,  ' +
	        '          NFRI_VLRUNIT,  ' +
	        '          NFRI_ALIQIPI,  ' +
	        '          NFRI_VLRIPI,  ' +
	        '          MAT_ID,      ' +
	        '          NFRI_VLRTOTAL, ' +
                '          NFRI_ALIQICMS)  ' +
	        '          (SELECT ' + Q_NFRECNFR_ID.AsString + ' , ' +
	                    wwDBEdit1.Text  + ' , '  +
	        '           PRECO_UNIT, ' +
	        '           IPI,        ' +
	        '           VL_IPI,      ' +
	        '           MAT_ID,        ' +
	        '           VALOR,  ' +
                            Q_NFRECNFR_ALIQICMS.AsString +
                '           FROM ORDEM_COMPRAITEM  ' +
	        '           WHERE ALTERAR = ' + '''' + 'S' + '''' + ')' ;


        Q_AUX.CLOSE;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;


        SQL:= ' SELECT IORD_ID FROM ORDEM_COMPRAITEM WHERE ALTERAR = ' + '''' + 'S' + '''';

        Q_AUX.CLOSE;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        While not Q_AUX.Eof do begin
                If (wwDBEdit1.Text < Q_OCIQTDE_COMP.asString) then begin
                SQL := ' UPDATE ORDEM_COMPRAITEM SET STATUS = ' + '''' + 'P' + '''' + ',' +
                       ' QTDE_REC = '  + wwDBEdit1.AsString +
                       ' WHERE IORD_ID =







        Q_NFRECI.Close;
        Q_NFRECI.OPEN;






{       Q_NFRECINFRI_QTDE.AsFloat :=
        Q_OCI.FieldByName('QTDE_COMP').AsFloat;

        Q_NFRECINFRI_VLRUNIT.AsFloat :=
        Q_OCI.FieldByName('PRECO_UNIT').AsFloat;

        Q_NFRECINFRI_ALIQIPI.AsFloat :=
        Q_OCI.FieldByName('IPI').AsFloat;

        Q_NFRECINFRI_VLRIPI.AsFloat :=
        Q_OCI.FieldByName('VL_IPI').AsFloat;

        Q_NFRECIMAT_ID.AsString :=
        Q_OCI.FieldByName('MAT_ID').AsString ;

        Q_NFRECINFRI_VLRTOTAL.AsFloat :=
        Q_OCI.FieldByName('QTDE_COMP').AsFloat * Q_OCI.FieldByName('PRECO_UNIT').AsFloat;
        }

end;

procedure TFEntNf.Q_NFRECINewRecord(DataSet: TDataSet);
begin
//        Q_NFRECINFRI_ALIQICMS.AsString :=  DBEDAliqicms.text;
//        Q_NFRECINFR_ID.AsString := Q_NFRECNFR_ID.AsString;
end;

procedure TFEntNf.Q_OCIQTDE_COMPChange(Sender: TField);
VAR SQL: STRING;
begin
   

end;

end.

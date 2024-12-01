unit UOrdCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Buttons, StdCtrls, ExtCtrls, wwdbedit, wwdblook, Mask, Wwdotdot,
  Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Tabnotbk, Db, Wwdatsrc,
  DBTables, Wwquery, wwDialog, wwidlg, wwSpeedButton, wwDBNavigator,
  wwclearpanel, ImgList, ADODB, RzButton;

type
  TFOrdComp = class(TForm)
    Panel1: TPanel;
    SBT_REL: TSpeedButton;
    TB1: TTabbedNotebook;
    Panel3: TPanel;
    txtCh: TLabel;
    GridOC: TwwDBGrid;
    Panel4: TPanel;
    GridOI: TwwDBGrid;
    Panel5: TPanel;
    Label26: TLabel;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    DBLCForn: TwwDBLookupCombo;
    DBEOC: TwwDBEdit;
    DBEDtCad: TwwDBEdit;
    DBBDtEntr: TwwDBEdit;
    DBEDtEmiss: TwwDBEdit;
    DBLCCond: TwwDBLookupCombo;
    DBEVal: TwwDBEdit;
    Panel6: TPanel;
    LBL_STATUS: TLabel;
    Label24: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit13: TwwDBEdit;
    Q_OC: TwwQuery;
    DS_OC: TwwDataSource;
    UPD_OC: TUpdateSQL;
    Q_AUX: TwwQuery;
    Q_FORN: TwwQuery;
    Q_COND: TwwQuery;
    Q_CONDDESCRICAO: TStringField;
    Q_CONDNUM_PARCELAS: TFloatField;
    Q_CONDCOND_PGTO_ID: TAutoIncField;
    Q_CONDPAGAMENTO: TStringField;
    Q_CONDFORA: TStringField;
    Label27: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_USU: TwwQuery;
    Q_OCI: TwwQuery;
    DS_OCI: TwwDataSource;
    UPD_OCI: TUpdateSQL;
    PESQ_OC: TwwSearchDialog;
    Q_PSQOC: TwwQuery;
    PESQ_OCI: TwwSearchDialog;
    Q_OCDT_CADASTRO: TDateTimeField;
    Q_OCUSUARIO: TStringField;
    Q_OCCH_AUT: TIntegerField;
    Q_OCCH_CANCEL: TIntegerField;
    Q_OCFOR_CODI: TStringField;
    Q_OCCOND_PGTO_ID: TIntegerField;
    Q_OCOBS: TMemoField;
    Q_OCDT_EMISSAO: TDateTimeField;
    Q_OCDT_ENTREGA: TDateTimeField;
    Q_OCSTATUS: TStringField;
    Q_OCVALOR: TFloatField;
    Q_OCALTERAR: TStringField;
    Q_OCDT_CANCEL: TDateTimeField;
    Q_OCVL_IPI: TFloatField;
    Q_OCVL_TOT: TFloatField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_OCds_cond: TStringField;
    Q_PSQOCI: TwwQuery;
    Q_PSQOCIMAT_ID: TIntegerField;
    Q_PSQOCIds_mat: TStringField;
    DS_FORN: TDataSource;
    cboStat: TwwDBComboBox;
    Panel7: TPanel;
    Label16: TLabel;
    DBEDQtdComp: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Label20: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label22: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label21: TLabel;
    DBEDPrec: TwwDBEdit;
    Label12: TLabel;
    DS_MAT: TDataSource;
    Q_MAT: TwwQuery;
    Label11: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label13: TLabel;
    DS_UNI: TwwDataSource;
    Q_OCIMAT_ID: TIntegerField;
    Q_OCIQTDE: TFloatField;
    Q_OCIQTDE_REC: TFloatField;
    Q_OCIQTDE_COMP: TFloatField;
    Q_OCIQTDE_COMP_REC: TFloatField;
    Q_OCIQTDE_ESTQ_COMP: TFloatField;
    Q_OCIPRECO_UNIT: TFloatField;
    Q_OCIVALOR: TFloatField;
    Q_OCICONVERSAO: TFloatField;
    Q_OCIIPI: TFloatField;
    Q_OCIVL_IPI: TFloatField;
    Q_OCIALTERAR: TStringField;
    Q_OCINFIS: TIntegerField;
    Q_OCIREC_ID: TIntegerField;
    Q_OCISTATUS: TStringField;
    Q_OCIUSU_CANCEL: TStringField;
    Q_OCIDT_CANCEL: TDateTimeField;
    Q_OCIVL_TOTITEM: TFloatField;
    Q_OCIds_mat: TStringField;
    Q_UNI: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    Label10: TLabel;
    Q_OCORD_ID: TAutoIncField;
    Q_OCNUM_OCOM: TIntegerField;
    Q_OCIORD_ID: TIntegerField;
    Q_OCIIORD_ID: TAutoIncField;
    Q_PSQOCORD_ID: TAutoIncField;
    lblUni: TLabel;
    Q_OCIembalagem: TStringField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_OCIunidade: TStringField;
    Label15: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Q_MARC: TwwQuery;
    Q_MARCMAT_ID: TIntegerField;
    Q_MARCMARCA_ID: TIntegerField;
    Q_MARCUNI_ID: TIntegerField;
    Q_MARCMARCA_DESC: TStringField;
    Q_OCIMATMARCA_ID: TIntegerField;
    Q_EMB: TwwQuery;
    Q_EMBMATMARCA_ID: TAutoIncField;
    Q_EMBMAT_ID: TIntegerField;
    Q_EMBMARCA_ID: TIntegerField;
    Q_EMBMATMARCA_EMBALAGEM: TStringField;
    Q_EMBUNI_ID: TIntegerField;
    Q_EMBMATMARCA_CONVERSAO: TFloatField;
    Q_EMBMATMARCA_DT_ULTCOMP: TDateTimeField;
    Q_EMBMATMARCA_PRE_ULTCOMP: TFloatField;
    Q_EMBMATMARCA_DT_ULTCOTA: TDateTimeField;
    Q_EMBMATMARCA_PRE_ULTCOTA: TFloatField;
    DS_MARC: TwwDataSource;
    Q_OCIMARCAdesc: TStringField;
    Q_OCIEmbalagemDESC: TStringField;
    Q_OCINUM_OCOM: TIntegerField;
    Q_OCIMARCA_ID: TIntegerField;
    Q_USUCH: TAutoIncField;
    Q_USUNome: TStringField;
    Q_USUSenha: TStringField;
    Q_OCIUni_Comp_ID: TIntegerField;
    Q_OCIUni_Estq_ID: TIntegerField;
    Q_EMBX: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    FloatField2: TFloatField;
    DateTimeField2: TDateTimeField;
    FloatField3: TFloatField;
    Q_MARCX: TwwQuery;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    Q_OCDescTotal: TFloatField;
    Q_OCVlrFrete: TFloatField;
    lbl1: TLabel;
    wwDBEdit2: TwwDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    wwDBEdit5: TwwDBEdit;
    Fonte: TDBNavigator;
    dsMyNavPanel: TDataSource;
    ImageList1: TImageList;
    wwDBNavigator1: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    RzBitBtn1: TRzBitBtn;
    qrCopyOc: TwwQuery;
    STP_COPY_OC: TADOStoredProc;
    chkSemCadastro: TDBCheckBox;
    Q_OCIMAT_DESC: TStringField;
    Q_OCIGENERICO: TStringField;
    edtMAtDesc: TDBEdit;
    Q_OCIPRECO_REP: TFloatField;
    Panel8: TPanel;
    Panel9: TPanel;
    Q_OCICOMPARADOR: TFloatField;
    Q_OCICOR: TIntegerField;
    qrMaterialMarca: TADOQuery;
    qrMaterialMarcaMATMARCA_ID: TAutoIncField;
    qrMaterialMarcaMAT_DESC: TStringField;
    qrMaterialMarcaMARCA_DESC: TStringField;
    qrMaterialMarcaMATMARCA_CONVERSAO: TFloatField;
    qrMaterialMarcaMATMARCA_EMBALAGEM: TStringField;
    qrMaterialMarcaMARCA_ID: TIntegerField;
    qrMaterialMarcaMAT_ID: TIntegerField;
    ADOQuery1: TADOQuery;
    ADOQuery1FIL_DESC: TStringField;
    ADOQuery1FIL_CODI: TStringField;
    Label1: TLabel;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_OCCOT_ID: TIntegerField;
    Q_OCDT_IMPRESSAO: TDateTimeField;
    Q_OCFIL_CODI: TStringField;
    Q_OCTipoCompra: TStringField;
    DBComboBox1: TDBComboBox;
    Label14: TLabel;
    btnLiberarEntrega: TRzBitBtn;
    Q_OCORD_ID_ORIGEM: TIntegerField;
    Q_OCAutorizaOrdemVencida: TStringField;
    Q_OCDtAutorizaOrdemVencida: TDateTimeField;
    Q_OCUsuarioAutorizaOrdemVencida: TStringField;
    qrMaterialMarcaCodigoMaterial: TStringField;
    btnGetMaterial: TBitBtn;
    procedure Q_OCAfterPost(DataSet: TDataSet);
    procedure Q_OCAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure TB1Click(Sender: TObject);
    procedure Q_OCBeforePost(DataSet: TDataSet);
    procedure Q_OCNewRecord(DataSet: TDataSet);
    procedure Q_OCBeforeDelete(DataSet: TDataSet);
    procedure DBLCCondEnter(Sender: TObject);
    procedure DBLCCondExit(Sender: TObject);
    procedure DBCBStatEnter(Sender: TObject);
    procedure Q_OCSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBBDtEntrEnter(Sender: TObject);
    procedure DBBDtEntrExit(Sender: TObject);
    procedure DBCBStatExit(Sender: TObject);
    procedure Q_OCINewRecord(DataSet: TDataSet);
    procedure Q_OCIBeforePost(DataSet: TDataSet);
    procedure Q_OCIBeforeDelete(DataSet: TDataSet);
    procedure Q_OCIAfterDelete(DataSet: TDataSet);
    procedure Q_OCIAfterPost(DataSet: TDataSet);
    procedure Q_OCIAfterScroll(DataSet: TDataSet);
    procedure DS_OCStateChange(Sender: TObject);
    procedure DS_OCIStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Q_OCIMAT_IDChange(Sender: TField);
    procedure Q_OCIPRECO_UNITChange(Sender: TField);
    procedure Q_OCIQTDE_COMPChange(Sender: TField);
    procedure SBT_RELClick(Sender: TObject);
    procedure Q_OCIIPIChange(Sender: TField);
    procedure DBLCFornExit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure Q_OCISTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DS_OCIDataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure Q_OCIMATMARCA_IDChange(Sender: TField);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Q_OCAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure TB1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure DS_OCDataChange(Sender: TObject; Field: TField);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure chkSemCadastroClick(Sender: TObject);
    procedure Q_OCICalcFields(DataSet: TDataSet);
    procedure GridOICalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnLiberarEntregaClick(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
    procedure cboMatCloseUp();


  private
    { Private declarations }
  public
    procedure ValorTotal;
  end;

var
  FOrdComp: TFOrdComp;
  Interno: Integer;
   Valor_Total: Real;
   ordem : boolean;
   Valor_ok : Boolean;
implementation

uses UMenu,Unt_Senha, URelFornecedores,U_FUNCOES,
  URelOrdComp, PesqOC, UBDinAlm, UOrcomImp, UMateriais,
  ufrmAcompanhaCompras, UfrmBuscaMaterial ;

{$R *.DFM}

procedure TFOrdComp.Q_OCAfterPost(DataSet: TDataSet);
var ID: String;
    SQL: STRING;
begin

   try BEGIN
      ID:= Q_OCORD_ID.AsString;
      FMenu.DATABASE1.ApplyUpdates([Q_OC]);
   END;   
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID = '' then
   Begin
        SQL :=  ' SELECT          MAX(ORD_ID) ORD_ID ' +
                ' FROM            ORDEM_COMPRA ' ;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('ORD_ID').AsString <> '' then
                ID := Q_AUX.FieldByName('ORD_ID').AsString;
        Q_AUX.CLOSE;

        If ID <> '' then
        Begin
                Q_OC.SQL.CLEAR;
                Q_OC.SQL.ADD(' SELECT * FROM ORDEM_COMPRA ');
                Q_OC.SQL.add(' WHERE ORD_ID = ' + ID);
                Q_OC.SQL.add(' ORDER BY ORD_ID DESC ' );
        End;

   End;

   Q_OC.Close;
   Q_OC.Open;

   IF (Q_OCSTATUS.AsString = 'T') OR (Q_OCSTATUS.AsString = 'C') THEN BEGIN
        Panel2.Enabled:= FALSE;
        Panel7.Enabled:= FALSE;
        Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast];
        Panel5.Enabled:= FALSE;
   END ELSE BEGIN
        Panel2.Enabled:= TRUE;
        Panel7.Enabled:= TRUE;
        Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbDelete,nbPost,nbCancel];
        Panel5.Enabled:= TRUE;
   END;
  if (valor_ok = true)and (Q_OCIORD_ID.AsString <> '')then
        ValorTotal;
end;

procedure TFOrdComp.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFOrdComp.Q_OCAfterDelete(DataSet: TDataSet);
var ID: String;
begin
   ID:= Q_OCORD_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_OC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_OC.Close;
       Q_OC.Open;
       Q_OC.locate('ORD_ID',ID,[loCaseInsensitive]);
   end;
end;

procedure TFOrdComp.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
        if ConsIntNum_Ocom <> '' then Begin      //CHAMADA DA BUSCA DIM.
                Q_OC.SQL.add(' WHERE ORD_ID = ' + ConsIntNum_Ocom);
                Q_OC.SQL.add(' ORDER BY ORD_ID DESC ' );
        End;

        IF ORD_ID <> '' THEN begin       //CHAMADA DA PESQUISA
                 Q_OC.SQL.add(' WHERE ORD_ID = ' + ORD_ID);
                 Q_OC.SQL.add('ORDER BY ORD_ID DESC ' );
        End;

        IF OrdemCompra <> '' THEN begin       //CHAMADA Do analise de compras
                 Q_OC.SQL.add(' WHERE ORD_ID = ' + OrdemCompra);
                 Q_OC.SQL.add(' ORDER BY ORD_ID DESC ' );
        End;

        Q_OC.Open;
        qrMaterialMarca.Open;
        TB1.PageIndex := 1;
        TB1.PageIndex := 0;

        ADOQuery1.Open;

end;

procedure TFOrdComp.SBT_SAIRClick(Sender: TObject);
var SQL:String;
Begin
        IF (Q_oci.State = dsEdit) or (Q_oci.State = dsInsert) THEN
            q_oci.Cancel ;

        IF (Q_oc.State = dsEdit) or (Q_oc.State = dsInsert) THEN
            q_oc.Cancel ;

        SQL := 'DELETE FROM ORDEM_COMPRA WHERE NOT EXISTS (SELECT 1 FROM ' +
                                                '                   ORDEM_COMPRAITEM OI ' +
                                                '          WHERE    ORDEM_COMPRA.ORD_ID = OI.ORD_ID)';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.EXECSQL;


        FOrdComp.Close;
end;

procedure TFOrdComp.TB1Click(Sender: TObject);
begin


        IF (Q_OC.State = dsEdit) or (Q_OC.State = dsInsert) Then
                begin
                         Q_OC.Post;
                end;
        IF (Q_OCI.State = dsEdit) or (Q_OCI.State = dsInsert) Then
                begin
                        Q_OCI.Post;
                        //DBLCForn.SetFocus;
                end;


              If TB1.PageIndex = 1 then
               // Fonte.DataSource := DS_OCI;
                dsMyNavPanel.DataSet := DS_OCI.DataSet;
               // SpeedButton1.Hint :='Pesquisa de Itens';


                Q_OCI.Close;
              {  Q_OCI.SQL.Clear;
                Q_OCI.SQL.Add('  SELECT		OI.* ' ) ;
                Q_OCI.SQL.Add('  FROM		ORDEM_COMPRAITEM OI, ' ) ;
                Q_OCI.SQL.Add('  MATERIAIS MAT  ' ) ;
                Q_OCI.SQL.Add('  WHERE		OI.MAT_ID = MAT.MAT_ID    ' ) ;
                Q_OCI.SQL.Add('  AND            OI.ORD_ID =  ' + '''' + Q_OCORD_ID.asstring + '''' );
                Q_OCI.SQL.Add('  ORDER BY       OI.ORD_ID   ' ) ;}

                Q_OCI.Params[0].AsInteger := Q_OCORD_ID.AsInteger;

                Q_MAT.CLOSE;
                Q_OCI.open;

                Q_MAT.OPEN;

        If TB1.PageIndex = 2 then
                //Fonte.DataSource := DS_OC;
                dsMyNavPanel.DataSet := DS_OC.DataSet;

        If TB1.PageIndex = 0 then
                //Fonte.DataSource := DS_OC;
                dsMyNavPanel.DataSet := DS_OC.DataSet;
               // SpeedButton1.Hint :='Pesquisa de OC';

end;

procedure TFOrdComp.Q_OCBeforePost(DataSet: TDataSet);
begin

        Q_OCVALOR.Value := Q_OCVALOR.Value + Q_OCVlrFrete.Value - Q_OCDescTotal.Value;

        If DBLCCond.Text = '' Then
        begin
                MessageDlg('Cond. Pagto é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBLCCond.SetFocus;
                Abort;
        end;
        If DBBDtEntr.Text = '' then
        begin
                MessageDlg('Data de Entrega é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBBDtEntr.SetFocus;
                Abort;
        end;
        If Q_OCDT_ENTREGA.AsString = '' then
        begin
                MessageDlg('Data de Entrega é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBBDtEntr.SetFocus;
                Abort;
        end;

        IF Q_OCFIL_CODI.AsString = '' then begin
            ShowMessage('Empresa é campo de preenchimento obrigatório');
            Abort;
        end;


end;

procedure TFOrdComp.Q_OCNewRecord(DataSet: TDataSet);
begin
        Panel2.Enabled:= TRUE;
        Panel7.Enabled:= TRUE;
        Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbDelete,nbPost,nbCancel];
        Panel5.Enabled:= TRUE;

        Q_OCStatus.AsString := 'A'; //'A'provado, o outro seria 'A'berto.
        Q_OCDt_Cadastro.AsDateTime := Date;
        Q_OCUsuario.AsString := StrUsuario;
        Q_OCDescTotal.Value := 0;
        Q_OCVlrFrete.Value := 0;
        try
        DBLCForn.SetFocus;
        except end
end;

procedure TFOrdComp.Q_OCBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFOrdComp.DBLCCondEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
       
end;

procedure TFOrdComp.DBLCCondExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If DBLCCond.text <> '' then
                DBLCCond.text := Q_CONDDESCRICAO.asstring  ;
end;

procedure TFOrdComp.DBCBStatEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFOrdComp.Q_OCSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
        If Sender.AsString = 'P' then
                Text := 'Parcialmente Atendida';
        If Sender.AsString = 'T' then
                Text := 'Totalmente Atendida';
        If Sender.AsString = 'A' then
                Text := 'Em Aberto';
end;

procedure TFOrdComp.DBBDtEntrEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFOrdComp.DBBDtEntrExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFOrdComp.DBCBStatExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := clwindow;
end;

procedure TFOrdComp.Q_OCINewRecord(DataSet: TDataSet);
begin
        Q_OCIORD_ID.AsString := Q_OCORD_ID.AsString;
        Q_OCIStatus.AsString := 'A';
        Q_OCIQtde.AsFloat := 0.0;
        Q_OCICONVERSAO.AsFloat := 1.0;
        Q_OCIGENERICO.Value := 'N';
//        Q_OCIUNI_ID.AsString:= Q_EMBUNI_ID.AsString;
end;

procedure TFOrdComp.Q_OCIBeforePost(DataSet: TDataSet);
var SQL: String;
begin

        If DBEDQtdComp.Text = '' Then
        begin
                MessageDlg('Qtde é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBEDQtdComp.SetFocus;
                Abort;
        end;
        If DBEDPrec.Text = '' Then
        begin
                MessageDlg('Preço Unitário é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBEDPrec.SetFocus;
                Abort;
        end;
        If wwDBEdit1.Text = '' Then
        begin
                MessageDlg('Al. IPI é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                wwDBEdit1.SetFocus;
                Abort;
        end;
        If Q_OCIQTDE_COMP.AsInteger = 0 Then
        begin
                MessageDlg('Quantidade não pode ser 0!',mtWarning,[mbok],0);
                DBEDQtdComp.SetFocus;
                Abort;
        end;

        If Q_OCIMARCA_ID.AsString = '' Then
        begin
                MessageDlg('Marca é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                Abort;
        end;

        If wwDBLookupCombo2.Text = '' Then
        begin
                MessageDlg('Embalagem é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                Abort;
        end;


        //busca informções do produto
        SQL := ' SELECT MAT_DESC, MAT_ID FROM MATERIAIS ';
        IF chkSemCadastro.Checked then
                SQL := sql + ' WHERE GENERICO = ''S'' '
        else
                SQL := SQL + ' WHERE MAT_ID = ' + Q_OCIMat_ID.AsString;

        Q_AUX.close;
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        IF chkSemCadastro.Checked = False then begin
            Q_OCIMAT_DESC.Value := Q_AUX.FieldByName('MAT_DESC').AsString;
        end;




        If (Q_OCIIPI.AsString = '') or (Q_OCIIPI.AsFloat <= 0.0) then
        Begin
                SQL :=  'SELECT         MAT_IPI ' +
                        'FROM           MATERIAIS ' +
                        'WHERE          MAT_ID = ' + Q_OCIMat_ID.AsString;
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('MAT_IPI').AsString <> '' then
                        Q_OCIIPI.AsFloat := Q_AUX.FieldByName('MAT_IPI').AsFloat;
        End;

        If Q_OCIMAT_ID.asstring <> '' then
        Begin

                Q_AUX.close;
                Q_AUX.Sql.Clear;
                Q_AUX.Sql.Add('Select count(*) as xvalor from  ORDEM_COMPRAITEM ') ;
                Q_AUX.Sql.Add(' where ORD_ID = ' + Q_OCIORD_ID.asstring ) ;
                Q_AUX.Sql.Add(' AND MATMARCA_ID  = ' + Q_OCIMATMARCA_ID.asstring ) ;                
                Q_AUX.Sql.Add(' and MAT_ID = ' + Q_OCIMAT_ID.asstring ) ;
                Q_AUX.Sql.Add(' and GENERICO <> ''S'' ') ;
                Q_AUX.open ;

                 If (Q_AUX.fieldbyname('XVALOR').asinteger = 1) and (DS_OCI.State = dsInsert) then begin

                          MessageDlg('Já existe Embalagem para este Material cadastrado nesta O.C.!',mtWarning,[mbok],0);
                          TB1.pageindex := 1 ;
                          wwDBLookupCombo2.SetFocus;
                          Abort;
                 end ;
        End;




        Q_OCIQtde_Estq_Comp.AsFloat := Q_OCIQtde_Comp.AsFloat * Q_OCIConversao.AsFloat;


end;

procedure TFOrdComp.Q_OCIBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFOrdComp.Q_OCIAfterDelete(DataSet: TDataSet);
Var ID:String;
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

procedure TFOrdComp.Q_OCIAfterPost(DataSet: TDataSet);
var ID: String;
begin

   try BEGIN
      ID:= Q_OCIMAT_ID.AsString;
      FMenu.DATABASE1.ApplyUpdates([Q_OCI]);
   END;
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


   if Q_OCIORD_ID.AsString = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add('select max(ORD_ID) as ORDEM from ORDEM_COMPRA') ;
     Q_AUX.open ;
     ID := Q_AUX.fieldbyname('ORDEM').asstring ;
   end  ;
   //Q_OC.locate('ORD_ID',ID,[]);

   Q_AUX.close ;
   Q_AUX.SQL.CLEAR;
   Q_AUX.sQL.ADD('SELECT SUM(VL_TOTITEM) as xValor from ordem_COMPRAITEM');
   Q_AUX.sql.ADD(' where ORD_ID = ' + Q_OCIORD_ID.AsString);
   Q_AUX.open ;

   Valor_Total := Q_AUX.FieldByName('XVALOR').AsFloat + Q_OCVlrFrete.Value - Q_OCDescTotal.Value ;

   If Valor_Total <> 0 then begin
   Q_AUX.close ;
   Q_AUX.SQL.Clear;
   Q_AUX.sQL.ADD('update ORDEM_COMPRA SET  VALOR =' + Funcoes.Converte(floattostr(Valor_Total) ,',','.'));
   Q_AUX.SQL.ADD(' where ord_id = ' + Q_OCIORD_ID.AsString);
   Q_AUX.ExecSQL;

   Q_EMB.CLOSE;
   Q_MAT.CLOSE;
   Q_UNI.CLOSE;
   Q_MARC.CLOSE;
   Q_MARCX.CLOSE;

   Q_EMB.OPEN;
   Q_MARC.Open;
   Q_MAT.Open;
   Q_UNI.Open;

   //Para atualizar o valor geral.
   Q_OC.Close;
   Q_OC.Open;

   Valor_ok := True;
   //wwDBLookupCombo3.SetFocus;
   //Q_OCI.Append;

   end;
end;

procedure TFOrdComp.Q_OCIAfterScroll(DataSet: TDataSet);
begin
        {If Tb1.PageIndex = 1 then
        Begin
                //Porque não poderá incluir, excluir ou alterar quaisquer itens.
                If (Q_OCIStatus.AsString = 'A') then
                Begin
                        cboMatCad.Enabled := true;
                        cboForm.Enabled := true;
                        DBEDQtdComp.Enabled := true;
                        DBEDPrec.Enabled := true;
                End Else Begin
                        IF not Q_OCI.EOF then
                        Begin
                                cboMatCad.Enabled := false;
                                cboForm.Enabled := false;
                                DBEDQtdComp.Enabled := false;
                                DBEDPrec.Enabled := false;
                        End Else Begin
                                cboMatCad.Enabled := true;
                                cboForm.Enabled := true;
                                DBEDQtdComp.Enabled := true;
                                DBEDPrec.Enabled := true;
                        End;
                        Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbPost,nbCancel]);
                End;

                //Não permite alteração se ordem não estiver 'A'berto.
                If Q_OCStatus.AsString <> 'A' then
                Begin
                        Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast]);
                End;
        End;}
end;

procedure TFOrdComp.DS_OCStateChange(Sender: TObject);
begin
        IF (Q_OC.State = dsEdit) or (Q_OC.State = dsInsert) THEN
                begin
                   Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbDelete,nbPost,nbCancel];
                        If Q_OC.State = dsEdit Then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                        Else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';
                        End;
                                LBL_STATUS.Visible := true;
        end;
        If Q_OC.State = dsbrowse then
        begin
                Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbCancel];
                LBL_STATUS.Visible := false;
        end;

end;

procedure TFOrdComp.DS_OCIStateChange(Sender: TObject);
begin

        If (Q_OCI.State = dsEdit) or (Q_OCI.State = dsInsert) THEN
                begin
                        If Q_OCI.State = dsEdit Then
                                begin
                                LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                        Else
                                begin
                                LBL_STATUS.Caption := 'INCLUSÃO';
                        End;
                                LBL_STATUS.Visible := true;
                end
        ELSE
        begin
                LBL_STATUS.Visible := false;
        end;
   //Se for diferente de Aberto já foi testado em
  //AfterScroll do OI.

  {If Q_OCStatus.AsString = 'A' then
  Begin
          //OC que estejam em aberto apenas.
          If Q_OIStatus.AsString = 'A' then
          Begin
                txtSolAg.Enabled := true;
          End Else Begin
                txtSolAg.Enabled := false;
          End;

          if  (sender as twwDataSource).state = dsbrowse then
          Begin

                If Q_OIStatus.AsString = 'A' then
                Begin
                      txtSolAg.Enabled := true;
                      bt_Excluir.enabled := true;
                End Else Begin
                      txtSolAg.Enabled := false;
                      bt_Excluir.Enabled := false;
                End;

                Bt_Incluir.Enabled := true;

                If (sender as twwDataSource).DataSet.EOF then
                        Bt_excluir.Enabled := false;

                bt_Cancelar.enabled := FALSE ;
                bt_gravar.Enabled := FALSE;
                SBT_SAIR.Enabled := TRUE;
           end;

           if (sender as twwDataSource).state = dsEdit then begin
               bt_Excluir.enabled := FALSE ;
               bt_Cancelar.enabled := true ;
               bt_gravar.Enabled := true;
               SBT_SAIR.Enabled := TRUE;
           end;

          if (sender as twwDataSource).state = dsInsert then begin
              txtSolAg.Enabled := true;
              SBT_SAIR.Enabled := false;
              bt_Excluir.enabled := false ;
              bt_Cancelar.enabled := true ;
              bt_gravar.Enabled := true;
           end;
  End; }
end;

procedure TFOrdComp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if Q_OC.State in [dsEdit, dsInsert] then
     Q_OC.Post;
     Q_EMBX.Close;
     Action:= cafree;
end;

procedure TFOrdComp.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If wwDBLookupCombo1.text <> '' then
                wwDBLookupCombo1.text := Q_USUNOME.asstring;
end;

procedure TFOrdComp.Q_OCIMAT_IDChange(Sender: TField);
var SQL: String;
begin
        If (Sender as TField).Asstring <> '' THEN
        Begin
                SQL := ' SELECT         UNI_ID,  ' +
                       '                MAT_IPI ' +
                       ' FROM           MATERIAIS ' +
                       ' WHERE          MAT_ID = ' + (Sender as TField).Asstring;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('MAT_IPI').AsString <> '' Then
                        Q_OCIIPI.AsFloat := Q_AUX.FieldByName('MAT_IPI').AsFloat
                Else
                        Q_OCIIPI.AsFloat := 0.0;

                Q_OCIUni_Estq_ID.AsString := Q_AUX.FieldByName('UNI_ID').AsString;
        End Else
                Q_OCIUni_Estq_ID.AsString := '';

end;

procedure TFOrdComp.Q_OCIPRECO_UNITChange(Sender: TField);
begin
        If Interno = 0 then
        Begin
                If (Sender as TField).text <> '' then
                begin
                        Q_OCIVALOR.AsFloat := Q_OCIQTDE_COMP.AsFloat * Q_OCIPreco_Unit.AsFloat;
                        Q_OCIVL_IPI.AsFloat := Q_OCIIPI.AsFloat * Q_OCIVALOR.AsFloat / 100;
                        Q_OCIVL_TOTITEM.AsFloat := Q_OCIVL_IPI.AsFloat + Q_OCIVALOR.AsFloat;
                end Else begin
                        Q_OCIValor.AsFloat := 0;
                        Q_OCIVL_IPI.AsFloat := 0;
                end;
        End;
end;


procedure TFOrdComp.Q_OCIQTDE_COMPChange(Sender: TField);
begin
        If Interno = 0 then //para evitar que esta rotina seja disparada internamente, quando
                           // do onchange de M_F_ID (ou o ID da Unidade de Compra).
        Begin
                If (Sender as TField).text <> '' Then
                begin
                       Q_OCIValor.AsFloat := (Sender as TField).AsFloat * Q_OCIPreco_Unit.AsFloat;
                       Q_OCIVL_IPI.AsFloat := Q_OCIIPI.AsFloat * Q_OCIVALOR.AsFloat / 100;
                       Q_OCIVL_TOTITEM.AsFloat := Q_OCIVL_IPI.AsFloat + Q_OCIVALOR.AsFloat;
                end Else begin
                       Q_OCIValor.AsFloat := 0;
                       Q_OCIVL_IPI.AsFloat := 0;
                end;
        End;
end;

procedure TFOrdComp.SBT_RELClick(Sender: TObject);
VAR ORD: STRING;
begin
   //ordem:= true;

   ORD:= Q_OCORD_ID.ASSTRING;

   If wwDBLookupCombo1.LookupValue <> '' then
   begin
        Application.CreateForm(TFRelOrdemCompra, FRelOrdemCompra);
        FRelOrdemCompra.OrdemComp.Preview;
        FRelOrdemCompra.Close;
        //ordem:= false;

        Q_OC.CLOSE;
        Q_OC.Open;
        Q_OC.Locate('ORD_ID',ORD ,[]) ;

   end
   Else
         MessageDlg('O Campo Autorizador é de Preenchimento Obrigatorio!',mtWarning,[mbok],0);
         TB1.PageIndex := 0;
 //        wwDBLookupCombo1.SetFocus;
         Abort;

end;

procedure TFOrdComp.Q_OCIIPIChange(Sender: TField);
begin
        IF Q_OCIIPI.AsString <> '' then
                Q_OCIVL_IPI.AsFloat :=Q_OCIVALOR.AsFloat * Q_OCIIPI.AsFloat/ 100
        Else
                Q_OCIVL_IPI.AsFloat := 0;
end;

procedure TFOrdComp.DBLCFornExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If DBLCForn.text <> '' then
                DBLCForn.text := Q_FORNFOR_RAZA.asstring  ;
end;

procedure TFOrdComp.wwDBLookupCombo3Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If wwDBLookupCombo3.text <> '' then
                wwDBLookupCombo3.text := qrMaterialMarcaMAT_DESC.asstring  ;

        Q_EMB.CLOSE;
        Q_EMB.OPEN;
end;

procedure TFOrdComp.Q_OCISTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
        If Sender.AsString = 'P' then
                Text := 'Parcial';
        If Sender.AsString = 'T' then
                Text := 'Total';
        If Sender.AsString = 'A' then
                Text := 'Em Aberto';
        If Sender.AsString = 'C' then
                Text := 'Item Cancelado';
end;

procedure TFOrdComp.DS_OCIDataChange(Sender: TObject; Field: TField);
begin
//  dsMyNavPanel.DataSet := DS_OCI.DataSet;
//        If Q_OCIMAT_ID.AsString = '' Then
//        begin
                //lblEmb.Caption := '';
//                lblUni.Caption := '';
//        end
//        Else begin
                //lblEmb.Caption :=Q_MATMFOR_EMBALAGEM.AsString;
                //lblUni.Caption := Q_EMBunidade.AsString;
//        end;

      try
        IF Q_OCIGENERICO.Value = 'S' then begin
            wwDBLookupCombo3.Visible := False;
            edtMAtDesc.Visible := True;
        end else begin
            edtMAtDesc.Visible := False;
            wwDBLookupCombo3.Visible := True;
            ///wwDBLookupCombo3.SetFocus;
        end;
      except end;


end;

procedure TFOrdComp.wwDBLookupCombo2Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If wwDBLookupCombo2.text <> '' then
                wwDBLookupCombo2.text := Q_EMBMATMARCA_EMBALAGEM.asstring  ;

  {   IF (Q_oci.State = dsEdit) or (Q_oci.State = dsInsert) THEN
     begin
         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add('Select count(*) as xvalor from  ORDEM_COMPRAITEM ') ;
         Q_AUX.Sql.Add(' where ORD_ID = ' + Q_OCIORD_ID.asstring ) ;
         Q_AUX.Sql.Add(' and MAT_ID = ' + Q_OCIMAT_ID.asstring ) ;
         Q_AUX.Sql.Add(' and MATMARCA_ID = ' + Q_EMBMATMARCA_ID.asstring ) ;
         Q_AUX.open ;

         If Q_AUX.fieldbyname('XVALOR').asinteger = 1 then begin

                  MessageDlg('Já existe Material e Embalagem cadastrados nesta O.C.!',mtWarning,[mbok],0);
                  Abort;
         end ;
     end ;    } 

end;

procedure TFOrdComp.wwDBLookupCombo4Exit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := Clwindow;
        If wwDBLookupCombo4.text <> '' then
                wwDBLookupCombo4.text := Q_MARCMARCA_DESC.asstring  ;
end;

procedure TFOrdComp.Q_OCIMATMARCA_IDChange(Sender: TField);
var     SQL:String;
        Preco: Double;
        Fator : Double; UNI_ID, Uni_Comp_ID:String;
begin
        Interno := 1;
         //Evita que dispare outros onchange, de preço e de valor

        If (Sender as TField).Text <> '' THEN
        Begin
                SQL :=  ' SELECT          MF.UNI_ID, ' +
                        '                 MF.MATMARCA_CONVERSAO, ' +
                        '                 MF.MATMARCA_EMBALAGEM, ' +
                        '                 MF.MATMARCA_PRE_ULTCOMP ' +
                        ' FROM            MATERIAL_MARCA  MF ' +
                        ' WHERE           MF.MATMARCA_ID  = ' + (Sender as TField).Text;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                Fator := Q_AUX.FIELDBYNAME('MATMARCA_CONVERSAO').AsFloat;
                Uni_Comp_ID := Q_AUX.FIELDBYNAME('UNI_ID').AsString;
                Preco := Q_AUX.FIELDBYNAME('MATMARCA_PRE_ULTCOMP').AsFloat;

                IF chkSemCadastro.Checked then
                        Q_OCIPRECO_UNIT.AsFloat := 0
                else
                        Q_OCIPreco_Unit.AsFloat := Preco;

                Q_OCIVALOR.AsFloat := Q_OCIQTDE_COMP.AsFloat * Q_OCIPreco_Unit.AsFloat;
                Q_OCIVL_IPI.AsFloat := Q_OCIIPI.AsFloat * Q_OCIVALOR.AsFloat / 100;
                        If Q_OCIVL_IPI.AsFloat = 0 then
                                wwDBEdit6.Text := Q_OCIVL_IPI.AsString;
                Q_OCIVL_TOTITEM.AsFloat := Q_OCIVL_IPI.AsFloat + Q_OCIVALOR.AsFloat;

        End ELSE
        begin
                Fator := 1;
                Uni_Comp_ID := Q_OCIUni_Estq_ID.AsString;
                Preco := 0;

                Q_OCIValor.AsFloat := 0;
                Q_OCIVL_IPI.AsFloat := 0;
        end;

        If Fator <= 0.0 then
                Fator := 1;
        If Uni_Comp_ID = '' then
                Uni_Comp_ID := Q_OCIUni_Estq_ID.AsString;

        Q_OCIConversao.AsFloat := Fator;
        Q_OCIUni_Comp_ID.AsString := Uni_Comp_ID;
        Q_OCIQtde_Estq_Comp.AsFloat := Q_OCIQtde_Comp.AsFloat * Q_OCIConversao.AsFloat;

        Interno := 0;

end;

procedure TFOrdComp.wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

  {  if  wwDBLookupCombo3.Text <> '' then begin
         Q_OCIMAT_ID.AsInteger := qrMaterialMarcaMAT_ID.AsInteger;

         If Q_OCIMat_ID.AsString <> '' then
         Begin

                 Q_MARC.close;
                 Q_MARC.SQL.clear ;
                 Q_MARC.SQL.ADD(' SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC ');
                 Q_MARC.SQL.ADD(' FROM MATERIAL_MARCA A,') ;
                 Q_MARC.SQL.ADD('       MARCAS B ') ;
                 Q_MARC.SQL.ADD(' WHERE A.MARCA_ID = B.MARCA_ID ') ;
                 Q_MARC.SQL.ADD(' and MAT_ID = ' + Q_OCIMAT_ID.asstring ) ;
                 Q_MARC.SQL.ADD(' GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID ') ;
                 Q_MARC.open ;
         End;



         wwDBLookupCombo4.Text := qrMaterialMarcaMARCA_DESC.Value;
         Q_OCIMARCA_ID.AsInteger := qrMaterialMarcaMARCA_ID.AsInteger;

         Q_EMB.close;
         Q_EMB.open ;

    end; }

    cboMatCloseUp;


end;

procedure TFOrdComp.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
    IF (Q_OCSTATUS.AsString = 'T') OR (Q_OCSTATUS.AsString = 'C') THEN BEGIN
        Panel2.Enabled:= FALSE;
        Panel7.Enabled:= FALSE;
        Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast];
        Panel5.Enabled:= FALSE;
    END ELSE BEGIN
        Panel2.Enabled:= TRUE;
        Panel7.Enabled:= TRUE;
        Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbDelete,nbPost,nbCancel];
        Panel5.Enabled:= TRUE;
    END;
end;

procedure TFOrdComp.FormShow(Sender: TObject);
var SQL : string;
begin

  

       Q_FORN.Open;

        Q_COND.Open;

        Q_USU.Open;

        Q_MAT.Open;

        Q_UNI.Open;

        Q_EMB.Open;

        Q_MARC.Open;

        Q_MARCX.OPEN;

        Q_EMBX.OPEN;

         TB1.PageIndex := 0;
         Q_OC.First;

         IF CLIC = TRUE THEN
           Q_OC.Insert;

         dsMyNavPanel.DataSet := Q_OC;

end;

procedure TFOrdComp.BitBtn2Click(Sender: TObject);
begin
        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.ShowModal;
        FMateriais.Release;

end;

procedure TFOrdComp.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        Q_EMB.Close;
        Q_EMB.Open;
end;

procedure TFOrdComp.Q_OCAfterScroll(DataSet: TDataSet);
begin
         IF (Q_OCSTATUS.AsString = 'T') OR (Q_OCSTATUS.AsString = 'C') THEN BEGIN
            Panel2.Enabled:= FALSE;
            Panel7.Enabled:= FALSE;
            Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast];
            Panel5.Enabled:= FALSE;
         END ELSE BEGIN
            Panel2.Enabled:= TRUE;
            Panel7.Enabled:= TRUE;
            Fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbinsert,nbDelete,nbPost,nbCancel];
            Panel5.Enabled:= TRUE;
        END;
end;

procedure TFOrdComp.ValorTotal;
begin

   Q_AUX.close ;
   Q_AUX.SQL.CLEAR;
   Q_AUX.sQL.ADD('SELECT SUM(VL_TOTITEM) as xValor from ordem_COMPRAITEM');
   Q_AUX.sql.ADD(' where ORD_ID = ' + Q_OCIORD_ID.AsString);
   Q_AUX.open ;

   Valor_Total := Q_AUX.FieldByName('XVALOR').AsFloat + Q_OCVlrFrete.Value - Q_OCDescTotal.Value ;

   If Valor_Total <> 0 then begin
   Q_AUX.close ;
   Q_AUX.SQL.Clear;
   Q_AUX.sQL.ADD('update ORDEM_COMPRA SET  VALOR =' + Funcoes.Converte(floattostr(Valor_Total) ,',','.'));
   Q_AUX.SQL.ADD(' where ord_id = ' + Q_OCIORD_ID.AsString);
   Q_AUX.ExecSQL;

    Q_OC.Close;
   Q_OC.Open;
end;
end;

procedure TFOrdComp.btnAddClick(Sender: TObject);
begin
//   if  dsMyNavPanel.DataSet.State in [dsBrowse] then
   try
     if TB1.PageIndex = 1 then
        wwDBLookupCombo3.SetFocus;
     dsMyNavPanel.DataSet.Append;
   except end;
end;

procedure TFOrdComp.btnCancelClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsEdit, dsInsert] then
     dsMyNavPanel.DataSet.Cancel;
end;

procedure TFOrdComp.btnDeleteClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Delete;
end;

procedure TFOrdComp.btnFirstClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
    dsMyNavPanel.DataSet.First;
end;

procedure TFOrdComp.btnLastClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Last;
end;

procedure TFOrdComp.btnNextClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Next;
end;

procedure TFOrdComp.btnPostClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsEdit, dsInsert] then
     dsMyNavPanel.DataSet.Post;
end;

procedure TFOrdComp.btnPriorClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Prior;
end;

procedure TFOrdComp.TB1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
   IF Q_OC.State IN [dsInsert, dsEdit] then
      Q_OC.Post;

   if Q_OCI.State in [dsInsert, dsEdit] then
      Q_OCI.Post;

         
   if TB1.PageIndex = 0 then  begin
     dsMyNavPanel.DataSet := DS_OC.DataSet;
    // wwDBNavigator1.Buttons[10].Enabled := False;
   end
   else if tb1.PageIndex = 1 then  begin
     dsMyNavPanel.DataSet := DS_OCI.DataSet;
    // wwDBNavigator1.Buttons[10].Enabled := True;
   end
   else  begin
     dsMyNavPanel.DataSet := DS_OC.DataSet;
     //wwDBNavigator1.Buttons[10].Enabled := False;
   end;

   if   dsMyNavPanel.DataSet <>  DS_OCI.DataSet then
       wwDBNavigator1.Buttons[10].Enabled := True
   else
        wwDBNavigator1.Buttons[10].Enabled := False;

end;

procedure TFOrdComp.DS_OCDataChange(Sender: TObject; Field: TField);
begin
//  dsMyNavPanel.DataSet := DS_OC.DataSet;
        btnLiberarEntrega.Visible := False;
        if FMenu.sqlUsuariosAprovaEntregaOCAtrasada.AsString = 'S' then begin
            if (Q_OCDT_ENTREGA.AsDateTime + 10) < Now then begin
                if Q_OCAutorizaOrdemVencida.AsString <> 'S' then begin
                    btnLiberarEntrega.Visible := True;
                end;
            end;
        end;

end;

procedure TFOrdComp.wwDBEdit1Exit(Sender: TObject);
begin
  try
  DBBDtEntr.Color := clWindow;
  wwDBLookupCombo3.SetFocus;
  if Q_OCI.State in [dsEdit, dsInsert] then
  Q_OCI.Post;
  except end;
end;

procedure TFOrdComp.wwDBNavigator1Button1Click(Sender: TObject);
begin
       if Q_OCIMAT_ID.AsString = '' then Abort;
        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + Q_OCIMAT_ID.AsString);
        FMateriais.Q_MAT.Open;
        //FMateriais.Q_MAT.Append;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TFOrdComp.wwDBNavigator1ButtonClick(Sender: TObject);
begin

      if Q_OCDT_ENTREGA.AsString = '' then
      begin
         MessageBox(Self.Handle, 'Informe a data de entrega!', 'Erro', MB_OK + MB_ICONERROR)  ;
         Abort;
      end;

        Application.CreateForm(tFOrcomImp, FOrcomImp);
        FOrcomImp.ShowModal;
        FOrcomImp.Release;
end;

procedure TFOrdComp.FormPaint(Sender: TObject);
begin
dsMyNavPanel.DataSet := Q_OC;
end;

procedure TFOrdComp.RzBitBtn1Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Confirma geração de cópia desta ordem de compra?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
   begin
        STP_COPY_OC.Parameters[0].Value := Q_OCORD_ID.Value;
        STP_COPY_OC.Prepared;
        STP_COPY_OC.ExecProc;
        ORD_ID :=  IntToStr(STP_COPY_OC.Parameters[1].Value) ;

        //MessageBox(Self.Handle, pchar('Ordem de compra ' + ORD_ID + ' gerada com sucesso'), 'Informação', MB_OK + MB_ICONINFORMATION)  ;
        Application.CreateForm(TFOrdComp, FOrdComp);
        FOrdComp.ShowModal;
        //FOrdComp.Release;
   end;

   ORD_ID := Q_OCORD_ID.AsString;
end;

procedure TFOrdComp.chkSemCadastroClick(Sender: TObject);
begin
  if chkSemCadastro.Checked then  begin
     wwDBLookupCombo3.Visible := False;
     Q_MARC.close;
     Q_MARC.SQL.clear ;
     Q_MARC.SQL.ADD(' SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC ');
     Q_MARC.SQL.ADD(' FROM MATERIAL_MARCA A,') ;
     Q_MARC.SQL.ADD('       MARCAS B ') ;
     Q_MARC.SQL.ADD(' WHERE A.MARCA_ID = B.MARCA_ID ') ;
     Q_MARC.SQL.ADD(' and MAT_ID in ( SELECT MAT_ID FROM MATERIAIS WHERE GENERICO = ''S'') ');
     Q_MARC.SQL.ADD(' GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID ') ;
     Q_MARC.open ;

     if Q_OCI.State in [dsEdit, dsInsert] then
        Q_OCIMAT_ID.AsInteger := Q_MARCMAT_ID.Value;

     Q_EMB.CLOSE;
     Q_EMB.OpeN;
     edtMAtDesc.Visible := True;

     wwDBLookupCombo4.Enabled := True;
     wwDBLookupCombo2.Enabled := True;

  end else begin
     wwDBLookupCombo3.Visible := True;
     edtMAtDesc.Visible := False;
     wwDBLookupCombo4.Enabled := False;
     wwDBLookupCombo2.Enabled := False;
  end;

end;

procedure TFOrdComp.Q_OCICalcFields(DataSet: TDataSet);
var v: Real;
begin
  //    verifica se o valor da compra é maior ou menor q 20% do custo de reposição
  V := 0;
  IF (Q_OCIPRECO_REP.AsString <> '') and (Q_OCIPRECO_REP.AsFloat > 0) then begin
     v := (100 * Q_OCIPRECO_UNIT.AsFloat) / Q_OCIPRECO_REP.AsFloat;

     if v > 100 then begin
         v := v - 100;

         Q_OCICOMPARADOR.Value := v; //20% acima do valor
         if v >= 20 then
            Q_OCICOR.Value := 1;

     end
     else begin
         v := 100 - v;
         if v >= 20 then
            Q_OCICOR.Value := 2;
         Q_OCICOMPARADOR.Value := v * -1; //20% abaixo do valor


     end;
  end;


end;

procedure TFOrdComp.GridOICalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if Q_OCICOR.Value = 1 then
        ABrush.Color :=  $007D7DFF;

  if Q_OCICOR.Value = 2 then
        ABrush.Color :=  $006AFFFF;

  if Highlight then
        AFont.Color := clBlue
  else
        AFont.Color := clBlue;
end;

procedure TFOrdComp.btnLiberarEntregaClick(Sender: TObject);
begin
    if MessageBox(Self.Handle, 'Confirma a liberação da entrega da OC mesmo com mais de 10 dias de atraso?', 'Confirmação', MB_YESNO) = 6 then begin
        Q_OC.Edit;
        Q_OCAutorizaOrdemVencida.Value := 'S';
        Q_OCDtAutorizaOrdemVencida.Value := Now;
        Q_OCUsuarioAutorizaOrdemVencida.Value := FMenu.sqlUsuariosNOME_COMPLETO.AsString;
        Q_OC.Post;
        ShowMessage('OC autorizada!');
    end;
end;


procedure TFOrdComp.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := True;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
      if Q_OCIIORD_ID.AsString = '' then
         Q_OCI.Append
      else
         Q_OCI.Edit;

      Q_OCIMATMARCA_ID.Value := StrToInt(frmBuscaMaterial.lbSelecao.Caption);
      cboMatCloseUp;
      wwDBLookupCombo3.SetFocus;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

procedure TFOrdComp.cboMatCloseUp;
begin
    if  wwDBLookupCombo3.Text <> '' then begin
         Q_OCIMAT_ID.AsInteger := qrMaterialMarcaMAT_ID.AsInteger;

         If Q_OCIMat_ID.AsString <> '' then
         Begin

                 Q_MARC.close;
                 Q_MARC.SQL.clear ;
                 Q_MARC.SQL.ADD(' SELECT A.MAT_ID, A.MARCA_ID, A.UNI_ID , B.MARCA_DESC ');
                 Q_MARC.SQL.ADD(' FROM MATERIAL_MARCA A,') ;
                 Q_MARC.SQL.ADD('       MARCAS B ') ;
                 Q_MARC.SQL.ADD(' WHERE A.MARCA_ID = B.MARCA_ID ') ;
                 Q_MARC.SQL.ADD(' and MAT_ID = ' + Q_OCIMAT_ID.asstring ) ;
                 Q_MARC.SQL.ADD(' GROUP BY  A.MARCA_ID,B.MARCA_DESC,A.MAT_ID,A.UNI_ID ') ;
                 Q_MARC.open ;
         End;



         wwDBLookupCombo4.Text := qrMaterialMarcaMARCA_DESC.Value;
         Q_OCIMARCA_ID.AsInteger := qrMaterialMarcaMARCA_ID.AsInteger;

         Q_EMB.close;
         Q_EMB.open ;

    end;
end;

end.

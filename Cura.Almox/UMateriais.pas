unit UMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Wwdotdot, Wwdbcomb, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons,
  ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc, wwDialog, wwidlg, Grids,
  Wwdbigrd, Wwdbgrid, ComCtrls, Tabnotbk, wwSpeedButton, wwDBNavigator,
  wwclearpanel, ImgList, ADODB;

type
  TFMateriais = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    Fonte2: TDBNavigator;
    Q_MAT: TwwQuery;
    UPD_MAT: TUpdateSQL;
    DS_MAT: TwwDataSource;
    SBT_REL: TSpeedButton;
    PESQ_MAT: TwwSearchDialog;
    Q_PSQMAT: TwwQuery;
    Q_PSQMATMAT_ID: TAutoIncField;
    Q_PSQMATMAT_DESC: TStringField;
    Q_PSQMATGRU_ID: TIntegerField;
    Q_PSQMATUNI_ID: TIntegerField;
    Q_PSQMATMAT_IPI: TFloatField;
    Q_PSQMATMAT_CONTROLA: TStringField;
    SBT_PES: TSpeedButton;
    Q_GRMAT: TwwQuery;
    Q_GRMATGRU_ID: TAutoIncField;
    Q_GRMATGRU_DESC: TStringField;
    DS_GRMAT: TwwDataSource;
    Q_UNI: TwwQuery;
    DS_UNI: TwwDataSource;
    TabbedNotebook1: TTabbedNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBE_MAT_DESC: TwwDBEdit;
    DBLC_MAT_GRU_ID: TwwDBLookupCombo;
    Panel4: TPanel;
    Label8: TLabel;
    DBLC_MATFORN_FOR_RAZA: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBE_MATFORN_EMBALAGEM: TwwDBEdit;
    GRID_MATFORN: TwwDBGrid;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_CGC: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNFOR_SEGU: TIntegerField;
    Q_FORNFOR_UCOM: TDateTimeField;
    Q_FORNFOR_VUCO: TFloatField;
    Q_FORNFOR_VUCD: TFloatField;
    Q_FORNFOR_MCOM: TDateTimeField;
    Q_FORNFOR_VMCO: TFloatField;
    Q_FORNFOR_VMCD: TFloatField;
    DS_FORN: TwwDataSource;
    Q_MATFORN: TwwQuery;
    DS_MATFORN: TwwDataSource;
    UPD_MATFORN: TUpdateSQL;
    Q_MATFORNMFOR_ID: TAutoIncField;
    Q_MATFORNMAT_ID: TIntegerField;
    Q_MATFORNFOR_CODI: TStringField;
    Q_MATFORNMFOR_EMBALAGEM: TStringField;
    Q_MATFORNUNI_ID: TIntegerField;
    Q_MATFORNMFOR_CONVERSAO: TFloatField;
    Q_MATFORNMFOR_DT_ULTCOMP: TDateTimeField;
    Q_MATFORNMFOR_PRE_ULTCOMP: TFloatField;
    Q_MATFORNMFOR_DT_ULTCOTA: TDateTimeField;
    Q_MATFORNMFOR_PRE_ULTCOTA: TFloatField;
    Q_MATFORNcodi_raza: TStringField;
    Label9: TLabel;
    Label12: TLabel;
    DBE_MATFORN_DT_ULTCOMP: TwwDBEdit;
    Label13: TLabel;
    DBE_MATFORN_PRE_ULTCOMP: TwwDBEdit;
    Label14: TLabel;
    DBE_MATFORN_DT_ULTCOTA: TwwDBEdit;
    Label16: TLabel;
    DBE_MATFORN_PRE_ULTCOTA: TwwDBEdit;
    DBE_MATFORN_CONVERSAO: TwwDBEdit;
    PESQ_MATMARC: TwwSearchDialog;
    Q_PSQMATMARC: TwwQuery;
    DBText1: TDBText;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    Q_MATuni_desc: TStringField;
    Q_MATFORNuni_desc: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_PSQMATMAT_ESTMIN: TFloatField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MATGRU_ID: TIntegerField;
    Q_MATUNI_ID: TIntegerField;
    Q_MATMAT_IPI: TFloatField;
    Q_MATMAT_CONTROLA: TStringField;
    Q_MATMAT_ESTMIN: TFloatField;
    Label11: TLabel;
    Q_MATMAT_LOTEPED: TFloatField;
    Q_PSQMATMAT_LOTEPED: TFloatField;
    Q_AUX: TwwQuery;
    Label17: TLabel;
    Q_MATMAT_LOCACAO: TStringField;
    Label19: TLabel;
    DBText2: TDBText;
    Q_MARC: TwwQuery;
    DS_MARC: TwwDataSource;
    UPD_MATMARC: TUpdateSQL;
    Q_MATMARC: TwwQuery;
    DS_MATMARC: TwwDataSource;
    Q_MATMARCMATMARCA_ID: TAutoIncField;
    Q_MATMARCMAT_ID: TIntegerField;
    Q_MATMARCMARCA_ID: TIntegerField;
    Q_MATMARCMATMARCA_EMBALAGEM: TStringField;
    Q_MATMARCUNI_ID: TIntegerField;
    Q_MATMARCMATMARCA_CONVERSAO: TFloatField;
    Q_MATMARCMATMARCA_DT_ULTCOMP: TDateTimeField;
    Q_MATMARCMATMARCA_PRE_ULTCOMP: TFloatField;
    Q_MATMARCMATMARCA_DT_ULTCOTA: TDateTimeField;
    Q_MATMARCMATMARCA_PRE_ULTCOTA: TFloatField;
    Q_MARCMARCA_ID: TAutoIncField;
    Q_MARCMARCA_DESC: TStringField;
    Q_MATMARCmarca: TStringField;
    Q_MATMARCunidade: TStringField;
    Q_PSQMATMARCMATMARCA_ID: TAutoIncField;
    Q_PSQMATMARCMAT_ID: TIntegerField;
    Q_PSQMATMARCMARCA_ID: TIntegerField;
    Q_PSQMATMARCMATMARCA_EMBALAGEM: TStringField;
    Q_PSQMATMARCUNI_ID: TIntegerField;
    Q_PSQMATMARCMATMARCA_CONVERSAO: TFloatField;
    Q_PSQMATMARCMATMARCA_DT_ULTCOMP: TDateTimeField;
    Q_PSQMATMARCMATMARCA_PRE_ULTCOMP: TFloatField;
    Q_PSQMATMARCMATMARCA_DT_ULTCOTA: TDateTimeField;
    Q_PSQMATMARCMATMARCA_PRE_ULTCOTA: TFloatField;
    Q_PSQMATMARCmarca: TStringField;
    wwQuery1: TwwQuery;
    DBText3: TDBText;
    SpeedButton2: TSpeedButton;
    ImageList1: TImageList;
    FONTE: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    Q_MATCusto_Medio: TFloatField;
    qrUltimaCompra: TwwQuery;
    qrUltimaCompraPRECO_UNIT: TFloatField;
    qrAuxiliar: TwwQuery;
    CheckBox1: TCheckBox;
    Q_MATGENERICO: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Q_MATMAT_ATIVO: TStringField;
    qrCompasUltimaCompra: TwwQuery;
    qrCompasUltimaCompraPreco_Unit: TFloatField;
    dsComprasUltimaCompra: TDataSource;
    qrCompasUltimaCompraDT_CADASTRO: TDateTimeField;
    Q_MATMAT_ESTMAX: TFloatField;
    Q_MATCONTROLA_GRUPO: TStringField;
    DBCheckBox3: TDBCheckBox;
    Q_MATCOD_BIONEXO: TStringField;
    Label22: TLabel;
    wwDBEdit3: TwwDBEdit;
    Q_MATMARCCodBionexo: TStringField;
    DBCheckBox4: TDBCheckBox;
    Q_MATRelConsumo: TStringField;
    dbchk1: TDBCheckBox;
    Q_MATCritico: TStringField;
    ADOQuery1: TADOQuery;
    qrMaterialArea: TADOQuery;
    qrMaterialAreaIdMaterialArea: TAutoIncField;
    qrMaterialAreaMAT_ID: TIntegerField;
    qrMaterialAreaLocal_ID: TIntegerField;
    qrMaterialAreaEstoqueMinimo: TFloatField;
    qrMaterialAreaEstoqueMaximo: TFloatField;
    qrMaterialAreaNmLocal: TStringField;
    Label23: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label24: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    dsMaterialArea: TDataSource;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    Q_MATMatLaboratorio: TStringField;
    Q_MATEAN: TStringField;
    DBCheckBox5: TDBCheckBox;
    Label15: TLabel;
    DBLC_MAT_UNI_ID: TwwDBLookupCombo;
    Label5: TLabel;
    DBE_MAT_IPI: TwwDBEdit;
    Label6: TLabel;
    DBCB_MAT_CONTROLA: TwwDBComboBox;
    Label4: TLabel;
    DBE_MAT_ESTMIN: TwwDBEdit;
    Label21: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label7: TLabel;
    DBE_MAT_LOTEPED: TwwDBEdit;
    Label18: TLabel;
    DBE_MAT_LOCACAO: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label20: TLabel;
    Label26: TLabel;
    wwDBEdit6: TwwDBEdit;
    Q_MATLocalArmazem: TStringField;
    Label27: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label28: TLabel;
    wwDBEdit8: TwwDBEdit;
    Q_MATValorContrato: TFloatField;
    Q_MATCodigoFornecedor: TStringField;
    wwDBEdit9: TwwDBEdit;
    Label29: TLabel;
    Q_MATEntregaEmPacote: TStringField;
    DBCheckBox6: TDBCheckBox;
    Edit2: TEdit;
    Q_MATMAT_BONIFICADO: TStringField;
    DBCheckBox7: TDBCheckBox;
    qrHist: TADOQuery;
    dsHist: TDataSource;
    qrHistId: TIntegerField;
    qrHistMAT_ID: TIntegerField;
    qrHistDATA: TDateTimeField;
    qrHistEstoqueAnterior: TIntegerField;
    qrHistCustoMedioAnterior: TFloatField;
    qrHistValorEstoqueAnterior: TFloatField;
    qrHistQuantidadeNF: TIntegerField;
    qrHistConversao: TIntegerField;
    qrHistQuantidadeEntrada: TIntegerField;
    qrHistValorEntrada: TFloatField;
    qrHistQtdeEstoqueTotal: TIntegerField;
    qrHistValorEstoqueTotal: TFloatField;
    qrHistNovoCustoMedio: TFloatField;
    qrHistReposicao: TFloatField;
    qrHistCustoGeradoPorHistorico: TStringField;
    Panel3: TPanel;
    wwDBGrid2: TwwDBGrid;
    Button1: TButton;
    qrHistNFIS: TIntegerField;
    qrHistFor_Codi: TStringField;
    Label30: TLabel;
    qrRecalcula: TADOQuery;
    wwDBEdit10: TwwDBEdit;
    Q_MATREPOSICAO: TFloatField;
    qrHistRec_ID: TAutoIncField;
    qrCodigoXML: TADOQuery;
    qrCodigoXMLId: TAutoIncField;
    qrCodigoXMLMAT_ID: TIntegerField;
    qrCodigoXMLFOR_CODI: TStringField;
    qrCodigoXMLCodigo: TStringField;
    qrCodigoXMLEAN: TStringField;
    Panel5: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    cboFornecedor: TwwDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    dsCodigoXML: TDataSource;
    wwDBGrid3: TwwDBGrid;
    DBCheckBox8: TDBCheckBox;
    Q_MATMAT_IMOBILIZADO: TStringField;
    Q_MATCodigoMaterial: TStringField;
    Label34: TLabel;
    DBEdit3: TDBEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_MATAfterDelete(DataSet: TDataSet);
    procedure Q_MATAfterPost(DataSet: TDataSet);
    procedure Q_MATBeforeDelete(DataSet: TDataSet);
    procedure Q_MATBeforePost(DataSet: TDataSet);
    procedure DS_MATStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_PESClick(Sender: TObject);
    procedure DBE_MAT_DESCEnter(Sender: TObject);
    procedure DBLC_MAT_GRU_IDEnter(Sender: TObject);
    procedure DBE_MAT_UNI_IDEnter(Sender: TObject);
    procedure DBE_MAT_IPIEnter(Sender: TObject);
    procedure DBCB_MAT_CONTROLAEnter(Sender: TObject);
    procedure DBE_MAT_ESTMINEnter(Sender: TObject);
    procedure DBE_MAT_LOTEPEDEnter(Sender: TObject);
    procedure DBE_MAT_DESCExit(Sender: TObject);
    procedure DBE_MAT_UNI_IDExit(Sender: TObject);
    procedure DBE_MAT_IPIExit(Sender: TObject);
    procedure DBE_MAT_ESTMINExit(Sender: TObject);
    procedure DBE_MAT_LOTEPEDExit(Sender: TObject);
    procedure DBLC_MAT_GRU_IDExit(Sender: TObject);
    procedure DBCB_MAT_CONTROLAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure DBE_MATFORN_EMBALAGEMEnter(Sender: TObject);
    procedure DBE_MATFORN_CONVERSAOEnter(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOMPEnter(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOMPEnter(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOTAEnter(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOTAEnter(Sender: TObject);
    procedure DBLC_MATFORN_FOR_RAZAExit(Sender: TObject);
    procedure DBE_MATFORN_EMBALAGEMExit(Sender: TObject);
    procedure DBE_MATFORN_CONVERSAOExit(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOMPExit(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOMPExit(Sender: TObject);
    procedure DBE_MATFORN_DT_ULTCOTAExit(Sender: TObject);
    procedure DBE_MATFORN_PRE_ULTCOTAChange(Sender: TObject);
    procedure Q_MATFORNBeforePost(DataSet: TDataSet);
    procedure DBLC_MATFORN_FOR_RAZAEnter(Sender: TObject);
    procedure DBLC_MATFORN_UNI_CODEnter(Sender: TObject);
    procedure DBLC_MATFORN_UNI_CODExit(Sender: TObject);
    procedure Q_MATFORNBeforeDelete(DataSet: TDataSet);
    procedure Q_MATFORNBeforeInsert(DataSet: TDataSet);
    procedure DBE_MATFORN_PRE_ULTCOTAExit(Sender: TObject);
    procedure SBT_RELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBLC_MAT_UNI_IDExit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Q_MATMARCAfterPost(DataSet: TDataSet);
    procedure Q_MATMARCNewRecord(DataSet: TDataSet);
    procedure DS_MATMARCStateChange(Sender: TObject);
    procedure Q_MATMARCAfterDelete(DataSet: TDataSet);
    procedure Q_MATNewRecord(DataSet: TDataSet);
    procedure Fonte2Click(Sender: TObject; Button: TNavigateBtn);
    procedure Q_MATMARCBeforePost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DS_MATDataChange(Sender: TObject; Field: TField);
    procedure DS_MATMARCDataChange(Sender: TObject; Field: TField);
    procedure Q_MATAfterOpen(DataSet: TDataSet);
    function UsuarioLogadoWindows : string;
    procedure qrMaterialAreaBeforePost(DataSet: TDataSet);
    procedure qrMaterialAreaAfterPost(DataSet: TDataSet);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMateriais: TFMateriais;
  preco_ok : Boolean;
  ID   : String ;
implementation

uses Unt_Splash1, UMenu, URelMat, URelMatForn, UFilRelMat, URelMatMarca,
  UPesqMateriais, UReceb;

{$R *.DFM}

procedure TFMateriais.SBT_SAIRClick(Sender: TObject);
begin
     Close;
end;

procedure TFMateriais.FormPaint(Sender: TObject);
begin
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 4;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                    // Q_MAT.Open;

                     Dfm_Splash1.Gauge1.Progress := 2;
                     Q_GRMAT.Open;

                     Dfm_Splash1.Gauge1.Progress := 3;
                     Q_UNI.Open;

                     Dfm_Splash1.Gauge1.Progress := 4;
                     Q_MARC.Open;






                 End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
             If Self.Tag = 2 Then Self.Close;
        End;


       qrHist.Close;
       qrHist.Parameters[0].Value := Q_MATMAT_ID.AsInteger;
       qrHist.Open;


end;

procedure TFMateriais.Q_MATAfterDelete(DataSet: TDataSet);

begin
   ID:= Q_MATMAT_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MAT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_MAT.Close;
       Q_MAT.Open;
       Q_MAT.locate('MAT_DESC',ID,[loCaseInsensitive]);
   end;
end;

procedure TFMateriais.Q_MATAfterPost(DataSet: TDataSet);
var desc1 , desc2 : Variant;
begin

   desc1 := Q_MATMAT_DESC.OldValue;
   desc2 := Q_MATMAT_DESC.NewValue;



   ID:= Q_MATMAT_DESC.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MAT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;



   //verifica se a descriçao do material foi alterada
   if desc1 <> desc2 then begin
      with Q_AUX do begin
       close;
       sql.Clear;
       sql.Add('insert into MudaDescricao values(:UsuWindows, :UsuSistema, :Old, :New, :Data, :mat)');
       Params[0].AsString := UsuarioLogadoWindows;
       Params[1].AsString := FMenu.sqlUsuariosNome.Value;
       Params[2].Value := desc1;
       Params[3].Value := desc2;
       Params[4].AsDateTime := Now;
       Params[5].AsInteger := Q_MATMAT_ID.AsInteger;
       ExecSQL;
      end;
   end;




   Q_MAT.Close;
   Q_MAT.SQL.Clear;
   Q_MAT.SQL.Add('SELECT * FROM MATERIAIS ORDER BY MAT_DESC');
   Q_MAT.Open;
   Q_MAT.locate('MAT_DESC',ID,[loCaseInsensitive]);

   ///DBE_MAT_DESC.enabled := false ;
   //DBE_MAT_DESC.visible := false ;
   //DBText3.visible := true ;

end;

procedure TFMateriais.Q_MATBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFMateriais.Q_MATBeforePost(DataSet: TDataSet);

begin

   



        If DBE_MAT_DESC.Text = '' then Begin
                MessageDlg('Descrição é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBE_MAT_DESC.SetFocus;
                Abort;
        End;

       IF  (Q_MAT.State = dsInsert) THEN  begin
               Q_AUX.close;
               Q_AUX.Sql.Clear;
               Q_AUX.Sql.Add('Select count(*) as xvalor from  MATERIAIS ') ;
               Q_AUX.Sql.Add(' where MAT_DESC =' + '''' + DBE_MAT_DESC.text + '''');
               Q_AUX.open ;

               If Q_AUX.fieldbyname('XVALOR').asinteger  = 1 then begin
                  MessageDlg('Material já cadastrado!',mtWarning,[mbok],0);
                  TabbedNotebook1.pageindex := 0 ;
                  DBE_MAT_DESC.SetFocus;
                  DBE_MAT_DESC.text := '' ;
                  Abort;
               end ;
       end ;


        If DBLC_MAT_GRU_ID.Text = '' then Begin
                MessageDlg('Grupo é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBLC_MAT_GRU_ID.SetFocus;
                Abort;
        End;
        If DBLC_MAT_UNI_ID.Text = '' then Begin
                MessageDlg('Unidade de Consumo é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBLC_MAT_UNI_ID.SetFocus;
                Abort;
        End;
        If DBE_MAT_IPI.Text = '' then Begin
                MessageDlg('IPI é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBE_MAT_IPI.SetFocus;
                Abort;
        End;
        If DBCB_MAT_CONTROLA.Text = '' then Begin
                MessageDlg('Controla Validade é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBCB_MAT_CONTROLA.SetFocus;
                Abort;
        End;
        If DBE_MAT_ESTMIN.Text = '' then Begin
                MessageDlg('Estoque Mínimo é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBE_MAT_ESTMIN.SetFocus;
                Abort;
        End;
         If DBE_MAT_LOTEPED.Text = '' then Begin
                MessageDlg('Lote de Pedido é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBE_MAT_LOTEPED.SetFocus;
                Abort;
        End;
        If DBE_MAT_LOCACAO.Text = '' then Begin
                MessageDlg('Locação é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 0 ;
                DBE_MAT_LOCACAO.SetFocus;
                Abort;
        End;



        if MessageBox(Self.Handle, 'Deseja realmente salvar as alterações efetuadas?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
        begin
              Abort;
        end;

end;

procedure TFMateriais.DS_MATStateChange(Sender: TObject);
begin
        IF (Q_MAT.State = dsEdit) or (Q_MAT.State = dsInsert) THEN
                begin
                if Q_MAT.State = dsEdit then
                                begin
                                //LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                //LBL_STATUS.Caption := 'INCLUSÃO';
                                DBE_MAT_DESC.Enabled := true;

                                DBE_MAT_DESC.visible := true ;
                                DBE_MAT_DESC.SetFocus;
                        end;
                                //LBL_STATUS.Visible := true;
     end
   ELSE
     begin
       // LBL_STATUS.Visible := false;
     end;
end;

procedure TFMateriais.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFMateriais.SBT_PESClick(Sender: TObject);
begin
       If (TabbedNotebook1.PageIndex =0) then
       begin
       Q_PSQMAT.Open;
       PESQ_MAT.Execute ;
       Q_MAT.Locate('MAT_ID',Q_PSQMATMAT_ID.asstring,[]);
       Q_PSQMAT.Close;

       end;
       If (TabbedNotebook1.PageIndex =1) then
       begin
       Q_PSQMATMARC.Open;
       PESQ_MATMARC.Execute ;
       If Q_PSQMATMARCMATMARCA_ID.AsString <> '' then
       Q_MATMARC.Locate('MARCA_ID',Q_PSQMATMARCMARCA_ID.asstring,[]);
       Q_PSQMATMARC.Close;
       end;
end;

procedure TFMateriais.DBE_MAT_DESCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBLC_MAT_GRU_IDEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFMateriais.DBE_MAT_UNI_IDEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MAT_IPIEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBCB_MAT_CONTROLAEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFMateriais.DBE_MAT_ESTMINEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MAT_LOTEPEDEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MAT_DESCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MAT_UNI_IDExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MAT_IPIExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MAT_ESTMINExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MAT_LOTEPEDExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBLC_MAT_GRU_IDExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_MAT_GRU_ID.text <> '' then
                DBLC_MAT_GRU_ID.text := Q_GRMATGRU_DESC.asstring  ;
end;

procedure TFMateriais.DBCB_MAT_CONTROLAExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFMateriais.FormCreate(Sender: TObject);
begin
        TabbedNotebook1.PageIndex :=0;

        preco_ok := False;

        qrLocal.Open;
end;

procedure TFMateriais.TabbedNotebook1Click(Sender: TObject);
begin
        If (Q_MAT.state = dsedit ) or (Q_MAT.state = dsinsert ) then
         Q_MAT.post ;

         If (Q_MATMARC.state = dsedit ) or (Q_MATMARC.state = dsinsert ) then
         Q_MATMARC.post ;



        If (TabbedNotebook1.PageIndex =1) then
        BEGIN
                Fonte.Datasource := DS_MATMARC;
                SBT_PES.Hint :='Pesquisa de Marcas';
                Q_MATMARC.close;
                Q_MATMARC.SQL.clear;
                Q_MATMARC.SQL.Add('SELECT * FROM MATERIAL_MARCA' ) ;
                Q_MATMARC.SQL.Add(' where MAT_ID = ' + '''' + Q_MATMAT_ID.asstring + '''' );
                Q_MATMARC.open;








                SpeedButton2.enabled := false ;
        end ;

        If (TabbedNotebook1.PageIndex = 2) then
        BEGIN
                Fonte.Datasource := dsMaterialArea;
                qrMaterialArea.Close;
                qrMaterialArea.Parameters[0].Value := Q_MATMAT_ID.AsInteger;
                qrMaterialArea.Open;

                SpeedButton2.enabled := false ;
        end ;





        If (TabbedNotebook1.PageIndex =0) then
        begin
        Fonte.DataSource := DS_MAT;
        SBT_PES.Hint := 'Pesquisa de Materiais';
         SpeedButton2.enabled := true ;
        end;



        if TabbedNotebook1.PageIndex = 4 then begin
               Fonte.Datasource := dsCodigoXML;
               qrForn.Open;
               qrCodigoXML.Close;
               qrCodigoXML.sql.Clear;
               qrCodigoXML.SQL.Add('SELECT * FROM MateriaisCodigoXML where mat_id = ' + Q_MATMAT_ID.AsString);
               qrCodigoXML.Open;
        end;


end;

procedure TFMateriais.DBE_MATFORN_EMBALAGEMEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MATFORN_CONVERSAOEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MATFORN_DT_ULTCOMPEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MATFORN_PRE_ULTCOMPEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MATFORN_DT_ULTCOTAEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBE_MATFORN_PRE_ULTCOTAEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFMateriais.DBLC_MATFORN_FOR_RAZAExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_MATFORN_FOR_RAZA.text <> '' then
                DBLC_MATFORN_FOR_RAZA.text := Q_MARCMARCA_DESC.asstring  ;
end;

procedure TFMateriais.DBE_MATFORN_EMBALAGEMExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MATFORN_CONVERSAOExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;


procedure TFMateriais.DBE_MATFORN_DT_ULTCOMPExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MATFORN_PRE_ULTCOMPExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MATFORN_DT_ULTCOTAExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.DBE_MATFORN_PRE_ULTCOTAChange(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFMateriais.Q_MATFORNBeforePost(DataSet: TDataSet);
begin
      {  If DBLC_MATFORN_FOR_RAZA.Text = '' then Begin
                MessageDlg('Marca é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBLC_MATFORN_FOR_RAZA.SetFocus;
                Abort;
        End;
        If DBE_MATFORN_EMBALAGEM.Text = '' then Begin
                MessageDlg('Embalagem é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                DBE_MATFORN_EMBALAGEM.SetFocus;
                Abort;
        End;
        If wwDBLookupCombo1.Text = '' then Begin
                MessageDlg('Unidade de Compra é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                wwDBLookupCombo1.SetFocus;
                Abort;
        End;  }
        {Q_AUX.close;
        Q_AUX.Sql.Clea
        Q_AUX.Sql.Add('Select count(*) as emb from  MATERIAL_FORNECEDOR') ;
        Q_AUX.Sql.Add(' where MAT_ID = ' + Q_MATFORNMAT_ID.asstring ) ;
        Q_AUX.Sql.Add(' and FOR_CODI = ' + Q_MATFORNFOR_CODI.asstring ) ;
        Q_AUX.Sql.Add(' and MFOR_EMBALAGEM = ' + Q_MATFORNMFOR_EMBALAGEM.asstring ) ;
        Q_AUX.open ;

        If Q_AUX.fieldbyname('emb').asinteger > 1 then begin
                MessageDlg('Já existe esta Embalagem para esse Fornecedor!',mtWarning,[mbok],0);
                DBE_MATFORN_EMBALAGEM.SetFocus;
                Abort;
        end;}
end;

procedure TFMateriais.DBLC_MATFORN_FOR_RAZAEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFMateriais.DBLC_MATFORN_UNI_CODEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFMateriais.DBLC_MATFORN_UNI_CODExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFMateriais.Q_MATFORNBeforeDelete(DataSet: TDataSet);
begin
    If MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFMateriais.Q_MATFORNBeforeInsert(DataSet: TDataSet);
begin
        //DBLC_MATFORN_FOR_RAZA.SetFocus;
end;

procedure TFMateriais.DBE_MATFORN_PRE_ULTCOTAExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;



procedure TFMateriais.SBT_RELClick(Sender: TObject);
begin
        If (TabbedNotebook1.PageIndex = 0) then
        begin
                Application.CreateForm(TFRelMateriais,FRelMateriais);
                FRelMateriais.QR_MAT.Preview;
                FRelMateriais.Close;
        end;
        If (TabbedNotebook1.PageIndex = 1) then
        begin
                Application.CreateForm(TFRelMatM,FRelMatM);
                FRelMatM.QR_RELM.Preview;
                FRelMatM.Close;
        end;
end;


procedure TFMateriais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_MAT.Close;
   Q_FORN.Close;
   Q_GRMAT.Close;
   Q_UNI.Close;
   Q_MATMARC.Close;
   Action := caFree;
end;


procedure TFMateriais.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

        If (Q_UNI.State = dsEdit) or (Q_UNI.State = dsInsert) then
        Begin
                If (Q_UNIUNI_ID.AsString = Q_MATUNI_ID.Asstring) then
                begin
                        Q_MATMARCMATMARCA_CONVERSAO.Text := '1';
                end
                else
                        Q_MATMARCMATMARCA_CONVERSAO.Text := '';
        End;
end;

procedure TFMateriais.DBLC_MAT_UNI_IDExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_MAT_UNI_ID.text <> '' then
                DBLC_MAT_UNI_ID.text := Q_UNIUNI_DESC.asstring  ;
end;

procedure TFMateriais.wwDBLookupCombo1Exit(Sender: TObject);
begin
         (Sender as TwwDBlookupcombo).Color := clwindow;
        If wwDBLookupCombo1.text <> '' then
                wwDBLookupCombo1.text := Q_UNIUNI_DESC.asstring  ;
end;

procedure TFMateriais.Q_MATMARCAfterPost(DataSet: TDataSet);
begin
   ID:= Q_MATMARCMARCA_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MATMARC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_MATMARC.Close;
   Q_MATMARC.Open;
   Q_MATMARC.locate('MARCA_ID',ID,[loCaseInsensitive]);
end;

procedure TFMateriais.Q_MATMARCNewRecord(DataSet: TDataSet);
begin
        Q_MATMARCMAT_ID.asstring := Q_MATMAT_ID.asstring ;
end;

procedure TFMateriais.DS_MATMARCStateChange(Sender: TObject);
begin
        IF (Q_MATMARC.State = dsEdit) or (Q_MATMARC.State = dsInsert) THEN
                begin

                        if Q_MATMARC.State = dsEdit then
                                begin
                                //LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                                //LBL_STATUS.Caption := 'INCLUSÃO';
                                DBLC_MATFORN_FOR_RAZA.Setfocus;
                        end;
                                //LBL_STATUS.Visible := true;
     end
   ELSE
     begin
        //LBL_STATUS.Visible := false;
     end;
end;

procedure TFMateriais.Q_MATMARCAfterDelete(DataSet: TDataSet);
begin
   ID:= Q_MATMARCMATMARCA_ID.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_MATMARC])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If ID <> '' then Begin
       Q_MATMARC.Close;
       Q_MATMARC.Open;
       Q_MATMARC.locate('MATMARCA_ID',ID,[loCaseInsensitive]);
   end;
end;

procedure TFMateriais.Q_MATNewRecord(DataSet: TDataSet);
begin
            IF  Q_MATMAT_CONTROLA.AsString= '' THEN
                Q_MATMAT_CONTROLA.AsString:= 'S';

            Q_MATMAT_ATIVO.Value := 'S';
            Q_MATGENERICO.Value := 'N';
            Q_MATCritico.Value := 'N';
            Q_MATCONTROLA_GRUPO.AsString := 'N';
            Q_MATRelConsumo.AsString := 'S';

end;

procedure TFMateriais.Fonte2Click(Sender: TObject; Button: TNavigateBtn);
begin

       if button in [nbInsert] then  begin
               IF TabbedNotebook1.pageindex = 0 then begin
                  DBE_MAT_DESC.visible := true ;
                  DBText3.visible := false ;
                  DBE_MAT_DESC.setfocus ;
               end ;
       end ;

       if button in [nbFirst,nbPrior,nbNext,nbLast,nbcancel] then begin
                 IF TabbedNotebook1.pageindex = 0 then begin
                    //DBE_MAT_DESC.visible := false ;
                   // DBText3.visible := true ;
                 end ;   
       end ;


end;

procedure TFMateriais.Q_MATMARCBeforePost(DataSet: TDataSet);
begin
      If DBLC_MATFORN_FOR_RAZA.Text = '' then Begin
                MessageDlg('Marca é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 1 ;
                DBLC_MATFORN_FOR_RAZA.SetFocus;
                Abort;
        End;
        If DBE_MATFORN_EMBALAGEM.Text = '' then Begin
                MessageDlg('Embalagem é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 1 ;
                DBE_MATFORN_EMBALAGEM.SetFocus;
                Abort;
        End;
        
        If wwDBLookupCombo1.Text = '' then Begin
                MessageDlg('Unidade de Compra é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 1 ;
                wwDBLookupCombo1.SetFocus;
                Abort;
        End;


        if DBE_MATFORN_CONVERSAO.Text = '' then begin
                MessageDlg('Conversão é Campo de preenchimento obrigatório',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 1 ;
                DBE_MATFORN_CONVERSAO.SetFocus;
                Abort;
        end;

        if DBE_MATFORN_CONVERSAO.Text <> '' then begin
          if StrToFloat(DBE_MATFORN_CONVERSAO.Text) = 0 then Begin
                MessageDlg('Conversão deve possuir valor superior a zero',
                mtWarning,[mbok],0);
                TabbedNotebook1.pageindex := 1 ;
                DBE_MATFORN_CONVERSAO.SetFocus;
                Abort;
          end;
        end;


        if   Q_MATMARCMATMARCA_CONVERSAO.AsInteger > 1 then begin
            if Q_MATUNI_ID.Value = Q_MATMARCUNI_ID.Value then begin
                MessageBox(Self.Handle, 'Unidade não pode ser a mesma do material!',
                                'Erro', MB_OK + MB_ICONERROR);
                Abort;
            end;
        end;
end;

procedure TFMateriais.SpeedButton2Click(Sender: TObject);
begin


        Q_GRMAT.Edit ;

        DBE_MAT_DESC.visible := true ;
        DBText3.visible := false ;
  

end;

procedure TFMateriais.DS_MATDataChange(Sender: TObject; Field: TField);
begin
  {IF Q_MATMAT_ID.AsString <> '' then
  BEGIN
      qrUltimaCompra.Close;
      qrUltimaCompra.Params[0].AsInteger := Q_MATMAT_ID.Value;
      qrUltimaCompra.Open;

      if qrUltimaCompraPRECO_UNIT.AsString = '' then  begin
            Edit1.Text := '';
            Edit2.Text := '';
      end else   begin
            Edit1.Text := FormatFloat('###,##0.00', qrUltimaCompraPRECO_UNIT.Value);
            Edit2.Text := FormatFloat('###,##0.00', qrUltimaCompraPRECO_UNIT.Value);
      end;

  end; }


end;

procedure TFMateriais.DS_MATMARCDataChange(Sender: TObject; Field: TField);
var preco : Double;
    data :TDateTime;
begin

 try
 with qrCompasUltimaCompra do begin
    Close;
    sql.Clear;
    sql.Add(
        '  SELECT TOP 1 '+
        '          A.DT_CADASTRO, ' +
        '          B.Preco_Unit '  +
        '  FROM Ordem_Compra A INNER JOIN Ordem_CompraItem B '+
        '  ON A.ORD_ID = B.Ord_ID  '   +
        '  WHERE Mat_ID = ' + Q_MATMAT_ID.AsString +
        '  AND Marca_ID = ' +  Q_MATMARCMARCA_ID.AsString +
        '  ORDER BY A.ORD_ID DESC '
    );
    Open;
 end
    except

    end;

                  //VERICAMOS OS VALORES DA ÚLTIMA COMPRA

//                  if CheckBox1.Checked = False then
//                  begin
//                        with qrAuxiliar do
//                        begin
//                            Close;
//                            sql.Clear;
//                            sql.Add(
//                              ' SELECT TOP 1' +
//                              '	IT.PRECO_UNIT, NF.DT_ENTRADA' +
//                              ' FROM REC_NF NF INNER JOIN REC_ITEM IT' +
//                              ' ON NF.REC_ID = IT.REC_ID'
//                            );
//
//                            SQL.Add('WHERE IT.MAT_ID = ' + Q_MATMAT_ID.AsString);
//                            SQL.Add('AND IT.MARCA_ID = ' + Q_MATMARCMARCA_ID.AsString);
//                            SQL.Add('ORDER BY NF.DT_ENTRADA DESC');
//                            Open;
//                        end;
//
//                        IF qrAuxiliar.FieldByName('PRECO_UNIT').AsString <> '' then
//                        begin
//                          preco := qrAuxiliar.FieldByName('PRECO_UNIT').AsFloat;
//                          data :=   qrAuxiliar.FieldByName('DT_ENTRADA').AsDateTime;
//
//                          with qrAuxiliar do
//                          begin
//                              close;
//                              sql.Clear;
//                              sql.add('UPDATE MATERIAL_MARCA SET MATMARCA_PRE_ULTCOMP = ' + FloatToStr(preco) + ',');
//                              SQL.Add(' MATMARCA_DT_ULTCOMP = ' + FormatDateTime('YYYYMMDD', data));
//                              SQL.Add('WHERE MATMARCA_ID = ' + Q_MATMARCMATMARCA_ID.AsString);
//                              ExecSQL;
//                          end;
//                          Q_MATMARC.CLOSE;
//                          Q_MATMARC.Open;
//                        end;
//                        CheckBox1.Checked := True;
//                  end;
end;

procedure TFMateriais.Q_MATAfterOpen(DataSet: TDataSet);
begin
  {if Q_MATMAT_ID.AsString <> '' then begin
     qrAuxiliar.Close;
     qrAuxiliar.SQL.Clear;
     qrAuxiliar.SQL.Add('EXEC UPDATE_PRECO_MATERIAL ' + Q_MATMAT_ID.AsString);
     qrAuxiliar.ExecSQL;
  end; }
end;

function TFMateriais.UsuarioLogadoWindows: string;
var
    BufSize :cardinal;
  UserName :array[0..127] of ansichar;
  Nome : string;
begin
  Nome := '';

    BufSize := SizeOf(UserName);
  if BOOL(GetUserName(UserName, BufSize)) then
    Nome := UserName;

  Result := Nome;

end;

procedure TFMateriais.qrMaterialAreaBeforePost(DataSet: TDataSet);
begin
  qrMaterialAreaMAT_ID.AsInteger := Q_MATMAT_ID.AsInteger;
end;

procedure TFMateriais.qrMaterialAreaAfterPost(DataSet: TDataSet);
begin
   qrMaterialArea.close;
   qrMaterialArea.Parameters[0].Value := Q_MATMAT_ID.AsInteger;
   qrMaterialArea.Open;
end;

procedure TFMateriais.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrHistCustoGeradoPorHistorico.AsString = 'S' then begin
       ABrush.Color := clYellow;
       AFont.Color := clBlack;
   end;
   IF Highlight then begin
       ABrush.Color := clBlue;
       AFont.Color := clWhite;
   end;
end;

procedure TFMateriais.Button1Click(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Confirma o recalculo dos custos médios?', 'Confirmação', MB_YESNO) = 6 then begin
       qrRecalcula.Close;
       qrRecalcula.SQL.Clear;
       qrRecalcula.sql.Add(
           'EXEC PR_CUSTO_MEDIO_RECALCULA @Id = ' + qrHistId.AsString + ', @MAT_ID = ' + qrHistMAT_ID.AsString
       );
       qrRecalcula.ExecSQL;
       qrHist.Close;
       qrHist.Parameters[0].Value := Q_MATMAT_ID.AsInteger;
       qrHist.Open;
  end;
end;

procedure TFMateriais.wwDBGrid2DblClick(Sender: TObject);
begin
        Application.CreateForm(TFReceb, FReceb);
         FReceb.Q_REC.ParamS[0].AsInteger := qrHistRec_ID.asinteger;
         FReceb.ShowModal;
         FReceb.Release;
end;

end.


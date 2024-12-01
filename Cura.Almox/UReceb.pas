unit UReceb;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook,Tabnotbk, ComCtrls, Wwdotdot, Wwdbcomb, wwstorep,
  wwDialog, wwidlg, wwclearpanel, ImgList, ADODB ;


type
  TFReceb = class(TForm)
    Tb1: TTabbedNotebook;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    cboDiv: TwwDBLookupCombo;
    Label2: TLabel;
    dbCod: TwwDBEdit;
    Label1: TLabel;
    txtNF: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label6: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label7: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label8: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label9: TLabel;
    cboLoc: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    wwDBEdit11: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label34: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label11: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label12: TLabel;
    dbRad: TDBRadioGroup;
    Label13: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label14: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label15: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label19: TLabel;
    wwDBEdit13: TwwDBEdit;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    GridY: TwwDBGrid;
    GroupBox4: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    Panel4: TPanel;
    Q_COND: TwwQuery;
    Q_CFO: TwwQuery;
    Q_FORN: TwwQuery;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDDescricao: TStringField;
    DBCB_CFA_TIPI: TwwDBComboBox;
    DBCB_CFA_TICM: TwwDBComboBox;
    Q_LOC: TwwQuery;
    Label29: TLabel;
    wwDBEdit1: TwwDBEdit;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Btn_seleciona: TSpeedButton;
    Grid1: TwwDBGrid;
    Grid2: TwwDBGrid;
    Q_OC: TwwQuery;
    Q_IOC: TwwQuery;
    DS_OC: TwwDataSource;
    DS_IOC: TwwDataSource;
    Q_MAT: TwwQuery;
    Sp_OC: TSpeedButton;
    UPD_OC: TUpdateSQL;
    UPD_IOC: TUpdateSQL;
    Q_AUX: TwwQuery;
    Label20: TLabel;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    wwDBEdit16: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label23: TLabel;
    Label24: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    wwDBEdit19: TwwDBEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label27: TLabel;
    Q_CFOCFA_CODI: TStringField;
    Q_CFOCFA_DCFO: TStringField;
    Q_CFOCFA_SEQU: TAutoIncField;
    Q_CFOCFA_DCCF: TStringField;
    Q_DSCFO: TwwQuery;
    Q_DSCFOCFA_SEQU: TAutoIncField;
    Q_DSCFODSCFO: TStringField;
    Q_CFODSCFO: TStringField;
    Label30: TLabel;
    wwDBEdit20: TwwDBEdit;
    Sp_Conf: TSpeedButton;
    wwDBComboBox1: TwwDBComboBox;
    Label31: TLabel;
    cboStIt: TwwDBComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBNx: TDBNavigator;
    Label37: TLabel;
    txtQ: TwwDBEdit;
    Label39: TLabel;
    txtP: TwwDBEdit;
    cboForm: TwwDBLookupCombo;
    Label41: TLabel;
    cboMat: TwwDBLookupCombo;
    Label42: TLabel;
    Label43: TLabel;
    txtICM: TwwDBEdit;
    Label44: TLabel;
    txtIPI: TwwDBEdit;
    Label45: TLabel;
    txtVTot: TwwDBEdit;
    Label38: TLabel;
    txtVIPI: TwwDBEdit;
    Label40: TLabel;
    txtVICM: TwwDBEdit;
    Q_LOCLocal_ID: TAutoIncField;
    Q_LOCDescricao: TStringField;
    Q_LOCDisponivelSN: TStringField;
    SP_Venc: TStoredProc;
    SrchDlg_Pesq: TwwSearchDialog;
    Q_AUX1: TwwQuery;
    SpeedButton1: TSpeedButton;
    DS_SALDO_ITEM: TwwDataSource;
    DS_SALDO: TwwDataSource;
    Q_SALDO: TwwQuery;
    Q_SALDO_ITEM: TwwQuery;
    Q_SALDOVL_TOT_MERC: TFloatField;
    Q_SALDO_ITEMVL_TOT_ITEM: TFloatField;
    Label46: TLabel;
    wwDBEdit21: TwwDBEdit;
    Label47: TLabel;
    wwDBEdit22: TwwDBEdit;
    Q_SALDOVL_TOTNF: TFloatField;
    Label48: TLabel;
    wwDBEdit23: TwwDBEdit;
    Q_REC: TwwQuery;
    DS_REC: TwwDataSource;
    UPD_REC: TUpdateSQL;
    UPD_RECIT: TUpdateSQL;
    DS_RECIT: TwwDataSource;
    Q_RECIT: TwwQuery;
    Q_RVCT: TwwQuery;
    Q_RVCTDt_Vcto: TDateTimeField;
    Q_RVCTValor: TFloatField;
    Q_RVCTRec_Vcto_ID: TAutoIncField;
    Q_RVCTRec_ID: TIntegerField;
    DS_RVCT: TwwDataSource;
    UPD_RVCT: TUpdateSQL;
    Q_SQL: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MAT2StringField1: TStringField;
    Q_MAT2AutoIncField1: TAutoIncField;
    Q_MAT3: TwwQuery;
    StringField3: TStringField;
    AutoIncField3: TAutoIncField;
    Q_IOCALTERAR: TStringField;
    Q_IOCQTDE_COMP: TFloatField;
    Q_IOCPRECO_UNIT: TFloatField;
    Q_IOCVALOR: TFloatField;
    Q_IOCQTDE: TFloatField;
    Q_IOCQTDE_REC: TFloatField;
    Q_IOCQTDE_COMP_REC: TFloatField;
    Q_IOCMAT_ID: TIntegerField;
    Q_IOCIORD_ID: TAutoIncField;
    Q_IOCORD_ID: TIntegerField;
    Q_IOCQTDE_ESTQ_COMP: TFloatField;
    Q_OCALTERAR: TStringField;
    Q_OCFOR_CODI: TStringField;
    Q_RECRec_ID: TAutoIncField;
    Q_RECNFIS: TIntegerField;
    Q_RECSerie: TStringField;
    Q_RECDt_Entrada: TDateTimeField;
    Q_RECCFO: TStringField;
    Q_RECCfa_Sequ: TIntegerField;
    Q_RECDt_Emiss: TDateTimeField;
    Q_RECCond_Pgto_ID: TIntegerField;
    Q_RECLocal_ID: TIntegerField;
    Q_RECICMS: TFloatField;
    Q_RECIPI: TFloatField;
    Q_RECCodICMS: TStringField;
    Q_RECCodIPI: TStringField;
    Q_RECVl_ICMS: TFloatField;
    Q_RECVl_IPI: TFloatField;
    Q_RECBase_ICMS: TFloatField;
    Q_RECBase_IPI: TFloatField;
    Q_RECFrete: TStringField;
    Q_RECVl_Frete: TFloatField;
    Q_RECVl_Seguro: TFloatField;
    Q_RECVl_OutrasDesp: TFloatField;
    Q_RECVl_TotMer: TFloatField;
    Q_RECVl_TotNF: TFloatField;
    Q_RECStatus: TStringField;
    Q_RECFOR_CODI: TStringField;
    Q_RECITRec_Item_ID: TAutoIncField;
    Q_RECITRec_ID: TIntegerField;
    Q_RECITMat_ID: TIntegerField;
    Q_RECITQtde: TFloatField;
    Q_RECITQtde_OC: TFloatField;
    Q_RECITPreco_Unit: TFloatField;
    Q_RECITICMS: TFloatField;
    Q_RECITIPI: TFloatField;
    Q_RECITVl_ICMS: TFloatField;
    Q_RECITVl_IPI: TFloatField;
    Q_RECITVl_Total: TFloatField;
    Q_RECITAlterar: TStringField;
    Q_RECITMarca_ID: TIntegerField;
    Q_RECITStatus: TStringField;
    Q_RECITIORD_ID: TIntegerField;
    Q_RECITORD_ID: TIntegerField;
    Q_RECITMAT_CONTROLA: TStringField;
    Q_RECITSTORD: TStringField;
    Q_RECITDSMAT: TStringField;
    Q_MARCA: TwwQuery;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_RECITDSMarca: TStringField;
    Q_IOCDSMat: TStringField;
    Q_MARCA2: TwwQuery;
    StringField4: TStringField;
    AutoIncField4: TAutoIncField;
    Q_MAT2: TwwQuery;
    Q_OCORD_ID: TAutoIncField;
    Q_RECITMATMARCA_ID: TIntegerField;
    Q_PSQRECB: TwwQuery;
    Q_PSQRECBREC_ID: TAutoIncField;
    Q_PSQRECBNFIS: TIntegerField;
    Q_IOCUNI_COMP_ID: TIntegerField;
    Q_IOCUNI_ESTQ_ID: TIntegerField;
    Q_IOCMATMARCA_EMBALAGEM: TStringField;
    btnEliminaItem: TBitBtn;
    qrAux: TwwQuery;
    SP_GERA_CPAPAGA: TwwStoredProc;
    SpeedButton3: TSpeedButton;
    qrAux2: TwwQuery;
    ImageList1: TImageList;
    DBN: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    qrAux2Registros: TIntegerField;
    Q_RECITMAT_DESC2: TStringField;
    chkProd: TCheckBox;
    edtMAterial: TEdit;
    Q_RECITGENERICO: TStringField;
    Q_RECITMAT_DESC: TStringField;
    Q_IOCMAT_DESC: TStringField;
    Q_RECITCONVERSAO: TFloatField;
    qrAuxConv: TwwQuery;
    qrMaterialMarca: TADOQuery;
    qrMaterialMarcaMATMARCA_ID: TAutoIncField;
    qrMaterialMarcaMARCA_ID: TIntegerField;
    qrMaterialMarcaMAT_ID: TIntegerField;
    qrMaterialMarcaMAT_DESC: TStringField;
    qrMaterialMarcaMARCA_DESC: TStringField;
    qrMaterialMarcaMATMARCA_CONVERSAO: TFloatField;
    qrMaterialMarcaMATMARCA_EMBALAGEM: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1FIL_DESC: TStringField;
    ADOQuery1FIL_CODI: TStringField;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_RECFIL_CODI: TStringField;
    GroupBox5: TGroupBox;
    wwDBComboBox2: TwwDBComboBox;
    Q_RECCONFERE_QTDE: TStringField;
    Q_RECCONFERE_VALIDADE: TStringField;
    Q_RECCONFERE_LOTE: TStringField;
    Q_RECCONFERE_HORARIO: TStringField;
    Q_RECCONFERE_TEMPERATURA: TStringField;
    Q_RECCONFERE_CONDICAO: TStringField;
    Q_RECCONFERE_NUMERO_LOTE: TStringField;
    Q_RECCONFERE_REGISTRO: TStringField;
    Q_RECCONFERE_OBS: TStringField;
    Label28: TLabel;
    wwDBComboBox3: TwwDBComboBox;
    Label49: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Label50: TLabel;
    Label51: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    wwDBComboBox6: TwwDBComboBox;
    Label52: TLabel;
    wwDBComboBox7: TwwDBComboBox;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit1: TDBEdit;
    wwDBComboBox8: TwwDBComboBox;
    Label55: TLabel;
    Label56: TLabel;
    DBMemo1: TDBMemo;
    Button2: TButton;
    DBEdit2: TDBEdit;
    Label57: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label58: TLabel;
    DBEdit3: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit5: TDBEdit;
    Label61: TLabel;
    DBEdit6: TDBEdit;
    Q_RECCONFERE_NC: TStringField;
    Q_RECCONFERE_OCORRENCIA: TStringField;
    Q_RECCONFERE_CONSEQUENCIA: TStringField;
    Q_RECCONFERE_ACAO: TStringField;
    Q_RECCONFERE_RESPONSAVEL: TStringField;
    Label62: TLabel;
    Button1: TButton;
    Q_RECCONFERE_GRAUS: TFloatField;
    qrConseq: TADOQuery;
    qrConseqCONSEQUENCIA: TStringField;
    wwDBLookupCombo6: TwwDBLookupCombo;
    qrControlaConversao: TADOQuery;
    qrControlaConversaoCONVERSAO: TFloatField;
    Label63: TLabel;
    Label64: TLabel;
    Q_RECITControlaConversao: TIntegerField;
    Label65: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    qrContaGerencial: TADOQuery;
    qrContaGerencialCON_CODI: TStringField;
    qrContaGerencialCON_DESC: TStringField;
    Q_RECCON_CODI: TStringField;
    SpeedButton5: TSpeedButton;
    qrAux3: TADOQuery;
    Q_FORNFOR_CGC: TStringField;
    qrContaGerenciaEntrada: TADOQuery;
    qrContaGerenciaEntradaId: TAutoIncField;
    qrContaGerenciaEntradaContaGerencial: TStringField;
    Button3: TButton;
    SP_GERA_DEVOLUCAO: TADOStoredProc;
    qrConsultaTotaisNF: TADOQuery;
    qrConsultaTotaisNFNOTA: TFloatField;
    qrConsultaTotaisNFITENS: TFloatField;
    qrRateiaNota: TADOQuery;
    btnGetMaterial: TBitBtn;
    Q_RECITDevolucao: TFloatField;
    Q_RECITQtdeConferencia: TFloatField;
    Q_RECITUltimaConversao: TIntegerField;
    Label66: TLabel;
    Label67: TLabel;
    Procedure  Q_RECAfterPost(DataSet: TDataSet);
    Procedure  DS_RECStateChange(Sender: TObject);
    Procedure  Q_RECBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_gravarYClick(Sender: TObject);
    procedure Bt_IncluirYClick(Sender: TObject);
    procedure Bt_cancelarYClick(Sender: TObject);
    procedure SBT_REFRYClick(Sender: TObject);
    procedure SBT_SAIRYClick(Sender: TObject);
    procedure txtNFEnter(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure cboDivEnter(Sender: TObject);
    procedure cboDivExit(Sender: TObject);
    procedure CboPessoaEnter(Sender: TObject);
    procedure CboPessoaExit(Sender: TObject);
    procedure DBCB_CFA_TICMEnter(Sender: TObject);
    procedure DBCB_CFA_TICMExit(Sender: TObject);
    procedure CalculaTotal();
    procedure txtNFExit(Sender: TObject);
    procedure Sp_OCClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_OCAfterPost(DataSet: TDataSet);
    procedure Q_IOCAfterPost(DataSet: TDataSet);
    procedure Q_OCALTERARChange(Sender: TField);
    procedure cboLocEnter(Sender: TObject);
    procedure Btn_selecionaClick(Sender: TObject);
    procedure Q_OCAfterScroll(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_RECITVl_TotalChange(Sender: TField);

    Procedure  DS_RECITStateChange(Sender: TObject);
    Procedure  Q_RECITAfterPost(DataSet: TDataSet);
    Procedure  Q_RECITBeforePost(DataSet: TDataSet);
    Procedure  ChecaRecit();
    procedure Sp_ConfClick(Sender: TObject);
    procedure Tb1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure GridYCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ChecaEnabled(DataSet: TDataSet);
    procedure Bt_excluirClick(Sender: TObject);
    procedure txtNFChange(Sender: TObject);
    procedure cboFormEnter(Sender: TObject);
    procedure cboFormExit(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure cboMatEnter(Sender: TObject);
    procedure txtPEnter(Sender: TObject);
    procedure txtPExit(Sender: TObject);
    procedure txtQEnter(Sender: TObject);
    procedure txtQExit(Sender: TObject);
    procedure txtICMEnter(Sender: TObject);
    procedure txtICMExit(Sender: TObject);
    procedure ChecaBloq(DataSet: TDataSet);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure cboLocExit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SrchDlg_PesqCloseDialog(Dialog: TwwLookupDlg);
    procedure SpeedButton1YClick(Sender: TObject);
    procedure cboDivCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Q_RECNewRecord(DataSet: TDataSet);
    procedure Q_RECBeforeDelete(DataSet: TDataSet);
    procedure Q_RECAfterDelete(DataSet: TDataSet);
    procedure Q_RECITMat_IDChange(Sender: TField);
    procedure Q_RECITAfterDelete(DataSet: TDataSet);
    procedure Q_RECITBeforeDelete(DataSet: TDataSet);
    procedure Q_RECITNewRecord(DataSet: TDataSet);
    procedure GridYRowChanged(Sender: TObject);
    procedure Q_RECAfterOpen(DataSet: TDataSet);
    procedure Q_RECITAfterOpen(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure btnEliminaItemClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_RVCTAfterPost(DataSet: TDataSet);
    procedure fonteInsertClick(Sender: TObject);
    procedure fontePostClick(Sender: TObject);
    procedure fonteDeleteClick(Sender: TObject);
    procedure chkProdClick(Sender: TObject);
    procedure DS_RECITDataChange(Sender: TObject; Field: TField);
    procedure cboMatCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DS_RECDataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
    procedure cboMaterialCloseUp;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  FReceb: TFReceb;
  Interno : Integer;
  X : TextFile;
  FORN: STRING;
  NFIS: STRING;

  REC_LOTE : BOOLEAN;

implementation

Uses U_Funcoes, Unt_Senha, URecebPesq, URecebLotes, UMateriais, UMenu,
  UOrdCom, UBDinAlm, UDvSel, ufrnRelControleRecebimento, ufrmNFe,
  ufrmNotaDevolucaoCad, UfrmBuscaMaterial;


{$R *.DFM}
procedure TFReceb.ChecaBloq;
Begin
                If (Q_RECStatus.AsString <> 'F') then   //Só bloqueia alteração de itens se a ordem
                                                        //tiver sido finalizada.
                Begin
                        //cboForm.Enabled := true;
                        cboMat.Enabled := true;
                        txtP.Enabled := true;
                        txtQ.Enabled := true;
                        txtICM.Enabled := true;
                        txtVICM.Enabled := true;
                        txtIPI.Enabled := true;
                        txtVIPI.Enabled := true;
                        txtVTot.Enabled := true;
                End Else Begin
                        cboForm.Enabled := false;
                        cboMat.Enabled := false;
                        txtP.Enabled := false;
                        txtQ.Enabled := false;
                        txtICM.Enabled := false;
                        txtVICM.Enabled := false;
                        txtIPI.Enabled := false;
                        txtVIPI.Enabled := false;
                        txtVTot.Enabled := false;
                End;
End;

procedure  TFReceb.Q_RECITVl_TotalChange(Sender: TField);
begin

    GridY.RedrawGrid;

end;


Procedure  TFReceb.Q_RECAfterPost(DataSet: TDataSet);
var     Strchave : String ;
        SQL : String;
begin
          try
           begin
             StrChave := Q_RECRec_ID.AsString;
             Fmenu.Database1.ApplyUpdates([Q_REC]);

             If StrChave = '' then
             Begin
                SQL :=  ' SELECT          MAX(REC_ID) REC_ID ' +
                        ' FROM            REC_NF ' ;
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('REC_ID').AsString <> '' then
                        StrChave := Q_AUX.FieldByName('REC_ID').AsString;

                Q_AUX.CLOSE;
             End;

             If MessageDlg('Gerar vencimentos? ' + #10+#13 + 'Note que se já houver vencimentos estes serão apagados para dar origem aos novos!',mtWarning,[MbYes,MbNo],0)= mrYes then
             Begin
                If StrChave <> '' then
                        Sp_Venc.ParamByName('@REC_ID').value := StrChave
                Else
                        Sp_Venc.ParamByName('@REC_ID').value := Null;

                If Q_RECCond_Pgto_ID.AsString <> '' then
                        Sp_Venc.ParamByName('@CD_PG_ID').value := Q_RECCond_Pgto_ID.Asinteger
                Else
                        Sp_Venc.ParamByName('@CD_PG_ID').value := Null;

                Sp_Venc.ExecProc;
                Q_RVCT.Close;
                Q_RVCT.Open;
                MessageDlg('Operação realizada com sucesso',mtInformation,[mbOk],0);
             End;
             //
           end;
          except
             On E:EdbEngineError do
             begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
          end;

          Q_REC.Close;
          Q_REC.Params[0].AsInteger := StrToInt(StrChave);
          Q_REC.Open;

          If StrChave <> '' Then
                  Q_REC.Locate('Rec_ID',StrChave,[])
          Else Begin
                  Q_SQL.CLOSE;
                  Q_SQL.SQL.CLEAR;
                  Q_SQL.SQL.ADD('SELECT MAX (Rec_ID) Rec_ID FROM Rec_NF ');
                  Q_SQL.OPEN;
                  StrChave := Q_SQL.Fieldbyname('Rec_ID').AsString;
                  If StrChave <> '' Then
                          Q_REC.Locate('Rec_ID',StrChave,[])
          End;
end ;

Procedure  TFReceb.ChecaRecit();
Var     SQL:String;
        Msg:String;
        Sai:Integer;

        Vl_ICMSCalc,
        Vl_ICMSReal,
        Vl_IPICalc,
        Vl_IPIReal,
        Vl_TotCalc,
        Vl_TotReal : Real;
Begin
        Sai := 0;


        Vl_ICMSCalc := Q_RECITIcms.AsFloat * Q_RECITQtde.AsFloat * Q_RECITPreco_Unit.AsFloat /100;
        Vl_ICMSReal := Q_RECITVl_ICMS.AsFloat;

        Vl_IPICalc  := Q_RECITIPI.AsFloat  * Q_RECITQtde.AsFloat* Q_RECITPreco_Unit.AsFloat /100;
        Vl_IPIReal  := Q_RECITVl_IPI.AsFloat;

        Vl_TotCalc  := Q_RECITVl_IPI.AsFloat + Q_RECITVl_ICMS.AsFloat +
                               Q_RECITQtde.AsFloat * Q_RECITPreco_Unit.AsFloat;
        Vl_TotReal  := Q_RECITVl_Total.AsFloat;

        If Q_RECITMarca_ID.AsString = '' then
        Begin
                MessageDlg('Favor preencher a marca!',
                mtWarning,[MbOk],0);
                abort;
        End;

        If Q_RECITQtde.AsString = '' then
        Begin
                MessageDlg('Favor preencher a quantidade!',
                mtWarning,[MbOk],0);
                abort;
        End;


        If (Vl_ICMSCalc - Vl_ICMSReal > 0.001) then
                If MessageDlg('O valor de ICMS indicado é diferente do valor calculado, prosseguir?',
                        mtWarning,[MbYes,MbNo],0)= mrNo then
                        abort;

                If (Vl_IPICalc - Vl_IPIReal > 0.001) then
                Begin
                        If MessageDlg('O valor de IPI indicado é diferente do valor calculado, prosseguir?',
                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                        abort;
                End;

                If (Vl_TotCalc - Vl_TotReal > 0.001) then
                        If MessageDlg('O valor de Total indicado é diferente do valor calculado, prosseguir?',
                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                        abort;

                If (Q_RECITMarca_ID.AsString <> '') Then
                Begin
                        SQL :=  'SELECT          MAT_ID, ' +
                                '                MATMARCA_PRE_ULTCOMP PRECO        ' +
                                'FROM            MATERIAL_MARCA ' +
                                'WHERE           MARCA_ID = ' + Q_RECITMarca_ID.AsString +
                                'AND             MAT_ID = ' + Q_RECITMat_ID.AsString;

                        Q_AUX.SQL.CLEAR;
                        Q_AUX.SQL.ADD(SQL);
                        Q_AUX.OPEN;

                        If Q_RECITPreco_Unit.AsFloat <> Q_AUX.FieldByName('PRECO').AsFloat then
                                If MessageDlg('O Preço do Material é diferente do preço de Cadastro, prosseguir?',
                                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                                        abort;

                        If Q_RECITMat_ID.AsString <> Q_AUX.FieldByName('MAT_ID').AsString then
                        Begin
                                MessageDlg('O Material é diferente daquele cadastrado para esta Marca. Favor Corrigir!',
                                mtWarning,[MbOk],0);
                                abort;
                        End;

                End;
End;



Procedure  TFReceb.Q_RECITAfterPost(DataSet: TDataSet);
var Strchave : string ;
begin
          try
           begin
             StrChave := Q_RECITRec_Item_ID.AsString;
             FMenu.Database1.ApplyUpdates([Q_RECIT]);
           end;
          except
             On E:EdbEngineError do
             begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
          end;

          Q_RECIT.Close;
          Q_RECIT.Open;

          If StrChave <> '' Then
                  Q_RECIT.Locate('Rec_Item_ID',StrChave,[])
          Else Begin
                  Q_SQL.CLOSE;
                  Q_SQL.SQL.CLEAR;
                  Q_SQL.SQL.ADD('SELECT MAX (Rec_Item_ID) Rec_Item_ID FROM Rec_Item ');
                  Q_SQL.OPEN;

                  StrChave := Q_SQL.Fieldbyname('Rec_Item_ID').AsString;
                  If StrChave <> '' Then
                          Q_RECIT.Locate('Rec_Item_ID',StrChave,[])
          End;
end ;

Procedure TFReceb.Q_RECBeforePost(DataSet: TDataSet);
Var SQL:String;
begin
  //Q_RECVl_TotNF.Value :=  Q_RECVl_Frete.Value + Q_RECVl_OutrasDesp.Value +
  //                        Q_RECVl_Seguro.Value + Q_RECVl_TotMer.Value;

  IF Q_RECFIL_CODI.AsString = '' then begin
      ShowMessage('Informe a empresa');
      Abort;
  end;

  if qrContaGerenciaEntrada.RecordCount > 0 then
     Q_RECCON_CODI.Value := qrContaGerenciaEntradaContaGerencial.AsString;

end;


Procedure TFReceb.DS_RECStateChange(Sender: TObject);
begin
           if (Q_REC.State = dsEdit) or (Q_REC.State = dsInsert) then
             begin
               // SBT_SAIRY.Enabled := false;
               // SBT_REFRY.Enabled := false;
               // Bt_IncluirY.Enabled := false;
              //  Bt_GravarY.Enabled := true;
               // Bt_CancelarY.Enabled := true;
              //  Bt_Excluir.Enabled := false;

             end else begin
               // SBT_SAIRY.Enabled := true;
              //  SBT_REFRY.Enabled := true;
              //  Bt_IncluirY.Enabled := true;
              //  Bt_GravarY.Enabled := false;
              //  Bt_CancelarY.Enabled := false;

                If not Q_REC.Eof then
                        If Q_RECStatus.AsString = 'F' then
                             //   Bt_Excluir.Enabled := False
                        Else
                            //    Bt_Excluir.Enabled := True
                Else
                      //  Bt_Excluir.Enabled := False;
           end;
end;


Procedure TFRECeb.DS_RECITStateChange(Sender: TObject);
begin
           if (Q_RECIT.State = dsEdit) or (Q_RECIT.State = dsInsert) then
             begin
             //   SBT_SAIRY.Enabled := false;
             //   SBT_REFRY.Enabled := false;
              //  Bt_IncluirY.Enabled := false;
              //  Bt_GravarY.Enabled := true;
              //  Bt_CancelarY.Enabled := true;
              //  Bt_Excluir.Enabled := false;

             end else begin
              //  SBT_SAIRY.Enabled := true;
              //  SBT_REFRY.Enabled := true;
              //  Bt_IncluirY.Enabled := true;
             //   Bt_GravarY.Enabled := false;
             //   Bt_CancelarY.Enabled := false;
                If not  Q_RECIT.Eof then
                     //   Bt_Excluir.Enabled := true
                Else
                     //   Bt_Excluir.Enabled := false;
           end;

           If Q_RECStatus.AsString = 'F' Then
           Begin
               // SBT_SAIRY.Enabled := true;
               // SBT_REFRY.Enabled := true;
              //  Bt_IncluirY.Enabled := false;
              //  Bt_GravarY.Enabled := false;
              //  Bt_CancelarY.Enabled := false;
              //  Bt_Excluir.Enabled := false;
           End;

           ChecaEnabled(Q_REC); // Pra verificar se pode entrar com nova OC ou habilitar botões de gravação.

end;


Procedure TFReceb.Q_RECITBeforePost(DataSet: TDataSet);
Var     SQL:String;
        Msg:String;
        Sai:Integer;

        Vl_ICMSCalc,
        Vl_ICMSReal,
        Vl_IPICalc,
        Vl_IPIReal,
        Vl_TotCalc,
        Vl_TotReal : Real;
Begin
        IF chkProd.Checked then
                Q_RECITMAT_DESC.AsString := edtMAterial.Text;


        //busca a conversao do material so se o registro for novo, para edição nao funciona
        IF (Q_RECIT.State = dsInsert) or (Q_RECITMat_ID.OldValue <> Q_RECITMat_ID.Value) then begin
            with qrAuxConv do begin
                close;
                sql.Clear;
                sql.Add(
                  '  SELECT  MATMARCA_CONVERSAO '+
                  '  FROM MATERIAL_MARCA  '+
                  '  WHERE MATMARCA_ID = ' + Q_RECITMATMARCA_ID.AsString
                );
                Open;
            end;
            Q_RECITCONVERSAO.AsFloat := qrAuxConv.FieldByName('MATMARCA_CONVERSAO').AsFloat;
        end;


        Sai := 0;


                Vl_ICMSCalc := Q_RECITIcms.AsFloat * Q_RECITQtde.AsFloat * Q_RECITPreco_Unit.AsFloat /100;
                Vl_ICMSReal := Q_RECITVl_ICMS.AsFloat;

                Vl_IPICalc  := Q_RECITIPI.AsFloat  * Q_RECITQtde.AsFloat* Q_RECITPreco_Unit.AsFloat /100;
                Vl_IPIReal  := Q_RECITVl_IPI.AsFloat;

                Vl_TotCalc  := Q_RECITVl_IPI.AsFloat + Q_RECITVl_ICMS.AsFloat +
                               Q_RECITQtde.AsFloat * Q_RECITPreco_Unit.AsFloat;
                Vl_TotReal  := Q_RECITVl_Total.AsFloat;

                If Q_RECITMarca_ID.AsString = '' then
                Begin
                        MessageDlg('Favor preencher a Marca!',
                        mtWarning,[MbOk],0);
                        abort;
                End;

                If Q_RECITQtde.AsString = '' then
                Begin
                        MessageDlg('Favor preencher a quantidade!',
                        mtWarning,[MbOk],0);
                        abort;
                End;


               { If (Vl_ICMSCalc - Vl_ICMSReal > 0.001) then
                        If MessageDlg('O valor de ICMS indicado é diferente do valor calculado, prosseguir?',
                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                        abort;

                If (Vl_IPICalc - Vl_IPIReal > 0.001) then
                Begin
                        If MessageDlg('O valor de IPI indicado é diferente do valor calculado, prosseguir?',
                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                        abort;
                End;

                If (Vl_TotCalc - Vl_TotReal > 0.001) then
                        If MessageDlg('O valor de Total indicado é diferente do valor calculado, prosseguir?',
                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                        abort;  }

                If (Q_RECITMarca_ID.AsString <> '') Then
                Begin
                        SQL :=  ' SELECT          MAT_ID, ' +
                                '                 MATMARCA_PRE_ULTCOMP PRECO,        ' +
                                '                 MATMARCA_ID ' +
                                ' FROM            MATERIAL_MARCA ' +
                                ' WHERE           MARCA_ID = ' + Q_RECITMarca_ID.AsString +
                                ' AND             MAT_ID = ' + Q_RECITMat_ID.AsString;

                        Q_AUX.SQL.CLEAR;
                        Q_AUX.SQL.ADD(SQL);
                        Q_AUX.OPEN;

                        If Q_RECITPreco_Unit.AsFloat <> Q_AUX.FieldByName('PRECO').AsFloat then
                                If MessageDlg('O Preço do Material é diferente do preço de Cadastro, prosseguir?',
                                                        mtWarning,[MbYes,MbNo],0)= mrNo then
                                                        abort;

                        If Q_AUX.FieldByName('MATMARCA_ID').AsString = '' then
                        Begin
                                MessageDlg('O Material é diferente daquele cadastrado para esta Marca. Favor Corrigir!',
                                mtWarning,[MbOk],0);
                                abort;
                        End ;//Else
                             //   Q_RECITMatMarca_ID.AsString := Q_Aux.FieldByName('MATMARCA_ID').AsString;

                        if (Q_RECITRec_ID.AsString <> '') AND (Q_RECITMat_ID.AsString <> '') and (Q_RECITMarca_ID.AsString <> '')
                        THEN BEGIN

                          Q_RECITControlaConversao.Value := 0;
                            with qrControlaConversao do begin
                                Close;
                                SQL.Clear;
                                sql.Add('SELECT TOP 5 CONVERSAO ' +
                                        ' FROM REC_ITEM '+
                                        ' WHERE REC_ID < ' + Q_RECRec_ID.AsString +
                                        ' AND MAT_ID = ' + Q_RECITMat_ID.AsString +
                                        ' AND MARCA_ID = ' + Q_RECITMarca_ID.AsString +
                                        ' ORDER BY REC_ID DESC');
                                Open;
                            end;
                        end;

                        qrControlaConversao.First;
                        while not qrControlaConversao.Eof do begin
                            if qrControlaConversaoCONVERSAO.AsInteger <> Q_RECITCONVERSAO.AsInteger then
                               Q_RECITControlaConversao.Value := 1;

                            qrControlaConversao.Next;
                        end;

                End;

                If (Q_RECITQtde.AsFloat <= 0) or  (Q_RECITQtde.AsString = '') Then
                        Q_RECITStatus.AsString := 'P'
                Else If Q_RECITQtde.AsFloat - Q_RECITQtde_OC.AsFloat >= -0.001 Then
                        Q_RECITStatus.AsString := 'T'
                Else
                        Q_RECITStatus.AsString := 'P'

end;



procedure TFReceb.FormShow(Sender: TObject);
begin
        Tb1.PageIndex := 0;

        qrContaGerenciaEntrada.Close;
        qrContaGerenciaEntrada.Open;

        Q_FORN.OPEN;
        Q_COND.OPEN;
        Q_CFO.OPEN;
        Q_DSCFO.OPEN;
        Q_LOC.OPEN;
        qrConseq.Open;
        Q_MAT.OPEN;
        Q_MARCA.OPEN;
        Q_MARCA2.OPEN;
        Q_MAT2.OPEN;
        Q_MAT3.OPEN;
        Q_OC.OPEN;
        Q_IOC.OPEN;
        qrMaterialMarca.Open;
        Q_REC.AfterOpen := ChecaEnabled;
        ADOQuery1.Open;
        Q_REC.OPEN;
        Q_RECIT.OPEN;

        qrContaGerencial.Open;

        Q_RECITVl_Total.OnChange := Q_RECITVl_TotalChange;

        Q_RVCT.OPEN;
        Q_REC.BeforePost     := Q_RECBeforePost;
        Q_REC.AfterPost      := Q_RECAfterPost;
        DS_REC.onStateChange := DS_RECStateChange;

        Q_RECIT.BeforePost     := Q_RECITBeforePost;
        Q_RECIT.AfterPost      := Q_RECITAfterPost;
        //Q_RECIT.AfterScroll    := ChecaBloq;
        DS_RECIT.onStateChange := DS_RECITStateChange;

        //ConsIntRec_ID virá preenchido caso a chamada desta tela
        //tenha sido feita pela Busca Integrada de Almoxarifado.

         {IF ConsIntRec_ID <> '' THEN
            Q_REC.Locate('REC_ID',ConsIntRec_ID,[]);


         If (ConsIntRec_ID = '') AND (Rec_ID <> '') then
                Q_REC.Locate('REC_ID',Rec_ID,[]);  }

        IF CLIC = TRUE THEN
             //   Bt_IncluirY.Click;

                
    {verificar se os lançamentos em CPAPAGA foram efetuados}
     with qrAux2 do
     begin
         Close;
         sql.Clear;
         sql.Add(' Select count(*) as Registros from cpapaga '+
                 ' where documento like :nota '+
                 ' and Razao = :Razao') ;
         Params[0].AsString := '%'+Q_RECNFIS.AsString+'%';
         Params[1].AsString := cboDiv.Text;
         Open;
     end;

      if qrAux2.FieldByName('Registros').AsInteger > 0 then
      begin
         //wwDBGrid1.Enabled := False;
      end;


      qrContaGerenciaEntrada.Last;
      if qrContaGerenciaEntrada.RecordCount > 0 then begin

        wwDBLookupCombo7.Visible := False;
        label65.Visible := False;

      end
      else begin
               wwDBLookupCombo7.Visible := true;
             label65.Visible := true;
      end;
      


end;

procedure TFReceb.FormClose(Sender: TObject; var Action: TCloseAction);
var desconsiderarNota: Boolean;
begin

   if (Q_RECCond_Pgto_ID.AsInteger = 1) or   (Q_RECCond_Pgto_ID.AsInteger = 134) or (Q_RECCond_Pgto_ID.AsInteger = 137) then
        desconsiderarNota := True;

    if desconsiderarNota = False then begin
        with qrAux2 do
         begin
             Close;
             sql.Clear;
             sql.Add(' Select count(*) as Registros from cpapaga '+
                     ' where NOTA = :nota '+
                     ' and FORNECEDOR = :Razao') ;
             Params[0].AsString :=  Q_RECNFIS.AsString;
             Params[1].AsString := Q_RECFOR_CODI.AsString;
             Open;
         end;

        if qrAux2.FieldByName('Registros').AsInteger = 0 then
        begin
             ShowMessage('Antes de fechar a janela é necessário que o contas a pagar seja gerado!');
             Abort;
        end;
    end;











//        Dtb_PesquisaDados.Q_MATE.CLOSE;
        Q_FORN.CLOSE;
        Q_COND.CLOSE;
        Q_CFO.CLOSE;
        Q_DSCFO.CLOSE;
        Q_LOC.CLOSE;
        Q_IOC.CLOSE;
        Q_OC.CLOSE;
        Q_MAT.CLOSE;
        Q_MARCA.CLOSE;
        Q_MARCA2.CLOSE;        
        Q_MAT2.CLOSE;
        Q_MAT3.CLOSE;


        Q_AUX.Close;



                Q_REC.AfterOpen := Nil;
                Q_RECITVl_Total.OnChange := Nil;
                Q_REC.BeforePost     := Nil;
                Q_REC.AfterPost      := Nil;
                DS_REC.onStateChange := Nil;
                Q_RECIT.BeforePost     := Nil;
                Q_RECIT.AfterPost      := Nil;
                Q_RECIT.AfterScroll    := Nil;
                DS_RECIT.onStateChange := Nil;

                Q_REC.CLOSE;
                Q_RECIT.CLOSE;
                Q_RVCT.CLOSE;
                Q_SQL.Close;



        Action := caFree;
end;

procedure TFReceb.bt_gravarYClick(Sender: TObject);
begin
                If Tb1.PageIndex = 0 then
                        Q_REC.Post
                Else If Tb1.PageIndex = 1 then
                         Q_RECIT.Post
                Else If Tb1.PageIndex = 2 then
                        Q_RVCT.Post;

       
end;

procedure TFReceb.Bt_IncluirYClick(Sender: TObject);
begin
                If Tb1.PageIndex = 0 then
                Begin
                        cboLoc.Text := '';
                        txtNF.SetFocus;
                        Q_REC.Insert;
                End Else If Tb1.PageIndex = 1 then
                Begin
                        cboMat.Enabled := True;
                        cboMat.SetFocus;
                        Q_RECIT.Insert;
                End Else If Tb1.PageIndex = 2 then
                        Q_RVCT.Insert;

end;

procedure TFReceb.CalculaTotal();
Var     Vl_ICMS,
        Vl_IPI,
        Vl_Base,
        Vl_Frete,
        Vl_Desp,
        Vl_Seg: Real;
begin
                Vl_ICMS := Q_RECVl_ICMS.AsFloat;
                Vl_IPI  := Q_RECVl_IPI.AsFloat;
                Vl_Base := Q_RECBase_ICMS.AsFloat;

                If Vl_Base = 0.0 then
                        Vl_Base := Q_RECBase_IPI.AsFloat;

                Vl_Frete := Q_RECVl_Frete.AsFloat;
                Vl_Desp  := Q_RECVl_OutrasDesp.AsFloat;
                Vl_Seg   := Q_RECVl_Seguro.AsFloat;

                If Q_REC.State = dsBrowse then
                        Q_REC.Edit;

               // Q_RECVl_TotNF.AsFloat := Vl_ICMS + Vl_IPI + Vl_Base + Vl_Frete + Vl_Desp + Vl_Seg;

End;


procedure TFReceb.Bt_cancelarYClick(Sender: TObject);
begin
                If Tb1.PageIndex = 0 then
                        Q_REC.Cancel
                Else If Tb1.PageIndex = 1 then
                        Q_RECIT.Cancel
                Else If Tb1.PageIndex = 2 then
                        Q_RVCT.Cancel;
end;

procedure TFReceb.SBT_REFRYClick(Sender: TObject);
Var StrChave:String;
begin
                StrChave := Q_RECRec_ID.AsString;
                Q_REC.CLOSE;
                Q_RECIT.CLOSE;
                Q_RVCT.CLOSE;
                Q_SALDO_ITEM.CLOSE;
                Q_SALDO.CLOSE;

                Q_REC.OPEN;
                Q_RECIT.OPEN;
                Q_RVCT.OPEN;
                If StrChave <> '' then
                        Q_REC.Locate('REC_ID',StrChave,[]);
end;

procedure TFReceb.SBT_SAIRYClick(Sender: TObject);
begin
        Close;
end;

procedure TFReceb.txtNFEnter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFReceb.wwDBEdit2Enter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFReceb.wwDBEdit2Exit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFReceb.cboDivEnter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
        (sender as TwwDBLookupCombo).dropdown;
end;

procedure TFReceb.cboDivExit(Sender: TObject);
begin

       (sender as TwwDBLookupCombo).Color := clWindow;
       (Sender as TwwDBLookupCombo).text := Q_FORNFOR_RAZA.AsString;
end;

procedure TFReceb.CboPessoaEnter(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clAqua;
end;

procedure TFReceb.CboPessoaExit(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clWindow;
end;

procedure TFReceb.DBCB_CFA_TICMEnter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clAqua;
        (Sender as TwwDBCombobox).dropdown;
end;

procedure TFReceb.DBCB_CFA_TICMExit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clWindow;
end;

procedure TFReceb.txtNFExit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFReceb.Sp_OCClick(Sender: TObject);
begin
// vERIFICA SE NÃO HA ORDENS DE COMPRAS COM MAIS DE 10 DIAS

        {WITH Q_AUX do begin
            Close;
            SQL.Clear;
            SQL.Add(
              '  SELECT COUNT(*) AS ACHEI '+
              '  FROM Ordem_Compra '+
              '  WHERE FOR_CODI = ' + QuotedStr(Q_RECFOR_CODI.AsString) +
              '  AND (STATUS = ''A'' OR STATUS = ''P'') '+
              '  AND DATEADD(DAY, 10, DT_ENTREGA) <= GETDATE() '+
              '  AND AutorizaOrdemVencida IS NULL '
            );
            Open;
        end;

        IF Q_AUX.FieldByName('ACHEI').AsInteger > 0 then begin
            ShowMessage('Existem Ordens de Compra com prazo de entrega superior a 10 dias de atraso, e não aparecem na listagem, solicitar aprovação!');
        end; }




        If Q_RECRec_ID.AsString <> '' Then
        Begin
                Q_OC.CLOSE;
                Q_OC.OPEN;
                Q_IOC.CLOSE;
                Q_IOC.OPEN;

                Panel5.Left := 4;
                Panel5.Top := 125;
                Panel5.Visible := true;
                btnEliminaItem.Visible := False;
                GridY.Visible := false;
        End Else Begin
                MessageDlg('É necessário entrar com o lançamento da Capa do Recebimento!',MtError,[MbOk],0);
        End;
end;

procedure TFReceb.SpeedButton2Click(Sender: TObject);
Var SQL:String;
begin

       { If Q_IOC.State = dsEdit Then
                Q_IOC.POST;     }


       { If Q_OC.State = dsEdit Then
                Q_OC.POST;}

       with qrAux do
       begin
         Close;
         sql.Clear;
         sql.Add('delete from REC_ITEM where rec_id = :rec_id ');
         Params[0].AsInteger := Q_RECRec_ID.Value;
         ExecSQL;
       end;

                //A QUANTIDADE RETIRADA SÓ É ATUALIZADA EM FRECEBLOTE, QUANDO
                //É DADA ENTRADA EFETIVA NO ALMOXARIFADO.
                SQL := 'INSERT INTO REC_ITEM ' +
        	       ' (REC_ID, ' +
                       ' MAT_ID , ' +
                       ' QTDE, ' +
                       ' QTDE_OC, ' +
                       ' PRECO_UNIT, ' +
                       ' ICMS, ' +
                       ' IPI, ' +
        	       ' VL_ICMS, ' +
        	       ' VL_IPI, ' +
                       ' VL_TOTAL, ' +
                       ' STATUS, ' +
                       ' MARCA_ID,'+
                       ' ORD_ID,'+
                       ' IORD_ID, ' +
                       ' MATMARCA_ID, '+
                       ' GENERICO, MAT_DESC, CONVERSAO) ' +
                       ' (SELECT    DISTINCT    ' + Q_RECREC_ID.AsString + ',' +   {Obs: Add Distinct no select - miguel}
        	       '                OI.MAT_ID, ' +
                       '                OI.QTDE_COMP - CASE WHEN OI.QTDE_COMP_REC IS NULL THEN 0 ELSE OI.QTDE_COMP_REC END, ' +
                       '                OI.QTDE_COMP - CASE WHEN OI.QTDE_COMP_REC IS NULL THEN 0 ELSE OI.QTDE_COMP_REC END, ' +
                       '                OI.PRECO_UNIT, ' +
                       Funcoes.Converte(FloatToStr(Q_RECICMS.AsFloat),',','.') + ',' +
                       '                OI.IPI, ' +
                       Funcoes.Converte(FloatToStr(Q_RECICMS.AsFloat),',','.') + ' *  OI.VALOR/100, ' +
                       '         	OI.VL_IPI, ' +
                       '         	OI.VALOR + CASE WHEN OI.VL_IPI IS NULL THEN 0 ELSE OI.VL_IPI END, ' +
//                                        + Funcoes.Converte(FloatToStr(Q_RECICMS.AsFloat),',','.') + ' *  OI.VALOR/100, ' +
                       '''' +           'T'  + '''' + ',' + //A PRINCÍPIO ATENDE COMPLETAMENTE.
                       '                OI.MARCA_ID, ' +
                       '                OI.ORD_ID, ' +
                       '                OI.IORD_ID, ' +
                       '                OI.MATMARCA_ID, OI.GENERICO, OI.MAT_DESC, OI.CONVERSAO ' + ///TROCADA    MM.MATMARCA_ID   POR OI.MATMARCA_ID TAVA TRAZENDO ITENS DUPLICADOS
                       '   FROM	        ORDEM_COMPRAITEM  OI, ' +
                       '                MATERIAIS   MAT, ' +
                       '                MATERIAL_MARCA MM ' +
                       '  WHERE	        OI.ALTERAR = ' + '''' + 'S' + '''' +
                       '  AND           OI.MAT_ID = MAT.MAT_ID ' +
                       '  AND           MM.MAT_ID = MAT.MAT_ID ' +
                       '  AND           MM.MARCA_ID = OI.MARCA_ID) ';


                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);
                       Q_AUX.ExecSQL;

                       //Q_AUX.sql.SaveToFile('c:\recebimento sql.txt');


                       SQL := 'UPDATE           ORDEM_COMPRAITEM '+
                              'SET              REC_ID  = ' + Q_RECREC_ID.AsString + ',' +
                              '                 ALTERAR = NULL ' +
                              'WHERE	        ALTERAR = ' + '''' + 'S' + '''';

                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);
                       Q_AUX.ExecSQL;


                       SQL := ' UPDATE           ORDEM_COMPRAITEM '+
                              ' SET              REC_ITEM_ID  =  ( SELECT      MAX(REC_ITEM_ID) ' +
                                                                ' FROM         REC_ITEM  RI ' +
                                                                ' WHERE        RI.IORD_ID = ORDEM_COMPRAITEM.IORD_ID ' +
                                                                ' AND          REC_ID = ' +Q_RECREC_ID.AsString + ')' +
                              ' WHERE            REC_ID = ' +Q_RECREC_ID.AsString +
                              ' AND              REC_ITEM_ID IS NULL ';

                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);



                       Q_AUX.ExecSQL;

        SQL := 'UPDATE           ORDEM_COMPRAITEM '+
               'SET              ALTERAR = NULL ' +
               'WHERE	         ALTERAR = ' + '''' + 'S' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;

        SQL := 'UPDATE           ORDEM_COMPRA '+
               'SET              ALTERAR = NULL ' +
               'WHERE	         ALTERAR = ' + '''' + 'S' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;

        Q_RECIT.CLOSE;
        Q_RECIT.OPEN;






        GridY.Visible := true;
        Panel5.Visible := false;
        btnEliminaItem.Visible := True;
end;


procedure TFReceb.ChecaEnabled(DataSet: TDataSet);
begin
                If Q_RECStatus.AsString = 'F' then
                //Ordem Finalizada, não pode mais mexer!
                Begin
                        Sp_Conf.Enabled := False;
                        Sp_OC.Enabled   := False;
                       // bt_Excluir.Enabled := False;
                        GridY.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]
                End Else Begin
                        Sp_Conf.Enabled := True;
                        Sp_OC.Enabled   := True;
                        GridY.Options := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]
                End;

End;

procedure TFReceb.SpeedButton4Click(Sender: TObject);
VAR SQL:String;
begin

        SQL := 'UPDATE           ORDEM_COMPRAITEM '+
               'SET              ALTERAR = NULL ' +
               'WHERE	         ALTERAR = ' + '''' + 'S' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.ExecSQL;

        Interno := 1;

        If Q_OC.State = dsEdit then
                Q_OC.POST;

        Grid1.Visible := false;
        Grid2.Visible := false;

        Q_OC.First;

        While not Q_OC.Eof Do Begin
                Q_OC.Edit;
                Q_OCAlterar.AsString := '';
                Q_OC.Next;
        End;

        Interno := 0;

        If Q_OC.State = dsEdit then
                Q_OC.POST;

        Grid1.Visible := true;
        Grid2.Visible := true;

        GridY.Visible := true;
        Panel5.Visible := false;
        btnEliminaItem.Visible := True;

end;

procedure TFReceb.Q_OCAfterPost(DataSet: TDataSet);
begin
             Fmenu.DataBase1.ApplyUpdates([Q_OC]);
end;

procedure TFReceb.Q_IOCAfterPost(DataSet: TDataSet);
begin
             Fmenu.DataBase1.ApplyUpdates([Q_IOC]);
end;

procedure TFReceb.Q_OCALTERARChange(Sender: TField);
begin
          while not Q_IOC.eof do begin
             Q_IOC.edit ;
             Q_IOCAlterar.asstring := Q_OCAlterar.asstring ;
             Q_IOC.post ;
             Q_IOC.next;
          end ;

          Q_IOC.CLOSE;
          Q_IOC.OPEN;

end;

procedure TFReceb.cboLocEnter(Sender: TObject);
begin
//
        (Sender as TwwDBLookupCombo).Color := clAqua;
        (sender as TwwDBLookupCombo).dropdown;
end;

procedure TFReceb.Btn_selecionaClick(Sender: TObject);
begin
        Interno := 1;

        If Q_OC.State = dsEdit then
                Q_OC.POST;

        Q_OC.First;

        While not Q_OC.Eof Do Begin
                Q_OC.Edit;
                Q_OCAlterar.AsString := 'S';
                Q_OC.Next;
        End;

        Interno := 0;

        If Q_OC.State = dsEdit then
                Q_OC.POST;

end;

procedure TFReceb.Q_OCAfterScroll(DataSet: TDataSet);
VAR SQL:String;
begin

        If Interno = 0 then
        Begin

                If  (Q_OCOrd_ID.AsString <> '') and (Q_RECFOR_CODI.AsString <> '' ) then
                Begin

                        SQL :=
                        'SELECT		 OI.ALTERAR, ' +
                        '                OI.QTDE_COMP - CASE WHEN OI.QTDE_COMP_REC IS NULL THEN 0 ELSE OI.QTDE_COMP_REC END QTDE_COMP , ' +
                        '                OI.PRECO_UNIT, ' +
                        '                OI.VALOR, ' +
                        '                OI.UNI_COMP_ID, ' +
                        '                OI.QTDE, ' +
                        '                OI.QTDE_REC, ' +
                        '                OI.UNI_ESTQ_ID, ' +
                        '                OI.QTDE_COMP_REC, ' +
                        '                OI.MAT_ID, ' +
                        '                OI.IORD_ID, ' +
                        '                OI.ORD_ID, ' +
                        '                OI.QTDE_ESTQ_COMP, ' +
                        '                MM.MATMARCA_EMBALAGEM, CASE WHEN OI.GENERICO = ''S'' THEN OI.MAT_DESC ELSE MAT.MAT_DESC END AS MAT_DESC ' +
                        ' FROM		 ORDEM_COMPRAITEM OI, ' +
                        '                MATERIAL_MARCA MM, MATERIAIS MAT ' +
                        ' WHERE		 OI.ORD_ID = :ORD_ID ' +
                        ' AND		 OI.MATMARCA_ID = MM.MATMARCA_ID AND OI.MAT_ID = MAT.MAT_ID ' +
                        ' AND EXISTS     (SELECT	1  ' +
                        '		 FROM		ORDEM_COMPRAITEM OCI, ' +
                        '				ORDEM_COMPRA     OC ' +
                        '		 WHERE		OCI.ORD_ID = OC.ORD_ID ' +
                        '                AND            OCI.IORD_ID = OI.IORD_ID ' +
                        '		 AND		(OCI.QTDE_COMP - OCI.QTDE_COMP_REC > 0.001 OR OCI.QTDE_COMP_REC IS NULL) ' +
                	'        	 AND		OCI.STATUS <> ''T''' +
                	'	         AND		OC.FOR_CODI = ' +'''' +  Q_RECFor_Codi.AsString + '''' +  ')';

                End Else Begin
                        SQL :=
                        'SELECT		OI.*, MM.MATMARCA_EMBALAGEM ' +
                        'FROM		ORDEM_COMPRAITEM OI,  ' +
                        '               MATERIAL_MARCA MM ' +
                        'WHERE		1 = 0 ';
                End;

                Q_IOC.SQL.CLEAR;
                Q_IOC.SQL.ADD(SQL);
                Q_IOC.OPEN;
        End;
end;

procedure TFReceb.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFReceb.Sp_ConfClick(Sender: TObject);
var     StrChave:String;
        SQL : String;
        ErroConversao: Boolean;
begin
           If (Q_RECIT.State = dsEdit) or (Q_RECIT.State = dsInsert) then
                Q_RECIT.Post;


           qrConsultaTotaisNF.Close;
           qrConsultaTotaisNF.Parameters[0].Value := Q_RECRec_ID.AsInteger;
           qrConsultaTotaisNF.Open;


           //efetua a consulta dos totais da nota e dos itens caso haja diferença tenta fazer o rateio
           if qrConsultaTotaisNFNOTA.AsInteger <> qrConsultaTotaisNFITENS.AsInteger then begin
               if MessageBox(Self.Handle, 'O Total da NF difere da soma dos itens, deseja efetuar o rateio do total entre os itens?', 'Confirmação', MB_YESNO) = 6 then begin
                   qrRateiaNota.sql.Clear;
                   qrRateiaNota.SQL.Add('exec SP_ENTRADA_RECALCULA_ITEM_PERCENTUAL_TOTAL @REC_ID = ' + Q_RECRec_ID.AsString);
                   qrRateiaNota.ExecSQL;
               end;
               Abort;
           end;



           ErroConversao := False;

           with Q_AUX do begin
               close;
               sql.Clear;
               sql.Add('SELECT COUNT(*) AS ACHEI FROM Rec_Item  WHERE ISNULL(CONVERSAO, 0) = 0 AND Rec_ID = ' + Q_RECRec_ID.AsString);
               Open;
           end;

           if Q_AUX.FieldByName('ACHEI').AsInteger > 0 then
                ErroConversao := True;

           if ErroConversao then
           begin
               ShowMessage('Existem materiais com conversão zerada, verificar');
               Abort;
           end;



           Q_REC.AfterOpen := nil;

           If not Q_RECIT.EOF Then
           Begin

                   Application.CreateForm(TFRecebLote, FRecebLote);
                   FRecebLote.ShowModal;
                   FRecebLote.Release;

                   //APAGA REGISTROS PARA MATERIAIS QUE NÃO CONTROLEM LOTE E QUE PORVENTURA NÃO
                   //TENHAM SIDO GERADOS.
                   SQL := 'DELETE FROM REC_LOTE WHERE N_LOTE = ' + '''' + '9999999' + '''' +' AND REC_ID = ' + Q_RECREC_ID.AsString +
                   'AND STATUS = ' + '''' + 'A' + '''';

                   Q_AUX.SQL.CLEAR;
                   Q_AUX.SQL.ADD(SQL);
                   Q_AUX.ExecSQL;

                   Q_REC.AfterOpen := ChecaEnabled;
                   StrChave := Q_RECRec_ID.AsString;

                   Q_REC.CLOSE;
                   Q_REC.Params[0].AsInteger := StrToInt(StrChave);
                   Q_REC.OPEN;
                   Q_REC.LOCATE('REC_ID',StrChave,[]);

                   If Q_RECStatus.AsString = 'F' then
                      //  bt_IncluirY.Enabled := false;
           End Else Begin
                    MessageDlg('Para confirmar o recebimento é necessário que haja ao menos um item!',mtInformation,[mbOk],0);
           End;
end;

procedure TFReceb.Tb1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin

                If (Q_REC.State = dsEdit) or (Q_REC.State = dsInsert) Then
                        Q_REC.POST;
                If (Q_RECIT.State = dsEdit) or (Q_RECIT.State = dsInsert) Then
                        Q_RECIT.POST;

                If NewTab = 0 then
                Begin
                        DS_RECStateChange(Sender);
                        DBN.DataSource := DS_REC;
                End Else If NewTab = 1 then
                Begin
                        DBN.DataSource := DS_RECIT;
                        DS_RECITStateChange(Sender);
                        Q_RECIT.CLOSE;
                        Q_RECIT.OPEN;

                        Q_SALDO_ITEM.CLOSE;
                        Q_SALDO_ITEM.Open;
                        Q_SALDO.Close;
                        Q_SALDO.Open;

                        Q_MAT3.CLOSE;
                        Q_MAT3.OPEN;


                End;

                Q_RVCT.close;
                Q_RVCT.Open;


end;

procedure TFReceb.GridYCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
              If Q_RECITStatus.AsString = 'A' then
                Begin
                        AFont.Color := clBlue;
                End Else If Q_RECITStatus.AsString = 'P' then
                Begin
                        AFont.Color := clRed;
                End Else If Q_RECITStatus.AsString = 'T' then
                Begin
                        AFont.Color := clGreen;
                End;

                if Q_RECITControlaConversao.AsInteger = 1 then
                begin
                    ABrush.Color := clYellow;
                end
                else
                begin
                    ABrush.Color := clWhite;
                end;

                if Q_RECITCONVERSAO.AsInteger <> Q_RECITUltimaConversao.AsInteger then begin
                    ABrush.Color := clFuchsia;
                end;


                if Q_RECITCONVERSAO.AsInteger = 0  then begin
                    ABrush.Color := clGray;
                    AFont.Color := clWhite;
                end;

                If Highlight then AFont.Color := clWhite;
end;

procedure TFReceb.Bt_excluirClick(Sender: TObject);
begin
                If Tb1.PageIndex = 0 then Begin
                       If MessageDlg ('Para apagar a capa da NF é necessário que você tenha apagado todos os itens da mesma, prosseguir?' ,
                          mtInformation, [mbYes, mbNo], 0) = mrYes then
                       Begin
                                While not Q_RVCT.EOF Do
                                Begin
                                          Q_RVCT.Delete
                                End;

                                Q_REC.Delete;
                        End;
        end

                Else IF Tb1.PageIndex = 1 then
                        Q_RECIT.Delete;
End;

procedure TFReceb.txtNFChange(Sender: TObject);
begin
        ChecaEnabled(Q_REC);
end;

procedure TFReceb.cboFormEnter(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clAqua;
end;

procedure TFReceb.cboFormExit(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clWindow;
end;

procedure TFReceb.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clWindow;
end;

procedure TFReceb.cboMatEnter(Sender: TObject);
begin
        (Sender as TwwDbLookupCombo).color := clAqua;
end;

procedure TFReceb.txtPEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFReceb.txtPExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFReceb.txtQEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFReceb.txtQExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFReceb.txtICMEnter(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clAqua;
end;

procedure TFReceb.txtICMExit(Sender: TObject);
begin
        (Sender as TwwDbEdit).color := clWindow;
end;

procedure TFReceb.wwDBLookupCombo2Exit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
        (Sender as TwwDBLookupCombo).text := Q_CONDDescricao.AsString;

end;

procedure TFReceb.cboLocExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
        (Sender as TwwDBLookupCombo).text := Q_LOCDescricao.AsString;

end;

procedure TFReceb.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
        (Sender as TwwDBLookupCombo).text := Q_CFODSCFO.AsString;

end;

procedure TFReceb.BitBtn2Click(Sender: TObject);
begin
   Application.CreateForm(TFMateriais, FMateriais);
   FMateriais.ShowModal;
   FMateriais.Release;

end;

procedure TFReceb.SrchDlg_PesqCloseDialog(Dialog: TwwLookupDlg);
var ID : STRING;
begin


end;

procedure TFReceb.SpeedButton1YClick(Sender: TObject);
begin
        Q_PSQRECB.Open;
        SrchDlg_Pesq.Execute;
        Q_REC.Locate('NFIS', Q_PSQRECBNFIS.AsString, []);
        Q_PSQRECB.Close;
end;

procedure TFReceb.cboDivCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
VAR SQLW: STRING;
begin
        IF txtNF.Text <> '' THEN
           NFIS:= txtNF.Text;

        IF cboDiv.Text <> '' THEN
           FORN:= cboDiv.LookupValue;



        IF (NFIS <> '') AND (FORN <> '') THEN  BEGIN


        SQLW:= ' SELECT      MIN(1) HA , ' +
	       '	     MIN(1) HAS ' +
               ' FROM	     REC_NF  ' +
               ' WHERE	     NFIS = ' + NFIS +
               ' AND         FOR_CODI = ' + '''' + FORN + '''';

                Q_AUX1.SQL.CLEAR;
                Q_AUX1.SQL.ADD(SQLW);
                Q_AUX1.OPEN;
         END;

                If Q_AUX1.FieldByName('HA').AsString = '1' then
                Begin
                   MessageDlg('Atenção!!! A nota ' +  NFIS + ',' + ' já esta cadastrada para este fornecedor !',
                   mtInformation, [mbOk],0);
                   cboDiv.Text:= '';
                   abort;

                END;

end;

procedure TFReceb.SpeedButton1Click(Sender: TObject);
var ErroConversao : Boolean;
begin
           ErroConversao := False;
          with Q_AUX do begin
               close;
               sql.Clear;
               sql.Add('SELECT COUNT(*) AS ACHEI FROM Rec_Item  WHERE ISNULL(CONVERSAO, 0) = 0 AND Rec_ID = ' + Q_RECRec_ID.AsString);
               Open;
           end;

           if Q_AUX.FieldByName('ACHEI').AsInteger > 0 then
                ErroConversao := True;

           if ErroConversao then
           begin
               ShowMessage('Existem materiais com conversão zerada, verificar');
               Abort;
           end;

   REC_LOTE:= TRUE;

   Application.CreateForm(TFRecebLote, FRecebLote);
   FRecebLote.ShowModal;
   FRecebLote.Release;

   REC_LOTE:= FALSE;

end;

procedure TFReceb.Q_RECNewRecord(DataSet: TDataSet);
begin
        Q_RECStatus.AsString := 'A'; //Aberto
        Q_RECFrete.AsString := 'C'; //CIF
        Q_RECCONFERE_NC.AsString := 'N';
end;

procedure TFReceb.Q_RECBeforeDelete(DataSet: TDataSet);
begin
        if MessageDlg('Confirma Exclusão ?',
        mtInformation, [mbYes, mbNo], 0) = mrNo then
        begin
                Abort;
        end;

end;

procedure TFReceb.Q_RECAfterDelete(DataSet: TDataSet);
begin
   try
     begin
             Fmenu.Database1.ApplyUpdates([Q_REC]);
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

end;

procedure TFReceb.Q_RECITMat_IDChange(Sender: TField);
begin
        Q_MARCA2.CLOSE;
        Q_MARCA2.OPEN;
end;

procedure TFReceb.Q_RECITAfterDelete(DataSet: TDataSet);
begin
   try
     begin
       Fmenu.Database1.ApplyUpdates([Q_RECIT]);
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_RECIT.CLOSE;
   Q_RECIT.OPEN;

end;

procedure TFReceb.Q_RECITBeforeDelete(DataSet: TDataSet);
begin
        if MessageDlg('Confirma Exclusão ?',
        mtInformation, [mbYes, mbNo], 0) = mrNo then
        begin
                Abort;
        end;

end;

procedure TFReceb.Q_RECITNewRecord(DataSet: TDataSet);
begin
        Q_RECITICMS.AsFloat := Q_RECICMS.AsFloat;
        Q_RECITRec_ID.AsString := Q_RECRec_ID.AsString;
        Q_RECITStatus.AsString := 'A'; //Aberto

end;

procedure TFReceb.GridYRowChanged(Sender: TObject);
begin
       Q_SALDO_ITEM.CLOSE;
       Q_SALDO_ITEM.OPEN;
       wwDBEdit21.Refresh;

end;

procedure TFReceb.Q_RECAfterOpen(DataSet: TDataSet);
begin
        Q_SALDO_ITEM.CLOSE;
        Q_SALDO.CLOSE;

        Q_SALDO_ITEM.OPEN;
        Q_SALDO.OPEN;
end;

procedure TFReceb.Q_RECITAfterOpen(DataSet: TDataSet);
begin
        Q_SALDO_ITEM.CLOSE;
        Q_SALDO.CLOSE;

        Q_SALDO_ITEM.OPEN;
        Q_SALDO.OPEN;

end;

procedure TFReceb.SpeedButton7Click(Sender: TObject);
begin
        WinExec('calc.exe',sw_show);
end;

procedure TFReceb.BitBtn22Click(Sender: TObject);
begin
   Application.CreateForm(TFDvSel, FDvSel);
   FDvSel.ShowModal;
   FDvSel.Release;

end;

procedure TFReceb.btnEliminaItemClick(Sender: TObject);
begin
    if  MessageBox(Self.Handle, 'Deseja eliminar o items selecionado?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
    Begin
       Q_RECIT.Delete;
    End;
end;

procedure TFReceb.SpeedButton3Click(Sender: TObject);
begin

   qrConsultaTotaisNF.Close;
   qrConsultaTotaisNF.Parameters[0].Value := Q_RECRec_ID.AsInteger;
   qrConsultaTotaisNF.Open;


   //efetua a consulta dos totais da nota e dos itens caso haja diferença tenta fazer o rateio
   if qrConsultaTotaisNFNOTA.AsInteger <> qrConsultaTotaisNFITENS.AsInteger then begin

       ShowMessage('O Total da NF difere da soma dos itens!');
       Abort;
   end;



   if Q_RECStatus.AsString <> 'F' then  begin
       ShowMessage('É necessário dar entrada nos materiais antes de confirmar os vencimentos');
       Abort; 
   end;


    if Q_RVCT.State IN [dsedit, dsInsert] then
        Q_RVCT.Post;

    with qrAux2 do
     begin
         Close;
         sql.Clear;
         sql.Add(' Select count(*) as Registros from cpapaga '+
                 ' where NOTA = :nota '+
                 ' and FORNECEDOR = :Razao') ;
         Params[0].AsString :=  Q_RECNFIS.AsString;
         Params[1].AsString := Q_RECFOR_CODI.AsString;
         Open;
     end;

    if qrAux2.FieldByName('Registros').AsInteger = 0 then
    begin
         SP_GERA_CPAPAGA.ParamByName('@REC_ID').Value :=  Q_RECRec_ID.Value;
         SP_GERA_CPAPAGA.ExecProc;
         MessageBox(Self.Handle, 'Pagamentos gerados com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
         //wwDBGrid1.Enabled := False;
    end
    else
         MessageBox(Self.Handle, 'Os pagamentos para esta nota fiscal já foram gerados!', 'Erro', MB_OK + MB_ICONERROR);




end;

procedure TFReceb.Q_RVCTAfterPost(DataSet: TDataSet);
begin
        Fmenu.Database1.ApplyUpdates([Q_RVCT]);
end;

procedure TFReceb.fonteInsertClick(Sender: TObject);
begin
If Tb1.PageIndex = 0 then
                Begin
                        cboLoc.Text := '';
                        txtNF.SetFocus;
                       // Q_REC.Insert;
                End Else If Tb1.PageIndex = 1 then
                Begin
                        cboMat.Enabled := True;
                        cboMat.SetFocus;
                       // Q_RECIT.Insert;
                End Else If Tb1.PageIndex = 2 then
                       // Q_RVCT.Insert;


      //Verifica se existe conta de entrada cadastrada
      {qrContaGerenciaEntrada.Last;
      if qrContaGerenciaEntrada.RecordCount > 0 then begin

        wwDBLookupCombo7.LookupValue := qrContaGerenciaEntradaContaGerencial.Value;
        wwDBLookupCombo7.ReadOnly := True;

      end
      else
        wwDBLookupCombo7.ReadOnly := False;    }


end;

procedure TFReceb.fontePostClick(Sender: TObject);
begin
 Q_SALDO_ITEM.CLOSE;
        Q_SALDO_ITEM.Open;
        Q_SALDO.Close;
        Q_SALDO.Open;
end;




procedure TFReceb.fonteDeleteClick(Sender: TObject);
begin
    If Tb1.PageIndex = 0 then Begin
                       If MessageDlg ('Para apagar a capa da NF é necessário que você tenha apagado todos os itens da mesma, prosseguir?' ,
                          mtInformation, [mbYes, mbNo], 0) = mrYes then
                       Begin
                                While not Q_RVCT.EOF Do
                                Begin
                                          Q_RVCT.Delete
                                End;

                                Q_REC.Delete;
                        End;
        end

                Else IF Tb1.PageIndex = 1 then
                        Q_RECIT.Delete;
end;

procedure TFReceb.chkProdClick(Sender: TObject);
begin
  if chkProd.Checked then begin
     cboMat.Visible := False;
     edtMAterial.Visible := True;
     IF Q_RECIT.State IN [dsEdit, dsInsert] then  begin
        Q_RECITMat_ID.AsInteger := StrToInt(FMenu.lbSemCadastro.Caption);
        Q_RECITGENERICO.AsString := 'S';
     end;

   //  if edtMAterial.Visible then
    //    edtMAterial.SetFocus;
  end else begin
     edtMAterial.Visible := False;
     cboMat.Visible := True;
    // if cboMat.Visible then
    //    cboMat.SetFocus;
  end;
end;

procedure TFReceb.DS_RECITDataChange(Sender: TObject; Field: TField);
begin
  edtMAterial.Text := Q_RECITMAT_DESC.Value;
  if Q_RECITGENERICO.Value = 'S' then  begin
      chkProd.Checked := True;
  end
  else begin
      chkProd.Checked := False;
  end;

   

end;

procedure TFReceb.cboMatCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   {if cboMat.Text <> '' then
   begin
      Q_RECITMarca_ID.AsInteger := qrMaterialMarcaMARCA_ID.AsInteger;
      Q_RECITMat_ID.AsInteger := qrMaterialMarcaMAT_ID.AsInteger;
      Q_RECITCONVERSAO.Value := qrMaterialMarcaMATMARCA_CONVERSAO.Value;
      cboForm.LookupValue := qrMaterialMarcaMARCA_ID.AsString;
      cboForm.Text := qrMaterialMarcaMARCA_DESC.AsString;
   end; }
   cboMaterialCloseUp;
end;

procedure TFReceb.Button1Click(Sender: TObject);
begin
  Q_REC.post;
end;

procedure TFReceb.Button2Click(Sender: TObject);
begin
  frnRelControleRecebimento := TfrnRelControleRecebimento.Create(Self);
  frnRelControleRecebimento.Q_REC.Close;
  frnRelControleRecebimento.Q_REC.Parameters[0].Value := Q_RECRec_ID.AsInteger;
  frnRelControleRecebimento.Q_REC.Open;
  frnRelControleRecebimento.QuickRep1.Preview;
  frnRelControleRecebimento.Close;
end;

procedure TFReceb.SpeedButton5Click(Sender: TObject);
var ErroConversao : Boolean;
begin
   with qrAux3 do begin
       Close;
       sql.Clear;
       sql.Add('EXEC SP_ATUALIZA_REC_CONVERSAO @REC_ID = ' + Q_RECRec_ID.AsString);
       ExecSQL;
   end;

   Q_RECIT.Close;
   Q_RECIT.Open;

   Q_RECIT.First;
   while not Q_RECIT.Eof do begin
        if Q_RECITCONVERSAO.AsFloat = 0 then
                ErroConversao := True;

       Q_RECIT.Next;
   end;

   if ErroConversao then
   begin
       ShowMessage('Existem materiais com conversão zerada, verificar');
       Abort;
   end;



end;

procedure TFReceb.DS_RECDataChange(Sender: TObject; Field: TField);
begin
 { if Q_RECStatus.AsString = 'F' then
        cboDiv.Enabled := False
  else
        cboDiv.Enabled := True; }
end;

procedure TFReceb.Button3Click(Sender: TObject);
VAR ID : Integer;
begin
   if MessageBox(Self.Handle, 'Deseja criar uma nota de devolução', 'Confirmação', MB_YESNO) = 6 then begin

       SP_GERA_DEVOLUCAO.Parameters.ParamByName('@REC_ID').Value := Q_RECRec_ID.AsInteger;
       SP_GERA_DEVOLUCAO.ExecProc;

       ID := SP_GERA_DEVOLUCAO.Parameters.ParamByName('@IdNotaDevolucao').Value;

       frmNotaDevolucaoCad := TfrmNotaDevolucaoCad.Create(Self);
       frmNotaDevolucaoCad.edtCodigo.Text := IntToStr(ID);
       frmNotaDevolucaoCad.ShowModal;

   end;
end;

procedure TFReceb.wwDBLookupCombo5Enter(Sender: TObject);
begin
(sender as TwwDBLookupCombo).Color := clAqua;
        (sender as TwwDBLookupCombo).dropdown;
end;

procedure TFReceb.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := True;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
      if Q_RECIT.State in [dsInsert, dsEdit] then 
      else begin
          if Q_RECITRec_Item_ID.AsString = '' then
             Q_RECIT.Append
          else
             Q_RECIT.Edit;
      end;
      Q_RECITMATMARCA_ID.Value := StrToInt(frmBuscaMaterial.lbSelecao.Caption);
      cboMaterialCloseUp;
   
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

procedure TFReceb.cboMaterialCloseUp;
begin
      if cboMat.Text <> '' then
   begin
      Q_RECITMarca_ID.AsInteger := qrMaterialMarcaMARCA_ID.AsInteger;
      Q_RECITMat_ID.AsInteger := qrMaterialMarcaMAT_ID.AsInteger;
      Q_RECITCONVERSAO.Value := qrMaterialMarcaMATMARCA_CONVERSAO.Value;
      cboForm.LookupValue := qrMaterialMarcaMARCA_ID.AsString;
      cboForm.Text := qrMaterialMarcaMARCA_DESC.AsString;
   end;
end;

end.

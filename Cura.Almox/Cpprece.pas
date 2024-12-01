unit CPPRECE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Tabnotbk,
  Wwdotdot, Wwdbcomb, wwdblook, Wwtable, Wwqbe, wwstorep, ADODB;

type
  TFRecebimentos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Fonte: TDBNavigator;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    UPD_RECE: TUpdateSQL;
    DS_RECE: TwwDataSource;
    Q_RECE: TwwQuery;
    TBN_RECE: TTabbedNotebook;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label26: TLabel;
    DBE_REC_CODI: TDBEdit;
    DBE_REC_NFIS: TDBEdit;
    DBE_REC_EMIS: TDBEdit;
    DBLC_REC_FILI: TwwDBLookupCombo;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Bevel9: TBevel;
    DBG_DREC: TwwDBGrid;
    DBE_DRE_DATA: TDBEdit;
    DBE_DRE_VALO: TDBEdit;
    DBE_DRE_HIST: TDBEdit;
    DBE_REC_CODI2: TDBEdit;
    DBLC_DRE_DIFE: TwwDBLookupCombo;
    DBE_REC_DESC2: TDBEdit;
    TBN_BAIX: TTabbedNotebook;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Bevel1: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Bevel3: TBevel;
    DBT_IRE_VTOT: TDBText;
    DBG_IREC: TwwDBGrid;
    DBE_REC_CODI3: TDBEdit;
    DBE_IRE_SEQU: TDBEdit;
    DBE_IRE_DATA: TDBEdit;
    DBE_IRE_SALD: TDBEdit;
    DBE_IRE_VDIF: TDBEdit;
    DBE_IRE_DOCT: TDBEdit;
    DBE_IRE_OBSE: TDBEdit;
    DBRG_IRE_TBAI: TDBRadioGroup;
    DBLC_IRE_BANC: TwwDBLookupCombo;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Bevel5: TBevel;
    DBE_IDR_DATA: TDBEdit;
    DBE_IDR_VALO: TDBEdit;
    DBE_IDR_HIST: TDBEdit;
    DBE_REC_CODI4: TDBEdit;
    DBE_IRE_VDIF2: TDBEdit;
    DBLC_IDR_DIFE: TwwDBLookupCombo;
    wwDBGrid3: TwwDBGrid;
    DBE_IRE_SEQU2: TDBEdit;
    Q_RECEREC_CODI: TIntegerField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_DEVE: TStringField;
    Q_RECEREC_RAZA: TStringField;
    Q_RECEREC_CGER: TStringField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_VPAG: TFloatField;
    Q_RECEREC_EMIS: TDateTimeField;
    Q_RECEREC_MOED: TStringField;
    Q_RECEREC_DCON: TDateTimeField;
    Q_RECEREC_MORI: TStringField;
    Q_RECEREC_DCOR: TDateTimeField;
    Q_RECEREC_VPRE: TDateTimeField;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_SITU: TStringField;
    Q_RECEREC_FILI: TStringField;
    DS_MOED: TwwDataSource;
    Q_DREC: TwwQuery;
    DS_DREC: TwwDataSource;
    UPD_DREC: TUpdateSQL;
    Label25: TLabel;
    Label41: TLabel;
    DBLC_DRE_DIFE2: TwwDBLookupCombo;
    UPD_IREC: TUpdateSQL;
    Q_IREC: TwwQuery;
    DS_IREC: TwwDataSource;
    Q_IRECIRE_CODI: TIntegerField;
    Q_IRECIRE_SEQU: TIntegerField;
    Q_IRECIRE_DATA: TDateTimeField;
    Q_IRECIRE_DOCT: TStringField;
    Q_IRECIRE_SALD: TFloatField;
    Q_IRECIRE_VDIF: TFloatField;
    Q_IRECIRE_VTOT: TFloatField;
    Q_IRECIRE_DDEB: TDateTimeField;
    Q_IRECIRE_TBAI: TStringField;
    Q_IRECIRE_OBSE: TStringField;
    Label43: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    UPD_IDRE: TUpdateSQL;
    Q_IDRE: TwwQuery;
    DS_IDRE: TwwDataSource;
    Q_IDREIDR_RECE: TIntegerField;
    Q_IDREIDR_SEQU: TIntegerField;
    Q_IDREIDR_DIFE: TStringField;
    Q_IDREIDR_DATA: TDateTimeField;
    Q_IDREIDR_VALO: TFloatField;
    Q_IDREIDR_DOCT: TStringField;
    Q_IDREIDR_HIST: TStringField;
    DBLC_IDR_DIFE2: TwwDBLookupCombo;
    Q_AUXI: TwwQuery;
    Q_AUXICOLUMN1: TFloatField;
    STP_VERUTIL: TStoredProc;
    Q_IDREIDR_BAIX: TIntegerField;
    DBCB_IRE_TBAI: TwwDBCombobox;
    Q_FERI: TwwQuery;
    Q_AUX2: TwwQuery;
    Q_DRECDRE_RECE: TIntegerField;
    Q_DRECDRE_NSEQ: TAutoIncField;
    Q_DRECDRE_DIFE: TStringField;
    Q_DRECDRE_DATA: TDateTimeField;
    Q_DRECDRE_HIST: TStringField;
    Q_RECEREC_CLIE: TIntegerField;
    Q_IRECIRE_BANC: TStringField;
    Q_IRECIRE_FMOV: TStringField;
    Q_IRECIRE_FAUX: TStringField;
    STP_RECSALD: TStoredProc;
    SpeedButton1: TSpeedButton;
    Panel6: TPanel;
    Label73: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    STP_ATUASALD: TStoredProc;
    Q_LCOB: TwwQuery;
    Q_RECEREC_BANC: TStringField;
    Q_LCOBLCO_CODI: TStringField;
    Q_LCOBLCO_BANC: TStringField;
    Q_LCOBBANC_CODI: TStringField;
    DBG_IRECIButton: TwwIButton;
    Label37: TLabel;
    Q_RECEREC_NBAN: TStringField;
    DBEdit1: TDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label46: TLabel;
    Q_PARA: TwwQuery;
    Q_PARAPAR_MOED: TStringField;
    Q_BANC: TwwQuery;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_CODI: TStringField;
    Q_CONT: TwwQuery;
    Q_PARAFilialRece: TStringField;
    Q_FILI: TwwQuery;
    Q_MOED: TwwQuery;
    Q_MOEDMOE_SIGL: TStringField;
    Q_MOEDMOE_NOME: TStringField;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_CODI: TAutoIncField;
    Q_CLIECLI_CGER: TStringField;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_APELIDO: TStringField;
    Q_CLIECLI_LOCCOB: TStringField;
    Q_Dife: TwwQuery;
    Q_DifeDIF_DESC: TStringField;
    Q_DifeDIF_CODI: TStringField;
    Q_DifeDIF_SINAL: TStringField;
    STP_NOTACR: TwwStoredProc;
    Q_RECEREC_CONF: TStringField;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    DBE_REC_RAZA: TDBEdit;
    Label7: TLabel;
    DBLC_REC_CGER: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBE_REC_VPRE: TDBEdit;
    Label13: TLabel;
    DBE_REC_VENC: TDBEdit;
    DBLC_REC_MOED: TwwDBLookupCombo;
    Label14: TLabel;
    DBLC_REC_MORI: TwwDBLookupCombo;
    Label9: TLabel;
    Label12: TLabel;
    DBE_REC_DCOR: TDBEdit;
    Label15: TLabel;
    DBE_REC_DCON: TDBEdit;
    DBE_REC_VALO: TDBEdit;
    Label16: TLabel;
    DBE_REC_VORI: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    DBE_REC_HIST: TDBEdit;
    Label17: TLabel;
    DBE_REC_DESC: TDBEdit;
    Label18: TLabel;
    DBE_REC_VLIQ: TDBEdit;
    DBE_REC_SALD: TDBEdit;
    Label20: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    Q_A1: TwwQuery;
    Q_A2: TwwQuery;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    cboFluxo: TwwDBComboBox;
    Label52: TLabel;
    Q_RECEFlag_Fluxo: TStringField;
    DBE_IRE_DDEB: TwwDBEdit;
    Q_AUX: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CONTDS: TStringField;
    Q_auxiliar: TwwQuery;
    SpeedButton7: TSpeedButton;
    Q_auxiliar1: TwwQuery;
    Q_DELETA: TwwQuery;
    SpeedButton8: TSpeedButton;
    Q_RECEREC_VALO: TFloatField;
    Q_RECEREC_DESC: TFloatField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEREC_VORI: TFloatField;
    Q_RECEREC_SALD: TFloatField;
    Q_DRECDRE_VALO: TFloatField;
    CheckBox1: TCheckBox;
    MaskEdit2: TMaskEdit;
    STP_INSERE_CPAMOVI_DEBCRED_REC: TwwStoredProc;
    Q_AUX8: TwwQuery;
    ListBox1: TListBox;
    pnl1: TPanel;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    ListBox2: TListBox;
    ListBox3: TListBox;
    SpeedButton9: TSpeedButton;
    Q_RECEREC_DT_GER_CNAB: TDateTimeField;
    Q_RECEDOLAR_REAL: TFloatField;
    Q_RECEDOLAR_PREV: TFloatField;
    wwDBEdit3: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label50: TLabel;
    qrAux: TwwQuery;
    Q_IRECIRE_VLR_DOLAR: TFloatField;
    Label51: TLabel;
    DBEdit2: TDBEdit;
    Label53: TLabel;
    DBEdit3: TDBEdit;
    Q_IRECIRE_TXDOLAR: TFloatField;
    qrAux2: TwwQuery;
    qrGeraDescontos: TwwQuery;
    Q_RECEDT_COMPETENCIA: TDateTimeField;
    Label54: TLabel;
    edtdtCompetencia: TMaskEdit;
    Q_RECENumeroFaturamento: TStringField;
    Label55: TLabel;
    chkSemMensagens: TCheckBox;
    Q_RECEPARCELAS: TStringField;
    Label56: TLabel;
    DBEdit4: TDBEdit;
    Q_RECEIdCentroCusto: TIntegerField;
    DBEdit5: TDBEdit;
    qrCentroCusto: TwwQuery;
    StringField7: TStringField;
    AutoIncField1: TAutoIncField;
    Label57: TLabel;
    wwDBLookupCombo11: TwwDBLookupCombo;
    qrCentroCusto2: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    qrListaCentroCusto: TADOQuery;
    qrListaCentroCustoId: TAutoIncField;
    qrListaCentroCustoREC_CODI: TIntegerField;
    qrListaCentroCustoIdCentroCusto: TIntegerField;
    qrListaCentroCustoPercentual: TBCDField;
    qrListaCentroCustoCC_Desc: TStringField;
    cboCentroCusto: TwwDBLookupCombo;
    Label58: TLabel;
    qrCentroCusto2CC_ID: TAutoIncField;
    qrCentroCusto2CC_Desc: TStringField;
    Label59: TLabel;
    DBEdit6: TDBEdit;
    dsListacentro: TDataSource;
    DBNavigator1: TDBNavigator;
    Q_RECEREC_NSU: TStringField;
    Label60: TLabel;
    DBEdit7: TDBEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_RECEAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_RECEStateChange(Sender: TObject);
    procedure Q_RECEAfterDelete(DataSet: TDataSet);
    procedure Q_RECEBeforeDelete(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TBN_RECEChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure DBLC_REC_MORIExit(Sender: TObject);
    procedure DBLC_REC_MOEDExit(Sender: TObject);
    procedure DS_RECEDataChange(Sender: TObject; Field: TField);
    procedure Q_DRECAfterDelete(DataSet: TDataSet);
    procedure Q_DRECAfterPost(DataSet: TDataSet);
    procedure DS_DRECStateChange(Sender: TObject);
    procedure Q_DRECNewRecord(DataSet: TDataSet);
    procedure Q_IRECNewRecord(DataSet: TDataSet);
    procedure Q_IRECAfterDelete(DataSet: TDataSet);
    procedure Q_IRECAfterPost(DataSet: TDataSet);
    procedure Q_IRECBeforeDelete(DataSet: TDataSet);
    procedure DS_IRECStateChange(Sender: TObject);
    procedure DBLC_IRE_BANCExit(Sender: TObject);
    procedure TBN_BAIXChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure Q_IDREAfterDelete(DataSet: TDataSet);
    procedure Q_IDREAfterPost(DataSet: TDataSet);
    procedure Q_IDRENewRecord(DataSet: TDataSet);
    procedure DS_IDREStateChange(Sender: TObject);
    procedure DBE_REC_DESCExit(Sender: TObject);
    procedure DBE_REC_VENCExit(Sender: TObject);
    procedure DBE_REC_VPREExit(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBE_IRE_SALDExit(Sender: TObject);
    procedure Q_RECEBeforePost(DataSet: TDataSet);
    procedure DBE_IRE_VDIFExit(Sender: TObject);
    procedure DBE_REC_VORIExit(Sender: TObject);
    procedure DBLC_IDR_DIFEExit(Sender: TObject);
    procedure DBLC_DRE_DIFEExit(Sender: TObject);
    procedure DBE_REC_VALOExit(Sender: TObject);
    procedure DBLC_REC_CGERExit(Sender: TObject);
    procedure Q_DRECBeforePost(DataSet: TDataSet);
    procedure Q_IDREBeforePost(DataSet: TDataSet);
    procedure Q_RECENewRecord(DataSet: TDataSet);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FonteBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormPaint(Sender: TObject);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure TBN_BAIXClick(Sender: TObject);
    procedure DBRG_IRE_TBAIClick(Sender: TObject);
    procedure Q_IRECBeforePost(DataSet: TDataSet);
    procedure TBN_RECEClick(Sender: TObject);
    procedure DBE_IDR_VALOExit(Sender: TObject);
    procedure Q_IRECBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBE_IRE_DDEBExit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBLC_REC_MORICloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure DBE_REC_DCONExit(Sender: TObject);
    procedure Q_RECEAfterOpen(DataSet: TDataSet);
    procedure DBEdit3Exit(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure edtdtCompetenciaEnter(Sender: TObject);
    procedure edtdtCompetenciaChange(Sender: TObject);
    procedure qrListaCentroCustoAfterPost(DataSet: TDataSet);
    procedure qrListaCentroCustoBeforePost(DataSet: TDataSet);
  private
    procedure Muda_Moeda(status : integer);
    procedure Repete_Lancamento;
    procedure Mostra_dolar_baixa(mostrar : boolean);
  public
    { Public declarations }
    StrBanco : string ;
  end;

var
  FRecebimentos: TFRecebimentos;
  FECHAR: BOOLEAN;
  codirece: String;
  NumPgto : string;

  EMISSAO_DATA  : STring ;

  dataEMISSAO  : string;  
  mesEMISSAO : integer;
  anoEMISSAO : integer;

implementation

uses CPPMENU, PesqReceb, Unt_Splash1,U_FUNCOES;

{$R *.DFM}

procedure TFRecebimentos.SBT_SAIRClick(Sender: TObject);
var rValor : real;
var sMensagem : string[ 150 ];
var bOK : boolean;     { Indica se pode fechar o form ou não }
begin
  bOK := True;
  if TBN_RECE.PageIndex = 1 then
  begin
    rValor := 0;
    with Q_AUXI do
    begin
      Close;
      SQL.Clear;
      SQL.Add( 'SELECT ROUND(SUM(DRE_VALO),2) FROM CPADREC WHERE DRE_RECE ='+Q_RECEREC_CODI.AsString+'' );
      Open;
      rValor := Q_AUXICOLUMN1.value;
    end;
        Q_AUX2.close ;
        Q_AUX2.sql.Clear;
        Q_AUX2.SQL.Add( 'SELECT round(REC_DESC,2) as XVALOR from CPARECE ' ) ;
        Q_AUX2.SQL.Add( 'where REC_CODI  =' +Q_RECEREC_CODI.AsString );
        Q_AUX2.open ;

    if Q_AUX2.fieldbyname('XVALOR').asfloat <> rValor then
    ///if Q_RECEREC_DESC.Value <> rValor then
    begin
      sMensagem := 'Valor do Desconto/Acréscimo não confere com o Detalhamento.';
      sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
      sMensagem := sMensagem + FloatToStr( rValor );
      if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
      begin
        Fonte.DataSource := DS_RECE;
        Fonte.BtnClick( nbEdit );
        Q_RECEREC_DESC.Value := StrToFloat(FormatFloat('#######0.0000', rValor));
        Fonte.BtnClick( nbPost );
        FRecebimentos.Close;
      end
      else
        BOK := False;
    end;
  end;
  if not bOK then
  begin
    SBT_SAIR.Down := False;
    Fonte.DataSource := DS_DREC;
  end
  else
    FRecebimentos.Close;
end;

procedure TFRecebimentos.Q_RECEAfterPost(DataSet: TDataSet);
var  sCodigo : String ;
     StrNumero : integer ;
begin
  SCodigo := DBE_REC_CODI.text ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_RECE]);
  end;
  except
    On E:EdbEngineError do
    begin
      Q_RECE.RevertRecord;
    end;
  end;
  try
    STP_RECSALD.ParamByName( '@Codigo' ).Value := strtoint(sCodigo) ;

    IF dbrg_ire_tbai.Value = 'T'  then
      STP_RECSALD.ParamByName( '@TIPO' ).Value := 'T'
     else
      STP_RECSALD.ParamByName( '@TIPO' ).Value := 'VAZIO'   ;
    STP_RECSALD.ExecProc;
  finally
  end;

  Q_RECE.Close;
  Q_RECE.Sql.Clear ;
  Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ sCodigo ) ;
  Q_RECE.Open ;
  //DBE_REC_DCOR.Enabled := False;
  //DBE_REC_DCON.Enabled := False;

end;

procedure TFRecebimentos.FormClose(Sender: TObject; var Action: TCloseAction);
var soma: Real;
begin
     if controle then
        posic := Q_RECEREC_CODI.Value;

     TBN_BAIX.PageIndex:= 0;

     qrListaCentroCusto.Last;
     IF qrListaCentroCusto.RecordCount > 0 then
     begin
         qrListaCentroCusto.First;
         while not qrListaCentroCusto.Eof do begin
             soma := soma + qrListaCentroCustoPercentual.AsFloat;
             qrListaCentroCusto.Next;
         end;

         if soma <> 100 then begin
             ShowMessage('A soma do percentual dos centros de custo deve ser de 100%');
             Abort;
         end;


     end;



     IF FECHAR = TRUE THEN BEGIN

        if MessageDlg( 'Deseja realmente sair ?',
           mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
            Q_LCOB.Close;
            Q_IDRE.Close;
            Q_IREC.Close;
            Q_DREC.Close;
            Q_RECE.Close;
            Q_AUXI.Close;
            Q_FERI.Close;
            Q_BANC.Close;
            Q_MOED.Close;
            Q_CONT.Close;
            Q_Fili.Close;
            Q_PARA.close ;
            Q_DIFE.Close;
            Action := caFree;
     end

    Else
       Abort;

   End;     

end;

procedure TFRecebimentos.FormShow(Sender: TObject);
begin
  TBN_RECE.OnChange  := nil;
  TBN_BAIX.OnChange  := nil;
  TBN_RECE.PageIndex := 0;
  TBN_BAIX.PageIndex := 0;
  TBN_RECE.OnChange  := TBN_RECEChange;
  TBN_BAIX.OnChange  := TBN_BAIXChange;
  DBE_REC_NFIS.setfocus ;
  qrCentroCusto.Open;
  qrCentroCusto2.Open;
  Muda_Moeda(200);
  

  if DBLC_REC_MORI.Text = Q_PARAPAR_MOED.asstring then
        Muda_Moeda(200)
  else
        Muda_Moeda(100);
end;

procedure TFRecebimentos.DS_RECEStateChange(Sender: TObject);
begin
  if (Q_RECE.State = dsEdit) or (Q_RECE.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_RECE.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      Q_RECEREC_SITU.Value := 'A';
      if TBN_RECE.pageindex = 0 then
         DBE_REC_NFIS.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
    end;
    LBL_STATUS.Visible := true
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;
end;                      

procedure TFRecebimentos.Q_RECEAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_RECE]);
  except
    Q_RECE.RevertRecord;
  end;
  
end;

procedure TFRecebimentos.Q_RECEBeforeDelete(DataSet: TDataSet);
begin
  {
   while not Q_IREC.eof do begin
      while not Q_IDRE.eof do Q_IDRE.delete ;
      Q_IREC.delete ;
   end;
   while not Q_DREC.eof do  Q_DREC.delete ;
   }
  ///////////////// MIGUEL /////////////////////
  with Q_AUX do
  begin
      Close;
      sql.Clear;
      sql.Add('select count(*) as XValor from cpaIrec where ire_codi = ' + Q_RECEREC_CODI.AsString);
      Open;
  end;

  IF  Q_AUX.FieldByName('XValor').AsInteger > 0 then
  begin
     MessageBox(Self.Handle, 'Este recebimento possui baixas favor verificar!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
  end;

end;

procedure TFRecebimentos.SBT_REFRClick(Sender: TObject);
var SCodigo : String ;
    SCodigo1 : string ;
begin
  SCodigo := DBE_REC_CODI.text ;
  SCodigo1 := DBE_IRE_SEQU.text ;
  Q_RECE.Close;
  Q_DREC.Close;
  Q_IREC.Close;
  Q_IDRE.Close;
  Q_CONT.Close;
  Q_MOED.Close;
  Q_FILI.Close;
  Q_DIFE.Close;
  Q_BANC.Close;
  Q_IDRE.Open;
  Q_RECE.Open;
  Q_DREC.Open;
  Q_IREC.Open;
  Q_FILI.Open;
  Q_CONT.Open;
  Q_MOED.Open;
  Q_DIFE.Open;
  Q_BANC.Open;
  if TBN_RECE.pageindex = 0 then begin
      Q_RECE.Close;
      Q_RECE.Sql.Clear ;
      Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ sCodigo ) ;
      Q_RECE.Open ;
  end ;
  if TBN_RECE.pageindex = 1 then
     Q_DREC.locate('DRE_RECE',sCodigo,[loCaseInsensitive]);
  if TBN_RECE.pageindex = 2 then begin
     Q_IREC.locate('IRE_CODI',sCodigo,[loCaseInsensitive]);
     Q_IDRE.locate('IDR_RECE;IDR_SEQU',VarArrayOf([sCodigo, sCodigo1]), [loPartialKey]);
  end;
end;

procedure TFRecebimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
//    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFRecebimentos.TBN_RECEChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);

var
 rValor    : real;
 sMensagem : string[ 150 ];

begin

  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    AllowChange := false;
  end;

  if TBN_RECE.PageIndex = 2 then
    if Q_RECEREC_SALD.value < 0 then
    begin
      MessageDlg('Total Pago maior que Valor do Título', mtInformation,[mbOk], 0);
      AllowChange := false;
    end;

  if (AllowChange) then
    case NewTab of
      0 : begin
          Fonte.DataSource := DS_RECE;
      end ;
      1 : begin
          Q_DREC.Close ;
          Q_DREC.Sql.Clear ;
          Q_DREC.Sql.Add(' select * from CPADREC' ) ;
          Q_DREC.Sql.Add(' where DRE_RECE = ' + Q_RECEREC_CODi.asstring ) ;
          Q_DREC.Sql.Add(' ORDER BY DRE_NSEQ, DRE_DIFE, DRE_DATA ') ;
          Q_DREC.Open ;
          Fonte.DataSource := DS_DREC;
      end ;
      2 : begin
          Q_IREC.Close;
          Q_IREC.Sql.Clear;
          Q_IREC.Sql.Add(' SELECT * FROM CPAIREC ') ;
          Q_IREC.Sql.Add(' where IRE_CODI = ' + Q_RECEREC_CODI.asstring  ) ;
          Q_IREC.Sql.Add(' ORDER BY IRE_CODI, IRE_SEQU ' ) ;
          Q_IREC.Open ;
          Fonte.DataSource := DS_IREC;
      end;
    end;

  if NewTab <> 1 then
  begin
    if AllowChange then
      if TBN_RECE.PageIndex = 1 then
      begin
        rValor := 0;
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT round(SUM(DRE_VALO),2) FROM CPADREC WHERE DRE_RECE ='+Q_RECEREC_CODI.AsString+'' );
          Open;
          rValor := Q_AUXICOLUMN1.value;
        end;
        Q_AUX2.close ;
        Q_AUX2.sql.Clear;
        Q_AUX2.SQL.Add( 'SELECT round(REC_DESC,2) as XVALOR from CPARECE ' ) ;
        Q_AUX2.SQL.Add( 'where REC_CODI  =' +Q_RECEREC_CODI.AsString );
        Q_AUX2.open ;

        if Q_AUX2.fieldbyname('XVALOR').asfloat <> rValor then

        begin
          sMensagem := 'Valor do Desconto/Acréscimo não confere com o Detalhamento.';
          sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
          sMensagem := sMensagem + FloatToStr( rValor );
          if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
          begin
            Fonte.DataSource := DS_RECE;
            Fonte.BtnClick( nbEdit );
            Q_RECEREC_DESC.Value := StrToFloat(FormatFloat('#######0.0000', rValor));
            Fonte.BtnClick( nbPost );
            case NewTab of
            0 : begin
                Fonte.DataSource := DS_RECE;
            end ;
            1 : begin
                Fonte.DataSource := DS_DREC;
            end ;
            2 : begin
                Fonte.DataSource := DS_IREC;
            end;
            end;
          end
          else
          begin
            AllowChange := False;
            Fonte.DataSource := DS_DREC;
          end;
        end;
      end
  end
  else
    if Q_RECEREC_DESC.Value = 0 then
      if Q_DREC.RecordCount = 0 then
      begin
        MessageDlg( 'Desconto/Acréscimo igual a zero.', mtInformation, [mbOk], 0);
        AllowChange := False;
        DBE_REC_CODI.Enabled := False;
        Fonte.DataSource := DS_RECE;
      end
      else
      begin
        if MessageDlg( 'Desconto/Acréscimo igual a Zero. Apaga Registros ?',
                       mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          Fonte.ConfirmDelete := False;
          with Q_AUXI do
          begin
            Close;
            Sql.Clear;
            SQL.Add( 'DELETE FROM CPADREC WHERE DRE_RECE ='+Q_RECEREC_CODI.AsString+'' );
            ExecSQL;
          end;
          Q_DREC.Close;
          Q_DREC.Open;
          AllowChange := False;
          DBE_REC_CODI.Enabled := False;
          Fonte.ConfirmDelete := True;
          Fonte.DataSource := DS_RECE;
        end;
      end;
  if AllowChange then
    if NewTab = 2 then TBN_BAIX.PageIndex := 0;

 if DBLC_REC_MORI.Text = Q_PARAPAR_MOED.asstring then
        Mostra_dolar_baixa(False)
 else
        Mostra_dolar_baixa(True);
end;

procedure TFRecebimentos.DBLC_REC_MORIExit(Sender: TObject);
begin
 {if DBLC_REC_MORI.Text = Q_PARAPAR_MOED.asstring then begin
    DBE_REC_DCOR.enabled := false ;
    DBE_REC_VORI.setfocus ;
 end else DBE_REC_DCOR.enabled := true ;
 if DBLC_REC_MOED.Text = '' then
    DBLC_REC_MOED.Text := DBLC_REC_MORI.Text ;
    comentado por miguel
    }



    DBLC_REC_MOED.Text :=  DBLC_REC_MORI.Text;
    if DBE_REC_DCON.Visible then
    begin
        DBE_REC_DCON.SetFocus;
        Q_RECEREC_DCON.Value := Q_RECEREC_VPRE.Value;
    end;

end;

procedure TFRecebimentos.DBLC_REC_MOEDExit(Sender: TObject);
begin
 { if DBLC_REC_MOED.Text = Q_PARAPAR_MOED.asstring then begin
     DBE_REC_DCON.enabled := false ;
     DBE_REC_VALO.setfocus ;
  end else DBE_REC_DCON.enabled := true ;}
end;

procedure TFRecebimentos.DS_RECEDataChange(Sender: TObject; Field: TField);
begin
//  if not (DS_RECE.State in [dsEdit, dsInsert]) then
//  begin
//    DBE_REC_DCOR.Enabled := (DBLC_REC_MORI.Text = '');
//    DBE_REC_DCON.Enabled := (DBLC_REC_MOED.Text = '');
//  end;

  if Q_RECEDT_COMPETENCIA.AsString <> '' then
        edtDTCompetencia.Text := FormatDateTime('MM/YYYY', Q_RECEDT_COMPETENCIA.Value);


  IF Q_RECEREC_CLIE.AsString <> '' then
  BEGIN
        with qrAux2 do
        begin
             Close;
             SQL.Clear;
             sql.Add('select count(*) as Xvalor from cliente_desconto where cli_codi = ' + Q_RECEREC_CLIE.ASSTRING );
             Open;
        end;

        IF qrAux2.FieldByName('XVALOR').AsInteger > 0 then
              SpeedButton7.Visible := True
        else
              SpeedButton7.Visible := False;
  end;

  qrListaCentroCusto.Close;
  qrListaCentroCusto.Parameters[0].Value := Q_RECEREC_CODI.AsInteger;
  qrListaCentroCusto.Open;



end;

procedure TFRecebimentos.Q_DRECAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_DREC]);
  except
    Q_DREC.RevertRecord;
  end;
end;

procedure TFRecebimentos.Q_DRECAfterPost(DataSet: TDataSet);
var sCodigo : String ;
begin

  if (Q_DRECDRE_VALO.Value = 0) and ( (Q_DREC.state = dsedit ) or (Q_DREC.state = dsinsert ))  then begin
    MessageDlg('Valor tem que ser informado',mtInformation,[mbOk], 0);
    DBE_DRE_VALO.SetFocus;
    abort ;
  end;

  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_DREC]);
  end;
  except
    begin
      Q_DREC.RevertRecord;
    end;
  end;
  SCodigo := DBE_REC_CODI.text ;

  Q_DREC.Close;
  Q_DREC.Open;
  Q_DREC.locate('DRE_RECE',sCodigo,[loCaseInsensitive]);
end;

procedure TFRecebimentos.DS_DRECStateChange(Sender: TObject);
begin
  if (Q_DREC.State = dsEdit) or (Q_DREC.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_DREC.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      DBLC_DRE_DIFE.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
    end;
    LBL_STATUS.Visible := true
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;
end;

procedure TFRecebimentos.Q_DRECNewRecord(DataSet: TDataSet);
begin
  Q_DRECDRE_RECE.AsInteger := Q_RECEREC_CODI.AsInteger;
end;

procedure TFRecebimentos.Q_IRECNewRecord(DataSet: TDataSet);
begin
  Q_IRECIRE_CODI.AsInteger := Q_RECEREC_CODI.AsInteger;
end;

procedure TFRecebimentos.Q_IRECAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_IREC]);
  except
    Q_IREC.RevertRecord;
  end;
  Q_IREC.Close;
  Q_IREC.Open ;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := StrBanco;
    STP_ATUASALD.ExecProc;
  finally
  end;
  strBanco := '';


  Q_RECE.Close ;
  Q_RECE.Open  ;
end;

procedure TFRecebimentos.Q_IRECAfterPost(DataSet: TDataSet);
var SCodigo : string ;
    StrBanco : String ;
begin


   
   SCodigo := DBE_REC_CODI.text ;
   StrBanco := Q_IRECIRE_BANC.asstring ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_IREC]);
  end;
  except
    begin
      Q_IREC.RevertRecord;
    end;
  end;

  //apaga movimentação
   IF (DBE_IRE_DDEB.text = '  /  /    ') OR (DBE_IRE_DDEB.text = '') then begin
      //if (Q_IREC.State = dsEdit) then begin
          //Q_IRECIRE_DDEB.asstring := '' ;

           Q_AUX.SQL.CLEAR;
           Q_AUX.SQL.ADD(' delete from cpamovi where mov_sequ = ' + Q_IRECIRE_SEQU.AsString );
           Q_AUX.sql.Add('and MOV_SINAL = ''+'' ');
           Q_AUX.EXECSQL;
      // end ;
   end ;



  try
    STP_RECSALD.ParamByName( '@Codigo' ).Value := Q_RECEREC_CODI.asinteger ;
     IF dbrg_ire_tbai.Value = 'T'  then
      STP_RECSALD.ParamByName( '@TIPO' ).Value := 'T'
     else
      STP_RECSALD.ParamByName( '@TIPO' ).Value := 'VAZIO'   ;
    STP_RECSALD.ExecProc;
  finally
  end;

  Q_RECE.Close;
  Q_RECE.Sql.Clear ;
  Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ sCodigo ) ;
  Q_RECE.Open ;

  Q_IREC.close;
  Q_IREC.Open;
  Q_IRec.Last ;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := StrBanco ;
    STP_ATUASALD.ExecProc;
  finally
  end;


  Q_RECE.edit ;
  Q_RECEREC_CONF.asstring := 'S' ;
  Q_RECE.Post ;


        Q_aux8.Close;
        Q_aux8.Sql.Clear ;
        Q_aux8.Sql.Add('     SELECT max(IRE_SEQU)  as MAXSEQ ') ;
        Q_aux8.Sql.Add('     FROM   CPAIREC   ') ;
        Q_aux8.Sql.Add('     WHERE  IRE_CODI = ' + SCodigo ) ;
        Q_aux8.Open ;


      {  Q_auxiliar.Close;
        Q_auxiliar.Sql.Clear ;
        Q_auxiliar.Sql.Add('     SELECT 	count(*)  as QTDE ') ;
        Q_auxiliar.Sql.Add('     FROM 	CPAMOVI A,  ') ;
        Q_auxiliar.Sql.Add('          	CPABANC B   ') ;
        Q_auxiliar.Sql.Add('     WHERE 	A.MOV_BANC = B.BAN_CODI ') ;
        Q_auxiliar.Sql.Add('     AND A.MOV_SEQU = '  + Q_aux8.fieldbyname('MAXSEQ').asstring ) ;
        Q_auxiliar.Sql.Add('     AND A.MOV_SINAL = ' + '''' + '+' + '''' ) ;
        Q_auxiliar.Open ;

        IF Q_auxiliar.fieldbyname('QTDE').asinteger = 0  then begin

                     IF Q_IRECIRE_DDEB.asstring <> '' then begin

                          Q_auxiliar.Close;
                          Q_auxiliar.Sql.Clear ;
                          Q_auxiliar.Sql.Add('select MAX(IRE_SEQU) as maior from cpaiREC where IRE_CODI = ' + SCodigo ) ;
                          Q_auxiliar.Open ;

                          try
                          STP_INSERE_CPAMOVI_DEBCRED_REC.ParamByName('@V_NUMERO').Value :=   SCodigo ;
                          STP_INSERE_CPAMOVI_DEBCRED_REC.ParamByName('@SEQUENCIA').Value := Q_auxiliar.fieldbyname('maior').asstring ;
                          STP_INSERE_CPAMOVI_DEBCRED_REC.ExecProc;
                        finally
                        end;

                      end ;
        end ; }


        Q_IREC.First;
        while not Q_IREC.Eof do
        begin
             NumPgto := Q_IRECIRE_SEQU.AsString;
            Q_auxiliar.Close;
            Q_auxiliar.Sql.Clear ;
            Q_auxiliar.Sql.Add('     SELECT 	count(*)  as QTDE ') ;
            Q_auxiliar.Sql.Add('     FROM 	CPAMOVI A,  ') ;
            Q_auxiliar.Sql.Add('          	CPABANC B   ') ;
            Q_auxiliar.Sql.Add('     WHERE 	A.MOV_BANC = B.BAN_CODI ') ;
            Q_auxiliar.Sql.Add('     AND A.MOV_SEQU = ' + NumPgto ) ;
            Q_auxiliar.Sql.Add('     AND A.MOV_SINAL = ' + '''' + '+' + '''' ) ;
            Q_auxiliar.Open ;

            Q_IREC.Locate('ire_sequ', NumPgto, []);

            IF Q_auxiliar.fieldbyname('QTDE').asinteger = 0  then begin

                         IF Q_IRECIRE_DDEB.asstring <> '' then begin

                              Q_auxiliar.Close;
                              Q_auxiliar.Sql.Clear ;
                              Q_auxiliar.Sql.Add('select MAX(IRE_SEQU) as maior from cpaiREC where IRE_CODI = ' + SCodigo ) ;
                              Q_auxiliar.Open ;

                              try
                              STP_INSERE_CPAMOVI_DEBCRED_REC.ParamByName('@V_NUMERO').Value :=   SCodigo ;
                              STP_INSERE_CPAMOVI_DEBCRED_REC.ParamByName('@SEQUENCIA').Value := NumPgto ;
                              STP_INSERE_CPAMOVI_DEBCRED_REC.ExecProc;
                            finally
                            end;

                          end ;
            end ;
            Q_IREC.Next;
        end;


        {
          verificamos se os valores pagos em dolares já foram pagos, e atualizamos o saldo para zero
        }
        if DBLC_REC_MORI.Text <> Q_PARAPAR_MOED.asstring then
        begin
            with qrAux do
            begin
                close;
                sql.Clear;
                sql.Add(' select case when sum(IRE_VLR_DOLAR) is null  then 0 else sum(IRE_VLR_DOLAR) end  as vpago from cpairec ');
                sql.Add(' where ire_codi = ' + Q_RECEREC_CODI.AsString);
                Open;
            end;

            if Q_RECEDOLAR_PREV.Value <= qrAux.FieldByName('vpago').AsFloat then
            begin
                  with qrAux do
                  begin
                      close;
                      sql.Clear;
                      sql.Add(' update cparece set rec_sald = 0 ');
                      sql.Add(' where rec_codi = ' + Q_RECEREC_CODI.AsString);
                      ExecSQL;
                  end;
            end;

        end;

end;

procedure TFRecebimentos.Q_IRECBeforeDelete(DataSet: TDataSet);
begin

     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if FMenu.Conciliacao(Q_IRECIRE_BANC.Value, Q_IRECIRE_DDEB.Value) then
     begin
        MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
        Abort;
     end;

     ///////////////////////////////////////////////////////////////////////////////////////////////////////


   Strbanco := Q_IRECIRE_BANC.asstring ;
   while not Q_IDRE.eof do Q_IDRE.delete ;
end;

procedure TFRecebimentos.DS_IRECStateChange(Sender: TObject);
begin
  if (Q_IREC.State = dsEdit) or (Q_IREC.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_IREC.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      Q_IRECIRE_TBAI.Value := 'T';
//    Q_IRECIRE_DATA.Value := Q_RECEREC_VENC.Value;
      Q_IRECIRE_DATA.Value := date ;
      Q_IRECIRE_VDIF.Value := 0;
      Q_IRECIRE_SALD.Value := StrToFloat( FormatFloat( '#######0.0000', Q_RECEREC_SALD.Value));


      with qrAux do
      begin
          close;
          sql.Clear;
          sql.Add(' select case when sum(IRE_VLR_DOLAR) is null  then 0 else sum(IRE_VLR_DOLAR) end  as vpago from cpairec ');
          sql.Add(' where ire_codi = ' + Q_RECEREC_CODI.AsString);
          Open;
      end;

      Q_IRECIRE_VLR_DOLAR.Value := Q_RECEDOLAR_PREV.Value - qrAux.fieldbyname('vpago').AsFloat;

    { Q_A1.close ;
      Q_A1.SQl.clear ;
      Q_A1.SQL.add('select MAX(IRE_SEQU) as ULTIMO from cpairec');
      Q_A1.SQL.add(' where iRE_CODI = ' + Q_RECEREC_CODI.asstring);
      Q_A1.open  ;

      Q_A2.close ;
      Q_A2.SQl.clear ;
      Q_A2.SQL.add('select (IRE_SALD - IRE_VTOT) as SALDOATU from cpairec');
      Q_A2.SQL.add(' where iRE_CODI = ' + Q_RECEREC_CODI.asstring);
      Q_A2.SQL.add(' and  IRE_SEQU = ' + Q_A1.fieldbyname('ULTIMO').asstring);
      Q_A2.open  ;

      Q_IRECIRE_SALD.Value := StrToFloat( FormatFloat( '#######0.0000', Q_A2.fieldbyname('SALDOATU').Value));}


      Q_IRECIRE_VTOT.Value := StrToFloat( FormatFloat( '#######0.0000', Q_IRECIRE_SALD.Value));
      Q_IRECIRE_BANC.value := Q_LCOBBANC_CODI.asstring ;
      DBRG_IRE_TBAI.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
    end;
    LBL_STATUS.Visible := true
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;


  IF Q_IRECIRE_TBAI.asstring  = 'T' then begin
    // DBE_IRE_SALD.enabled := false ;

  end else begin
     /// DBE_IRE_SALD.enabled := true  ;

  end ;
end;

procedure TFRecebimentos.DBLC_IRE_BANCExit(Sender: TObject);
begin
  DBLC_IRE_BANC.text := Q_BANCBAN_CODI.asstring ;
 //  if (FONTE.DataSource.State in [dsInsert,dsEdit]) then
//  begin
//  end;
end;

procedure TFRecebimentos.TBN_BAIXChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);

var rValor    : real;
var sMensagem : string[ 150 ];

begin

  FECHAR:= FALSE;

  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    AllowChange := false;
  end;

  if TBN_BAIX.PageIndex = 1 then
    if Q_RECEREC_SALD.Value < 0 then
    begin
      MessageDlg('Total Pago maior que Valor do Título', mtInformation,[mbOk], 0);
      AllowChange := false;
    end;

  if (AllowChange) then
    case NewTab of
      0 : begin
          Fonte.DataSource := DS_IREC;
      end ;
      1 : begin
          Fonte.DataSource := DS_IDRE;
      end ;
    end;

  if NewTab <> 1 then
  begin
    if AllowChange then
      if TBN_BAIX.PageIndex = 1 then
      begin
        rValor := 0;
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT SUM(IDR_VALO) FROM CPAIDRE WHERE IDR_RECE ='+Q_IRECIRE_CODI.AsString+
                   ' AND IDR_BAIX ='+Q_IRECIRE_SEQU.AsString+'' );
          Open;
          rValor := Q_AUXICOLUMN1.AsFloat;
        end;           

        if Q_IRECIRE_VDIF.Value <> rValor then
        begin
          sMensagem := 'Valor do Desconto/Acréscimo não confere com o Detalhamento.';
          sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
          sMensagem := sMensagem + FloatToStr( rValor );
          if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
          begin
            Fonte.DataSource := DS_IREC;
            Fonte.BtnClick( nbEdit );
            Q_IRECIRE_VDIF.Value := StrToFloat(FormatFloat('#######0.0000',rValor));
            Fonte.BtnClick( nbPost );
            FECHAR := TRUE;         //THIAGO
            case NewTab of
              0 : Fonte.DataSource := DS_IREC;
              1 : Fonte.DataSource := DS_IDRE;
            end;
          end
          else
          begin
            AllowChange := False;
            Fonte.DataSource := DS_IDRE;
          end;
        end;
      end
  end
  else
    if Q_IRECIRE_VDIF.Value = 0 then
      if Q_IDRE.RecordCount = 0 then
      begin
        MessageDlg( 'Desconto/Acréscimo igual a zero.', mtInformation, [mbOk], 0);
        AllowChange := False;
        Fonte.DataSource := DS_IREC;
      end
      else
      begin
        if MessageDlg( 'Desconto/Acréscimo igual a Zero. Apaga Registros ?',
                       mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          Fonte.ConfirmDelete := False;
          with Q_AUXI do
          begin
            Close;
            Sql.Clear;
            SQL.Add( 'DELETE FROM CPAIDRE WHERE IDR_RECE ='+Q_IRECIRE_CODI.AsString+
                     ' AND IDR_BAIX ='+Q_IRECIRE_SEQU.AsString+'' );
            ExecSQL;
          end;
          Q_IDRE.Close;
          Q_IDRE.Open;
          AllowChange := False;
          Fonte.ConfirmDelete := True;
          Fonte.DataSource := DS_IREC;
        end;
      end;
end;

procedure TFRecebimentos.Q_IDREAfterDelete(DataSet: TDataSet);
begin

  try
    FMenu.DATABASE1.ApplyUpdates([Q_IDRE]);
  except
    Q_IDRE.RevertRecord;
  end;

end;

procedure TFRecebimentos.Q_IDREAfterPost(DataSet: TDataSet);
var SCodigo : String ;
    SCodigo1 : string ;
begin
  SCodigo := DBE_REC_CODI.text ;
  SCodigo1 := DBE_IRE_SEQU.text ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_IDRE]);
  end;
  except
    begin
      Q_IDRE.RevertRecord;
    end;
  end;

  try
    STP_RECSALD.ParamByName( '@Codigo' ).Value := strtoint(sCodigo) ;
     IF dbrg_ire_tbai.Value = 'T'  then
      STP_RECSALD.ParamByName( '@TIPO' ).Value := 'T'
     else
      STP_RECSALD.ParamByName( '@TIPO' ).Value := 'VAZIO'    ;
    STP_RECSALD.ExecProc;
  finally
  end;

  Q_IDRE.Close;
  Q_IDRE.Open;
  Q_IDRE.locate('IDR_RECE;IDR_SEQU',VarArrayOf([sCodigo, sCodigo1]), [loPartialKey]);


  Q_IREC.edit ;
  Q_IRECIRE_VDIF.asfloat := Q_IRECIRE_VDIF.asfloat ;
  Q_IRECIRE_VTOT.Value := StrToFloat(FormatFloat('#######0.0000',Q_IRECIRE_SALD.Value)) +
                          StrToFloat(FormatFloat('#######0.0000',Q_IDREIDR_VALO.Value));

  Q_IREC.post;


 

end;


procedure TFRecebimentos.Q_IDRENewRecord(DataSet: TDataSet);
begin
  Q_IDREIDR_RECE.AsInteger := Q_RECEREC_CODI.AsInteger;
  Q_IDREIDR_BAIX.AsInteger := Q_IRECIRE_SEQU.AsInteger;
end;

procedure TFRecebimentos.DS_IDREStateChange(Sender: TObject);
begin
  if (Q_IDRE.State = dsEdit) or (Q_IDRE.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_IDRE.State = dsEdit then
      LBL_STATUS.Caption := 'ALTERAÇÃO'
    else
    begin
      DBLC_IDR_DIFE.Setfocus;
      LBL_STATUS.Caption := 'INCLUSÃO';
    end;
    LBL_STATUS.Visible := true
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;
end;

procedure TFRecebimentos.DBE_REC_DESCExit(Sender: TObject);
begin
  { se o valor do Desconto for diferente da Somatória dos valores do detalhamento
  ir para o detalhamento}
  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
    Q_RECEREC_VLIQ.Value := StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_VALO.Value)) +
                            StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_DESC.Value));
end;

procedure TFRecebimentos.DBE_REC_VENCExit(Sender: TObject);
var sMensagem : string[ 100 ];
var sAuxData  : string[ 10 ];
    dData     : TDateTime ;
begin
  SMensagem := '' ;


  sAuxData:= DateToStr( StrToDateTime( DBE_REC_VPRE.Text ) );
  dDATA   := strtodate(sAUXData) ;

  
  if StrToDateTime( DBE_REC_VPRE.Text ) <> 0 then
  begin
    if DayOfWeek(dData) = 1 then
      sMensagem := 'Vencimento é Domingo'
    else
      if DayOfWeek(dData) = 7 then
        sMensagem := 'Vencimento é Sábado'
      else
      begin
        with Q_FERI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT * FROM CPAFERI WHERE FER_DATA ='''+
                   FormatDateTime('MM/DD/YYYY',StrToDateTime(sAuxData))+'''');
          Open;
        end;
        if not Q_FERI.eof then
          sMensagem := 'Vencimento é Feriado';
      end;
    if sMensagem <> '' then
    begin
      try
        STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).Value := StrToDate(sAuxData);
        STP_VERUTIL.ExecProc;
      finally
        sAuxData := FormatDateTime('DD/MM/YYYY',STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).AsDate);
      end;
//      if MessageDlg( sMensagem + ' Alterar para ' + FormatDateTime('DD/MM/YYYY',StrToDateTime(sAuxData)),
//         mtInformation, [mbno,mBYes], 0) = mrNo then
//      begin
        if DBLC_REC_MOED.text = Q_PARAPAR_MOED.asstring then
           DBE_REC_VALO.setfocus
        else DBLC_REC_MOED.Setfocus;
//      end  else begin
//        Q_RECEREC_VENC.Value := StrToDate(sAuxData);
//        if DBLC_REC_MOED.text = Q_PARAPAR_MOED.asstring then
//           DBE_REC_VALO.setfocus
//        else DBLC_REC_MOED.Setfocus;
//      end ;
    end
  end
  else
  begin
    MessageDlg('Obrigatório informar o vencimento.', mtInformation,[mbOk], 0);
    DBE_REC_VENC.Setfocus;
  end;
end;

procedure TFRecebimentos.DBE_REC_VPREExit(Sender: TObject);
var sMensagem : string[ 100 ];
var sAuxData  : string[ 10 ];
var dDATA     :tdatetime ;
begin
  SMensagem := '' ;
  sAuxData:= DateToStr( StrToDateTime( DBE_REC_VPRE.Text ) );
  dDATA   := strtodate(sAUXData) ;
  if StrToDate( DBE_REC_VPRE.Text ) <> 0 then
  begin
    if DayOfWeek(dData) = 1 then
      sMensagem := 'Vencimento é Domingo'
    else
      if DayOfWeek(dData) = 7 then
        sMensagem := 'Vencimento é Sábado'
      else
      begin
        with Q_FERI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT * FROM CPAFERI WHERE FER_DATA ='''+
                   FormatDateTime('MM/DD/YYYY',StrToDateTime(sAuxData))+'''');
          Open;
        end;
        if not Q_FERI.eof then
          sMensagem := 'Vencimento é Feriado';
      end;
    if sMensagem <> '' then
    begin
      try
        STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).Value := StrToDate(sAuxData);
        STP_VERUTIL.ExecProc;
      finally
        sAuxData := FormatDateTime('DD/MM/YYYY',STP_VERUTIL.ParamByName( '@V_AUX_DATA' ).AsDate);
      end;
//      if MessageDlg( sMensagem + ' Alterar para ' + FormatDateTime('DD/MM/YYYY',StrToDateTime(sAuxData)),
//         mtInformation, [MbNo,mbYes], 0) = mrNo then
//      begin
//      end else begin
//        Q_RECEREC_VPRE.Value := StrToDate(sAuxData);
//        Q_RECEREC_VENC.Value := StrToDate(sAuxData);
//      end;
    end;
  end;
  if DS_RECE.State in [dsInsert,dsEdit] then
  if DBE_REC_VPRE.text <> '  /  /    ' then begin
      Q_RECEREC_VENC.Value := strtodate(DBE_REC_VPRE.text);
 //     DBE_REC_VENC.text  := formatdatetime('DD/MM/YYYY' , strtodate(DBE_REC_VPRE.text) );
      DBE_REC_VENC.text :=   DBE_REC_VPRE.text ;
     end;
     DBLC_REC_MORI.Setfocus;
end;

procedure TFRecebimentos.FonteClick(Sender: TObject; Button: TNavigateBtn);
var Obj_Soma : TwwQuery ;
    VValor   : real ;
    scodigo : String ;
begin
  Obj_Soma:=TwwQuery.Create(Self);
  Obj_Soma.DataBaseName:='Financeiro';
  Obj_Soma.SessionName:='Sec_BaseFin';
  if Button in [nbPost] then  begin
    if Fonte.DataSource = DS_RECE then  begin
       Obj_Soma.Sql.Add('SELECT SUM(DRE_VALO) As XValor FROM CPADREC where DRE_RECE = ' + Q_RECEREC_CODI.asstring );
       Obj_Soma.open;
       VValor := 0 ;
       if Obj_Soma.FieldbyName('XValor').AsString <> '' then begin
          VValor := Obj_Soma.Fieldbyname('XValor').asfloat ;
       end;
       if (Q_RECEREC_DESC.Value <> 0) and (Q_RECEREC_DESC.value <> VValor) then
          TBN_RECE.PageIndex := 1
    end else
      if Fonte.DataSource = DS_IREC then begin
         Obj_Soma.Sql.Add('SELECT SUM(IDR_VALO) As XValor FROM CPAIDRE where IDR_RECE = ' + Q_RECEREC_CODI.asstring );
         Obj_Soma.Open ;
         VValor := 0 ;
         if Obj_Soma.FieldbyName('XValor').AsString <> '' then begin
            VValor := Obj_Soma.Fieldbyname('XValor').asfloat ;
         end;
        if (Q_IRECIRE_VDIF.Value <> 0) and (Q_IRECIRE_VDIF.value <> VVAlor) then BEGIN
          TBN_BAIX.Pageindex := 1;
         ////Q_IDRE.edit ; 
        END
      end ;
  end;

  if Button in [nbCANCEL] then  begin
    // IF Q_IRECIRE_TBAI.asstring  = 'T' then
      //  DBE_IRE_SALD.enabled := false
       // else
       //  DBE_IRE_SALD.enabled := true  ;
  end ;

 
end;

procedure TFRecebimentos.DBE_IRE_SALDExit(Sender: TObject);
begin
 /// IF   ((Q_IREC.state = dsedit ) or (Q_IREC.state = dsinsert ))  then
       /// Q_IREC.post;

  if Q_IRECIRE_TXDOLAR.AsString = ''  then begin
          if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
            Q_IRECIRE_VTOT.Value := StrToFloat(FormatFloat('#######0.0000',Q_IRECIRE_SALD.Value));
          if ((dbrg_ire_tbai.Value = 'T') or (dbrg_ire_tbai.Value = 'C')) and (dbe_ire_sald.Text < dbe_rec_sald.Text )
             and  ((Q_IREC.state = dsedit ) or (Q_IREC.state = dsinsert ))  then
             begin
               MessageDlg('O valor informado não pode ser menor que o Saldo!',mterror, [mbOk], 0);
               DBE_IRE_sald.setfocus ;
               abort ;
             end;

        //  if (dbrg_ire_tbai.Value = 'P') and (dbe_ire_sald.Text >= dbe_rec_sald.Text )   then
          if (dbrg_ire_tbai.Value = 'P') and (Q_IRECIRE_sald.asfloat >= Q_RECEREC_SALD.asfloat )
              and ( (Q_IREC.state = dsedit ) or (Q_IREC.state = dsinsert ))  then begin
               MessageDlg('O valor informado é igual ou superior ao Saldo!',mterror, [mbOk], 0);
               DBE_IRE_sald.setfocus ;
               abort ;
             end;
  end;


end;

procedure TFRecebimentos.Q_RECEBeforePost(DataSet: TDataSet);
var   iCodigo : Integer;
     sCodigo : String ;
     Obj_Consulta:TwwQuery;
     iMySinal:INTEGER;
begin


  if edtDTCompetencia.Text <> '  /    ' then
        Q_RECEDT_COMPETENCIA.Value := StrToDate('01/' + edtDTCompetencia.Text);


  if (DS_DREC.State in [dsInsert,dsEdit]) then
     Q_DRECDRE_VALO.Value := abs(Q_DRECDRE_VALO.Value) * iMySinal;

  if Q_RECE.State = dsInsert then begin
     Obj_Consulta:=TwwQuery.Create(Self);
     Obj_Consulta.DataBaseName:='Financeiro';
     Obj_Consulta.SessionName:='Sec_BaseFin';
     Obj_Consulta.Sql.Add('SELECT MAX(REC_CODI) As Novo_Codi FROM CPARECE');
     Obj_Consulta.Open;
     sCodigo := Obj_Consulta.FieldbyName('Novo_Codi').AsString;

     Obj_Consulta.Close;
     Obj_Consulta.Destroy;

     If sCodigo = '' then
        sCodigo := '0';
     Try
        iCodigo:=StrToInt(sCodigo);
        INC(iCodigo);
        sCodigo:=IntToStr(iCodigo);
     Except
        sCodigo :='';
     End;
     DBE_REC_CODI.text := sCodigo ;
     Q_RECEREC_CODI.asstring    := sCodigo ;

     Q_RECEREC_VLIQ.Value := StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_VALO.Value)) +
                             StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_DESC.Value));

     Q_RECEREC_SALD.value        :=  Q_RECEREC_VLIQ.Value;

   end;

   Q_RECEREC_VLIQ.Value := StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_VALO.Value)) +
                          StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_DESC.Value));

  Q_RECEREC_CONF.asstring := 'S' ;

  if DBE_REC_NFIS.text = '' then begin
     MessageDlg('No. do Título em Branco !',mterror, [mbOk], 0);
     DBE_REC_NFIS.setfocus ;
     abort ;
   end;
  if DBE_REC_RAZA.text = '' then begin
     MessageDlg('Razão Social em Branco !',mterror, [mbOk], 0);
     DBE_REC_RAZA.setfocus ;
     abort ;
   end;
  if DBLC_REC_CGER.text = '' then begin
     MessageDlg('Conta Gerencial em Branco !',mterror, [mbOk], 0);
     DBLC_REC_CGER.setfocus ;
     abort ;
   end;
  if DBE_REC_VENC.text = '' then begin
     MessageDlg('Vcto. em Branco !',mterror, [mbOk], 0);
     DBE_REC_VENC.setfocus ;
     abort ;
   end;
  if DBE_REC_EMIS.text = '' then begin
     MessageDlg('Emissão em Branco !',mterror, [mbOk], 0);
     DBE_REC_EMIS.setfocus ;
     abort ;
   end;
  if DBLC_REC_MOED.text = '' then begin
     MessageDlg('Moeda em Branco !',mterror, [mbOk], 0);
     DBLC_REC_MOED.setfocus ;
     abort ;
   end;
  if DBLC_REC_FILI.text = '' then begin
     MessageDlg('Centro de Custo em Branco !',mterror, [mbOk], 0);
     DBLC_REC_FILI.setfocus ;
     abort ;
   end;
   if (wwDBlookupCombo1.lookupvalue <> '')  and ( (Q_RECE.state = dsedit ) or (Q_RECE.state = dsinsert ))  then begin
//      Q_CLIE.locate('CLI_CODI',wwDBLookupCombo1.lookupvalue,[loCaseInsensitive]);
      DBE_REC_RAZA.text := Q_CLIECLI_RAZA.asstring ;
      Q_RECEREC_RAZA.asstring := Q_CLIECLI_RAZA.asstring ;
      DBE_REC_RAZA.enabled := false ;
   end else DBE_REC_RAZA.enabled := true ;

   try
     STP_NOTACR.ParamByName( '@NumRece' ).Value    := Q_RECEREC_CODI.asinteger;
     STP_NOTACR.ParamByName( '@Cliente' ).Value    := Q_REceREC_CLIE.asinteger ;
     STP_NOTACR.ParamByName( '@NotaFiscal' ).Value := Q_REceREC_NFIS.asstring;
     STP_NOTACR.ExecProc;
   except
     On E:EdbEngineError do
     begin
       MessageDlgPos('Erro, '+#13+#10+E.Message,MtError,[MbOk],0,10,10);
      abort ;
     end;
  end ;

  if STP_NOTACR.ParamByName( '@NumReceAnt' ).asstring   <> '' then begin
     MessageDlg('Título já cadastrado no CR. : ' + STP_NOTACR.ParamByName( '@NumReceAnt' ).asstring ,mterror, [mbOk], 0);
     DBE_REC_NFIS.setfocus ;
     Abort;
  end ;

end;

procedure TFRecebimentos.DBE_IRE_VDIFExit(Sender: TObject);
begin
  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
    Q_IRECIRE_VTOT.Value := StrToFloat(FormatFloat('#######0.0000',Q_IRECIRE_SALD.Value)) +
                            StrToFloat(FormatFloat('#######0.0000',Q_IRECIRE_VDIF.Value));
end;


procedure TFRecebimentos.DBE_REC_VORIExit(Sender: TObject);
begin
  if (DS_RECE.State in [dsInsert]) or (DS_RECE.State in [dsedit]) then BEGIN
     Q_RECEREC_VALO.Value := StrToFloat(FormatFloat('#######0.0000',Q_RECEREC_VORI.Value));
     Q_RECEDOLAR_REAL.Value := Q_RECEDOLAR_PREV.Value;
     Q_RECE.POST;
  END;

end;

procedure TFRecebimentos.DBLC_IDR_DIFEExit(Sender: TObject);
begin
  if DBLC_IDR_DIFE.Text = '' then
  begin
    MessageDlg( 'Este campo não pode ser deixado em branco',mtInformation,[mbOk], 0 );
    DBLC_IDR_DIFE.SetFocus;
  end else DBLC_IDR_DIFE.text := Q_DIFEDIF_DESC.asstring ;
end;

procedure TFRecebimentos.DBLC_DRE_DIFEExit(Sender: TObject);
begin
  if DBLC_DRE_DIFE.Text = '' then
  begin
    MessageDlg( 'Este campo não pode ser deixado em branco.',mtInformation,[mbOk], 0);
    DBLC_DRE_DIFE.SetFocus;
  end else DBLC_DRE_DIFE.text := Q_DIFEDIF_DESC.asstring ;
end;

procedure TFRecebimentos.DBE_REC_VALOExit(Sender: TObject);
begin
  if (Q_RECEREC_VALO.Value = 0) and ( (Q_RECE.state = dsedit ) or (Q_RECE.State = dsinsert ))  then
  begin
    MessageDlg( 'Valor do Título tem que ser informado.',mtInformation,[mbOk], 0);
    DBE_REC_VALO.SetFocus;
  end
  ELSE BEGIN
       if (Q_RECE.State in [dsEdit, dsInsert]) then
          Q_RECE.POST;
  END;
end;

procedure TFRecebimentos.DBLC_REC_CGERExit(Sender: TObject);
begin
  if (DBLC_REC_CGER.Text = '' ) and ( (Q_RECE.state = dsedit ) or (Q_RECE.State = dsinsert ))  then
  begin
    MessageDlg('Este campo não pode ser deixado em branco.',mtInformation,[mbOk], 0);
    DBLC_REC_CGER.SetFocus;
  end //else DBLC_REC_CGER.text := Q_CONTCON_DESC.asstring ;
end;




procedure TFRecebimentos.Q_DRECBeforePost(DataSet: TDataSet);
var iMySinal : Integer;
begin
  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1;

  if (DS_DREC.State in [dsInsert,dsEdit]) then
    Q_DRECDRE_VALO.Value := abs(Q_DRECDRE_VALO.Value) * iMySinal;

end;

procedure TFRecebimentos.Q_IDREBeforePost(DataSet: TDataSet);
var iMySinal : Integer;
begin
  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1;

   if (DS_IDRE.State in [dsInsert,dsEdit]) then
     Q_IDREIDR_VALO.Value := Q_IDREIDR_VALO.Value * iMySinal;

   if Q_IDREIDR_VALO.Value = 0 then
   begin
     MessageDlg('Valor tem que ser informado.',mtInformation,[mbOk], 0);
     DBE_IDR_VALO.SetFocus;
   end;


end;

procedure TFRecebimentos.Q_RECENewRecord(DataSet: TDataSet);
begin

    Q_RECEREC_MORI.asstring := Q_PARAPAR_MOED.asstring ;
    Q_RECEREC_FILI.asstring := Q_PARAFilialrece.asstring ;
    Q_RECEREC_CONF.asstring := 'S' ;
    Q_RECEFLAG_FLUXO.asstring := 'S';
    Q_FILI.locate('FIL_CODI',Q_PARAFilialRece.asstring ,[]) ;

    Muda_Moeda(200);

end;


procedure TFRecebimentos.wwDBLookupCombo1Exit(Sender: TObject);
begin
    if (wwDBlookupCombo1.lookupvalue <> '')  and ( (Q_RECE.state = dsedit ) or (Q_RECE.state = dsinsert ))  then begin
      Q_CLIE.locate('CLI_CODI',wwDBLookupCombo1.lookupvalue,[loCaseInsensitive]);
      wwDBlookupCombo1.text := Q_CLIECLI_APELIDO.asstring ;
      if Q_Cont.locate('Con_CODI',Q_CLIECLI_CGER.asstring,[loCaseInsensitive]) then begin
         Q_RECEREC_CGER.asstring := Q_CLIECLI_CGER.asstring ;
         DBLC_REC_CGER.lookupvalue := Q_CLIECLI_CGER.asstring ;
         //DBLC_REC_CGER.text := Q_CONTCON_DESC.asstring ;
         DBLC_REC_CGER.text := Q_CONTDS.Value;
      end;


      if (Q_Lcob.locate('LCO_CODI',Q_CLIECLI_LOCCOB.asstring,[loCaseInsensitive])) AND
         (Q_RECE.State = dsInsert) Then begin
         Q_RECEREC_BANC.asstring      := Q_CLIECLI_LOCCOB.asstring ;
         wwDBLookupCombo3.lookupvalue := Q_CLIECLI_LOCCOB.asstring ;
         wwDBLookupCombo3.text        := Q_LCOBLCO_BANC.asstring ;
      end;
   end;

end;




procedure TFRecebimentos.SpeedButton1Click(Sender: TObject);
begin
   // Ajusta o posicionamento do Panel de Localização rápida
   wwDBEdit1.text := '' ;
   wwDBEdit2.text := '' ;

   //Panel6.Top := 69;
   //Panel6.Left := 184;
   //Panel6.width := 265;
   //Panel6.Height := 76;
   Panel2.enabled := false;
   Panel1.enabled := false ;
   TBN_RECE.enabled := false ;
   TBN_BAIX.enabled := false ;
   Panel6.enabled := true ;
   Panel6.visible := true ;
   wwDBEdit2.setfocus ;

end;

procedure TFRecebimentos.SpeedButton6Click(Sender: TObject);
var sCodigo : string ;
begin
      sCodigo := Q_RECEREC_CODI.asstring ;
      if wwDBEdit1.text <>  '' then begin
         Q_RECE.Close;
         Q_RECE.Sql.Clear ;
         Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_NFIS = '+ '''' + wwDBEdit1.text  + '''' ) ;
         Q_RECE.Open ;
         if Q_RECE.Eof then begin
            MessageDlg('Título não encontrado !',mtInformation,[mbOk], 0);
            Q_RECE.Close;
            Q_RECE.Sql.Clear ;
            Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ sCodigo   ) ;
            Q_RECE.Open ;
            abort ;
         end ;
      end else begin

            if wwDBEdit2.text <>  '' then begin
               Q_RECE.Close;
               Q_RECE.Sql.Clear ;
               Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ wwDBEdit2.text ) ;
               Q_RECE.Open ;
               if Q_RECE.Eof then begin
                  MessageDlg('CR. não encontrado !',mtInformation,[mbOk], 0);
                  Q_RECE.Close;
                  Q_RECE.Sql.Clear ;
                  Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+  sCodigo  ) ;
                  Q_RECE.Open ;
                  abort ;
               end ;
            end;
      end ;

   TBN_RECE.enabled := true;
   TBN_BAIX.enabled := true ;
   Panel1.enabled := true ;
   Panel6.visible := false ;
   Panel2.enabled := true ;


end;

procedure TFRecebimentos.SpeedButton5Click(Sender: TObject);
begin
   Panel6.visible := false ;
   TBN_RECE.enabled := true;
   TBN_BAIX.enabled := true;
   Panel2.enabled := true ;
   Panel1.enabled := true ;

end;

procedure TFRecebimentos.FonteBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbdelete] then  begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
       Abort;
  end;
(*  if (Button in [nbpost]) and ( Fonte.datasource = DS_RECE )  then  begin
     // Verifica duplicação de notas
      try
        if Q_RECEREC_CODI.asstring = '' then
           STP_NOTACR.ParamByName( '@NumRece' ).Value := 0
        else STP_NOTACR.ParamByName( '@NumRece' ).Value := Q_RECEREC_CODI.asinteger;
        STP_NOTACR.ParamByName( '@Cliente' ).Value := Q_REceREC_CLIE.asinteger ;
        STP_NOTACR.ParamByName( '@NotaFiscal' ).Value :=Q_REceREC_NFIS.asstring;
        STP_NOTACR.ExecProc;
      except
        On E:EdbEngineError do
        begin
          MessageDlgPos('Erro, '+#13+#10+E.Message,MtError,[MbOk],0,10,10);
          abort ;
        end;
     end ; *)
(*     Q_AUX2.Sql.Clear;
     Q_AUX2.Sql.Add('select REC_CODI from cparece ');
     Q_AUX2.Sql.Add(' where REC_NFIS = '+ ''''+ Q_REceREC_NFIS.asstring + '''') ;
     Q_AUX2.Sql.Add(' and REC_CLIE = '+  Q_REceREC_CLIE.asstring ) ;
     if Q_RECE.state = dsedit then
        Q_AUX2.Sql.Add(' and REC_CODI <> ' + Q_RECEREC_CODI.asstring ) ;
     Q_AUX2.Open ;

     if STP_NOTACR.ParamByName( '@NumReceAnt' ).asstring   <> '' then begin
        MessageDlg('Título já cadastrado no CR. : ' + STP_NOTACR.ParamByName( '@NumReceAnt' ).asstring ,mterror, [mbOk], 0);
        DBE_REC_NFIS.setfocus ;
        Abort;
     end ;
  end;    *)

end;






procedure TFRecebimentos.FormPaint(Sender: TObject);
begin
     If Self.Tag = 0 Then
        Begin

             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 10;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     Q_LCOB.open ;
                     Dfm_Splash1.Gauge1.Progress := 2;
                     Q_PARA.Open ;
                     Dfm_Splash1.Gauge1.Progress := 3;
                     Q_CLIE.Open;
                     Dfm_Splash1.Gauge1.Progress := 4;
                     Q_CONT.Open;
                     Dfm_Splash1.Gauge1.Progress := 5;
                     Q_FILI.Open;
                     Dfm_Splash1.Gauge1.Progress := 6;
                     Q_MOED.Open;
                     Dfm_Splash1.Gauge1.Progress := 7;
                     Q_DIFE.Open;
                     Dfm_Splash1.Gauge1.Progress := 8;
                     Q_BANC.Open;
                     Dfm_Splash1.Gauge1.Progress := 9;
                     Q_IDRE.Open;
                     Dfm_Splash1.Gauge1.Progress := 10;
                     Q_RECE.Close;
                     Q_RECE.Sql.Clear ;
                     Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ gs_rece ) ;
                     Q_RECE.Open ;

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
        //evita que entre no modo edit ao abrir o form por causa da data de competencia
        if Q_RECE.State = dsedit then
                Q_RECE.Cancel;

end;

procedure TFRecebimentos.wwDBLookupCombo1Change(Sender: TObject);
begin
    if (wwDBlookupCombo1.lookupvalue <> '')  and ( (Q_RECE.state = dsedit ) or (Q_RECE.state = dsinsert ))  then begin
       Q_CLIE.locate('CLI_CODI',wwDBLookupCombo1.lookupvalue,[loCaseInsensitive]);
       DBE_REC_RAZA.text := Q_CLIECLI_RAZA.asstring ;
       DBE_REC_RAZA.enabled := false ;
                 if Q_Cont.locate('Con_CODI',Q_CLIECLI_CGER.asstring,[loCaseInsensitive]) then begin
         Q_RECEREC_CGER.asstring := Q_CLIECLI_CGER.asstring ;
         DBLC_REC_CGER.lookupvalue := Q_CLIECLI_CGER.asstring ;
         //DBLC_REC_CGER.text := Q_CONTCON_DESC.asstring ;
         DBLC_REC_CGER.text := Q_CONTDS.Value;
         end;
       if TBN_RECE.pageindex = 0 then
    end else DBE_REC_RAZA.enabled := true ;


end;

procedure TFRecebimentos.wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
var SCodigo : string ;
begin
   SCodigo := Q_RECEREC_CODI.asstring ;
   if (Key = #13) then begin

      if wwDBEdit1.text <>  '' then begin
         Q_RECE.Close;
         Q_RECE.Sql.Clear ;
         Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_NFIS = '+ '''' + wwDBEdit1.text  + '''' ) ;
         Q_RECE.Open ;
         if Q_RECE.Eof then begin
            MessageDlg('Título não encontrado !',mtInformation,[mbOk], 0);
            Q_RECE.Close;
            Q_RECE.Sql.Clear ;
            Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = ' + sCodigo  ) ;
            Q_RECE.Open ;
            abort ;
         end ;
      end;

      TBN_RECE.enabled := true;
      TBN_BAIX.enabled := true ;
      Panel6.visible := false ;
      Panel1.enabled := true ;
      Panel2.enabled := true ;
   end ;

end;

procedure TFRecebimentos.wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
var SCodigo : string ;
begin
   SCodigo := Q_RECEREC_CODI.asstring ;
   if (Key = #13) then begin
      if wwDBEdit2.text <>  '' then begin
         Q_RECE.Close;
         Q_RECE.Sql.Clear ;
         Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = '+ wwDBEdit2.text ) ;
         Q_RECE.Open ;
         if Q_RECE.Eof then begin
            MessageDlg('CR. não encontrado !',mtInformation,[mbOk], 0);
            Q_RECE.Close;
            Q_RECE.Sql.Clear ;
            Q_RECE.Sql.Add('SELECT * FROM CPARECE where REC_CODI = ' + sCodigo   ) ;
            Q_RECE.Open ;
            abort ;
         end ;
      end;
      TBN_RECE.enabled := true;
      TBN_BAIX.enabled := true ;
      Panel6.visible := false ;
      Panel1.enabled := true ;
      Panel2.enabled := true ;
   end ;

end;

procedure TFRecebimentos.wwDBLookupCombo3Exit(Sender: TObject);
begin
  // IF (Q_RECE.State = dsInsert) THEN
      ///wwDBlookupCombo3.text := Q_LCOBLCO_BANC.asstring ;

  if DBE_REC_CODI.Text <> '' then
  begin
      if  wwDBLookupCombo3.Text = '' then
      begin
          with Q_AUX do
          begin
               Close;
               sql.Clear;
               sql.Add('update cparece set rec_banc = null, REC_DT_GER_CNAB = null  where rec_codi = :rec_codi ');
               Params[0].AsInteger := Q_RECEREC_CODI.Value;
               ExecSQL;
          end;
          Q_RECE.close;
          Q_RECE.open;
      end;
  end;



end;

procedure TFRecebimentos.TBN_BAIXClick(Sender: TObject);
begin
  if TBN_BAIX.PageIndex = 1 then Q_IDRE.first ;
end;

procedure TFRecebimentos.DBRG_IRE_TBAIClick(Sender: TObject);
begin
   IF DBRG_IRE_TBAI.Itemindex = 0 then begin
     //DBE_IRE_SALD.enabled := false ;
     //Q_IREC.edit;
     ////Q_IRECIRE_SALD.asstring := Q_IRECIRE_VTOT.asstring  ;
  end else begin
      //////DBE_IRE_SALD.enabled := true  ;

  end ;
end;

procedure TFRecebimentos.Q_IRECBeforePost(DataSet: TDataSet);
begin
     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if Q_IRECIRE_DDEB.AsString <> '' then
     begin
       if FMenu.Conciliacao(Q_IRECIRE_BANC.Value, Q_IRECIRE_DDEB.Value) then
       begin
          MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                  'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
          Abort;
       end;
     end;
     ///////////////////////////////////////////////////////////////////////////////////////////////////////



    if  (Q_IRECIRE_SALD.asfloat >  Q_RECEREC_VLIQ.asfloat) then
    begin
      IF DBEdit2.Visible = False then  //VERIFICA SE O EDT DE CAMBIO ESTA ATIVADO INFORMANDO Q É TRANSAÇÃO COM OUTRO TIPO DE MOEDA, SENDO ASSIM NAO TOMAMOS EM CONTA O VALOR EM REAL
      BEGIN
                MessageDlg('Total Pago maior que Valor do Título', mtInformation,[mbOk], 0);
                abort;
      end;
    end;

   Q_IRECIRE_VTOT.Value := StrToFloat(FormatFloat('#######0.0000',Q_IRECIRE_SALD.Value)) +
                           StrToFloat(FormatFloat('#######0.0000',Q_IRECIRE_VDIF.Value));


  IF dbrg_ire_tbai.Value = 'P'  then begin
     IF  (Q_IRECIRE_SALD.asfloat >= Q_RECEREC_VLIQ.asfloat) then begin
         MessageDlg('Total é maior que Valor do Título ou então para utilizar o mesmo valor do Título, mude para Baixa Total ! ', mtInformation,[mbOk], 0);
         DBRG_IRE_TBAI.setfocus ;
         abort;
     end ;
  end;

  if DBEdit2.Visible then
  begin
      Q_IRECIRE_SALD.Value := Q_IRECIRE_TXDOLAR.Value *  Q_IRECIRE_VLR_DOLAR.Value;
  end;

end;

procedure TFRecebimentos.TBN_RECEClick(Sender: TObject);
begin
    if (Q_IDRE.State = dsEdit) or (Q_IDRE.State = dsInsert) then
        Q_IDRE.POST ;
    codirece := q_recerec_codi.asstring;
end;

procedure TFRecebimentos.DBE_IDR_VALOExit(Sender: TObject);
begin
  IF Q_IDREIDR_VALO.asfloat < 0 then begin
      MessageDlg('Não coloque Valor negativo. Verificação será automática através do Tipo do Desc./Acrésc. !  ', mtInformation,[mbOk], 0);
      DBE_IDR_VALO.text := '' ; 
      abort;
  end ;
end;

procedure TFRecebimentos.Q_IRECBeforeInsert(DataSet: TDataSet);
begin
  if Q_RECEREC_DCON.AsString = '' then begin
    IF Q_RECEREC_SALD.asfloat = 0 then begin
       MessageDlg('Título Recebido integralmente. Saldo ZERO !',mterror, [mbOk], 0);
       abort ;
    end ;
  end;
    
end;

procedure TFRecebimentos.FormCreate(Sender: TObject);
begin
  FECHAR:= FALSE;
end;

procedure TFRecebimentos.SpeedButton3Click(Sender: TObject);
var
data : string;
mes : integer;
ano : integer;
begin
   if Q_RECE.recordcount = 0 then
   begin
        MessageDlg('Não há nenhum lançamento posicionado para repetição.',
        mtInformation, [mbok], 0);
        abort;
   end;

    {if CheckBox1.checked = false  then
      EMISSAO_DATA := 'N'
    else
      EMISSAO_DATA := 'S' ; }
      

   if (copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_VENC.value),0,2) = '01') and
      (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_RECEREC_VENC.value),0,2)) > 28) then
        data := '28/'
   else
   if (strtoint(copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_VENC.value),0,2)) in [3,5,7,8,10]) and
      (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_RECEREC_VENC.value),0,2)) = 31 ) then
        data := '30/'
   else
        data := copy(Q_RECEREC_VENC.AsString,0,3);


  { IF    EMISSAO_DATA = 'S' then begin
           if (copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2) = '01') and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_RECEREC_EMIS.value),0,2)) > 28) then
                dataEMISSAO := '28/'
           else
           if (strtoint(copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2)) in [3,5,7,8,10]) and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_RECEREC_EMIS.value),0,2)) = 31 ) then
                dataEMISSAO := '30/'
           else
                dataEMISSAO := copy(Q_RECEREC_EMIS.AsString,0,3);  
   end ;  }





   if copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_VENC.value),0,2) = '12' then
        data := data + '01/'
   else
   begin
        mes := strtoint(copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_VENC.value),0,2))+1;
        if mes < 10 then
                data := data +'0' +inttostr(mes) +'/'
        else
                data := data +inttostr(mes) +'/';
   end;
   if copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_VENC.value),0,2) = '12' then
        ano := strtoint(copy(formatdatetime('YYYYMMDD',Q_RECEREC_VENC.value),0,4))+1
   else
        ano := strtoint(copy(formatdatetime('YYYYMMDD',Q_RECEREC_VENC.value),0,4));


 { IF    EMISSAO_DATA = 'S' then begin
           if copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2) = '12' then
                dataEMISSAO := dataEMISSAO + '01/'
           else
           begin
                mesEMISSAO := strtoint(copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2))+1;
                if mesEMISSAO < 10 then
                        dataEMISSAO := dataEMISSAO +'0' +inttostr(mesEMISSAO) +'/'
                else
                        dataEMISSAO := dataEMISSAO +inttostr(mesEMISSAO) +'/';
           end;
           if copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2) = '12' then
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_RECEREC_EMIS.value),0,4))+1
           else
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_RECEREC_EMIS.value),0,4));
  end ;
   dataEMISSAO := dataEMISSAO + inttostr(anoEMISSAO);
   MaskEdit2.Text := dataEMISSAO;   }


   data := data + inttostr(ano);
   MaskEdit1.Text := data;


   TBN_RECE.enabled := false;
   Fonte.enabled := false;
   SpeedButton1.enabled := false;
   SBT_REFR.enabled := false;
   Panel4.visible := true;
   ListBox2.Clear;
   ListBox3.Clear;
end;

procedure TFRecebimentos.SpeedButton2Click(Sender: TObject);
begin
   Edit4.text := '';
   Panel4.visible := false;
   TBN_RECE.enabled := true;
   Fonte.enabled := true;
   SpeedButton1.enabled := true;
   SBT_REFR.enabled := true;
end;

procedure TFRecebimentos.SpeedButton4Click(Sender: TObject);
var
parcelas : integer;
i : integer;
numdoc : string;
data : tdatetime;
data_EMISSAO :  tdatetime;
datas : string;
datas_EMISSAO : string ;
auxs : string;
auxi : integer;
virano : boolean;
codi : integer;
F : TextFile;
loc : string;
previsto : string;
MES : INTEGER;
Emissao, VENCIMENTO, VENCIMENTOPREV : TdateTime;



begin


     emissao := Q_RECEREC_EMIS.value ;
     VENCIMENTO := Q_RECEREC_VENC.Value;
     VENCIMENTOPREV := Q_RECEREC_VPRE.Value;


   if (edit4.Text = '') or (maskedit1.Text = '  /  /    ') then
   begin
        MessageDlg('Preencha todos os campos', mtInformation, [mbok], 0);
        abort;
   end;

    //////////////////
    if CheckBox1.checked = false  then
      EMISSAO_DATA := 'N'
    else
      EMISSAO_DATA := 'S' ;


    IF    EMISSAO_DATA = 'S' then begin
           if (copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2) = '01') and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_RECEREC_EMIS.value),0,2)) > 28) then
                dataEMISSAO := '28/'
           else
           if (strtoint(copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2)) in [3,5,7,8,10]) and
              (strtoint(copy(formatdatetime('DD/MM/YYYY',Q_RECEREC_EMIS.value),0,2)) = 31 ) then
                dataEMISSAO := '30/'
           else
                dataEMISSAO := copy(Q_RECEREC_EMIS.AsString,0,3);
    end ;

    IF    EMISSAO_DATA = 'S' then begin
           if copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2) = '12' then
                dataEMISSAO := dataEMISSAO + '01/'
           else
           begin
                mesEMISSAO := strtoint(copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2))+1;
                if mesEMISSAO < 10 then
                        dataEMISSAO := dataEMISSAO +'0' +inttostr(mesEMISSAO) +'/'
                else
                        dataEMISSAO := dataEMISSAO +inttostr(mesEMISSAO) +'/';
           end;
           if copy(formatdatetime('MM/DD/YYYY',Q_RECEREC_EMIS.value),0,2) = '12' then
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_RECEREC_EMIS.value),0,4))+1
           else
                anoEMISSAO := strtoint(copy(formatdatetime('YYYYMMDD',Q_RECEREC_EMIS.value),0,4));
   end ;
   dataEMISSAO := dataEMISSAO + inttostr(anoEMISSAO);
   MaskEdit2.Text := dataEMISSAO;

      /////////////////


   parcelas := strtoint(edit4.text)+1;
   data := strtodate(Maskedit1.text);
   datas := formatdatetime('DD/MM/YYYY',data);

   
   data_EMISSAO  := strtodate(Maskedit2.text);
   datas_EMISSAO  := formatdatetime('DD/MM/YYYY',data_EMISSAO);

   previsto := formatdatetime('DD/MM/YYYY',Q_RECEREC_VPRE.value);
   virano := false;


 // ListBox1.ItemIndex := 0;

   for I := 2 to parcelas do
   begin
        numdoc := Q_RECEREC_NFIS.AsString +' ' +inttostr(i) +'/' +inttostr(parcelas);

        if i > 2 then
        begin
                data := strtodate(datas);
                if (copy(formatdatetime('MM/DD/YYYY',data),0,2) = '01') and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) > 28) then
                        datas := '28/'
                else
                if (strtoint(copy(formatdatetime('MM/DD/YYYY',data),0,2)) in [3,5,7,8,10]) and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) = 31 ) then
                        datas := '30/'
                else
                        datas := copy(formatdatetime('DD/MM/YYYY',data),0,3);

                auxs := copy(formatdatetime('MM/DD/YYYY',data),0,2);
                auxi := strtoint(auxs) + 1;
                if auxi = 13 then
                begin
                        auxi := 1;
                        virano := true;
                end;                
                auxs := inttostr(auxi);

                if length(auxs) = 1 then
                        datas := datas + '0' +auxs +'/'
                else
                        datas := datas +auxs +'/';

                auxs := copy(formatdatetime('YYYYMMDD',data),0,4);
                if virano then
                        auxi := strtoint(auxs) + 1
                else
                        auxi := strtoint(auxs);
                datas := datas + inttostr(auxi);


                 datas_emissao := formatdatetime('DD/MM/YYYY',(IncMonth(emissao, i-1)))     ;
                 ////EMISSAO/////
               // data_EMISSAO := strtodate(dataEMISSAO);
               // datas_emissao := datetostr(IncMonth(data_EMISSAO, MES));





               //ListBox1.ItemIndex := ListBox1.ItemIndex + 1;
                //data_EMISSAO := strtodatetime(datas_emissao)
                {
                if (copy(formatdatetime('MM/DD/YYYY',data_EMISSAO),0,2) = '01') and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data_EMISSAO),0,2)) > 28) then
                        datas_EMISSAO := '28/'
                else
                if (strtoint(copy(formatdatetime('MM/DD/YYYY',data_EMISSAO),0,2)) in [3,5,7,8,10]) and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data_EMISSAO),0,2)) = 31 ) then
                        datas_EMISSAO := '30/'
                else
                        datas_EMISSAO := copy(formatdatetime('DD/MM/YYYY',data_EMISSAO),0,3);


                auxs := copy(formatdatetime('MM/DD/YYYY',data_EMISSAO),0,2);
                auxi := strtoint(auxs) + 1;
                if auxi = 13 then
                begin
                        auxi := 1;
                        virano := true;
                end;
                auxs := inttostr(auxi);

                if length(auxs) = 1 then
                        datas_EMISSAO := datas_EMISSAO + '0' +auxs +'/'
                else
                        datas_EMISSAO := datas_EMISSAO +auxs +'/';

                auxs := copy(formatdatetime('YYYYMMDD',data_EMISSAO),0,4);
                if virano then
                        auxi := strtoint(auxs) + 1
                else
                        auxi := strtoint(auxs);
                datas_EMISSAO := datas_EMISSAO + inttostr(auxi);   }
                ////EMISSAO//////
        end;
        ///////PREVISTO////////

       PREVISTO := formatdatetime('DD/MM/YYYY',(IncMonth(VENCIMENTO, i-1))) ;
       DATAS := formatdatetime('DD/MM/YYYY',(IncMonth(VENCIMENTOPREV, i-1))) ;

      {  data := strtodate(previsto);
        if (copy(formatdatetime('MM/DD/YYYY',data),0,2) = '01') and
           (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) > 28) then
                previsto := '28/'
        else
        if (strtoint(copy(formatdatetime('MM/DD/YYYY',data),0,2)) in [3,5,7,8,10]) and
           (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) = 31 ) then
                previsto := '30/'
        else
                previsto := copy(formatdatetime('DD/MM/YYYY',data),0,3);

        auxs := copy(formatdatetime('MM/DD/YYYY',data),0,2);
        auxi := strtoint(auxs) + 1;
        if auxi = 13 then
        begin
                auxi := 1;
                virano := true;
        end;
        auxs := inttostr(auxi);

        if length(auxs) = 1 then
                previsto := previsto + '0' +auxs +'/'
        else
                previsto := previsto +auxs +'/';

        auxs := copy(formatdatetime('YYYYMMDD',data),0,4);
        if virano then
        Begin
                auxi := strtoint(auxs) + 1;
                virano := false;
        End else
                auxi := strtoint(auxs);
        previsto := previsto + inttostr(auxi);    }
        //////PREVISTO///////////

        Q_A1.SQL.Clear;
        Q_A1.SQL.Add('SELECT MAX(REC_CODI) AS CODIGO FROM CPARECE');
        Q_A1.Open;

        codi := Q_A1.fieldbyname('CODIGO').asinteger + 1;


        IF EMISSAO_DATA = 'N' then begin
                Q_A1.SQL.Clear;
                Q_A1.SQL.Add('INSERT INTO CPARECE (REC_CODI, REC_CLIE, REC_NFIS, REC_DEVE, ');
                Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, REC_VENC, ');
                Q_A1.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                Q_A1.SQL.Add('REC_VORI, REC_VPRE, REC_HIST, REC_SALD, REC_SITU, REC_FILI, REC_NBAN, ');
                Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO) ');
                Q_A1.SQL.Add('SELECT ' +inttostr(codi) +', REC_CLIE, ' +'''' +numdoc +'''' +', REC_DEVE, ');
                Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, CONVERT(SMALLDATETIME,' +'''' +datas +'''' +',103), ');
                Q_A1.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                Q_A1.SQL.Add('REC_VORI, ');
                Q_A1.SQL.Add('CONVERT(SMALLDATETIME,' +'''' +previsto +'''' +',103), REC_HIST, ');
                Q_A1.SQL.Add('REC_VLIQ, ' +'''' +'A' +'''' +', REC_FILI, REC_NBAN, ');
                Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO FROM CPARECE ');
                Q_A1.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
                Q_A1.ExecSQL;
         END ELSE BEGIN
                Q_A1.SQL.Clear;
                Q_A1.SQL.Add('INSERT INTO CPARECE (REC_CODI, REC_CLIE, REC_NFIS, REC_DEVE, ');
                Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, REC_VENC, ');
                Q_A1.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                Q_A1.SQL.Add('REC_VORI, REC_VPRE, REC_HIST, REC_SALD, REC_SITU, REC_FILI, REC_NBAN, ');
                Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO) ');
                Q_A1.SQL.Add('SELECT ' +inttostr(codi) +', REC_CLIE, ' +'''' +numdoc +'''' +', REC_DEVE, ');
                Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, CONVERT(SMALLDATETIME,' +'''' +datas +'''' +',103), ');
                Q_A1.SQL.Add('REC_BANC, REC_VPAG, CONVERT(SMALLDATETIME,'+'''' +datas_EMISSAO +'''' +',103), REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                Q_A1.SQL.Add('REC_VORI, ');
                Q_A1.SQL.Add('CONVERT(SMALLDATETIME,' +'''' +previsto +'''' +',103), REC_HIST, ');
                Q_A1.SQL.Add('REC_VLIQ, ' +'''' +'A' +'''' +', REC_FILI, REC_NBAN, ');
                Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO FROM CPARECE ');
                Q_A1.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
                Q_A1.ExecSQL;
         END      ;


        Q_A1.SQL.Clear;
        Q_A1.SQL.Add('SELECT * FROM CPADREC WHERE DRE_RECE = ' +Q_RECEREC_CODI.asstring);
        Q_A1.Open;

        if Q_A1.recordcount > 0 then
        begin

                Q_A1.SQL.Clear;
                Q_A1.SQL.Add('INSERT INTO CPADREC (DRE_RECE, DRE_DIFE, DRE_DATA, DRE_VALO, ');
                Q_A1.SQL.Add('DRE_HIST) SELECT ' +inttostr(codi) +', DRE_DIFE, DRE_DATA, DRE_VALO, ');
                Q_A1.SQL.Add('DRE_HIST FROM CPADREC WHERE DRE_RECE = ' +Q_RECEREC_CODI.asstring);
                Q_A1.ExecSQL;

        end;
   end;   //end for


   loc := Q_RECEREC_NFIS.asstring +' 1/' +inttostr(strtoint(edit4.text)+1);
   Q_A1.SQL.Clear;
   Q_A1.SQL.Add('UPDATE CPARECE SET REC_NFIS = ');
   Q_A1.SQL.Add('''' +Q_RECEREC_NFIS.asstring +' 1/' +inttostr(strtoint(edit4.text)+1) +'''');
   Q_A1.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
   Q_A1.ExecSQL;
   Q_RECE.SQL.Clear;
   Q_RECE.SQL.Add('SELECT * FROM CPARECE WHERE REC_NFIS = ' +'''' +loc +'''');
   Q_RECE.Open;
   MessageDlg('Repetição efetuada com sucesso!', mtInformation, [mbok], 0);
  { TBN_RECE.enabled := true;
   Fonte.enabled := true;
   SpeedButton1.enabled := true;
   SBT_REFR.enabled := true;
   Panel4.visible := false; }
end;

procedure TFRecebimentos.DBE_IRE_DDEBExit(Sender: TObject);
begin
   IF DBE_IRE_DDEB.text = '  /  /    ' then begin
      if (Q_IREC.State = dsEdit) then begin
          Q_IRECIRE_DDEB.asstring := '' ;

          { Q_AUX.SQL.CLEAR;
           Q_AUX.SQL.ADD(' delete from cpamovi where mov_sequ = ' + Q_IRECIRE_SEQU.AsString );
           Q_AUX.EXECSQL; }
       end ;
   end ;



end;


procedure TFRecebimentos.SpeedButton7Click(Sender: TObject);
var sql,sql1,deleta,sinal:string;
    valo,iMySinal,aliquota,valor1:real;
    codi:integer;
    desconto : Double;
    descontoA :Double;
begin
    with qrAux2 do
    begin
         Close;
         SQL.Clear;
         sql.Add('select count(*) as Xvalor from CPADREC  WHERE DRE_RECE = ' + Q_RECEREC_CODI.ASSTRING );
         Open;
    end;

    IF qrAux2.FieldByName('XVALOR').AsInteger > 0 then
     begin
       if chkSemMensagens.Checked = False then begin
         MessageBox(Self.Handle, 'Já foram gerados descontos para este recebimento!','Informação', MB_OK + MB_ICONEXCLAMATION);
       end;
         Abort;
     end;

   try
       FMenu.Database1.StartTransaction;
       qrGeraDescontos.Params[0].AsInteger := Q_RECEREC_CODI.Value;
       qrGeraDescontos.Params[1].AsInteger := Q_RECEREC_CLIE.Value;
       qrGeraDescontos.ExecSQL;
       FMenu.Database1.Commit;
   except
       BEGIN
           MessageBox(Self.Handle, 'Conteceu um erro ao tentar gerar os descontos', 'Erro', MB_OK + MB_ICONERROR);
           FMenu.Database1.Rollback;
           Abort;
       end;
   end;


   Q_DREC.Close;
   Q_DREC.Open;

    with qrAux2 do
    begin
         Close;
         SQL.Clear;
         sql.Add('select sum(dre_valo) as Xvalor from CPADREC  WHERE DRE_RECE = ' + Q_RECEREC_CODI.ASSTRING );
         Open;
    end;

    desconto := qrAux2.fieldbyname('xvalor').AsFloat ;
    descontoA := desconto;

    with qrAux2 do
    begin
         Close;
         SQL.Clear;
         sql.Add('update CPArece set rec_desc = ' + StringReplace(FormatFloat('#######0.0000', desconto),',','.',[rfReplaceAll])  +'  WHERE rec_codi = ' + Q_RECEREC_CODI.ASSTRING );
         ExecSQL;
    end;

    desconto := Q_RECEREC_VLIQ.Value - Abs(descontoA);

    with qrAux2 do
    begin
         Close;
         SQL.Clear;
         sql.Add('update CPArece set rec_vliq = ' + StringReplace(FormatFloat('#######0.0000', desconto),',','.',[rfReplaceAll])  +'  WHERE rec_codi = ' + Q_RECEREC_CODI.ASSTRING );
         ExecSQL;
    end;


    desconto := Q_RECEREC_SALD.Value - Abs(descontoA);

    with qrAux2 do
    begin
         Close;
         SQL.Clear;
         sql.Add('update CPArece set rec_sald = ' + StringReplace(FormatFloat('#######0.0000', desconto),',','.',[rfReplaceAll])  +'  WHERE rec_codi = ' + Q_RECEREC_CODI.ASSTRING );
         ExecSQL;
    end;

   Q_RECE.Close;
   Q_RECE.open;



  {  codi := q_recerec_codi.value;
    valo := q_recerec_valo.value;
    sql := 'select min(dif_limite)limite from cpadife ';
    Q_auxiliar.close;
    q_auxiliar.sql.Clear;
    q_auxiliar.sql.add(sql);
    q_auxiliar.Open;
    if valo < q_auxiliar.fieldbyname('limite').value then begin
       showmessage('Nenhum registro será gerado automaticamente');
       deleta := 'delete from cpadrec where dre_rece = '+inttostr(codi);
       q_deleta.close;
       q_deleta.SQL.clear;
       q_deleta.sql.add(deleta);
       q_deleta.execsql;
       q_rece.edit;
       q_recerec_desc.asstring := '';
       q_rece.post;
    end
    else begin
        sql:=   'select des.dif_limite,'+
                '     des.dif_codi dificodi,'+
                '     des.dif_desc descdifi,'+
                '     des.dif_aliq ,'+
                '     des.dif_sinal sinal,'+
                '     (rec.rec_valo * des.dif_aliq)/100 valor,'+
                '     rec.rec_codi codirec '+
                'from cpadife des,cparece rec '+
                'where des.dif_retfonte = ''S'' '+
                '      and rec.rec_codi = '+inttostr(codi);
        Q_auxiliar.close;
        q_auxiliar.sql.Clear;
        q_auxiliar.sql.add(sql);
        q_auxiliar.Open;
        valor1 := 0;
        while not q_auxiliar.eof do begin
                aliquota := 0;
                if valo >= q_auxiliar.fieldbyname('dif_limite').value then begin
                        if q_auxiliar.fieldbyname('sinal').value = '+' then begin
                           iMySinal := 1
                        end
                        else begin
                           iMySinal := -1;
                        end;
                   aliquota := q_auxiliar.fieldbyname('dif_aliq').value * (iMySinal);
                   valor1 := valor1 + ((valo * aliquota)/100);
                   q_rece.edit;
                   q_recerec_desc.value := valor1;
                   q_rece.post;
                end;
                q_auxiliar.next;
        end;
        deleta := 'delete from cpadrec where dre_rece = '+inttostr(codi);
        q_deleta.close;
        q_deleta.SQL.clear;
        q_deleta.sql.add(deleta);
        q_deleta.execsql;
        q_auxiliar.first;

        while not q_auxiliar.eof do begin
                if valo >= q_auxiliar.fieldbyname('dif_limite').value then begin
                   sql1:= 'insert INTO cpadrec (DRE_RECE, DRE_DIFE, DRE_DATA, DRE_VALO, DRE_HIST) '+
                          '                values ('+q_auxiliar.fieldbyname('codirec').asstring+','+
                          '                       '+''''+q_auxiliar.fieldbyname('dificodi').asstring+''''+','+
                          '                       '+''''+FormatDateTime('MM/DD/YYYY',(DATE))+''''+',';
                          if q_auxiliar.fieldbyname('sinal').value = '+' then begin
                             iMySinal := 1
                          end
                          else begin
                             iMySinal := -1;
                          end;
                   sinal := floattostr(q_auxiliar.fieldbyname('VALOR').value * iMySinal);
                   sql1 := sql1 + ' '+(Funcoes.Converte(sinal,',','.'))+','+
                                  ' '+''''+q_auxiliar.fieldbyname('descdifi').asstring+''''+' )';
                   q_auxiliar1.Close;
                   q_auxiliar1.sql.clear;
                   q_auxiliar1.sql.add(sql1);
                   q_auxiliar1.execsql;
                end;
                Q_auxiliar.Next;
        end;
     q_auxiliar.close;
     q_auxiliar1.close;
     q_deleta.close;
    end;     }
end;

procedure TFRecebimentos.SpeedButton8Click(Sender: TObject);
var sql:string;
begin

        if messagedlg('Confirma exclusão de todos os Descontos/Acréscimos ?',mtinformation,mbokcancel,0)
           = mrok then begin
           sql := 'Delete from cpadrec where dre_rece = '+codirece;
           q_deleta.close;
           q_deleta.SQL.clear;
           q_deleta.sql.add(sql);
           q_deleta.execsql;
           q_drec.close;
           q_drec.open;

        end;
end;

procedure TFRecebimentos.Repete_Lancamento;
    var
         Parcelas, i : Integer;
         Emissao, Venc, VencPrev : TDateTime;
         strEmissao : string;
         strVencimentoPrev : string;
         strVencimento : string;
         Codi : Integer;
         numdoc : String;
         loc : String;
begin

        if Edit4.Text = '' then
        begin
            MessageBox(Self.Handle, 'O número de parcelas deve ser informado!', 'Erro', MB_OK + MB_ICONERROR);
            Abort;
        end;

        Parcelas := StrToInt(Edit4.Text);
        Emissao := IncMonth(Q_RECEREC_EMIS.value,1);

        if IncMonth(Q_RECEREC_VENC.Value,1) <> StrToDate(MaskEdit1.Text) then
             Venc := StrToDate(MaskEdit1.Text)
        else
             Venc := IncMonth(Q_RECEREC_VENC.Value,1);


        {gerando um array com as datas}
        for i := 0 to Parcelas - 1 do
        begin
            ListBox2.Items.Add(FormatDateTime('DD/MM/YYYY',IncMonth(Venc,i)));
            ListBox3.Items.Add(FormatDateTime('DD/MM/YYYY',IncMonth(Emissao,i)));
        end;



        for i := 0 to Parcelas - 1 do
        begin
              Q_A1.close;
              Q_A1.SQL.Clear;
              Q_A1.SQL.Add('SELECT MAX(REC_CODI) AS CODIGO FROM CPARECE');
              Q_A1.Open;
              codi := Q_A1.fieldbyname('CODIGO').asinteger + 1;
              numdoc := Q_RECEREC_NFIS.AsString +' ' +inttostr(i+2) +'/' +inttostr(parcelas + 1);



              IF CheckBox1.Checked = False then begin
                      Q_A1.SQL.Clear;
                      Q_A1.SQL.Add('INSERT INTO CPARECE (REC_CODI, REC_CLIE, REC_NFIS, REC_DEVE, ');
                      Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, REC_VENC, ');
                      Q_A1.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                      Q_A1.SQL.Add('REC_VORI, REC_VPRE, REC_HIST, REC_SALD, REC_SITU, REC_FILI, REC_NBAN, ');
                      Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO, DT_COMPETENCIA) ');
                      Q_A1.SQL.Add('SELECT ' +inttostr(codi) +', REC_CLIE, ' +'''' +numdoc +'''' +', REC_DEVE, ');
                      Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, CONVERT(SMALLDATETIME,' +'''' + ListBox2.Items[I] +'''' +',103), ');
                      Q_A1.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                      Q_A1.SQL.Add('REC_VORI, ');
                      Q_A1.SQL.Add('CONVERT(SMALLDATETIME,' +'''' + ListBox2.Items[I] +'''' +',103), REC_HIST, ');
                      Q_A1.SQL.Add('REC_VLIQ, ' +'''' +'A' +'''' +', REC_FILI, REC_NBAN, ');
                      Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO, DT_COMPETENCIA  FROM CPARECE ');
                      Q_A1.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
                      Q_A1.ExecSQL;
               END ELSE BEGIN
                      Q_A1.SQL.Clear;
                      Q_A1.SQL.Add('INSERT INTO CPARECE (REC_CODI, REC_CLIE, REC_NFIS, REC_DEVE, ');
                      Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, REC_VENC, ');
                      Q_A1.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                      Q_A1.SQL.Add('REC_VORI, REC_VPRE, REC_HIST, REC_SALD, REC_SITU, REC_FILI, REC_NBAN, ');
                      Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO, DT_COMPETENCIA) ');
                      Q_A1.SQL.Add('SELECT ' +inttostr(codi) +', REC_CLIE, ' +'''' +numdoc +'''' +', REC_DEVE, ');
                      Q_A1.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, CONVERT(SMALLDATETIME,' +'''' + ListBox2.Items[I] +'''' +',103), ');
                      Q_A1.SQL.Add('REC_BANC, REC_VPAG, CONVERT(SMALLDATETIME,'+'''' + ListBox3.Items[I] +'''' +',103), REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
                      Q_A1.SQL.Add('REC_VORI, ');
                      Q_A1.SQL.Add('CONVERT(SMALLDATETIME,' +'''' + ListBox2.Items[I] +'''' +',103), REC_HIST, ');
                      Q_A1.SQL.Add('REC_VLIQ, ' +'''' +'A' +'''' +', REC_FILI, REC_NBAN, ');
                      Q_A1.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA, FLAG_FLUXO, DATEADD ( MONTH ,' + IntToStr(i+1) +', DT_COMPETENCIA )   ');
                      Q_A1.SQL.Add('FROM CPARECE WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
                      Q_A1.ExecSQL;
               END;


              Q_A1.SQL.Clear;
              Q_A1.SQL.Add('SELECT * FROM CPADREC WHERE DRE_RECE = ' +Q_RECEREC_CODI.asstring);
              Q_A1.Open;

              if Q_A1.recordcount > 0 then
              begin  
                      Q_A1.SQL.Clear;
                      Q_A1.SQL.Add('INSERT INTO CPADREC (DRE_RECE, DRE_DIFE, DRE_DATA, DRE_VALO, ');
                      Q_A1.SQL.Add('DRE_HIST) SELECT ' +inttostr(codi) +', DRE_DIFE, DRE_DATA, DRE_VALO, ');
                      Q_A1.SQL.Add('DRE_HIST FROM CPADREC WHERE DRE_RECE = ' +Q_RECEREC_CODI.asstring);
                      Q_A1.ExecSQL; 
              end;
        end; //END FOR

         loc := Q_RECEREC_NFIS.asstring +' 1/' +inttostr(strtoint(edit4.text)+1);
         Q_A1.SQL.Clear;
         Q_A1.SQL.Add('UPDATE CPARECE SET REC_NFIS = ');
         Q_A1.SQL.Add('''' +Q_RECEREC_NFIS.asstring +' 1/' +inttostr(strtoint(edit4.text)+1) +'''');
         Q_A1.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
         Q_A1.ExecSQL;
         Q_RECE.SQL.Clear;
         Q_RECE.SQL.Add('SELECT * FROM CPARECE WHERE REC_NFIS = ' +'''' +loc +'''');
         Q_RECE.Open;
         MessageDlg('Repetição efetuada com sucesso!', mtInformation, [mbok], 0);

         SpeedButton2.Click();

end;

procedure TFRecebimentos.btnAddClick(Sender: TObject);
begin
  Fonte.BtnClick(nbInsert);
end;

procedure TFRecebimentos.btnAtualizarClick(Sender: TObject);
begin
  Fonte.BtnClick(nbRefresh);
end;

procedure TFRecebimentos.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFRecebimentos.btnDeleteClick(Sender: TObject);
begin
   Fonte.BtnClick(nbDelete);
end;

procedure TFRecebimentos.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFRecebimentos.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFRecebimentos.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFRecebimentos.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  Fonte.BtnClick(nbPost);
end;

procedure TFRecebimentos.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

procedure TFRecebimentos.SpeedButton9Click(Sender: TObject);
begin
  Repete_Lancamento;
end;

procedure TFRecebimentos.Muda_Moeda(status: integer);
begin
{
        este procedimento mostro ou oculta os edits referente a moeda estrangeira,
        o status 100 mostra os valores, o status 200 oculta
}

        if status = 100 then
        begin
              Label11.Left := 341;
              label16.Left := 341;
              DBE_REC_VORI.Left := 341;
              DBE_REC_VALO.Left := 341;
              label18.Left := 358;
              LABEL20.Left := 400;

              DBE_REC_VORI.ReadOnly := True;
              DBE_REC_VALO.ReadOnly := True;

              label1.Caption := 'V. Original '+ DBLC_REC_MORI.Text;
              label50.Caption := 'V. Título ' + DBLC_REC_MOED.Text;

              Label17.Left := 441;
              Label10.Left := 441;
              DBE_REC_DESC.Left := 441;
              DBE_REC_HIST.Left := 441;
              DBE_REC_VLIQ.Left := 441;
              DBE_REC_SALD.Left := 441;

              SpeedButton7.Left := 541;

              label15.Visible := True;
              label12.Visible := True;
              label1.Visible := True;
              label50.Visible := True;
              DBE_REC_DCON.Visible := True;
              DBE_REC_DCOR.Visible := True;
              wwDBEdit3.Visible := True;
              wwDBEdit4.Visible := True;
        end
        else
        begin
              Label11.Left := 341 - 159;
              label16.Left := 341 - 159;
              DBE_REC_VORI.Left := 341 - 159;
              DBE_REC_VALO.Left := 341 - 159;
              label18.Left := 358 - 159;
              LABEL20.Left := 400 - 159;

              Label17.Left := 441 - 159;
              Label10.Left := 441 - 159;
              DBE_REC_DESC.Left := 441 - 159;
              DBE_REC_HIST.Left := 441 - 159;
              DBE_REC_VLIQ.Left := 441 - 159;
              DBE_REC_SALD.Left := 441 - 159;

              SpeedButton7.Left := 541 - 159;

              DBE_REC_VORI.ReadOnly := False;
              DBE_REC_VALO.ReadOnly := False;

              
              label15.Visible := False;
              label12.Visible := False;
              label1.Visible := False;
              label50.Visible := False;
              DBE_REC_DCON.Visible := False;
              DBE_REC_DCOR.Visible := False;
              wwDBEdit3.Visible := False;
              wwDBEdit4.Visible := False;
        end;




end;

procedure TFRecebimentos.DBLC_REC_MORICloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    if DBLC_REC_MORI.Text = Q_PARAPAR_MOED.asstring then
        Muda_Moeda(200)
    else
        Muda_Moeda(100);

    DBLC_REC_MOED.Text :=  DBLC_REC_MORI.Text;
end;

procedure TFRecebimentos.wwDBEdit3Exit(Sender: TObject);
var taxa : Double;
    valor : Double;
    reais : Double;
    dt_conversao : TDateTime;
begin

  dt_conversao := Q_RECEREC_DCON.Value;
  with qrAux do
  begin
      close;
      sql.Clear;
      sql.Add('SELECT TOP 1 CMO_VALO AS TX_CAMBIO FROM CPACMOE WHERE CONVERT(CHAR(10), CMO_DATA, 112) <= '''+ FormatDateTime('YYYYMMDD', dt_conversao) + ''''+
              'AND CMO_MOED = ''' + DBLC_REC_MORI.Text +   ''' ORDER BY CMO_DATA desc');
      Open;
  end;

  taxa := qrAux.fieldbyname('TX_CAMBIO').AsFloat;
  valor := Q_RECEDOLAR_PREV.Value;

  reais := valor * taxa;

  Q_RECE.Edit;
  Q_RECEREC_VORI.Value := reais;
  Q_RECEREC_VALO.Value := reais;

end;

procedure TFRecebimentos.DBE_REC_DCONExit(Sender: TObject);
begin
   Q_RECE.Edit;
   Q_RECEREC_DCOR.Value := Q_RECEREC_DCON.Value;

   if (Q_RECEREC_DCON.AsString = '') then
   begin
       ShowMessage('Informe a data de conversão!');
       DBE_REC_DCON.SetFocus;
   end;
end;

procedure TFRecebimentos.Mostra_dolar_baixa(mostrar: boolean);
begin
{
        esta rotina mostra os campos para fazer uma baixa em dolar
}
   if mostrar then
   begin
       DBEdit2.Visible := True;
       DBEdit3.Visible := True;
       Label51.Visible := True;
       label53.Visible := True;
       label53.Caption := 'A Abater ' + DBLC_REC_MORI.Text;
       DBE_IRE_SALD.ReadOnly := True;

       label30.Left := 463;
       DBE_IRE_SALD.Left := 463;
       label31.Left := 568;
       DBE_IRE_VDIF.Left := 568;
   end
   else
   begin
       DBEdit2.Visible := False;
       DBEdit3.Visible := False;
       Label51.Visible := False;
       label53.Visible := False;
       DBE_IRE_SALD.ReadOnly := False;

       label30.Left := 463 - 158;
       DBE_IRE_SALD.Left := 463  - 158;
       label31.Left := 568 - 158;
       DBE_IRE_VDIF.Left := 568 - 158;
   end;
end;

procedure TFRecebimentos.Q_RECEAfterOpen(DataSet: TDataSet);
begin
  if DBLC_REC_MORI.Text = Q_PARAPAR_MOED.asstring then
        Muda_Moeda(200)
  else
        Muda_Moeda(100);


  IF Q_RECEREC_CLIE.AsString <> '' then
  BEGIN
        with qrAux2 do
        begin
             Close;
             SQL.Clear;
             sql.Add('select count(*) as Xvalor from cliente_desconto where cli_codi = ' + Q_RECEREC_CLIE.ASSTRING );
             Open;
        end;

        IF qrAux2.FieldByName('XVALOR').AsInteger > 0 then  begin
              SpeedButton7.Visible := True
        end else
              SpeedButton7.Visible := False;
  end;
end;

procedure TFRecebimentos.DBEdit3Exit(Sender: TObject);
var taxa : Double;
    valor : Double;
    reais : Double;
begin

  taxa := Q_IRECIRE_TXDOLAR.Value;
  valor := Q_IRECIRE_VLR_DOLAR.Value;

  reais := valor * taxa;

  Q_IRECIRE_SALD.Value := reais;

end;

procedure TFRecebimentos.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
//Verifica se tem descontos cadastrados
  with qrAux2 do
  begin
       Close;
       SQL.Clear;
       sql.Add('select count(*) as Xvalor from cliente_desconto where cli_codi = ' + Q_RECEREC_CLIE.ASSTRING );
       Open;
  end;

  IF qrAux2.FieldByName('XVALOR').AsInteger > 0 then
        SpeedButton7.Visible := True
  else
        SpeedButton7.Visible := False;

end;

procedure TFRecebimentos.edtdtCompetenciaEnter(Sender: TObject);
var d : TDateTime;
begin

  if  DBE_REC_EMIS.Text <> '' then begin
        d := StrToDate(DBE_REC_EMIS.Text);
        if edtDTCompetencia.Text = '  /    ' then
             edtDTCompetencia.Text := FormatDateTime('MM/YYYY', d);
  end;
end;

procedure TFRecebimentos.edtdtCompetenciaChange(Sender: TObject);
begin
  Q_RECE.Edit;
end;

procedure TFRecebimentos.qrListaCentroCustoAfterPost(DataSet: TDataSet);
begin
          qrListaCentroCusto.Close;
  qrListaCentroCusto.Parameters[0].Value := Q_RECEREC_CODI.AsInteger;
  qrListaCentroCusto.Open;
end;

procedure TFRecebimentos.qrListaCentroCustoBeforePost(DataSet: TDataSet);
begin
  qrListaCentroCustoREC_CODI.AsInteger := Q_RECEREC_CODI.AsInteger;
end;

end.

unit RelFrec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  ExtCtrls, RzButton, ComObj;

type
  TLst_Receb_Filt = class(TForm)
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_RecCli: TwwQuery;
    Q_FILI: TwwQuery;
    Q_FILIFIL_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    Q_CONT: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    DS_CONT: TwwDataSource;
    DS_FILI: TwwDataSource;
    DS_BANC: TwwDataSource;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    VENC_INI: TMaskEdit;
    VENC_FIM: TMaskEdit;
    cbo_CLIENTE_INI: TwwDBLookupCombo;
    cbo_CLIENTE_FIM: TwwDBLookupCombo;
    cbo_FILIAL_INI: TwwDBLookupCombo;
    cbo_FILIAL_FIM: TwwDBLookupCombo;
    cbo_CONTA_INI: TwwDBLookupCombo;
    cbo_CONTA_FIM: TwwDBLookupCombo;
    REC_INI: TMaskEdit;
    REC_FIM: TMaskEdit;
    cbo_BANCO_INI: TwwDBLookupCombo;
    cbo_BANCO_FIM: TwwDBLookupCombo;
    cbo_SITU: TComboBox;
    Label16: TLabel;
    Label17: TLabel;
    NCR_INI: TEdit;
    NCR_FIM: TEdit;
    Label18: TLabel;
    cbo_TIPO: TComboBox;
    DOC_INI: TEdit;
    DOC_FIM: TEdit;
    Label19: TLabel;
    EMIS_INI: TMaskEdit;
    EMIS_FIM: TMaskEdit;
    Label20: TLabel;
    Q_FILF: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    Q_CONF: TwwQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    Q_BANF: TwwQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    Q_RECCLIF: TwwQuery;
    Q_RecCliCLI_CODI: TAutoIncField;
    Q_RecCliCLI_RAZA: TStringField;
    Q_RECCLIFCLI_CODI: TAutoIncField;
    Q_RECCLIFCLI_RAZA: TStringField;
    Q_RecCliCLI_APELIDO: TStringField;
    Q_RECCLIFCLI_APELIDO: TStringField;
    Label21: TLabel;
    cbo_PORTA_INI: TwwDBLookupCombo;
    Label22: TLabel;
    cbo_PORTA_FIM: TwwDBLookupCombo;
    Q_PORT: TwwQuery;
    Q_PORTLCO_CODI: TStringField;
    Q_PORTLCO_BANC: TStringField;
    Q_PORTF: TwwQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    Label23: TLabel;
    LOTE_INI: TEdit;
    LOTE_FIM: TEdit;
    Label24: TLabel;
    Bevel1: TBevel;
    ck_Sim: TCheckBox;
    ck_Nao: TCheckBox;
    wwQ_Cger: TwwQuery;
    wwQ_CgerDS: TStringField;
    wwQ_CgerCON_DESC: TStringField;
    wwQ_CgerCON_CODI: TStringField;
    Q_CONFDS: TStringField;
    Label25: TLabel;
    mskCobrancaIni: TMaskEdit;
    Label26: TLabel;
    mskCobrancaFim: TMaskEdit;
    Q_AUX: TwwQuery;
    Q_AUXachei: TIntegerField;
    Q_BANC: TwwQuery;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_CODI: TStringField;
    RzBitBtn1: TRzBitBtn;
    qrEmpAux: TwwQuery;
    IntegerField1: TIntegerField;
    Label27: TLabel;
    edtdtCompI: TMaskEdit;
    Label28: TLabel;
    edtDtCompF: TMaskEdit;
    rgTpRelatorio: TRadioGroup;
    Button1: TButton;
    Q_AUX2: TwwQuery;
    chaLancamentoCaixa: TCheckBox;
    BitBtn1: TBitBtn;
    Q_RECE: TwwQuery;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEVPAGO: TFloatField;
    Q_RECEREC_CGER: TStringField;
    Q_RECECLI_RAZA: TStringField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_EMIS: TDateTimeField;
    Q_RECEREC_VORI: TFloatField;
    dsExcel: TDataSource;
    qrCentroCusto: TwwQuery;
    StringField9: TStringField;
    AutoIncField1: TAutoIncField;
    Label57: TLabel;
    cboCusto: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NCR_FIMEnter(Sender: TObject);
    procedure NCR_FIMExit(Sender: TObject);
    procedure NCR_INIEnter(Sender: TObject);
    procedure NCR_INIExit(Sender: TObject);
    procedure DOC_FIMEnter(Sender: TObject);
    procedure DOC_FIMExit(Sender: TObject);
    procedure DOC_INIEnter(Sender: TObject);
    procedure DOC_INIExit(Sender: TObject);
    procedure LOTE_FIMExit(Sender: TObject);
    procedure LOTE_FIMEnter(Sender: TObject);
    procedure LOTE_INIEnter(Sender: TObject);
    procedure LOTE_INIExit(Sender: TObject);
    procedure cbo_CLIENTE_FIMEnter(Sender: TObject);
    procedure cbo_CLIENTE_FIMExit(Sender: TObject);
    procedure cbo_CLIENTE_INIEnter(Sender: TObject);
    procedure cbo_CLIENTE_INIExit(Sender: TObject);
    procedure cbo_FILIAL_FIMEnter(Sender: TObject);
    procedure cbo_FILIAL_FIMExit(Sender: TObject);
    procedure cbo_FILIAL_INIEnter(Sender: TObject);
    procedure cbo_FILIAL_INIExit(Sender: TObject);
    procedure cbo_CONTA_FIMEnter(Sender: TObject);
    procedure cbo_CONTA_FIMExit(Sender: TObject);
    procedure cbo_CONTA_INIEnter(Sender: TObject);
    procedure cbo_CONTA_INIExit(Sender: TObject);
    procedure cbo_PORTA_FIMEnter(Sender: TObject);
    procedure cbo_PORTA_FIMExit(Sender: TObject);
    procedure cbo_PORTA_INIEnter(Sender: TObject);
    procedure cbo_PORTA_INIExit(Sender: TObject);
    procedure cbo_BANCO_FIMEnter(Sender: TObject);
    procedure cbo_BANCO_FIMExit(Sender: TObject);
    procedure cbo_BANCO_INIEnter(Sender: TObject);
    procedure cbo_BANCO_INIExit(Sender: TObject);
    procedure cbo_TIPOEnter(Sender: TObject);
    procedure cbo_TIPOExit(Sender: TObject);
    procedure cbo_SITUEnter(Sender: TObject);
    procedure cbo_SITUExit(Sender: TObject);
    procedure VENC_FIMEnter(Sender: TObject);
    procedure VENC_FIMExit(Sender: TObject);
    procedure VENC_INIEnter(Sender: TObject);
    procedure VENC_INIExit(Sender: TObject);
    procedure REC_FIMEnter(Sender: TObject);
    procedure REC_FIMExit(Sender: TObject);
    procedure REC_INIEnter(Sender: TObject);
    procedure REC_INIExit(Sender: TObject);
    procedure EMIS_FIMEnter(Sender: TObject);
    procedure EMIS_FIMExit(Sender: TObject);
    procedure EMIS_INIEnter(Sender: TObject);
    procedure EMIS_INIExit(Sender: TObject);
    procedure PREENCHE_VARIAVEIS;
    procedure LIMPA_VARIAVEIS;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_Receb_Filt: TLst_Receb_Filt;
  NUMEROI   : String ;
  NUMEROF   : String ;
  CLIENTEI  : String ;
  CLIENTEF  : String ;
  FILIALI   : String ;
  FILIALF   : String ;
  PORTADORI : String ;
  PORTADORF : String ;
  CONTAGERENCIALI : String ;
  CONTAGERENCIALF : String ;
  VENCIMENTOI  : TDateTime ;
  VENCIMENTOF  : TDateTime ;
  RECEBIMENTOI : TDateTime ;
  RECEBIMENTOF : TDateTime ;
  EMISSAOI     : TDateTime ;
  EMISSAOF     : TDateTime ;
  BANCOCONTAI : String ;
  BANCOCONTAF : String ;
  DOCUMENTOI  : String ;
  DOCUMENTOF  : String ;
  TIPO  : Integer;
  SITU  : Integer;
  rTipo : Integer;
  LOTEI : String ;
  LOTEF : String ;
  StrFiltro : String ;
  Ordenacao : String ;
  IDCENTROCUSTO: Integer;

implementation
uses CPPMENU,RelRec,U_RbGerAn,U_RbGerSint,U_RbVencAn,U_RbVencSint,
     U_RbCliAn,U_RbCliSint,U_RbCCUSAn,U_RbCCUSint,U_RbDocAn,U_RbDocSint,
     U_RbDRsint, U_RbDRan, RelRecCR, RelRecCRSint, URelRecebVend,
  URelRecebRepr, FRelRecebVanc, USeleEmpresa, ufrmRelRecebimentoAnalitico,
  FRelRecebVancAnalitico, ufrmSelClientes ;
{$R *.DFM}

procedure TLst_Receb_Filt.FormCreate(Sender: TObject);
begin

  with Q_AUX do begin
       Close;
       sql.Clear;
       sql.Add(
          'update cpaclie set sel = ''N'' '
       );
       ExecSQL;
   end;

  wwq_cger.open;
  Q_CONT.Open;
  Q_BANC.Open;
  Q_CONF.Open;
  Q_PORT.Open;
  Q_PORTF.Open;
  Q_BANF.Open;
  Q_FILI.Open;
  Q_FILF.Open;
  Q_RECCLI.Open;
  Q_RECCLIF.Open ;
  cbo_SITU.ItemIndex    := 1 ;
  RadioGroup1.itemindex := 0 ;
  cbo_TIPO.ItemIndex    := 0 ;
  qrCentroCusto.Open;
end;

procedure TLst_Receb_Filt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   with Q_AUX do begin
       Close;
       sql.Clear;
       sql.Add(
          'update cpaclie set sel = ''N'' '
       );
       ExecSQL;
   end;
  Q_CONT.Close;
  Q_BANC.Close;
  Q_CONF.Close;
  Q_BANF.Close;
  Q_PORT.Close;
  Q_PORTF.Close;
  Q_FILI.Close;
  Q_FILF.Close;
  Q_RECCLI.Close;
  Q_RECCLIF.Close;

  FMenu.LimpaEmpresas;
  Action := caFree;
end;

procedure TLst_Receb_Filt.SpeedButton1Click(Sender: TObject);
begin
   PREENCHE_VARIAVEIS;
   if rgTpRelatorio.ItemIndex = 0 then begin
       Application.CreateForm(TFRelReceb, FRelReceb);
       FRelReceb.RelReceb.Preview;
       FRelReceb.Close;
       abort;
   end
   else
   begin
       FRelRecebAnalitico := tFRelRecebAnalitico.create(Self);
       FRelRecebAnalitico.RelReceb.Preview;
       FRelRecebAnalitico.Close;
       Abort;
   end;

   LIMPA_VARIAVEIS;
end;

procedure TLst_Receb_Filt.SpeedButton2Click(Sender: TObject);
begin
   PREENCHE_VARIAVEIS;
   if rgTpRelatorio.ItemIndex = 0 then begin
       Application.CreateForm(TFRelReceb, FRelReceb);
       FRelReceb.RelReceb.Print;
       FRelReceb.Close;
   end
   else
   begin
       FRelRecebAnalitico := tFRelRecebAnalitico.create(Self);
       FRelRecebAnalitico.RelReceb.Print;
       FRelRecebAnalitico.Close;
       Abort;
   end;

   LIMPA_VARIAVEIS;
end;

procedure TLst_Receb_Filt.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TLst_Receb_Filt.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      perform(WM_nextdlgctl,0,0);
end;

procedure TLst_Receb_Filt.PREENCHE_VARIAVEIS;
Begin
   NUMEROI := '';
   if NCR_INI.Text <> '' then
        NUMEROI := NCR_INI.Text;
   NUMEROF := '';
   if NCR_FIM.Text <> '' then
        NUMEROF := NCR_FIM.Text;

   CLIENTEI := '';
   if (cbo_CLIENTE_INI.Text <> '') then
        CLIENTEI := cbo_CLIENTE_INI.LookupValue;
   CLIENTEF := '';
   if (cbo_CLIENTE_FIM.Text <> '') then
        CLIENTEF := cbo_CLIENTE_FIM.LookupValue;

   with Q_AUX2 do begin
       CLOSE;
       SQL.Clear;
       SQL.Add(
         'SELECT SEL FROM CPACLIE WHERE SEL = ''S'' '
       );
       Open;
   end;
   Q_AUX2.Last;
   IF Q_AUX.IsEmpty = False then begin
       CLIENTEI := IntToStr(Q_AUX2.RecordCount) + ' Clientes selecionados';
       CLIENTEF := '';
   end;

   IDCENTROCUSTO := 0;
   IF cboCusto.Text <> '' then
        IDCENTROCUSTO := StrToInt(cboCusto.LookupValue);

   {COMENTADO POR MIGUEL
   FILIALI := '';
   if (cbo_FILIAL_INI.Text <> '') then
        FILIALI := cbo_FILIAL_INI.LookupValue ;
   FILIALF := '';
   if (cbo_FILIAL_FIM.Text <> '') then
        FILIALF := cbo_FILIAL_FIM.LookupValue ; }

   Q_AUX.Close;
   Q_AUX.SQL.Clear;
   Q_AUX.SQL.Add(
      ' SELECT  count(*) as achei FROM EMP_TEMP (NOLOCK) '+
      ' WHERE SEL = ''*'' '+
      ' and usuario = ' + FMenu.sqlUsuariosCH.AsString
   );
   Q_AUX.Open;


   if Q_AUXachei.Value > 0 then
      FILIALI := '*'
   else
      FILIALI := '';




   CONTAGERENCIALI := '';
   if (cbo_CONTA_INI.Text <> '') then
        CONTAGERENCIALI := cbo_CONTA_INI.LookupValue;
   CONTAGERENCIALF := '';
   if (cbo_CONTA_FIM.Text <> '') then
        CONTAGERENCIALF := cbo_CONTA_FIM.LookupValue;

   VENCIMENTOI := 0.0;
   if (VENC_INI.Text <> '  /  /    ') then
        VENCIMENTOI  := StrToDate(VENC_INI.Text);
   VENCIMENTOF := 0.0;
   if (VENC_FIM.Text <> '  /  /    ') then
        VENCIMENTOF   := StrToDate(VENC_FIM.Text);

   RECEBIMENTOI := 0.0;
   if (REC_INI.Text <> '  /  /    ') then
        RECEBIMENTOI  := StrToDate(REC_INI.Text);
   RECEBIMENTOF := 0.0;
   if (REC_FIM.Text <> '  /  /    ') then
        RECEBIMENTOF  := StrToDate(REC_FIM.Text);

   EMISSAOI := 0.0;
   if (EMIS_INI.Text <> '  /  /    ') then
        EMISSAOI  := StrToDate(EMIS_INI.Text);
   EMISSAOF := 0.0;
   if (EMIS_FIM.Text <> '  /  /    ') then
        EMISSAOF   := StrToDate(EMIS_FIM.Text );

   BANCOCONTAI := '';
   if (cbo_BANCO_INI.LookupValue <> '') then
        BANCOCONTAI := cbo_BANCO_INI.lookupvalue ;
   BANCOCONTAF := '';
   if (cbo_BANCO_FIM.LookupValue <> '') then
        BANCOCONTAF := cbo_BANCO_FIM.lookupvalue ;

   DOCUMENTOI := '';
   if (DOC_INI.Text <> '') then
        DOCUMENTOI := DOC_INI.text;
   DOCUMENTOF := '';
   if (DOC_FIM.Text <> '') then
        DOCUMENTOF := DOC_FIM.text;

   TIPO := cbo_TIPO.ItemIndex;
   SITU := cbo_SITU.ItemIndex;

   PORTADORI := '';
   if cbo_PORTA_INI.Text <> '' then
      PORTADORI := cbo_PORTA_INI.LookupValue;

   PORTADORF := '';
   if cbo_PORTA_FIM.Text <> '' then
      PORTADORF := cbo_PORTA_FIM.LookupValue;


   if RadioGroup1.ItemIndex >= 0 then
        rTipo := RadioGroup1.ItemIndex
   else
   Begin
        MessageBox(0,'Selecione a Ordenação.','Atenção...',8192);
        RadioGroup1.SetFocus;
        Abort;
   End;

End;

procedure TLst_Receb_Filt.LIMPA_VARIAVEIS;
Begin
   cbo_CLIENTE_INI.LookupValue := '' ;
   cbo_CLIENTE_FIM.LookupValue := '' ;
   cbo_FILIAL_INI.LookupValue  := '' ;
   cbo_FILIAL_FIM.LookupValue  := '' ;
   cbo_CONTA_INI.LookupValue   := '' ;
   cbo_CONTA_FIM.LookupValue   := '' ;
   cbo_PORTA_INI.LookupValue   := '' ;
   cbo_PORTA_FIM.LookupValue   := '' ;
   cbo_BANCO_INI.LookupValue   := '' ;
   cbo_BANCO_FIM.LookupValue   := '' ;
   DOC_INI.Text := '';
   DOC_FIM.Text := '';
End;

procedure TLst_Receb_Filt.NCR_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.NCR_FIMExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow;
end;

procedure TLst_Receb_Filt.NCR_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.NCR_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow;
end;

procedure TLst_Receb_Filt.DOC_FIMEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.DOC_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.DOC_INIEnter(Sender: TObject);
begin
    (Sender as TEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.DOC_INIExit(Sender: TObject);
begin
    (Sender as TEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.LOTE_FIMExit(Sender: TObject);
begin
     (Sender as TEdit).Color := Clwindow;
end;

procedure TLst_Receb_Filt.LOTE_FIMEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.LOTE_INIEnter(Sender: TObject);
begin
   (Sender as TEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.LOTE_INIExit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.cbo_CLIENTE_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_CLIENTE_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.cbo_CLIENTE_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_CLIENTE_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.cbo_FILIAL_FIMEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_FILIAL_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_FILIAL_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_FILIAL_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_CONTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_CONTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_CONTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_CONTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_PORTA_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_PORTA_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_PORTA_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_PORTA_INIExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_BANCO_FIMEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_BANCO_FIMExit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_BANCO_INIEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_BANCO_INIExit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_TIPOEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_TIPOExit(Sender: TObject);
begin
  (Sender as TCombobox).Color := Clwindow;
end;

procedure TLst_Receb_Filt.cbo_SITUEnter(Sender: TObject);
begin
  (Sender as TCombobox).Color := ClAqua;
end;

procedure TLst_Receb_Filt.cbo_SITUExit(Sender: TObject);
begin
   (Sender as TCombobox).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.VENC_FIMEnter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.VENC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TLst_Receb_Filt.VENC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.VENC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.REC_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.REC_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.REC_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.REC_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.EMIS_FIMEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.EMIS_FIMExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.EMIS_INIEnter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TLst_Receb_Filt.EMIS_INIExit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TLst_Receb_Filt.RadioGroup1Click(Sender: TObject);
begin
   IF RadioGroup1.ItemIndex = 3 then
   begin
        cbo_tipo.ItemIndex := 1;
        cbo_tipo.enabled := false;
        cbo_SITU.ItemIndex := 0;
        cbo_SITU.enabled := false;
   end
   else
   begin
        cbo_tipo.enabled := true;
        cbo_SITU.enabled := true;
   end;
end;

procedure TLst_Receb_Filt.RzBitBtn1Click(Sender: TObject);
begin
  frmSeleEmpresa := TfrmSeleEmpresa.Create(Self);
  frmSeleEmpresa.ShowModal;
end;

procedure TLst_Receb_Filt.Button1Click(Sender: TObject);
begin
   frmSelClientes := TfrmSelClientes.Create(Self);
   frmSelClientes.ShowModal;
end;

procedure TLst_Receb_Filt.BitBtn1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin
  PREENCHE_VARIAVEIS;

 Q_RECE.SQL.Clear;
   //Q_RECE.SQL.Add('SELECT A.REC_VENC, A.REC_CODI, A.REC_RAZA, A.REC_HIST, A.REC_NFIS, ');
   Q_RECE.SQL.Add('SELECT CONVERT(DATETIME,  convert(char(10),A.REC_VENC,112) ) AS REC_VENC  , A.REC_CODI, A.REC_RAZA, A.REC_HIST, A.REC_NFIS, ');
   Q_RECE.SQL.Add('A.REC_EMIS, A.REC_BANC, A.REC_VLIQ, A.REC_SALD, A.REC_VORI, CASE WHEN (SELECT SUM(IRE_SALD) ');
   Q_RECE.SQL.Add('FROM CPAIREC WHERE IRE_CODI = REC_CODI) IS NULL THEN 0 ELSE (SELECT ');
   Q_RECE.SQL.Add('SUM(IRE_SALD) FROM CPAIREC WHERE IRE_CODI = REC_CODI) END AS VPAGO, ');
   Q_RECE.SQL.Add('B.CLI_RAZA, A.REC_CGER, D.CON_DESC, REC_DESC, ');

   if TIPO = 0 then
   begin
        Q_RECE.SQL.Add('''' +'11/11/2000' +'''' +' AS IRE_DATA, 1 AS IRE_SEQU ');
        Q_RECE.SQL.Add(' FROM CPARECE A, ');
        Q_RECE.SQL.Add('CPACLIE B, CPACONT D WHERE A.REC_CLIE = B.CLI_CODI AND ');
        Q_RECE.SQL.Add('A.REC_CGER = D.CON_CODI');
   end
   else
   begin
        Q_RECE.SQL.Add('CONVERT(CHAR(10),C.IRE_DATA,103) AS IRE_DATA, C.IRE_SEQU ');
        Q_RECE.SQL.Add(' FROM CPARECE A LEFT ');
        Q_RECE.SQL.Add('OUTER JOIN CPAIREC C ON A.REC_CODI = C.IRE_CODI, CPACLIE B, ');
        Q_RECE.SQL.Add('CPACONT D WHERE A.REC_CLIE = B.CLI_CODI AND A.REC_CGER = D.CON_CODI ');
   end;



   //filtros := '';
   if NUMEROI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI >= ' +NUMEROI);
      //  filtros := 'No. CR de: '+NUMEROI;
   end;
   if NUMEROF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI <= ' +NUMEROF);
       // filtros := filtros + ' ate: ' + NUMEROF + ' - ';
   end;

   IF IDCENTROCUSTO > 0 then
        Q_RECE.SQL.Add(' AND IDCENTROCUSTO = ' + IntToStr(IDCENTROCUSTO));

   if CLIENTEI <> '' then
   begin
         with Q_AUX2 do begin
             CLOSE;
             SQL.Clear;
             SQL.Add(
               'SELECT SEL FROM CPACLIE WHERE SEL = ''S'' '
             );
             Open;
         end;
         Q_AUX2.Last;
         IF Q_AUX2.IsEmpty = False then begin
            Q_RECE.SQL.Add('AND B.CLI_CODI IN ( SELECT CLI_CODI FROM CPACLIE WHERE SEL = ''S'' )' );
         end
         else begin
            Q_RECE.SQL.Add('AND B.CLI_APELIDO >= ' +'''' +CLIENTEI +'''');
         end;
       // filtros := filtros + 'Clientes de: ' + CLIENTEI;
   end;
   if CLIENTEF <> '' then
   begin
        Q_RECE.SQL.Add('AND B.CLI_APELIDO <= ' +'''' +CLIENTEF +'''');
       // filtros := filtros + ' ate: ' + CLIENTEF + ' - ';
   end;

  // QRMemo1.Lines.Add(filtros);
 //  filtros := '';




   if FILIALI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_FILI  in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
       // filtros := 'Empresas de: ' + Lst_Receb_Filt.cbo_FILIAL_INI.Text;
   end;


  {     comentada por miguel
   if FILIALF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_FILI <= ' +'''' +FILIALF +'''');
        Q_TOTS.SQL.Add('AND A.REC_FILI <= ' +'''' +FILIALF +'''');
       // filtros := filtros + ' ate: '+  Lst_Receb_Filt.cbo_FILIAL_FIM.Text + ' - ';
   end;
             }




   if CONTAGERENCIALI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CGER >= ' +'''' +CONTAGERENCIALI +'''');
       // filtros := filtros + 'Conta Gerencial de: ' +  CONTAGERENCIALI;
   end;
   if CONTAGERENCIALF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CGER <= ' +'''' +CONTAGERENCIALF +'''');
      //  filtros := filtros + ' ate: ' + CONTAGERENCIALF + ' - '
   end;
   //QRMemo1.Lines.Add(filtros);
   //filtros := '';
   if PORTADORI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_BANC >= ' +'''' +PORTADORI +'''');
   end;
   if PORTADORF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_BANC <= ' +'''' +PORTADORF +'''');
   end;
   if VENCIMENTOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_VENC,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOI) +'''');
   end;
   if VENCIMENTOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_VENC,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',VENCIMENTOF) +'''');
   end;
   if RECEBIMENTOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''' +')');
        if rTipo = 3 then
        begin
                Q_RECE.SQL.Add('AND CONVERT(CHAR(10),C.IRE_DATA,112) >= ');
                Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOI) +'''');
        end;
   end;
   if RECEBIMENTOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''' +')');
        if rTipo = 3 then
        begin
                Q_RECE.SQL.Add('AND CONVERT(CHAR(10),C.IRE_DATA,112) <= ');
                Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',RECEBIMENTOF) +'''');
        end;
   end;

   if Lst_Receb_Filt.mskCobrancaIni.Text <> '  /  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_DT_GER_CNAB,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.mskCobrancaIni.Text)) +'''');
   end;

   if Lst_Receb_Filt.mskCobrancaFim.Text <> '  /  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_DT_GER_CNAB,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.mskCobrancaFim.Text)) +'''');
   end;


   //data de competEncia
   if Lst_Receb_Filt.edtdtCompI.Text <> '  /    ' then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),a.DT_COMPETENCIA,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.edtdtCompI.Text)) +'''');
   end;

   if Lst_Receb_Filt.edtdtCompF.Text <> '  /    ' then
   begin 
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),a.DT_COMPETENCIA,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',StrToDate(Lst_Receb_Filt.edtdtCompF.Text)) +'''');
   end;



   if EMISSAOI <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_EMIS,112) >= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOI) +'''');
   end;
   if EMISSAOF <> 0.0 then
   begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),A.REC_EMIS,112) <= ');
        Q_RECE.SQL.Add('''' +formatdatetime('YYYYMMDD',EMISSAOF) +'''');
   end;
   if BANCOCONTAI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_BANC >= ' +'''' +BANCOCONTAI +'''' +')');
   end;
   if BANCOCONTAF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_BANC <= ' +'''' +BANCOCONTAF +'''' +')');
   end;
   if DOCUMENTOI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_NFIS >= ' +'''' +DOCUMENTOI +'''');
   end;
   if DOCUMENTOF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_NFIS <= ' +'''' +DOCUMENTOF +'''');
   end;
   if LOTEI <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_DOCT >= ' +'''' +LOTEI +'''' +')');
   end;
   if LOTEF <> '' then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('IRE_DOCT <= ' +'''' +LOTEF +'''' +')');
   end;

   if SITU = 0 then
   begin
        Q_RECE.SQL.Add('AND A.REC_CODI IN (SELECT IRE_CODI FROM CPAIREC)');
   end;
   if SITU = 1 then
   begin
        Q_RECE.SQL.Add('AND A.REC_SALD > 0');
   end;


   If not Lst_Receb_Filt.ck_Sim.checked then
   Begin
     Q_RECE.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;

  End;

  If not Lst_Receb_Filt.ck_Nao.checked then
  Begin
     Q_RECE.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;

  End;

   If Lst_Receb_Filt.chaLancamentoCaixa.checked then
  Begin
     Q_RECE.SQL.Add(' and IdLancamentoCaixa Is Not Null ') ;

  End;


   if rTipo = 0 then
   begin
        Q_RECE.SQL.Add('ORDER BY B.CLI_RAZA, A.REC_VENC');

   end;
   if rTipo = 1 then
        Q_RECE.SQL.Add('ORDER BY A.REC_VENC, B.CLI_RAZA');
   if rTipo = 2 then
   begin
        Q_RECE.SQL.Add('ORDER BY REC_EMIS, B.CLI_RAZA, A.REC_VENC');

   end;
   if rTipo = 3 then
   begin
        Q_RECE.SQL.Add('ORDER BY CONVERT(CHAR(10),C.IRE_DATA,112), B.CLI_RAZA, A.REC_VENC');
 
   end;
   if rTipo = 4 then
   begin
        Q_RECE.SQL.Add('ORDER BY A.REC_CGER, B.CLI_RAZA, A.REC_VENC');

   end;

   {/************** miguel *************/}

   
   if rTipo = 5 then
   begin
        Q_RECE.SQL.Add(' AND A.REC_BANC IS NOT NULL ORDER BY A.REC_BANC, A.REC_VENC');

   end;

   {/************** end ****************/}


  

   Q_RECE.Open;




  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

end.

unit clientes;



interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, Db, DBTables, Wwdatsrc, Wwquery, StdCtrls, ExtCtrls,
  ComCtrls, Tabnotbk, Mask, wwdbedit, Wwtable, Grids, DBGrids, Wwdbigrd,
  Wwdbgrid, wwDialog, wwidlg, wwdblook, Wwdotdot, Wwdbcomb, jpeg, ExtDlgs,
  Math;

type
    TCliente = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel6: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    DS_Simulacao: TwwDataSource;
    SBT_SAIR: TSpeedButton;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    txtnome: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    T_Simulacao: TwwTable;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    wwDBGrid1: TwwDBGrid;
    SBusca: TwwSearchDialog;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    T_AreaSimul: TwwTable;
    DS_AreaSimul: TwwDataSource;
    cboRegua: TwwDBLookupCombo;
    T_Regua: TwwTable;
    T_AreaSimulArea_Simul_ID: TAutoIncField;
    T_AreaSimulSimul_ID: TFloatField;
    T_AreaSimulTipo_Area: TStringField;
    T_AreaSimulComprimento: TFloatField;
    T_AreaSimulLargura: TFloatField;
    T_AreaSimulArea: TFloatField;
    T_AreaSimulRegua_id: TFloatField;
    T_AreaSimulFil_Est: TFloatField;
    T_AreaSimulFil_Lar: TFloatField;
    T_AreaSimulOrientacao: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    cbotipo: TwwDBComboBox;
    Label10: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Label12: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label13: TLabel;
    DBText2: TDBText;
    cboOrientGrid: TwwDBComboBox;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label14: TLabel;
    Grid: TwwDBGrid;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBComboBox3: TwwDBComboBox;
    T_ReguaRegua_ID: TAutoIncField;
    T_ReguaDescricao: TStringField;
    T_ReguaComprimento: TFloatField;
    T_ReguaLargura: TFloatField;
    T_ReguaQuant_Caixa: TFloatField;
    T_AreaSimulTipo_Fil: TStringField;
    RadioGroup1: TDBRadioGroup;
    wwDBComboBox1: TwwDBComboBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel2: TPanel;
    Label21: TLabel;
    DBText1: TDBText;
    DS_Acab: TwwDataSource;
    T_Acab: TwwTable;
    DS_AcabSimul: TwwDataSource;
    T_AcabSimul: TwwTable;
    T_AcabAcab_ID: TAutoIncField;
    T_AcabDescricao: TStringField;
    T_AcabQuant_Unitaria: TFloatField;
    T_AcabUnidade: TStringField;
    T_AcabSimulAcab_Simul_ID: TAutoIncField;
    T_AcabSimulSimul_ID: TFloatField;
    T_AcabSimulAcab_ID: TFloatField;
    wwDBGrid3: TwwDBGrid;
    T_AcabSimulQuant_Unidade: TIntegerField;
    T_AcabComprimento: TFloatField;
    cboDescAca: TwwDBLookupCombo;
    T_Acab1: TwwTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    T_AcabSimulUNIDADE: TStringField;
    T_AcabSimulComprimento: TStringField;
    Label19: TLabel;
    dbTot: TwwDBEdit;
    T_TOTAREA: TwwTable;
    DS_TOTAREA: TwwDataSource;
    T_TOTAREATOTAREA: TFloatField;
    Label20: TLabel;
    Label22: TLabel;
    T_AreaSimulNum_Sarrafos: TFloatField;
    SpeedButton2: TSpeedButton;
    Label23: TLabel;
    DS_Regua: TwwDataSource;
    T_AreaSimulNum_Reguas: TFloatField;
    T_AreaSimulNum_Fil_Lar: TFloatField;
    T_AreaSimulNum_Fil_Est: TFloatField;
    T_Parametros: TwwTable;
    T_ParametrosParam_ID: TAutoIncField;
    T_ParametrosKTeto: TFloatField;
    T_ParametrosKParede: TFloatField;
    T_ParametrosMarSegFil_Est: TFloatField;
    T_ParametrosMarSegFil_Lar: TFloatField;
    T_ParametrosFil_Caixa: TIntegerField;
    T_ParametrosKComprimento12: TFloatField;
    T_ParametrosKComprimento23: TFloatField;
    DS_Parametros: TwwDataSource;
    wwDBEdit10: TwwDBEdit;
    T_AcabSimulQuant_Barras: TFloatField;
    SpeedButton3: TSpeedButton;
    T_AcabSimuldesAcab: TStringField;
    Q_TOTREGUA: TwwQuery;
    DS_TOTREGUA: TwwDataSource;
    Q_TOTREGUATOTREGUA: TFloatField;
    Q_TOTREGUAREGUA_ID: TFloatField;
    Q_TOTREGUATOTCAIXA: TFloatField;
    Q_TOTREGUADESCRICAO: TStringField;
    Q_TOTREGUACAIXAINT: TIntegerField;
    Q_FIL: TwwQuery;
    Q_TOTREGUASIMUL_ID: TFloatField;
    DS_FIL: TwwDataSource;
    Q_FILTOTLARGO: TFloatField;
    Q_FILTOTEST: TFloatField;
    Q_FILTOTSARAFO: TFloatField;
    Q_FILSIMUL_ID: TFloatField;
    Q_FILPARAM_ID: TIntegerField;
    Q_FILCAIXALARGO2: TIntegerField;
    Q_FILCAIXAESTT2: TIntegerField;
    Q_ACABTOT: TwwQuery;
    DS_ACABTOT: TwwDataSource;
    Q_ACABTOTQTDEBARRA: TFloatField;
    Q_ACABTOTACAB_Id: TFloatField;
    Q_ACABTOTSIMUL_ID: TFloatField;
    Q_ACABTOTDESCRICAO: TStringField;
    T_AREASIMULaux: TwwTable;
    T_AREASIMULauxArea_Simul_ID: TAutoIncField;
    T_AREASIMULauxSimul_ID: TFloatField;
    T_AREASIMULauxTipo_Area: TStringField;
    T_AREASIMULauxComprimento: TFloatField;
    T_AREASIMULauxLargura: TFloatField;
    T_AREASIMULauxArea: TFloatField;
    T_AREASIMULauxRegua_id: TFloatField;
    T_AREASIMULauxFil_Est: TFloatField;
    T_AREASIMULauxFil_Lar: TFloatField;
    T_AREASIMULauxOrientacao: TStringField;
    T_AREASIMULauxTipo_Fil: TStringField;
    T_AREASIMULauxNum_Sarrafos: TFloatField;
    T_AREASIMULauxNum_Reguas: TFloatField;
    T_AREASIMULauxNum_Caixas_Regua: TFloatField;
    T_AREASIMULauxNum_Fil_Lar: TFloatField;
    T_AREASIMULauxNum_Caixas_Fil_Lar: TFloatField;
    T_AREASIMULauxNum_Fil_Est: TFloatField;
    T_AREASIMULauxNum_Caixas_Fil_Est: TFloatField;
    T_AREASIMULauxNum_Caixas_Pres_Fil_Lar: TFloatField;
    T_AREASIMULauxNum_Pres_Parede: TFloatField;
    T_AREASIMULauxNum_Caixas_Pres_Parede: TFloatField;
    T_AreaSimulRegua: TStringField;
    Panel4: TPanel;
    DBText4: TDBText;
    Label25: TLabel;
    Label24: TLabel;
    DBText3: TDBText;
    T_AreaSimulNum_Pres_Fil_Lar: TIntegerField;
    T_AreaSimulNum_Pres_Fil_Est: TIntegerField;
    T_AREASIMULauxNum_Pres_Fil_Lar: TIntegerField;
    T_AREASIMULauxNum_Pres_Fil_Est: TIntegerField;
    T_ParametrosQtdePresilha_Metro: TFloatField;
    Q_FILTOTPRESLAR: TFloatField;
    Q_FILTOTPRESEST: TFloatField;
    Q_FILTOTCXPRESLAR2: TIntegerField;
    Q_FILTOTCXPRESEST2: TIntegerField;
    Q_FILCAIXALARGO: TFloatField;
    Q_FILCAIXAEST: TFloatField;
    Q_FILTOTCXPRESLAR: TFloatField;
    Q_FILTOTCXPRESEST: TFloatField;
    DBText14: TDBText;
    Label30: TLabel;
    DBText15: TDBText;
    Label32: TLabel;
    Bt_Incluir: TSpeedButton;
    Q_TOTREGUATotRegua2: TFloatField;
    T_AreaSimulDescTpFil: TStringField;
    wwDBEdit9: TwwDBEdit;
    bt_gravar: TSpeedButton;
    Bt_excluir: TSpeedButton;
    Bt_cancelar: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SpeedButton4: TSpeedButton;
    T_AcabSimulPerimetro: TFloatField;
    txtperimetro: TwwDBEdit;
    Timer1: TTimer;
    Q_TPAC: TwwQuery;
    DS_TPAC: TwwDataSource;
    Q_TPACAcab_ID: TIntegerField;
    Q_TPACDescricao: TStringField;
    Q_TPACQuant_Unitaria: TFloatField;
    Q_TPACUnidade: TStringField;
    Q_TPACComprimento: TFloatField;
    T_AcabSimulArea_Simul_ID: TFloatField;
    Label37: TLabel;
    Label38: TLabel;
    T_SimulacaoSimul_ID: TAutoIncField;
    T_SimulacaoData_Simul: TDateField;
    T_SimulacaoNome_Cliente: TStringField;
    T_SimulacaoTel_Cliente: TStringField;
    T_SimulacaoDDD: TFloatField;
    Label40: TLabel;
    Label11: TLabel;
    T_PADRAO: TwwTable;
    DS_PADRAO: TwwDataSource;
    T_PADRAOPDR_ID: TAutoIncField;
    T_PADRAOPDR_DESCRICAO: TStringField;
    T_AreaSimulPdr_Id: TIntegerField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    T_AreaSimulPDRdesc: TStringField;
    T_PAG: TwwTable;
    DS_PAG: TwwDataSource;
    T_PAGORIENTACAO: TStringField;
    T_PAGDESCRICAO: TStringField;
    T_PAGFIGURA: TGraphicField;
    T_PAGTIPO_AREA: TStringField;
    OpenPictureDialog1: TOpenPictureDialog;
    cboorientacao: TwwDBLookupCombo;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    T_PAG2: TwwTable;
    StringField3: TStringField;
    GraphicField1: TGraphicField;
    StringField4: TStringField;
    StringField5: TStringField;
    DS_PAG2: TwwDataSource;
    wwDBLookupCombo2: TwwDBLookupCombo;
    T_AcabFIGURA: TGraphicField;
    DBImage3: TDBImage;
    Q_TPACFIGURA: TGraphicField;
    T_AcabSimulPDR_ID: TIntegerField;
    T_PADRAO2: TwwTable;
    DS_PADRAO2: TwwDataSource;
    T_PADRAO2PDR_ID: TAutoIncField;
    T_PADRAO2PDR_DESCRICAO: TStringField;
    T_AcabSimulPDRdesc: TStringField;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Q_TPACTIPO_AREA1: TStringField;
    Q_TPACTIPO_AREA2: TStringField;
    Q_TPACTIPO_AREA3: TStringField;
    T_ParametrosFILETE_LARGO: TFloatField;
    T_ParametrosFILETE_ESTREITO: TFloatField;
    T_PAGPERDA: TFloatField;
    T_PAG2PERDA: TFloatField;
    Q_TOTREGUAPDR_DESCRICAO: TStringField;
    Q_TOTREGUATIPO_AREA: TStringField;
    Q_TOTREGUACOMPRIMENTO: TFloatField;
    Q_TOTREGUALARGURA: TFloatField;
    Q_ACABTOTPDR_DESCRICAO: TStringField;
    Q_AUX: TwwQuery;
    wwDBComboBox2: TwwDBComboBox;
    wwDBGrid4: TwwDBGrid;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel11: TPanel;
    Label26: TLabel;
    Label28: TLabel;
    Panel21: TPanel;
    Panel10: TPanel;
    Label27: TLabel;
    Label29: TLabel;
    Panel8: TPanel;
    Panel20: TPanel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    DBText7: TDBText;
    Label36: TLabel;
    wwDBGrid5: TwwDBGrid;
    Label31: TLabel;
    Label39: TLabel;
    Q_TOTREGUAORIENTACAO: TStringField;
    T_TESTE: TwwTable;
    T_TESTEAcab_ID: TAutoIncField;
    T_TESTEDescricao: TStringField;
    T_TESTEQuant_Unitaria: TFloatField;
    T_TESTEUnidade: TStringField;
    T_TESTEComprimento: TFloatField;
    T_TESTEFIGURA: TGraphicField;
    T_TESTETIPO_AREA1: TStringField;
    T_TESTETIPO_AREA2: TStringField;
    T_TESTETIPO_AREA3: TStringField;
    T_TESTECOMSARRAFO: TStringField;
    Q_AUX2: TwwQuery;
    Q_TPACCOMSARRAFO: TStringField;
    Label42: TLabel;
    T_ULT: TwwTable;
    T_ULTULT_ACAB_SIMUL_ID: TIntegerField;
    T_ULTULT_AREA_SIMUL_ID: TIntegerField;
    T_AREASARRA: TwwTable;
    T_AREASARRAAREA_SIMUL_ID: TIntegerField;
    T_AREASARRACOMSARRAFOS: TStringField;
    DS_AREASARRA: TwwDataSource;
    Q_TOTREGUAAREA_SIMUL_ID: TIntegerField;
    Panel22: TPanel;
    T_AREASARRASIMUL_ID: TIntegerField;
    Label41: TLabel;
    wwDBComboBox6: TwwDBComboBox;
    Panel23: TPanel;
    wwDBComboBox4: TwwDBComboBox;
    wwDBGrid2: TwwDBGrid;
    Q_AREASARRAgrid: TwwQuery;
    Q_AREASARRAgridSIMUL_ID: TIntegerField;
    Q_AREASARRAgridAREA_SIMUL_ID: TIntegerField;
    Q_AREASARRAgridCOMSARRAFOS: TStringField;
    DS_AREASARRAgrid: TwwDataSource;
    wwDBGrid6: TwwDBGrid;
    Q_AREASARRAgrid2: TwwQuery;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DS_AREASARRAgrid2: TwwDataSource;
    T_AreaSimul2: TwwTable;
    T_AreaSimul2Area_Simul_ID: TAutoIncField;
    T_AreaSimul2Simul_ID: TFloatField;
    T_AreaSimul2Tipo_Area: TStringField;
    T_AreaSimul2Comprimento: TFloatField;
    T_AreaSimul2Largura: TFloatField;
    T_AreaSimul2Area: TFloatField;
    T_AreaSimul2Regua_id: TFloatField;
    T_AreaSimul2Fil_Est: TFloatField;
    T_AreaSimul2Fil_Lar: TFloatField;
    T_AreaSimul2Orientacao: TStringField;
    T_AreaSimul2Tipo_Fil: TStringField;
    T_AreaSimul2Num_Sarrafos: TFloatField;
    T_AreaSimul2Num_Reguas: TFloatField;
    T_AreaSimul2Num_Caixas_Regua: TFloatField;
    T_AreaSimul2Num_Fil_Lar: TFloatField;
    T_AreaSimul2Num_Caixas_Fil_Lar: TFloatField;
    T_AreaSimul2Num_Fil_Est: TFloatField;
    T_AreaSimul2Num_Caixas_Fil_Est: TFloatField;
    T_AreaSimul2Num_Caixas_Pres_Fil_Lar: TFloatField;
    T_AreaSimul2Num_Pres_Parede: TFloatField;
    T_AreaSimul2Num_Caixas_Pres_Parede: TFloatField;
    T_AreaSimul2Num_Pres_Fil_Lar: TIntegerField;
    T_AreaSimul2Num_Pres_Fil_Est: TIntegerField;
    T_AreaSimul2Pdr_Id: TIntegerField;
    Panel9: TPanel;
    procedure SBT_SAIRClick(Sender: TObject);
    Procedure Atualiza_TotArea;    
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure txtnomeExit(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure txtnomeEnter(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure T_AreaSimulNewRecord(DataSet: TDataSet);
    procedure T_AreaSimulComprimentoChange(Sender: TField);
    procedure cbotipoEnter(Sender: TObject);
    procedure cbotipoExit(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure T_SimulacaoNewRecord(DataSet: TDataSet);
    procedure T_AreaSimulBeforePost(DataSet: TDataSet);
    procedure RadioGroup1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DS_AreaSimulDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure T_AreaSimulAreaChange(Sender: TField);
    procedure T_AreaSimulAfterPost(DataSet: TDataSet);
    procedure T_AreaSimulAfterDelete(DataSet: TDataSet);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure cboDescAcaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure T_SimulacaoAfterPost(DataSet: TDataSet);
    procedure T_SimulacaoBeforePost(DataSet: TDataSet);
    procedure T_SimulacaoBeforeDelete(DataSet: TDataSet);
    procedure wwDBGrid3ColExit(Sender: TObject);
    procedure cboReguaExit(Sender: TObject);
    procedure cboReguaEnter(Sender: TObject);
    procedure DS_TOTREGUADataChange(Sender: TObject; Field: TField);
    procedure Q_TOTREGUACalcFields(DataSet: TDataSet);
    procedure Q_FILCalcFields(DataSet: TDataSet);
    procedure T_AreaSimulCalcFields(DataSet: TDataSet);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure Bt_excluirClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure Bt_cancelarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DS_SimulacaoStateChange(Sender: TObject);
    procedure wwDBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure T_SimulacaoAfterDelete(DataSet: TDataSet);
    procedure T_AcabSimulAfterDelete(DataSet: TDataSet);
    procedure DS_AreaSimulStateChange(Sender: TObject);
    procedure DS_AcabSimulStateChange(Sender: TObject);
    procedure wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DS_SimulacaoDataChange(Sender: TObject; Field: TField);
    procedure DS_AcabSimulDataChange(Sender: TObject; Field: TField);
    procedure txtnomeKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure txtperimetroKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure cboReguaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Q_FILAfterOpen(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure T_AcabSimulNewRecord(DataSet: TDataSet);
    procedure txtperimetroEnter(Sender: TObject);
    procedure txtperimetroExit(Sender: TObject);
    procedure T_AcabSimulAfterInsert(DataSet: TDataSet);
    procedure T_SimulacaoBeforeInsert(DataSet: TDataSet);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit9KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbotipoCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure DBG_RAATDblClick(Sender: TObject);
    procedure cboorientacaoCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboorientacaoEnter(Sender: TObject);
    procedure cboorientacaoExit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure T_AreaSimulBeforeDelete(DataSet: TDataSet);
    procedure DBImage3DblClick(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox6Exit(Sender: TObject);
    procedure wwDBComboBox6CloseUp(Sender: TwwDBComboBox; Select: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
     Altura: integer;
    Largura: integer;
  end;

var
        Cliente: TCliente;
        KTeto: Real = 4.5;
        KParede: Real = 2.5;
        MeiaParede: Real = 3;
        TercoParede: Real = 5;
        APR: Real;
        NumReguas: Real;
        Filete: Real = 100;
        MODO_INSERT : string ;
        TESTE : REAL;
        AREA_SIMUL : string ;
        AREA_SIMUL2  : string ;
        PARTEINTEIRA2   : integer ;
        AREA_EST : real ;
        AREA_LAR : real ;
        SIMULACAO : STRING;
        //BOOPRIMEIRO : BOOLEAN ;


        NUMFAIXAS  : real ;
        LARGFILETE : real ;
        PERDA : Real ;
        QRF : REAL ;

        VALE : string ;
        HIPO : real ;
        ARR : STRING ;
        ARR2 : STRING ;
        VN:string;
       
implementation
uses Duratex, PesquisaSimul, Rel_Simul ;
{$R *.DFM}

procedure TCliente.SBT_SAIRClick(Sender: TObject);
begin
        If T_AreaSimul.State <> dsBrowse then
           T_AreaSimul.Cancel;

        INCLUIR := 'N';
        Close;
end;

procedure TCliente.FormCreate(Sender: TObject);
begin
        CLIENTE.caption := 'Lista de Materiais - Durawall ' + FORM1.Label3.caption ;

        TabbedNotebook1.PageIndex:= 0;
        MODO_INSERT := '' ;
       // BOOPRIMEIRO := TRUE ;

        T_PAG.open ;
        T_PAG2.open ;
        T_regua.open;
        T_simulacao.open;
        T_areasimul.open;
        T_areasimul2.open;
        T_acabsimul.Open;
        t_acab.open;
        t_acab1.open;
        t_PARAMETROS.Open;
        Q_TOTREGUA.open ;
        Q_FIL.open ;
        Q_ACABTOT.open ;
        T_AREASIMULaux.open;
        T_PADRAO.open ;
        T_PADRAO2.open ;
        T_TESTE.open ;
        T_AREASARRA.open;
        T_ULT.open ;

        Q_AREASARRAGrid.open ;
        Q_AREASARRAGrid2.open ;

        IF INCLUIR = 'S' then
              T_SIMULACAO.Insert
        else
              T_Simulacao.FindKey([posicao]) ;
        Q_TPAC.Open;



        Q_AUX2.close;
        Q_AUX2.Sql.Clear;
        Q_AUX2.Sql.Add('select count(*) as ULT from AREA_SARRAFO ' ) ;
        Q_AUX2.open;

        IF Q_AUX2.fieldbyname('ULT').asinteger = 0 then begin


              IF T_ULTULT_AREA_SIMUL_ID.asstring = '' then begin
                  Q_AUX2.close;
                  Q_AUX2.Sql.Clear;
                  Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
                  Q_AUX2.open;

                  IF Q_AUX2.fieldbyname('ULT').asstring <> '' then begin

                        T_ULT.edit ;
                        T_ULTULT_AREA_SIMUL_ID.asstring := Q_AUX2.fieldbyname('ULT').asstring ;
                        T_ULT.post ;


                           T_AREASIMUL2.first ;
                           While not T_AREASIMUL2.eof do begin
                                   Q_AUX2.close;
                                   Q_AUX2.Sql.Clear;
                                   Q_AUX2.Sql.Add(' insert into AREA_SARRAFO (AREA_SIMUL_ID,SIMUL_ID,COMSARRAFOS) ') ;
                                   Q_AUX2.Sql.Add(' values ( ' );
                                   Q_AUX2.Sql.Add( inttostr(T_AreaSimul2Area_Simul_ID.asinteger) + ',');
                                   Q_AUX2.Sql.Add( inttostr(T_AreaSimul2Simul_ID.asinteger)+ ',');
                                   Q_AUX2.Sql.Add( '''' + 'S' + '''' + ')' )   ;
                                   Q_AUX2.execsql;
                                T_AREASIMUL2.next ;
                           end ;


                  end ;
              end;
        end ;


end;

procedure TCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        T_PAG.close ;
        T_PAG2.close ;
        t_regua.close;
        t_simulacao.close;
        t_areasimul.close;
        T_acabsimul.close;
        T_areasimul2.close;
        T_AREASIMULaux.close ;
        t_acab.close;
        t_acab1.close;
        T_PARAMETROS.Close;
        Q_TOTREGUA.close ;
        Q_FIL.close  ;
        Q_ACABTOT.close  ;
        T_PADRAO.close ;
        T_PADRAO2.close ;
        T_TESTE.close ;
        T_AREASARRA.close;
        T_ULT.close ;
        Q_TPAC.Close;

        Q_AREASARRAGrid.close  ;
        Q_AREASARRAGrid2.close ;



        action := cafree;


end;

procedure TCliente.SpeedButton1Click(Sender: TObject);
begin
        INCLUIR := '';
        Close;
end;

procedure TCliente.wwDBEdit2Enter(Sender: TObject);
begin
        (sender as twwDBEdit).color := clAqua;
end;

procedure TCliente.wwDBEdit2Exit(Sender: TObject);
begin
        (sender as twwDBEdit).color := clWindow;
end;

procedure TCliente.txtnomeExit(Sender: TObject);
begin
        (sender as twwDBEdit).color := clWindow;
end;

procedure TCliente.wwDBEdit4Exit(Sender: TObject);
begin
        (sender as twwDBEdit).color := clWindow;
end;

procedure TCliente.txtnomeEnter(Sender: TObject);
begin
         (sender as twwDBEdit).color := clAqua;
end;

procedure TCliente.wwDBEdit4Enter(Sender: TObject);
begin
        (sender as twwDBEdit).color := clAqua;
end;

procedure TCliente.TabbedNotebook1Click(Sender: TObject);
VAR SQL:String;
begin
         {  IF T_AreaSimulArea_Simul_ID.asinteger <> 0 then begin
               wwDBComboBox6.visible := false;
               PANEL23.visible := true ;
               PANEL9.visible := false ;
            end else  begin
               PANEL23.visible := false ;
               IF cbotipo.ItemIndex = 0 THEN begin
                  PANEL9.visible := true ;
                  wwDBComboBox6.visible := false ;
               end else begin
                  PANEL9.visible := false ;
                  wwDBComboBox6.visible := true  ;
               end ;
            end ;    }






         If (T_SIMULACAO.State = dsEdit) or (T_SIMULACAO.State = dsInsert) then
             T_SIMULACAO.Post;


         If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
             T_AREASIMUL.Post;


         If (T_ACABSIMUL.State = dsEdit) or (T_ACABSIMUL.State = dsInsert) then
                T_ACABSIMUL.Post;

         ///T_AREASIMUL.close;
         ///T_AREASIMUL.open ;


       {IF T_AREASARRAAREA_SIMUL_ID.asstring = '' then begin
            Q_AUX2.close;
            Q_AUX2.Sql.Clear;
            Q_AUX2.Sql.Add(' UPDATE AREA_SARRAFO set Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring );
            Q_AUX2.Sql.Add(' where  Area_Simul_ID is null');
            Q_AUX2.ExecSql;


            T_AREASARRA.close;
            T_AREASARRA.open;
        end ; }



      Q_AUX2.close;
      Q_AUX2.Sql.Clear;
      Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
      Q_AUX2.open;

      IF (Q_AUX2.fieldbyname('ULT').asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin

            If T_AREASARRACOMSARRAFOS.asstring = 'N' then begin
               Label42.caption := 'Sem Sarrafos' ;

            end else begin
               Label42.caption := 'Sarrafo ou Perfil Metálico F 530' ;

            end ;

      end else begin
             /// DBradioGroup3.visible := false ;
              ///Panel22.VISIBLE := false ;
              Label42.caption := 'Sarrafo ou Perfil Metálico F 530' ;
              ///Label43.caption := 'Orçto. com Sarrafos' ;
      end ;

     


           IF  TabbedNotebook1.PageIndex = 3 THEN
           begin
                Bt_Incluir.Enabled := false;
                Bt_excluir.Enabled:= false;

                Q_AUX2.close;
                Q_AUX2.Sql.Clear;
                Q_AUX2.Sql.Add('select count(*) as ULT from AREA_SARRAFO ' ) ;
                Q_AUX2.Sql.Add('where COMSARRAFOS = ' + '''' + 'S' + '''') ;
                Q_AUX2.Sql.Add('and  SIMUL_ID = ' + T_SimulacaoSimul_ID.asstring) ;
                Q_AUX2.open;

                IF (Q_AUX2.fieldbyname('ULT').asinteger > 0 ) then
                    Panel22.visible := false
                  else
                    Panel22.visible := true ; 


          end
           else
           begin
                Bt_Incluir.Enabled := true;
                Bt_excluir.Enabled:= true;
           end;

       { If (T_SIMULACAO.State = dsEdit) or (T_SIMULACAO.State = dsInsert) then
                T_SIMULACAO.Post;
         If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
                T_AREASIMUL.Post;
         If (T_ACABSIMUL.State = dsEdit) or (T_ACABSIMUL.State = dsInsert) then
                T_ACABSIMUL.Post;   }

         IF  TabbedNotebook1.PageIndex = 0 THEN
             DBNavigator1.DataSource := DS_SIMULACAO;

         IF  TabbedNotebook1.PageIndex = 1 THEN  begin
             IF T_SimulacaoSimul_ID.asstring <> '' then begin

                IF  T_AreaSimulArea_Simul_ID.asstring <> '' then
                   AREA_SIMUL2 :=  T_AreaSimulArea_Simul_ID.asstring  ;


                T_AreaSimul.Close;
                T_AreaSimul.wwfilter.Clear;
                T_AreaSimul.filterActivate;
                T_AreaSimul.wwfilter.add(' SIMUL_ID = ' + T_SimulacaoSimul_ID.asstring) ;
                T_AreaSimul.open;

                IF  T_AreaSimulArea_Simul_ID.asstring <> '' then
                    T_AreaSimul.findkey([AREA_SIMUL2]) ;

             end ;
             DBNavigator1.DataSource := DS_AreaSimul;
             Atualiza_TotArea;
         End;

         IF  TabbedNotebook1.PageIndex = 2 THEN  Begin
               { Q_AUX2.close;
                Q_AUX2.Sql.Clear;
                Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
                Q_AUX2.open;

                IF (Q_AUX2.fieldbyname('ULT').asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin

                      SQL := ' Select * from Acabamento ';
                      if cbotipo.ItemIndex = 0 then
                         SQL := SQL + 'where TIPO_AREA1 = ' + '''' + '1' + '''' ;
                      if cbotipo.ItemIndex = 1 then
                         SQL := SQL + 'where TIPO_AREA2 = ' + '''' + '2' + '''' ;
                      if cbotipo.ItemIndex = 2 then
                         SQL := SQL + 'where TIPO_AREA3 = ' + '''' + '3' + '''' ;

                      ////if  DBRadioGroup3.itemindex =  0  then  begin
                      IF wwDBComboBox6.itemindex = 1 then begin
                          SQL := SQL + 'and COMSARRAFO = ' + '''' + 'S' + ''''  ;
                         ///SQL := SQL + 'and ACAB_ID <> ' + inttostr(1);
                      end else  begin
                         //SQL := SQL + 'and (COMSARRAFO = ' + '''' + 'N' + '''' ;
                         ///SQL := SQL + 'or   COMSARRAFO = ' + '''' + 'A' + '''' + ')' ;
                         SQL := SQL + 'and COMSARRAFO = ' + '''' + 'N' + '''';
                      end ;
                         SQL := SQL + 'order by Descricao ';

                end else begin
                       SQL := ' Select * from Acabamento ';
                      if cbotipo.ItemIndex = 0 then
                         SQL := SQL + 'where TIPO_AREA1 = ' + '''' + '1' + '''' ;
                      if cbotipo.ItemIndex = 1 then
                         SQL := SQL + 'where TIPO_AREA2 = ' + '''' + '2' + '''' ;

                      if cbotipo.ItemIndex = 2 then
                         SQL := SQL + 'where TIPO_AREA3 = ' + '''' + '3' + '''' ;
                         SQL := SQL + 'order by Descricao ';
                end ;  }



                IF (T_AreaSimulArea_Simul_ID.asstring <> '') then begin

                     IF (T_AreaSimulArea_Simul_ID.asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger){  and
                        (T_ULTULT_AREA_SIMUL_ID.asstring <> '' )}then begin

                          If (wwDBComboBox6.itemindex = 0) or (VALE = 'S') then begin
                             SQL := ' Select * from Acabamento ';
                              if cbotipo.ItemIndex = 0 then
                                 SQL := SQL + 'where TIPO_AREA1 = ' + '''' + '1' + '''' ;
                              if cbotipo.ItemIndex = 1 then
                                 SQL := SQL + 'where TIPO_AREA2 = ' + '''' + '2' + '''' ;
                              if cbotipo.ItemIndex = 2 then
                                 SQL := SQL + 'where TIPO_AREA3 = ' + '''' + '3' + '''' ;
                             SQL := SQL + 'and  ACAB_ID <> ' + inttostr(1) ;
                             SQL := SQL + 'order by Descricao ';
                          end else begin
                             IF  (wwDBComboBox6.itemindex = 1) or (VALE = 'N') then begin

                                  SQL := ' Select * from Acabamento ';
                                  if cbotipo.ItemIndex = 0 then
                                     SQL := SQL + 'where TIPO_AREA1_SEMSARRA = ' + '''' + '1' + '''' ;
                                  if cbotipo.ItemIndex = 1 then
                                     SQL := SQL + 'where TIPO_AREA2_SEMSARRA = ' + '''' + '2' + '''' ;
                                  if cbotipo.ItemIndex = 2 then
                                     SQL := SQL + 'where TIPO_AREA3_SEMSARRA = ' + '''' + '3' + '''' ;
                                     SQL := SQL + 'and  ACAB_ID <> ' + inttostr(1) ;
                                     SQL := SQL + 'order by Descricao ';
                             end ;
                          end ;

                    end else begin
                             SQL := 'Select * from Acabamento ';
                          if cbotipo.ItemIndex = 0 then
                             SQL := SQL + 'where TIPO_AREA1 = ' + '''' + '1' + '''' ;
                          if cbotipo.ItemIndex = 1 then
                             SQL := SQL + 'where TIPO_AREA2 = ' + '''' + '2' + '''' ;
                          if cbotipo.ItemIndex = 2 then
                             SQL := SQL + 'where TIPO_AREA3 = ' + '''' + '3' + '''' ;

                             SQL := SQL + 'order by Descricao ';
                    end ;

                     Q_TPAC.SQL.Clear;
                     Q_TPAC.SQL.Add (SQL);
                     Q_TPAC.Open;
                end ;


                   DBNavigator1.DataSource := DS_Acabsimul;
                   Label38.Caption := cbotipo.Text;

         End;


         IF  TabbedNotebook1.PageIndex = 3 THEN begin
             DBNavigator1.DataSource := DS_TOTREGUA;

              IF  T_SimulacaoSimul_ID.asstring <> '' then begin
                   Q_FIL.close;
                   Q_FIL.open ;

                 Q_TOTREGUA.close;
                 Q_TOTREGUA.SQL.clear ;
                 Q_TOTREGUA.SQL.add(' SELECT     A.AREA_SIMUL_ID,SUM(A.num_reguas) AS TOTREGUA,A.REGUA_ID, ');
                 Q_TOTREGUA.SQL.add('           SUM(A.num_reguas/B.QUANT_CAIXA) as TOTCAIXA,');
                 Q_TOTREGUA.SQL.add('           B.DESCRICAO,A.SIMUL_ID,C.PDR_DESCRICAO,A.TIPO_AREA, A.COMPRIMENTO,A.LARGURA ,A.ORIENTACAO');
                 Q_TOTREGUA.SQL.add(' FROM      AREA_SIMUL A,REGUA B,PADRAO C ');
                 Q_TOTREGUA.SQL.add(' where     A.REGUA_Id = B.REGUA_ID and A.PDR_ID = C.PDR_ID and SIMUL_ID = ' + T_SimulacaoSimul_ID.asstring  );
                 Q_TOTREGUA.SQL.add(' GROUP BY   A.AREA_SIMUL_ID,A.REGUA_ID ,B.DESCRICAO,A.SIMUL_ID,C.PDR_DESCRICAO, A.TIPO_AREA, A.COMPRIMENTO,A.LARGURA,A.ORIENTACAO');
                 Q_TOTREGUA.open ;

                 Q_ACABTOT.close;
                 Q_ACABTOT.SQL.clear ;
                 Q_ACABTOT.SQL.add(' select     SUM(A.QUANT_BARRAS) as QTDEBARRA,A.ACAB_Id,');
                 Q_ACABTOT.SQL.add('            A.SIMUL_ID,B.DESCRICAO ,C.PDR_DESCRICAO');
                 Q_ACABTOT.SQL.add('            from acab_simul A,ACABAMENTO B ,PADRAO C');
                 Q_ACABTOT.SQL.add(' where  ');
                 Q_ACABTOT.SQL.add('            A.SIMUL_ID = ' + T_SimulacaoSimul_ID.asstring  );
                 Q_ACABTOT.SQL.add(' and        A.ACAB_Id = B.ACAB_ID ');
                 Q_ACABTOT.SQL.add(' and        A.PDR_Id  = c.PDR_Id ');
                 Q_ACABTOT.SQL.add(' group by   A.ACAB_Id,A.SIMUL_ID,B.DESCRICAO,C.PDR_DESCRICAO   ');
                 Q_ACABTOT.open ;

             end ;

         end ;

         ////teste///
         If (DbNavigator1.DataSource.DataSet.Eof) then
                bt_excluir.Enabled := false
         else
                 bt_excluir.Enabled := true;

         If (TabbedNoteBook1.PageIndex = 3) then
                bt_excluir.Enabled := false;


end;

procedure TCliente.T_AreaSimulNewRecord(DataSet: TDataSet);
begin
        T_AreaSimul.FieldByName('Simul_ID').asstring := T_SimulacaoSimul_ID.AsString;
        T_AreaSimulTipo_Fil.asstring := 'E' ;

        {  Q_AUX2.close;
          Q_AUX2.Sql.Clear;
          Q_AUX2.Sql.Add(' insert into AREA_SARRAFO (AREA_SIMUL_ID,SIMUL_ID,COMSARRAFOS) ') ;
          Q_AUX2.Sql.Add(' values ( ' );
          Q_AUX2.Sql.Add( inttostr(29) + ',');
          Q_AUX2.Sql.Add( inttostr(T_SimulacaoSimul_ID.asinteger)+ ',');
          Q_AUX2.Sql.Add( '''' + 'N' + '''' + ')' )  ;
          Q_AUX2.ExecSql;

          T_AREASARRA.close;
          T_AREASARRA.open ;  }

          
end;

procedure TCliente.T_AreaSimulComprimentoChange(Sender: TField);
VAR Total:Double;
begin
        if (T_AreaSimulLargura.AsString <> '') and  (T_AreaSimulComprimento.AsString <> '') then begin
            T_AreaSimulArea.AsFloat := T_AreaSimulLargura.AsFloat * T_AreaSimulComprimento.AsFloat;
        end
          else T_AreaSimulArea.AsString := '';

end;

procedure TCliente.cbotipoEnter(Sender: TObject);
begin
        (Sender as TwwDBcomboBOX).Color := ClAqua;
end;

procedure TCliente.cbotipoExit(Sender: TObject);
begin
        (sender as TwwDBcomboBOX).color := clWindow;


          IF cbotipo.ItemIndex = 0 THEN begin
             Label40.Caption:= 'Largura' ;
             Label39.Caption:= '(L):'  ;
             //Label39.left:= 100 ;
                        

          end else begin
             Label40.Caption := 'Altura' ;
             Label39.Caption:= '(A):'  ;
             ///Label39.left:= 89  ;

          end ;



end;

procedure TCliente.wwDBEdit6Exit(Sender: TObject);
begin
        (sender as twwDBEdit).color := clWindow;

   If (T_AreaSimul.State = dsEdit) or (T_AreaSimul.State = dsInsert) then begin
        IF (T_AreaSimulOrientacao.asstring = 'H') then begin
            ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
            IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then
                T_AreaSimulRegua_id.Asinteger := 6;
        end ;

        IF (T_AreaSimulOrientacao.asstring = 'L') then begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                  T_AreaSimulRegua_id.Asinteger := 7;

              end else T_AreaSimulRegua_id.Asinteger := 6;
        end ;

        IF (T_AreaSimulOrientacao.asstring = 'T') then begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                  T_AreaSimulRegua_id.Asinteger := 7;

              end else T_AreaSimulRegua_id.Asinteger := 6;
        end ;

        IF (T_AreaSimulOrientacao.asstring = 'V') then begin
            ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
            IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then
                T_AreaSimulRegua_id.Asinteger := 6;
        end ;
   end ;


end;

procedure TCliente.wwDBEdit6Enter(Sender: TObject);
begin
        (sender as twwDBEdit).color := clAqua;
end;

procedure TCliente.wwDBEdit7Enter(Sender: TObject);
begin
        (sender as twwDBEdit).color := clAqua;
end;

procedure TCliente.wwDBEdit8Enter(Sender: TObject);
begin
        (sender as twwDBEdit).color := clAqua;
end;

procedure TCliente.wwDBEdit7Exit(Sender: TObject);
var
  CLAUSULASQL : string ;

begin
  If (T_AreaSimul.State = dsEdit) or (T_AreaSimul.State = dsInsert) then begin

      IF T_AreaSimulComprimento.asstring  <> '' then begin

          IF (T_AreaSimulOrientacao.asstring = 'H') then begin
             ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
             IF (STRtoFLOAT(ARR) >= (2.20)  ) then T_AreaSimulRegua_id.Asinteger := 6 ;
          end ;


          IF (T_AreaSimulOrientacao.asstring = 'H') then begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF (STRtoFLOAT(ARR)  <= (1.10)) then T_AreaSimulRegua_id.Asinteger := 7;
          end ;

          IF (T_AreaSimulOrientacao.asstring = 'H') then begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then T_AreaSimulRegua_id.Asinteger := 6;
          end ;


          IF (T_AreaSimulOrientacao.asstring = 'L') then begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                  T_AreaSimulRegua_id.Asinteger := 7;

              end else T_AreaSimulRegua_id.Asinteger := 6;
          end ;
      end ;


      IF T_AreaSimulLargura.asstring  <> '' then begin

            HIPO := Sqrt( SQR(T_AreaSimulLargura.asfloat) + SQR(T_AreaSimulComprimento.asfloat) ) ;

          IF (T_AreaSimulOrientacao.asstring = 'V') then  begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF (STRtoFLOAT(ARR) >= (2.20)) then T_AreaSimulRegua_id.Asinteger := 6;

          end ;

          IF (T_AreaSimulOrientacao.asstring = 'V') then  begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF (STRtoFLOAT(ARR) <= (1.10)) then T_AreaSimulRegua_id.Asinteger := 7;
          end ;

          IF (T_AreaSimulOrientacao.asstring = 'V') then begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then T_AreaSimulRegua_id.Asinteger := 6;
          end ;


          IF (T_AreaSimulOrientacao.asstring = 'D') then  begin
             ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;

              IF (STRtoFLOAT(ARR) >= (2.20)) and
                 (HIPO > (2.20)) then T_AreaSimulRegua_id.Asinteger := 6;

          end ;


          IF (T_AreaSimulOrientacao.asstring = 'T') then begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                  T_AreaSimulRegua_id.Asinteger := 7;

              end else T_AreaSimulRegua_id.Asinteger := 6;
          end ;

      end ;



  end ;

        (sender as twwDBEdit).color := clWindow;
end;

procedure TCliente.wwDBEdit8Exit(Sender: TObject);
begin
        (sender as twwDBEdit).color := clWindow;
end;

procedure TCliente.T_SimulacaoNewRecord(DataSet: TDataSet);
begin
        T_SimulacaoData_Simul.AsDateTime := Date();

       
end;

procedure TCliente.T_AreaSimulBeforePost(DataSet: TDataSet);
begin

     ///IF DBRadioGroup3.visible = true then begin

     IF wwDBComboBox6.enabled = true then begin
       /// IF  DBRadioGroup3.itemindex  = -1 then begin

       IF wwDBComboBox6.visible = true then begin
           If wwDBComboBox6.itemindex = -1 then begin
                messagebox(0,'É obrigatório o preenchimento do campo Orçamento c/ Sarrafos ? ','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
                TabbedNotebook1.PageIndex := 1;
                ///DBRadioGroup3.SetFocus;

                wwDBComboBox6.setfocus;
                abort ;
            end;
       end  ;
     end ;

      IF  trim(cbotipo.Text) = '' then begin
          messagebox(0,'É obrigatório o preenchimento do campo Tipo de Instalação ','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
          TabbedNotebook1.PageIndex := 1;
          cbotipo.SetFocus;
          abort ;
      end;


      IF (wwDBEdit6.text  = '')  then  begin
            messagebox(0,'Comprimento é campo de preenchimento obrigatório !','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
            TabbedNotebook1.PageIndex := 1;
            wwDBEdit6.SetFocus;
            abort ;
       end ;

       IF (wwDBEdit7.text  = '')  then  begin
            messagebox(0,'Largura / Altura  é campo de preenchimento obrigatório !','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
            TabbedNotebook1.PageIndex := 1;
            wwDBEdit7.SetFocus;
            abort ;
       end ;


       IF (wwDBEdit8.text  = '')  then  begin
            messagebox(0,'Área é campo de preenchimento obrigatório !','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
            TabbedNotebook1.PageIndex := 1;
            wwDBEdit8.SetFocus;
            abort ;
       end ;

       if  wwDBLookupCombo1.Text = '' then begin
               messagebox(0,'Favor Selecionar um Padrão !!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
               TabbedNotebook1.PageIndex := 1;
               wwDBLookupCombo1.SetFocus;
               abort ;
       end;

        if T_AreaSimulTipo_Area.AsString <> '1' then begin
          if   cboorientacao.Text = '' then begin
               messagebox(0,'Favor Selecionar uma Paginação da Régua!!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
               TabbedNotebook1.PageIndex := 1;
               cboorientacao.SetFocus;
               abort ;
          end
        end else begin
           if  wwDBLookupCombo2.Text = '' then begin
               messagebox(0,'Favor Selecionar uma Paginação da Régua!!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
               TabbedNotebook1.PageIndex := 1;
               wwDBLookupCombo2.SetFocus;
               abort ;
          end;
        end ;



        if cboRegua.Text = '' then begin
            messagebox(0,'Favor Selecionar uma Régua!!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
            TabbedNotebook1.PageIndex := 1;
            cboRegua.SetFocus;
            abort ;
        end;




      if RadioGroup1.ItemIndex = 0 then
      begin
         T_AreaSimulFil_Est.AsInteger := 100;
         T_AreaSimulFil_Lar.AsInteger := 0;
      END;

      if RadioGroup1.ItemIndex = 1 then
      begin
         T_AreaSimulFil_Lar.AsInteger := 100;
         T_AreaSimulFil_Est.AsInteger := 0;
      END;


        If RadioGroup1.itemindex = 2 then begin
          if  T_AreaSimulFil_Lar.AsString = '' then begin
              messagebox(0,'Campo %Filete Largo está Vazio!!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
              TabbedNotebook1.PageIndex := 1;
              wwDBEdit3.SetFocus;
              abort ;
          end;

          if T_AreaSimulFil_Est.AsString = '' then begin
              messagebox(0,'Campo %Filete Estreito está Vazio!!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
              TabbedNotebook1.PageIndex := 1;
              wwDBEdit5.SetFocus;
              abort ;
         end;

            if  T_AreaSimulFil_Lar.asinteger < 0 then begin
                messagebox(0,'Campo %Filete está menor que 0 !!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
                 TabbedNotebook1.PageIndex := 1;
                 wwDBEdit5.SetFocus;
                 abort ;
             end;

            if  T_AreaSimulFil_Est.AsInteger < 0 then begin
                 messagebox(0,'Campo %Filete Estreito está menor que 0 !!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
                 TabbedNotebook1.PageIndex := 1;
                 wwDBEdit3.SetFocus;
                 abort ;
               end;

           if  T_AreaSimulFil_Lar.asinteger + T_AreaSimulFil_Est.AsInteger <>100 then begin
                messagebox(0,'Os Campos, %Filete Estreito e %Filete Largo estão com Valores Invalidos !!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));
                TabbedNotebook1.PageIndex := 1;
                wwDBEdit3.SetFocus;
                abort ;

               end;



     end ;

    If  (T_AreaSimul.State <> dsINSERT) then
         AREA_SIMUL :=  T_AreaSimulArea_Simul_ID.asstring  ;



       



end;

procedure TCliente.RadioGroup1Change(Sender: TObject);
begin
     if RadioGroup1.ItemIndex = 0 then begin
         GroupBox2.Visible := False;
       //  label15.Caption := 'Filete Estreito';
         //label8.Top := 120;///115;
         ///cboorientacao.Top := 120;///115;
         //label9.top := 153;///143;
        ///cboRegua.Top := 153;///143;
     end;
     if RadioGroup1.ItemIndex = 1 then begin
         GroupBox2.Visible := False;
///         label15.caption := 'Filete Largo';
         //label8.Top := 120;///115;
         ///cboorientacao.Top := 120;///115;
         //label9.top := 153;///143;
         //cboRegua.Top := 153;///143;
     end;
      if RadioGroup1.ItemIndex = 2 then  begin
         GroupBox2.Visible := True;

         //label8.Top := 162;////158;
         /// cboorientacao.Top := 158;///154;
         //label9.top := 200;//196;
        // cboRegua.Top := 196;//192;
      end;


        If (T_AreaSimul.State = dsInsert) or (T_AreaSimul.State = dsEdit) then
        Begin
                If  RadioGroup1.ItemIndex = 0 then
                        T_AreaSimulDescTpFil.AsString := 'Estreito'
                Else  If  RadioGroup1.ItemIndex = 1 then
                        T_AreaSimulDescTpFil.AsString := 'Largo'
                Else  If  RadioGroup1.ItemIndex = 2 then
                        T_AreaSimulDescTpFil.AsString := 'Misto'
        End;


        Grid.RefreshDisplay;
end;

procedure TCliente.RadioGroup1Click(Sender: TObject);
begin


    If RadioGroup1.itemindex = 2 then begin
       T_AREASIMUL.edit;
       T_AreaSimulFil_Est.asfloat := 50;
       T_AreaSimulFil_Lar.asfloat := 50;
    end;


end;

procedure TCliente.DS_AreaSimulDataChange(Sender: TObject; Field: TField);
begin

  ///IF cbotipo.text <> '' then begin
          if RadioGroup1.ItemIndex = 0 then
             GroupBox2.Visible := False;
          if RadioGroup1.ItemIndex = 1 then
             GroupBox2.Visible := False;
          if RadioGroup1.ItemIndex = 2 then
             GroupBox2.Visible := True;

          if RadioGroup1.ItemIndex = -1 then
             GroupBox2.Visible := False;


          IF cbotipo.itemindex = 0 then begin



              IF (T_AreaSimulOrientacao.asstring = 'T') then begin
                  ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
                  IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                     /// T_AreaSimulRegua_id.Asinteger := 7;
                      cboRegua.enabled := true  ;
                  end else cboRegua.enabled := false  ;
              end else begin
                  IF (T_AreaSimulOrientacao.asstring = 'L') then begin
                      ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
                      IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                         /// T_AreaSimulRegua_id.Asinteger := 7;
                          cboRegua.enabled := true  ;
                      end else cboRegua.enabled := false  ;
                  end else cboRegua.enabled := false  ;
              end ;


             cboorientacao.visible := false  ;
             wwDBLookupCombo2.visible := true  ;

             IF wwDBLookupCombo2.text <> '' then  DBImage2.visible  := true  ;
             DBImage1.visible  := false  ;
          end else begin

             cboRegua.enabled := true  ;

             cboorientacao.visible := true  ;
             wwDBLookupCombo2.visible := false  ;


             IF cboorientacao.text <> '' then  DBImage1.visible := true  ;
             DBImage2.visible := false  ;
          end ;

          IF ((wwDBEdit6.text  <> '') and
              (wwDBEdit7.text  <> '') and
              (wwDBEdit8.text  <> ''))  then  begin

               IF cbotipo.itemindex = 0 then begin
                  cboorientacao.enabled    := false;
                  wwDBLookupCombo2.enabled := True ;


                  IF (T_AreaSimulOrientacao.asstring = 'T') then begin
                      ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
                      IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin

                        ///  T_AreaSimulRegua_id.Asinteger := 7;
                          cboRegua.enabled := true  ;
                      end else cboRegua.enabled := false  ;
                  end else begin
                      IF (T_AreaSimulOrientacao.asstring = 'L') then begin
                          ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
                          IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                             /// T_AreaSimulRegua_id.Asinteger := 7;
                              cboRegua.enabled := true  ;
                          end else cboRegua.enabled := false  ;
                      end else cboRegua.enabled := false  ;
                  end ;

               end else begin

                  cboorientacao.enabled    := true;
                  wwDBLookupCombo2.enabled := false ;
                  cboREGUA.enabled := True ;
               end  ;


          end else begin
               ///cboorientacao.text := '' ;
              IF cbotipo.itemindex <> 0 then  cboREGUA.text := '' ;

              cboorientacao.enabled := false ;
              wwDBLookupCombo2.enabled := false ;
              cboREGUA.enabled := false ;
          end ;
  ///end ;

         IF  T_SimulacaoSimul_ID.asstring  <> '' then begin
               Q_AUX.close ;
               Q_AUX.Sql.Clear ;
               Q_AUX.Sql.Add( ' select A.PDR_ID,B.PDR_DESCRICAO from area_SIMUL A,PADRAO B  ' ) ;
               Q_AUX.Sql.Add( ' where NUM_FIL_LAR > 0 ' ) ;
               Q_AUX.Sql.Add( ' and A.PDR_ID = B.PDR_ID ' ) ;
               Q_AUX.Sql.Add( ' and A.SIMUL_ID = ' + T_SimulacaoSimul_ID.asstring  ) ;
               Q_AUX.open ;

               IF Q_AUX.fieldbyname('PDR_DESCRICAO').asstring <> '' then
                  Label28.Caption := Q_AUX.fieldbyname('PDR_DESCRICAO').asstring
                else
                  Label28.Caption := '' ;


               Q_AUX.close ;
               Q_AUX.Sql.Clear ;
               Q_AUX.Sql.Add( ' select A.PDR_ID,B.PDR_DESCRICAO from area_SIMUL A,PADRAO B  ' ) ;
               Q_AUX.Sql.Add( ' where NUM_FIL_EST > 0 ' ) ;
               Q_AUX.Sql.Add( ' and A.PDR_ID = B.PDR_ID ' ) ;
               Q_AUX.Sql.Add( ' and A.SIMUL_ID = ' + T_SimulacaoSimul_ID.asstring  ) ;
               Q_AUX.open ;

               IF Q_AUX.fieldbyname('PDR_DESCRICAO').asstring <> '' then
                  Label29.Caption := Q_AUX.fieldbyname('PDR_DESCRICAO').asstring
                else
                 Label29.Caption := '' ;   {opo}
         end ;






          IF cbotipo.ItemIndex = 0 THEN begin
             Label40.Caption:= 'Largura' ;
             Label39.Caption:= '(L):'  ;
             //Label39.left:= 100                     ;
          end else begin
             Label40.Caption := 'Altura' ;
             Label39.Caption:= '(A):'  ;
             ///Label39.left:= 89  ;
          end ;

     {  IF  (T_AreaSimul.State <> dsinsert)  then begin
            IF (T_AREASARRACOMSARRAFOS.asstring = 'S') then
                 wwDBComboBox6.itemindex := 0  ;
            IF (T_AREASARRACOMSARRAFOS.asstring = 'N') then
                 wwDBComboBox6.itemindex := 1  ;
            IF (T_AREASARRACOMSARRAFOS.asstring = '') then
                 wwDBComboBox6.itemindex := 0  ;
        end  ;  }

            Q_AUX2.close;
            Q_AUX2.Sql.Clear;
            Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
            Q_AUX2.open;

            ///IF (Q_AUX2.fieldbyname('ULT').asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin
            IF (T_AreaSimulArea_Simul_ID.asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger){  and
               (T_ULTULT_AREA_SIMUL_ID.asstring  <> '' ) } then begin
                  // wwDBComboBox6.visible := true ;
                  // PANEL23.visible := false ;

                       IF cbotipo.ItemIndex = 0 THEN begin
                          PANEL9.visible  := true ;
                          wwDBComboBox6.visible := false ;
                          PANEL23.visible := false
                       end else begin
                          PANEL9.visible := false ;
                          wwDBComboBox6.visible := true  ;
                          PANEL23.visible := false
                       end ;





                     IF wwDBComboBox6.itemindex = 1 then begin

                         Label42.caption := 'Sem Sarrafos' ;

                      end else begin
                         Label42.caption := 'Sarrafo ou Perfil Metálico F 530' ;

                      end ;
                ///end ;
            end else begin
////                 Label41.visible := true ;
                  { IF (T_AreaSimulArea_Simul_ID.asinteger  <> 0) then begin
                        wwDBComboBox6.itemindex := 0  ;
                        wwDBComboBox6.enabled := false ;
                   end else    wwDBComboBox6.itemindex := -1  ;    }

                   //// DBradioGroup3.visible := false ;
                   /// Panel22.VISIBLE := false ;

                    {IF T_AreaSimulArea_Simul_ID.asinteger <> 0 then begin
                       wwDBComboBox6.visible := false;
                       PANEL23.visible := true ;
                       PANEL9.visible := false ;
                    end else  begin
                       PANEL23.visible := false ;
                       IF cbotipo.ItemIndex = 0 THEN begin
                          PANEL9.visible := true ;
                          wwDBComboBox6.visible := false ;
                       end else begin
                          PANEL9.visible := false ;
                          wwDBComboBox6.visible := true  ;
                       end ;
                    end ;  }
                    IF (T_AreaSimulArea_Simul_ID.asstring = '') then begin
                       //PANEL23.visible := false ;
                       //PANEL9.visible := false ;
                       //wwDBComboBox6.visible := true  ;

                      IF cbotipo.ItemIndex = 0 THEN begin
                          PANEL9.visible  := true ;
                          wwDBComboBox6.visible := false ;
                          PANEL23.visible := false
                       end else begin
                          PANEL9.visible := false ;
                          wwDBComboBox6.visible := true  ;
                          PANEL23.visible := false
                       end ;



                    end else begin
                       PANEL23.visible := true ;
                       PANEL9.visible := false ;
                       wwDBComboBox6.visible := false  ;
                    end ;
                    Label42.caption := 'Sarrafo ou Perfil Metálico F 530' ;
                    ////Label43.caption := 'Orçto. com Sarrafos' ;


            end ;





end;

procedure TCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if  key = #13 then
      begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;

end;

procedure TCliente.T_AreaSimulAreaChange(Sender: TField);
var Total:Double;
begin
        If T_AreaSimul.State = dsInsert then
        Begin
                Total := T_AreaSimulArea.AsFloat + T_TOTAREATOTAREA.AsFloat;
                dbTot.Text := FormatFloat('###,###,##0.00',Total);
        End;
end;

Procedure TCliente.Atualiza_TotArea;
Var SQL:String;
Begin
        If T_SimulacaoSimul_Id.AsString <> '' then
        Begin
                SQL := 'SELECT 	        SUM(AREA) TOTAREA ' +
                       ' FROM 		AREA_SIMUL         ' +
                       ' WHERE          SIMUL_ID = ' + T_SimulacaoSimul_Id.AsString;

                T_TotArea.Close;
                T_TotArea.Query.Clear;
                T_TotArea.Query.Add(SQL);
                T_TotArea.Open;
        End;
End;

procedure TCliente.T_AreaSimulAfterPost(DataSet: TDataSet);
var
  APR    : Real;
  RESULT : Integer;
begin
      ///IF DBRadioGroup3.visible = true then begin



      {

       Q_AUX2.close;
       Q_AUX2.Sql.Clear;
       Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
       Q_AUX2.open;


      IF (Q_AUX2.fieldbyname('ULT').asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin

            ///IF DBRadioGroup3.itemindex = 1 then begin

            IF wwDBComboBox6.itemindex = 1  then begin
               Q_AUX2.close;
               Q_AUX2.Sql.Clear;
               Q_AUX2.Sql.Add(' select count(*) as qtde from Acab_Simul A,ACABAMENTO B ') ;
               Q_AUX2.Sql.Add(' where B.COMSARRAFO    = ' + '''' + 'S' + '''') ;
               Q_AUX2.Sql.Add(' and   A.Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring) ;
               Q_AUX2.Sql.Add(' and   B.ACAB_ID = A.ACAB_Id ' ) ;
               Q_AUX2.open;

               IF (Q_AUX2.fieldbyname('qtde').asinteger > 0)  then begin

                  if MessageDlg('Existe Acabamento com Sarrafo !  Caso permaneça c/ esta opção os mesmos serão excluídos, confirma ?'
                      ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then
                      abort ;

                     T_ACABSIMUL.first ;
                     while not T_ACABSIMUL.eof do begin

                           Q_AUX2.close;
                           Q_AUX2.Sql.Clear;
                           Q_AUX2.Sql.Add(' select COMSARRAFO from ACABAMENTO  ') ;
                           Q_AUX2.Sql.Add(' where  ACAB_ID = ' + T_AcabSimulAcab_ID.asstring ) ;
                           Q_AUX2.open;

                           IF (Q_AUX2.fieldbyname('COMSARRAFO').asstring = 'S')  then
                               T_ACABSIMUL.delete ;
                    end ;
               end ;
            end else begin
               Q_AUX2.close;
               Q_AUX2.Sql.Clear;
               Q_AUX2.Sql.Add(' select count(*) as qtde from Acab_Simul A,ACABAMENTO B ') ;
               Q_AUX2.Sql.Add(' where B.COMSARRAFO = ' + '''' + 'N' + '''') ;
               Q_AUX2.Sql.Add(' and   A.Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring) ;
               Q_AUX2.Sql.Add(' and   B.ACAB_ID = A.ACAB_Id ' ) ;
               Q_AUX2.open;

               IF (Q_AUX2.fieldbyname('qtde').asinteger > 0)  then begin

                  if MessageDlg('Existe Acabamento sem Sarrafo !  Caso permaneça c/ esta opção os mesmos serão excluídos, confirma ?'
                      ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then
                      abort ;

                     T_ACABSIMUL.first ;
                     while not T_ACABSIMUL.eof do begin

                           Q_AUX2.close;
                           Q_AUX2.Sql.Clear;
                           Q_AUX2.Sql.Add(' select COMSARRAFO from ACABAMENTO  ') ;
                           Q_AUX2.Sql.Add(' where  ACAB_ID = ' + T_AcabSimulAcab_ID.asstring ) ;
                           Q_AUX2.open;

                           IF (Q_AUX2.fieldbyname('COMSARRAFO').asstring = 'N')  then
                               T_ACABSIMUL.delete ;
                    end ;
               end ;

            end ;
      end ;   dfdfdf  6tt}




         IF T_AREASARRAAREA_SIMUL_ID.asstring = '' then begin
            Q_AUX2.close;
            Q_AUX2.Sql.Clear;
            Q_AUX2.Sql.Add(' UPDATE AREA_SARRAFO set Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring );
            Q_AUX2.Sql.Add(' where  Area_Simul_ID is null');
            Q_AUX2.ExecSql;


            T_AREASARRA.close;
            T_AREASARRA.open;
            
            Q_AREASARRAGrid.close ;
            Q_AREASARRAGrid.open ;

            Q_AREASARRAGrid2.close ;
            Q_AREASARRAGrid2.open ;

         end ;









        Atualiza_TotArea;
        if RadioGroup1.ItemIndex = 0 then
           LARGFILETE := (T_AreaSimulFil_Est.asfloat * (T_ParametrosFILETE_ESTREITO.asfloat/100));

        if RadioGroup1.ItemIndex = 1 then
           LARGFILETE := (T_AreaSimulFil_LAR.asfloat * (T_ParametrosFILETE_LARGO.asfloat/100));

        if RadioGroup1.ItemIndex = 2 then
           LARGFILETE := (T_AreaSimulFil_LAR.asfloat * (T_ParametrosFILETE_LARGO.asfloat/100) +
                          T_AreaSimulFil_Est.asfloat * (T_ParametrosFILETE_ESTREITO.asfloat/100));


        IF cboorientacao.text <> '' then
           PERDA :=  T_PAGPERDA.asfloat ;

        IF wwDBLookupCombo2.text <> '' then
           PERDA :=  T_PAG2PERDA.asfloat ;
                  






        //Se for Teto
        if cboTipo.Field.Value = 1 then  begin
            if (T_AreaSimulOrientacao.asstring  = 'T')  then begin
                label23.Caption := 'Teto';
                 T_AreaSimulaux.Edit;



                 IF ((VALE = 'S') or (T_AREASARRACOMSARRAFOS.asstring = 'S')) then begin
                    T_AreaSimulauxNum_Sarrafos.AsFloat := (round(((T_AreaSimulCOMPRIMENTO.AsFloat/0.60) + 0.49999)+1) *
                                                          T_AreaSimulLargura.asfloat)  +
                                                          (round(((T_AreaSimulLargura.AsFloat/0.60) + 0.49999)+1)  *
                                                          T_AreaSimulCOMPRIMENTO.AsFloat) ;
                 end else T_AreaSimulauxNum_Sarrafos.AsFloat := 0  ;

                 //Numero de Réguas
                 //numero de Faixas
                   NUMFAIXAS := round((T_AreaSimulComprimento.AsFloat/(T_ReguaLargura.asfloat + LARGFILETE)) * (1 + PERDA/100) + 0.49999) ;

                   IF (T_AreaSimulLargura.asfloat <= 2.20) then
                      QRF := 1
                    else  QRF := round((T_AreaSimulLargura.asfloat/1.40) + 0.49999) ;

                   T_AreaSimulauxNum_Reguas.asfloat := (NUMFAIXAS * QRF) ;
            end ;


            if (T_AreaSimulOrientacao.asstring  = 'L')  or (T_AreaSimulOrientacao.asstring  = 'G') then begin
                label23.Caption := 'Teto';
                T_AreaSimulaux.Edit;

               IF ((VALE = 'S') or (T_AREASARRACOMSARRAFOS.asstring = 'S')) then begin
                    T_AreaSimulauxNum_Sarrafos.AsFloat := (round(((T_AreaSimulCOMPRIMENTO.AsFloat/0.60) + 0.49999)+1) *
                                                         T_AreaSimulLargura.asfloat)  +
                                                          (round(((T_AreaSimulLargura.AsFloat/0.60) + 0.49999)+1)  *
                                                          T_AreaSimulCOMPRIMENTO.AsFloat) ;
               end else T_AreaSimulauxNum_Sarrafos.AsFloat  := 0  ;


                   //Numero de Réguas
                   //numero de Faixas
                   NUMFAIXAS := round((T_AreaSimulLargura.AsFloat/(T_ReguaLargura.asfloat + LARGFILETE)) * (1 + PERDA/100) + 0.49999) ;

                   IF (T_AreaSimulCOMPRIMENTO.asfloat <= 2.20) then
                      QRF := 1
                    else  QRF := round((T_AreaSimulCOMPRIMENTO.asfloat/1.40) + 0.49999) ;

                   T_AreaSimulauxNum_Reguas.asfloat := (NUMFAIXAS * QRF) ;


            end ;
        end ;


        //Se for Parede Inteira
        if (cboTipo.Field.Value = 2) or (cboTipo.Field.Value = 3) then begin
           if (T_AreaSimulOrientacao.asstring  = 'V') then begin
                label23.Caption := 'Parede Inteira';
                T_AreaSimulaux.Edit;

               IF ((VALE = 'S') or (T_AREASARRACOMSARRAFOS.asstring = 'S')) then begin
                    T_AreaSimulauxNum_Sarrafos.AsFloat := (round(((T_AreaSimulLargura.AsFloat/0.60) + 0.49999)+1) *
                                                          T_AreaSimulCOMPRIMENTO.asfloat) {+ (2*T_AreaSimulLargura.AsFloat) } ;
               end else T_AreaSimulauxNum_Sarrafos.AsFloat :=0  ;
                 //Numero de Réguas
                   //numero de Faixas
                   NUMFAIXAS := round((T_AreaSimulComprimento.AsFloat/(T_ReguaLargura.asfloat + LARGFILETE)) * (1 + PERDA/100) + 0.49999) ;

                   IF (T_AreaSimulLargura.asfloat <= 2.20) then
                      QRF := 1
                    else  QRF := round((T_AreaSimulLargura.asfloat/1.40) + 0.49999) ;




                    ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
                    IF (STRtoFLOAT(ARR) <= (1.10)) then
                        T_AreaSimulauxNum_Reguas.asfloat := ((NUMFAIXAS * QRF)/2)
                    else
                         T_AreaSimulauxNum_Reguas.asfloat := (NUMFAIXAS * QRF) ;


           end ;
           if (T_AreaSimulOrientacao.asstring  = 'H') or (T_AreaSimulOrientacao.asstring  = 'D') then begin
                label23.Caption := 'Parede não Inteira';
                T_AreaSimulaux.Edit;

                IF ((VALE = 'S') or (T_AREASARRACOMSARRAFOS.asstring = 'S')) then begin
                    T_AreaSimulauxNum_Sarrafos.AsFloat := (round(((T_AreaSimulCOMPRIMENTO.AsFloat/0.60) + 0.49999)+1) *
                                                          T_AreaSimulLargura.asfloat) {+ (2*T_AreaSimulCOMPRIMENTO.AsFloat) } ;
                end else   T_AreaSimulauxNum_Sarrafos.AsFloat := 0 ;



                 //Numero de Réguas
                   //numero de Faixas
                   NUMFAIXAS := round((T_AreaSimulLargura.AsFloat/(T_ReguaLargura.asfloat + LARGFILETE)) * (1 + PERDA/100) + 0.49999) ;

                   IF (T_AreaSimulCOMPRIMENTO.asfloat <= 2.20) then
                      QRF := 1
                    else  QRF := round((T_AreaSimulCOMPRIMENTO.asfloat/1.40) + 0.49999) ;

                    { IF ((T_AreaSimulCOMPRIMENTO.asfloat <= 2.20) and
                        (T_AreaSimulCOMPRIMENTO.asfloat > 1.10))  then
                      QRF := 1
                    else  QRF := 0.5;}



                    ARR := formatfloat('',T_AreaSimulCOMPRIMENTO.asfloat) ;
                    IF (STRtoFLOAT(ARR) <= (1.10)) then
                        T_AreaSimulauxNum_Reguas.asfloat := ((NUMFAIXAS * QRF)/2)
                    else
                         T_AreaSimulauxNum_Reguas.asfloat := (NUMFAIXAS * QRF) ;


           end ;
        end ;


        //Não é parede inteira, testar orientação
        {if (T_AreaSimulOrientacao.asstring  = 'V') or (T_AreaSimulOrientacao.asstring  = 'D') then
          begin
               //Meia parede
               if cboTipo.Field.Value = 3 then  begin
                  label23.Caption := '1/2 Parede';
                  T_AreaSimulaux.Edit;
                  T_AreaSimulauxNum_Sarrafos.AsFloat := round (T_AreaSimulComprimento.AsFloat * MeiaParede + 0.49999);
               end else begin
                  label23.Caption := '2/3 Parede';
                  T_AreaSimulaux.Edit;
                  T_AreaSimulauxNum_Sarrafos.AsFloat := round(T_AreaSimulComprimento.AsFloat * TercoParede + 0.49999);
               end
          end else begin
                 T_AreaSimulaux.Edit;
                 T_AreaSimulauxNum_Sarrafos.AsFloat := round(T_AreaSimulArea.AsFloat * KParede + 0.49999)
          end ;
      end ; }





//////////////////OUTRO CALCULO FILETES E REGUAS///////////////////////


       {APR:= T_ReguaLargura.AsFloat * T_ReguaComprimento.AsFloat;

        //Numero de Réguas
        T_AreaSimulauxNum_Reguas.AsFloat:=
          round((T_AreaSimulArea.AsFloat / APR) *
          (((1 + T_ParametrosMarSegFil_Est.AsFloat) *
          (T_AreaSimulFil_Est.AsFloat / filete) +
           (1 + T_ParametrosMarSegFil_Lar.AsFloat ) *
           (T_AreaSimulFil_Lar.AsFloat / Filete))) + 0.49999) ;   }


        {RESULT := T_AreaSimulauxNum_Reguas.Precision mod 2;
        If RESULT <> 0 then begin
           T_AreaSimulauxNum_Reguas.Value := T_AreaSimulauxNum_Reguas.Value -1;
        end;   }

        T_AreaSimulaux.edit ;
        //Numero de Filetes Largos
        T_AreaSimulauxNum_Fil_Lar.AsFloat := ((T_AreaSimulauxNum_Reguas.AsFloat - 1 )* T_AreaSimulFil_Lar.AsFloat / filete );

        //Numero de Filetes Estreitos
        T_AreaSimulauxNum_Fil_Est.AsFloat := ((T_AreaSimulauxNum_Reguas.AsFloat - 1) * T_AreaSimulFil_Est.AsFloat / Filete );




        IF T_AreaSimulFil_Est.asinteger = 0 then
           AREA_EST := 0
        else  begin
            If T_AreaSimulFil_Est.asinteger = 100 then
               AREA_EST := T_AreaSimulArea.AsFloat
            else
               AREA_EST := (T_AreaSimulArea.AsFloat*(T_AreaSimulFil_Est.AsFloat/100))  ;
        end ;

        IF T_AreaSimulFil_LAR.asinteger = 0 then
           AREA_LAR := 0
        else  begin
           If T_AreaSimulFil_LAR.asinteger = 100 then
               AREA_LAR := T_AreaSimulArea.AsFloat
            else
               AREA_LAR := (T_AreaSimulArea.AsFloat*(T_AreaSimulFil_LAR.AsFloat/100))  ;
        end ;
         //calculo de presilhas estava feito desta forma round ((AREA_LAR / T_ParametrosQtdePresilha_Metro.asinteger) + 0.49999); porém o Fernando(duratex Solicitou esta alteração)
           T_AreaSimulauxNum_Pres_Fil_Lar.asinteger :=  round ((AREA_LAR * T_ParametrosQtdePresilha_Metro.asinteger) + 0.49999);
           T_AreaSimulauxNum_Pres_Fil_Est.asinteger :=  round ((AREA_Est * T_ParametrosQtdePresilha_Metro.asinteger) + 0.49999);
           T_AreaSimulaux.post ;

        T_AreaSimul.close;
        T_AreaSimul.open;
        ////T_AreaSimul.findkey([AREA_SIMUL]);

       IF AREA_SIMUL <> '' then begin
        // T_AreaSimul.indexname := '' ;
         T_AreaSimul.findkey([AREA_SIMUL]) ;
        // T_AreaSimul.indexname := 'AREA_SIMUL_SIMUL_IDX' ;
         AREA_SIMUL := '' ;
      end else
         T_AreaSimul.last;


      IF wwDBComboBox6.enabled = true then begin

          IF T_AREASARRACOMSARRAFOS.asstring = '' then begin
                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' DELETE FROM AREA_SARRAFO ');
                    Q_AUX2.Sql.Add(' where AREA_SIMUL_ID is null');
                    Q_AUX2.ExecSql;

                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' insert into AREA_SARRAFO (AREA_SIMUL_ID,SIMUL_ID,COMSARRAFOS) ') ;
                    Q_AUX2.Sql.Add(' values ( ' );
                    Q_AUX2.Sql.Add( inttostr(T_AreaSimulArea_Simul_ID.asinteger) + ',');
                    Q_AUX2.Sql.Add( inttostr(T_AreaSimulSimul_ID.asinteger)+ ',');


                    IF VALE = 'S' then
                       Q_AUX2.Sql.Add( '''' + 'S' + '''' + ')' )
                      else
                       Q_AUX2.Sql.Add( '''' + 'N' + '''' + ')' )  ;


                    Q_AUX2.ExecSql;
          end ;
      end ;

      T_AREASARRA.close;
      T_AREASARRA.open ;

      Q_AREASARRAGrid.close ;
      Q_AREASARRAGrid.open ;

      Q_AREASARRAGrid2.close ;
      Q_AREASARRAGrid2.open ;


      VALE := '' ;




end;


procedure TCliente.T_AreaSimulAfterDelete(DataSet: TDataSet);
begin
      Atualiza_TotArea;

      If (DataSet).Eof then
        Bt_Excluir.Enabled := false
      Else
        Bt_Excluir.Enabled := true;

end;

procedure TCliente.wwDBEdit3Exit(Sender: TObject);
begin
     (sender as twwDBEdit).color := clWindow;


    If (T_AreaSimul.State = dsEdit) or (T_AreaSimul.State = dsinsert) then
        T_AreaSimulFil_Lar.AsInteger := 100 - T_AreaSimulFil_Est.AsInteger;

    If  T_AreaSimulFil_Est.AsString = '' then
        T_AreaSimulFil_Est.AsInteger := 0;


end;

procedure TCliente.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
       if TabbedNotebook1.PageIndex = 0 then
           txtnome.SetFocus;

       if  TabbedNotebook1.PageIndex = 1 then   begin
           ///cbotipo.SetFocus;
           ///IF DBRadioGroup3.visible = true then
              //DBRadioGroup3.setfocus

         {  IF wwDBComboBox6.enabled = true then
               wwDBComboBox6.setfocus
               else }
                 cbotipo.SetFocus ;
                 wwDBComboBox6.enabled := true ;
                
                { IF (T_AreaSimul.State = dsinsert) then
                     wwDBComboBox6.itemindex := -1 ;   }

       end ;

       if  TabbedNotebook1.PageIndex = 2 then
           WWDBGRID3.SETFOCUS;
end;





procedure TCliente.FormShow(Sender: TObject);
begin
        //Cliente.Left := ( Screen.Width - Cliente.Width  ) div 2;
       // Cliente.Top  := (Screen.Height - Cliente.Height ) div 2;
       // LARGURA:= Cliente.Left;
     //  ALTURA := Cliente.Top ;
        txtNome.SetFocus;

      
end;
procedure TCliente.cboDescAcaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        IF cboDescAca.text <> '' then begin
           wwDBGrid3.selectedfield := T_AcabSimulPerimetro ;

           DBImage3.Visible := true ;

        end else      DBImage3.Visible := false ;


           
end;

procedure TCliente.T_SimulacaoAfterPost(DataSet: TDataSet);
begin
    IF MODO_INSERT = 'S' then begin
//        TabbedNotebook1.pageindex := 1;
//        DBNavigator1.DataSource := DS_AreaSimul;
    end;

        MODO_INSERT := ''  ;
end;

procedure TCliente.T_SimulacaoBeforePost(DataSet: TDataSet);
begin
      IF T_Simulacao.state = dsINSERT then MODO_INSERT := 'S'  ;

      if txtnome.Text = '' then
      begin
         messagebox(0,'É obrigatório o preenchimento do campo Nome na Guia: Clientes','Lista de Materiais - Durawall',(mb_Ok + Mb_IconInformation + 8192));

         TabbedNotebook1.PageIndex := 0;
         txtnome.SetFocus;
         abort ;

     end;
end;

procedure TCliente.T_SimulacaoBeforeDelete(DataSet: TDataSet);
begin
        If MessageDlg('Confirma a exclusão do Cliente: ' +  T_SimulacaoNome_Cliente.asstring
          + '?',MtConfirmation,[MbYes,
        MbNo],0)=Mryes Then begin

                while not T_AREASIMUL.eof do
                      T_AREASIMUL.delete ;

                 while not T_ACABSIMUL.eof do
                      T_ACABSIMUL.delete ;
     end else
        abort;

end;

procedure TCliente.wwDBGrid3ColExit(Sender: TObject);
begin
        if wwdbgrid3.Selectedfield = T_AcabSimulPerimetro then
        begin
           T_ACABSIMUL.Edit;

          T_AcabSimulQuant_Barras.AsFloat := round(T_AcabSimulPerimetro.AsFloat / T_AcabComprimento.AsFloat + 0.49999);

       end;
end;

procedure TCliente.cboReguaExit(Sender: TObject);
begin
        (sender as twwDBLookupCombo).color := clWindow;
end;

procedure TCliente.cboReguaEnter(Sender: TObject);
begin
        (sender as twwDBLookupCombo).color := clAqua;
end;

procedure TCliente.DS_TOTREGUADataChange(Sender: TObject; Field: TField);
begin
     If Q_FILTOTLARGO.asstring = '' then
       /// DBText5.visible := false
       else
        /// DBText5.visible := true;

      If Q_FILTOTEST.asstring = '' then
       // DBText6.visible := false
       else
        /// DBText6.visible := true;

      If Q_FILTOTSARAFO.asstring = '' then
        DBText7.visible := false
       else
         DBText7.visible := true;

      If Q_FILTOTPRESEST.asstring = '' then
       /// DBText8.visible := false
       else
        /// DBText8.visible := true;

      If Q_FILTOTPRESLAR.asstring = '' then
       // DBText12.visible := false
       else
       //  DBText12.visible := true;   


     IF (Q_TOTREGUA.recordcount >= 1) then
        Panel7.visible := true
      else
         Panel7.visible := false;

      IF (Q_TOTREGUA.recordcount >= 2) then
         Panel15.visible := true
      else
         Panel15.visible := false;

      IF (Q_TOTREGUA.recordcount >= 3) then
         Panel16.visible := true
      else
         Panel16.visible := false;

      IF Q_TOTREGUAAREA_SIMUL_ID.asstring <> '' then begin
          Q_AUX2.close;
          Q_AUX2.Sql.Clear;
          Q_AUX2.Sql.Add('select COMSARRAFOS as  ULT from AREA_SARRAFO ' ) ;
          Q_AUX2.Sql.Add('where AREA_SIMUL_ID = '  + Q_TOTREGUAAREA_SIMUL_ID.asstring) ;
          Q_AUX2.open;

          IF  Q_AUX2.fieldbyname('ULT').asstring = 'S' then
             //// Label43.caption := 'Orçto. com Sarrafos' ;
          IF  Q_AUX2.fieldbyname('ULT').asstring = 'N' then
             //// Label43.caption := 'Orçto. sem Sarrafos' ;
          IF  Q_AUX2.fieldbyname('ULT').asstring = '' then
             //// Label43.caption := 'Orçto. com Sarrafos' ;
      end else ////Label43.caption := 'Orçto. com Sarrafos' ;

end;

procedure TCliente.Q_TOTREGUACalcFields(DataSet: TDataSet);
var
     PARTEINTEIRA   : integer ;
     PARTEFLOAT : real ;
     PARTESTR : string ;
begin
    ///calculo de reguas//
        PARTEINTEIRA   :=  Q_TOTREGUATOTCAIXA.asinteger ;

        IF  (Q_TOTREGUATOTCAIXA.Asfloat -(PARTEINTEIRA)) > 0 then
             Q_TOTREGUACAIXAINT.asinteger :=  (PARTEINTEIRA + 1)
        else
             Q_TOTREGUACAIXAINT.asinteger :=  PARTEINTEIRA  ;

     //////////////////////////////////////////
        PARTEINTEIRA   :=  Q_TOTREGUACAIXAINT.asinteger ;

     {  IF (Q_TOTREGUATIPO_AREA.asstring = '1') then begin

       end else begin
          If Q_TOTREGUAORIENTACAO.asstring =  'V' then begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF (STRtoFLOAT(ARR) <= (1.10)) then
                  Q_TOTREGUATotRegua2.AsFloat:= ((parteinteira * T_ReguaQuant_Caixa.AsFloat)/2)
               else    }
          Q_TOTREGUATotRegua2.AsFloat:= (parteinteira * T_ReguaQuant_Caixa.AsFloat);
       {   end else begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF (STRtoFLOAT(ARR) <= (1.10)) then
                  Q_TOTREGUATotRegua2.AsFloat:= ((parteinteira * T_ReguaQuant_Caixa.AsFloat)/2)

              else
                  Q_TOTREGUATotRegua2.AsFloat:= (parteinteira * T_ReguaQuant_Caixa.AsFloat);

          end ;

          IF  ((Q_TOTREGUATotRegua2.AsFloat > 0) and
               (T_ReguaQuant_Caixa.AsFloat > 0)) then begin

              PARTEFLOAT  :=  int(Q_TOTREGUATotRegua2.AsFloat/T_ReguaQuant_Caixa.AsFloat) ;
              PARTESTR :=  formatfloat('',PARTEFLOAT) ;
              PARTEINTEIRA := strtoint(PARTESTR) ;


              IF ((Q_TOTREGUATotRegua2.AsFloat/T_ReguaQuant_Caixa.AsFloat) > PARTEINTEIRA) then begin
                  PARTEINTEIRA :=  (PARTEINTEIRA + 1)  ;
                  Q_TOTREGUACAIXAINT.asinteger :=  PARTEINTEIRA  ;
              end else  Q_TOTREGUACAIXAINT.asinteger :=  PARTEINTEIRA  ;
           end ;    
       end ;   }


end;

procedure TCliente.Q_FILCalcFields(DataSet: TDataSet);
var
   PARTEINTEIRA2   : integer ;
begin
            //calculo de caixa de filete largo//  {000}
        PARTEINTEIRA2:=  Q_FILCAIXALARGO.asinteger ;

        IF  (Q_FILCAIXALARGO.Asfloat - (PARTEINTEIRA2)) > 0 then
             Q_FILCAIXALARGO2.asinteger:=  (PARTEINTEIRA2 + 1)
        else
             Q_FILCAIXALARGO2.asinteger:=  PARTEINTEIRA2  ;

          //calculo de caixa de filete estreito//

        PARTEINTEIRA2   :=  Q_FILCAIXAEST.asinteger ;

        IF  (Q_FILCAIXAEST.Asfloat - (PARTEINTEIRA2)) > 0 then
             Q_FILCAIXAESTT2.asinteger:=  (PARTEINTEIRA2 + 1)
        else
             Q_FILCAIXAESTT2.asinteger:=  PARTEINTEIRA2  ;

         //calculo de caixas de pres. largo//
        PARTEINTEIRA2:=  Q_FILTOTCXPRESLAR.asinteger ;

        IF  (Q_FILTOTCXPRESLAR.Asfloat - (PARTEINTEIRA2)) > 0 then
             Q_FILTOTCXPRESLAR2.asinteger:=  (PARTEINTEIRA2 + 1)
        else
             Q_FILTOTCXPRESLAR2.asinteger:=  (PARTEINTEIRA2);

        IF  Q_FILTOTCXPRESLAR.asfloat > 0 then
            PARTEINTEIRA2   := 1
        else
            PARTEINTEIRA2   :=  Q_FILTOTCXPRESLAR.asinteger ;

      //calculo de caixas de pres. estreitos//
        PARTEINTEIRA2   :=  Q_FILTOTCXPRESEST.asinteger ;

        IF (Q_FILTOTCXPRESEST.Asfloat - (PARTEINTEIRA2)) > 0 then
            Q_FILTOTCXPRESEST2.asinteger:=  (PARTEINTEIRA2 + 1)
        else
            Q_FILTOTCXPRESEST2.asinteger:=  (PARTEINTEIRA2);


        IF Q_FILTOTCXPRESEST.asfloat > 0 then
           PARTEINTEIRA2:= 1
        else
           PARTEINTEIRA2:=  Q_FILTOTCXPRESEST.asinteger ;

end ;

procedure TCliente.T_AreaSimulCalcFields(DataSet: TDataSet);
begin
        If  T_AreaSimulTipo_Fil.AsString = 'E'  then
                T_AreaSimulDescTpFil.AsString := 'Estreito'
        Else  If  T_AreaSimulTipo_Fil.AsString = 'L'  then
                T_AreaSimulDescTpFil.AsString := 'Largo'
        Else  If  T_AreaSimulTipo_Fil.AsString = 'M'  then
                T_AreaSimulDescTpFil.AsString := 'Misto'
        Else
                T_AreaSimulDescTpFil.AsString := '';
end;

procedure TCliente.wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
        If  (Key = '-') or (Key = 'e') or (Key = 'E') OR (kEY = ',') then
             Key := ' ';

         if (KEY = ',') and (length ((sender as twwdbedit).text)= 0) then
             key := ' ';

end;

procedure TCliente.wwDBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
        If (Key = 'E') or (Key = 'e') or (Key = '-') OR ( KEY = '+') then
            Key := ' ';

        if  (KEY = ',') and (length ((sender as twwdbedit).text)= 0) then
            key := ' ';

end;


procedure TCliente.Bt_IncluirClick(Sender: TObject);
begin
        //T_AcabSimul.First;
        DBNavigator1.BtnClick(nbinsert);
        
        ////IF DBNavigator1.datasource = DS_AreaSimul then
           ////// wwDBComboBox6.itemindex := -1  ;

        DBImage2.visible  := false  ;
        DBImage1.visible  := false  ;



end;

procedure TCliente.Bt_excluirClick(Sender: TObject);
begin
        DBNavigator1.BtnClick(nbdelete);
 end;

procedure TCliente.bt_gravarClick(Sender: TObject);
begin
        DBNavigator1.BtnClick(nbpost);

        {IF wwDBComboBox6.enabled = true then begin

          IF T_AREASARRACOMSARRAFOS.asstring = '' then begin
                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' DELETE FROM AREA_SARRAFO ');
                    Q_AUX2.Sql.Add(' where AREA_SIMUL_ID is null');
                    Q_AUX2.ExecSql;

                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' insert into AREA_SARRAFO (AREA_SIMUL_ID,SIMUL_ID,COMSARRAFOS) ') ;
                    Q_AUX2.Sql.Add(' values ( ' );
                    Q_AUX2.Sql.Add( inttostr(T_AreaSimulArea_Simul_ID.asinteger) + ',');
                    Q_AUX2.Sql.Add( inttostr(T_AreaSimulSimul_ID.asinteger)+ ',');


                    IF VALE = 'S' then
                       Q_AUX2.Sql.Add( '''' + 'S' + '''' + ')' )
                      else
                       Q_AUX2.Sql.Add( '''' + 'N' + '''' + ')' )  ;


                    Q_AUX2.ExecSql;
          end ;
      end ;

      T_AREASARRA.close;
      T_AREASARRA.open ;

      Q_AREASARRAGrid.close ;
      Q_AREASARRAGrid.open ;

      Q_AREASARRAGrid2.close ;
      Q_AREASARRAGrid2.open ;


      VALE := '' ;   }

end;

procedure TCliente.Bt_cancelarClick(Sender: TObject);
begin
        DBNavigator1.BtnClick(nbCancel);
        VALE := '' ;


        Q_AUX2.close;
        Q_AUX2.Sql.Clear;
        Q_AUX2.Sql.Add(' DELETE FROM AREA_SARRAFO ');
        Q_AUX2.Sql.Add(' where AREA_SIMUL_ID is null');
        Q_AUX2.ExecSql;

end;

procedure TCliente.SpeedButton4Click(Sender: TObject);
begin
      If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
          T_AREASIMUL.Post;


        VN := T_ULTULT_AREA_SIMUL_ID.asstring;
        SIMULACAO := T_SimulacaoSimul_ID.ASSTRING;


        Application.CreateForm(TRelatorioSimul ,RelatorioSimul);
        RelatorioSimul.QRelSimul.Preview;
        RelatorioSimul.Close;

end;

procedure TCliente.DS_SimulacaoStateChange(Sender: TObject);
begin

        if (sender as twwDataSource).state = dsbrowse then
        begin
             Bt_Incluir.Enabled := true;

        If (sender as twwDataSource).DataSet.EOF then
            Bt_excluir.Enabled := false
        Else
            Bt_excluir.Enabled := true;

            bt_Cancelar.enabled := FALSE ;
            bt_gravar.Enabled := FALSE;
            SBT_SAIR.Enabled := TRUE;
        end;

        if (sender as twwDataSource).state = dsEdit then
        begin
            bt_Excluir.enabled := FALSE ;
            bt_Cancelar.enabled := true ;
            bt_gravar.Enabled := true;
            SBT_SAIR.Enabled := TRUE;
        end;

        if (sender as twwDataSource).state = dsInsert then
        begin
            SBT_SAIR.Enabled := false;
            bt_Excluir.enabled := false ;
            bt_Cancelar.enabled := true ;
            bt_gravar.Enabled := true;
        end;

end;

procedure TCliente.wwDBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = 'E') or (Key = 'e') or (Key = '-') OR (KEY= ',') then
         Key := ' ';
end;

procedure TCliente.T_SimulacaoAfterDelete(DataSet: TDataSet);
begin
      If (DataSet).Eof then
        Bt_Excluir.Enabled := false
      Else
        Bt_Excluir.Enabled := true;

end;

procedure TCliente.T_AcabSimulAfterDelete(DataSet: TDataSet);
begin
      If (DataSet).Eof then
          Bt_Excluir.Enabled := false
      Else
          Bt_Excluir.Enabled := true;

end;

procedure TCliente.DS_AreaSimulStateChange(Sender: TObject);
begin
        if (sender as twwDataSource).state = dsbrowse then
        begin
            Bt_Incluir.Enabled := true;

        If (sender as twwDataSource).DataSet.EOF then
            Bt_excluir.Enabled := false
        Else
            Bt_excluir.Enabled := true;

            bt_Cancelar.enabled := FALSE ;
            bt_gravar.Enabled := FALSE;
            SBT_SAIR.Enabled := TRUE;
        end;

        if (sender as twwDataSource).state = dsEdit then
        begin
            bt_Excluir.enabled := FALSE ;
            bt_Cancelar.enabled := true ;
            bt_gravar.Enabled := true;
            SBT_SAIR.Enabled := TRUE;
        end;

        if (sender as twwDataSource).state = dsInsert then
        begin
            SBT_SAIR.Enabled := false;
            bt_Excluir.enabled := false ;
            bt_Cancelar.enabled := true ;
            bt_gravar.Enabled := true;
        end;



       { IF  (T_AreaSimul.State <> dsinsert)  then begin

            IF (T_AREASARRACOMSARRAFOS.asstring = 'S') then
                 wwDBComboBox6.itemindex := 0  ;

            IF (T_AREASARRACOMSARRAFOS.asstring = 'N') then
                 wwDBComboBox6.itemindex := 1  ;

            IF T_AreaSimulArea_Simul_ID.asinteger <> 0 then begin
              IF (T_AREASARRACOMSARRAFOS.asstring = '') then
                   wwDBComboBox6.itemindex := 0  ;
            end ;        
        end  ;     }


end;

procedure TCliente.DS_AcabSimulStateChange(Sender: TObject);
begin
        if  (sender as twwDataSource).state = dsbrowse then
        begin
             Bt_Incluir.Enabled := true;

        If (sender as twwDataSource).DataSet.EOF then
                Bt_excluir.Enabled := false
        Else
                Bt_excluir.Enabled := true;

                bt_Cancelar.enabled := FALSE ;
                bt_gravar.Enabled := FALSE;
                SBT_SAIR.Enabled := TRUE;
        end;

        if (sender as twwDataSource).state = dsEdit then
        begin
            bt_Excluir.enabled := FALSE ;
            bt_Cancelar.enabled := true ;
            bt_gravar.Enabled := true;
            SBT_SAIR.Enabled := TRUE;
        end;

        if (sender as twwDataSource).state = dsInsert then
        begin
            SBT_SAIR.Enabled := false;
            bt_Excluir.enabled := false ;
            bt_Cancelar.enabled := true ;
            bt_gravar.Enabled := true;
        end;

end;

procedure TCliente.wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
        If (Key = 'E') or (Key = 'e') or (Key = '-') OR (KEY= ',') then
            Key := ' ';
end;

procedure TCliente.DS_SimulacaoDataChange(Sender: TObject; Field: TField);
begin
    if (T_Simulacao.State = dsinsert) or (T_Simulacao.State = dsedit) then
        SpeedButton1.Enabled := false
    else
        SpeedButton1.Enabled := true;


         

end;

procedure TCliente.DS_AcabSimulDataChange(Sender: TObject; Field: TField);
begin
     if (T_Simulacao.State = dsinsert) or (T_Simulacao.State = dsedit) then
         SpeedButton1.Enabled := false
    else
         SpeedButton1.Enabled := true;



   //IF T_AcabSimulAcab_ID.asstring <> '' then

   IF cboDescAca.text = '' then
       DBImage3.Visible := false
  else begin
       IF not Q_TPAC.eof then
         Q_TPAC.locate('Acab_ID',T_AcabSimulAcab_ID.asstring,[]) ;
       DBImage3.Visible := true ;

  end ;

end;

procedure TCliente.txtnomeKeyPress(Sender: TObject; var Key: Char);
begin

end;
                                                        //  length
procedure TCliente.wwDBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
        If (Key = 'E') or (Key = 'e') or (Key = '-')  then
            Key := ' ';
end;

procedure TCliente.txtperimetroKeyPress(Sender: TObject; var Key: Char);
begin
        if (KEY = ',') and (length ((sender as twwdbedit).text)= 0) then
            key := ' ';

end;

procedure TCliente.Timer1Timer(Sender: TObject);
begin
        If (Cliente.Left <> LARGURA) or (Cliente.Top <> ALTURA) then
        Begin
            Cliente.Left := ( Screen.Width - Cliente.Width  ) div 2;
            Cliente.Top  := (Screen.Height - Cliente.Height ) div 2;
        End;
end;

procedure TCliente.cboReguaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        { if (cbotipo.ItemIndex = 0) and (cboRegua.Lookupvalue = '7')  then
         begin
             messagebox(0,'ATENÇÃO! Para aplicação no Teto, NÃO utilizar réguas de 2,20m !!!','Lista de Materiais - Durawall',(mb_Ok + Mb_IconError + 8192));
             cboREGUA.text := '' ;
             abort;
         end; }

  //IF ( ((cboorientacao.itemindex = 1) and (T_AreaSimulLargura.asfloat   > (2.2))) or
      // ((cboorientacao.itemindex = 0) and (T_AreaSimulLargura.asfloat > (2.2))) or
      // ((cboorientacao.itemindex = 2) and (T_AreaSimulLargura.asfloat > (2.2))) )  then begin



      ///IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40))
    //  ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;

         ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
         ARR2 := formatfloat('',T_AreaSimulLargura.asfloat) ;
   IF ( ((T_AreaSimulOrientacao.asstring = 'H') and (STRtoFLOAT(ARR)   >= (2.2))) or
        ((T_AreaSimulOrientacao.asstring = 'V') and (STRtoFLOAT(ARR2)  >= (2.2))) or
        ((T_AreaSimulOrientacao.asstring = 'D') and (STRtoFLOAT(ARR2)  >= (2.2))) )  then begin


       IF T_AreaSimulRegua_id.Asinteger = 7  then begin

          if messagebox(0,'Não recomendamos a utilização de réguas de 2,20 na situação proposta, por esta não possuir encaixe nas pontas. Em caso de dúvida,' +
                       ' favor entrar em contato com o Atendimento à Clientes no número: 0800-556996. Confirma alteração ? ','Lista de Materiais - Durawall', (mb_YesNO + mb_iconquestion + 8192)) = mrNo then T_AreaSimulRegua_id.Asinteger := 6;
        end ;
   end;

         ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
         ARR2 := formatfloat('',T_AreaSimulLargura.asfloat) ;
  ///IF ((cboorientacao.itemindex = 0) and (T_AreaSimulLargura.asfloat < (1.1))) then begin
  IF (  ((T_AreaSimulOrientacao.asstring = 'V') and (STRtoFLOAT(ARR2) <= (1.10))) or
        ((T_AreaSimulOrientacao.asstring = 'H') and (STRtoFLOAT(ARR)  <=  (1.10)))  ) then begin

      IF T_AreaSimulRegua_id.Asinteger = 6 then begin

           if messagebox(0,'Recomendamos a utilização de réguas de 2,20 na situação proposta, pois o aproveitamento é melhor e o custo idem. Em caso de dúvida,' +
                 'favor entrar em contato com o Atendimento à Clientes no número: 0800-556996. Confirma alteração ? ','Lista de Materiais - Durawall', (mb_YesNO + mb_iconquestion + 8192)) = mrNo then T_AreaSimulRegua_id.Asinteger := 7;


       end ;
  end ;


  IF ((T_AreaSimulOrientacao.asstring = 'V'))  then begin

      ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;

      IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then begin

           IF T_AreaSimulRegua_id.Asinteger = 7 then begin

               if messagebox(0,'Recomendamos a utilização de réguas de 1,40 na situação proposta, pois o aproveitamento é melhor e o custo idem. Em caso de dúvida,' +
                     'favor entrar em contato com o Atendimento à Clientes no número: 0800-556996. Confirma alteração ? ','Lista de Materiais - Durawall', (mb_YesNO + mb_iconquestion + 8192)) = mrNo then T_AreaSimulRegua_id.Asinteger := 6;


           end ;

      end ;
  end ;

  IF ((T_AreaSimulOrientacao.asstring = 'H'))  then begin

      ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;

      IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then begin

           IF T_AreaSimulRegua_id.Asinteger = 7 then begin

               if messagebox(0,'Recomendamos a utilização de réguas de 1,40 na situação proposta, pois o aproveitamento é melhor e o custo idem. Em caso de dúvida,' +
                     'favor entrar em contato com o Atendimento à Clientes no número: 0800-556996. Confirma alteração ? ','Lista de Materiais - Durawall', (mb_YesNO + mb_iconquestion + 8192)) = mrNo then T_AreaSimulRegua_id.Asinteger := 6;


           end ;

      end ;
  end ;


  IF ((T_AreaSimulOrientacao.asstring = 'T'))  then begin

      ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
      IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin

           IF T_AreaSimulRegua_id.Asinteger = 6 then begin

               if messagebox(0,'Recomendamos a utilização de réguas de 2,20 na situação proposta, pois o aproveitamento é melhor e o custo idem. Em caso de dúvida,' +
                     'favor entrar em contato com o Atendimento à Clientes no número: 0800-556996. Confirma alteração ? ','Lista de Materiais - Durawall', (mb_YesNO + mb_iconquestion + 8192)) = mrNo then T_AreaSimulRegua_id.Asinteger := 7;


           end ;

      end ;
  end ;

  IF ((T_AreaSimulOrientacao.asstring = 'L'))  then begin

      ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
      IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin

           IF T_AreaSimulRegua_id.Asinteger = 6 then begin

               if messagebox(0,'Recomendamos a utilização de réguas de 2,20 na situação proposta, pois o aproveitamento é melhor e o custo idem. Em caso de dúvida,' +
                     'favor entrar em contato com o Atendimento à Clientes no número: 0800-556996. Confirma alteração ? ','Lista de Materiais - Durawall', (mb_YesNO + mb_iconquestion + 8192)) = mrNo then T_AreaSimulRegua_id.Asinteger := 7;


           end ;

      end ;
  end ;







end;
procedure TCliente.Q_FILAfterOpen(DataSet: TDataSet);
begin



        if Q_FILTOTEST.Value = 0 then
        begin
             /// Label15.Caption := '0';
             /// label15.visible := true;
              Panel13.visible := true ;

         end
         else begin
             /// label15.visible := false;
              Panel13.visible := false ;
             
         end;

              /////////////////

         if Q_FILTOTLARGO.Value = 0 then
         begin
              //Label33.Caption := '0';
              //label33.visible := true;
              Panel21.visible := true ;
         end
         else  begin
          //    Label33.visible := false;
              Panel21.visible := false ;
              ///Label28.Caption := Q_AUX.fieldbyname('PDR_ID').asstring   ;

          end ;

           //////////////////
         if Q_FILTOTPRESEST.Value = 0 then
         begin
             /// Label34.Caption := '0';
              ///label34.visible := true;
         end
         else
            ///  label34.visible := false;
            //////////////////
         if Q_FILTOTPRESLAR.Value = 0 then
         begin
              ///Label35.Caption := '0';
             /// label35.visible := true;
         end
         else
            ///  label35.visible := false;
             /////////////////////

          if Q_FILTOTSARAFO.Value = 0 then
          begin
              Label36.Caption := '0';
              label36.visible := true;
         end
         else
              label36.visible := false;
end;

procedure TCliente.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        IF KEY = VK_F5 THEN CLOSE;
end;

procedure TCliente.T_AcabSimulNewRecord(DataSet: TDataSet);
begin
        T_ACABSIMULSIMUL_ID.AsString := T_SIMULACAOSIMUL_ID.AsString;
        T_AcabSimulPDR_ID.asstring := T_AreaSimulPdr_Id.asstring;
//        cboDescAca.SetFocus;        
end;

procedure TCliente.txtperimetroEnter(Sender: TObject);
begin
    Bt_Incluir.Enabled:= false;   
end;

procedure TCliente.txtperimetroExit(Sender: TObject);
begin
 Bt_Incluir.Enabled:= true;
end;

procedure TCliente.T_AcabSimulAfterInsert(DataSet: TDataSet);
begin

   wwdbgrid3.SetActiveField('desAcab');

end;

procedure TCliente.T_SimulacaoBeforeInsert(DataSet: TDataSet);
begin
        T_Simulacao.First;
end;

procedure TCliente.wwDBEdit9Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := clAqua;
        (Sender as TwwDBEdit).Text := '';

end;

procedure TCliente.wwDBEdit9KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (length ((sender as twwdbedit).text)= 2) then
           perform(WM_nextdlgctl,0,0);
end;

procedure TCliente.cbotipoCloseUp(Sender: TwwDBComboBox; Select: Boolean);
begin

   T_AreaSimul.edit;
   IF cbotipo.itemindex = 0 then begin

      cboRegua.enabled := true ;
      T_AreaSimulRegua_id.Asinteger := 6;
      cboRegua.enabled := false ;

      cboorientacao.visible := false  ;
      wwDBLookupCombo2.visible := true  ;


      IF wwDBLookupCombo2.text <> '' then  DBImage2.visible  := true  ;
         DBImage1.visible  := false  ;


       IF  T_AreaSimulArea_Simul_ID.asstring  <> '' then begin

           IF T_AREASARRACOMSARRAFOS.asstring <> '' then begin
               IF T_AREASARRACOMSARRAFOS.asstring = 'N' then begin
                   if MessageDlg('Existindo Acabamento(s) (SEM SARRAFO), a exclusão será imediata! confirma ?'
                        ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then begin
                        wwDBComboBox6.itemindex := 1 ;
                        abort ;
                   end else begin
                        VALE := 'S'   ;


                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
                        Q_AUX2.open;

                       IF (T_AreaSimulArea_Simul_ID.asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin
                           PANEL9.visible := true ;
                           wwDBComboBox6.visible := false  ;
                           PANEL23.visible := false;
                       end else begin
                           PANEL9.visible := false ;
                           wwDBComboBox6.visible := false  ;
                           PANEL23.visible := true;
                       end ;


                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add(' UPDATE AREA_SARRAFO set COMSARRAFOS  = ' + '''' + 'S' + '''' );
                        Q_AUX2.Sql.Add(' where Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring );
                        Q_AUX2.Sql.Add(' and  Simul_Id= ' + T_AreaSimulSimul_ID.asstring );
                        Q_AUX2.ExecSql;

                          If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
                          T_AREASIMUL.Post;


                        T_AREASARRA.close;
                        T_AREASARRA.open ;

                        Q_AREASARRAgrid.close;
                        Q_AREASARRAgrid.open ;

                        Q_AREASARRAGrid2.close ;
                        Q_AREASARRAGrid2.open ;



                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add(' DELETE FROM ACAB_SIMUL ');
                        Q_AUX2.Sql.Add(' where AREA_SIMUL_ID =' + T_AreaSimulArea_Simul_ID.asstring );
                        Q_AUX2.ExecSql;

                        T_AcabSimul.close;
                        T_AcabSimul.open ;

                        //T_AreaSimul.edit;
                        //T_AreaSimul.post ;
                   end ;
               end else begin
                   IF T_AREASARRACOMSARRAFOS.asstring = 'S' then begin
                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
                        Q_AUX2.open;

                       IF (T_AreaSimulArea_Simul_ID.asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin
                          PANEL9.visible := true ;
                          wwDBComboBox6.visible := false  ;
                          PANEL23.visible := false;
                       end else begin
                           PANEL9.visible := false ;
                           wwDBComboBox6.visible := false  ;
                           PANEL23.visible := true;
                       end ;
                   end ;

               end ;

           end else begin
                   { VALE := 'S' ;
                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
                    Q_AUX2.open;

                   IF (T_AreaSimulArea_Simul_ID.asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin
                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add(' DELETE FROM AREA_SARRAFO ');
                        Q_AUX2.Sql.Add(' where AREA_SIMUL_ID is null');
                        Q_AUX2.ExecSql;

                        Q_AUX2.close;
                        Q_AUX2.Sql.Clear;
                        Q_AUX2.Sql.Add(' insert into AREA_SARRAFO (AREA_SIMUL_ID,SIMUL_ID,COMSARRAFOS) ') ;
                        Q_AUX2.Sql.Add(' values ( ' );
                        Q_AUX2.Sql.Add( inttostr(T_AreaSimulArea_Simul_ID.asinteger) + ',');
                        Q_AUX2.Sql.Add( inttostr(T_AreaSimulSimul_ID.asinteger)+ ',');



                        IF VALE = 'S' then
                           Q_AUX2.Sql.Add( '''' + 'S' + '''' + ')' )
                          else
                           Q_AUX2.Sql.Add( '''' + 'N' + '''' + ')' )  ;
                        Q_AUX2.ExecSql;

                        T_AREASARRA.close;
                        T_AREASARRA.open ;

                        Q_AREASARRAGrid.close ;
                        Q_AREASARRAGrid.open ;

                        Q_AREASARRAGrid2.close ;
                        Q_AREASARRAGrid2.open ;


                       PANEL9.visible := true ;
                       wwDBComboBox6.visible := false  ;
                       PANEL23.visible := false;
                   end else begin
                     /// PANEL9.visible := false ;
                     //  wwDBComboBox6.visible := false  ;
                     //  PANEL23.visible := true;
                   end ;    }
           end ;
       end else begin
                    VALE := 'S' ;

                    PANEL9.visible := true ;
                    wwDBComboBox6.visible := false  ;
                    PANEL23.visible := false;

                    {Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' insert into AREA_SARRAFO (COMSARRAFOS) ') ;
                    Q_AUX2.Sql.Add(' values ( ' );
                    IF VALE = 'S' then
                       Q_AUX2.Sql.Add( '''' + 'S' + '''' + ')' )
                      else
                       Q_AUX2.Sql.Add( '''' + 'N' + '''' + ')' )  ;
                    Q_AUX2.ExecSql;

                    T_AREASARRA.close;
                    T_AREASARRA.open ;

                    Q_AREASARRAGrid.close ;
                    Q_AREASARRAGrid.open ;

                    Q_AREASARRAGrid2.close ;
                    Q_AREASARRAGrid2.open ; }
       end ;





   end else  begin


     IF  T_AreaSimulArea_Simul_ID.asstring  <> '' then begin

           IF (T_AreaSimulArea_Simul_ID.asinteger >  T_ULTULT_AREA_SIMUL_ID.asinteger) then begin
               { Q_AUX2.close;
                 Q_AUX2.Sql.Clear;
                 Q_AUX2.Sql.Add(' UPDATE AREA_SARRAFO set COMSARRAFOS  = ' + '''' + '' + '''' );
                 Q_AUX2.Sql.Add(' where Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring );
                 Q_AUX2.Sql.Add(' and  Simul_Id= ' + T_AreaSimulSimul_ID.asstring );
                 Q_AUX2.ExecSql;

                 If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
                     T_AREASIMUL.Post;


                 T_AREASARRA.close;
                 T_AREASARRA.open ;



                 Q_AUX2.close;
                 Q_AUX2.Sql.Clear;
                 Q_AUX2.Sql.Add('select MAX(AREA_SIMUL_ID) as ULT from area_SIMUL ' ) ;
                 Q_AUX2.open;    }


               if MessageDlg('Existindo Acabamento(s), a exclusão será imediata! confirma ?'
                        ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then begin
                        wwDBComboBox6.itemindex := 1 ;
                        abort ;
               end else begin
                   Q_AUX2.close;
                   Q_AUX2.Sql.Clear;
                   Q_AUX2.Sql.Add(' DELETE FROM ACAB_SIMUL ');
                   Q_AUX2.Sql.Add(' where AREA_SIMUL_ID =' + T_AreaSimulArea_Simul_ID.asstring );
                   Q_AUX2.ExecSql;

                   T_AcabSimul.close;
                   T_AcabSimul.open ;

                   PANEL9.visible := false ;
                   wwDBComboBox6.visible := true  ;
                   PANEL23.visible := false;
               end ;     
           end else begin
               PANEL9.visible := false ;
               wwDBComboBox6.visible := false  ;
               PANEL23.visible := true;
           end ;

     end else begin
          PANEL9.visible := false ;
          wwDBComboBox6.visible := true  ;
          PANEL23.visible := false;

     end ;



      cboRegua.enabled := true  ;

      cboorientacao.visible := true  ;
      wwDBLookupCombo2.visible := false  ;

      IF cboorientacao.text <> '' then   DBImage1.visible := true  ;
      DBImage2.visible := false  ;
   end ;

end;

procedure TCliente.DBG_RAATDblClick(Sender: TObject);
begin
    If OpenPictureDialog1.Execute Then
      Try
         T_Acab.edit;
         T_AcabFIGURA.LoadFromFile( OpenPictureDialog1.FileName );
        // SpeedButton2.enabled := false ;
      Except
         On EInvalidGraphic Do ShowMessage('Arquivo Com Problemas')
      End;
      OpenPictureDialog1.Execute
end;

procedure TCliente.cboorientacaoCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

      IF T_AreaSimulComprimento.asstring  <> '' then begin
           IF (T_AreaSimulOrientacao.asstring = 'H') then begin
              ARR := formatfloat('',T_AreaSimulComprimento.asfloat) ;
              IF (STRtoFLOAT(ARR) >= (2.20)  ) then T_AreaSimulRegua_id.Asinteger := 6 ;
           end ;


          IF (T_AreaSimulOrientacao.asstring = 'H') then begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF (STRtoFLOAT(ARR)  <= (1.10)) then T_AreaSimulRegua_id.Asinteger := 7;
          end ;

          IF (T_AreaSimulOrientacao.asstring = 'H') then begin
            ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
            IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then T_AreaSimulRegua_id.Asinteger := 6;
         end ;

      end ;


      IF T_AreaSimulLargura.asstring  <> '' then begin

            HIPO := Sqrt( SQR(T_AreaSimulLargura.asfloat) + SQR(T_AreaSimulComprimento.asfloat) ) ;

          IF (T_AreaSimulOrientacao.asstring = 'V') then  begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF (STRtoFLOAT(ARR) >= (2.20)) then T_AreaSimulRegua_id.Asinteger := 6;

          end ;

          IF (T_AreaSimulOrientacao.asstring = 'V') then  begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF (STRtoFLOAT(ARR) <= (1.10)) then T_AreaSimulRegua_id.Asinteger := 7;
          end ;


          IF (T_AreaSimulOrientacao.asstring = 'D') then  begin
             ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;

              IF (STRtoFLOAT(ARR) >= (2.20)) and
                 (HIPO > (2.20)) then T_AreaSimulRegua_id.Asinteger := 6;

          end ;

          IF (T_AreaSimulOrientacao.asstring = 'V') then begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.11) and (STRtoFLOAT(ARR)  <= 1.40)) then T_AreaSimulRegua_id.Asinteger := 6;
          end ;



      end ;


end;

procedure TCliente.cboorientacaoEnter(Sender: TObject);
begin
     (sender as twwDBLookupCombo).color := clAqua;
end;

procedure TCliente.cboorientacaoExit(Sender: TObject);
begin
    (sender as twwDBLookupCombo).color := clWindow;
end;

procedure TCliente.wwDBLookupCombo2Enter(Sender: TObject);
begin
         (sender as twwDBLookupCombo).color := clAqua;
end;

procedure TCliente.wwDBLookupCombo2Exit(Sender: TObject);
begin
       (sender as twwDBLookupCombo).color := clWINDOW;
end;

procedure TCliente.T_AreaSimulBeforeDelete(DataSet: TDataSet);
begin
            while not T_AcabSimul.eof do
                      T_AcabSimul.delete ;

             while not T_AREASARRA.eof do
                      T_AREASARRA.delete ;
end;

procedure TCliente.DBImage3DblClick(Sender: TObject);
begin   If OpenPictureDialog1.Execute Then
      Try
         {T_TESTE.edit;
         T_TESTEFIGURA.LoadFromFile( OpenPictureDialog1.FileName );
         T_TESTE.post;                 }
        // SpeedButton2.enabled := false ;
      Except
         On EInvalidGraphic Do ShowMessage('Arquivo Com Problemas')
      End;
     /// OpenPictureDialog1.Execute
end;

procedure TCliente.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean); {pl}
begin

    IF T_AreaSimulComprimento.asstring  <> '' then begin
          IF (T_AreaSimulOrientacao.asstring = 'L') then begin
              ARR := formatfloat('',T_AreaSimulcomprimento.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                  T_AreaSimulRegua_id.Asinteger := 7;
              end else T_AreaSimulRegua_id.Asinteger := 6;
          end ;
    end ;

    IF T_AreaSimulLargura.asstring  <> '' then begin
         IF (T_AreaSimulOrientacao.asstring = 'T') then begin
              ARR := formatfloat('',T_AreaSimulLargura.asfloat) ;
              IF ((STRtoFLOAT(ARR)  >= 1.41) and (STRtoFLOAT(ARR)  <= 2.20)) then begin
                  T_AreaSimulRegua_id.Asinteger := 7;

               end else T_AreaSimulRegua_id.Asinteger := 6;
          end ;
    end ;

end;

procedure TCliente.wwDBComboBox6Exit(Sender: TObject);
begin
        VALE := '' ;
    IF wwDBComboBox6.itemindex = 0 then
       VALE := 'S'
     else
       VALE := 'N'  ;



end;

procedure TCliente.wwDBComboBox6CloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin

      IF  T_AreaSimulArea_Simul_ID.asstring     <> '' then begin

          IF wwDBComboBox6.itemindex = 0 then  begin
                if MessageDlg('Existindo Acabamento(s) (SEM SARRAFO), a exclusão será imediata! confirma ?'
                      ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then begin
                      wwDBComboBox6.itemindex := 1 ;
                      abort ;
                end else begin
                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' UPDATE AREA_SARRAFO set COMSARRAFOS  = ' + '''' + 'S' + '''' );
                    Q_AUX2.Sql.Add(' where Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring );
                    Q_AUX2.Sql.Add(' and  Simul_Id= ' + T_AreaSimulSimul_ID.asstring );
                    Q_AUX2.ExecSql;

                    If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
                      T_AREASIMUL.Post;

                    T_AREASARRA.close;
                    T_AREASARRA.open ;
                    
                      Q_AREASARRAGrid.close ;
                      Q_AREASARRAGrid.open ;

                      Q_AREASARRAGrid2.close ;
                      Q_AREASARRAGrid2.open ;


                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' DELETE FROM ACAB_SIMUL ');
                    Q_AUX2.Sql.Add(' where AREA_SIMUL_ID =' + T_AreaSimulArea_Simul_ID.asstring );
                    Q_AUX2.ExecSql;

                    T_AcabSimul.close;
                    T_AcabSimul.open ;

                   //T_AreaSimul.edit;
                   //T_AreaSimul.post ;
                end ;

          end else begin
                if MessageDlg('Existindo Acabamento(s) (COM SARRAFO), a exclusão será imediata! confirma ?'
                      ,mtConfirmation, [mbYes, mbNo], 0) = mrNO then begin
                      wwDBComboBox6.itemindex := 0 ;
                      abort ;
                end else begin
                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' UPDATE AREA_SARRAFO set COMSARRAFOS  = ' + '''' + 'N' + '''' ) ;
                    Q_AUX2.Sql.Add(' where Area_Simul_ID = ' + T_AreaSimulArea_Simul_ID.asstring );
                    Q_AUX2.Sql.Add(' and  Simul_Id= ' + T_AreaSimulSimul_ID.asstring );
                    Q_AUX2.ExecSql;

                     If (T_AREASIMUL.State = dsEdit) or (T_AREASIMUL.State = dsInsert) then
                      T_AREASIMUL.Post;

                    T_AREASARRA.close;
                    T_AREASARRA.open ;

                    
                    Q_AREASARRAGrid.close ;
                    Q_AREASARRAGrid.open ;

                    Q_AREASARRAGrid2.close ;
                    Q_AREASARRAGrid2.open ;



                   /// T_AreaSimul.edit ;


                    Q_AUX2.close;
                    Q_AUX2.Sql.Clear;
                    Q_AUX2.Sql.Add(' DELETE FROM ACAB_SIMUL ');
                    Q_AUX2.Sql.Add(' where AREA_SIMUL_ID =' + T_AreaSimulArea_Simul_ID.asstring );
                    Q_AUX2.ExecSql;

                    T_AcabSimul.close;
                    T_AcabSimul.open ;

                    ///T_AreaSimul.edit;
                   // T_AreaSimul.post ;
                end ;
          end ;


      end ;


end;

end.




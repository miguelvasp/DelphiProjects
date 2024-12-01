unit U_Parametro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, StdCtrls, wwdblook, DBCtrls, Buttons,
  ExtCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFParametro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DS_PARA: TwwDataSource;
    DS_MOED: TwwDataSource;
    Q_MOED: TwwQuery;
    Q_PARA: TwwQuery;
    Q_PARAPAR_CHAV: TStringField;
    Q_PARAPAR_MOED: TStringField;
    Q_MOEDMOE_SIGL: TStringField;
    DBNavigator1: TDBNavigator;
    UPD_PARA: TUpdateSQL;
    Q_MOEDMOE_NOME: TStringField;
    Q_PARACtaGerencialOrig: TStringField;
    Q_PARACtaGerencialDest: TStringField;
    Q_PARAFilialOrigem: TStringField;
    Q_PARAFilialDestino: TStringField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label4: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Q_ContO: TwwQuery;
    Q_ContOCON_DESC: TStringField;
    Q_ContOCON_CODI: TStringField;
    Q_FILIO: TwwQuery;
    Q_FILIOFIL_DESC: TStringField;
    Q_FILIOFIL_CODI: TStringField;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Q_FILID: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    Q_CONTD: TwwQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    Q_PARACta_GerencialPaga: TStringField;
    Q_PARAFilialPaga: TStringField;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Label8: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Q_FILIP: TwwQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    Q_CUSP: TwwQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBLookupCombo9: TwwDBLookupCombo;
    Q_FILIR: TwwQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    Q_PARACta_GerencialRece: TStringField;
    Q_PARAFilialRece: TStringField;
    Q_CUSR: TwwQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    Label11: TLabel;
    Q_PARAPAR_MOVI: TStringField;
    Q_PARAPAR_DOLAR: TStringField;
    Label12: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label13: TLabel;
    wwDBLookupCombo11: TwwDBLookupCombo;
    Q_DIFE: TwwQuery;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    Q_PARAPAR_Acrescimo: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    Q_PARAEmp_Nome: TStringField;
    wwDBEdit2: TwwDBEdit;
    Q_CUSPDS: TStringField;
    Q_CUSRDS: TStringField;
    Q_CONTDDS: TStringField;
    Q_ContODS: TStringField;
    wwDBEdit1: TwwDBEdit;
    Label15: TLabel;
    Q_PARAPar_impnf: TStringField;
    qrAux: TwwQuery;
    qrAuxTOTAL: TIntegerField;
    Q_PARARestringe_pag_empresa: TStringField;
    DBCheckBox1: TDBCheckBox;
    Q_PARAPARA_CARTAO: TStringField;
    Q_DIFE2: TwwQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    wwDBLookupCombo12: TwwDBLookupCombo;
    Label16: TLabel;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    wwDBLookupCombo13: TwwDBLookupCombo;
    wwDBLookupCombo14: TwwDBLookupCombo;
    Label18: TLabel;
    wwDBLookupCombo15: TwwDBLookupCombo;
    Label19: TLabel;
    Q_PARAClienteDinheiro: TIntegerField;
    Q_PARACllienteCheque: TIntegerField;
    Q_PARAClienteCartao: TIntegerField;
    qrCli1: TwwQuery;
    qrCli1CLI_RAZA: TStringField;
    qrCli1CLI_CODI: TAutoIncField;
    qrCli2: TwwQuery;
    StringField17: TStringField;
    AutoIncField1: TAutoIncField;
    qrCli3: TwwQuery;
    StringField18: TStringField;
    AutoIncField2: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_PARAAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Q_PARANewRecord(DataSet: TDataSet);
    procedure Q_PARABeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParametro: TFParametro;

implementation
 uses  FiltLstMovBanc, UPar_PagFor, UPag_For, UGeraPagFor, CPPMENU ;
{$R *.DFM}


procedure TFParametro.FormCreate(Sender: TObject);
begin
  Q_DIFE.Open ;
  Q_CONTO.open;
  Q_CONTD.open;
  Q_FILIO.open;
  Q_FILID.open;
  Q_CUSP.open;
  Q_FILIP.open;
  Q_MOED.open ;
  Q_PARA.open ;
  Q_CUSR.open;
  Q_FILIR.Open ;
  Q_DIFE2.Open;
  qrCli1.Open;
  qrCli2.Open;
  qrCli3.Open;

end;


procedure TFParametro.SBT_SAIRClick(Sender: TObject);
begin
    close ;   
end;

procedure TFParametro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_Dife.Close ;
  Q_CONTO.Close ;
  Q_CONTD.Close ;
  Q_FILIO.Close ;
  Q_FILID.Close ;
  Q_MOED.Close ;
  Q_PARA.Close ;
  Q_CUSP.close ;
  Q_FILIP.close ;
  Q_CUSR.close ;
  Q_FILIR.close ;
  action :=cafree ;
end;

procedure TFParametro.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;


procedure TFParametro.Q_PARAAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_PARA]);
  end;
  except
    begin
      Q_PARA.RevertRecord;
    end;
  end;
//  wwDBLookupCombo1.Enabled := false;
  Q_PARA.Close;
  Q_PARA.Open;
end;


procedure TFParametro.FormActivate(Sender: TObject);
begin
  //      CENTRO(Self,False);
end;

procedure TFParametro.SpeedButton1Click(Sender: TObject);
begin
        Application.Createform(TFParPagFor, FParPagFor);
        FParPagFor.Show;
end;

procedure TFParametro.SpeedButton2Click(Sender: TObject);
begin
      Application.Createform(TFGeraPagFor, FGeraPagFor);
      FGeraPagFor.ShowModal;

end;

procedure TFParametro.Q_PARANewRecord(DataSet: TDataSet);
begin
       Q_PARAPAR_CHAV.asstring := 'S';
end;

procedure TFParametro.Q_PARABeforeInsert(DataSet: TDataSet);
begin
       qrAux.CLOSE;
     qrAux.Open;

     IF qrAuxTOTAL.Value > 0 then
     BEGIN
         MessageBox(SELF.Handle, 'Não é possível adicionar mais do que um parâmetro!', 'Informação', MB_OK) ;
         Abort;
     end;
end;

end.

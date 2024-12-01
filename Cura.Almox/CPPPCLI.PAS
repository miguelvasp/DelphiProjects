unit CPPPCLI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwtable;

type
  TFPesqClie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBG_CLIE: TwwDBGrid;
    ED_RAZA: TEdit;
    ED_ENDE: TEdit;
    ED_MUNI: TEdit;
    DBLC_CLI_FEST: TwwDBLookupCombo;
    SBT_SELE: TSpeedButton;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    ED_CEP: TMaskEdit;
    T_UFED: TwwTable;
    DS_UFED: TwwDataSource;
    T_UFEDUFE_CODI: TStringField;
    T_UFEDUFE_DESC: TStringField;
    T_UFEDUFE_AICM: TFloatField;
    Q_AUXI: TwwQuery;
    Q_AUXICOLUMN1: TIntegerField;
    Q_CLIE: TwwQuery;
    DS_CLIE: TwwDataSource;
    Q_CLIECLI_CODI: TIntegerField;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_PESS: TStringField;
    Q_CLIECLI_CGC: TStringField;
    Q_CLIECLI_INSC: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    Q_CLIECLI_FEMA: TStringField;
    Q_CLIECLI_FCON: TStringField;
    Q_CLIECLI_CEND: TStringField;
    Q_CLIECLI_CMUN: TStringField;
    Q_CLIECLI_CEST: TStringField;
    Q_CLIECLI_CCEP: TStringField;
    Q_CLIECLI_CTEL: TStringField;
    Q_CLIECLI_CTE2: TStringField;
    Q_CLIECLI_CFAX: TStringField;
    Q_CLIECLI_CEMA: TStringField;
    Q_CLIECLI_CCON: TStringField;
    Q_CLIECLI_CBAN: TStringField;
    Q_CLIECLI_CCBA: TStringField;
    Q_CLIECLI_CONT: TStringField;
    Q_CLIECLI_TRAN: TStringField;
    Q_CLIECLI_RAAT: TStringField;
    Q_CLIECLI_CANA: TStringField;
    Q_CLIECLI_VEND: TStringField;
    Q_CLIECLI_REPR: TStringField;
    Q_CLIECLI_INIC: TDateTimeField;
    Q_CLIECLI_UCOM: TDateTimeField;
    Q_CLIECLI_VUCO: TFloatField;
    Q_CLIECLI_VUCD: TFloatField;
    Q_CLIECLI_MCOM: TDateTimeField;
    Q_CLIECLI_VMCO: TFloatField;
    Q_CLIECLI_VMCD: TFloatField;
    Q_CLIECLI_ATRA: TIntegerField;
    Q_CLIECLI_LCRE: TFloatField;
    Q_CLIECLI_VATR: TFloatField;
    Q_CLIECLI_SCRE: TStringField;
    Q_CLIECLI_CGER: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqClie: TFPesqClie;

implementation

uses CPPMENU, CPPCLIE;

{$R *.DFM}

procedure TFPesqClie.SBT_SAIRClick(Sender: TObject);
begin
     FPesqclie.Close;
end;

procedure TFPesqClie.SBT_PESQClick(Sender: TObject);
begin
    with Q_CLIE do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CPACLIE');
      Sql.Add('WHERE CLI_CODI <> 99999999');
      if (ED_RAZA.Text <> '') then
         Sql.Add('and CLI_RAZA like ''' + '%'+ ED_RAZA.Text + '%'+ '''');
      if (ED_ENDE.Text <> '') then
         Sql.Add('and CLI_FEND like ''' + '%'+ ED_ENDE.Text + '%'+ '''');
      if (ED_MUNI.Text <> '') then
         Sql.Add('and CLI_FMUN like ''' + '%'+ ED_MUNI.Text + '%'+ '''');
      if (DBLC_CLI_FEST.Text <> '') then
         Sql.Add('and CLI_FEST = ''' + DBLC_CLI_FEST.Text + '''');
      if (ED_CEP.Text <> '') then
         Sql.Add('and CLI_FCEP = ''' + ED_CEP.text + '''');
      Open;
    end;
end;

procedure TFPesqClie.SBT_SELEClick(Sender: TObject);
begin
     with Q_AUXI do
     begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT COUNT(*) FROM CPACLIE');
        Sql.Add('WHERE CLI_CODI < '+Q_CLIECLI_CODI.AsString + '');
        Open;
     end;
     FClientes.Q_CLIE.First;
     FClientes.Q_CLIE.MoveBy(Q_AUXICOLUMN1.AsInteger);
     Q_AUXI.Close;
     with Q_CLIE do
     begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM CPACLIE ORDER BY CLI_CODI');
        Open;
     end;
     FPesqclie.Close;
end;

procedure TFPesqClie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with Q_CLIE do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM CPACLIE ORDER BY CLI_CODI');
     end;
     T_UFED.close;
end;

procedure TFPesqClie.FormShow(Sender: TObject);
begin
     Q_CLIE.Open;
     T_UFED.Open;
end;

end.

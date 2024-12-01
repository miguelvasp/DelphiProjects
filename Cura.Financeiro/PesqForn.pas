unit PesqForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwtable;

type
  TFPesqForn = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBG_FORN: TwwDBGrid;
    ED_RAZA: TEdit;
    ED_ENDE: TEdit;
    ED_MUNI: TEdit;
    DBLC_FOR_FEST: TwwDBLookupCombo;
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
    Q_FORN: TwwQuery;
    DS_FORN: TwwDataSource;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNFOR_CGC: TStringField;
    SpeedButton1: TSpeedButton;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ED_ENDEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqForn: TFPesqForn;
  CODIGOFORN : string;

implementation

uses CPPMENU,Fornec;

{$R *.DFM}

procedure TFPesqForn.SBT_SAIRClick(Sender: TObject);
begin
     FPesqForn.Close;
end;

procedure TFPesqForn.SBT_PESQClick(Sender: TObject);
begin
    with Q_FORN do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CPAFORN');
      Sql.Add('WHERE FOR_CODI <> ' +'''' +'''');
      if (ED_RAZA.Text <> '') then
         Sql.Add('AND FOR_RAZA LIKE ' +'''' +'%' +ED_RAZA.Text +'%' +'''');
      if (ED_ENDE.Text <> '') then
         Sql.Add('and FOR_ENDE like ' +'''' + '%'+ ED_ENDE.Text + '%'+ '''');
      if (ED_MUNI.Text <> '') then
         Sql.Add('and FOR_MUNI like ' +'''' + '%'+ ED_MUNI.Text + '%'+ '''');
      if (DBLC_FOR_FEST.Text <> '') then
         Sql.Add('and FOR_ESTA = ' +'''' + DBLC_FOR_FEST.Text +'''');
      if (ED_CEP.Text <> '') then
         Sql.Add('and FOR_CEP = ' +'''' + ED_CEP.text +'''');
      Sql.Add('ORDER BY FOR_RAZA');
      Open;
    end;
end;

procedure TFPesqForn.SBT_SELEClick(Sender: TObject);
begin
     CODIGOFORN := Q_FORNFOR_CODI.AsString;
     Application.CreateForm(TFFornecedores, FFornecedores);
     FFornecedores.ShowModal;
     FFornecedores.Release;
     CODIGOFORN := '';
end;

procedure TFPesqForn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with Q_FORN do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM CPAFORN ORDER BY FOR_CODI');
     end;
     T_UFED.close;
     Action := caFree;
end;

procedure TFPesqForn.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFPesqForn.FormCreate(Sender: TObject);
begin
   t_ufed.Open;
end;

procedure TFPesqForn.SpeedButton1Click(Sender: TObject);
begin
     CODIGOFORN := '';
     Application.CreateForm(TFFornecedores, FFornecedores);
     FFornecedores.DBE_FOR_CODI.Enabled := True;
     
     FFornecedores.ShowModal;
     FFornecedores.Release;
end;

procedure TFPesqForn.ED_ENDEKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
       SBT_PESQ.CLICK;

end;

end.

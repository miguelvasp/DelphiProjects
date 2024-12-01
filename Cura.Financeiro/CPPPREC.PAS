unit CPPPREC;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls,
  Buttons, DB, Wwdatsrc, DBTables, Wwtable, DBCtrls, Mask, Wwquery,
  Wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFPesqRece = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Memo2: TMemo;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBLC_REC_RAZA: TwwDBLookupCombo;
    DBLC_REC_CGER1: TwwDBLookupCombo;
    DBLC_REC_CGER2: TwwDBLookupCombo;
    ME_REC_VENC1: TMaskEdit;
    ME_REC_VENC2: TMaskEdit;
    Panel1: TPanel;
    DBG_CLIE: TwwDBGrid;
    Q_RECE: TwwQuery;
    DS_RECE: TwwDataSource;
    T_CONT: TwwTable;
    DS_CONT: TwwDataSource;
    T_RECE: TwwTable;
    DS_RECE1: TwwDataSource;
    Q_RECEREC_CODI: TIntegerField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_DEVE: TStringField;
    Q_RECEREC_RAZA: TStringField;
    Q_RECEREC_CGER: TStringField;
    Q_RECEREC_VALO: TFloatField;
    Q_RECEREC_DESC: TFloatField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_BANC: TStringField;
    Q_RECEREC_CONT: TStringField;
    Q_RECEREC_VPAG: TFloatField;
    Q_RECEREC_EMIS: TDateTimeField;
    Q_RECEREC_MOED: TStringField;
    Q_RECEREC_DCON: TDateTimeField;
    Q_RECEREC_MORI: TStringField;
    Q_RECEREC_DCOR: TDateTimeField;
    Q_RECEREC_VORI: TFloatField;
    Q_RECEREC_VPRE: TDateTimeField;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEREC_SITU: TStringField;
    Q_RECEREC_FILI: TStringField;
    T_RECEREC_CODI: TIntegerField;
    T_RECEREC_NFIS: TStringField;
    T_RECEREC_DEVE: TStringField;
    T_RECEREC_RAZA: TStringField;
    T_RECEREC_CGER: TStringField;
    T_RECEREC_VALO: TFloatField;
    T_RECEREC_DESC: TFloatField;
    T_RECEREC_VLIQ: TFloatField;
    T_RECEREC_VENC: TDateTimeField;
    T_RECEREC_BANC: TStringField;
    T_RECEREC_CONT: TStringField;
    T_RECEREC_VPAG: TFloatField;
    T_RECEREC_EMIS: TDateTimeField;
    T_RECEREC_MOED: TStringField;
    T_RECEREC_DCON: TDateTimeField;
    T_RECEREC_MORI: TStringField;
    T_RECEREC_DCOR: TDateTimeField;
    T_RECEREC_VORI: TFloatField;
    T_RECEREC_VPRE: TDateTimeField;
    T_RECEREC_HIST: TStringField;
    T_RECEREC_SALD: TFloatField;
    T_RECEREC_SITU: TStringField;
    T_RECEREC_FILI: TStringField;
    CB_REC_SITU: TComboBox;
    CB_ORDE: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Q_AUXI: TwwQuery;
    DS_AUXI: TwwDataSource;
    Q_AUXICOLUMN1: TFloatField;
    Q_AUXICOLUMN2: TFloatField;
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pesquisa( var Query : TwwQuery; lOrdem : boolean );
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FPesqRece: TFPesqRece;

implementation
uses CPPMENU;
{$R *.DFM}

procedure TFPesqRece.Pesquisa( var Query : TwwQuery; lOrdem : boolean );
begin
  with Query do
  begin
    Sql.Add('WHERE REC_CODI <> 99999999');
    if (DBLC_REC_RAZA.Text <> '') then
      Sql.Add('and REC_RAZA like ''' + '%'+ DBLC_REC_RAZA.Text + '%'+ '''');
    if (ME_REC_VENC1.Text <> '  /  /    ') then
      Sql.Add('and REC_VENC >= ''' + FormatDateTime('MM/DD/YYYY',StrToDate(ME_REC_VENC1.Text))+'''');
    if (ME_REC_VENC2.Text <> '  /  /    ') then
      Sql.Add('and REC_VENC <= ''' + FormatDateTime('MM/DD/YYYY',StrToDate(ME_REC_VENC2.Text))+'''');
    if (DBLC_REC_CGER1.Text <> '') then
      Sql.Add('and REC_CGER >= '''+DBLC_REC_CGER1.Text+'''');
    if (DBLC_REC_CGER2.Text <> '') then
      Sql.Add('and REC_CGER <= '''+DBLC_REC_CGER2.Text+'''');
    if (CB_REC_SITU.Text <> 'Todos') then
      if (CB_REC_SITU.Text = 'Recebidos') then
        Sql.Add('and (REC_SITU = '''+'T'+''' or REC_SITU = '''+'R'+''')')
      else
        Sql.Add('and (REC_SITU = '''+'A'+''' or REC_SITU = '''+'R'+''')');
    if lOrdem then
      if CB_ORDE.Text <> '' then
        if CB_ORDE.Text = 'Devedor' then
          Sql.Add('ORDER BY REC_RAZA')
        else
          Sql.Add('ORDER BY REC_VENC');
  end;
end;

procedure TFPesqRece.SBT_PESQClick(Sender: TObject);
begin
  with Q_RECE do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CPARECE');
    Pesquisa( Q_RECE, True );
    Open;
  end;

  with Q_AUXI do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(REC_SALD), SUM(REC_VLIQ) FROM CPARECE');
    Pesquisa( Q_AUXI, False );
    Open;
    Label1.Caption := FormatFloat( '#######0.00', Q_AUXICOLUMN1.AsFloat );
    Label2.Caption := FormatFloat( '#######0.00', Q_AUXICOLUMN2.AsFloat );
  end;
end;

procedure TFPesqRece.SBT_SAIRClick(Sender: TObject);
begin
  FPesqRece.Close;
end;

procedure TFPesqRece.FormShow(Sender: TObject);
begin
  Q_RECE.Open;
  T_RECE.Open;
  T_CONT.Open;
  with Q_AUXI do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(REC_SALD), SUM(REC_VLIQ) FROM CPARECE');
    Pesquisa( Q_AUXI, False );
    Open;
    Label1.Caption := FormatFloat( '#######0.00', Q_AUXICOLUMN1.AsFloat );
    Label2.Caption := FormatFloat( '#######0.00', Q_AUXICOLUMN2.AsFloat );
  end;
end;

procedure TFPesqRece.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_RECE.Close;
  Q_AUXI.Close;
  T_RECE.Close;
  T_CONT.Close;
  Action := caFree;
end;

procedure TFPesqRece.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

end.

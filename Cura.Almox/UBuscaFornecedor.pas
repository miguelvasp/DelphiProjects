unit UBuscaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Mask, StdCtrls, wwdblook, Buttons, ExtCtrls,
  Db, DBTables, Wwquery, Wwdatsrc;

type
  TfrmBuscaFornecedor = class(TForm)
    DS_FORN: TwwDataSource;
    DS_UFED: TwwDataSource;
    Q_FORN: TwwQuery;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_CGC: TStringField;
    Q_AUXI: TwwQuery;
    Q_AUXICOLUMN1: TIntegerField;
    Panel1: TPanel;
    SBT_SELE: TSpeedButton;
    SBT_PESQ: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    ED_RAZA: TEdit;
    ED_ENDE: TEdit;
    ED_MUNI: TEdit;
    DBLC_FOR_FEST: TwwDBLookupCombo;
    ED_CEP: TMaskEdit;
    Panel2: TPanel;
    DBG_FORN: TwwDBGrid;
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaFornecedor: TfrmBuscaFornecedor;

implementation

uses Fornec;

{$R *.DFM}

procedure TfrmBuscaFornecedor.SBT_PESQClick(Sender: TObject);
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

procedure TfrmBuscaFornecedor.SBT_SELEClick(Sender: TObject);
begin
    Application.CreateForm(TFFornecedores, FFornecedores);
    IF Q_FORNFOR_CODI.Value <> '' then
        FFornecedores.Q_FORN.Params[0].AsString := Q_FORNFOR_CODI.Value
    else Abort;
    FFornecedores.Q_FORN.Open;
    FFornecedores.ShowModal;
    FFornecedores.Release;
end;

procedure TfrmBuscaFornecedor.SpeedButton1Click(Sender: TObject);
begin
    Application.CreateForm(TFFornecedores, FFornecedores);
    FFornecedores.Q_FORN.Params[0].AsString := '';
    FFornecedores.Q_FORN.Open;
    FFornecedores.Label1.Caption := 'N';
    FFornecedores.ShowModal;
    FFornecedores.Label1.Caption := '';
    FFornecedores.Release;
end;

procedure TfrmBuscaFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmBuscaFornecedor := nil;
end;

end.

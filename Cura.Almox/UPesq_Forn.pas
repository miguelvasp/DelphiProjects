unit UPesq_Forn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, StdCtrls, wwdblook, Buttons, ExtCtrls, Mask;

type
  TFPesq_Forn = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Bt_Relat: TBitBtn;
    cboF1: TwwDBLookupCombo;
    Q_FORN: TwwQuery;
    Label1: TLabel;
    cboF2: TwwDBLookupCombo;
    Panel3: TPanel;
    Label16: TLabel;
    SBT_SAIR: TSpeedButton;
    Q_FORNFOR_CODI: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bt_RelatClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure cboF1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure cboF1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesq_Forn: TFPesq_Forn;
  SQL_PESQ: STRING;
  SQL_RELCLI: STRING;
  StrFiltro : string;

implementation

uses URelFornecedores, Fornec;

//uses 

{$R *.DFM}

procedure TFPesq_Forn.FormCreate(Sender: TObject);
begin
        Q_FORN.OPEN;

        If ForCodix <> '' then
        Begin
                cboF1.Text := ForCodix;
                cboF2.Text := ForCodix;
                cboF1.LookupValue := ForCodix;
                cboF2.LookupValue := ForCodix;
       End;
end;

procedure TFPesq_Forn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_FORN.CLOSE;
        Action := CaFree;
end;

procedure TFPesq_Forn.Bt_RelatClick(Sender: TObject);
begin
       StrFiltro:= ' WHERE 1 = 1 ';

       If (cboF1.Text <> '') and (cboF1.LookupValue <> '') then
               StrFiltro := StrFiltro + ' AND FOR_CODI >= ''' + cboF1.LookupValue + '''';
       If (cboF1.Text <> '') and (cboF1.LookupValue <> '') then
               StrFiltro := StrFiltro + ' AND FOR_CODI <= ''' + cboF2.LookupValue + '''';

       Application.CreateForm(TFRelFornecedores,FRelFornecedores);
       FRelFornecedores.QR_FORN.Preview;
       FRelFornecedores.Close;
end;

procedure TFPesq_Forn.SBT_SAIRClick(Sender: TObject);
begin
        close;
end;

procedure TFPesq_Forn.Edit2Enter(Sender: TObject);
begin
        (Sender as TEdit).Color := clAqua;
end;

procedure TFPesq_Forn.Edit1Enter(Sender: TObject);
begin
        (Sender as TEdit).Color := clAqua;
end;

procedure TFPesq_Forn.Edit1Exit(Sender: TObject);
begin
        (Sender as TEdit).Color := clWindow;
end;

procedure TFPesq_Forn.Edit2Exit(Sender: TObject);
begin
        (Sender as TEdit).Color := clWindow;
end;

procedure TFPesq_Forn.Data1Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFPesq_Forn.Data2Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFPesq_Forn.Data1Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
end;

procedure TFPesq_Forn.Data2Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
end;

procedure TFPesq_Forn.cboF1Enter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Forn.wwDBLookupCombo1Enter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesq_Forn.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFPesq_Forn.cboF1Exit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClWindow;
end;

procedure TFPesq_Forn.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFPesq_Forn.SpeedButton2Click(Sender: TObject);
begin
        cboF1.Text := '';
        cboF2.Text := '';
end;

end.

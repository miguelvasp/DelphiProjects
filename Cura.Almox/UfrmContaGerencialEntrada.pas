unit UfrmContaGerencialEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook;

type
  TfrmContaGerencialEntrada = class(TForm)
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    qrContas: TADOQuery;
    qrContasCON_CODI: TStringField;
    qrContasCON_DESC: TStringField;
    qrAux: TADOQuery;
    qrCad: TADOQuery;
    qrCadContaGerencial: TStringField;
    DataSource1: TDataSource;
    qrCadId: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContaGerencialEntrada: TfrmContaGerencialEntrada;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmContaGerencialEntrada.FormCreate(Sender: TObject);
begin
  qrCad.Open;
  qrContas.Open;
end;

procedure TfrmContaGerencialEntrada.Button1Click(Sender: TObject);
begin
   qrAux.SQL.Clear;
   qrAux.SQL.Add('delete from ContaGerencialEntrada');
   qrAux.ExecSQL;

   if wwDBLookupCombo1.Text <> '' then
   begin

     qrAux.SQL.Clear;
     qrAux.SQL.Add('insert into ContaGerencialEntrada values('  + QuotedStr(wwDBLookupCombo1.LookupValue)   + ')')   ;
     qrAux.ExecSQL;
     qrCad.Close;
     qrCad.Open;
   end;

   Self.Close;

end;

end.

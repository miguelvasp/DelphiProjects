unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, Wwdbigrd, Wwdbgrid;

type
  TForm1 = class(TForm)
    Button1: TButton;
    qrBusca: TADOQuery;
    ADOConnection1: TADOConnection;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    qrBuscaNFI_CODI: TAutoIncField;
    qrBuscaNFI_DEST_CGC: TStringField;
    qrBuscaNFI_DEST_INSCRG: TStringField;
    qrBuscaCLIF_CGCCPF: TStringField;
    qrBuscaCLIF_INSCRG: TStringField;
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ADOConnection1BeforeConnect(Sender: TObject);
VAR strCon : WideString;
begin

  strCon := 'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;User ID=SA;Initial Catalog=';
  strCon := strCon + Edit2.Text + ';Data Source=' + Edit1.Text;
  ADOConnection1.close;
  ADOConnection1.ConnectionString := strCon;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Confirma a operação?', '', MB_YESNO) = 7 then Abort;

   qrBusca.First;
   while not qrBusca.Eof do begin
       with qrAux do begin
           close;
           sql.Clear;
           sql.Add(
             ' update NF SET NFI_DEST_CGC = :NFI_DEST_CGC, NFI_DEST_INSCRG = :NFI_DEST_INSCRG '+
             ' WHERE NFI_CODI = :NFI_CODI '
           );
           Parameters[0].Value := qrBuscaCLIF_CGCCPF.AsString;
           Parameters[1].Value := qrBuscaCLIF_INSCRG.AsString;
           Parameters[2].Value := qrBuscaNFI_CODI.AsInteger;
           ExecSQL;
       end;

       qrBusca.Next;
       Application.ProcessMessages;
   end;

   qrBusca.Close;
   qrBusca.Open;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  qrBusca.Close;
  qrBusca.Open;
end;

end.



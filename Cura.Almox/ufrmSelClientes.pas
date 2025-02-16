unit ufrmSelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, StdCtrls;

type
  TfrmSelClientes = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    wwDBGrid1: TwwDBGrid;
    Button4: TButton;
    Q_AUX: TwwQuery;
    Button5: TButton;
    Q_RecCli: TwwQuery;
    Q_RecCliCLI_APELIDO: TStringField;
    Q_RecCliCLI_RAZA: TStringField;
    Q_RecCliCLI_CODI: TAutoIncField;
    Q_RecCliSEL: TStringField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Q_RecCliSELChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelClientes: TfrmSelClientes;

implementation

{$R *.DFM}

procedure TfrmSelClientes.FormCreate(Sender: TObject);
begin


    witH Q_RecCli DO begin
        close;
        sql.Clear;
        sql.Add(
           'Select isnull(SEL, ''N'') SEL, CLI_CODI,CLI_RAZA,CLI_APELIDO from CPACLIE order by CLI_APELIDO'
        );
        Open;
    end;
end;

procedure TfrmSelClientes.edtNomeChange(Sender: TObject);
begin
    witH Q_RecCli DO begin
        close;
        sql.Clear;
        sql.Add(
           'Select isnull(SEL, ''N'') SEL, CLI_CODI,CLI_RAZA,CLI_APELIDO from CPACLIE where cli_apelido like ' + QuotedStr('%' + edtNome.Text + '%') +   ' order by CLI_APELIDO'
        );
        Open;
    end;
end;

procedure TfrmSelClientes.Button1Click(Sender: TObject);
begin
   with Q_AUX do begin
       Close;
       sql.Clear;
       sql.Add(
          'update cpaclie set sel = ''S'' '
       );
       ExecSQL;
   end;

   witH Q_RecCli DO begin
        close;
        sql.Clear;
        sql.Add(
           'Select isnull(SEL, ''N'') SEL, CLI_CODI,CLI_RAZA,CLI_APELIDO from CPACLIE order by CLI_APELIDO'
        );
        Open;
    end;
end;

procedure TfrmSelClientes.Button2Click(Sender: TObject);
begin
with Q_AUX do begin
       Close;
       sql.Clear;
       sql.Add(
          'update cpaclie set sel = ''N'' '
       );
       ExecSQL;
   end;

   witH Q_RecCli DO begin
        close;
        sql.Clear;
        sql.Add(
           'Select isnull(SEL, ''N'') SEL, CLI_CODI,CLI_RAZA,CLI_APELIDO from CPACLIE order by CLI_APELIDO'
        );
        Open;
    end;
end;

procedure TfrmSelClientes.Button3Click(Sender: TObject);
begin
witH Q_RecCli DO begin
        close;
        sql.Clear;
        sql.Add(
           'Select isnull(SEL, ''N'') SEL, CLI_CODI,CLI_RAZA,CLI_APELIDO from CPACLIE WHERE SEL = ''S'' order by CLI_APELIDO'
        );
        Open;
    end;
end;

procedure TfrmSelClientes.Button4Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmSelClientes.Button5Click(Sender: TObject);
begin
   with Q_AUX do begin
       Close;
       sql.Clear;
       sql.Add(
          'update cpaclie set sel = ''N'' '
       );
       ExecSQL;
   end;
   Self.Close;
end;

procedure TfrmSelClientes.Q_RecCliSELChange(Sender: TField);
VAR CLIN_ID : Integer;
begin
   CLIN_ID := Q_RecCliCLI_CODI.AsInteger;
   if Q_RecCliSEL.AsString = 'S'  then begin
       with Q_AUX do begin
           Close;
           sql.Clear;
           sql.Add(
              'update cpaclie set sel = ''S'' WHERE CLI_CODI = ' + Q_RecCliCLI_CODI.AsString
           );
           ExecSQL;
       end;
   end else
   begin
       with Q_AUX do begin
           Close;
           sql.Clear;
           sql.Add(
              'update cpaclie set sel = ''N'' WHERE CLI_CODI = ' + Q_RecCliCLI_CODI.AsString
           );
           ExecSQL;
   end;
   end;

   Q_RecCli.Close;
   Q_RecCli.Open;
   Q_RecCli.Locate('CLI_CODI', CLIN_ID, []);


end;

procedure TfrmSelClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmSelClientes := nil;
end;

end.

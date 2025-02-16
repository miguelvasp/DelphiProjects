unit ufrmTrocaLocal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, ADODB;

type
  TfrmTrocaLocal = class(TForm)
    cboLocal: TwwDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    QRLOCAL: TADOQuery;
    QRLOCALLocal_ID: TAutoIncField;
    QRLOCALDescricao: TStringField;
    qraux: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrocaLocal: TfrmTrocaLocal;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmTrocaLocal.FormCreate(Sender: TObject);
begin
  QRLOCAL.Close;
  QRLOCAL.SQL.Clear;
  QRLOCAL.sql.Add(
     ' SELECT L.Local_ID, L.Descricao '+
     ' FROM UsuariosAlmoxLocais U '+
     ' INNER JOIN Local L ON U.LOCAL_ID = L.Local_ID    '+
     ' WHERE U.CH =  '+ FMenu.sqlUsuariosCH.AsString +
     ' ORDER BY L.Descricao   '
  );
  QRLOCAL.Open;
end;

procedure TfrmTrocaLocal.Button1Click(Sender: TObject);
var ch: string;
begin
  ch := FMenu.sqlUsuariosCH.AsString;

   { with qraux do begin
        Close;
        sql.Clear;
        sql.Add('UPDATE UsuarioAlmox SET LOCAL_ID = ' + cboLocal.LookupValue );
        sql.Add(' WhERE CH = ' + ch);
        ExecSQL;
    end;
 
    with qraux do begin
        Close;
        sql.Clear;
        sql.Add('UPDATE UsuarioAlmox SET LOCAL_ID = ' + cboLocal.LookupValue );
        sql.Add(' WhERE CH = ' + ch);
        ExecSQL;
    end;    }
    FMenu.sqlUsuarios.Edit;
    FMenu.sqlUsuariosLOCAL_ID.Value := StrToInt(cboLocal.LookupValue);
    FMenu.sqlUsuarios.Post;
    FMenu.btnAtualizaLocal.Click;
    Self.Close;
end;

end.

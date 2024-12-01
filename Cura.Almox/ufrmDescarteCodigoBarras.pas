unit ufrmDescarteCodigoBarras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmDescarteCodigoBarras = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescarteCodigoBarras: TfrmDescarteCodigoBarras;

implementation

{$R *.DFM}

procedure TfrmDescarteCodigoBarras.Button1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Self.Close;
end;

end.

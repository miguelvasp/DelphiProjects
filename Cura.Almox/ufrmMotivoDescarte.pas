unit ufrmMotivoDescarte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, StdCtrls, Mask, Grids, Wwdbigrd, Wwdbgrid, ADODB;

type
  TfrmMotivoDescarte = class(TForm)
    qrMotivos: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    qrMotivosId: TAutoIncField;
    qrMotivosDescricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMotivoDescarte: TfrmMotivoDescarte;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmMotivoDescarte.FormCreate(Sender: TObject);
begin
  qrMotivos.Open;
end;

end.

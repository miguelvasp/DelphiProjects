unit ufrmTBIBGE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmTBIBGE = class(TForm)
    ADOQuery1: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTBIBGE: TfrmTBIBGE;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmTBIBGE.FormCreate(Sender: TObject);
begin
 ADOQuery1.Open;
end;

end.

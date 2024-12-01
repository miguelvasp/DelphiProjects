unit UfrmDespesas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, DBCtrls, StdCtrls, Mask, Db, ADODB;

type
  TfrmDespesas = class(TForm)
    ADOQuery1: TADOQuery;
    ADOQuery1IdDespesa: TAutoIncField;
    ADOQuery1Nome: TStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    wwDBGrid1: TwwDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDespesas: TfrmDespesas;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TfrmDespesas.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
end;

end.

unit UfrmEstoqueAnalitico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Db, ADODB;

type
  TfrmEstoqueAnalitico = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    lbMaterial: TLabel;
    lbMarca: TLabel;
    lbLocal: TLabel;
    lbQtde: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueAnalitico: TfrmEstoqueAnalitico;

implementation

uses UMenu;

{$R *.DFM}

end.

unit UfrmGuardaMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, RzTabs;

type
  TForm2 = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

end.

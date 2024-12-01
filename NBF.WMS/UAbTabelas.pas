unit UAbTabelas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Gauges, StdCtrls, ExtCtrls, ComCtrls;

type
  TFAbTabelas = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Animate1: TAnimate;
    Gauge1: TGauge;
    Image1: TImage;
    lbProgresso: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbTabelas: TFAbTabelas;

implementation

{$R *.DFM}

end.

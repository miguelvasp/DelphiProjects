unit Unt_Splash1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Gauges, StdCtrls, ExtCtrls, ComCtrls;

type
  TDfm_Splash1 = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Gauge1: TGauge;
    Animate1: TAnimate;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dfm_Splash1: TDfm_Splash1;

implementation

{$R *.DFM}

end.

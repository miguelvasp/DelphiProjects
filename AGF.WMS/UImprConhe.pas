unit UImprConhe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Wwquery;

type
  TFImprConhe = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    Label18: TLabel;
    Label44: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Q_AUX1: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImprConhe: TFImprConhe;

implementation

{$R *.DFM}

procedure TFImprConhe.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;


end.

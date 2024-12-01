unit USeleManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFSeleManifesto = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleManifesto: TFSeleManifesto;

implementation
uses UManifesto, UManifestoCOL   ;
{$R *.DFM}

procedure TFSeleManifesto.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFSeleManifesto.BitBtn1Click(Sender: TObject);
begin

   If RadioGroup1.itemindex = 0 then begin
      Application.Createform(TFManifesto, FManifesto);
      FManifesto.ShowModal;
      FManifesto.Release  ;
   end else begin
      Application.Createform(TFManifestoCOL, FManifestoCOL);
      FManifestoCOL.ShowModal;
      FManifestoCOL.Release  ;

   end ;


end;

end.

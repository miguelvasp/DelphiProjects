unit Usplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, Buttons;

type
  TFsplash = class(TForm)
    Shape1: TShape;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsplash: TFsplash;

implementation

uses UNT_SENHA;

{$R *.DFM}

procedure TFsplash.SpeedButton1Click(Sender: TObject);
begin
        close;
end;

procedure TFsplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action := cafree;
end;

end.

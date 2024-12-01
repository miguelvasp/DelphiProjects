unit CPPMLCB;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TFMenuListCBan = class(TForm)
    Bevel1: TBevel;
    RDG_ORDE: TRadioGroup;
    GRB_FILT: TGroupBox;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    ED_CONF: TEdit;
    ED_CONI: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_IMPRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenuListCBan: TFMenuListCBan;
  BANCI   : string ;
  BANCF   : string ;
  Tipo    : Integer ;
implementation

uses CPPMENU, CPPLBAN ;

{$R *.DFM}

procedure TFMenuListCBan.SBT_SAIRClick(Sender: TObject);
begin
    Close ;
end;

procedure TFMenuListCBan.SBT_VISUClick(Sender: TObject);
begin
  BANCI := ED_CONI.text ;
  BANCF := ED_CONF.text ;

  case RDG_ORDE.ItemIndex of
       0 : Tipo := 0 ;
       1 : Tipo := 1 ;

  end;
  Application.CreateForm(TFListCBancarias,FListCBancarias);
  FListCBancarias.QR_BANC.Preview;
  FListCBancarias.Close;
end;

procedure TFMenuListCBan.SBT_IMPRClick(Sender: TObject);
begin
  BANCI := ED_CONI.text ;
  BANCF := ED_CONF.text ;

  case RDG_ORDE.ItemIndex of
       0 : Tipo := 0 ;
       1 : Tipo := 1 ;
  end ;
  Application.CreateForm(TFListCBancarias,FListCBancarias);
  FListCBancarias.QR_BANC.Print;
  FListCBancarias.Close;
end;

procedure TFMenuListCBan.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,True);
end;

end.

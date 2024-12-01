unit CPPMLIS;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Mask, Dialogs;

type
  TLst_Ccus_Filt = class(TForm)
    Bevel1: TBevel;
    RDG_ORDE: TRadioGroup;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_IMPRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_Ccus_Filt: TLst_Ccus_Filt;
  CODI   : string ;
  CODF   : string ;
  Tipo    : Integer ;
implementation

uses CPPMENU , CPPLCCU ;
{$R *.DFM}

procedure TLst_Ccus_Filt.SBT_SAIRClick(Sender: TObject);
begin
 close ;
end;

procedure TLst_Ccus_Filt.SBT_VISUClick(Sender: TObject);
begin
  CODI := Edit1.text ;
  CODF := Edit2.text ;
  case RDG_ORDE.ItemIndex of
       0 : Tipo := 0 ;
       1 : Tipo := 1 ;
  end;
  Application.Createform(TFListCCusto, FListCCusto);
  FListCCusto.QR_CCUS.Preview ;
  FListCCusto.close ;
  FListCCusto.Release;
end;

procedure TLst_Ccus_Filt.SBT_IMPRClick(Sender: TObject);
begin
  CODI := Edit1.text ;
  CODF := Edit2.text ;
  case RDG_ORDE.ItemIndex of
       0 : Tipo := 0 ;
       1 : Tipo := 1 ;
  end;
  Application.Createform(TFListCCusto, FListCCusto);
  FListCCusto.QR_CCUS.Print ;
  FListCCusto.close ;
  FListCCusto.Release ;
end;

end.

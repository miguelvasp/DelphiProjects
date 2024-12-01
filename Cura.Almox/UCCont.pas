unit UCCont;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, wwdblook, Buttons, Db, DBTables;

type
  TFCCont = class(TForm)
    SBT_SAIR: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_VISU: TSpeedButton;
    GRB_DATA: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    RDG_ORDE: TRadioGroup;
    Bevel1: TBevel;
    DS_CCONT: TDataSource;
    T_CCONT: TTable;
    T_CCONTCTC_CODI: TStringField;
    T_CCONTCTC_DESC: TStringField;
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_IMPRClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCCont: TFCCont;
  ITIPO: INTEGER ;
  CODI : STRING ;
  CODF : STRING ;
implementation
 USES CPPMENU , ULIST_CCTO ;
{$R *.DFM}

procedure TFCCont.SBT_VISUClick(Sender: TObject);
begin
  CODI := WWDBLOOKUPCOMBO1.LookupValue ;
  CODF := WWDBLOOKUPCOMBO2.LookupValue ;
  case RDG_ORDE.ItemIndex of
       0 : iTipo := 0 ;
       1 : iTipo := 1 ;
  END;
  Application.CreateForm(TFLIST_CCONT,FLIST_CCONT);
  FList_CCONT.QR_CCONT.Preview;
  FList_CCONT.Close;
end;

procedure TFCCont.SBT_IMPRClick(Sender: TObject);
begin
  CODI := WWDBLOOKUPCOMBO1.LookupValue ;
  CODF := WWDBLOOKUPCOMBO2.LookupValue ;
  case RDG_ORDE.ItemIndex of
       0 : iTipo := 0 ;
       1 : iTipo := 1 ;
  END;
  Application.CreateForm(TFList_CCONT,FList_CCONT);
  FList_CCONT.QR_CCONT.Preview;
  FList_CCONT.Close;
end;

procedure TFCCont.SBT_SAIRClick(Sender: TObject);
begin
        FCCONT.Close ;
end;

end.

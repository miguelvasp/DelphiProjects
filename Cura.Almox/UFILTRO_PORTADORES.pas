unit UFILTRO_PORTADORES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, wwdblook, Db, Wwdatsrc, DBTables, Wwtable, Buttons;

type
  TFFiltroPort = class(TForm)
    Bevel1: TBevel;
    GRB_DATA: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_VISU: TSpeedButton;
    T_PORTADORES: TwwTable;
    wwDataSource1: TwwDataSource;
    T_PORTADORESLCO_CODI: TStringField;
    T_PORTADORESLCO_BANC: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    RDG_ORDE: TRadioGroup;
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_IMPRClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltroPort: TFFiltroPort;
  ITIPO: INTEGER ;
  CODI : STRING ;
  CODF : STRING ;
implementation

uses CPPMENU, ULIST_PORT ;

{$R *.DFM}

procedure TFFiltroPort.SBT_VISUClick(Sender: TObject);
begin
  CODI := WWDBLOOKUPCOMBO1.LookupValue ;
  CODF := WWDBLOOKUPCOMBO2.LookupValue ;
  case RDG_ORDE.ItemIndex of
       0 : iTipo := 0 ;
       1 : iTipo := 1 ;
  END;
  Application.CreateForm(TFList_PORT,FList_PORT);
  FList_PORT.QR_PORT.Preview;
  FList_PORT.Close;

end;

procedure TFFiltroPort.SBT_IMPRClick(Sender: TObject);
begin

  CODI := WWDBLOOKUPCOMBO1.LookupValue ;
  CODF := WWDBLOOKUPCOMBO2.LookupValue ;

  case RDG_ORDE.ItemIndex of
       0 : iTipo := 0 ;
       1 : iTipo := 1 ;
  END;
  Application.CreateForm(TFList_PORT,FList_PORT);
  FList_PORT.QR_PORT.Print;
  FList_PORT.Close;

end;

procedure TFFiltroPort.SBT_SAIRClick(Sender: TObject);
begin
   FFILTROPORT.CLOSE ;
end;

procedure TFFiltroPort.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.

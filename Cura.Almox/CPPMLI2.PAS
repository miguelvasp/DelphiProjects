unit CPPMLI2;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TFMenuListForCli = class(TForm)
    Bevel1: TBevel;
    RDG_ORDE: TRadioGroup;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    ED_CODI: TEdit;
    ED_CODF: TEdit;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    RDG_SELEC: TRadioGroup;
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
  FMenuListForCli: TFMenuListForCli;

implementation

uses CPPMENU, CPPLCLI, CPPLCL2, CPPLFOR, CPPLFO2;

{$R *.DFM}

procedure TFMenuListForCli.SBT_SAIRClick(Sender: TObject);
begin
  FMenuListForCli.Close;
end;

procedure TFMenuListForCli.SBT_VISUClick(Sender: TObject);
begin
  if (MyList = 'FORN') then
    if (RDG_SELEC.ItemIndex = 0) then
    begin
      Application.CreateForm(TFListFornecedoresFC,FListFornecedoresFC);
      FListFornecedoresFC.QR_FORN.Preview;
      FListFornecedoresFC.Close;
    end
    else
    begin
      Application.CreateForm(TFListFornecedoresR,FListFornecedoresR);
      FListFornecedoresR.QR_FORN.Preview;
      FListFornecedoresR.Close;
    end;
  if (MyList = 'CLIE') then
    if (RDG_SELEC.ItemIndex = 0) then
    begin
      Application.CreateForm(TFListClientesFC,FListClientesFC);
      FListClientesFC.QR_CLIE.Preview;
      FListClientesFC.Close;
    end
    else
    begin
      Application.CreateForm(TFListClientesR,FListClientesR);
      FListClientesR.QR_CLIE.Preview;
      FListClientesR.Close;
    end;
end;

procedure TFMenuListForCli.SBT_IMPRClick(Sender: TObject);
begin
  if (MyList = 'FORN') then
    if (RDG_SELEC.ItemIndex = 0) then
    begin
      Application.CreateForm(TFListFornecedoresFC,FListFornecedoresFC);
      FListFornecedoresFC.QR_FORN.Print;
      FListFornecedoresFC.Close;
    end
    else
    begin
      Application.CreateForm(TFListFornecedoresR,FListFornecedoresR);
      FListFornecedoresR.QR_FORN.Print;
      FListFornecedoresR.Close;
    end;
  if (MyList = 'CLIE') then
    if (RDG_SELEC.ItemIndex = 0) then
    begin
      Application.CreateForm(TFListClientesFC,FListClientesFC);
      FListClientesFC.QR_CLIE.Print;
      FListClientesFC.Close;
    end
    else
    begin
      Application.CreateForm(TFListClientesR,FListClientesR);
      FListClientesR.QR_CLIE.Print;
      FListClientesR.Close;
    end;
end;

procedure TFMenuListForCli.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.

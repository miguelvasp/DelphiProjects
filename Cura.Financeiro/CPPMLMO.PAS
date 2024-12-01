unit CPPMLMO;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask;

type
  TFMenuListMoedas = class(TForm)
    Bevel1: TBevel;
    RDG_ORDE: TRadioGroup;
    GRB_FILT: TGroupBox;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    ED_CODI: TEdit;
    ED_CODF: TEdit;
    Label2: TLabel;
    ME_DATI: TMaskEdit;
    Label4: TLabel;
    ME_DATF: TMaskEdit;
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
  FMenuListMoedas: TFMenuListMoedas;
  SIGLAI : string ;
  SIGLAF : string ;
  DATAI  : tdatetime ;
  DATAF  : tdatetime ;
  TIPO   : integer ;
implementation

uses CPPMENU, CPPLMOE;

{$R *.DFM}

procedure TFMenuListMoedas.SBT_SAIRClick(Sender: TObject);
begin
  Close ;
end;

procedure TFMenuListMoedas.SBT_VISUClick(Sender: TObject);
begin
  SIGLAI := ED_CODI.Text ;
  SIGLAF := ED_CODF.Text ;
  DataI := 0.0 ;
  DataF := 0.0 ;
  if ME_DATI.text <> '  /  /  ' then
     DataI   := strtodate(ME_DATI.text );
  if ME_DATF.text <> '  /  /  ' then
     DataF   := strtodate(ME_DATF.text );

  case RDG_ORDE.ItemIndex of
       0 : Tipo := 0 ;
       1 : Tipo := 1 ;
  end;     
  Application.CreateForm(TFListMoedas,FListMoedas);
  FListMoedas.QR_MOED.Preview;
  FListMoedas.Close;
end;

procedure TFMenuListMoedas.SBT_IMPRClick(Sender: TObject);
begin
  SIGLAI :=  ED_CODI.Text ;
  SIGLAF :=  ED_CODF.Text ;
  DataI  := 0.0 ;
  DataF  := 0.0 ;
  if ME_DATI.text <> '  /  /  ' then
     DataI   := strtodate(ME_DATI.text );
  if ME_DATF.text <> '  /  /  ' then
     DataF   := strtodate(ME_DATF.text );

  case RDG_ORDE.ItemIndex of
       0 : Tipo := 0 ;
       1 : Tipo := 1 ;
  end;
  Application.CreateForm(TFListMoedas,FListMoedas);
  FListMoedas.QR_MOED.Print;
  FListMoedas.Close;
end;

procedure TFMenuListMoedas.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.

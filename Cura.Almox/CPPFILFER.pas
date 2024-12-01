unit CPPFILFER;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask;

type
  TLst_Fer_Filt = class(TForm)
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
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
  Lst_Fer_Filt: TLst_Fer_Filt;
  DATAI : tdatetime ;
  DATAF : tdatetime ;

implementation
uses CPPMENU , CPPLFER ;
{$R *.DFM}


procedure TLst_Fer_Filt.SBT_VISUClick(Sender: TObject);
begin
  DATAI := 0.0 ;
  DATAF := 0.0 ;
  if maskedit1.text <> '  /  /  ' then
     DATAI  := strtodate(maskedit1.text );
  if maskedit2.text <> '  /  /  ' then
     DATAF  := strtodate(maskedit2.text );
  
  
  Application.Createform(TFListFeriados, FListFeriados);
  FListFeriados.QR_FERI.Preview ;
  FListFeriados.close ;
  FListFeriados.Release;
end;

procedure TLst_Fer_Filt.SBT_IMPRClick(Sender: TObject);
begin
  DATAI := 0.0 ;
  DATAF := 0.0 ;
  if maskedit1.text <> '  /  /  ' then
     DATAI  := strtodate(maskedit1.text );
  if maskedit2.text <> '  /  /  ' then
     DATAF  := strtodate(maskedit2.text );
  
  Application.Createform(TFListFeriados, FListFeriados);
  FListFeriados.QR_FERI.Print ;
  FListFeriados.close ;
  FListFeriados.Release;
end;

procedure TLst_Fer_Filt.SBT_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TLst_Fer_Filt.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.

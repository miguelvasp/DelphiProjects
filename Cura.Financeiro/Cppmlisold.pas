unit Cppmlisold;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Mask, Dialogs;

type
  TFMenuList = class(TForm)
    Bevel1: TBevel;
    RDG_ORDE: TRadioGroup;
    SBT_VISU: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    GRB_DATA: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
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
  FMenuList: TFMenuList;
  iTipo: integer ;
  CODI : string ;
  CODF : string ;

implementation
uses CPPMENU, CPPLCCU, CPPLCON, CPPLPGT, CPPLDIF, CPPLLAY, CPPLFER;
{$R *.DFM}

procedure TFMenuList.SBT_SAIRClick(Sender: TObject);
begin
  FMenuList.Close;
end;

procedure TFMenuList.SBT_VISUClick(Sender: TObject);
begin
  CODI := Edit1.text ;
  CODF := Edit2.text ;
  case RDG_ORDE.ItemIndex of
       0 : iTipo := 0 ;
       1 : iTipo := 1 ;
  end;

 if (MyList = 'CONT') then
  begin
  Application.CreateForm(TFListCGerenciais,FListCGerenciais);
  FListCGerenciais.QR_CONT.Preview;
  FListCGerenciais.Close;
  end;

  if (MyList = 'PGTO') then
  begin
    Application.CreateForm(TFListFPgto,FListFPgto);
    FListFPgto.QR_PGTO.Preview;
    FListFPgto.Close;
  end;
  if (MyList = 'DIFE') then
  begin
    Application.CreateForm(TFListDescAcres,FListDescAcres);
    FListDescAcres.QR_DIFE.Preview;
    FListDescAcres.Close;
  end;
  if (MyList = 'LAYO') then
  begin
    Application.CreateForm(TFListLCheques,FListLCheques);
    FListLCheques.QR_LAYO.Preview;
    FListLCheques.Close;
  end;
  if (MyList = 'CCUS') then
  begin
    Application.CreateForm(TFListCCusto,FListCCusto);
    FListCCusto.QR_CCUS.Preview;
    FListCCusto.Close;
  end;
end;

procedure TFMenuList.SBT_IMPRClick(Sender: TObject);
begin
  CODI := Edit1.text ;
  CODF := Edit2.text ;
  case RDG_ORDE.ItemIndex of
       0 : iTipo := 0 ;
       1 : iTipo := 1 ;
  end;

  if (MyList = 'CONT') then
  begin
    Application.CreateForm(TFListCGerenciais,FListCGerenciais);
    FListCGerenciais.QR_CONT.Print;
    FListCGerenciais.Close;
  end;
  if (MyList = 'PGTO') then
  begin
    Application.CreateForm(TFListFPgto,FListFPgto);
    FListFPgto.QR_PGTO.Print;
    FListFPgto.Close;
  end;
  if (MyList = 'DIFE') then
  begin
    Application.CreateForm(TFListDescAcres,FListDescAcres);
    FListDescAcres.QR_DIFE.Print;
    FListDescAcres.Close;
  end;
  if (MyList = 'LAYO') then
  begin
    Application.CreateForm(TFListLCheques,FListLCheques);
    FListLCheques.QR_LAYO.Print;
    FListLCheques.Close;
  end;
  if (MyList = 'CCUS') then
  begin
    Application.CreateForm(TFListCCusto,FListCCusto);
    FListCCusto.QR_CCUS.Print;
    FListCCusto.Close;
  end;

end;




procedure TFMenuList.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,True);
end;

end.

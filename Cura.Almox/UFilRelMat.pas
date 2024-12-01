unit UFilRelMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, Wwquery, wwdblook;

type
  TFFilRelMat = class(TForm)
    GRB_FILT: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    SBT_VISU: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    ED_MATI: TEdit;
    ED_MATF: TEdit;
    procedure SBT_VISUClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFilRelMat: TFFilRelMat;
  MATERIALI: String;
  MATERIALF: String;

implementation

uses URelMat;

{$R *.DFM}

procedure TFFilRelMat.SBT_VISUClick(Sender: TObject);
begin
  MATERIALI := ED_MATI.text ;
  MATERIALF := ED_MATF.text ;


  Application.CreateForm(TFRelMateriais,FRelMateriais);
  FRelMateriais.QR_MAT.Preview;
  FRelMateriais.Close;
end;

procedure TFFilRelMat.SBT_SAIRClick(Sender: TObject);
begin
        Close;
end;

procedure TFFilRelMat.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

end.

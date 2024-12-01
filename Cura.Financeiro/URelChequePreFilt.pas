unit URelChequePreFilt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, wwdblook, Db, DBTables, Wwquery, Buttons, ExtCtrls;

type
  TFRelChequePreFilt = class(TForm)
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Edit2: TEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    Label13: TLabel;
    MaskEdit4: TMaskEdit;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Label7: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelChequePreFilt: TFRelChequePreFilt;

implementation

uses UrelChequePre,CPPMENU;

{$R *.DFM}

procedure TFRelChequePreFilt.FormCreate(Sender: TObject);
begin
  Q_BANC.open ;
  Q_FORN.Open ;
end;

procedure TFRelChequePreFilt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_FORN.close ;
   Q_BANC.Close ;
   action := cafree ;
end;

procedure TFRelChequePreFilt.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;
end;

procedure TFRelChequePreFilt.SpeedButton1Click(Sender: TObject);
begin
            Application.Createform(TFRelChequePre, FRelChequePre);
            FRelChequePre.ChequePre.Preview ;
            FRelChequePre.close ;
            FRelChequePre.Release ;

end;

procedure TFRelChequePreFilt.SpeedButton2Click(Sender: TObject);
begin
            Application.Createform(TFRelChequePre, FRelChequePre);
            FRelChequePre.ChequePre.Print ;
            FRelChequePre.close ;
            FRelChequePre.Release ;

end;

procedure TFRelChequePreFilt.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFRelChequePreFilt.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,True);

end;

end.

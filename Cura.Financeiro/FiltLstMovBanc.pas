unit FiltLstMovBanc;

interface                                                                     

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Buttons, Mask, StdCtrls, wwdblook, ExtCtrls;

type
  TFFiltLstMovBanc = class(TForm)
    GRB_FILT: TGroupBox;
    Label10: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cboBan: TwwDBLookupCombo;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Label1: TLabel;
    cboEmp: TwwDBLookupCombo;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    SpeedButton4: TSpeedButton;
    rdS: TRadioButton;
    rdA: TRadioButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltLstMovBanc: TFFiltLstMovBanc;
  StrBanco : string ;
  StrEmp   : String;
  Datai    : Tdatetime ;
  Dataf    : Tdatetime ;
  Ordenacao : string ;

implementation
uses cppmenu, RelMovBanc, UlstMovBancEmp, ULstMovBancEmpRes ;

{$R *.DFM}

procedure TFFiltLstMovBanc.SpeedButton1Click(Sender: TObject);
begin
  StrBanco := '';
  StrEmp   := '';
  Datai    := 0.0 ;
  Dataf    := 0.0 ;
  Ordenacao := '' ;

  If (cboBan.Text <> '') and (cboBan.LookupValue <> '') then
          StrBanco := cboBan.lookupvalue ;
  If (cboEmp.Text <> '') and (cboEmp.LookupValue <> '') then
          strEmp   := cboEmp.LookupValue;

  if Maskedit1.text <> '  /  /    ' then
      Datai    := strtodate(Maskedit1.text)
  else
        Datai := Q_BANCBAN_DATA.asdatetime ;

  if Maskedit2.text <> '  /  /    ' then
        Dataf := strtodate(Maskedit2.text);


  If rdS.Checked then
  Begin
          Application.Createform(TFLstMovBancEmpRes, FLstMovBancEmpRes);
          FLstMovBancEmpRes.Lst_MovBanc.Preview;
          FLstMovBancEmpRes.close ;
          FLstMovBancEmpRes.Release;
  End Else If rdA.checked then
  Begin
         Application.Createform(TFLstMovBancEmp, FLstMovBancEmp);
         FLstMovBancEmp.Lst_MovBanc.Preview;
         FLstMovBancEmp.close ;
         FLstMovBancEmp.Release;
  End; 

end;

procedure TFFiltLstMovBanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_BANC.close ;
  Q_EMP.CLOSE;
  action := cafree;
end;

procedure TFFiltLstMovBanc.FormCreate(Sender: TObject);
begin
  Q_BANC.Open ;
  Q_EMP.Open;
  //////RadioGroup1.itemindex := 0 ;   // Clientes
end;

procedure TFFiltLstMovBanc.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFFiltLstMovBanc.SpeedButton2Click(Sender: TObject);
begin
  StrBanco := '';
  StrEmp   := '';
  Datai    := 0.0 ;
  Dataf    := 0.0 ;
  Ordenacao := '' ;

  If (cboBan.Text <> '') and (cboBan.LookupValue <> '') then
          StrBanco := cboBan.lookupvalue ;
  If (cboEmp.Text <> '') and (cboEmp.LookupValue <> '') then
          strEmp   := cboEmp.LookupValue;

  if Maskedit1.text <> '  /  /    ' then
      Datai    := strtodate(Maskedit1.text)
  else Datai := Q_BANCBAN_DATA.asdatetime ;

  if Maskedit2.text <> '  /  /    ' then Dataf    := strtodate(Maskedit2.text);

  Application.Createform(TFLstMovBanc, FLstMovBanc);
  FLstMovBanc.Lst_MovBanc.Print;
  FLstMovBanc.close ;
  FLstMovBanc.Release;

end;

procedure TFFiltLstMovBanc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;

end;

procedure TFFiltLstMovBanc.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

procedure TFFiltLstMovBanc.SpeedButton4Click(Sender: TObject);
begin
        cboEmp.Text := '';
        cboBan.Text := '';
        MaskEdit1.Text := '';
        MaskEdit2.Text := '';
end;

end.

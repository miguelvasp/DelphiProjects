unit UFRelManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdblook, Mask, StdCtrls, Buttons, Db, DBTables, Wwquery,
  Wwdatsrc;

type
  TFFRelManifesto = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Label35: TLabel;
    Label34: TLabel;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_TRANSTRANS_RAZA: TStringField;
    Data1: TMaskEdit;
    Label6: TLabel;
    Data2: TMaskEdit;
    Edit1: TEdit;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo13Enter(Sender: TObject);
    procedure wwDBLookupCombo13Exit(Sender: TObject);
    procedure wwDBLookupCombo12Enter(Sender: TObject);
    procedure wwDBLookupCombo12Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFRelManifesto: TFFRelManifesto;
  TRA    : String;
  NUM   : String;
  DATAI  : tdatetime;
  DATAF  : tdatetime;
implementation
uses URelManifesto;
{$R *.DFM}

procedure TFFRelManifesto.SpeedButton3Click(Sender: TObject);
begin
  close ;  
end;

procedure TFFRelManifesto.SBT_VISUClick(Sender: TObject);
begin
  if wwDBLookupCombo7.text <> '' then
       TRA := wwDBLookupCombo7.lookupvalue ;
  DATAI :=  0.0 ;
  DATAF :=  0.0 ;

  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );

  if EDIT1.text <> '' then
       NUM := EDIT1.text ;


   Application.CreateForm(TFRelMANIFESTO,FRelMANIFESTO);
   FRelMANIFESTO.MANIF.Preview;
   FRelMANIFESTO.Close;

   TRA := '' ;
   NUM := '' ;
   DATAI := 0.00 ;
   DATAF := 0.00 ;

end;

procedure TFFRelManifesto.wwDBLookupCombo7Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := clwindow;

    { IF wwDBLookupCombo7.text = '' then
     wwDBLookupCombo13.enabled := false
     else begin
     wwDBLookupCombo13.enabled := true ;
     wwDBLookupCombo13.setfocus ; 
     end ;      }

end;

procedure TFFRelManifesto.wwDBLookupCombo7Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFRelManifesto.wwDBLookupCombo13Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFRelManifesto.wwDBLookupCombo13Exit(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFFRelManifesto.wwDBLookupCombo12Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFRelManifesto.wwDBLookupCombo12Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFFRelManifesto.FormCreate(Sender: TObject);
begin
 { Q_CLIN.open ;
  Q_TOS.open ;
  Q_CONTRATO.open ;  }
  Q_TRANS.open ;
end;

procedure TFFRelManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 { Q_CLIN.close ;
  Q_TOS.close ;
  Q_CONTRATO.close ;
  action := cafree ; }

  Q_TRANS.close ;
  action := cafree ;
end;

procedure TFFRelManifesto.Data1Enter(Sender: TObject);
begin
   (Sender as Tmaskedit).Color := ClAqua;
end;

procedure TFFRelManifesto.Data1Exit(Sender: TObject);
begin
  (Sender as Tmaskedit).Color := Clwindow ;
end;

procedure TFFRelManifesto.Data2Exit(Sender: TObject);
begin
  (Sender as Tmaskedit).Color := Clwindow ;
end;

procedure TFFRelManifesto.Data2Enter(Sender: TObject);
begin
   (Sender as Tmaskedit).Color := Claqua ;
end;

procedure TFFRelManifesto.Edit1Enter(Sender: TObject);
begin
  (Sender as Tedit).Color := Claqua ;
end;

procedure TFFRelManifesto.Edit1Exit(Sender: TObject);
begin
  (Sender as Tedit).Color := Clwindow ;
end;

end.

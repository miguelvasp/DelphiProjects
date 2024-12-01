unit UFRelContrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdblook, Mask, StdCtrls, Buttons, Db, DBTables, Wwquery,
  Wwdatsrc;

type
  TFFRelContrato = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    wwDBLookupCombo13: TwwDBLookupCombo;
    wwDBLookupCombo12: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Q_CLIN: TwwQuery;
    Q_TOS: TwwQuery;
    Q_TOSTOS_NOME: TStringField;
    Q_TOSTOS_ID: TAutoIncField;
    Q_CONTRATO: TwwQuery;
    DS_CLIN: TwwDataSource;
    Q_CONTRATOCTT_NOME: TStringField;
    Q_CONTRATOCLIN_ID: TIntegerField;
    Q_CONTRATOCTT_ID: TAutoIncField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFRelContrato: TFFRelContrato;
  CONT   : String;
  CLI    : String;
  TPOS   : String;
implementation
uses URelContrato; 
{$R *.DFM}

procedure TFFRelContrato.SpeedButton3Click(Sender: TObject);
begin
  close ;  
end;

procedure TFFRelContrato.SBT_VISUClick(Sender: TObject);
begin
  if wwDBLookupCombo7.text <> '' then
       CLI := wwDBLookupCombo7.lookupvalue ;
  if wwDBLookupCombo13.text <> '' then
       CONT := wwDBLookupCombo13.lookupvalue ;
  if wwDBLookupCombo12.text <> '' then
       TPOS := wwDBLookupCombo12.lookupvalue ;


   Application.CreateForm(TFRelContratos,FRelContratos);
   FRelContratos.CONTRA.Preview;
   FRelContratos.Close;

   CLI := '' ;
   CONT := '' ;
   TPOS := '' ;
end;

procedure TFFRelContrato.wwDBLookupCombo7Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := clwindow;

     IF wwDBLookupCombo7.text = '' then
     wwDBLookupCombo13.enabled := false
     else begin
     wwDBLookupCombo13.enabled := true ;
     wwDBLookupCombo13.setfocus ; 
     end ;

end;

procedure TFFRelContrato.wwDBLookupCombo7Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFRelContrato.wwDBLookupCombo13Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFRelContrato.wwDBLookupCombo13Exit(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFFRelContrato.wwDBLookupCombo12Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFRelContrato.wwDBLookupCombo12Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFFRelContrato.FormCreate(Sender: TObject);
begin
  Q_CLIN.open ;
  Q_TOS.open ;
  Q_CONTRATO.open ;
end;

procedure TFFRelContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CLIN.close ;
  Q_TOS.close ;
  Q_CONTRATO.close ;
  action := cafree ; 
end;

end.

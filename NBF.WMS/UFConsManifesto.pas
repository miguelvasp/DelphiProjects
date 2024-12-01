unit UFConsManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, wwdbedit, StdCtrls, wwdblook, Buttons, Db, DBTables,
  Wwquery;

type
  TFFConsManifesto = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Label20: TLabel;
    combo_cliente: TwwDBLookupCombo;
    dbnf: TwwDBEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label3: TLabel;
    Data1: TMaskEdit;
    Label6: TLabel;
    Data2: TMaskEdit;
    RadioGroup2: TRadioGroup;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Label2: TLabel;
    wwDBEdit2: TwwDBEdit;
    rgStatus: TRadioGroup;
    cboMotorista: TwwDBLookupCombo;
    Label5: TLabel;
    qrMotorista: TwwQuery;
    qrMotoristamot_id: TAutoIncField;
    qrMotoristaMot_nome: TStringField;
    rgRomaneio: TRadioGroup;
    Label7: TLabel;
    wwDBEdit3: TwwDBEdit;
    chkOs: TCheckBox;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure dbnfEnter(Sender: TObject);
    procedure dbnfExit(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure wwDBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsManifesto: TFFConsManifesto;
  MANIF : string ;
  MANIF2 : string ;
  NF : string ;
  CLI : string ;
  DATAI  : tdatetime;
  DATAF  : tdatetime;
  TIPO : string ;
  TRANSP : string ;
  OS : string ;
implementation
uses UConsManifesto, UfrmExportaManifesto ;
{$R *.DFM}

procedure TFFConsManifesto.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFFConsManifesto.SBT_VISUClick(Sender: TObject);
begin
  if wwDBEdit1.text <> '' then
       MANIF := wwDBEdit1.Text  ;
  if dbnf.text <> '' then
       NF := dbnf.Text ;
  if combo_cliente.text <> '' then
       CLI := combo_cliente.lookupvalue ;

  if wwDBEdit3.text <> '' then
       MANIF2 := wwDBEdit3.Text  ;

  if wwDBEdit2.text <> '' then

       OS := wwDBEdit2.text ;


  case radiogroup1.itemindex of
    0 :Tipo:= 'E' ;
    1 :Tipo:= 'C' ;
  end ;

  case radiogroup2.itemindex of
    0 :TRANSP:=  'S' ;
    1 :TRANSP:=  'N' ;
  end ;
  DATAI :=  0.0 ;
  DATAF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );

  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );

 Application.Createform(TFConsMANIFESTO,FConsMANIFESTO);
 FConsMANIFESTO.ShowModal;
 FConsMANIFESTO.Release  ;

 DATAI :=  0.0 ;
 DATAF :=  0.0 ;
 MANIF := '' ;
 MANIF2 := '';
 NF := '' ;
 CLI := '' ;
 OS := '' ;
end;

procedure TFFConsManifesto.wwDBEdit1Enter(Sender: TObject);
begin
(Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsManifesto.wwDBEdit1Exit(Sender: TObject);
begin          
(Sender as TwwDbEdit).Color := Clwindow ;
end;

procedure TFFConsManifesto.dbnfEnter(Sender: TObject);
begin
  (Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsManifesto.dbnfExit(Sender: TObject);
begin
  (Sender as TwwDbEdit).Color := Clwindow ;
end;

procedure TFFConsManifesto.combo_clienteEnter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsManifesto.combo_clienteExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFConsManifesto.FormCreate(Sender: TObject);
begin
   Q_CLINBF.open ;
   qrMotorista.Open;
end;

procedure TFFConsManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       Q_CLINBF.close ;
       qrMotorista.close;
       action := cafree ; 
end;

procedure TFFConsManifesto.RadioGroup1Click(Sender: TObject);
begin

  IF RadioGroup1.itemindex = 1 then
     RadioGroup2.itemindex := 0 ;
     
end;

procedure TFFConsManifesto.wwDBEdit1Change(Sender: TObject);
begin
   wwDBEdit3.Text := wwDBEdit1.Text;
end;

end.

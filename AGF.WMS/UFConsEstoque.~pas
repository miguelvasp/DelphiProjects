unit UFConsEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, Db, DBTables, Wwquery,
  Wwdatsrc, DBCtrls, wwdbedit;

type
  TFFConsEstoque = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Q_AREA: TwwQuery;
    Q_CLINBF: TwwQuery;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOMe: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_PROD: TwwQuery;
    DS_CLINBF: TwwDataSource;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    Label7: TLabel;
    MaskEdit2: TMaskEdit;
    Data2: TMaskEdit;
    Label6: TLabel;
    Data1: TMaskEdit;
    Label3: TLabel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label20: TLabel;
    Label14: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    DBText3: TDBText;
    DS_PROD: TwwDataSource;
    Panel12: TPanel;
    Label8: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_TPROD: TwwQuery;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODCLIN_ID: TIntegerField;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    rgAvaria: TRadioGroup;
    SBT_VISU: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DS_CLINBFDataChange(Sender: TObject; Field: TField);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsEstoque: TFFConsEstoque;
  AREA   : String;
  CLI    : String;
  PROD   : String;
  TPROD   : String;
  VENCI  : tdatetime;
  VENCF  : tdatetime;
  BATCHI : tdatetime;
  BATCHF : tdatetime;
  LOTE : STRING ;
  ///rTipo : integer ;
implementation
uses USenha,Umenu, UAbTabelas , UConsEstoque;
{$R *.DFM}

procedure TFFConsEstoque.wwDBLookupCombo3Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsEstoque.wwDBLookupCombo3Exit(Sender: TObject);
begin
 (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFConsEstoque.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsEstoque.wwDBLookupCombo4Exit(Sender: TObject);
begin
  IF wwDBLookupCombo4.text = '' then     begin
     wwDBLookupCombo1.enabled := false   ;
     wwDBLookupCombo2.enabled := false   ;

     wwDBLookupCombo1.text := ''   ;
     wwDBLookupCombo2.text := ''   ;
     DBText3.visible := false ;
  end   else begin
     wwDBLookupCombo1.enabled := true ;
     wwDBLookupCombo2.enabled := true ;
     wwDBLookupCombo1.setfocus ;
     DBText3.visible := true ;
     end ;


  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsEstoque.wwDBLookupCombo1Enter(Sender: TObject);
begin
   IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;

  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsEstoque.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsEstoque.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsEstoque.Data1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsEstoque.Data2Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsEstoque.Data2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsEstoque.MaskEdit1Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsEstoque.MaskEdit1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsEstoque.MaskEdit2Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsEstoque.MaskEdit2Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsEstoque.Edit1Enter(Sender: TObject);
begin
    (Sender as Tedit).Color := ClAqua;
end;

procedure TFFConsEstoque.Edit1Exit(Sender: TObject);
begin
      (Sender as Tedit).Color := Clwindow;
end;

procedure TFFConsEstoque.DS_CLINBFDataChange(Sender: TObject;
  Field: TField);
begin
   if wwDBLookupCombo4.text <> '' then
      Edit1.enabled := true
    else begin
     Edit1.text := '' ;
     Edit1.enabled := false ;
    end ;

end;

procedure TFFConsEstoque.SBT_VISUClick(Sender: TObject);
var
  TPROD_ASTERISCO : string ;
begin
  if wwDBLookupCombo3.text <> '' then
       AREA := wwDBLookupCombo3.lookupvalue ;
  if wwDBLookupCombo4.text <> '' then
       CLI := wwDBLookupCombo4.lookupvalue ;
  if wwDBLookupCombo1.text <> '' then
       PROD := wwDBLookupCombo1.lookupvalue ;

  if wwDBLookupCombo2.text <> '' then begin
        TPROD_ASTERISCO := copy(wwDBLookupCombo2.text,1,1);
     IF (TPROD_ASTERISCO <> '*') then
        TPROD := wwDBLookupCombo2.lookupvalue ;
  end ;

  if wwDBEdit1.text <> '' then
       LOTE := wwDBEdit1.text ;


  VENCI :=  0.0 ;
  VENCF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     VENCI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     VENCF  := strtodate(Data2.text );

  BATCHI :=  0.0 ;
  BATCHF :=  0.0 ;
  if MaskEdit1.text <> '  /  /    ' then
     BATCHI  := strtodate(MaskEdit1.text );
  if MaskEdit2.text <> '  /  /    ' then
     BATCHF  := strtodate(MaskEdit2.text );


  {case radiogroup2.itemindex of
    0 : rTipo := 0 ;
    1 : rTipo := 1 ;
  end ;
    ///////////////////////////////////////
  if RadioGroup1.itemindex = 0 then begin }
  {Application.Createform(TFRelVendPeriodo, FRelVendPeriodo);
  FRelVendPeriodo.VENDPERIODO.Preview ;
  FRelVendPeriodo.close ;
  FRelVendPeriodo.Release;}
  ///end;
  Application.Createform(TFConsEstoque,FConsEstoque);
  FConsEstoque.ShowModal;
  FConsEstoque.Release  ;

  AREA := '' ;
  CLI := '' ;
  PROD := '' ;
  TPROD := '' ;
  VENCI := 0.00 ;
  VENCF := 0.00 ;
  BATCHI := 0.00 ;
  BATCHF := 0.00 ;
end;

procedure TFFConsEstoque.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
  
   Q_AREA.open ;
   Q_CLINBF.open ;
   Q_PROD.open ;
   Q_TPROD.open ;
end;

procedure TFFConsEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_AREA.close ;
   Q_CLINBF.close ;
   Q_PROD.close ;
   Q_TPROD.close  ;
   action := cafree ;  
end;

procedure TFFConsEstoque.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;

end;

procedure TFFConsEstoque.wwDBLookupCombo2Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsEstoque.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFConsEstoque.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as twwDBEdit).Color := ClAqua;
end;
     {ppppp}
procedure TFFConsEstoque.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as twwDBEdit).Color := Clwindow ;
end;

procedure TFFConsEstoque.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.

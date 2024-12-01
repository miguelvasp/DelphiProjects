unit UFConsultaTAG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, wwdbedit, wwdblook, StdCtrls, Mask, Buttons, ExtCtrls, Db,
  Wwdatsrc, DBTables, Wwquery;

type
  TFFConsultaTAG = class(TForm)
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Data2: TMaskEdit;
    Data1: TMaskEdit;
    combo_cliente: TwwDBLookupCombo;
    DBTAG: TwwDBEdit;
    combo_produto: TwwDBLookupCombo;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    DBText3: TDBText;
    panel12: TPanel;
    Label1: TLabel;
    Data3: TMaskEdit;
    Label5: TLabel;
    Data4: TMaskEdit;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    DS_PROD: TwwDataSource;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBTAGEnter(Sender: TObject);
    procedure DBTAGExit(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure combo_produtoEnter(Sender: TObject);
    procedure combo_produtoExit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure Data3Enter(Sender: TObject);
    procedure Data3Exit(Sender: TObject);
    procedure Data4Enter(Sender: TObject);
    procedure Data4Exit(Sender: TObject);
    procedure combo_clienteChange(Sender: TObject);
    procedure combo_produtoCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaTAG: TFFConsultaTAG;
    PALLETTAG : string  ;
    CLI : string;
    PROD: STRING;
    PERI_ENT  : tdatetime;
    PERF_ENT  : tdatetime;
    PERI_SAI  : tdatetime;
    PERF_SAI  : tdatetime;
    LOTE : STRING;
implementation
uses UConsultaTAG ;
{$R *.DFM}

procedure TFFConsultaTAG.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFFConsultaTAG.DBTAGEnter(Sender: TObject);
begin
  (Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaTAG.DBTAGExit(Sender: TObject);
begin
  (Sender as TwwDbEdit).Color := Clwindow ;
end;

procedure TFFConsultaTAG.combo_clienteEnter(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaTAG.combo_clienteExit(Sender: TObject);
begin
  (Sender as TwwDblookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaTAG.combo_produtoEnter(Sender: TObject);
begin
    IF combo_produto.text = '' then
      panel12.visible := true else
      panel12.visible := false ;
       (Sender as TwwDblookupcombo).Color := ClAqua;
end;

procedure TFFConsultaTAG.combo_produtoExit(Sender: TObject);
begin
   IF combo_produto.text = '' then
      panel12.visible := true else
      panel12.visible := false ;
   (Sender as TwwDblookupcombo).Color := Clwindow ;
end;

procedure TFFConsultaTAG.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTAG.Data1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaTAG.Data2Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTAG.Data2Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaTAG.Data3Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTAG.Data3Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaTAG.Data4Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTAG.Data4Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaTAG.combo_clienteChange(Sender: TObject);
begin
  IF Combo_CLIENTE.text = '' then     begin
     Combo_PRODUTO.enabled := false   ;
     combo_produto.Text  := '';  
     DBText3.visible := false ;
   end   else begin
     Combo_PRODUTO.enabled := true ;
     DBText3.visible := true ;
  end ;

end;

procedure TFFConsultaTAG.combo_produtoCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  IF combo_produto.text = '' then
      panel12.visible := true else
      panel12.visible := false ;
end;

procedure TFFConsultaTAG.SBT_VISUClick(Sender: TObject);
begin
  if DBTAG.text <> '' then
       PALLETTAG := DBTAG.Text  ;
  if combo_cliente.text <> '' then
       CLI := combo_cliente.lookupvalue ;
  if combo_produto.text <> '' then
       PROD := combo_produto.lookupvalue ;


  PERI_ENT :=  0.0 ;
  PERF_ENT :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     PERI_ENT  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     PERF_ENT  := strtodate(Data2.text );

  PERI_SAI :=  0.0 ;
  PERF_SAI :=  0.0 ;
  if Data3.text <> '  /  /    ' then
     PERI_SAI  := strtodate(Data3.text );
  if Data4.text <> '  /  /    ' then
     PERF_SAI  := strtodate(Data4.text );

 Application.Createform(TFConsultaTAG,FConsultaTAG);
 FConsultaTAG.ShowModal;
 FConsultaTAG.Release  ;

  CLI := '' ;
  PROD := '' ;
  PALLETTAG := '';
  PERI_SAI := 0.0 ;
  PERF_SAI := 0.0 ;
  PERI_ENT := 0.0 ;
  PERF_ENT := 0.0 ;
end;

procedure TFFConsultaTAG.FormCreate(Sender: TObject);
begin
  Q_CLINBF.open ;
  Q_PROD.open ;
end;

procedure TFFConsultaTAG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  
  Q_CLINBF.close ;
  Q_PROD.close ;
  action := cafree ;
end;

end.

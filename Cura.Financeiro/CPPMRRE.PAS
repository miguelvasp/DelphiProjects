unit CPPMRRE;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls,ExtCtrls,printers, DBCtrls, DB,
  DBTables,Spin, wwdblook, Wwdatsrc,
  Wwtable, Buttons, wwidlg, DBLookup, Mask, Wwquery;

type
  TFMenuRelRece = class(TForm)
    ReportCombo: TRadioGroup;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    SpButSair: TSpeedButton;
    SpButImprime: TSpeedButton;
    StatusBar: TPanel;
    SpButVisualiza: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ED_CONTAI: TEdit;
    RG_SITU: TRadioGroup;
    ME_CODI: TMaskEdit;
    ME_CODF: TMaskEdit;
    ME_VENCI: TMaskEdit;
    ME_VENCF: TMaskEdit;
    ME_RECEI: TMaskEdit;
    ME_RECEF: TMaskEdit;
    Label4: TLabel;
    DBCB_CONTI: TwwDBLookupCombo;
    DBCB_BANCI: TwwDBLookupCombo;
    T_CONT: TwwTable;
    DS_CONT: TwwDataSource;
    DS_RECE: TwwDataSource;
    T_BANC: TwwTable;
    DS_BANC: TwwDataSource;
    T_BANCBAN_CODI: TStringField;
    T_BANCBAN_CONT: TStringField;
    T_BANCBAN_NOME: TStringField;
    T_BANCBAN_AGEN: TStringField;
    T_BANCBAN_NAGE: TStringField;
    T_BANCBAN_DATA: TDateTimeField;
    T_BANCBAN_SALD: TFloatField;
    T_BANCBAN_NLAN: TFloatField;
    T_BANCBAN_LCHE: TStringField;
    T_BANCBAN_UCHE: TStringField;
    T_CONTCON_CODI: TStringField;
    T_CONTCON_DESC: TStringField;
    T_CONTCON_ENSA: TStringField;
    T_CONTCON_OPER: TStringField;
    T_CONTCON_FLOA: TFloatField;
    T_CONTCON_FLUX: TStringField;
    T_CONTCON_CTCO: TStringField;
    T_RECE: TwwTable;
    DBLC_REC_RAZA: TwwDBLookupCombo;
    T_RECEREC_CODI: TIntegerField;
    T_RECEREC_NFIS: TStringField;
    T_RECEREC_DEVE: TStringField;
    T_RECEREC_RAZA: TStringField;
    T_RECEREC_CGER: TStringField;
    T_RECEREC_VALO: TFloatField;
    T_RECEREC_DESC: TFloatField;
    T_RECEREC_VLIQ: TFloatField;
    T_RECEREC_VENC: TDateTimeField;
    T_RECEREC_BANC: TStringField;
    T_RECEREC_CONT: TStringField;
    T_RECEREC_VPAG: TFloatField;
    T_RECEREC_EMIS: TDateTimeField;
    T_RECEREC_MOED: TStringField;
    T_RECEREC_DCON: TDateTimeField;
    T_RECEREC_MORI: TStringField;
    T_RECEREC_DCOR: TDateTimeField;
    T_RECEREC_VORI: TFloatField;
    T_RECEREC_VPRE: TDateTimeField;
    T_RECEREC_HIST: TStringField;
    T_RECEREC_SALD: TFloatField;
    T_RECEREC_SITU: TStringField;
    T_RECEREC_FILI: TStringField;
    procedure ExitBtnClick(Sender: TObject);
    procedure SpButSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpButImprimeClick(Sender: TObject);
    procedure SpButVisualizaClick(Sender: TObject);
    procedure DBCB_BANCIExit(Sender: TObject);
  private
    { Private declarations }
    procedure PickReport;
  public
    { Public declarations }
  end;

var
  FMenuRelRece: TFMenuRelRece;

implementation
uses CPPMENU, CPPRRCO;
{$R *.DFM}

procedure TFMenuRelRece.PickReport;
begin

  if ReportCombo.ItemIndex = 0 then
  begin
    Application.CreateForm(TFRelReceConf,FRelReceConf);
//    aReport := FRelReceConf.QR_CONFERENCIA;
  end;

//  aReport.DisplayPrintDialog := True;

end;

procedure TFMenuRelRece.ExitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TFMenuRelRece.SpButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFMenuRelRece.FormShow(Sender: TObject);
begin
  T_RECE.Open;
  T_CONT.Open;
  T_BANC.Open;
  ReportCombo.ItemIndex := 0;
  RG_SITU.ItemIndex := 2;
end;

procedure TFMenuRelRece.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  T_RECE.Close;
  T_CONT.Close;
  T_BANC.Close;
  Action := caFree;
end;

procedure TFMenuRelRece.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFMenuRelRece.SpButImprimeClick(Sender: TObject);
begin
   { Retirar este if apos fazer todos os relatorios }
   if (ReportCombo.ItemIndex = 0) Or (ReportCombo.ItemIndex = 1) Or
      (ReportCombo.ItemIndex = 2) Or (ReportCombo.ItemIndex = 3) Or
      (ReportCombo.ItemIndex = 4) then
   begin
      SpButImprime.Down := false;
      SpButImprime.Enabled := false;
      SpButVisualiza.Enabled := false;
      SpButSair.Enabled := false;
      FMenuRelRece.Enabled := false;
      PickReport;
//      aReport.Print;

      if ReportCombo.ItemIndex = 0 then FRelReceConf.Close;

      FMenuRelRece.Enabled := true;
      SpButImprime.Down := true;
      SpButImprime.Enabled := true;
      SpButVisualiza.Enabled := true;
      SpButSair.Enabled := true;
      FMenuRelRece.Setfocus;
   end;
end;

procedure TFMenuRelRece.SpButVisualizaClick(Sender: TObject);
begin
   { Retirar este if apos fazer todos os relatorios }
   if (ReportCombo.ItemIndex = 0) Or (ReportCombo.ItemIndex = 1) Or
      (ReportCombo.ItemIndex = 2) Or (ReportCombo.ItemIndex = 3) Or
      (ReportCombo.ItemIndex = 4) then
   begin
     SpButVisualiza.Down := false;
     SpButVisualiza.Enabled := false;
     SpButImprime.Enabled := false;
     SpButSair.Enabled := false;
     FMenuRelRece.Enabled := false;
     PickReport;
//     aReport.Preview;
     if ReportCombo.ItemIndex = 0 then FRelReceConf.Close;
     FMenuRelRece.Enabled := true;
     SpButVisualiza.Enabled := true;
     SpButImprime.Enabled := true;
     SpButSair.Enabled := true;
     FMenuRelRece.Setfocus;
   end;
end;

procedure TFMenuRelRece.DBCB_BANCIExit(Sender: TObject);
begin
  ED_CONTAI.Text := T_BANCBAN_CONT.AsString;
end;

end.

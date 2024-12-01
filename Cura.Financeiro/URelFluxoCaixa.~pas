 unit URelFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, Buttons, StdCtrls, DBTables,
  Wwquery, wwdblook, ExtCtrls, Mask, wwstorep, QuickRpt, Qrctrls, comobj;

type
  TFFluxo = class(TForm)
    Panel1: TPanel;
    Q_PCF1: TwwQuery;
    DS_PCF1: TwwDataSource;
    Q_AUX: TwwQuery;
    Panel2: TPanel;
    Q_PCF1Valor1: TFloatField;
    Q_PCF1Valor2: TFloatField;
    Q_PCF1Valor3: TFloatField;
    Q_PCF1Valor4: TFloatField;
    Q_PCF1Valor5: TFloatField;
    Q_PCF1Valor6: TFloatField;
    Q_PCF1Valor7: TFloatField;
    Q_PCF1Valor8: TFloatField;
    Q_PCF1Valor9: TFloatField;
    Q_PCF1Valor10: TFloatField;
    Q_PCF1Valor11: TFloatField;
    Q_PCF1Valor12: TFloatField;
    SpeedButton4: TSpeedButton;
    Q_PCF1CONTA: TStringField;
    Q_PCF1DS_CONTA: TStringField;
    Q_PCF2: TwwQuery;
    Q_PCF2Conta: TStringField;
    Q_PCF2DS_Conta: TStringField;
    DS_PCF2: TwwDataSource;
    Label1: TLabel;
    Label2: TLabel;
    LD1: TLabel;
    LD2: TLabel;
    LD3: TLabel;
    LD4: TLabel;
    LD5: TLabel;
    LD6: TLabel;
    LD7: TLabel;
    LD8: TLabel;
    LD9: TLabel;
    LD10: TLabel;
    LD11: TLabel;
    LD12: TLabel;
    Q_PCF1Total: TFloatField;
    Label27: TLabel;
    LD1a: TLabel;
    LD2a: TLabel;
    LD3a: TLabel;
    LD4a: TLabel;
    LD5a: TLabel;
    LD6a: TLabel;
    LD7a: TLabel;
    LD8a: TLabel;
    LD9a: TLabel;
    LD10a: TLabel;
    LD11a: TLabel;
    LD12a: TLabel;
    L1: TLabel;
    L1a: TLabel;
    L2a: TLabel;
    L2: TLabel;
    L3: TLabel;
    L3a: TLabel;
    L4a: TLabel;
    L4: TLabel;
    L5: TLabel;
    L5a: TLabel;
    L6a: TLabel;
    L6: TLabel;
    L7: TLabel;
    L7a: TLabel;
    L8a: TLabel;
    L8: TLabel;
    L9: TLabel;
    L9a: TLabel;
    L10a: TLabel;
    L10: TLabel;
    L11: TLabel;
    L11a: TLabel;
    L12a: TLabel;
    L12: TLabel;
    Label28: TLabel;
    Q_PCF2VALOR1: TFloatField;
    Q_PCF2VALOR2: TFloatField;
    Q_PCF2VALOR3: TFloatField;
    Q_PCF2VALOR4: TFloatField;
    Q_PCF2VALOR5: TFloatField;
    Q_PCF2VALOR6: TFloatField;
    Q_PCF2VALOR7: TFloatField;
    Q_PCF2VALOR8: TFloatField;
    Q_PCF2VALOR9: TFloatField;
    Q_PCF2VALOR10: TFloatField;
    Q_PCF2VALOR11: TFloatField;
    Q_PCF2VALOR12: TFloatField;
    Q_PCF1QUEBRA: TStringField;
    Q_PCF1DATAI1: TStringField;
    Q_PCF1DATAI2: TStringField;
    Q_PCF1DATAI3: TStringField;
    Q_PCF1DATAI4: TStringField;
    Q_PCF1DATAI5: TStringField;
    Q_PCF1DATAI6: TStringField;
    Q_PCF1DATAI7: TStringField;
    Q_PCF1DATAI8: TStringField;
    Q_PCF1DATAI9: TStringField;
    Q_PCF1DATAI10: TStringField;
    Q_PCF1DATAI11: TStringField;
    Q_PCF1DATAI12: TStringField;
    Q_PCF1DATAF1: TStringField;
    Q_PCF1DATAF2: TStringField;
    Q_PCF1DATAF3: TStringField;
    Q_PCF1DATAF4: TStringField;
    Q_PCF1DATAF5: TStringField;
    Q_PCF1DATAF6: TStringField;
    Q_PCF1DATAF7: TStringField;
    Q_PCF1DATAF8: TStringField;
    Q_PCF1DATAF9: TStringField;
    Q_PCF1DATAF10: TStringField;
    Q_PCF1DATAF11: TStringField;
    Q_PCF1DATAF12: TStringField;
    spAtual: TSpeedButton;
    ckCP: TCheckBox;
    spVis: TSpeedButton;
    rdT: TRadioButton;
    rdPag: TRadioButton;
    rdRece: TRadioButton;
    STP_FLUXOCOMPLETO: TwwStoredProc;
    ckCR: TCheckBox;
    STP_AJUSTA: TwwStoredProc;
    mmAnalitico: TMemo;
    mmSintetico: TMemo;
    mmAnalitico_Antigo: TMemo;
    mmSintetico_antigo: TMemo;
    Q_PCF1VALOR13: TFloatField;
    Q_PCF1VALOR14: TFloatField;
    Q_PCF1VALOR15: TFloatField;
    Q_PCF1VALOR16: TFloatField;
    Q_PCF1VALOR17: TFloatField;
    Q_PCF1VALOR18: TFloatField;
    Q_PCF1VALOR19: TFloatField;
    Q_PCF1VALOR20: TFloatField;
    Q_PCF1VALOR21: TFloatField;
    Q_PCF1VALOR22: TFloatField;
    Q_PCF1VALOR23: TFloatField;
    Q_PCF1VALOR24: TFloatField;
    Q_PCF1VALOR25: TFloatField;
    Q_PCF1VALOR26: TFloatField;
    Q_PCF1VALOR27: TFloatField;
    Q_PCF1VALOR28: TFloatField;
    Q_PCF1VALOR29: TFloatField;
    Q_PCF1VALOR30: TFloatField;
    Q_PCF1DATAI13: TStringField;
    Q_PCF1DATAI14: TStringField;
    Q_PCF1DATAI15: TStringField;
    Q_PCF1DATAI16: TStringField;
    Q_PCF1DATAI17: TStringField;
    Q_PCF1DATAI18: TStringField;
    Q_PCF1DATAI19: TStringField;
    Q_PCF1DATAI20: TStringField;
    Q_PCF1DATAI21: TStringField;
    Q_PCF1DATAI22: TStringField;
    Q_PCF1DATAI23: TStringField;
    Q_PCF1DATAI24: TStringField;
    Q_PCF1DATAI25: TStringField;
    Q_PCF1DATAI26: TStringField;
    Q_PCF1DATAI27: TStringField;
    Q_PCF1DATAI28: TStringField;
    Q_PCF1DATAI29: TStringField;
    Q_PCF1DATAI30: TStringField;
    Q_PCF1DATAF13: TStringField;
    Q_PCF1DATAF14: TStringField;
    Q_PCF1DATAF15: TStringField;
    Q_PCF1DATAF16: TStringField;
    Q_PCF1DATAF17: TStringField;
    Q_PCF1DATAF18: TStringField;
    Q_PCF1DATAF19: TStringField;
    Q_PCF1DATAF20: TStringField;
    Q_PCF1DATAF21: TStringField;
    Q_PCF1DATAF22: TStringField;
    Q_PCF1DATAF23: TStringField;
    Q_PCF1DATAF24: TStringField;
    Q_PCF1DATAF25: TStringField;
    Q_PCF1DATAF26: TStringField;
    Q_PCF1DATAF27: TStringField;
    Q_PCF1DATAF28: TStringField;
    Q_PCF1DATAF29: TStringField;
    Q_PCF1DATAF30: TStringField;
    GridCG: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    Panel3: TPanel;
    Q_PCF2VALOR13: TFloatField;
    Q_PCF2VALOR14: TFloatField;
    Q_PCF2VALOR15: TFloatField;
    Q_PCF2VALOR16: TFloatField;
    Q_PCF2VALOR17: TFloatField;
    Q_PCF2VALOR18: TFloatField;
    Q_PCF2VALOR19: TFloatField;
    Q_PCF2VALOR20: TFloatField;
    Q_PCF2VALOR21: TFloatField;
    Q_PCF2VALOR22: TFloatField;
    Q_PCF2VALOR23: TFloatField;
    Q_PCF2VALOR24: TFloatField;
    Q_PCF2VALOR25: TFloatField;
    Q_PCF2VALOR26: TFloatField;
    Q_PCF2VALOR27: TFloatField;
    Q_PCF2VALOR28: TFloatField;
    Q_PCF2VALOR29: TFloatField;
    Q_PCF2VALOR30: TFloatField;
    Q_PCF2QUEBRA: TStringField;
    Label3: TLabel;
    Q_PCF2TOTAL: TFloatField;
    Q_PCF1VALOR31: TFloatField;
    Q_PCF1DATAI31: TStringField;
    Q_PCF1DATAF31: TStringField;
    Q_PCF2VALOR31: TFloatField;
    qrTotais: TwwQuery;
    qrTotaistotal: TFloatField;
    SpeedButton1: TSpeedButton;
    qrEmpAux: TwwQuery;
    qrEmpAuxachei: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_PCF1CalcFields(DataSet: TDataSet);
    procedure Q_PCF2CalcFields(DataSet: TDataSet);
    procedure GridCGCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure GridCGDblClick(Sender: TObject);
    procedure spAtualClick(Sender: TObject);
    procedure ckCPClick(Sender: TObject);
    procedure spVisClick(Sender: TObject);
    procedure rdTClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure PopulaGrid;
  public
    { Public declarations }
    CaixaInicial : real ;
  end;

var
  FFluxo: TFFluxo;
  Fil_DataI, Fil_DataF, Fil_Conta,Fil_Conta2, Fil_Stat, Fil_SQL, Empresa :String;
  Var_Atual :Boolean;
  objExcel,Sheet: OleVariant;
  fEntradas, fSaidas : Double;


implementation

uses URelFluxoCaixaSimples, URelFluxoCaixaCompleto, URelFluxoCaixaFilt,
  PesqReceb, PesqPagtos, U_PesqMovBanc, CPPMENU;

{$R *.DFM}

procedure TFFluxo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
        key := #0;
        perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFFluxo.FormCreate(Sender: TObject);
var  p_rel : Integer;
begin
  fEntradas := 0;
  fSaidas := 0;
  if FRelFluxoCaixaFilt.CheckBox1.Checked then
     p_rel :=  strtoint(FRelFluxoCaixaFilt.edtPeriodo.Text);

  //GAMBIARRA DO CACETE filho da egua q fez esta merda, MAS FAZER O QUE NE?
  GridCG.selected.Clear;
  GridCG.selected.add(  'DS_CONTA'#9'25'#9'Conta                    ' );

  GridCG.selected.add(  'Valor1'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit1.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit2.text)));
  GridCG.selected.add(  'Valor2'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit3.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit4.text)));
  GridCG.selected.add(  'Valor3'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit5.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit6.text)));
  GridCG.selected.add(  'Valor4'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit7.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit8.text)));
  GridCG.selected.add(  'Valor5'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit9.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit10.text)));
  GridCG.selected.add(  'Valor6'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit11.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit12.text)));
  GridCG.selected.add(  'Valor7'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit13.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit14.text)));
  GridCG.selected.add(  'Valor8'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit15.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit16.text)));

  if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex > 0 then
  begin
      GridCG.selected.add(  'Valor9'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit17.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit18.text)));
      GridCG.selected.add(  'Valor10'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit19.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit20.text)));
      GridCG.selected.add(  'Valor11'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit21.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit22.text)));
      GridCG.selected.add(  'Valor12'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit23.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit24.text)));
  end;

  if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex > 1 then
  begin
      GridCG.selected.add(  'VALOR13'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit27.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit28.text)));
      GridCG.selected.add(  'VALOR14'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit29.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit30.text)));
      GridCG.selected.add(  'VALOR15'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit31.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit32.text)));
      GridCG.selected.add(  'VALOR16'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit33.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit34.text)));
      GridCG.selected.add(  'VALOR17'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit35.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit36.text)));
      GridCG.selected.add(  'VALOR18'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit37.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit38.text)));
      GridCG.selected.add(  'VALOR19'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit39.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit40.text)));
      GridCG.selected.add(  'VALOR20'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit41.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit42.text)));
      GridCG.selected.add(  'VALOR21'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit43.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit44.text)));
      GridCG.selected.add(  'VALOR22'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit45.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit46.text)));
      GridCG.selected.add(  'VALOR23'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit47.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit48.text)));
      GridCG.selected.add(  'VALOR24'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit49.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit50.text)));
      GridCG.selected.add(  'VALOR25'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit51.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit52.text)));
      GridCG.selected.add(  'VALOR26'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit53.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit54.text)));
      GridCG.selected.add(  'VALOR27'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit55.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit56.text)));
      GridCG.selected.add(  'VALOR28'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit57.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit58.text)));
      GridCG.selected.add(  'VALOR29'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit59.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit60.text)));
      GridCG.selected.add(  'VALOR30'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit61.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit62.text)));
      GridCG.selected.add(  'VALOR31'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit63.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit64.text)));
  end;

  GridCG.selected.add(  'Total'#9'10'#9'Total');
  GridCG.ApplySelected;









  //grid do resumo do fluxo de caixa
  wwDBGrid1.selected.Clear;
  wwDBGrid1.selected.add(  'DS_CONTA'#9'25'#9'Conta                  '  );

  wwDBGrid1.selected.add(  'Valor1'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit1.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit2.text)));
  wwDBGrid1.selected.add(  'Valor2'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit3.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit4.text)));
  wwDBGrid1.selected.add(  'Valor3'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit5.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit6.text)));
  wwDBGrid1.selected.add(  'Valor4'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit7.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit8.text)));
  wwDBGrid1.selected.add(  'Valor5'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit9.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit10.text)));
  wwDBGrid1.selected.add(  'Valor6'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit11.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit12.text)));
  wwDBGrid1.selected.add(  'Valor7'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit13.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit14.text)));
  wwDBGrid1.selected.add(  'Valor8'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit15.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit16.text)));

  if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex > 0 then
  begin
      wwDBGrid1.selected.add(  'Valor9'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit17.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit18.text)));
      wwDBGrid1.selected.add(  'Valor10'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit19.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit20.text)));
      wwDBGrid1.selected.add(  'Valor11'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit21.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit22.text)));
      wwDBGrid1.selected.add(  'Valor12'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit23.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit24.text)));
  end;

  if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex > 1 then
  begin
      wwDBGrid1.selected.add(  'VALOR13'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit27.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit28.text)));
      wwDBGrid1.selected.add(  'VALOR14'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit29.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit30.text)));
      wwDBGrid1.selected.add(  'VALOR15'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit31.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit32.text)));
      wwDBGrid1.selected.add(  'VALOR16'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit33.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit34.text)));
      wwDBGrid1.selected.add(  'VALOR17'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit35.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit36.text)));
      wwDBGrid1.selected.add(  'VALOR18'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit37.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit38.text)));
      wwDBGrid1.selected.add(  'VALOR19'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit39.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit40.text)));
      wwDBGrid1.selected.add(  'VALOR20'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit41.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit42.text)));
      wwDBGrid1.selected.add(  'VALOR21'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit43.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit44.text)));
      wwDBGrid1.selected.add(  'VALOR22'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit45.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit46.text)));
      wwDBGrid1.selected.add(  'VALOR23'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit47.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit48.text)));
      wwDBGrid1.selected.add(  'VALOR24'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit49.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit50.text)));
      wwDBGrid1.selected.add(  'VALOR25'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit51.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit52.text)));
      wwDBGrid1.selected.add(  'VALOR26'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit53.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit54.text)));
      wwDBGrid1.selected.add(  'VALOR27'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit55.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit56.text)));
      wwDBGrid1.selected.add(  'VALOR28'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit57.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit58.text)));
      wwDBGrid1.selected.add(  'VALOR29'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit59.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit60.text)));
      wwDBGrid1.selected.add(  'VALOR30'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit61.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit62.text)));
      wwDBGrid1.selected.add(  'VALOR31'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit62.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit64.text)));
  end;

  wwDBGrid1.selected.add(  'Total'#9'10'#9'Total');
  wwDBGrid1.ApplySelected;




  //Miguel - se foi selecionado um periodo pelo usuário tem q mostrar os campos referentes a esse periodo
  if FRelFluxoCaixaFilt.CheckBox1.Checked then
  begin
      GridCG.selected.Clear;
      GridCG.selected.add(  'DS_CONTA'#9'25'#9'Conta                  '  );
      if p_rel >= 1 then
          GridCG.selected.add(  'Valor1'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit1.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit2.text)));
      if p_rel >= 2 then
          GridCG.selected.add(  'Valor2'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit3.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit4.text)));
      if p_rel >= 3 then
          GridCG.selected.add(  'Valor3'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit5.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit6.text)));
      if p_rel >= 4 then
          GridCG.selected.add(  'Valor4'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit7.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit8.text)));
      if p_rel >= 5 then
          GridCG.selected.add(  'Valor5'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit9.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit10.text)));
      if p_rel >= 6 then
          GridCG.selected.add(  'Valor6'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit11.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit12.text)));
      if p_rel >= 7 then
          GridCG.selected.add(  'Valor7'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit13.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit14.text)));
      if p_rel >= 8 then
          GridCG.selected.add(  'Valor8'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit15.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit16.text)));
      if p_rel >= 9 then
          GridCG.selected.add(  'Valor9'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit17.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit18.text)));
      if p_rel >= 10 then
          GridCG.selected.add(  'Valor10'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit19.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit20.text)));
      if p_rel >= 11 then
          GridCG.selected.add(  'Valor11'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit21.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit22.text)));
      if p_rel >= 12 then
          GridCG.selected.add(  'Valor12'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit23.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit24.text)));
      if p_rel >= 13 then
          GridCG.selected.add(  'VALOR13'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit27.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit28.text)));
      if p_rel >= 14 then
          GridCG.selected.add(  'VALOR14'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit29.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit30.text)));
      if p_rel >= 15 then
          GridCG.selected.add(  'VALOR15'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit31.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit32.text)));
      if p_rel >= 16 then
          GridCG.selected.add(  'VALOR16'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit33.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit34.text)));
      if p_rel >= 17 then
          GridCG.selected.add(  'VALOR17'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit35.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit36.text)));
      if p_rel >= 18 then
          GridCG.selected.add(  'VALOR18'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit37.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit38.text)));
      if p_rel >= 19 then
          GridCG.selected.add(  'VALOR19'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit39.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit40.text)));
      if p_rel >= 20 then
          GridCG.selected.add(  'VALOR20'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit41.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit42.text)));
      if p_rel >= 21 then
          GridCG.selected.add(  'VALOR21'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit43.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit44.text)));
      if p_rel >= 22 then
          GridCG.selected.add(  'VALOR22'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit45.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit46.text)));
      if p_rel >= 23 then
          GridCG.selected.add(  'VALOR23'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit47.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit48.text)));
      if p_rel >= 24 then
          GridCG.selected.add(  'VALOR24'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit49.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit50.text)));
      if p_rel >= 25 then
          GridCG.selected.add(  'VALOR25'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit51.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit52.text)));
      if p_rel >= 26 then
          GridCG.selected.add(  'VALOR26'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit53.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit54.text)));
      if p_rel >= 27 then
          GridCG.selected.add(  'VALOR27'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit55.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit56.text)));
      if p_rel >= 28 then
          GridCG.selected.add(  'VALOR28'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit57.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit58.text)));
      if p_rel >= 29 then
          GridCG.selected.add(  'VALOR29'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit59.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit60.text)));
      if p_rel >= 30 then
          GridCG.selected.add(  'VALOR30'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit61.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit62.text)));
      if p_rel >= 31 then
          GridCG.selected.add(  'VALOR31'#9'7'#9+ formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit62.text))+#13#10+'a '+formatdatetime('D/M',strtodate(FRelFluxoCaixaFilt.maskedit64.text)));

      GridCG.selected.add(  'Total'#9'10'#9'Total');
      GridCG.ApplySelected;
  end;








      //Q_PCF1.OPEN;
      //Q_PCF2.OPEN;

      //
      {LD1.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit1.text)) ;
      LD1a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit2.text)) ;

      LD2.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit3.text)) ;
      LD2a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit4.text)) ;

      LD3.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit5.text)) ;
      LD3a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit6.text)) ;

      LD4.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit7.text)) ;
      LD4a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit8.text)) ;

      LD5.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit9.text)) ;
      LD5a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit10.text)) ;

      LD6.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit11.text)) ;
      LD6a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit12.text)) ;

      LD7.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit13.text)) ;
      LD7a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit14.text)) ;

      LD8.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit15.text)) ;
      LD8a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit16.text)) ;

      LD9.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit17.text)) ;
      LD9a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit18.text)) ;

      LD10.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit19.text)) ;
      LD10a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit20.text)) ;

      LD11.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit21.text)) ;
      LD11a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit22.text)) ;

      LD12.caption := formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit23.text)) ;
      LD12a.caption := 'a ' + formatdatetime('DD/MM/YY',strtodate(FRelFluxoCaixaFilt.maskedit24.text)) ;
      //
      L1.caption :=  LD1.caption;
      L1a.caption:=  LD1a.caption;
      L2.caption :=  LD2.caption;
      L2a.caption:=  LD2a.caption;
      L3.caption :=  LD3.caption;
      L3a.caption:=  LD3a.caption;
      L4.caption :=  LD4.caption;
      L4a.caption:=  LD4a.caption;
      L5.caption :=  LD5.caption;
      L5a.caption:=  LD5a.caption;
      L6.caption :=  LD6.caption;
      L6a.caption:=  LD6a.caption;
      L7.caption :=  LD7.caption;
      L7a.caption:=  LD7a.caption;
      L8.caption :=  LD8.caption;
      L8a.caption:=  LD8a.caption;
      L9.caption :=  LD9.caption;
      L9a.caption:=  LD9a.caption;
      L10.caption := LD10.caption;
      L10a.caption:= LD10a.caption;
      L11.caption := LD11.caption;
      L11a.caption:= LD11a.caption;
      L12.caption := LD12.caption;
      L12a.caption:= LD12a.caption;  }
      //

     // spAtual.Click;
     PopulaGrid;

end;

procedure TFFluxo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if not VarIsEmpty(objExcel) then
        begin
          objExcel.DisplayAlerts := False;  // Discard unsaved files....
          objExcel.Quit;
        end;

        Fil_SQL := '';
        Fil_Conta := '';
        Fil_Conta2  := '';
        Fil_DataI   := '';
        Fil_DataF   := '';
        Q_PCF1.CLOSE;
        Q_PCF2.CLOSE;
        Action := caFree;
end;

procedure TFFluxo.Q_PCF1CalcFields(DataSet: TDataSet);
var p_rel : Integer;
total : Double;
begin
      if  FRelFluxoCaixaFilt.CheckBox1.Checked then
        p_rel := StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text);

      If Q_PCF1Conta.AsString = '1F' then
        Q_PCF1DS_CONTA.AsString := 'Tot. E. Oper.'
      Else If Q_PCF1Conta.AsString = '1T' then
        Q_PCF1DS_CONTA.AsString := 'Tot. S. Oper.'
      Else If Q_PCF1Conta.AsString = '2F' then
        Q_PCF1DS_CONTA.AsString := 'Tot. E. Não Oper.'
      Else If Q_PCF1Conta.AsString = '2T' then
        Q_PCF1DS_CONTA.AsString := 'Tot. S. Não Oper.'
      Else If Q_PCF1Conta.AsString = '3F' then
        Q_PCF1DS_CONTA.AsString := 'Tot. E. Fin.'
      Else If Q_PCF1Conta.AsString = '3T' then
        Q_PCF1DS_CONTA.AsString := 'Tot. S. Fin.'
      Else Begin
         if  FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1  then
         begin
              Q_AUX.close ;
              Q_AUX.Sql.Clear ;
              Q_AUX.Sql.Add(' select con_desc from cpacont where con_codi = ' + '''' + Q_PCF1Conta.asstring + '''' ) ;
              Q_AUX.Open ;
                Q_PCF1DS_CONTA.AsString := Q_AUX.fieldByName('CON_DESC').AsString
              //Q_PCF1DS_CONTA.AsString := Q_PCF1Conta.AsString + ' - ' + Q_AUX.fieldByName('CON_DESC').AsString
         end
         else if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 2 then
         begin
              Q_AUX.close ;
              Q_AUX.Sql.Clear ;
              Q_AUX.Sql.Add(' select con_desc from cpacont where Substring(con_codi,1,2) = ' + '''' + Q_PCF1Conta.asstring + '''' ) ;
              Q_AUX.Sql.Add(' ORDER BY CON_CODI ');
              Q_AUX.Open ;
              Q_AUX.First;
                Q_PCF1DS_CONTA.AsString := Q_AUX.fieldByName('CON_DESC').AsString ;
         end;
      End;
      total := 0;

      if FRelFluxoCaixaFilt.CheckBox1.Checked then
      begin
          if p_rel >= 1 then
                total := total + Q_PCF1Valor1.AsFloat;
          if p_rel >= 2 then
                total := total + Q_PCF1Valor2.AsFloat;
          if p_rel >= 3 then
                total := total + Q_PCF1Valor3.AsFloat;
          if p_rel >= 4 then
                total := total + Q_PCF1Valor4.AsFloat;
          if p_rel >= 5 then
                total := total + Q_PCF1Valor5.AsFloat;
          if p_rel >= 6 then
                total := total + Q_PCF1Valor6.AsFloat;
          if p_rel >= 7 then
                total := total + Q_PCF1Valor7.AsFloat;
          if p_rel >= 8 then
                total := total + Q_PCF1Valor8.AsFloat;
          if p_rel >= 9 then
                total := total + Q_PCF1Valor9.AsFloat;
          if p_rel >= 10 then
                total := total + Q_PCF1Valor10.AsFloat;
          if p_rel >= 11 then
                total := total + Q_PCF1Valor11.AsFloat;
          if p_rel >= 12 then
                total := total + Q_PCF1Valor12.AsFloat;
          if p_rel >= 13 then
                total := total + Q_PCF1Valor13.AsFloat;
          if p_rel >= 14 then
                total := total + Q_PCF1Valor14.AsFloat;
          if p_rel >= 15 then
                total := total + Q_PCF1Valor15.AsFloat;
          if p_rel >= 16 then
                total := total + Q_PCF1Valor16.AsFloat;
          if p_rel >= 17 then
                total := total + Q_PCF1Valor17.AsFloat;
          if p_rel >= 18 then
                total := total + Q_PCF1Valor18.AsFloat;
          if p_rel >= 19 then
                total := total + Q_PCF1Valor19.AsFloat;
          if p_rel >= 20 then
                total := total + Q_PCF1Valor20.AsFloat;
          if p_rel >= 21 then
                total := total + Q_PCF1Valor21.AsFloat;
          if p_rel >= 22 then
                total := total + Q_PCF1Valor22.AsFloat;
          if p_rel >= 23 then
                total := total + Q_PCF1Valor23.AsFloat;
          if p_rel >= 24 then
                total := total + Q_PCF1Valor24.AsFloat;
          if p_rel >= 25 then
                total := total + Q_PCF1Valor25.AsFloat;
          if p_rel >= 26 then
                total := total + Q_PCF1Valor26.AsFloat;
          if p_rel >= 27 then
                total := total + Q_PCF1Valor27.AsFloat;
          if p_rel >= 28 then
                total := total + Q_PCF1Valor28.AsFloat;
          if p_rel >= 29 then
                total := total + Q_PCF1Valor29.AsFloat;
          if p_rel >= 30 then
                total := total + Q_PCF1Valor30.AsFloat;
          if p_rel >= 31 then
                total := total + Q_PCF1Valor31.AsFloat;

          Q_PCF1Total.AsFloat := total;
      end
      else
      begin

         Q_PCF1Total.AsFloat := Q_PCF1Valor1.AsFloat +
                             Q_PCF1Valor2.AsFloat +
                             Q_PCF1Valor3.AsFloat +
                             Q_PCF1Valor4.AsFloat +
                             Q_PCF1Valor5.AsFloat +
                             Q_PCF1Valor6.AsFloat +
                             Q_PCF1Valor7.AsFloat +
                             Q_PCF1Valor8.AsFloat +
                             Q_PCF1Valor9.AsFloat +
                             Q_PCF1Valor10.AsFloat +
                             Q_PCF1Valor11.AsFloat +
                             Q_PCF1Valor12.AsFloat +
                             Q_PCF1Valor13.AsFloat +
                             Q_PCF1Valor14.AsFloat +
                             Q_PCF1Valor15.AsFloat +
                             Q_PCF1Valor16.AsFloat +
                             Q_PCF1Valor17.AsFloat +
                             Q_PCF1Valor18.AsFloat +
                             Q_PCF1Valor19.AsFloat +
                             Q_PCF1Valor20.AsFloat +
                             Q_PCF1Valor21.AsFloat +
                             Q_PCF1Valor22.AsFloat +
                             Q_PCF1Valor23.AsFloat +
                             Q_PCF1Valor24.AsFloat +
                             Q_PCF1Valor25.AsFloat +
                             Q_PCF1Valor26.AsFloat +
                             Q_PCF1Valor27.AsFloat +
                             Q_PCF1Valor28.AsFloat +
                             Q_PCF1Valor29.AsFloat +
                             Q_PCF1Valor30.AsFloat +
                             Q_PCF1VALOR31.AsFloat;

     end;


    if Q_PCF1QUEBRA.AsString = 'TT' then
    begin
        if Q_PCF1CONTA.AsInteger = 1 then
        begin
                Q_PCF1Total.Value := StrToFloat(FRelFluxoCaixaFilt.Edit1.Text);
        end;
        if Q_PCF1CONTA.AsInteger = 2 then
                fEntradas := Q_PCF1Total.Value;

        if Q_PCF1CONTA.AsInteger = 3 then
                fSaidas := Q_PCF1Total.Value;

        if Q_PCF1CONTA.AsInteger = 4 then
        begin
           IF FRelFluxoCaixaFilt.CheckBox1.Checked = False then
           begin
                qrTotais.close;
                qrTotais.Params[0].AsString := '2';
                qrTotais.Open;

                fEntradas := qrTotaistotal.Value;

                qrTotais.close;
                qrTotais.Params[0].AsString := '3';
                qrTotais.Open;

                fSaidas := qrTotaistotal.Value;
           end
           else
           begin
               with qrTotais do
               begin
                   close;
                   SQL.Clear;
                   sql.Add('SELECT ');
                   SQL.Add('VALOR1');
                   if p_rel >= 2 then
                      SQL.Add(' + VALOR2');
                   if p_rel >= 3 then
                      SQL.Add(' + VALOR3');
                   if p_rel >= 4 then
                      SQL.Add(' + VALOR4');
                   if p_rel >= 5 then
                      SQL.Add(' + VALOR5');
                   if p_rel >= 6 then
                      SQL.Add(' + VALOR6');
                   if p_rel >= 7 then
                      SQL.Add(' + VALOR7');
                   if p_rel >= 8 then
                      SQL.Add(' + VALOR8');
                   if p_rel >= 9 then
                      SQL.Add(' + VALOR9');
                   if p_rel >= 10 then
                      SQL.Add(' + VALOR10');
                   if p_rel >= 11 then
                      SQL.Add(' + VALOR11');
                   if p_rel >= 12 then
                      SQL.Add(' + VALOR12');
                   if p_rel >= 13 then
                      SQL.Add(' + VALOR13');
                   if p_rel >= 14 then
                      SQL.Add(' + VALOR14');
                   if p_rel >= 15 then
                      SQL.Add(' + VALOR15');
                   if p_rel >= 16 then
                      SQL.Add(' + VALOR16');
                   if p_rel >= 17 then
                      SQL.Add(' + VALOR17');
                   if p_rel >= 18 then
                      SQL.Add(' + VALOR18');
                   if p_rel >= 19 then
                      SQL.Add(' + VALOR19');
                   if p_rel >= 20 then
                      SQL.Add(' + VALOR20');
                   if p_rel >= 21 then
                      SQL.Add(' + VALOR21');
                   if p_rel >= 22 then
                      SQL.Add(' + VALOR22');
                   if p_rel >= 23 then
                      SQL.Add(' + VALOR23');
                   if p_rel >= 24 then
                      SQL.Add(' + VALOR24');
                   if p_rel >= 25 then
                      SQL.Add(' + VALOR25');
                   if p_rel >= 26 then
                      SQL.Add(' + VALOR26');
                   if p_rel >= 27 then
                      SQL.Add(' + VALOR27');
                   if p_rel >= 28 then
                      SQL.Add(' + VALOR28');
                   if p_rel >= 29 then
                      SQL.Add(' + VALOR29');
                   if p_rel >= 30 then
                      SQL.Add(' + VALOR30');
                   if p_rel >= 31 then
                      SQL.Add(' + VALOR31');
                  SQL.Add('as total  ');
                  SQL.Add('from fluxo ');
                  SQL.Add('where quebra = ''TT'' ');
                  SQL.Add('and conta  = :conta ');
               end;

                qrTotais.close;
                qrTotais.Params[0].AsString := '2';
                qrTotais.Open;

                fEntradas := qrTotaistotal.Value;

                qrTotais.close;
                qrTotais.Params[0].AsString := '3';
                qrTotais.Open;

                fSaidas := qrTotaistotal.Value;




           end;


                //acerto para o fluxo previsto, ele deve fazer soma aritmetica
                if FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                   Q_PCF1Total.Value := (StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) - fSaidas
                else if  FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 1 then
                   Q_PCF1Total.Value := (StrToFloat(FRelFluxoCaixaFilt.Edit1.Text) + fEntradas) + fSaidas ;    
        end;

    end;




     if Q_PCF1Conta.AsString = '1' then Q_PCF1DS_Conta.AsString := '*** Caixa Inicial ' ;
     if Q_PCF1Conta.AsString = '2' then Q_PCF1DS_Conta.AsString := '*** Entradas      ' ;
     if Q_PCF1Conta.AsString = '3' then Q_PCF1DS_Conta.AsString := '*** Saídas        ' ;
     if Q_PCF1Conta.AsString = '4' then Q_PCF1DS_Conta.AsString := '*** Caixa Final   ' ;

end;

procedure TFFluxo.Q_PCF2CalcFields(DataSet: TDataSet);
begin
      {
      Q_PCF2Total.AsFloat := Q_PCF2Valor1.AsFloat +
                             Q_PCF2Valor2.AsFloat +
                             Q_PCF2Valor3.AsFloat +
                             Q_PCF2Valor4.AsFloat +
                             Q_PCF2Valor5.AsFloat +
                             Q_PCF2Valor6.AsFloat +
                             Q_PCF2Valor7.AsFloat +
                             Q_PCF2Valor8.AsFloat +
                             Q_PCF2Valor9.AsFloat +
                             Q_PCF2Valor10.AsFloat +
                             Q_PCF2Valor11.AsFloat +
                             Q_PCF2Valor12.AsFloat;
      }

     if Q_PCF2Conta.AsString = '1' then Q_PCF2DS_Conta.AsString := '*** Caixa Inicial ' ;
     if Q_PCF2Conta.AsString = '2' then Q_PCF2DS_Conta.AsString := '*** Entradas      ' ;
     if Q_PCF2Conta.AsString = '3' then Q_PCF2DS_Conta.AsString := '*** Saídas        ' ;
     if Q_PCF2Conta.AsString = '4' then Q_PCF2DS_Conta.AsString := '*** Caixa Final   ' ;


end;

procedure TFFluxo.GridCGCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
      If Q_PCF1Conta.AsString = '1F' then
        ABrush.Color := $0097CBFF
      Else If Q_PCF1Conta.AsString = '1T' then
        ABrush.Color := $0097CBFF
      Else If Q_PCF1Conta.AsString = '2F' then
        ABrush.Color := $0097CBFF
      Else If Q_PCF1Conta.AsString = '2T' then
        ABrush.Color := $0097CBFF
      Else If Q_PCF1Conta.AsString = '3F' then
        ABrush.Color := $0097CBFF
      Else If Q_PCF1Conta.AsString = '3T' then
        ABrush.Color := $0097CBFF
      Else If Field = Q_PCF1Ds_Conta then
        ABrush.Color := clSilver
      Else
        ABrush.Color := clWhite;

      //miguel
      If (Q_PCF1Conta.AsString = '1') or (Q_PCF1Conta.AsString = '2') or
      (Q_PCF1Conta.AsString = '3') or (Q_PCF1Conta.AsString = '4') then
      begin
        ABrush.Color := clSilver;
        AFont.Color := clBlue;
      end;
      

      If Highlight then
        AFont.Color := clBlue;



end;

procedure TFFluxo.GridCGDblClick(Sender: TObject);
begin
      //miguel  - bloquear duplo click sobre os totais
      If (Q_PCF1Conta.AsString = '1') or (Q_PCF1Conta.AsString = '2') or
      (Q_PCF1Conta.AsString = '3') or (Q_PCF1Conta.AsString = '4') then
      begin
        Abort;
      end;


        Var_Atual := False;

        Fil_DataI := '';
        Fil_DataF := '';
        Fil_Conta := '';
        Fil_Stat  := '';
        Fil_SQL   := '';
        Empresa := '';

        If GridCG.SelectedField = Q_PCF1Valor1 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit1.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit2.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor2 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit3.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit4.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor3 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit5.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit6.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor4 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit7.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit8.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor5 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit9.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit10.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor6 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit11.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit12.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor7 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit13.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit14.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor8 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit15.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit16.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor9 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit17.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit18.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor10 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit19.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit20.text;
        End Else If GridCG.SelectedField = Q_PCF1Valor11 Then Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit21.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit22.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor12 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit23.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit24.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor13 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit27.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit28.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor14 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit29.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit30.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor15 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit31.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit32.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor16 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit33.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit34.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor17 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit35.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit36.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor18 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit37.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit38.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor19 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit39.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit40.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor20 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit41.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit42.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor21 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit43.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit44.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor22 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit45.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit46.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor23 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit47.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit48.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor24 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit49.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit50.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor25 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit51.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit52.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor26 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit53.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit54.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor27 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit55.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit56.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor28 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit57.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit58.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor29 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit59.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit60.text;
        End
        Else If GridCG.SelectedField = Q_PCF1Valor30 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit61.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit62.text;
        End 
        Else If GridCG.SelectedField = Q_PCF1Valor31 Then
        Begin
                Fil_DataI := FRelFluxoCaixaFilt.Maskedit63.text;
                Fil_DataF := FRelFluxoCaixaFilt.Maskedit64.text;
        End   ;





        if  FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
        begin
            Fil_Conta := Q_PCF1Conta.AsString;
            Fil_Conta2 := Q_PCF1Conta.AsString;
        end
        else  if  FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 2 then
        begin
              Q_AUX.close ;
              Q_AUX.Sql.Clear ;
              Q_AUX.Sql.Add(' select con_codi from cpacont where Substring(con_codi,1,2) = ' + '''' + Q_PCF1Conta.asstring + '''' ) ;
              Q_AUX.Sql.Add(' ORDER BY CON_CODI ');
              Q_AUX.Open ;
              Q_AUX.First;
              Fil_Conta := Q_AUX.fieldByName('con_codi').AsString;
              Q_AUX.Last;
              Fil_Conta2 := Q_AUX.fieldByName('con_codi').AsString;
        end;

        if   FRelFluxoCaixaFilt.wwDBLookupCombo2.Text <> '' then
             Empresa := FRelFluxoCaixaFilt.wwDBLookupCombo2.LookupValue;



        If FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
                Fil_Stat := 'A'
        Else
                Fil_Stat := 'R';

        //Recebimentos ou Pagamentos

        //Se for duplo clique sobre a conta de totais, não leva
        //conta para o filtro, podendo visualizar todas as contas
        //daquele período
        If (copy(Q_PCF1Quebra.AsString,2,1) = 'F') or (copy(Q_PCF1Quebra.AsString,2,1) = 'T') then
        Begin
                //Não filtra por Conta Gerencial e sim por tipo de Entrada, por se tratar
                //dos totais.
                Fil_Conta := '';


                IF FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then  //PREVISTO
                begin
                      //RECEBIMENTO OU PAGAMENTO OPERACIONAL,
                      //NÃO OPERACIONAL OU FINANCEIRO.
                      If Copy(Q_PCF1Quebra.AsString,1,1) = '1'  then
                              Fil_SQL :=
                              '             (SELECT	CON_CODI ' +
                              '             FROM	CPACONT ' +
                              '             WHERE	CON_OPER = ''O''';

                      If Copy(Q_PCF1Quebra.AsString,1,1) = '2'  then
                              Fil_SQL :=
                              '             (SELECT	CON_CODI ' +
                              '             FROM	CPACONT ' +
                              '             WHERE	CON_OPER = ''N''';

                      If Copy(Q_PCF1Quebra.AsString,1,1) = '3'  then
                              Fil_SQL :=
                              '             (SELECT	CON_CODI ' +
                              '             FROM	CPACONT ' +
                              '             WHERE	CON_OPER = ''F''';

                      //ENTRADA OU SAÍDA
                      If Copy(Q_PCF1Quebra.AsString,2,1) = 'F'  then
                              Fil_SQL :=  ' AND REC_CGER IN ' + Fil_SQL +
                              ' AND CON_ENSA = ''E'')';

                      If Copy(Q_PCF1Quebra.AsString,2,1) = 'T'  then
                              Fil_SQL :=  ' AND CONTAGERENCIAL IN ' + Fil_SQL +
                              ' AND CON_ENSA = ''S'')';
                end
                else   //REALIZADO
                BEGIN
                      //RECEBIMENTO OU PAGAMENTO OPERACIONAL,
                      //NÃO OPERACIONAL OU FINANCEIRO.
                      If Copy(Q_PCF1Quebra.AsString,1,1) = '1'  then
                              Fil_SQL :=
                              '             (SELECT	CON_CODI ' +
                              '             FROM	CPACONT ' +
                              '             WHERE	CON_OPER = ''O''';

                      If Copy(Q_PCF1Quebra.AsString,1,1) = '2'  then
                              Fil_SQL :=
                              '             (SELECT	CON_CODI ' +
                              '             FROM	CPACONT ' +
                              '             WHERE	CON_OPER = ''N''';

                      If Copy(Q_PCF1Quebra.AsString,1,1) = '3'  then
                              Fil_SQL :=
                              '             (SELECT	CON_CODI ' +
                              '             FROM	CPACONT ' +
                              '             WHERE	CON_OPER = ''F''';

                      //ENTRADA OU SAÍDA
                      If Copy(Q_PCF1Quebra.AsString,2,1) = 'F'  then
                              Fil_SQL :=  ' AND MOV_CONT IN ' + Fil_SQL + 'AND CON_ENSA = ''E'' )' ;

                      If Copy(Q_PCF1Quebra.AsString,2,1) = 'T'  then
                              Fil_SQL :=  ' AND MOV_CONT IN ' + Fil_SQL + 'AND CON_ENSA = ''S'' )' ;







                end;
        End;






        IF FRelFluxoCaixaFilt.RadioGroup2.ItemIndex = 0 then
        begin
            If (copy(Q_PCF1Quebra.AsString,2,1) = 'E') or (copy(Q_PCF1Quebra.AsString,2,1) = 'F') then
            Begin
                    If Fil_DataI <> '' then
                    Begin
                            FPesqReceb := TFPesqReceb.Create(Self);
                            FPesqReceb.ShowModal;
                            FPesqReceb.release ;
                    End;
            End Else If (copy(Q_PCF1Quebra.AsString,2,1) = 'S') or (copy(Q_PCF1Quebra.AsString,2,1) = 'T') Then Begin
                    If Fil_DataI <> '' then
                    Begin
                            FPesqPagtos := TFPesqPagtos.Create(Self);
                            FPesqPagtos.ShowModal;
                            FPesqPagtos.Release ;
                    End;
            End;  //Aqui vai o Else para totais.

            If Var_Atual then
                    spAtual.Click;
        end
        else
        begin
               Application.CreateForm(TFPesqMovBanc, FPesqMovBanc);
               FPesqMovBanc.ShowModal ;
               FPesqMovBanc.Release ;
        end;

        


end;

procedure TFFluxo.spAtualClick(Sender: TObject);
var I : integer ;
    StrComando : string ;
    StrComandoI :String;
    StrComandoF :String;
    Data1 : string ;
    Data2 : string ;
    Numero : integer ;
    Coluna : Integer;
    Conta  : String;

Begin
      // Completo  - ANALITICO
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add(' delete from fluxo ' ) ;
      Q_AUX.ExecSql ;
      CaixaInicial := strtofloat(FRelFluxoCaixaFilt.edit1.text);
      I:= 1 ;


      //verifica a quantidade de periodos a serem calculados
      if FRelFluxoCaixaFilt.radiogroup3.itemindex = 0 then
          numero := 8
      else if FRelFluxoCaixaFilt.radiogroup3.itemindex = 1 then
          numero := 12
      else if FRelFluxoCaixaFilt.radiogroup3.itemindex = 2 then
          Numero := 31;



      while I <= Numero do begin
           if I = 1 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit1.text ));
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit2.text ) );
           end ;
           if I = 2 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit3.text ))  ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit4.text ) ) ;
           end ;
           if I = 3 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit5.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit6.text ) );
           end ;
           if I = 4 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit7.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit8.text ) );
           end ;
           if I = 5 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit9.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit10.text ) );
           end ;
           if I = 6 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit11.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit12.text ) );
           end ;
           if I = 7 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit13.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit14.text ) );
           end ;
           if I = 8 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit15.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit16.text ) );
           end ;
           if I = 9 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit17.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit18.text ));
           end ;
           if I = 10 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit19.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit20.text ) );
           end ;
           if I = 11 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit21.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit22.text ) );
           end ;
           if I = 12 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit23.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit24.text ) );
           end ;

           /////////////////////////////////// miguel ///////////////////////////////////////
           if I = 13 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit27.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit28.text ) );
           end ;

           if I = 14 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit29.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit30.text ) );
           end ;
           if I = 15 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit31.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit32.text ) );
           end ;
           if I = 16 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit33.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit34.text ) );
           end ;
           if I = 17 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit35.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit36.text ) );
           end ;
           if I = 18 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit37.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit38.text ) );
           end ;
           if I = 19 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit39.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit40.text ) );
           end ;
           if I = 20 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit41.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit42.text ) );
           end ;
           if I = 21 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit43.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit44.text ) );
           end ;
           if I = 22 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit45.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit46.text ) );
           end ;
           if I = 23 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit47.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit48.text ) );
           end ;
           if I = 24 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit49.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit50.text ) );
           end ;
           if I = 25 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit51.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit52.text ) );
           end ;
           if I = 26 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit53.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit54.text ) );
           end ;
           if I = 27 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit55.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit56.text ) );
           end ;
           if I = 28 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit57.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit58.text ) );
           end ;
           if I = 29 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit59.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit60.text ) );
           end ;
           if I = 30 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit61.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit62.text ) );
           end ;

           if I = 31 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit63.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit64.text ) );
           end ;


           StrComando := ' update Fluxo set Valor'+trim(inttostr(I)) + ' = Valor' + trim(inttostr(I)) + ' + ';
           StrComandoI :=' update Fluxo set Datai'+trim(inttostr(I)) + ' = ' + '''' + DATA1 + '''';
           StrComandoF :=' update Fluxo set DataF'+trim(inttostr(I)) + ' = ' + '''' + DATA2 + '''';

         try
           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@DataI' ).Value := data1;
           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@DataF' ).Value := data2 ;

           if FRelFluxoCaixaFilt.Radiogroup2.itemindex = 0 then
              FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@Tipo' ).Value  := 'P'
           else
              FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@Tipo' ).Value  := 'R';


           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@Comando' ).Value  := StrComando;
           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@ComandoI' ).Value  := StrComandoI;
           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@ComandoF' ).Value  := StrComandoF;

          { if Numero = 12 then
           begin
              if I <= 9 then
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1
              else
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2 ;

                  STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 2
           end
           else
           begin
              if I <= 8 then
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1
              else
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2 ;

                  STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 1 ;
           end ; }


           if I <= 9 then
           begin
               FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1;
           end;

           if (I > 9) and (I <= 18) then
           begin
               FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2;
           end;

           if (I > 18) and (I <= 27) then
           begin
               FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 3;
           end;

           if I > 27   then
           begin
               FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 4;
           end;

           if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 0 then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 1
           else if  FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 2
           else if  FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 2 then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 4;


           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CaixaInicial').asfloat := CaixaInicial ;
           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CaixaFinal').asfloat := 0;


           //Se for o último item e a chamada for para a tela, calcula totais para o grid.
           If (Sender <> spVis) and (I = Numero) then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@TOTAIS').value := 'S'
           Else
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@TOTAIS').value := 'N';


 {/************** miguel *************/}

 {ANTERIORMENTE ELE CHAMAVA TODOS OS CAMPOS MESMO OS Q NAO ESTAO COM FLAG DE FLUXO = FALSE}


           If (ckCP.Checked) and (ckCR.Checked) then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'S'
           Else If (not ckCP.Checked) and (ckCR.Checked) then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'R'
           Else If (ckCP.Checked) and (not ckCR.Checked) then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'P'
           Else If (not ckCP.Checked) and (not ckCR.Checked) then
                FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'N';


 {/************** end ****************/}



           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@FILTRO').value := 'T';



           IF FRelFluxoCaixaFilt.wwDBLookupCombo2.Text <> '' THEN
              FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParamByName( '@filial' ).Value:= FRelFluxoCaixaFilt.wwDBLookupCombo2.LookupValue;


           FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ExecProc;

           finally
           end;
           CaixaInicial := FRelFluxoCaixaFilt.STP_FLUXOCOMPLETO.ParambyName('@CaixaFinal').asfloat ;
           I := I + 1 ;
       end ;

      // Escolhe qual a forma de visualização.
      If Sender = spVis then
      Begin

          try
          Begin

                    FRelFluxoCaixaFilt.STP_AJUSTA.ParamByName('@CAIXAINICIAL').Value  := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
                    FRelFluxoCaixaFilt.STP_AJUSTA.Execproc;

          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;


              Application.Createform(TFRelFluxoCaixaCompleto, FRelFluxoCaixaCompleto);
              FRelFluxoCaixaCompleto.fluxoCaixa.Preview;
              FRelFluxoCaixaCompleto.close ;
              FRelFluxoCaixaCompleto.Release;
      End Else Begin

              try
          Begin

                    STP_AJUSTA.ParamByName('@CAIXAINICIAL').Value  := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
                    STP_AJUSTA.Execproc;

          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;

       {Seleciona Tipo de Relatório Analitico / sintetico}
       end;

      //apaga os valors com folha 3 para doze posições - miguel
      if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 then
       begin
           FRelFluxoCaixaFilt.qrAux2.ExecSQL;
       end;

      PopulaGrid;


end;

procedure TFFluxo.ckCPClick(Sender: TObject);
begin
        spAtual.Click;
        FRelFluxoCaixaFilt.ckCP.Checked := ckCP.Checked;
        FRelFluxoCaixaFilt.ckCR.Checked := ckCR.Checked;
end;

procedure TFFluxo.spVisClick(Sender: TObject);
var I : integer ;
    StrComando : string ;
    StrComandoI :String;
    StrComandoF :String;
    Data1 : string ;
    Data2 : string ;
    Numero : integer ;
    Coluna : Integer;
    Conta  : String;

Begin
//     rdT.Checked := True;



         {comentado por miguel}
       //FRelFluxoCaixaFilt.spVis.Click;

       Application.Createform(TFRelFluxoCaixaCompleto, FRelFluxoCaixaCompleto);
       FRelFluxoCaixaCompleto.fluxoCaixa.Preview;
       FRelFluxoCaixaCompleto.close ;
       FRelFluxoCaixaCompleto.Release;




      // Completo
      {Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add(' delete fluxo ' ) ;
      Q_AUX.ExecSql ;
      CaixaInicial := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
      I:= 1 ;
      if FRelFluxoCaixaFilt.radiogroup3.itemindex = 0 then numero := 8
      else numero := 12 ;
      while I <= Numero do begin
           if I = 1 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit1.text ));
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit2.text ) );
           end ;
           if I = 2 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit3.text ))  ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit4.text ) ) ;
           end ;
           if I = 3 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit5.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit6.text ) );
           end ;
           if I = 4 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit7.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit8.text ) );
           end ;
           if I = 5 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit9.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit10.text ) );
           end ;
           if I = 6 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit11.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit12.text ) );
           end ;
           if I = 7 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit13.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit14.text ) );
           end ;
           if I = 8 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit15.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit16.text ) );
           end ;
           if I = 9 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit17.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit18.text ) );
           end ;
           if I = 10 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit19.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit20.text ) );
           end ;
           if I = 11 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit21.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit22.text ) );
           end ;
           if I = 12 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit23.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit24.text ) );
           end ;
           StrComando := ' update Fluxo set Valor'+trim(inttostr(I)) + ' = Valor' + trim(inttostr(I)) + ' + ';
           StrComandoI :=' update Fluxo set Datai'+trim(inttostr(I)) + ' = ' + '''' + DATA1 + '''';
           StrComandoF :=' update Fluxo set DataF'+trim(inttostr(I)) + ' = ' + '''' + DATA2 + '''';

         try
           STP_FLUXOCOMPLETO.ParamByName( '@DataI' ).Value := data1;
           STP_FLUXOCOMPLETO.ParamByName( '@DataF' ).Value := data2 ;
           if FRelFluxoCaixaFilt.Radiogroup2.itemindex = 0 then
              STP_FLUXOCOMPLETO.ParamByName( '@Tipo' ).Value  := 'P'
           else STP_FLUXOCOMPLETO.ParamByName( '@Tipo' ).Value  := 'R';
           STP_FLUXOCOMPLETO.ParamByName( '@Comando' ).Value  := StrComando;
           STP_FLUXOCOMPLETO.ParamByName( '@ComandoI' ).Value  := StrComandoI;
           STP_FLUXOCOMPLETO.ParamByName( '@ComandoF' ).Value  := StrComandoF;
           if Numero = 12 then begin
              if I <= 9 then STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1
              else STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2 ;
              STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 2
           end else begin
              if I <= 8 then STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1
              else STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2 ;
              STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 1 ;
           end ;
           STP_FLUXOCOMPLETO.ParambyName('@CaixaInicial').asfloat := CaixaInicial ;
           STP_FLUXOCOMPLETO.ParambyName('@CaixaFinal').asfloat := 0;

           If (ckCP.Checked) and (ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'S'
           Else If (not ckCP.Checked) and (ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'R'
           Else If (ckCP.Checked) and (not ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'P'
           Else If (not ckCP.Checked) and (not ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'N';

           STP_FLUXOCOMPLETO.ParambyName('@TOTAIS').value := 'N';

           If rdT.Checked then
                STP_FLUXOCOMPLETO.ParambyName('@FILTRO').value := 'T'
           Else If rdPag.Checked then
                STP_FLUXOCOMPLETO.ParambyName('@FILTRO').value := 'P'
           Else If rdRece.Checked then
                STP_FLUXOCOMPLETO.ParambyName('@FILTRO').value := 'R';

           STP_FLUXOCOMPLETO.ExecProc;
           finally
           end;
           CaixaInicial := STP_FLUXOCOMPLETO.ParambyName('@CaixaFinal').asfloat ;
           I := I + 1 ;
       end ;


        try
          Begin

                    STP_AJUSTA.ParamByName('@CAIXAINICIAL').Value  := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
                  //  STP_AJUSTA.Execproc;
          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;


       Application.Createform(TFRelFluxoCaixaCompleto, FRelFluxoCaixaCompleto);
       FRelFluxoCaixaCompleto.fluxoCaixa.Preview;
       FRelFluxoCaixaCompleto.close ;
       FRelFluxoCaixaCompleto.Release;

       PopulaGrid;       }

end;

procedure TFFluxo.rdTClick(Sender: TObject);
begin
        spAtual.Click;
end;

procedure TFFluxo.PopulaGrid;
begin
//
       Q_PCF1.CLOSE;
       Q_PCF1.sql.Clear;
       If  FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 1 then
       begin
            Q_PCF1.sql := mmAnalitico.Lines;
       end
       else if FRelFluxoCaixaFilt.RadioGroup1.ItemIndex = 2 then
       begin
            Q_PCF1.sql := mmSintetico.Lines;
       end;

       Q_PCF1.OPEN;
       Q_PCF2.CLOSE;
       Q_PCF2.OPEN;
end;

procedure TFFluxo.SpeedButton1Click(Sender: TObject);
Const
  // SheetType
  XlChart = -4109;
  XlWorksheet = -4167;
  // WBATemplate
  XlWBATWorksheet = -4167;
  XlWBATChart = -4109;
  // Page Setup
  XlPortrait = 1;
  XlLandscape = 2;
  XlPaperA4 = 9;
  // Format Cells
  XlBottom = -4107;
  XlLeft = -4131;
  XlRight = -4152;
  XlTop = -4160;
  // Text Alignment
  XlHAlignCenter = -4108;
  XlVAlignCenter = -4108;
  // Cell Borders
  XlThick = 4;
  XlThin = 2;
Var

  linha : Integer;
  celula :string;
  Periodos : Integer;
begin



    Periodos := StrToInt(FRelFluxoCaixaFilt.edtPeriodo.Text);
    objExcel := CreateOleObject('Excel.Application');
    objExcel.Visible := True;
    objExcel.Workbooks.Add;
    objExcel.Workbooks[1].Sheets.Add;
    objExcel.Workbooks[1].WorkSheets[1].Name := 'Fluxo de Caixa';
    Sheet := objExcel.Workbooks[1].WorkSheets['Fluxo de Caixa'];


    //VERIFICA ATE Q COLUNA TEM Q ALTERAR AS CORES
           case Periodos of
           1 : celula := 'D';
           2 : celula := 'E';
           3 : celula := 'F';
           4 : celula := 'G';
           5 : celula := 'H';
           6 : celula := 'I';
           7 : celula := 'J';
           8 : celula := 'K';
           9 : celula := 'L';
           10 : celula := 'M';
           11 : celula := 'N';
           12 : celula := 'O';
           13 : celula := 'P';
           14 : celula := 'Q';
           15 : celula := 'R';
           16 : celula := 'S';
           17 : celula := 'T';
           18 : celula := 'U';
           19 : celula := 'V';
           20 : celula := 'W';
           21 : celula := 'X';
           22 : celula := 'Y';
           23 : celula := 'Z';
           24 : celula := 'AA';
           25 : celula := 'AB';
           26 : celula := 'AC';
           27 : celula := 'AD';
           28 : celula := 'AE';
           29 : celula := 'AF';
           30 : celula := 'AG';
           31 : celula := 'AH';
       end;




   //==========================================================================
    //Criando os cabeçalhos
    Sheet.cells[1,1] := 'Código';
    Sheet.cells[1,2] := 'Conta';

    //criando os 8 periodos iniciais
    Sheet.Range['A1',CELULA + '1'].Font.size := 10;
    Sheet.Range['A1',CELULA +'1'].font.bold := true;
    Sheet.Range['A1'].ColumnWidth := 20;
    Sheet.Range['B1'].ColumnWidth := 20;

    Sheet.Range['C1',CELULA +'1'].ColumnWidth := 9;
    Sheet.Range['C1',CELULA +'1'].HorizontalAlignment := XlRight;
    Sheet.Range['A1',CELULA + '1'].Interior.Color := clsilver;


    Sheet.cells[1,3] :=  GridCG.Columns[1].DisplayLabel;
    Sheet.cells[1,4] :=  GridCG.Columns[2].DisplayLabel;
    Sheet.cells[1,5] :=  GridCG.Columns[3].DisplayLabel;
    Sheet.cells[1,6] :=  GridCG.Columns[4].DisplayLabel;
    Sheet.cells[1,7] :=  GridCG.Columns[5].DisplayLabel;
    Sheet.cells[1,8] :=  GridCG.Columns[6].DisplayLabel;
    Sheet.cells[1,9] :=  GridCG.Columns[7].DisplayLabel;
    Sheet.cells[1,10] :=  GridCG.Columns[8].DisplayLabel;


    if Periodos >= 9 then
       Sheet.cells[1,11] :=  GridCG.Columns[9].DisplayLabel;
    if Periodos >= 10 then
       Sheet.cells[1,12] :=  GridCG.Columns[10].DisplayLabel;
    if Periodos >= 11 then
       Sheet.cells[1,13] :=  GridCG.Columns[11].DisplayLabel;
    if Periodos >= 12 then
       Sheet.cells[1,14] :=  GridCG.Columns[12].DisplayLabel;
    if Periodos >= 13 then
       Sheet.cells[1,15] :=  GridCG.Columns[13].DisplayLabel;
    if Periodos >= 14 then
       Sheet.cells[1,16] :=  GridCG.Columns[14].DisplayLabel;
    if Periodos >= 15 then
       Sheet.cells[1,17] :=  GridCG.Columns[15].DisplayLabel;
    if Periodos >= 16 then
       Sheet.cells[1,18] :=  GridCG.Columns[16].DisplayLabel;
    if Periodos >= 17 then
       Sheet.cells[1,19] :=  GridCG.Columns[17].DisplayLabel;
    if Periodos >= 18 then
       Sheet.cells[1,20] :=  GridCG.Columns[18].DisplayLabel;
    if Periodos >= 19 then
       Sheet.cells[1,21] :=  GridCG.Columns[19].DisplayLabel;
    if Periodos >= 20 then
       Sheet.cells[1,22] :=  GridCG.Columns[20].DisplayLabel;
    if Periodos >= 21 then
       Sheet.cells[1,23] :=  GridCG.Columns[21].DisplayLabel;
    if Periodos >= 22 then
       Sheet.cells[1,24] :=  GridCG.Columns[22].DisplayLabel;
    if Periodos >= 23 then
       Sheet.cells[1,25] :=  GridCG.Columns[23].DisplayLabel;
    if Periodos >= 24 then
       Sheet.cells[1,26] :=  GridCG.Columns[24].DisplayLabel;
    if Periodos >= 25 then
       Sheet.cells[1,27] :=  GridCG.Columns[25].DisplayLabel;
    if Periodos >= 26 then
       Sheet.cells[1,28] :=  GridCG.Columns[26].DisplayLabel;
    if Periodos >= 27 then
       Sheet.cells[1,29] :=  GridCG.Columns[27].DisplayLabel;
    if Periodos >= 28 then
       Sheet.cells[1,30] :=  GridCG.Columns[28].DisplayLabel;
    if Periodos >= 29 then
       Sheet.cells[1,31] :=  GridCG.Columns[29].DisplayLabel;
    if Periodos >= 30 then
       Sheet.cells[1,32] :=  GridCG.Columns[30].DisplayLabel;
    if Periodos >= 31 then
       Sheet.cells[1,33] :=  GridCG.Columns[31].DisplayLabel;

     //TOTAIS
    Sheet.cells[1,Periodos + 3] :=  'Total';

    //==========================================================================

    linha := 1;

    Q_PCF1.First;
    while not Q_PCF1.Eof do
    begin
       Inc(linha);
       //formatando o tamanho da fonte
       Sheet.Range['A' + IntToStr(linha),'AF'+IntToStr(linha)].Font.size := 8;

       IF Length(Q_PCF1CONTA.AsString) > 2 then  begin
                Sheet.cells[linha,1] := '''' + Q_PCF1CONTA.AsString;
                Sheet.cells[linha,2] :=  Q_PCF1DS_CONTA.Value ;
       end else
                Sheet.cells[linha,1] := Q_PCF1DS_CONTA.Value  ;

       Sheet.cells[linha,3] :=  Q_PCF1Valor1.Value;
       Sheet.cells[linha,4] :=  Q_PCF1Valor2.Value;
       Sheet.cells[linha,5] :=  Q_PCF1Valor3.Value;
       Sheet.cells[linha,6] :=  Q_PCF1Valor4.Value;
       Sheet.cells[linha,7] :=  Q_PCF1Valor5.Value;
       Sheet.cells[linha,8] :=  Q_PCF1Valor6.Value;
       Sheet.cells[linha,9] :=  Q_PCF1Valor7.Value;
       Sheet.cells[linha,10] :=  Q_PCF1Valor8.Value;


       if Periodos >= 9 then
         Sheet.cells[linha,11] :=  Q_PCF1Valor9.Value;
      if Periodos >= 10 then
         Sheet.cells[linha,12] :=  Q_PCF1Valor10.Value;
      if Periodos >= 11 then
         Sheet.cells[linha,13] :=  Q_PCF1Valor11.Value;
      if Periodos >= 12 then
         Sheet.cells[linha,14] :=  Q_PCF1Valor12.Value;
      if Periodos >= 13 then
         Sheet.cells[linha,15] :=  Q_PCF1Valor13.Value;
      if Periodos >= 14 then
         Sheet.cells[linha,16] :=  Q_PCF1Valor14.Value;
      if Periodos >= 15 then
         Sheet.cells[linha,17] :=  Q_PCF1Valor15.Value;
      if Periodos >= 16 then
         Sheet.cells[linha,18] :=  Q_PCF1Valor16.Value;
      if Periodos >= 17 then
         Sheet.cells[linha,19] :=  Q_PCF1Valor17.Value;
      if Periodos >= 18 then
         Sheet.cells[linha,20] :=  Q_PCF1Valor18.Value;
      if Periodos >= 19 then
         Sheet.cells[linha,21] :=  Q_PCF1Valor19.Value;
      if Periodos >= 20 then
         Sheet.cells[linha,22] :=  Q_PCF1Valor20.Value;
      if Periodos >= 21 then
         Sheet.cells[linha,23] :=  Q_PCF1Valor21.Value;
      if Periodos >= 22 then
         Sheet.cells[linha,24] :=  Q_PCF1Valor22.Value;
      if Periodos >= 23 then
         Sheet.cells[linha,25] :=  Q_PCF1Valor23.Value;
      if Periodos >= 24 then
         Sheet.cells[linha,26] :=  Q_PCF1Valor24.Value;
      if Periodos >= 25 then
         Sheet.cells[linha,27] :=  Q_PCF1Valor25.Value;
      if Periodos >= 26 then
         Sheet.cells[linha,28] :=  Q_PCF1Valor26.Value;
      if Periodos >= 27 then
         Sheet.cells[linha,29] :=  Q_PCF1Valor27.Value;
      if Periodos >= 28 then
         Sheet.cells[linha,30] :=  Q_PCF1Valor28.Value;
      if Periodos >= 29 then
         Sheet.cells[linha,31] :=  Q_PCF1Valor29.Value;
      if Periodos >= 30 then
         Sheet.cells[linha,32] :=  Q_PCF1Valor30.Value;
      if Periodos >= 31 then
         Sheet.cells[linha,33] :=  Q_PCF1Valor31.Value;



       //VERIFICA SE É UM TOTALIZADOS E MUDA A COR DA LINHA
       IF Q_PCF1CONTA.Value =   '1F'  then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '2F'  then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '1T'  then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '2T'  then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '3F'  then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '3T'  then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '1'   then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '2'   then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '3'   then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;
       IF Q_PCF1CONTA.Value =   '4'   then  Sheet.Range['A' + IntToStr(linha),'AH'+IntToStr(linha)].font.bold := true;





       IF Q_PCF1CONTA.Value =   '1F'  then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '2F'  then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '1T'  then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '2T'  then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '3F'  then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '3T'  then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '1'   then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '2'   then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '3'   then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;
       IF Q_PCF1CONTA.Value =   '4'   then  Sheet.Range['A' + IntToStr(linha), CELULA +IntToStr(linha)].Interior.Color := clsilver;



        //TOTAIS
        Sheet.cells[linha,Periodos + 3] :=  Q_PCF1Total.Value;



       Q_PCF1.Next;
    end

    //==================GERANDO OS ITENS=====================







end;

end.

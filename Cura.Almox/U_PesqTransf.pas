unit U_PesqTransf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, StdCtrls, Mask, Buttons, ExtCtrls, Db, Wwdatsrc, DBTables,
  Wwquery, Grids, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFPesqTransf = class(TForm)
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    ME_REC_VENC1: TMaskEdit;
    Edit1: TEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label1: TLabel;
    Q_TR: TwwQuery;
    DS_TR: TwwDataSource;
    Q_TRNumero: TIntegerField;
    Q_TRBancoOrigem: TStringField;
    Q_TRBancoDestino: TStringField;
    Q_TRData: TDateTimeField;
    Q_TRDocumento: TStringField;
    Q_TRHistorico: TStringField;
    Q_TRValor: TFloatField;
    Q_TREmiteCheque: TStringField;
    Q_TRCtaGerencialOrig: TStringField;
    Q_TRCtaGerencialDest: TStringField;
    Q_TRFavorecido: TStringField;
    Q_TRFilialOrigem: TStringField;
    Q_TRFilialDestino: TStringField;
    Q_bco: TwwQuery;
    DS_BCO: TwwDataSource;
    Q_bcoBAN_CODI: TStringField;
    Q_bcoBAN_NOME: TStringField;
    SBT_SELE: TSpeedButton;
    DBCB_DIF_CHEQUE: TwwDBComboBox;
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqTransf: TFPesqTransf;
  GS_Tran : string  ;  
implementation
 uses CPPMENU  ;  
{$R *.DFM}



procedure TFPesqTransf.SBT_PESQClick(Sender: TObject);
var StrAnd : String ;
begin
  Q_TR.close ;
  Q_TR.SQL.clear ;
  Q_TR.SQL.add('Select * from  CPATRAN ')  ;
  StrAnd := ' where ' ;
  if Edit1.text  <> '' then  begin
     Q_TR.SQL.Add(Strand +  '  Numero = ' +  Edit1.text  ) ;
     StrAnd := ' and ' ;
  end ;
  if wwDBLookupCombo1.lookupvalue  <> '' then begin
     Q_TR.SQL.Add( StrAnd +   ' bancoorigem  = ' + '''' + wwDBLookupCombo1.LookupValue  + '''');
     StrAnd := ' and ' ;
  end ;
  if wwDBLookupCombo2.lookupvalue  <> '' then  begin
     Q_TR.SQL.Add( StrAnd  +  ' bancodestino  = ' + '''' + wwDBLookupCombo2.LookupValue  + '''');
     StrAnd := ' and ' ;
  end ;
  if ME_REC_VENC1.text <> '  /  /  ' then  begin
     Q_TR.SQL.ADD( strand +   ' Data = ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(ME_REC_VENC1.text) ) + '''' );
     StrAnd := ' and ';
  end ;
  Q_TR.SQL.add(' order by  Numero ') ;
  Q_TR.open ;
end;

procedure TFPesqTransf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Q_TR.close  ;
    Q_BCO.close ;
    action :=cafree ;
end;

procedure TFPesqTransf.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFPesqTransf.SpeedButton1Click(Sender: TObject);
begin
  close ;
end;

procedure TFPesqTransf.FormCreate(Sender: TObject);
begin
  Q_BCO.open ;
end;




procedure TFPesqTransf.SBT_SELEClick(Sender: TObject);
begin
 gs_Tran  := Q_TRNUMERO.AsString ;
 FPesqTransf.close ;
end;

procedure TFPesqTransf.wwDBGrid1DblClick(Sender: TObject);
begin
 gs_Tran  := Q_TRNUMERO.AsString ;
 close ;
end;


procedure TFPesqTransf.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.

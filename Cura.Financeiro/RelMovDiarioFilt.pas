unit RelMovDiarioFilt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Buttons, Mask, StdCtrls, wwdblook, Wwdatsrc,
  Grids, Wwdbigrd, Wwdbgrid;

type
  TFRelMovDiarioFilt = class(TForm)
    GRB_FILT: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Q_CONT: TwwQuery;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_ENSA: TStringField;
    Q_CONTCON_OPER: TStringField;
    Q_CONTCON_FLOA: TFloatField;
    Q_CONTCON_FLUX: TStringField;
    Q_CONTCON_CTCO: TStringField;
    wwDBGrid1: TwwDBGrid;
    DS_BANC: TwwDataSource;
    Q_BANCBAN_NAGE: TStringField;
    Q_BANCBAN_AGEN: TStringField;
    MaskEdit1: TMaskEdit;
    Label19: TLabel;
    UpdateSQL1: TUpdateSQL;
    Q_ATUALIZA: TwwQuery;
    Q_BANCBAN_Ordem: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_BANCAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMovDiarioFilt: TFRelMovDiarioFilt;
  StrBancoI  : string ;
  StrBancoF  : string ;
  StrContaDespesa : string ;
  StrContaFornecedor : string ;
  Datai     : tdatetime ;
  Dataf     : Tdatetime ;
implementation

uses RelMovDiario, CPPMENU;

{$R *.DFM}

procedure TFRelMovDiarioFilt.SpeedButton1Click(Sender: TObject);
begin
  if Q_BANC.State <> dsedit then Q_BANC.edit ;
  Q_BANC.post ;
  StrBancoI := '';
  StrBancof := '';
  Datai     := 0.0 ;
  Dataf     := 0.0 ;
  if Maskedit1.text = '  /  /  ' then begin
      MessageDlg('Informe a Data !',mterror,[mbOk], 0);
      abort ;
  end ;

  if Maskedit1.text <> '  /  /  ' then
      Datai    := strtodate(Maskedit1.text) ;

  Dataf := Datai  ;
  Application.Createform(TFRelMovDiario, FRelMovDiario);
  FRelMovDiario.RelMovDiario.Preview;
  FRelMovDiario.close ;
  FRelMovDiario.Release;
end;

procedure TFRelMovDiarioFilt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFRelMovDiarioFilt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_ATUALIZA.Close ;
   Q_ATUALIZA.Sql.Clear ;
   Q_ATUALIZA.Sql.Add(' update CPABANC set BAN_ORDEM = 0 '); // '+ ''''+ 'N'+ '''' ) ;
   Q_ATUALIZA.Sql.Add(' where BAN_Ordem > 0 ' ) ;
//   Q_ATUALIZA.Sql.Add(' where BAN_LCHE =  '+ ''''+ 'S'+ '''' ) ;
   Q_ATUALIZA.Execsql ;
   Q_CONT.Close ;
   Q_BANC.Close ;
   action := cafree ;
end;

procedure TFRelMovDiarioFilt.FormCreate(Sender: TObject);
begin
   Q_CONT.Open ;
   Q_BANC.Open  ;
end;

procedure TFRelMovDiarioFilt.SpeedButton2Click(Sender: TObject);
begin
  if Q_BANC.State <> dsedit then
     Q_BANC.edit ;

  Q_BANC.post ;
  StrBancoI := '';
  StrBancof := '';
  Datai     := 0.0 ;
  Dataf     := 0.0 ;
  if Maskedit1.text = '  /  /  ' then begin
      MessageDlg('Informe a Data !',mterror,[mbOk], 0);
      abort ;
  end ;

  if Maskedit1.text <> '  /  /  ' then
      Datai    := strtodate(Maskedit1.text) ;

  Dataf := Datai  ;

  Application.Createform(TFRelMovDiario, FRelMovDiario);
  FRelMovDiario.RelMovDiario.Print ;
  FRelMovDiario.close ;
  FRelMovDiario.Release;
end;

procedure TFRelMovDiarioFilt.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFRelMovDiarioFilt.Q_BANCAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_BANC]);
  end;
  except
    begin
      Q_BANC.RevertRecord;
    end;
  end;
end;

procedure TFRelMovDiarioFilt.FormActivate(Sender: TObject);
begin
        CENTRO(Self,True);
end;

end.

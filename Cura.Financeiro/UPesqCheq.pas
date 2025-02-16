unit UPesqCheq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, StdCtrls, Mask, Buttons, ExtCtrls, Db, Wwdatsrc, DBTables,
  Wwquery, Wwdbigrd, Grids, Wwdbgrid;

type
  TFPesqCheq = class(TForm)
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    SBT_SELE: TSpeedButton;
    Label15: TLabel;
    Memo1: TMemo;
    data1: TMaskEdit;
    Edit1: TEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    data2: TMaskEdit;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    Q_BANC: TwwQuery;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_CODI: TStringField;
    DS_BANC: TwwDataSource;
    Q_CHEQ: TwwQuery;
    DS_CHEQ: TwwDataSource;
    Q_CHEQCHEQUENUMERO: TStringField;
    Q_CHEQDATAEMISSAO: TDateTimeField;
    Q_CHEQFOR_RAZA: TStringField;
    Q_CHEQNOME: TStringField;
    Q_CHEQVALOR: TFloatField;
    Q_CHEQBAN_NOME: TStringField;
    Q_CHEQEMITIDO: TStringField;
    Q_CHEQNUMERO: TAutoIncField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqCheq: TFPesqCheq;

implementation

uses Cheques;

{$R *.DFM}

procedure TFPesqCheq.SpeedButton1Click(Sender: TObject);
begin
   close;
end;

procedure TFPesqCheq.SBT_PESQClick(Sender: TObject);
var
str : string;
begin
   str := 'WHERE';
   Q_CHEQ.SQL.Clear;
   Q_CHEQ.SQL.Add('SELECT A.NUMERO, A.CHEQUENUMERO,A.DATAEMISSAO,C.FOR_RAZA,A.NOME,B.BAN_NOME, ');
   Q_CHEQ.SQL.Add('A.VALOR,A.EMITIDO FROM CPACHEQ A LEFT OUTER JOIN CPABANC B ');
   Q_CHEQ.SQL.Add('ON A.BANCO = B.BAN_CODI LEFT OUTER JOIN CPAFORN C ');
   Q_CHEQ.SQL.Add('ON A.FAVORECIDO = C.FOR_CODI ');
   if edit1.text <> '' then
   begin
        Q_CHEQ.SQL.Add(str +' A.CHEQUENUMERO LIKE ' +'''' +Edit1.text +'''');
        str := 'AND';
   end;
   if wwDBLookupCombo1.Text <> '' then
   begin
        Q_CHEQ.SQL.Add(str +' A.BANCO LIKE ' +'''' +Q_BANCBAN_CODI.AsString +'''');
        str := 'AND';
   end;
   if data1.text <> '  /  /  ' then
   begin
        Q_CHEQ.SQL.Add(str +' CONVERT(CHAR(10),A.DATAEMISSAO,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(data1.text)) +'''');
        str := 'AND';
   end;
   if data1.text <> '  /  /  ' then
   begin
        Q_CHEQ.SQL.Add(str +' CONVERT(CHAR(10),A.DATAEMISSAO,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(data2.text)) +'''');
        str := 'AND';
   end;
   Q_CHEQ.Open;
end;

procedure TFPesqCheq.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFPesqCheq.FormCreate(Sender: TObject);
begin
   Q_BANC.Open;
end;

procedure TFPesqCheq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_BANC.Close;
   Q_CHEQ.Close;
end;

procedure TFPesqCheq.wwDBGrid1DblClick(Sender: TObject);
begin

  FChq := TFChq.Create(Self);
  //FChq.Q_CHQ.LOCATE('CHEQUENUMERO',Q_CHEQCHEQUENUMERO.value,[]);
  FChq.Q_CHQ.LOCATE('NUMERO',Q_CHEQNUMERO.value,[]);
  FChq.ShowModal;
  FChq.Release;

end;

procedure TFPesqCheq.SBT_SELEClick(Sender: TObject);
begin
  FChq := TFChq.Create(Self);
  FChq.Q_CHQ.LOCATE('NUMERO',Q_CHEQNUMERO.value,[]);
  FChq.ShowModal;
  FChq.Release;
end;

end.

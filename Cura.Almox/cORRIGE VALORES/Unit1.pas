unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, DB, ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery1Req_Item_ID: TAutoIncField;
    ADOQuery1Req_ID: TIntegerField;
    ADOQuery1Mat_ID: TIntegerField;
    ADOQuery1Marca_ID: TIntegerField;
    ADOQuery1Uni_Sigla: TStringField;
    ADOQuery1Qtde: TFloatField;
    ADOQuery1Status: TStringField;
    ADOQuery1tipoConsumo: TStringField;
    ADOQuery1CUSTO: TFloatField;
    ADOQuery1REPOSICAO: TFloatField;
    wwDBGrid1: TwwDBGrid;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ADOQuery2MAT_ID: TAutoIncField;
    ADOQuery2MAT_DESC: TStringField;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOQuery2.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
  ADOQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
VAR VALOR : Real;
begin
   VALOR := StrToFloat(Edit1.Text);
   ADOQuery1.First;
   WHILE not ADOQuery1.Eof do begin
       ADOQuery1.Edit;
       ADOQuery1REPOSICAO.AsFloat := VALOR;
       ADOQuery1.Post;


       ADOQuery1.Next;
   end;
end;

end.

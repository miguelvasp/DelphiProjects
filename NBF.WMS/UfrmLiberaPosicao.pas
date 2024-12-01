unit UfrmLiberaPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmLiberaPosicao = class(TForm)
    wwDBGrid1: TwwDBGrid;
    ADOQuery1: TADOQuery;
    ADOQuery1POS_ID: TAutoIncField;
    ADOQuery1POS_COD: TStringField;
    ADOQuery1AR_ID: TIntegerField;
    ADOQuery1POS_PESOMAX: TFloatField;
    ADOQuery1POS_UTILIZADO: TStringField;
    ADOQuery1STATUS: TStringField;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLiberaPosicao: TfrmLiberaPosicao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmLiberaPosicao.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
end;

procedure TfrmLiberaPosicao.BitBtn1Click(Sender: TObject);
begin
  ADOQuery1.First;
  while not ADOQuery1.eof do begin
      ADOQuery1.Edit;
      ADOQuery1POS_UTILIZADO.Value := 'N';
      ADOQuery1.Post;
      ADOQuery1.Next;
  end;

  ADOQuery1.Close;
  ADOQuery1.open;
end;

end.

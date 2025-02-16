unit ufrmCadEmail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmCadEmail = class(TForm)
    wwDBGrid1: TwwDBGrid;
    btn2: TButton;
    qry1: TADOQuery;
    qry1CLIN_ID: TIntegerField;
    qry1EMAIL: TStringField;
    qry1ID: TAutoIncField;
    ds1: TDataSource;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure qry1BeforePost(DataSet: TDataSet);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmail: TfrmCadEmail;
  
implementation

uses UMenu;

{$R *.DFM}

procedure TfrmCadEmail.FormShow(Sender: TObject);
begin
  qry1.Close;
  qry1.Parameters[0].Value := StrToInt(lbl1.Caption);
  qry1.Open;
end;

procedure TfrmCadEmail.qry1BeforePost(DataSet: TDataSet);
begin
  qry1CLIN_ID.Value := StrToInt(lbl1.Caption);
end;

procedure TfrmCadEmail.btn2Click(Sender: TObject);
begin
  qry1.delete;
end;

end.

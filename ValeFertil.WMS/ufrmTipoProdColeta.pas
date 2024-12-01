unit ufrmTipoProdColeta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Mask, DBCtrls, ExtCtrls;

type
  TfrmTipoProdColeta = class(TForm)
    ADOQuery1: TADOQuery;
    ADOQuery1CODIGO: TStringField;
    ADOQuery1DESCRICAO: TStringField;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoProdColeta: TfrmTipoProdColeta;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmTipoProdColeta.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
end;

procedure TfrmTipoProdColeta.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  IF ADOQuery1CODIGO.AsString = '' then begin
      ShowMessage('Informe o código');
      Abort;
  end;

  if ADOQuery1DESCRICAO.AsString = '' then begin
      ShowMessage('Informe a descrição');
      Abort;
  end;
end;

end.

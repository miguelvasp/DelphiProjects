unit ufrmCadConsequencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask;

type
  TfrmCadConsequencias = class(TForm)
    qrConseq: TADOQuery;
    qrConseqCONSEQUENCIA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    wwDBGrid1: TwwDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConsequencias: TfrmCadConsequencias;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmCadConsequencias.FormCreate(Sender: TObject);
begin
  qrConseq.Open;
end;

end.

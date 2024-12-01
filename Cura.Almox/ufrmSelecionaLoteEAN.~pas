unit ufrmSelecionaLoteEAN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, DBCtrls;

type
  TfrmSelecionaLoteEAN = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    btnOk: TButton;
    wwDBGrid1: TwwDBGrid;
    DataSource2: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaLoteEAN: TfrmSelecionaLoteEAN;

implementation

uses UfrmRequisicaoSimplificada;

{$R *.DFM}

procedure TfrmSelecionaLoteEAN.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;

       btnOk.Click;

     end;
end;

procedure TfrmSelecionaLoteEAN.btnOkClick(Sender: TObject);
begin
   self.Close;
end;

end.

unit ufrmNotaDevolucaoErroEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmNotaDevolucaoErroEstoque = class(TForm)
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotaDevolucaoErroEstoque: TfrmNotaDevolucaoErroEstoque;

implementation

uses ufrmNotaDevolucaoCad;

{$R *.DFM}

procedure TfrmNotaDevolucaoErroEstoque.wwDBGrid1CalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if frmNotaDevolucaoCad.qrVerificaEstoqueQtde.AsInteger > frmNotaDevolucaoCad.qrVerificaEstoqueQtdeEstoque.AsInteger then begin
       ABrush.Color := clRed;
       AFont.Color := clWhite;
   end;
end;

end.

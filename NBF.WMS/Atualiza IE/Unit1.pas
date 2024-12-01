unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    qrExcel: TADOQuery;
    qrExcelCLIENTE: TWideStringField;
    qrExcelCNPJ: TFloatField;
    qrExcelIE: TFloatField;
    qrExcelF4: TWideStringField;
    DBGrid1: TDBGrid;
    Button1: TButton;
    qrAux: TADOQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   qrExcel.Open;
   qrExcel.First;
   while not qrExcel.Eof do begin
       with qrAux do begin
           CLOSE;
           SQL.Clear;
           SQL.Add(
             ' UPDATE CLIENTEFINAL SET CLIF_INSCRG = ' + QuotedStr(Trim(qrExcelIE.AsString)) +
             ' WHERE CLIF_CGCCPF LIKE ' + QuotedStr('%'+ Trim(qrExcelCNPJ.AsString)+'%')
           );
           ExecSQL;
       end;
       qrExcel.Next;
   end;
end;

end.

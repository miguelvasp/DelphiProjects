unit ufrmControledeAcessos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComObj;

type
  TfrmControledeAcessos = class(TForm)
    Panel1: TPanel;
    cboLocal: TwwDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrBusca: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    dsExcel: TDataSource;
    qrBuscaCH: TAutoIncField;
    qrBuscaNome: TStringField;
    qrBuscaNOME_COMPLETO: TStringField;
    qrBuscaDescricao: TStringField;
    qrBuscaRequisicao: TStringField;
    qrBuscaRequisicao_Adm: TStringField;
    qrBuscaRequisicao_aprov: TStringField;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControledeAcessos: TfrmControledeAcessos;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmControledeAcessos.FormCreate(Sender: TObject);
begin
  qrlocal.open;
end;

procedure TfrmControledeAcessos.Button1Click(Sender: TObject);
begin
        with qrBusca do begin
            Close;
            sql.Clear;
            sql.Add(
                'SELECT    '+
                'CH, Nome, NOME_COMPLETO, L.Descricao, Requisicao, '+
                'Requisicao_Adm, Requisicao_aprov  '+
                'FROM UsuarioAlmox U  '+
                'INNER JOIN Local L ON U.LOCAL_ID = L.Local_ID   '+
                'WHERE Nome NOT LIKE ' + '''' + '%(%' + ''''
            );

            if cboLocal.Text <> '' then
                sql.Add(' AND U.LOCAL_ID = ' + cboLocal.LookupValue);

            sql.Add(' ORDER BY NOME_COMPLETO');
            Open;
        end;
end;

procedure TfrmControledeAcessos.Button2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
    excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  dsExcel.DataSet.First;

  linha := 1;
  //escrevemos os cabeçalhos
 // for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
  //    Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
 // end;
  Excel.Cells[Linha, 1] := 'LOGIN';
  Excel.Cells[Linha, 2] := 'NOME';
  Excel.Cells[Linha, 3] := 'LOCAL';
  Excel.Cells[Linha, 4] := 'REQUISIÇÃO';
  Excel.Cells[Linha, 5] := 'REQUISIÇÃO ADMINISTRAÇÃO';
  Excel.Cells[Linha, 6] := 'REQUISIÇÃO APROVAÇAÕ';

 

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

end.

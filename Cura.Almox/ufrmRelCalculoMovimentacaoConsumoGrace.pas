unit ufrmRelCalculoMovimentacaoConsumoGrace;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, comobj;

type
  TfrmRelCalculoMovimentacaoConsumoGrace = class(TForm)
    edtIni: TEdit;
    Label1: TLabel;
    edtFim: TEdit;
    Label2: TLabel;
    btnConsultar: TButton;
    GridCG: TwwDBGrid;
    qrAux: TADOQuery;
    qrConsulta: TADOQuery;
    dsExcel: TDataSource;
    Label3: TLabel;
    btnExcel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCalculoMovimentacaoConsumoGrace: TfrmRelCalculoMovimentacaoConsumoGrace;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelCalculoMovimentacaoConsumoGrace.FormCreate(
  Sender: TObject);

  var AnoMes: Integer;
begin
     AnoMes := (StrToInt(FormatDateTime('YYYY', Now)) * 100) + StrToInt(FormatDateTime('MM', Now));
     edtIni.Text := IntToStr(AnoMes);
     edtFim.Text := IntToStr(AnoMes);

end;

procedure TfrmRelCalculoMovimentacaoConsumoGrace.btnConsultarClick(
  Sender: TObject);
var AnoMesIni, AnoMesFim: Integer;
    listaAnos: string;
begin
    btnConsultar.Enabled := False;
    Label3.Visible := True;


    Application.ProcessMessages;

    AnoMesIni := StrToInt(edtIni.Text);
    AnoMesFim := StrToInt(edtFim.Text);
    listaAnos := '';

    with qrAux do begin
             Close;
             sql.Clear;
             SQL.Add('DELETE FROM RelCalculoMovimentacaoConsumoGrace ');
             ExecSQL;
    end;

    GridCG.selected.Clear;
    GridCG.selected.add('Tipo'#9'27'#9'Tipo'#9#9 );


    while AnoMesIni <= AnoMesFim do begin
         listaAnos := listaAnos + '[' + IntToStr(AnoMesIni);
         if AnoMesIni = AnoMesFim then begin
             listaAnos := listaAnos + ']';
         end else begin
             listaAnos := listaAnos + '],';
         end;

         with qrAux do begin
             Close;
             sql.Clear;
             SQL.Add('EXEC STP_CALCULA_MOVIMENTACAO_CONSUMO_GRACE ' + IntToStr(AnoMesIni));
             ExecSQL;
         end;
         GridCG.selected.add(INTTOSTR(AnoMesIni) + #9'11'#9 + INTTOSTR(AnoMesIni) + #9#9 );
         GridCG.PictureMasks.Add(INTTOSTR(AnoMesIni) + #9'###,###,##0.00'#9'T'#9'T') ;
         AnoMesIni := AnoMesIni + 1;
    end;

    GridCG.selected.add('Soma'#9'11'#9'Acumulado'#9#9 );



    WITH qrConsulta DO begin
        Close;
        SQL.Clear;
        SQL.Add(
            ' SELECT Tipo, ' + listaAnos + ', 0 as Soma ' +
            ' FROM( ' +
            '     SELECT ANOMES, TIPO, VALOR, ORDEM '+
            '     FROM RelCalculoMovimentacaoConsumoGrace ' +
            ' ) AS SOURCETABLE '   +
            ' PIVOT ' +
            ' ( ' +
            '     SUM(VALOR) '  +
            '     FOR [anomes] ' +
            '     IN (' + listaAnos +  ') '  +
            ' ) AS PIVOTTABLE '+
            ' ORDER by ORDEM '

        );
        Open;

    end;

    btnConsultar.Enabled := True;
    Label3.Visible := False;

end;

procedure TfrmRelCalculoMovimentacaoConsumoGrace.btnExcelClick(
  Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna, colunaHeader : Integer;
    AnoMesIni, AnoMesFim: Integer;
begin

  AnoMesIni := StrToInt(edtIni.Text);
  AnoMesFim := StrToInt(edtFim.Text);
  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

   linha := 1;
   
  dsExcel.DataSet.First;

  Excel.Cells[Linha, 1] := '';

  colunaHeader := 1;

  while  AnoMesIni <= AnoMesFim do begin
      Inc(colunaHeader);
      Excel.Cells[Linha, colunaHeader] := IntToStr(AnoMesIni);
      AnoMesIni := AnoMesIni + 1;
  end;

  Excel.Cells[Linha, colunaHeader + 1] := 'Acumulado';

  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType in [ftFloat, ftBCD] then  begin
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

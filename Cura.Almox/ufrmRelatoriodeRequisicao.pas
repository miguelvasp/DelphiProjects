unit ufrmRelatoriodeRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, Mask, ExtCtrls, ComObj;

type
  TfrmRelatoriodeRequisicao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtIni: TMaskEdit;
    edtFim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    cboLocalOrigem: TwwDBLookupCombo;
    Label4: TLabel;
    cboLocalDestino: TwwDBLookupCombo;
    cboTipoConsumo: TwwDBComboBox;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    qrLocalOrigem: TADOQuery;
    qrLocalOrigemLOCAL_ID: TAutoIncField;
    qrLocalOrigemDESCRICAO: TStringField;
    qrLocalDestino: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    qrBusca: TADOQuery;
    qrBuscaReq_ID: TAutoIncField;
    qrBuscaData: TDateTimeField;
    qrBuscaUsuario: TStringField;
    qrBuscaOrigem: TStringField;
    qrBuscaDestino: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaTipoConsumo: TStringField;
    qrBuscaQtde: TFloatField;
    dsExcel: TDataSource;
    qrBuscaCUSTO: TFloatField;
    qrBuscaREPOSICAO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatoriodeRequisicao: TfrmRelatoriodeRequisicao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelatoriodeRequisicao.FormCreate(Sender: TObject);
begin
  qrLocalOrigem.Open;
  qrLocalDestino.Open;
  edtIni.Text := FormatDateTime('dd/MM/yyyy', Now);
  edtFim.Text := FormatDateTime('dd/MM/yyyy', Now);
end;

procedure TfrmRelatoriodeRequisicao.Button1Click(Sender: TObject);
begin
   with qrBusca do begin
       Close;
       sql.Clear;
       sql.Add(
           ' SELECT '+
           '         C.Req_ID,   '+
           '         C.Data,  '+
           '         ISNULL(U.NOME_COMPLETO, C.Usuario) AS Usuario,  '+
           '         O.Descricao AS Origem,  '+
           '         D.Descricao as Destino, '+
           '        M.MAT_DESC,  '+
           '         I.Status,  '+
           '         CASE WHEN I.tipoConsumo = ''C'' THEN ''CONSUMO''  '+
           '                 WHEN I.tipoConsumo = ''T'' THEN ''TRANSFERENCIA''   '+
           '         END AS TipoConsumo,  '+
           '         Sum(L.Qtde) as Qtde , CUSTO, I.REPOSICAO  '+
           ' FROM Req_Capa C  '+
           ' INNER JOIN Req_Item I ON C.Req_ID = I.Req_ID   '+
           ' INNER JOIN Req_Lote L ON I.Req_Item_ID = L.Req_Item_ID  '+
           ' INNER JOIN Local D ON C.LOCAL_ID = D.Local_ID   '+
           ' INNER JOIN LOCAL O ON L.Local_ID = O.Local_ID  '+
           ' INNER JOIN UsuarioAlmox U ON C.Usuario = U.Nome  '+
           ' INNER JOIN MATERIAIS M ON I.Mat_ID = M.MAT_ID  where 1 = 1 ' +
           ' AND CONVERT(VARCHAR, C.Data, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtIni.Text))) +
           ' AND CONVERT(VARCHAR, C.Data, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtFim.Text)))
       );

       if cboLocalOrigem.Text <> '' then
        sql.Add(' AND O.LOCAL_ID = ' + cboLocalOrigem.LookupValue);

       if cboLocalDestino.Text <> '' then
        sql.Add(' AND d.LOCAL_ID = ' + cboLocalDestino.LookupValue);

       if cboTipoConsumo.Text <> '' then
        SQL.Add(' and I.tipoConsumo = ' + QuotedStr(cboTipoConsumo.Value));

       sql.Add(
           ' group by C.Req_ID,  '+
           '         C.Data, '+
           '         ISNULL(U.NOME_COMPLETO, C.Usuario) ,   '+
           '         O.Descricao,  '+
           '         D.Descricao, '+
           '         M.MAT_DESC,  '+
           '         I.Status, '+
           '         CASE WHEN I.tipoConsumo = ''C'' THEN ''CONSUMO''   '+
           '                 WHEN I.tipoConsumo = ''T'' THEN ''TRANSFERENCIA''  '+
           '         END , CUSTO, I.REPOSICAO  '+
           ' order by 3, C.Req_ID  '
       );
       Open;
   end;
end;

procedure TfrmRelatoriodeRequisicao.Button2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
    excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  dsExcel.DataSet.First;

  linha := 1;
  //escrevemos os cabe�alhos
 // for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
  //    Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
 // end;
  Excel.Cells[Linha, 1] := 'Requisi��o';
  Excel.Cells[Linha, 2] := 'Data';
  Excel.Cells[Linha, 3] := 'Usu�rio';
  Excel.Cells[Linha, 4] := 'Origem';
  Excel.Cells[Linha, 5] := 'Destino';
  Excel.Cells[Linha, 6] := 'Material';
  Excel.Cells[Linha, 7] := 'Tipo Consumo';
  Excel.Cells[Linha, 8] := 'Quantidade';
  Excel.Cells[Linha, 9] := 'Centro de Custo';
  Excel.Cells[Linha, 10] := 'Reposi��o';


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

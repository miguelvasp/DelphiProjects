unit UfrmLancamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, Mask, ExtCtrls, wwdblook, Db,
  DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, ADODB, ComObj;

type
  TfrmLancamentoCaixa = class(TForm)
    Panel1: TPanel;
    edtVctoIni: TMaskEdit;
    Label1: TLabel;
    edtVctoFim: TMaskEdit;
    Label3: TLabel;
    edtCodigoPaciente: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    qrProfisional: TwwQuery;
    qrProfisionalNOMEPROFISSIONAL: TStringField;
    edtCodProfissional: TEdit;
    cboProfisional: TwwDBLookupCombo;
    Label6: TLabel;
    qrPaciente: TwwQuery;
    cboPaciente: TwwDBLookupCombo;
    qrPacienteNOME: TStringField;
    Button1: TButton;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    Button3: TButton;
    UPD: TUpdateSQL;
    qrBusca: TADOQuery;
    qrBuscaId: TAutoIncField;
    qrBuscaNRPAGAMENTO: TWideStringField;
    qrBuscaFK_CONTA: TWideStringField;
    qrBuscaFK_PROFCAIXA: TWideStringField;
    qrBuscaNOMEPROFISSIONAL: TStringField;
    qrBuscaDTHRLANCAMENTO: TDateTimeField;
    qrBuscaDATAVENCIMENTO: TDateTimeField;
    qrBuscaVALOR_PARCELA: TBCDField;
    qrBuscaVALOR_LANCAMENTO: TBCDField;
    qrBuscaDOMNTIPOPAGTO: TStringField;
    qrBuscaTIPOPAGAMENTO: TStringField;
    qrBuscaREC_CLIE: TWideStringField;
    qrBuscaBANDEIRACARTAO: TStringField;
    qrBuscaFK_PACIENTE: TWideStringField;
    qrBuscaNOME: TStringField;
    qrBuscaDTHRABERTURA: TDateTimeField;
    qrBuscaNUPARCELAS: TWideStringField;
    qrBuscaPARCELAS: TWideStringField;
    qrBuscaAgrupar: TStringField;
    qrBuscaLancar: TStringField;
    qrBuscaREC_ID: TIntegerField;
    qrProc: TADOQuery;
    qrSoma: TADOQuery;
    qrSomaSOMA: TBCDField;
    lbSoma: TLabel;
    Button4: TButton;
    qrAux: TADOQuery;
    qrClientes: TADOQuery;
    qrClientesREC_CLIE: TAutoIncField;
    qrClientesCLI_RAZA: TStringField;
    cboCliente: TwwDBLookupCombo;
    Button5: TButton;
    dsExcel: TDataSource;
    qrBuscaDOCUMENTOS: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure qrBuscaLancarChange(Sender: TField);
    procedure qrBuscaAgruparChange(Sender: TField);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamentoCaixa: TfrmLancamentoCaixa;

implementation

uses CPPMENU, UfrmLancamentoCaixaRel;

{$R *.DFM}

procedure TfrmLancamentoCaixa.FormShow(Sender: TObject);
begin
        qrProfisional.Open;
        qrPaciente.Open;
        qrClientes.Open;
end;

procedure TfrmLancamentoCaixa.Button1Click(Sender: TObject);
begin



 IF qrBusca.State IN [dsInsert, dsEdit] then
        qrBusca.Post;

   qrAux.ExecSQL;
        
        with qrBusca do begin
            close;
            sql.Clear;
            sql.Add('SELECT * FROM LancamentoCaixa where REC_ID IS NULL ');
               if edtVctoIni.Text <> '  /  /    ' then
                  sql.Add(' AND CONVERT(VARCHAR, DTHRLANCAMENTO, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtVctoIni.Text))));
               if edtVctoFim.Text <> '  /  /    ' then
                  sql.Add(' AND CONVERT(VARCHAR, DTHRLANCAMENTO, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(edtVctoFim.Text))));
               if edtCodigoPaciente.Text <> '' then
                  sql.Add(' AND FK_PACIENTE = ' + QuotedStr(edtCodigoPaciente.Text));
               if cboPaciente.Text <> '' then
                  sql.Add(' AND NOME like ' + QuotedStr('%' + cboPaciente.Text + '%'));
               if edtCodProfissional.Text <> '' then
                  sql.Add(' AND FK_PROFCAIXA = ' + QuotedStr(edtCodProfissional.Text));
               if cboProfisional.Text <> '' then
                  sql.Add(' AND NOMEPROFISSIONAL like ' + QuotedStr('%' + cboProfisional.Text + '%'));

               sql.Add(' order by DTHRLANCAMENTO')      ;
            Open;
        end;
end;

procedure TfrmLancamentoCaixa.Button2Click(Sender: TObject);
begin
IF qrBusca.State IN [dsInsert, dsEdit] then
        qrBusca.Post;
        
  with qrProc do begin
      close;
      sql.Clear;
      sql.Add('EXEC STP_LANCAMENTOCAIXA @EhAgrupamento = 1');
      ExecSQL;
  end;
  qrBusca.Close;
  qrBusca.Open;

  ShowMessage('Solicitação atendida com sucesso!');
end;

procedure TfrmLancamentoCaixa.Button3Click(Sender: TObject);
var sql : WideString;
begin

  sql := qrBusca.SQL.Text;

  sql := StringReplace(sql, ' order by DTHRLANCAMENTO', '', [RFReplaceAll]);

IF qrBusca.State IN [dsInsert, dsEdit] then
        qrBusca.Post;

  qrBusca.Close;
  qrBusca.SQL.Clear;
  qrBusca.SQL.Add(sql + ' AND LANCAR = ' + QuotedStr('S'));
  qrBusca.Open;

  qrBusca.First;
  while not qrBusca.Eof do begin

        with qrProc do begin
            close;
            sql.Clear;
            sql.Add('EXEC STP_LANCAMENTOCAIXA_INDIVIDUAL @ID = ' + qrBuscaId.AsString);
            ExecSQL;
        end;
        qrBusca.Next;
  end;


  qrBusca.Close;
  qrBusca.SQL.Clear;
  qrBusca.SQL.Add(sql);
  qrBusca.SQL.Add('  order by DTHRLANCAMENTO');
  qrBusca.Open;

    ShowMessage('Solicitação atendida com sucesso!');
    
end;

procedure TfrmLancamentoCaixa.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
     with qrSoma do begin
         close;
         sql.Clear;
         sql.Add('SELECT SUM(VALOR_PARCELA) AS SOMA FROM LANCAMENTOCAIXA WHERE LANCAR = ''S'' or  AGRUPAR = ''S'' ');
         Open;
     end;
     lbSoma.Caption := 'Total Seleção: R$ ' + FormatFloat('###,###,##0.00', qrSomaSOMA.AsFloat);
end;

procedure TfrmLancamentoCaixa.qrBuscaLancarChange(Sender: TField);
begin
  qrBusca.Post;
end;

procedure TfrmLancamentoCaixa.qrBuscaAgruparChange(Sender: TField);
begin
   qrBusca.Post;
end;

procedure TfrmLancamentoCaixa.Button4Click(Sender: TObject);
var filtros: WideString;
begin

  filtros := 'Filtros: ';
  if edtVctoIni.Text <> '  /  /    '   then
        filtros := filtros + 'Venc. de ' + edtVctoIni.Text;
  if edtVctoFim.Text <> '  /  /    '   then
        filtros := filtros + ' Venc. até ' + edtVctoFim.Text;

  if edtCodigoPaciente.Text <> '' then
        filtros := filtros + ' Cod. Pac. ' + edtCodigoPaciente.Text;

  if cboPaciente.Text <> '' then
        filtros := filtros + ' Pac. ' + cboPaciente.Text;

  if edtCodProfissional.Text <> '' then
        filtros := filtros + ' Cod. Prof. ' + edtCodProfissional.Text;

  if cboProfisional.Text <> '' then
        filtros := filtros + ' Prof. ' + cboProfisional.Text;

  IF qrBusca.State IN [dsInsert, dsEdit] then
        qrBusca.Post;

  frmLancamentoCaixaRel := TfrmLancamentoCaixaRel.Create(Self);
  frmLancamentoCaixaRel.lbFiltro.Caption := filtros;
  frmLancamentoCaixaRel.QuickRep1.Preview;
end;

procedure TfrmLancamentoCaixa.Button5Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin




  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

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

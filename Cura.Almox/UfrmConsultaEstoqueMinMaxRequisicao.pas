unit UfrmConsultaEstoqueMinMaxRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, ADODB, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComObj;

type
  TfrmConsultaEstoqueMinMaxRequisicao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    qrLocal: TADOQuery;
    qrLocalDescricao: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    Label23: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label1: TLabel;
    cboGrupo: TwwDBLookupCombo;
    Label2: TLabel;
    qrGrupo: TADOQuery;
    qrGrupoGRU_ID: TAutoIncField;
    qrGrupoGRU_DESC: TStringField;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qrBusca: TADOQuery;
    qrBuscaIdConsultaEstoqueRequisicao: TAutoIncField;
    qrBuscaLocal_ID: TIntegerField;
    qrBuscaMAT_ID: TIntegerField;
    qrBuscaEstoque: TFloatField;
    qrBuscaMedia: TFloatField;
    qrBuscaEstoqueMinimo: TFloatField;
    qrBuscaEstoqueMaximo: TFloatField;
    qrBuscaQtdeSolicitada: TFloatField;
    qrBuscaUsuario: TIntegerField;
    qrBuscaSelecionado: TStringField;
    qrBuscaLOCAL: TStringField;
    qrBuscaMATERIAL: TStringField;
    dsExcel: TDataSource;
    qrSTP: TADOQuery;
    Button4: TButton;
    Label3: TLabel;
    cboCentroCusto: TwwDBLookupCombo;
    qrCentroCusto: TADOQuery;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoFinancSN: TStringField;
    qrBuscaPacoteSolicitar: TStringField;
    qrBuscaEntregaEmPacote: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaEstoqueMinMaxRequisicao: TfrmConsultaEstoqueMinMaxRequisicao;

implementation

uses UMenu, UfrmConsultaEstoqueMinMaxRequisicaoRel;

{$R *.DFM}

procedure TfrmConsultaEstoqueMinMaxRequisicao.FormCreate(Sender: TObject);
begin
 qrLocal.Open;
 qrGrupo.Open;
 qrCentroCusto.Open;
end;

procedure TfrmConsultaEstoqueMinMaxRequisicao.Button1Click(
  Sender: TObject);

  var sql: string;
begin
  if cboLocal.Text = '' then begin
      ShowMessage('Selecione o local');
      Abort;
  end;

  sql := 'EXEC STP_ConsultaEstoqueMaxMinRequisicao @Local_ID = '  + cboLocal.LookupValue + ', @Usuario = ' + FMenu.sqlUsuariosCH.AsString;

  if cboGrupo.Text <> '' then
        sql := sql + ', @IdGrupoMateriais =  ' + cboGrupo.LookupValue;

  qrSTP.SQL.Clear;
  qrSTP.SQL.Add(sql);
  qrSTP.ExecSQL;

  qrBusca.Close;
  qrBusca.Parameters[0].Value :=  FMenu.sqlUsuariosCH.AsInteger;
  qrBusca.Open;


end;

procedure TfrmConsultaEstoqueMinMaxRequisicao.Button4Click(
  Sender: TObject);
  var sql: string;
begin
  TRY
      if qrBusca.State = dsEdit then
         qrBusca.Post;

      if cboCentroCusto.Text = '' then begin
          ShowMessage('Selecione o centro de custo');
          Abort;
      end;

      sql := 'EXEC STP_GerarEstoqueMaxMinRequisicao @Usuario = ' + FMenu.sqlUsuariosCH.AsString + ', @CC_ID =  ' + cboCentroCusto.LookupValue;


      qrSTP.SQL.Clear;
      qrSTP.SQL.Add(sql);
      qrSTP.ExecSQL;

      ShowMessage('Solicitação de materiais realizada com sucesso!');
      Button1.Click;

  except
      on e : Exception do
           begin
               showmessage(e.Message);
           end;
  end


end;

procedure TfrmConsultaEstoqueMinMaxRequisicao.Button2Click(
  Sender: TObject);
begin
    frmConsultaEstoqueMinMaxRequisicaoRel := TfrmConsultaEstoqueMinMaxRequisicaoRel.create(self);
    frmConsultaEstoqueMinMaxRequisicaoRel.QuickRep1.Preview;
end;

procedure TfrmConsultaEstoqueMinMaxRequisicao.Button3Click(
  Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;

begin
      //  close;
        linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
 // for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
 //     Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
 // end;
  Excel.Cells[Linha, 1] := 'Local';
  Excel.Cells[Linha, 2] := 'Material';
  Excel.Cells[Linha, 3] := 'Estoque';
  Excel.Cells[Linha, 4] := 'Média';
  Excel.Cells[Linha, 5] := 'Estoque Min.';
  Excel.Cells[Linha, 6]  :='Estoque Máx';

  qrBusca.Last;

  qrBusca.First;
  while not qrBusca.Eof do begin
      Inc(linha);

        Excel.Cells[Linha, 1] := qrBuscaLOCAL.AsString;
        Excel.Cells[Linha, 2] :=  qrBuscaMATERIAL.AsString;
        Excel.Cells[Linha, 3] := qrBuscaEstoque.AsInteger;
        Excel.Cells[Linha, 4] := qrBuscaMedia.AsInteger;
        Excel.Cells[Linha, 5] := qrBuscaEstoqueMinimo.AsInteger;
        Excel.Cells[Linha, 6] :=  qrBuscaEstoqueMaximo.AsInteger;
        qrBusca.Next;
        Application.ProcessMessages;
  end;


  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

procedure TfrmConsultaEstoqueMinMaxRequisicao.wwDBGrid1CalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if qrBuscaPacoteSolicitar.AsString = 'S' then begin
    ABrush.Color := clRed;
  end else begin
     ABrush.Color := clGreen;
  end;
end;

end.

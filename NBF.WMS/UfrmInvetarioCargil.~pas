unit UfrmInvetarioCargil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, ADODB, ComObj, ComCtrls;

type
  TfrmInventarioCargil = class(TForm)
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    qrClientes: TADOQuery;
    qrProdutos: TADOQuery;
    qrProdutosPRO_ID: TAutoIncField;
    qrProdutosPRO_DESC: TStringField;
    qrProdutosPRO_COD: TStringField;
    qrClientesCLIN_ID: TAutoIncField;
    qrClientesCLIN_RAZA: TStringField;
    Button1: TButton;
    qrEstoque: TADOQuery;
    qrEstoqueESTQ_ID: TAutoIncField;
    qrEstoqueAR_ID: TIntegerField;
    qrEstoquePOS_ID: TIntegerField;
    qrEstoqueOS_ID_ORIG: TIntegerField;
    qrEstoquePRO_ID: TIntegerField;
    qrEstoqueESTQ_QTDE: TFloatField;
    qrEstoqueESTQ_QTDE_RETIRA: TFloatField;
    qrEstoqueMANI_ID: TIntegerField;
    qrEstoqueESTQ_PESO: TFloatField;
    qrEstoqueOS_ID_DEST: TIntegerField;
    qrEstoqueESTQ_DT_ENTRADA: TDateTimeField;
    qrEstoqueESTQ_DT_SAIDA: TDateTimeField;
    qrEstoqueROM_ID_ENT: TIntegerField;
    qrEstoqueROM_ID_SAIDA: TIntegerField;
    qrEstoqueROM_DTBATCH: TDateTimeField;
    qrEstoqueROM_DTVENCTO: TDateTimeField;
    qrEstoqueESTQ_LOTE: TStringField;
    qrEstoqueUVEN_ID: TIntegerField;
    qrEstoqueESTQ_TAG: TIntegerField;
    qrEstoqueAR_ID_ANTERIOR: TIntegerField;
    qrEstoquePOS_ID_ANTERIOR: TIntegerField;
    qrEstoqueESTQ_DT_ULMOV: TDateTimeField;
    qrEstoquePAR_ID: TIntegerField;
    qrEstoqueGEROU_OPER_ROMSAIDA: TStringField;
    qrEstoqueMARCADOR: TStringField;
    qrEstoqueESTQ_ESCOLHEULOTE: TStringField;
    qrEstoqueQTDE_GERAL: TFloatField;
    qrEstoquePRO_ID_1: TAutoIncField;
    qrEstoqueCLIN_ID: TIntegerField;
    qrEstoquePRO_DESC: TStringField;
    qrEstoqueTPRO_ID: TIntegerField;
    qrEstoquePRO_COD: TStringField;
    qrEstoquePRO_ORIGEM: TStringField;
    qrEstoqueUVEN_ID_1: TIntegerField;
    qrEstoqueUVEN_ID_EXP: TIntegerField;
    qrEstoqueQTDE_UVUE: TFloatField;
    qrEstoquePRO_QTDE_PALLET: TIntegerField;
    qrEstoquePRO_QTDE_PALLETUV: TFloatField;
    qrEstoquePRO_PESO: TFloatField;
    qrEstoquePRO_VOLUME: TFloatField;
    qrEstoquePRO_VOLUME_PALLET: TFloatField;
    qrEstoquePRO_ALTURA: TIntegerField;
    qrEstoquePRO_LASTRO: TIntegerField;
    qrEstoquePRO_VALIDDIAS: TIntegerField;
    qrEstoqueMARCADOR_1: TStringField;
    qrEstoquePRO_PESO_LIQ: TFloatField;
    qrEstoquePRO_DESCONTINUA: TStringField;
    qrEstoquePRO_COMPR: TFloatField;
    qrEstoquePRO_LARG: TFloatField;
    qrEstoquePRO_ALT: TFloatField;
    qrEstoquePRO_REDUZICMS: TFloatField;
    qrEstoquePRO_ISENCAO: TStringField;
    qrEstoquePRO_ICMS: TFloatField;
    qrEstoquePRO_CST1: TStringField;
    qrEstoquePRO_CST2: TStringField;
    qrEstoquePRO_CST3: TStringField;
    qrEstoquePRO_CST4: TStringField;
    qrEstoquePRO_CST5: TStringField;
    qrEstoquePRO_CST6: TStringField;
    qrEstoqueULTIMO_PRECO: TFloatField;
    edtLote: TEdit;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    qrEstoqueSTATUS: TStringField;
    qrEstoqueEMBALAGEM: TStringField;
    qrEstoqueTIPO_PRODUTO: TStringField;
    qrAux: TADOQuery;
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInventarioCargil: TfrmInventarioCargil;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmInventarioCargil.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   wwDBLookupCombo2.Text := '';
   qrProdutos.CLOSE;
   qrProdutos.Parameters[0].Value :=  qrClientesCLIN_ID.Value ;
   qrProdutos.Open;
end;

procedure TfrmInventarioCargil.FormCreate(Sender: TObject);
begin
  qrClientes.Open;
end;

procedure TfrmInventarioCargil.Button1Click(Sender: TObject);

var excel :variant;
LINHA : integer;
begin


        IF wwDBLookupCombo1.Text = '' then begin

            ShowMessage('Informe o cliente NBF');
            Abort;
        end;

        with qrEstoque do begin
            close;
            sql.Clear;
            sql.Add(
               ' select  * ' +
               ' from ESTOQUE  A (NOLOCK)INNER JOIN PRODUTO B (NOLOCK) '+
               ' ON A.PRO_ID = B.PRO_ID '+
               ' WHERE B.CLIN_ID = ' + wwDBLookupCombo1.LookupValue +
               ' AND A.ESTQ_QTDE_RETIRA = 0 AND  A.ESTQ_DT_ENTRADA is not null '
            );

            if wwDBLookupCombo2.Text <> '' then
                sql.Add('and A.PRO_ID = ' + wwDBLookupCombo2.LookupValue);

            IF edtLote.Text <> '' then
                SQL.Add('AND ESTQ_LOTE = ' + QuotedStr(edtLote.Text));

            SQL.Add('ORDER BY B.PRO_COD, A.ESTQ_LOTE ');

            Open;
        end;



        excel := CreateOleObject('excel.application');
        if not Excel.Application.Visible then
        
        Excel.WorkBooks.Add;
        LINHA := 1;
        Excel.Cells[linha,1] :=   'NBF SKU';
        Excel.Cells[linha,2] :=   'NOME';
        Excel.Cells[linha,3] :=   'LOTE';
        Excel.Cells[linha,4] :=   'PESO LIQ UNIT';
        Excel.Cells[linha,5] :=   'PESO LIQ TOTAL';
        Excel.Cells[linha,6] :=   'PESO BRU UNIT';
        Excel.Cells[linha,7] :=   'PESO BRU TOTAL';
        Excel.Cells[linha,8] :=   'VOL. (UND)';
        Excel.Cells[linha,9] :=   'EMB';
        Excel.Cells[linha,10] :=   'FAB';
        Excel.Cells[linha,11] :=   'VAL';
        Excel.Cells[linha,12] :=   'STATUS';
        Excel.Cells[linha,13] :=   'PA/EMB/MP';
        Excel.Cells[linha,14] :=   'MOVIM.';
        Excel.Cells[linha,15] :=   'DATA ENTRADA';

        qrEstoque.Last;
        ProgressBar1.Max := qrEstoque.RecordCount;
        ProgressBar1.Position := 0;
        qrEstoque.First;
        while not qrEstoque.Eof do begin
            Inc(LINHA);

            Excel.Cells[linha,1] :=   qrEstoquePRO_COD.AsString;
            Excel.Cells[linha,2] :=   qrEstoquePRO_DESC.Value;
            Excel.Cells[linha,3] :=   qrEstoqueESTQ_LOTE.Value;
            Excel.Cells[linha,4] :=   StrToFloat(FormatFloat('##0.00', qrEstoquePRO_PESO_LIQ.AsFloat));
            Excel.Cells[linha,5] :=   StrToFloat(FormatFloat('##0.00', qrEstoquePRO_PESO_LIQ.AsFloat * qrEstoqueESTQ_QTDE.AsFloat));
            Excel.Cells[linha,6] :=   StrToFloat(FormatFloat('##0.00', qrEstoquePRO_PESO.AsFloat));
            Excel.Cells[linha,7] :=   StrToFloat(FormatFloat('##0.00', qrEstoquePRO_PESO.AsFloat * qrEstoqueESTQ_QTDE.AsFloat));
            Excel.Cells[linha,8] :=   StrToFloat(FormatFloat('##0.00', qrEstoqueESTQ_QTDE.AsFloat));
            Excel.Cells[linha,9] :=   qrEstoqueEMBALAGEM.AsString;
            Excel.Cells[linha,10] :=  qrEstoqueROM_DTBATCH.Value;
            Excel.Cells[linha,11] :=  qrEstoqueROM_DTVENCTO.Value;
            Excel.Cells[linha,12] :=  qrEstoqueSTATUS.Value;
            Excel.Cells[linha,13] :=  qrEstoqueTIPO_PRODUTO.Value;

            with qrAux do begin
                close;
                sql.Clear;
                sql.Add(
                   ' select MAX(estq_dt_saida) AS MOVIM from ESTOQUE '+
                   ' where PRO_ID =  ' + qrEstoquePRO_ID.AsString +
                   ' AND ESTQ_LOTE =  ' + QuotedStr(qrEstoqueESTQ_LOTE.AsString)
                );
                Open;
            end;

            if qrAux.FieldByName('MOVIM').AsString <> '' then
               Excel.Cells[linha,14] :=  qrAux.FieldByName('MOVIM').AsDateTime;

            Excel.Cells[linha,15] :=   qrEstoqueESTQ_DT_ENTRADA.Value;

            qrEstoque.Next;
            Application.ProcessMessages;
            ProgressBar1.Position := ProgressBar1.Position + 1;
        end;


        ProgressBar1.Position := 0;


        Excel.Application.Visible := true;
end;

procedure TfrmInventarioCargil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmInventarioCargil := nil;
end;

end.

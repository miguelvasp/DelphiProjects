unit ufrmConsultaRemanejamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmConsultaRemanejamento = class(TForm)
    Label2: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    qrCliente: TADOQuery;
    qrClienteclin_id: TAutoIncField;
    qrClienteclin_raza: TStringField;
    qrProduto: TADOQuery;
    qrProdutoPRO_ID: TAutoIncField;
    qrProdutoPRO_COD: TStringField;
    qrProdutoPRO_DESC: TStringField;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qrBusca: TADOQuery;
    qrBuscaRREM_ID: TAutoIncField;
    qrBuscaRREM_DATA: TDateTimeField;
    qrBuscaTIPO: TStringField;
    qrBuscaMOVIMENTO: TStringField;
    qrBuscaDISPONIVEL: TFloatField;
    qrBuscaQTDE: TFloatField;
    qrBuscaLOTE: TStringField;
    qrBuscaBATCH: TDateTimeField;
    qrBuscaVENCIMENTO: TDateTimeField;
    qrBuscaPALLET_TAG: TIntegerField;
    edtTag: TEdit;
    edtLote: TEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaRemanejamento: TfrmConsultaRemanejamento;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmConsultaRemanejamento.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
end;

procedure TfrmConsultaRemanejamento.wwDBLookupCombo1Exit(Sender: TObject);
begin
        qrProduto.Close;
        qrProduto.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
        qrProduto.Open;
end;

procedure TfrmConsultaRemanejamento.Button1Click(Sender: TObject);
begin

   IF wwDBLookupCombo1.Text = '' THEN BEGIN
       ShowMessage('Informe o cliente');
       Abort;
   end;
   IF wwDBLookupCombo2.Text = '' THEN BEGIN
       ShowMessage('Informe o produto');
       Abort;
   end;

   with qrBusca do begin
       close;
       SQL.Clear;
       SQL.Add(
           ' select '+
           '   A.RREM_ID, '+
           '   A.RREM_DATA, '+
           '   CASE '+
           '   WHEN B.TIPO = ''E'' THEN ''Entrada (Novo Pallet)'' '+
           '   WHEN B.TIPO = ''A'' THEN ''Alteração Quantidade'' '+
           '   WHEN B.TIPO = ''T'' THEN ''Transferência''  '+
           '   END AS TIPO,  '+
           '   CASE  '+
           '   WHEN B.SOMASUBTRAI = -1 THEN ''Baixa'' '+
           '   WHEN B.SOMASUBTRAI = 1  THEN ''Entrada'' '+
           '   END AS MOVIMENTO,  '+
           '   DISPONIVEL,  '+
           '   QTDE,  '+
           '   LOTE, '+
           '   BATCH,  '+
           '   VENCIMENTO,   '+
           '   PALLET_TAG  '+
           ' from dbo.ROMANEIO_REMANEJA A  '+
           ' INNER JOIN  dbo.ROMANEIO_REMANEJAITENS B  '+
           ' ON A.RREM_ID = B.RREM_ID   '+
           ' WHERE B.PRO_ID = ' + wwDBLookupCombo2.LookupValue
       );

       if edtLote.Text <> '' then
         sql.Add(' AND B.LOTE = ' + QuotedStr(edtLote.Text));

       IF edtTag.Text <> '' then
         SQL.Add(' AND PALLET_TAG = ' + edtTag.Text);

       Open;
   end;
end;

end.

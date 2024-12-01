unit UfrmKardexCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, Mask, wwdblook, Db, DBTables, Wwquery,
  ExtCtrls;

type
  TfrmKardexCliente = class(TForm)
    qrClienteNBF: TwwQuery;
    qrClienteNBFclin_nome: TStringField;
    qrClienteNBFclin_id: TAutoIncField;
    GroupBox2: TGroupBox;
    cbocliente: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    qrProdutos: TwwQuery;
    qrProdutospro_id: TAutoIncField;
    qrAux: TwwQuery;
    qrKardexExec: TwwQuery;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    cboProdutox: TwwDBLookupCombo;
    qrProduto: TwwQuery;
    qrProdutopro_cod: TStringField;
    qrProdutopro_desc: TStringField;
    qrProdutopro_id: TAutoIncField;
    qrTPProduto: TwwQuery;
    qrTPProdutoTPRO_NOME: TStringField;
    qrTPProdutoTPRO_ID: TAutoIncField;
    grp1: TGroupBox;
    cbotpProduto: TwwDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscaProdutos;
    procedure cboclienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboclienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKardexCliente: TfrmKardexCliente;

implementation

uses UMenu, URel_KardexCliente;

{$R *.DFM}

procedure TfrmKardexCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmKardexCliente := nil;
end;

procedure TfrmKardexCliente.BitBtn1Click(Sender: TObject);
var
ch : Integer;
clin_id : integer;
data : TDateTime;
begin


   if cbocliente.Text = '' then
   begin
          MessageBox(Self.Handle, 'Informe o cliente!', 'Erro', MB_OK + MB_ICONERROR)  ;
          Abort;
   end;

   if MaskEdit1.Text = '  /  /    ' then
    begin
          MessageBox(Self.Handle, 'Informe a data de consulta!', 'Erro', MB_OK + MB_ICONERROR)  ;
          Abort;
   end;

   ch :=  FMenu.SqlUsuariosCH.Value;
   clin_id :=  StrToInt(cbocliente.LookupValue);
   data := StrToDate(MaskEdit1.Text);

   //qrAux.Params[0].AsInteger := ch;
   qrAux.ExecSQL;

   qrProdutos.Close;
   qrProdutos.sql.Clear;
   qrProdutos.SQL.Add('Select pro_id from produto where clin_id = ' + IntToStr(clin_id)) ;

   if cboProdutox.Text <> '' then
        qrProdutos.sql.Add(' and pro_id =  ' + cboProdutox.LookupValue);

   if cbotpProduto.Text <> '' then
        qrProdutos.SQL.add(' AND TPRO_ID = ' + cbotpProduto.LookupValue);

   // ShowMessage(qrProdutos.SQL.Text);
   qrProdutos.Open;
   qrProdutos.Last;
   ProgressBar1.Max := qrProdutos.RecordCount;
   ProgressBar1.Position := 0;
   ProgressBar1.Visible := True;
   Label1.Visible := True;
   qrProdutos.First;
   while not qrProdutos.Eof do
   begin
        qrKardexExec.Params[0].AsInteger := qrProdutospro_id.Value;
        qrKardexExec.Params[1].AsString := FormatDateTime('YYYYMMDD', data);
        qrKardexExec.Params[2].AsInteger := ch;
        qrKardexExec.ExecSQL;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;
        qrProdutos.Next;
   end;//while produtos

   ProgressBar1.Visible := False;
   Label1.Visible := False;

   frmRel_kardexCliente := TfrmRel_kardexCliente.Create(Self);
   frmRel_kardexCliente.Report.Preview;

end;

procedure TfrmKardexCliente.FormCreate(Sender: TObject);
begin
        qrClienteNBF.Open;
end;

procedure TfrmKardexCliente.BuscaProdutos;
begin
//
    with qrProduto do
    begin
        close;
        sql.Clear;
        sql.Add('select pro_id, pro_cod, pro_desc from produto');
        if cbocliente.Text <> '' then
                SQL.Add('where clin_id = ' + cbocliente.LookupValue)
        else
                SQL.Add('where clin_id = 0')  ;
        sql.Add('order by pro_cod')  ;
        Open;
    end;

        with qrTPProduto do
    begin
        Close;
        sql.Clear;
        sql.Add('SELECT TPRO_ID, TPRO_NOME FROM TPPRODUTO_CLINBF ');
        if cbocliente.Text <> '' then
                SQL.Add('where clin_id = ' + cbocliente.LookupValue)
        else
                SQL.Add('where clin_id = 0')  ;
        SQL.Add('order by tpro_nome ');
        Open;
    end;
end;

procedure TfrmKardexCliente.cboclienteCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        BuscaProdutos;
end;

procedure TfrmKardexCliente.cboclienteExit(Sender: TObject);
begin
        BuscaProdutos;
end;

end.

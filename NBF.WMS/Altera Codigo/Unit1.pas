unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, wwdblook, Grids, Wwdbigrd, Wwdbgrid;

type
  TForm1 = class(TForm)
    qrClientes: TADOQuery;
    ADOConnection1: TADOConnection;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qrClientesCLIN_ID: TAutoIncField;
    qrClientesCLIN_RAZA: TStringField;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    qrProdutos: TADOQuery;
    qrProdutosPRO_ID: TAutoIncField;
    qrProdutosPRO_COD: TStringField;
    qrProdutosPRO_DESC: TStringField;
    DataSource1: TDataSource;
    Button2: TButton;
    wwDBGrid2: TwwDBGrid;
    qrNF: TADOQuery;
    qrNFNFI_NUMERO: TStringField;
    qrNFINF_CODI: TAutoIncField;
    qrNFPRO_DESC: TStringField;
    qrNFPRO_COD: TStringField;
    qrNFINF_QTDE: TFloatField;
    qrNFINF_QTDERETORNADA: TFloatField;
    qrNFINF_QTDERETORNADASALDO: TFloatField;
    qrNFPRO_ID: TIntegerField;
    DataSource2: TDataSource;
    Button3: TButton;
    qrAux: TADOQuery;
    Button4: TButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    qrProd: TADOQuery;
    qrProdPRO_ID: TAutoIncField;
    qrProdPRO_COD: TStringField;
    qrProdPRO_DESC: TStringField;
    btn1: TButton;
    qryAux: TADOQuery;
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ADOConnection1BeforeConnect(Sender: TObject);
var CONNECTIONSTRING : string;
begin
   CONNECTIONSTRING := 'Provider=SQLOLEDB.1;Password=45482;Persist Security Info=True;User ID=SA;Initial Catalog=';
   CONNECTIONSTRING := CONNECTIONSTRING +   edit2.Text + ';Data Source=' + Edit1.Text;
   ADOConnection1.ConnectionString := CONNECTIONSTRING;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if wwDBLookupCombo1.Text = '' then Abort;

  qrProdutos.close;
  qrProdutos.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
  qrProdutos.Open;

  qrProd.close;
  qrProd.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
  qrProd.Open;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if qrProdutosPRO_ID.AsString = '' then Abort;


  qrNF.close;
  qrNF.Parameters[0].Value := qrProdutosPRO_ID.AsInteger;
  qrNF.Open;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if wwDBLookupCombo2.Text = '' THEN Abort;

   if MessageBox(Self.Handle, 'Confirma a atualização?', '', MB_YESNO) = 7 then Abort;

   qrNF.First;
   while not qrNF.Eof do begin

        with qrAux do begin
            close;
            sql.Clear;
            sql.Add(
                'update nf_itens set pro_cod = ' + QuotedStr(wwDBLookupCombo2.Text) +
                ' , PRO_ID = ' + wwDBLookupCombo2.LookupValue +
                ' where inf_codi = ' + qrNFINF_CODI.AsString
            );
            ExecSQL;
        end;

        qrNF.Next;
        Application.ProcessMessages;
   end;


   qrNF.close;
  qrNF.Parameters[0].Value := qrProdutosPRO_ID.AsInteger;
  qrNF.Open;


end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   ADOConnection1.Close;
   ADOConnection1.Connected := True;
   qrClientes.Open;


   Button2.Enabled := True;
   Button3.Enabled := True;


end;

procedure TForm1.btn1Click(Sender: TObject);
begin
    if wwDBLookupCombo1.Text = '' then begin
        ShowMessage('Selecione um cliente');
        Abort;
    end;

    ShowMessage('Esta operação pode demorar alguns minutos por favor não feche o aplicativo');


    with qryAux do begin
        Close;
        sql.Clear;
        sql.Add(' exec ACERTA_CODIGO ' + wwDBLookupCombo1.LookupValue);
        ExecSQL;
    end;

    ShowMessage('Alteração efetuada com sucesso');


end;

end.

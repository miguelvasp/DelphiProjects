unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    qrProdutos: TADOQuery;
    qrNotas: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    qrProdutosPRODUTO: TIntegerField;
    qrProdutosPRO_COD: TStringField;
    wwDBGrid2: TwwDBGrid;
    Button1: TButton;
    qrNotasNFI_CODI: TIntegerField;
    qrNotasDATA: TDateTimeField;
    qrNotasCLIENTE: TStringField;
    qrNotasPRODUTO: TIntegerField;
    qrNotasSALDO_ANT: TFloatField;
    qrNotasENTRADAS: TFloatField;
    qrNotasSAIDAS: TFloatField;
    qrNotasSALDO: TFloatField;
    qrNotasUN: TStringField;
    qrNotasVALOR: TFloatField;
    qrNotasPARCIAL: TFloatField;
    qrNotasID: TAutoIncField;
    qrNotasTIPO: TStringField;
    DataSource2: TDataSource;
    Button2: TButton;
    qrProdutosESTOQUE_2008: TFloatField;
    qrProdutosVALOR_2008: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  qrProdutos.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
VAR SALDO_ANTERIOR, SALDO, ENTRADAS, SAIDAS, VALOR_ANTERIOR : Real;
    CONTADOR : Integer;
begin
   WHILE NOT qrProdutos.Eof DO begin

       SALDO_ANTERIOR := qrProdutosESTOQUE_2008.AsFloat;
       VALOR_ANTERIOR := StrToFloat(FormatFloat('##0.00', qrProdutosVALOR_2008.AsFloat));
       CONTADOR := 0;
       qrNotas.Close;
       qrNotas.Parameters[0].Value := qrProdutosPRODUTO.AsInteger;
       qrNotas.Open ;
       qrNotas.First;
       WHILE NOT qrNotas.Eof do begin
            Inc(CONTADOR);

            ENTRADAS := qrNotasENTRADAS.AsFloat;
            SAIDAS := qrNotasSAIDAS.AsFloat;
            SALDO := SALDO_ANTERIOR + ENTRADAS - SAIDAS;

            qrNotas.Edit;
            qrNotasSALDO_ANT.AsFloat := SALDO_ANTERIOR;
            qrNotasSALDO.AsFloat := SALDO;

            IF CONTADOR > 1 then BEGIN
               qrNotasPARCIAL.AsFloat := SALDO * qrNotasVALOR.AsFloat;
            end else BEGIN
               qrNotasPARCIAL.AsFloat := (SALDO * qrNotasVALOR.AsFloat) + (SALDO_ANTERIOR * VALOR_ANTERIOR);
            END;

            Application.ProcessMessages;
            qrNotas.Post;

            SALDO_ANTERIOR := SALDO;

            qrNotas.Next;
       end;



       qrProdutos.Next;
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Form2 := TForm2.Create(Self);
    Form2.ShowModal;
end;

end.

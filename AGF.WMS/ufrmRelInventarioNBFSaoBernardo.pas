unit ufrmRelInventarioNBFSaoBernardo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Db, DBTables, Wwquery, ComCtrls, ExtCtrls, ADODB;

type
  TfrmRelInventarioNBFSaoBernardo = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    qrCliente: TwwQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    qrListaProdutos: TwwQuery;
    qrListaProdutosID: TAutoIncField;
    qrListaProdutosPRODUTO: TIntegerField;
    qrListaProdutosentradas: TFloatField;
    qrListaProdutossaidas: TFloatField;
    qrListaProdutosTIPO: TStringField;
    qrListaProdutosCLIENTE: TStringField;
    qrListaProdutosnfi_codi: TIntegerField;
    qrValor: TwwQuery;
    qrValorVALOR: TFloatField;
    qrLivroFiscal: TwwQuery;
    qrEntradas: TwwQuery;
    qrEntradasENTRADAS: TFloatField;
    qrSaidas: TwwQuery;
    qrSaidasSAIDA: TFloatField;
    qrUpdate: TwwQuery;
    qrProdutos: TwwQuery;
    qrProdutosproduto: TIntegerField;
    pnlProgress: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbProgress: TLabel;
    ProgressBar1: TProgressBar;
    STP_CONSULTA_ESTOQUE_FIXO: TADOStoredProc;
    STP_CONSULTA_ESTOQUE_FIXOESTOQUE: TFloatField;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    STP_CONSULTA_ESTOQUE_FIXO2: TADOStoredProc;
    STP_CONSULTA_ESTOQUE_FIXO2ESTOQUE: TBCDField;
    qrEStoque: TADOQuery;
    procedure EntradaSaida;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelInventarioNBFSaoBernardo: TfrmRelInventarioNBFSaoBernardo;

implementation

uses UMenu, URel_livro_Armazem_INV, URel_livro_Armazem,
  URel_Livro_Armazem_Depositante;

{$R *.DFM}

procedure TfrmRelInventarioNBFSaoBernardo.EntradaSaida;
var
  Saldo_ant, Saldo, Valor, VParcial : Double;
  Contador : integer;
  D1, D2: TDateTime;
begin

    pnlProgress.Visible := True;
    
    lbProgress.Caption := 'Buscando informações no banco de dados...' ;
    Application.ProcessMessages;


      D1 := StrToDate(MaskEdit1.Text);
      D2 := StrToDate(MaskEdit2.Text);


   qrLivroFiscal.close;
    qrLivroFiscal.SQL.Clear;
    if RadioGroup2.ItemIndex = 0 then
       qrLivroFiscal.sql.Add('EXEC LIVRO_SAIDA :dt_ini , :dt_fim' )  //NOTAS DE SAIDA
    else
       qrLivroFiscal.sql.Add('EXEC LIVRO_ARMAZEM_RETORNO_SIMBOLICO :dt_ini , :dt_fim' );  //NOTAS DE ARMAZEM E RETORNO SIMBOLICO

    qrLivroFiscal.Params[0].AsString := FormatDateTime('YYYYMMDD',D1);
    qrLivroFiscal.Params[1].AsString := FormatDateTime('YYYYMMDD',D2);
    qrLivroFiscal.ExecSQL;


    qrProdutos.close;
    qrProdutos.open;
    qrProdutos.Last;
    qrProdutos.First;
    ProgressBar1.Max := qrProdutos.RecordCount;
    ProgressBar1.Position := 0;

    while not qrProdutos.Eof do
    begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        lbProgress.Caption := 'Produtos por calcular: '+ IntToStr(ProgressBar1.Max - ProgressBar1.Position) ;
        qrListaProdutos.close;
        qrListaProdutos.Params[0].AsInteger := qrProdutosproduto.Value;
        qrListaProdutos.open;
        contador := 0;
        Saldo_ANT := 0;
        Saldo := 0;
        while not qrListaProdutos.Eof do
        begin
            Inc(Contador);
            IF contador = 1 then
            begin
              if RadioGroup2.ItemIndex = 0 then begin
                STP_CONSULTA_ESTOQUE_FIXO.Close;
                STP_CONSULTA_ESTOQUE_FIXO.Parameters[0].Value := qrProdutosproduto.AsInteger;
                STP_CONSULTA_ESTOQUE_FIXO.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
                STP_CONSULTA_ESTOQUE_FIXO.Open;
                Saldo := STP_CONSULTA_ESTOQUE_FIXOESTOQUE.AsFloat;
              end
              else
              begin
                STP_CONSULTA_ESTOQUE_FIXO2.Close;
                STP_CONSULTA_ESTOQUE_FIXO2.Parameters[0].Value := qrProdutosproduto.AsInteger;
                STP_CONSULTA_ESTOQUE_FIXO2.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
                STP_CONSULTA_ESTOQUE_FIXO2.Open;
                Saldo := STP_CONSULTA_ESTOQUE_FIXO2ESTOQUE.AsFloat;
              end;  
              {qrEStoque.Close;
              qrEStoque.SQL.Clear;
              qrEStoque.sql.Add('SELECT ESTOQUE_2008 FROM PRODUTO WHERE PRO_ID = ' + qrProdutosproduto.AsString );
              qrEStoque.Open;


              Saldo_ant := qrEStoque.FIELDBYNAME('ESTOQUE_2008').AsFloat;}

            end;

           Saldo_ant := Saldo - qrListaProdutosentradas.Value + qrListaProdutossaidas.Value;

            //Saldo := Saldo_ant +  qrListaProdutosentradas.Value - qrListaProdutossaidas.Value;



                    qrValor.CLOSE;
                    qrValor.Params[0].AsInteger  :=  qrProdutosproduto.Value;
                    qrValor.Params[1].AsDateTime :=  D1;
                    qrValor.OPEN;

                    Valor := qrValorVALOR.Value;
                    VParcial := Saldo * Valor;


                qrUpdate.close;
                qrUpdate.Params[0].AsFloat := Saldo_ant;
                qrUpdate.Params[1].AsFloat := Saldo;
                qrUpdate.Params[2].AsFloat := Valor;
                qrUpdate.Params[3].AsFloat := VParcial;
                qrUpdate.Params[4].AsInteger := qrListaProdutosID.Value;
                qrUpdate.ExecSQL;
                Saldo  := Saldo_ant;
            qrListaProdutos.Next;
            Application.ProcessMessages;
        end;
        Application.ProcessMessages;
        qrProdutos.Next;
    end;

    ProgressBar1.Position := 0;
    lbProgress.Caption := '';
    pnlProgress.Visible := False;
end;



procedure TfrmRelInventarioNBFSaoBernardo.Button1Click(Sender: TObject);
begin
  pnlProgress.Left := 8;
  pnlProgress.Top := 7;
  EntradaSaida;

  
    if RadioGroup1.ItemIndex = 0 then
    begin
        frmRel_Livro_Armazem_INV := TfrmRel_Livro_Armazem_INV.Create(self);
        frmRel_Livro_Armazem_INV.qrpEntradasSaidas.Preview;
        frmRel_Livro_Armazem_INV.Close;
    end;

    if RadioGroup1.ItemIndex = 1 then  
    begin
        frmRelLivroArmazem := TfrmRelLivroArmazem.Create(self);
        frmRelLivroArmazem.qrpEntradasSaidas.Preview;
        frmRelLivroArmazem.Close;
    end;

    if RadioGroup1.ItemIndex = 2 then
    begin
        frmRel_Livro_Armazem_Depositante := tfrmRel_Livro_Armazem_Depositante.Create(self);
        frmRel_Livro_Armazem_Depositante.qrpEntradasSaidas.Preview;
        frmRel_Livro_Armazem_Depositante.Close;
    end;


end;

end.

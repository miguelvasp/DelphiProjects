unit ULivroArmazem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls,  Db, DBTables, Wwquery, Mask,
  ComCtrls, Grids, DBGrids, ADODB, ComObj;

type
    TfrmLivroArmazem = class(TForm)
    pnlProgress: TPanel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qrLivroFiscal: TwwQuery;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    qrProdutos: TwwQuery;
    qrProdutosproduto: TIntegerField;
    ProgressBar1: TProgressBar;
    lbProgress: TLabel;
    qrListaProdutos: TwwQuery;
    qrListaProdutosID: TAutoIncField;
    qrListaProdutosPRODUTO: TIntegerField;
    qrListaProdutosentradas: TFloatField;
    qrListaProdutossaidas: TFloatField;
    qrSaidas: TwwQuery;
    qrEntradas: TwwQuery;
    qrSaidasSAIDA: TFloatField;
    qrEntradasENTRADAS: TFloatField;
    qrUpdate: TwwQuery;
    qrListaProdutosTIPO: TStringField;
    qrCliente: TwwQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    qrListaProdutosCLIENTE: TStringField;
    qrListaProdutosnfi_codi: TIntegerField;
    qrValor: TwwQuery;
    qrValorVALOR: TFloatField;
    ADOQuery1: TADOQuery;
    BitBtn2: TBitBtn;
    ADOStoredProc1: TADOStoredProc;
    Edit1: TEdit;
    Label6: TLabel;
    qrParams: TADOQuery;
    qrParamsPAR_ID: TAutoIncField;
    qrParamsPAR_NOME: TStringField;
    qrParamsPAR_RAZA: TStringField;
    qrParamsPAR_CNPJ: TStringField;
    qrParamsPAR_INSC: TStringField;
    qrParamsPAR_ENDERECO: TStringField;
    qrParamsPAR_ENDERECO_COMPL: TStringField;
    qrParamsPAR_ENDERECO_BAIRRO: TStringField;
    qrParamsPAR_UF_SIGLA: TStringField;
    qrParamsPAR_CEP: TStringField;
    qrParamsPAR_TEL: TStringField;
    qrParamsPAR_FAX: TStringField;
    qrParamsPAR_EMAIL: TStringField;
    qrParamsAR_ID: TIntegerField;
    qrParamsMUN_ID: TIntegerField;
    qrParamsAR_ID_OPER: TIntegerField;
    qrParamsULT_TAG: TIntegerField;
    qrParamsPALLET_M2: TFloatField;
    qrParamsCO_SER_ID: TIntegerField;
    qrParamsEN_SER_ID: TIntegerField;
    qrParamsFLAGTELA: TStringField;
    qrParamsFLAGTELA2: TStringField;
    qrParamsFLAGTELA3: TStringField;
    qrParamsCLIN_ID: TIntegerField;
    qrParamsVERSAO: TStringField;
    qrParamsFLAGTELA_USUARIO: TStringField;
    qrParamsFLAGTELA_DATA: TDateTimeField;
    qrParamsFLAGTELA2_USUARIO: TStringField;
    qrParamsFLAGTELA2_DATA: TDateTimeField;
    qrParamsPORTA: TIntegerField;
    qrParamsHOST: TStringField;
    qrParamsCAMINHO: TStringField;
    qrParamsULT_FATURA: TIntegerField;
    qrParamsULT_NF: TIntegerField;
    qrParamsULT_CONH: TIntegerField;
    qrParamsAR_ID_AVARIA: TIntegerField;
    qrParamsULT_MINUTA: TIntegerField;
    qrParamsULT_NFPROV: TIntegerField;
    qrParamsULT_CONHPROV: TIntegerField;
    qrParamsULT_MINUTAPROV: TIntegerField;
    qrParamsCAMINHO_MATRICIAL: TStringField;
    qrParamsCAMINHO_MATRICIAL_FATURA: TStringField;
    qrParamsCAMINHO_MATRICIAL_CONH: TStringField;
    qrParamsDATA: TDateTimeField;
    qrParamsConnectionString: TStringField;
    qrParamsIBGE_ID: TIntegerField;
    qrParamsNUMERO: TIntegerField;
    qrParamsLOGO: TBlobField;
    qrParamsNF_SERVICO: TIntegerField;
    qrParamsALIQ_ISS: TFloatField;
    qrParamsNF_SERVICO_PROV: TIntegerField;
    qrParamsALIQ_ISS_NFS_OE: TFloatField;
    qrParamsDATA_FRETE_FECHAMENTO: TDateTimeField;
    qrParamsRodapeFrete: TStringField;
    qrParamsESTOQUE_INVENTARIO: TStringField;
    qrLivro: TwwQuery;
    qrLivroDATA: TDateTimeField;
    qrLivroCLIENTE: TStringField;
    qrLivroPRODUTO: TIntegerField;
    qrLivroSALDO_ANT: TFloatField;
    qrLivroENTRADAS: TFloatField;
    qrLivroSAIDAS: TFloatField;
    qrLivroSALDO: TFloatField;
    qrLivroPRO_DESC: TStringField;
    qrLivroPRO_COD: TStringField;
    qrLivroVALOR: TFloatField;
    qrLivroPARCIAL: TFloatField;
    Button1: TButton;
    dsExcel: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
     procedure EntradaSaida;
  public
    { Public declarations }
  end;

var
  frmLivroArmazem: TfrmLivroArmazem;
  D1, D2 : TDateTime;
  Efetuado : Boolean;
implementation

uses URel_livro_Armazem, URel_livro_Armazem_INV,
  URel_Livro_Armazem_Depositante, UMenu,
  ufrmRelLivroArmazemResumoDepositante;

{$R *.DFM}

procedure TfrmLivroArmazem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;

   frmLivroArmazem := nil;
end;



procedure TfrmLivroArmazem.BitBtn1Click(Sender: TObject);
begin
  pnlProgress.Left := 16;
  pnlProgress.Top := 63;

  ADOStoredProc1.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
  ADOStoredProc1.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
  ADOStoredProc1.ExecProc;
    {Efetua Calculos internos}
    if Efetuado = true then
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

procedure TfrmLivroArmazem.SpeedButton3Click(Sender: TObject);
begin
   close;
end;

procedure TfrmLivroArmazem.EntradaSaida;
var
  Saldo_ant, Saldo, Valor, VParcial : Double;
  Contador : integer;
  dataIni : string;
begin

    pnlProgress.Visible := True;
    RadioGroup1.SendToBack;
    lbProgress.Caption := 'Buscando informa��es no banco de dados...' ;
    Application.ProcessMessages;
    qrParams.Open;

    if  qrParamsESTOQUE_INVENTARIO.AsString = 'S' then
        dataIni := '20080101'
    else
        dataIni := '19800101';

      D1 := StrToDate(MaskEdit1.Text);
      D2 := StrToDate(MaskEdit2.Text);


    qrLivroFiscal.close;
    qrLivroFiscal.SQL.Clear;
    qrLivroFiscal.sql.Add('EXEC LIVRO_ENTRADA_SAIDA :dt_ini , :dt_fim' );
    qrLivroFiscal.Params[0].AsString := FormatDateTime('YYYYMMDD',D1);
    qrLivroFiscal.Params[1].AsString := FormatDateTime('YYYYMMDD',D2 + 1);
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
        Saldo_ant := 0;
        Saldo := 0;
        while not qrListaProdutos.Eof do
        begin
            Inc(Contador);
            IF contador = 1 then
            begin
                qrSaidas.CLOSE;
                qrSaidas.Params[0].Value := dataIni;
                qrSaidas.Params[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
                qrSaidas.Params[2].Value := qrProdutosproduto.Value;
                qrSaidas.Open;

                qrEntradas.CLOSE;
                qrEntradas.Params[0].Value := dataIni;
                qrEntradas.Params[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
                qrEntradas.Params[2].Value := qrProdutosproduto.Value;
                qrEntradas.Open;
                Saldo_ant := qrEntradasENTRADAS.Value - qrSaidasSAIDA.Value;

                //CONSULTAMOS ESTOQUE EM 2008 - MIGUEL
                //o estoque � calculado na procedure CalculaEstoqueRetroativo onde os negativos viram o estoque existente
                with ADOQuery1 DO BEGIN
                    Close;
                    SQL.Clear;
                    SQL.Add('SELECT ESTOQUE_2008 FROM PRODUTO WHERE PRO_ID = ' + qrProdutosproduto.AsString);
                    Open;
                end;

                Saldo_ant := Saldo_ant + ADOQuery1.fieldByName('ESTOQUE_2008').AsFloat;

            end;
                Saldo := Saldo_ant + qrListaProdutosentradas.Value;
                Saldo := Saldo - qrListaProdutossaidas.Value;


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
                Saldo_ant := Saldo;
            qrListaProdutos.Next;
            Application.ProcessMessages;
        end;
        Application.ProcessMessages;
        qrProdutos.Next;
    end;
    Efetuado := False;
    ProgressBar1.Position := 0;
    lbProgress.Caption := '';
    pnlProgress.Visible := False;
end;

procedure TfrmLivroArmazem.MaskEdit1Change(Sender: TObject);
begin
  {verifica se a connsulta com essa data ja foi efetuada}
  Efetuado := True;
end;

procedure TfrmLivroArmazem.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('DD/MM/YYYY',Date);
  MaskEdit2.Text := FormatDateTime('DD/MM/YYYY',Date);
end;

procedure TfrmLivroArmazem.BitBtn2Click(Sender: TObject);
begin
  pnlProgress.Left := 16;
  pnlProgress.Top := 63;

  ADOStoredProc1.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
  ADOStoredProc1.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
  ADOStoredProc1.ExecProc;
    {Efetua Calculos internos}
    if Efetuado = true then
      EntradaSaida;

  frmRelLivroArmazemResumoDepositante := TfrmRelLivroArmazemResumoDepositante.Create(Self);
  frmRelLivroArmazemResumoDepositante.PAGINA := StrToInt(Edit1.Text);
  frmRelLivroArmazemResumoDepositante.PAGINAL_INICIAL := StrToInt(Edit1.Text);
  frmRelLivroArmazemResumoDepositante.QuickRep1.Preview;

end;

procedure TfrmLivroArmazem.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin
pnlProgress.Left := 16;
  pnlProgress.Top := 63;
  ADOStoredProc1.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
  ADOStoredProc1.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
  ADOStoredProc1.ExecProc;

      {Efetua Calculos internos}
    if Efetuado = true then
      EntradaSaida;

  qrLivro.Open;

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabe�alhos
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

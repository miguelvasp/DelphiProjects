unit ufrmRetornaInsumo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, Db, ADODB,
  DBCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmRetornaInsumo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    Button1: TButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label3: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    qrClientes: TADOQuery;
    qrProdutos: TADOQuery;
    ADOQuery3: TADOQuery;
    qrClientesCLIN_ID: TAutoIncField;
    qrClientesCLIN_RAZA: TStringField;
    qrProdutosPRO_ID: TAutoIncField;
    qrProdutosPRO_COD: TStringField;
    qrProdutosPRO_DESC: TStringField;
    qrPreparacao: TADOQuery;
    qrPreparacaoPREP_ID: TAutoIncField;
    qrPreparacaoPREP_DATA: TDateTimeField;
    qrPreparacaoOS_ID: TIntegerField;
    qrPreparacaoSTATUS: TStringField;
    DataSource1: TDataSource;
    DBText1: TDBText;
    qrSaldo: TADOQuery;
    qrSaldoSALDO: TFloatField;
    STP_CalculaInsumo: TADOStoredProc;
    qrResumo: TADOQuery;
    qrResumoPRO_COD: TStringField;
    qrResumoPRO_COD_BAIXA: TStringField;
    qrResumoPRO_DESC: TStringField;
    qrResumoNFI_NUMERO: TStringField;
    qrResumoQTDE: TBCDField;
    qrResumoINSUMO: TStringField;
    qrResumoINF_CODI: TIntegerField;
    DataSource2: TDataSource;
    qrAux: TADOQuery;
    Button3: TButton;
    STP_NF_RETORNO: TADOStoredProc;
    qrNFItens: TADOQuery;
    qrNFItensINF_CODI: TAutoIncField;
    qrNFItensINF_ITEM: TIntegerField;
    qrNFItensNFI_CODI: TIntegerField;
    qrNFItensPRO_ID: TIntegerField;
    qrNFItensPRO_COD: TStringField;
    qrNFItensPRO_DESC: TStringField;
    qrNFItensINF_QTDE: TFloatField;
    qrNFItensINF_PUNI: TFloatField;
    qrNFItensINF_AIPI: TFloatField;
    qrNFItensINF_VIPI: TFloatField;
    qrNFItensINF_TOTA: TFloatField;
    qrNFItensINF_PESOLIQ: TFloatField;
    qrNFItensINF_PESO: TFloatField;
    qrNFItensINF_VOL: TFloatField;
    qrNFItensINF_AICM: TFloatField;
    qrNFItensINF_BICM: TFloatField;
    qrNFItensINF_VICM: TFloatField;
    qrNFItensUVEN_ID: TIntegerField;
    qrNFItensINF_QTDERETORNADA: TFloatField;
    qrNFItensINF_NFE: TIntegerField;
    qrNFItensINF_QTDERETORNADASALDO: TFloatField;
    qrNFItensESTQ_LOTE1: TStringField;
    qrNFItensESTQ_LOTE1_QTDE: TFloatField;
    qrNFItensESTQ_LOTE2: TStringField;
    qrNFItensESTQ_LOTE2_QTDE: TFloatField;
    qrNFItensINF_CST: TStringField;
    qrNFItensUNIDADE: TStringField;
    qrNFItensNCM: TStringField;
    cboTipoDoc: TwwDBComboBox;
    lbl1: TLabel;
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetornaInsumo: TfrmRetornaInsumo;

implementation

uses UMenu, ufrmPrepIndustrializacao, UOS;

{$R *.DFM}

procedure TfrmRetornaInsumo.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  qrProdutos.Close;
  qrProdutos.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
  qrProdutos.Open;
end;

procedure TfrmRetornaInsumo.wwDBLookupCombo1Exit(Sender: TObject);
begin
  qrProdutos.Close;
  qrProdutos.Parameters[0].Value := StrToInt(wwDBLookupCombo1.LookupValue);
  qrProdutos.Open;
end;

procedure TfrmRetornaInsumo.Button2Click(Sender: TObject);
begin
   if wwDBLookupCombo2.Text = '' then begin
       ShowMessage('Informe o insumo');
       Abort;
   end;


   if Edit1.Text = '' then begin
       ShowMessage('Informe a Quantidade');
       Abort;
   end;


   qrSaldo.Close;
   qrSaldo.Parameters[0].Value := StrToInt(cboTipoDoc.Value);
   qrSaldo.Parameters[1].Value := qrProdutosPRO_ID.AsInteger;
   qrSaldo.Open;

   if StrToFloat(Edit1.Text) > qrSaldoSALDO.AsFloat then begin
       ShowMessage('Saldo insuficiente em notas de entrada, saldo disponível ' + FormatFloat('###,###,##0.0000', qrSaldoSALDO.AsFloat));
       Abort;
   end;

   STP_CalculaInsumo.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
   STP_CalculaInsumo.Parameters[1].Value := qrProdutosPRO_ID.AsInteger;
   STP_CalculaInsumo.Parameters[2].Value := qrProdutosPRO_COD.AsString;
   STP_CalculaInsumo.Parameters[3].Value := StrToFloat(Edit1.Text);
   STP_CalculaInsumo.Parameters[4].Value := StrToInt(cboTipoDoc.Value);
   STP_CalculaInsumo.ExecProc;

   qrResumo.close;
   qrResumo.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
   qrResumo.Open;

end;

procedure TfrmRetornaInsumo.Button1Click(Sender: TObject);
begin
    qrPreparacao.Close;
    qrPreparacao.Open;

    qrPreparacao.Append;
    qrPreparacaoSTATUS.Value := 'I';
    qrPreparacao.Post;

    qrResumo.close;
    qrResumo.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
    qrResumo.Open;

    Panel1.Visible := True;

end;

procedure TfrmRetornaInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add('delete from INDUSTRIALIZACAO_BAIXA where prep_id = ' + qrPreparacaoPREP_ID.AsString);
      ExecSQL;
  end;

  Action := caFree;
  frmRetornaInsumo := nil;
end;

procedure TfrmRetornaInsumo.FormCreate(Sender: TObject);
begin
  qrClientes.Open;
end;

procedure TfrmRetornaInsumo.Button3Click(Sender: TObject);
begin

    if MessageBox(Self.Handle, 'Deseja emitir a nota fiscal?' , 'Confirmação', MB_YESNO) = 7 then Abort;


        //emite a nota de retorno dos produtos e insumos E BAIXA ESTOQUE
        STP_NF_RETORNO.Parameters[0].Value := qrPreparacaoPREP_ID.AsInteger;
        STP_NF_RETORNO.Parameters[1].Value := qrClientesCLIN_ID.AsInteger;
        STP_NF_RETORNO.Parameters[2].Value :=  FOS.cdsOSOS_ID.AsInteger;
        STP_NF_RETORNO.Parameters[3].Value := 'S';
        STP_NF_RETORNO.ExecProc;


        //EFETUAMOS A BAIXA DAS NOTAS DE ENTRADA
        qrResumo.First;
        while not qrResumo.Eof do begin
            qrNFItens.Close;
            qrNFItens.Parameters[0].Value := qrResumoINF_CODI.AsInteger;
            qrNFItens.Open;

            qrNFItens.Edit;
            qrNFItensINF_QTDERETORNADA.AsFloat := qrNFItensINF_QTDERETORNADA.AsFloat + qrResumoQTDE.AsFloat;
            qrNFItensINF_QTDERETORNADASALDO.AsFloat := qrNFItensINF_QTDE.AsFloat - (qrNFItensINF_QTDERETORNADA.AsFloat + qrResumoQTDE.AsFloat);
            qrNFItens.Post;

            qrResumo.Next;
        end;

        qrNFItens.Close;



    ShowMessage('nota fiscal gerada com sucesso!');

    Self.Close;

end;

end.

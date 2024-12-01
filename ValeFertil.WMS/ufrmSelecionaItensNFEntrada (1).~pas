unit ufrmSelecionaItensNFEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdblook, ExtCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid,
  DBTables, Wwquery, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmSelecionaItensNFEntrada = class(TForm)
    pnl1: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    NFvvvvvv: TwwDBLookupCombo;
    medt1: TMaskEdit;
    medt2: TMaskEdit;
    btn1: TButton;
    edtNF: TEdit;
    wwDBGrid1: TwwDBGrid;
    qry1: TADOQuery;
    qry1NFI_NUMERO: TStringField;
    qry1INF_CODI: TAutoIncField;
    qry1INF_ITEM: TIntegerField;
    qry1NFI_CODI: TIntegerField;
    qry1PRO_ID: TIntegerField;
    qry1PRO_COD: TStringField;
    qry1PRO_DESC: TStringField;
    qry1INF_QTDE: TFloatField;
    qry1INF_PUNI: TFloatField;
    qry1INF_AIPI: TFloatField;
    qry1INF_VIPI: TFloatField;
    qry1INF_TOTA: TFloatField;
    qry1INF_PESOLIQ: TFloatField;
    qry1INF_PESO: TFloatField;
    qry1INF_VOL: TFloatField;
    qry1INF_AICM: TFloatField;
    qry1INF_BICM: TFloatField;
    qry1INF_VICM: TFloatField;
    qry1UVEN_ID: TIntegerField;
    qry1INF_QTDERETORNADA: TFloatField;
    qry1INF_NFE: TIntegerField;
    qry1INF_QTDERETORNADASALDO: TFloatField;
    qry1ESTQ_LOTE1: TStringField;
    qry1ESTQ_LOTE1_QTDE: TFloatField;
    qry1ESTQ_LOTE2: TStringField;
    qry1ESTQ_LOTE2_QTDE: TFloatField;
    qry1INF_CST: TStringField;
    qry1UNIDADE: TStringField;
    qry1NCM: TStringField;
    qry1QTDE_SELECIONADA: TFloatField;
    ds1: TDataSource;
    pnl2: TPanel;
    qry2: TADOQuery;
    btn2: TButton;
    Q_CLIENTENBF: TwwQuery;
    Q_CLIENTENBFCLIN_ID: TAutoIncField;
    Q_CLIENTENBFCLIN_RAZA: TStringField;
    lbl1: TLabel;
    CLIENTE: TwwDBLookupCombo;
    cboTipoNF: TwwDBComboBox;
    lbl2: TLabel;
    Label1: TLabel;
    txtProduto: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaItensNFEntrada: TfrmSelecionaItensNFEntrada;

implementation

uses UMenu, UNFGenerica;

{$R *.DFM}

procedure TfrmSelecionaItensNFEntrada.btn1Click(Sender: TObject);
begin
        with qry1 DO begin
            Close;
            sql.Clear;
            sql.Add(
               ' SELECT 	A.NFI_NUMERO, B.* '+
               ' FROM	NF A INNER JOIN NF_ITENS B ON A.NFI_CODI = B.NFI_CODI ' +
               ' WHERE  TDOC_ID = ' + cboTipoNF.Value +
               ' AND INF_QTDE > INF_QTDERETORNADA '+
               ' AND A.NFI_NUMERO LIKE ' + QuotedStr('%' + edtNF.Text + '%') +
               ' and NFI_EMIT_CLI = ' + CLIENTE.LookupValue +
               ' AND CONVERT(CHAR(10), NFI_DEMI, 112) >= ' + FormatDateTime('YYYYMMDD', StrToDate(medt1.Text)) +
               ' AND CONVERT(CHAR(10), NFI_DEMI, 112) <= ' + FormatDateTime('YYYYMMDD', StrToDate(medt2.Text)) +
               ' AND B.PRO_COD LIKE ' + QuotedStr('%' + txtProduto.Text + '%') +
               ' ORDER BY A.NFI_NUMERO '
            );
            Open;
        end;
end;

procedure TfrmSelecionaItensNFEntrada.FormShow(Sender: TObject);
begin

  with qry2 DO begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE NF_ITENS SET QTDE_SELECIONADA = 0 ');
      ExecSQL;
  end;
  Q_CLIENTENBF.Open;
  medt1.Text := DateToStr(Date);
  medt2.Text := DateToStr(Date);
end;

procedure TfrmSelecionaItensNFEntrada.btn2Click(Sender: TObject);
var item : Integer;
begin
   item := 0;


  qry1.First;
   while not qry1.Eof do begin

       if qry1QTDE_SELECIONADA.AsFloat > 0 then begin
           if (qry1INF_QTDE.AsFloat - qry1INF_QTDERETORNADA.AsFloat) < qry1QTDE_SELECIONADA.AsFloat then begin
                ShowMessage('Qtde selecionada é maior que saldo disponível');
                Abort;
            end;
       end;
        qry1.Next;
   end;


   qry1.First;
   while not qry1.Eof do begin

       if qry1QTDE_SELECIONADA.AsFloat > 0 then begin
           Inc(item);
           with FNFGenerica do begin
               Q_INF.Append;
               Q_INFINF_ITEM.AsInteger := item;
               Q_INFNFI_CODI.AsInteger := Q_NFNFI_CODI.AsInteger;
               Q_INFPRO_ID.AsInteger := qry1PRO_ID.AsInteger;
               Q_INFPRO_cod.Value := qry1PRO_COD.AsString;
               Q_INFPRO_DESC.AsString := qry1PRO_DESC.AsString + '  NFE '+ qry1NFI_NUMERO.AsString;
               Q_INFINF_QTDE.AsFloat := qry1QTDE_SELECIONADA.AsFloat;
               Q_INFINF_PUNI.AsFloat := qry1INF_PUNI.AsFloat;
               Q_INFINF_AIPI.Value := qry1INF_AIPI.Value;
               Q_INFINF_VIPI.Value := qry1INF_VIPI.Value;
               Q_INFINF_TOTA.Value := qry1INF_TOTA.Value;
               Q_INFINF_PESOLIQ.Value := qry1INF_PESOLIQ.Value;
               Q_INFINF_PESO.Value := qry1INF_PESO.Value;
               Q_INFINF_VOL.Value := qry1INF_VOL.Value;
               Q_INFINF_AICM.Value := qry1INF_AICM.Value;
               Q_INFINF_BICM.Value := qry1INF_BICM.Value;
               Q_INFINF_VICM.Value := qry1INF_VICM.Value;
               Q_INFUVEN_ID.Value := qry1UVEN_ID.Value;
               Q_INFINF_NFE.Value := qry1nfi_codi.asinteger;
               Q_INFINF_CST.Value := qry1INF_CST.Value;
               Q_INFUNIDADE.Value := qry1UNIDADE.Value;
               if qry1NCM.AsString <> '' then
                  Q_INFNCM.Value := qry1NCM.Value
               else
                  Q_INFNCM.Value := '99999999';
               Q_INF.Post;


               qry1.Edit;
               qry1INF_QTDERETORNADA.AsFloat :=  qry1INF_QTDERETORNADA.AsFloat + qry1QTDE_SELECIONADA.AsFloat;
               qry1INF_QTDERETORNADASALDO.AsFloat := qry1INF_QTDE.AsFloat - qry1INF_QTDERETORNADA.AsFloat;
               qry1.Post;


           end;
       end;


       qry1.next;
   end;





end;

end.

unit frmSelecionaProdutoNFArmazem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Provider, DBClient, ADODB, ExtCtrls, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TfrSelecionaProdutoNFArmazem = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    qrBusca: TADOQuery;
    qrBuscaNFI_CODI: TAutoIncField;
    qrBuscaNFI_NUMERO: TStringField;
    qrBuscaNFI_EMIT_CLI: TIntegerField;
    qrBuscaINF_CODI: TAutoIncField;
    qrBuscaPRO_DESC: TStringField;
    qrBuscaPRO_COD: TStringField;
    qrBuscaQTDE_ENTRADA: TFloatField;
    qrBuscaQTDE_ESTQ: TFloatField;
    cdsBusca: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    cdsBuscaNFI_CODI: TAutoIncField;
    cdsBuscaNFI_NUMERO: TStringField;
    cdsBuscaNFI_EMIT_CLI: TIntegerField;
    cdsBuscaINF_CODI: TAutoIncField;
    cdsBuscaPRO_DESC: TStringField;
    cdsBuscaPRO_COD: TStringField;
    cdsBuscaQTDE_ENTRADA: TFloatField;
    cdsBuscaQTDE_ESTQ: TFloatField;
    cdsBuscaQtdeSelecionada: TFloatField;
    Label1: TLabel;
    edtNF: TEdit;
    Button1: TButton;
    lbClinId: TLabel;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    qrNFA: TADOQuery;
    qrNFANFA_ID: TAutoIncField;
    qrNFANFA_ITEM: TIntegerField;
    qrNFAPRO_ID: TIntegerField;
    qrNFAQTDE_NFA: TFloatField;
    qrNFAQTDE_NFE: TFloatField;
    qrNFAREJEITADA: TStringField;
    qrNFASALDO: TFloatField;
    qrNFAPRECOUNIT: TFloatField;
    qrNFACH: TIntegerField;
    qrNFAQTDE_ESTOQUE: TFloatField;
    qrNFANFI_CODI_ENTRADA: TIntegerField;
    qrNFAINF_CODI_ENTRADA: TIntegerField;
    qrBuscaPRO_ID: TIntegerField;
    cdsBuscaPRO_ID: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cdsBuscaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSelecionaProdutoNFArmazem: TfrSelecionaProdutoNFArmazem;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrSelecionaProdutoNFArmazem.Button1Click(Sender: TObject);
begin
  cdsBusca.close;
    with qrBusca do begin
        Close;
        sql.Clear;
        SQL.Add('SELECT 	A.NFI_CODI, NFI_NUMERO,NFI_EMIT_CLI , INF_CODI, B.PRO_ID,  PRO_DESC,           PRO_COD,  ');
        SQL.Add('ISNULL(B.INF_QTDE, 0.00) - ISNULL(B.INF_QTDERETORNADA, 0.00) AS QTDE_ENTRADA, E.QTDE_ESTQ ');
        SQL.Add('FROM	NF A ');
        SQL.Add('INNER JOIN NF_ITENS B ON A.NFI_CODI = B.NFI_CODI  ');
        SQL.Add('LEFT JOIN ( ');
        SQL.Add('			Select B.CLIN_ID, A.PRO_ID, SUM(ESTq_QTDE) as QTDE_ESTQ  ');
        SQL.Add('			FROM ESTOQUE A  ');
        SQL.Add('			INNER JOIN PRODUTO B ON A.PRO_ID = B.PRO_ID ');
        SQL.Add('			where  A.ESTQ_DT_ENTRADA IS NOT NULL  ');
        SQL.Add('			and A.ESTQ_DT_ENTRADA <> '''' ');
        SQL.Add('			and A.ESTQ_QTDE_RETIRA = 0 ');
        SQL.Add('			and (A.MANI_ID is NULL or A.MANI_ID = '''') ');
        SQL.Add('			GROUP BY B.CLIN_ID, A.PRO_ID ');
        SQL.Add(')  AS E ON A.NFI_EMIT_CLI = E.CLIN_ID AND B.PRO_ID = E.PRO_ID ');
        SQL.Add('WHERE  NFI_EMIT_CLI = ' + lbClinId.Caption);
        SQL.Add('AND	TDOC_ID = 2 ');

        if edtNF.Text <> '' then
                SQL.Add(' AND NFI_NUMERO = ' + QuotedStr(edtNF.Text));

        SQL.Add('AND ISNULL(B.INF_QTDE, 0.00) > ISNULL(B.INF_QTDERETORNADA, 0.00) ');
        SQL.Add('AND ISNULL(E.QTDE_ESTQ, 0) > 0 ');
        SQL.Add(' AND INF_CODI NOT IN (SELECT INF_CODI_ENTRADA FROM NFA_PRODUTO WHERE CH = ' + FMenu.SqlUsuariosCH.AsString + ')');
        if RadioButton1.Checked then
                SQL.Add('ORDER BY NFI_NUMERO, PRO_COD ')
        else
                SQL.Add('ORDER BY PRO_COD ');

    end;
    cdsBusca.Open;
end;

procedure TfrSelecionaProdutoNFArmazem.Button2Click(Sender: TObject);
VAR I : INTEGER;
begin
    qrNFA.Close;
    qrNFA.Open;
    if qrNFANFA_ITEM.AsString = '' then
        I := 1
    else
        I :=  qrNFANFA_ITEM.Value + 1;
    cdsBusca.First;
    while not cdsBusca.Eof do begin
      IF cdsBuscaQtdeSelecionada.AsFloat > 0 then begin
        qrNFA.Append;
        qrNFANFA_ITEM.AsInteger := I;
        qrNFAPRO_ID.Value := cdsBuscaPRO_ID.AsInteger;
        qrNFAQTDE_NFA.AsFloat := cdsBuscaQtdeSelecionada.AsFloat;
      //  qrNFAQTDE_NFE.AsFloat := cdsBuscaQTDE_ENTRADA.AsFloat;
      //  qrNFAQTDE_ESTOQUE.AsFloat := cdsBuscaQTDE_ESTQ.AsFloat;
        qrNFANFI_CODI_ENTRADA.Value := cdsBuscaNFI_CODI.AsInteger;
        qrNFAINF_CODI_ENTRADA.Value := cdsBuscaINF_CODI.AsInteger;
        qrNFAREJEITADA.AsString := '';
        qrNFACH.AsInteger := FMenu.SqlUsuariosCH.AsInteger;
        qrNFA.Post;
        I := I + 1;
      end;


        cdsBusca.Next;
    end;

    Self.Close;
end;

procedure TfrSelecionaProdutoNFArmazem.cdsBuscaBeforePost(
  DataSet: TDataSet);
begin
  if (cdsBuscaQtdeSelecionada.Value > cdsBuscaQTDE_ESTQ.Value) or (cdsBuscaQtdeSelecionada.Value > cdsBuscaQTDE_ENTRADA.Value) then begin
      ShowMessage('Qtde maior a valor na entrada ou estoque');
      Abort;
  end;
end;

end.

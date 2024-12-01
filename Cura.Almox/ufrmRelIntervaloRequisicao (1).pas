unit ufrmRelIntervaloRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, ExtCtrls, DBTables, Wwquery, Db, ADODB,
  Qrctrls, QuickRpt;

type
  TfrmRelIntervaloRequisicao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtSol: TEdit;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label5: TLabel;
    cboCentro: TwwDBLookupCombo;
    Label6: TLabel;
    cboMaterial: TwwDBLookupCombo;
    Visualizar: TButton;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrCentroCusto: TwwQuery;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    qrMaterial: TwwQuery;
    qrMaterialMat_desc: TStringField;
    qrMaterialMat_id: TAutoIncField;
    qrBusca: TADOQuery;
    QuickRep1: TQuickRep;
    qrBuscaSOL_ID: TAutoIncField;
    qrBuscaLOCAL: TStringField;
    qrBuscaCC_Desc: TStringField;
    qrBuscaDATA: TDateTimeField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaQTDE_SOL: TFloatField;
    qrBuscaQTDE_ATENDIDA: TFloatField;
    qrBuscaDtUltReq: TDateTimeField;
    qrBuscaReq_ID: TAutoIncField;
    qrBuscaINTERVALO: TIntegerField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qrBuscauni_sigla: TStringField;
    QRLabel14: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure VisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelIntervaloRequisicao: TfrmRelIntervaloRequisicao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelIntervaloRequisicao.FormCreate(Sender: TObject);
begin
  qrCentroCusto.Open;
  qrLocal.Open;
  qrMaterial.Open;
  Self.Height := 320;
  Self.Width := 562;
end;

procedure TfrmRelIntervaloRequisicao.VisualizarClick(Sender: TObject);
begin

  with qrBusca do begin
      close;
      sql.Clear;
      sql.Add(
        '  SELECT    '+
        '     A.SOL_ID, '+
        '     L.Descricao LOCAL,  '+
        '     CC.CC_Desc, '+
        '     A.DATA, '+
        '     M.MAT_DESC,  '+
        '     B.QTDE_SOL, '+
        '     b.uni_sigla, '+
        '     B.QTDE_ATENDIDA, '+
        '     R.Data AS DtUltReq, '+
        '     r.Req_ID, '+
        '     DATEDIFF(day, A.DATA, R.Data) INTERVALO  '+
        '  FROM SolMaterial A INNER JOIN ITEM_SOLMATERIAL B  '+
        '  ON A.SOL_ID = B.SOL_ID INNER JOIN MATERIAIS M  '+
        '  ON B.MAT_ID = M.MAT_ID INNER JOIN Req_Capa R  '+
        '  ON B.REQ_ID = R.Req_ID INNER JOIN Req_Item RI  '+
        '  ON B.REQ_ID = RI.Req_ID AND B.MAT_ID = RI.Mat_ID inner join Local L '+
        '  ON A.LOCAL_ID = L.Local_ID INNER JOIN CENTRO_CUSTO CC  '+
        '  ON A.CC_ID = CC.CC_ID '+
        ' where 1 = 1 '
      );

      if edtSol.Text <> '' then
        sql.Add(' and A.SOL_ID = ' + edtSol.Text);

      if MaskEdit1.Text <> '  /  /    ' then
        sql.Add(' and convert(varchar, A.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', strtodate(MaskEdit1.Text))));

      if MaskEdit2.Text <> '  /  /    ' then
        sql.Add(' and convert(varchar, A.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', strtodate(MaskEdit2.Text))));

      if cboLocal.Text <> '' then
        SQL.Add(' and A.LOCAL_ID = ' + cboLocal.LookupValue);

      IF cboCentro.Text <> '' then
        SQL.Add(' AND A.CC_ID = ' + cboCentro.LookupValue);

      IF cboMaterial.Text <> '' then
        SQL.ADD(' AND B.MAT_ID = ' + cboMaterial.LookupValue);

      SQL.ADD(' ORDER BY A.DATA  ');


      Open;
  end;

  QuickRep1.Preview;
end;

procedure TfrmRelIntervaloRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmRelIntervaloRequisicao := nil;
end;

end.

unit UfrmCurvaABC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, wwdblook, Db, ADODB, ComCtrls, QuickRpt,
  Qrctrls;

type
  TfrmCurvaABC = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    cboLocal: TwwDBLookupCombo;
    cboCentro: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    qrLocal: TADOQuery;
    qrCentroCusto: TADOQuery;
    qrGrupoMateriais: TADOQuery;
    Label3: TLabel;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    qrGrupoMateriaisGRU_ID: TAutoIncField;
    qrGrupoMateriaisGRU_DESC: TStringField;
    qrBusca: TADOQuery;
    Label4: TLabel;
    Label5: TLabel;
    qrBuscaMat_ID: TIntegerField;
    qrBuscaQtde: TFloatField;
    qrBuscaREPOSICAO: TFloatField;
    ProgressBar1: TProgressBar;
    qrABC: TADOQuery;
    qrAux: TADOQuery;
    qrABCMAT_ID: TIntegerField;
    qrABCVALOR: TFloatField;
    qrABCPERCENTUAL: TFloatField;
    QuickRep1: TQuickRep;
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
    lbvalor: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    qrRel: TADOQuery;
    qrRelMAT_ID: TIntegerField;
    qrRelVALOR: TFloatField;
    qrRelPERCENTUAL: TFloatField;
    qrRelMAT_DESC: TStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    lbSomatoria: TQRLabel;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    qrABCQTDE: TFloatField;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    qrRelQTDE: TFloatField;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    qrBuscaQtdeSolicitada: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCurvaABC: TfrmCurvaABC;
  total, total_soma, SomaQtde, SomaValor : Real;
  conta :Integer;
implementation

uses UMenu;

{$R *.DFM}

procedure TfrmCurvaABC.FormCreate(Sender: TObject);
begin
  qrLocal.Open;
  qrCentroCusto.Open;
  qrGrupoMateriais.Open;
end;

procedure TfrmCurvaABC.Button1Click(Sender: TObject);
var total, percentual, percentual_soma : Real;
    filtro : WideString;
begin
 total := 0;
 total_soma := 0;
 conta := 1;

 SomaQtde := 0;
 SomaValor := 0;


  with qrBusca do begin
      Close;
      sql.Clear;
      sql.Add(
          'select   '+
          '    ABC.Mat_ID, '+
          '	SUM((ABC.QTDE - ABC.DEV) * ABC.CUSTO) AS QTDE, '+
          '	SUM((ABC.QTDE - ABC.DEV) * ABC.REPOSICAO) AS REPOSICAO, '+
          '	SUM(ABC.QTDE - ABC.DEV) AS QTDESOLICITADA  '+
          'FROM '+
          '( '+
          ' 	SELECT  '+
          '	B.Mat_ID,  '+
          '	B.Qtde, '+
          '	(  '+
          '		SELECT CASE WHEN SUM(DEVOLUCAO) IS NULL THEN 0 ELSE SUM(DEVOLUCAO) END  '+
          '		FROM Req_Capa AC INNER JOIN Req_Item AB ON AC.Req_ID = AB.Req_ID  '+
          '		INNER JOIN Req_Lote AL ON AB.Req_Item_ID = AL.Req_Item_ID  '+
          '		AND AL.Mat_ID = B.Mat_ID  '+
          '		and al.Req_Item_ID = b.Req_Item_ID  '+
          '	) AS DEV, '+
          '	isnull(b.CUSTO, 0) as CUSTO, '+
          '	ISNULL(b.REPOSICAO, 0) AS REPOSICAO  '+
          '	FROM Req_Capa A INNER JOIN Req_Item B  '+
          '	ON A.Req_ID = B.Req_ID INNER JOIN MATERIAIS C  '+
          '	ON B.Mat_ID = C.MAT_ID  '+
          '	where convert(char(10), A.Data, 112) >= ' + FormatDateTime('yyyyMMdd', strtodate(  MaskEdit1.text)) +
          '	and convert(char(10), A.Data, 112) <= ' + FormatDateTime( 'yyyyMMdd',strtodate(  MaskEdit2.text))
          );
          if cboLocal.Text <> '' then
                sql.Add('AND A.LOCAL_ID = ' + cboLocal.LookupValue);

          if cboCentro.Text <> '' then
               sql.Add('and a.CC_ID = ' + cboCentro.LookupValue);

          if cboGrupo.Text <> '' then
               sql.Add('and C.GRU_ID  = ' + cboGrupo.LookupValue);

          sql.Add(') as ABC ');
          sql.Add('GROUP BY ABC.Mat_ID  ');




   {      ' SELECT '+
         '         B.Mat_ID, '+
         '         sum(B.Qtde * B.CUSTO) as Qtde, '+
         '         sum(B.Qtde * B.REPOSICAO) as REPOSICAO,  '+
         '         sum(b.qtde) as QtdeSolicitada '+
         ' FROM Req_Capa A INNER JOIN Req_Item B   '+
         ' ON A.Req_ID = B.Req_ID INNER JOIN MATERIAIS C   '+
         ' ON B.Mat_ID = C.MAT_ID   '+
         ' where convert(char(10), A.Data, 112) >= ' + FormatDateTime('yyyyMMdd', strtodate(  MaskEdit1.text)) +
         ' and convert(char(10), A.Data, 112) <= ' + FormatDateTime( 'yyyyMMdd',strtodate(  MaskEdit2.text))
      );

      if cboLocal.Text <> '' then
        sql.Add('AND A.LOCAL_ID = ' + cboLocal.LookupValue);

      if cboCentro.Text <> '' then
        sql.Add('and a.CC_ID = ' + cboCentro.LookupValue);

      if cboGrupo.Text <> '' then
        sql.Add('and C.GRU_ID  = ' + cboGrupo.LookupValue);

        SQL.Add('group by B.MAT_ID ');    }

      Open;
  end;

  qrBusca.First;
  total := 0;
  while not qrBusca.Eof do begin
      if RadioGroup1.ItemIndex = 0 then
        total := total + qrBuscaQtde.AsFloat
      else
        total := total + qrBuscaREPOSICAO.AsFloat;
      qrBusca.next;
  end;


  with qrAux do begin
     CLOSE;
     SQL.Clear;
     sql.Add('delete from CURVA_ABC ');
     ExecSQL;
  end;

  qrABC.close;
  qrABC.Open;
  percentual := 0;
  percentual_soma := 0;
  ProgressBar1.Max := qrBusca.RecordCount;
  qrBusca.First;
  while not qrBusca.Eof do begin
      ProgressBar1.Position := ProgressBar1.Position + 1;

      qrABC.Append;
      qrABCMAT_ID.Value := qrBuscaMat_ID.Value;
      if RadioGroup1.ItemIndex = 0 then begin
         percentual := qrBuscaQtde.AsFloat * 100 / total;
         percentual_soma := percentual_soma + percentual;
         qrABCVALOR.Value := qrBuscaQtde.AsFloat;
         qrABCPERCENTUAL.Value := percentual;
         qrABCQTDE.AsFloat := qrBuscaQtdeSolicitada.AsFloat;
         lbvalor.Caption := 'Qtde.';
         filtro := 'Tipo: Por Valor de Custo Médio';
      end else begin
         percentual := qrBuscaREPOSICAO.AsFloat * 100 / total;
         percentual_soma := percentual_soma + percentual;
         qrABCVALOR.Value := qrBuscaREPOSICAO.AsFloat;
         qrABCPERCENTUAL.Value := percentual;
         qrABCQTDE.AsFloat := qrBuscaQtdeSolicitada.AsFloat;
         lbvalor.Caption := 'Valor';
         filtro := 'Tipo: Por Valor de Reposição';
      end;




      qrABC.Post;
      Application.ProcessMessages;
      qrBusca.next;
  end;
  ProgressBar1.Position := 0;

  qrABC.Close;
  qrRel.close;
  qrRel.Open;


      if MaskEdit1.Text <> '  /  /    ' then
        filtro := filtro + ' Data de ínicio da pesquisa: ' + MaskEdit1.Text;

      if MaskEdit2.Text <> '  /  /    ' then 
        filtro := filtro + ' Data final da pesquisa: ' + MaskEdit2.Text;

      if cboLocal.Text <> '' then
        filtro := filtro + ' Local: ' + cboLocal.Text;

      if cboCentro.Text <> '' then
        filtro := filtro + ' Centro de Custo: ' + cboCentro.Text;

      if cboGrupo.Text <> '' then
        filtro := filtro + ' Grupo de Materiais: ' + cboGrupo.Text;

  Filtros.Lines.Text := filtro;
  QuickRep1.Preview;

end;
                                 
procedure TfrmCurvaABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmCurvaABC := nil;
end;

procedure TfrmCurvaABC.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   total_soma := total_soma + qrRelPERCENTUAL.AsFloat;
   lbSomatoria.Caption := FormatFloat('##0.00', total_soma);
   Inc(conta);
   if total_soma >= 100 then total_soma := 0;
   SomaQtde := SomaQtde +  qrRelQTDE.AsFloat;
    SomaValor := SomaValor + qrRelVALOR.AsFloat;
end;

procedure TfrmCurvaABC.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabel7.Caption := FormatFloat('###,###,##0.00', SomaQtde);
    QRLabel10.Caption := FormatFloat('###,###,##0.00', SomaValor);
    SomaQtde := 0;
    SomaValor := 0;
end;

end.

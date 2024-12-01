unit UfrmRelReceCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, DBTables, Wwquery, Qrctrls, QuickRpt, ComObj,
  ExtCtrls;

type
  TfrmRelReceCentroCusto = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    qrCentroCusto: TwwQuery;
    StringField9: TStringField;
    AutoIncField1: TAutoIncField;
    cboCusto: TwwDBLookupCombo;
    qrBusca: TwwQuery;
    RelReceb: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel30: TQRLabel;
    QRBand2: TQRBand;
    qrBuscaCC_Desc: TStringField;
    qrBuscaVALOR: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    lbTipo: TLabel;
    qrBuscaContaGerencial: TStringField;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    dsExcel: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Buscar;
    procedure Button1Click(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelReceCentroCusto: TfrmRelReceCentroCusto;
  TOTAL: Real;
implementation

{$R *.DFM}

procedure TfrmRelReceCentroCusto.Buscar;
VAR D1, D2 : string;
begin
  D1 := FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text));
  D2 := FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text));
  TOTAL := 0;
  if lbTipo.Caption = 'R' then begin
     with qrBusca do begin
           close;
           sql.Clear;
           sql.Add('SELECT CC.CC_Desc,CG.CON_CODI + '' - '' + CG.CON_DESC ContaGerencial, SUM((RC.Percentual * R.REC_VALO) /100.00) AS VALOR');
           sql.Add('FROM CPARECE R');
           sql.Add('INNER JOIN CPARECE_CentroCusto RC ON R.REC_CODI = RC.REC_CODI');
           sql.Add('INNER JOIN CENTRO_CUSTO CC ON RC.IdCentroCusto = CC.CC_ID');
           SQL.Add('INNER JOIN CPACONT CG ON R.REC_CGER = CG.CON_CODI ');
           sql.Add('where 1 = 1');
           sql.Add(' AND CONVERT(VARCHAR, R.REC_VENC, 112) >= ' + QuotedStr(D1));
           sql.Add(' AND CONVERT(VARCHAR, R.REC_VENC, 112) <= ' + QuotedStr(D2));

           if cboCusto.Text <> '' then
            SQL.Add(' and RC.IdCentroCusto = ' + cboCusto.LookupValue);
           SQL.Add('GROUP BY CC.CC_Desc,CG.CON_CODI, CG.CON_DESC ORDER BY ContaGerencial, CC_Desc');
           Open;
       end;
  end;

    if lbTipo.Caption = 'P' then begin
     with qrBusca do begin
           close;
           sql.Clear;
           sql.Add('SELECT CC.CC_Desc, CG.CON_CODI + '' - '' + CG.CON_DESC ContaGerencial, SUM((RC.Percentual * R.ValorTitulo) /100.00) AS VALOR');
           sql.Add('FROM CPAPAGA R');
           sql.Add('INNER JOIN CPAPAGA_CentroCusto RC ON R.NUMERO = RC.NUMERO');
           sql.Add('INNER JOIN CENTRO_CUSTO CC ON RC.IdCentroCusto = CC.CC_ID');
            SQL.Add('INNER JOIN CPACONT CG ON R.ContaGerencial = CG.CON_CODI ');
           sql.Add('where 1 = 1');
           sql.Add(' AND CONVERT(VARCHAR, R.Vencimento, 112) >= ' + QuotedStr(D1));
           sql.Add(' AND CONVERT(VARCHAR, R.Vencimento, 112) <= ' + QuotedStr(D2));

           if cboCusto.Text <> '' then
            SQL.Add(' and RC.IdCentroCusto = ' + cboCusto.LookupValue);
           SQL.Add('GROUP BY CC.CC_Desc,CG.CON_CODI, CG.CON_DESC ORDER BY ContaGerencial, CC_Desc');
           Open;
       end;
  end;

end;

procedure TfrmRelReceCentroCusto.FormCreate(Sender: TObject);
begin
  qrCentroCusto.Open;
end;

procedure TfrmRelReceCentroCusto.Button1Click(Sender: TObject);
var filtros : string;
begin
  filtros := 'Vencimentos de: ' + MaskEdit1.Text;
  filtros := filtros + ' até ' + MaskEdit2.Text;

  if cboCusto.Text <> '' then
        filtros := filtros + ' Centro de custo ' + cboCusto.Text;

  QRMemo1.Lines.Text := filtros;
  Buscar;
  RelReceb.Preview;
end;

procedure TfrmRelReceCentroCusto.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTAL := TOTAL + qrBuscaVALOR.AsFloat;
end;

procedure TfrmRelReceCentroCusto.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel7.Caption := 'Total Conta Gerentecial R$ ' + FormatFloat('###,###,##0.00', TOTAL);
   TOTAL := 0;
end;

procedure TfrmRelReceCentroCusto.Button2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
  Buscar;  
  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;



  //escrevemos os cabeçalhos
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

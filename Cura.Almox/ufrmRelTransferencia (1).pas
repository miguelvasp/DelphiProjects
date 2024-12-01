unit ufrmRelTransferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdblook, Db, ADODB, ExtCtrls, QuickRpt, Qrctrls,
  DBTables, Wwquery, ComObj;

type
  TfrmRelTransferencia = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    cboLocal: TwwDBLookupCombo;
    Label4: TLabel;
    Button1: TButton;
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
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    qrBusca: TADOQuery;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaMARCA_DESC: TStringField;
    qrBuscaTRANSFERENCIA: TFloatField;
    qrBuscaCONSUMO: TFloatField;
    qrBuscaESTOQUE: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ADOStoredProc1: TADOStoredProc;
    qrCentroCusto: TwwQuery;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    lbl2: TLabel;
    cboCentroCusto: TwwDBLookupCombo;
    dsExcel: TDataSource;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure GerarExcel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTransferencia: TfrmRelTransferencia;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelTransferencia.FormCreate(Sender: TObject);
begin
  qrLocal.Open;
  qrCentroCusto.Open;
end;

procedure TfrmRelTransferencia.Button1Click(Sender: TObject);
var d1 : TDateTime;
begin

    if cboLocal.Text = '' then begin
        ShowMessage('Informe o local de destino!');
        Abort;
    end;

    try
        d1 := StrToDateTime(MaskEdit1.Text);
        d1 := StrToDateTime(MaskEdit2.Text);
    except
        ShowMessage('informe um período de datas válido!');
        Abort;
    end;

    ADOStoredProc1.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
    ADOStoredProc1.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
    ADOStoredProc1.Parameters[2].Value := StrToInt(cboLocal.LookupValue);
    ADOStoredProc1.Parameters[3].Value := FMenu.sqlUsuariosCH.AsInteger;
    if cboCentroCusto.Text <> '' then
        ADOStoredProc1.Parameters[4].Value := StrToInt(cboCentroCusto.LookupValue)
    else
        ADOStoredProc1.Parameters[4].Value := 0;
    ADOStoredProc1.ExecProc;

    with qrBusca do begin
        close;
        sql.Clear;
        sql.Add(
           ' SELECT '+
           '         B.MAT_DESC, '+
           '         C.MARCA_DESC, '+
           '         SUM(QTDE_TRANS) TRANSFERENCIA, '+
           '         SUM(QTDE_CONS) CONSUMO,  '+
           '         SUM(ESTOQUE_ATUAL) ESTOQUE  '+
           ' FROM RelTransferencia A INNER JOIN MATERIAIS B   '+
           ' ON A.MAT_ID = B.MAT_ID INNER JOIN MARCAS C  '+
           ' ON A.MARCA_ID = C.MARCA_ID  '+
           ' where CH =  '+ FMenu.sqlUsuariosCH.AsString +
           ' GROUP BY B.MAT_DESC,  '+
           ' C.MARCA_DESC '  +
           ' order by B.MAT_DESC '
        );
        Open;
    end;
    QuickRep1.PrevieW;



end;

procedure TfrmRelTransferencia.Button2Click(Sender: TObject);
var d1 : TDateTime;
begin

    if cboLocal.Text = '' then begin
        ShowMessage('Informe o local de destino!');
        Abort;
    end;

    try
        d1 := StrToDateTime(MaskEdit1.Text);
        d1 := StrToDateTime(MaskEdit2.Text);
    except
        ShowMessage('informe um período de datas válido!');
        Abort;
    end;

    ADOStoredProc1.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
    ADOStoredProc1.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text));
    ADOStoredProc1.Parameters[2].Value := StrToInt(cboLocal.LookupValue);
    ADOStoredProc1.Parameters[3].Value := FMenu.sqlUsuariosCH.AsInteger;
    if cboCentroCusto.Text <> '' then
        ADOStoredProc1.Parameters[4].Value := StrToInt(cboCentroCusto.LookupValue)
    else
        ADOStoredProc1.Parameters[4].Value := 0;
    ADOStoredProc1.ExecProc;

    with qrBusca do begin
        close;
        sql.Clear;
        sql.Add(
           ' SELECT '+
           '         B.MAT_DESC, '+
           '         C.MARCA_DESC, '+
           '         SUM(QTDE_TRANS) TRANSFERENCIA, '+
           '         SUM(QTDE_CONS) CONSUMO,  '+
           '         SUM(ESTOQUE_ATUAL) ESTOQUE  '+
           ' FROM RelTransferencia A INNER JOIN MATERIAIS B   '+
           ' ON A.MAT_ID = B.MAT_ID INNER JOIN MARCAS C  '+
           ' ON A.MARCA_ID = C.MARCA_ID  '+
           ' where CH =  '+ FMenu.sqlUsuariosCH.AsString +
           ' GROUP BY B.MAT_DESC,  '+
           ' C.MARCA_DESC '  +
           ' order by B.MAT_DESC '
        );
        Open;
    end;

    GerarExcel;

end;

procedure TfrmRelTransferencia.GerarExcel;
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;

begin
      //  close;
        linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;
  Excel.cells[Linha, 8] := '';
      Excel.cells[Linha, 9] := '';
      Excel.cells[Linha, 10] := '';

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
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].Text;
           end;
      end;

      Excel.cells[Linha, 8] := '';
      Excel.cells[Linha, 9] := '';
      Excel.cells[Linha, 10] := '';

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;


end;

end.

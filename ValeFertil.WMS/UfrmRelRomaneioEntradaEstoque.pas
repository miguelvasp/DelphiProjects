unit UfrmRelRomaneioEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, wwdblook, Qrctrls, QuickRpt, ExtCtrls, ComObj,
  jpeg;

type
  TfrmRelRomaneioEntradaEstoque = class(TForm)
    qrClin: TADOQuery;
    qrClinCLIN_ID: TAutoIncField;
    qrClinCLIN_RAZA: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ROM: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel35: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape5: TQRShape;
    QRDBText9: TQRDBText;
    lbData: TQRLabel;
    lbCliente: TQRLabel;
    qrBusca: TADOQuery;
    qrBuscaOS_ID: TAutoIncField;
    qrBuscaOS_DATA: TDateTimeField;
    qrBuscaPRO_COD: TStringField;
    qrBuscaPRO_DESC: TStringField;
    qrBuscaUVEN_NOME: TStringField;
    qrBuscaAR_NOME: TStringField;
    qrBuscaPOS_COD: TStringField;
    qrBuscaROM_DATA: TDateTimeField;
    qrBuscaESTQ_TAG: TIntegerField;
    qrBuscaROM_DTBATCH: TDateTimeField;
    qrBuscaESTQ_LOTE: TStringField;
    qrBuscaROM_DTVENCTO: TDateTimeField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText11: TQRDBText;
    Button2: TButton;
    dsExcel: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRomaneioEntradaEstoque: TfrmRelRomaneioEntradaEstoque;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelRomaneioEntradaEstoque.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := DateToStr(Now);
  MaskEdit2.Text := DateToStr(Now);
  qrClin.Open;
end;

procedure TfrmRelRomaneioEntradaEstoque.Button1Click(Sender: TObject);
begin
  try
   with qrBusca do begin
       close;
       sql.Clear;
       sql.Add('SELECT DISTINCT TOP 2000    '+
               '       O.OS_ID, '+
               '       O.OS_DATA, '+
               '       P.PRO_COD, '+
               '       P.PRO_DESC,  '+
               '       U.UVEN_NOME, '+
               '       AR.AR_NOME, '+
               '       AP.POS_COD, '+
               '       A.ROM_DATA, '+
               '       B.ESTQ_TAG,  '+
               '       (SELECT TOP 1 ROM_DTBATCH FROM ESTOQUE WHERE ESTQ_TAG = B.ESTQ_TAG AND PRO_ID = P.PRO_ID AND ROM_ID_ENT = A.ROM_ID ORDER BY ROM_DATA ) AS ROM_DTBATCH, '+
               '       (SELECT TOP 1 ESTQ_LOTE FROM ESTOQUE WHERE ESTQ_TAG = B.ESTQ_TAG AND PRO_ID = P.PRO_ID AND ROM_ID_ENT = A.ROM_ID ORDER BY ROM_DATA ) AS ESTQ_LOTE, '+
               '       (SELECT TOP 1 ROM_DTVENCTO FROM ESTOQUE WHERE ESTQ_TAG = B.ESTQ_TAG AND PRO_ID = P.PRO_ID AND ROM_ID_ENT = A.ROM_ID ORDER BY ROM_DATA ) AS ROM_DTVENCTO '+
              'FROM ROMANEIO A '+
              'INNER JOIN ROMANEIO_ITENS I ON A.ROM_ID = I.ROM_ID  '+
              'INNER JOIN OS O ON A.OS_ID = O.OS_ID  '+
              'INNER JOIN ESTOQUE B ON A.ROM_ID = B.ROM_ID_ENT  '+
              'INNER JOIN PRODUTO P ON I.PRO_ID = P.PRO_ID  '+
              'INNER JOIN UNIDVENDA U ON B.UVEN_ID = U.UVEN_ID   '+
              'LEFT JOIN AREA AR ON B.AR_ID = AR.AR_ID  '+
              'LEFT JOIN AREA_POSICOES AP ON B.POS_ID = AP.POS_ID '+
              'WHERE P.CLIN_ID = ' + wwDBLookupCombo1.LookupValue +
              ' AND CONVERT(VARCHAR, A.ROM_DATA, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))) +
              ' AND CONVERT(VARCHAR, A.ROM_DATA, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))) +
              ' order by O.OS_ID ' 
              );
              Open;
   end;
   lbCliente.Caption := wwDBLookupCombo1.Text;
   lbData.Caption := MaskEdit1.Text + ' até ' + MaskEdit2.Text;
   rom.Preview;
  except
    ShowMessage('Verifique os filtros!');
  end;
end;

procedure TfrmRelRomaneioEntradaEstoque.Button2Click(Sender: TObject);


var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  with qrBusca do begin
       close;
       sql.Clear;
       sql.Add('SELECT DISTINCT TOP 2000    '+
               '       O.OS_ID, '+
               '       O.OS_DATA, '+
               '       P.PRO_COD, '+
               '       P.PRO_DESC,  '+
               '       U.UVEN_NOME, '+
               '       AR.AR_NOME, '+
               '       AP.POS_COD, '+
               '       A.ROM_DATA, '+
               '       B.ESTQ_TAG,  '+
               '       (SELECT TOP 1 ROM_DTBATCH FROM ESTOQUE WHERE ESTQ_TAG = B.ESTQ_TAG AND PRO_ID = P.PRO_ID AND ROM_ID_ENT = A.ROM_ID ORDER BY ROM_DATA ) AS ROM_DTBATCH, '+
               '       (SELECT TOP 1 ESTQ_LOTE FROM ESTOQUE WHERE ESTQ_TAG = B.ESTQ_TAG AND PRO_ID = P.PRO_ID AND ROM_ID_ENT = A.ROM_ID ORDER BY ROM_DATA ) AS ESTQ_LOTE, '+
               '       (SELECT TOP 1 ROM_DTVENCTO FROM ESTOQUE WHERE ESTQ_TAG = B.ESTQ_TAG AND PRO_ID = P.PRO_ID AND ROM_ID_ENT = A.ROM_ID ORDER BY ROM_DATA ) AS ROM_DTVENCTO '+
              'FROM ROMANEIO A '+
              'INNER JOIN ROMANEIO_ITENS I ON A.ROM_ID = I.ROM_ID  '+
              'INNER JOIN OS O ON A.OS_ID = O.OS_ID  '+
              'INNER JOIN ESTOQUE B ON A.ROM_ID = B.ROM_ID_ENT  '+
              'INNER JOIN PRODUTO P ON I.PRO_ID = P.PRO_ID  '+
              'INNER JOIN UNIDVENDA U ON B.UVEN_ID = U.UVEN_ID   '+
              'LEFT JOIN AREA AR ON B.AR_ID = AR.AR_ID  '+
              'LEFT JOIN AREA_POSICOES AP ON B.POS_ID = AP.POS_ID '+
              'WHERE P.CLIN_ID = ' + wwDBLookupCombo1.LookupValue +
              ' AND CONVERT(VARCHAR, A.ROM_DATA, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))) +
              ' AND CONVERT(VARCHAR, A.ROM_DATA, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))) +
              ' order by O.OS_ID ' 
              );
              Open;
   end;


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

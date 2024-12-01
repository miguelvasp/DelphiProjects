unit UrelEstoque;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, ADODB, DBTables,
  Wwquery;

type
  TRelEstoque = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    qrCentroCusto: TwwQuery;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    qrCentroCustoReq_ID: TIntegerField;
    qrCentroCustoData: TDateTimeField;
    qrCentroCustoMAT_DESC: TStringField;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoQtde: TFloatField;
    qrCentroCustoUni_Sigla: TStringField;
    qrCentroCustoGRU_DESC: TStringField;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    total: TQRLabel;
    un: TQRLabel;
    qrMarca: TwwQuery;
    qrCentroCustoMARCA_DESC: TStringField;
    qrCentroCustocusto_medio: TFloatField;
    QRDBText8: TQRDBText;
    lblVTotal: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape3: TQRShape;
    QRDBImage1: TQRDBImage;
    qrUltimaCompra: TwwQuery;
    qrUltimaCompraPRECO_UNIT: TFloatField;
    qrCentroCustoMAT_ID: TAutoIncField;
    qrAux: TwwQuery;
    qrCentroCustoReq_Item_ID: TAutoIncField;
    qrCentroCustoMARCA_id: TIntegerField;
    qrCentroCustodevolucao: TFloatField;
    qrCentroCustoCusto_item: TFloatField;
    qrCentroCustoReposicao_item: TFloatField;
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelEstoque: TRelEstoque;
  Qtde, Valor :Real;
  imprimiu : Boolean;
  contador : Integer;
  imprimiuTotal : Boolean;
  totalRel : Double;

implementation

uses UEstoque, UMenu;

{$R *.DFM}

procedure TRelEstoque.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
  var devolucao : Real;
begin
  { Qtde := Qtde  + qrCentroCustoQtde.Value;
   Valor := Valor + qrCentroCustocusto_medio.Value;
   total.Caption := FormatFloat('###,###,##0.00',qtde);
   un.Caption := qrCentroCustoUni_Sigla.AsString;
   lblVTotal.Caption := FormatFloat('###,###,##0.00',Valor);}


   try
   if qrAux.FieldByName('dev').AsString <> '' then
        devolucao :=  qrAux.FieldByName('dev').Value
   else
        devolucao := 0;
   except
       devolucao := 0;
   end;

   IF frmConsultaEstoque.rgValor.ItemIndex = 0 then begin

         Qtde := Qtde  + qrCentroCustoQtde.Value - devolucao;
         QRDBText6.Caption := FloatToStr(qrCentroCustoQtde.Value - devolucao);
         //Valor := Valor + (qrCentroCustocusto_medio.Value * qrCentroCustoQtde.Value);
         //Valor := Valor + (qrCentroCustocusto_medio.Value * (qrCentroCustoQtde.Value - devolucao));

         //usa o custo medio cadastrado no item da requisição
         Valor := Valor + (qrCentroCustoCusto_item.AsFloat * (qrCentroCustoQtde.Value - devolucao));
         total.Caption := FormatFloat('###,###,##0.00',qtde);
         un.Caption := qrCentroCustoUni_Sigla.AsString;
         lblVTotal.Caption := FormatFloat('###,###,##0.00',Valor);
    end
    else
    begin
         qrUltimaCompra.Close;
         qrUltimaCompra.SQL.Clear;
         qrUltimaCompra.SQL.Add('SELECT ULTIMA_COMPRA AS PRECO_UNIT FROM vwULTIMA_COMPRA ');
         qrUltimaCompra.SQL.Add('WHERE MAT_ID = ' + qrCentroCustoMAT_ID.AsString);
         qrUltimaCompra.SQL.Add('AND MARCA_ID = '+ qrCentroCustoMARCA_id.AsString);
         //qrUltimaCompra.Open ;
         Qtde := Qtde  + qrCentroCustoQtde.Value - devolucao;
         QRDBText6.Caption := FloatToStr(qrCentroCustoQtde.Value - devolucao);
         //Valor := Valor + (qrUltimaCompraPRECO_UNIT.Value * qrCentroCustoQtde.Value);
         //Valor := Valor + (qrUltimaCompraPRECO_UNIT.Value * (qrCentroCustoQtde.Value - devolucao));
         //usa o valor de custo de reposição cadastrado no item da requição
         Valor := Valor + (qrCentroCustoReposicao_item.AsFloat * (qrCentroCustoQtde.Value - devolucao));


         total.Caption := FormatFloat('###,###,##0.00',qtde);
         un.Caption := qrCentroCustoUni_Sigla.AsString;
         lblVTotal.Caption := FormatFloat('###,###,##0.00',Valor);
    end;
end;

procedure TRelEstoque.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde := 0;
  valor := 0;
  un.Caption := '';
end;

procedure TRelEstoque.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRGroup1.Height := 0;
  contador := 0;
  imprimiu := False;
end;

procedure TRelEstoque.QRDBText10Print(sender: TObject; var Value: String);
begin

  if frmConsultaEstoque.lbTpRelatorio.Caption = '1' then begin
        if imprimiu then
           Value := ''
        else
           imprimiu := True;
  end;
  contador := contador + 1;
  
end;

procedure TRelEstoque.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if contador > 1 then
        QRBand3.Height := 38
  else
        QRBand3.Height := 3;   //para mostrar a linha superior somente
end;

procedure TRelEstoque.QRDBText8Print(sender: TObject; var Value: String);
begin
    //if qrAux.FieldByName('dev').AsString <> '' then begin
      IF frmConsultaEstoque.rgValor.ItemIndex = 0 then begin
        //usamos os valores do item da requisição
        //Value := FormatFloat('###,###,##0.00', qrCentroCustocusto_medio.Value * (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value ));
        Value := FormatFloat('###,###,##0.00', qrCentroCustoCusto_item.AsFloat * (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value) );
        //totalRel := totalRel + (qrCentroCustocusto_medio.Value * (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value));
        totalRel := totalRel + (qrCentroCustoCusto_item.Value * (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value));
      end
      else
      begin
        qrUltimaCompra.Close;
         qrUltimaCompra.SQL.Clear;
         qrUltimaCompra.SQL.Add('SELECT ULTIMA_COMPRA AS PRECO_UNIT FROM vwULTIMA_COMPRA ');
         qrUltimaCompra.SQL.Add('WHERE MAT_ID = ' + qrCentroCustoMAT_ID.AsString);
         qrUltimaCompra.SQL.Add('AND MARCA_ID = '+ qrCentroCustoMARCA_id.AsString);
         //qrUltimaCompra.Open ;

         //usamos os valores do item da requisição
        //Value := FormatFloat('###,###,##0.00', (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value) * qrUltimaCompraPRECO_UNIT.Value);
        Value := FormatFloat('###,###,##0.00', (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value) * qrCentroCustoReposicao_item.AsFloat);
        totalRel := totalRel + (qrCentroCustoReposicao_item.AsFloat * (qrCentroCustoQtde.Value - qrAux.FieldByName('dev').Value));
      end;
  //  end;

end;

procedure TRelEstoque.QRLabel18Print(sender: TObject; var Value: String);
begin
  if imprimiuTotal = False then
        Value := FormatFloat('###,###,##0.00', totalRel);

  totalRel := 0;
end;

procedure TRelEstoque.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  imprimiu := False;
end;

procedure TRelEstoque.QRDBText3Print(sender: TObject; var Value: String);
begin
  if frmConsultaEstoque.lbTpRelatorio.Caption <> '1' then begin
        if imprimiu then
           Value := ''
        else
           imprimiu := True;
  end;
end;

procedure TRelEstoque.QRDBText6Print(sender: TObject; var Value: String);
begin
  //if qrAux.FieldByName('dev').AsString <> '' then
     Value := FloatToStr(qrCentroCustoQtde.Value) - qrAux.FieldByName('dev').Value     ;
end;

procedure TRelEstoque.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  TRY
   with qrAux do begin
       close;
       sql.Clear;
       sql.Add('select case when sum(devolucao) is null then 0 else sum(devolucao) end as dev from req_lote where Req_Item_ID = ' + qrCentroCustoReq_Item_ID.AsString);
       sql.Add('and mat_id = ' + qrCentroCustoMAT_ID.AsString);
       Open;
   end;
   except

   end;
end;

end.

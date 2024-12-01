unit ufrmRelLivroArmazemResumoDepositante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, gtQrCtrls, Qrctrls, Db, ADODB, DBTables, Wwquery;

type
  TfrmRelLivroArmazemResumoDepositante = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRShape2: TQRShape;
    gtQRLabel1: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    lbPagina: TgtQRLabel;
    gtQRSysData1: TgtQRSysData;
    gtQRSysData2: TgtQRSysData;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    qrLivro: TADOQuery;
    qrLivroCLIN_RAZA: TStringField;
    qrLivroPRO_COD: TStringField;
    qrLivroPRO_DESC: TStringField;
    qrLivroSALDO: TFloatField;
    qrLivroVALOR_TOTAL: TFloatField;
    QRShape1: TQRShape;
    gtQRLabel7: TgtQRLabel;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    lbTotValor: TgtQRLabel;
    lbTotSaldo: TgtQRLabel;
    QRShape4: TQRShape;
    qrLivropro_id: TAutoIncField;
    gtQRLabel8: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    gtQRLabel10: TgtQRLabel;
    wwQuery2: TwwQuery;
    wwQuery2SALDO_ANT: TFloatField;
    wwQuery3: TwwQuery;
    wwQuery3TOT_ENTRADAS: TFloatField;
    wwQuery4: TwwQuery;
    wwQuery4TOT_SAIDAS: TFloatField;
    wwQuery5: TwwQuery;
    wwQuery5TOT_VALOR: TFloatField;
    lbSaldoPorItem: TgtQRLabel;
    gtQRDBText6: TgtQRDBText;
    QRShape5: TQRShape;
    wwQuery7: TwwQuery;
    wwQuery7SALDO_ANT: TFloatField;
    wwQuery8: TwwQuery;
    wwQuery8TOT_ENTRADAS: TFloatField;
    wwQuery9: TwwQuery;
    DataSource1: TDataSource;
    wwQuery9SAL_ANT: TFloatField;
    wwQuery9ENTRADAS: TFloatField;
    wwQuery9SAIDAS: TFloatField;
    wwQuery9SALDO: TFloatField;
    wwQuery9VALOR_TOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

    PAGINA, PAGINAL_INICIAL : Integer;
    TotalSaldo, TotalValor, totalSAldoGeral, totalValorGeral : real;

  end;

var
  frmRelLivroArmazemResumoDepositante: TfrmRelLivroArmazemResumoDepositante;

implementation

uses UMenu, ULivroArmazem;

{$R *.DFM}

procedure TfrmRelLivroArmazemResumoDepositante.FormCreate(Sender: TObject);
begin
  qrLivro.Open;
  TotalSaldo := 0;
  TotalValor := 0;
  totalSAldoGeral := 0;
  totalValorGeral := 0;

  qrLivro.Close;
  //qrLivro.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
 // qrLivro.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  qrLivro.Open;

end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
   PAGINA := PAGINA + 1;
end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lbPagina.Caption := 'Página: ' + IntToStr(PAGINA);
end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand3AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  PAGINA   := PAGINAL_INICIAL;
end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
   TotalSaldo := TotalSaldo + qrLivroSALDO.AsFloat;
   TotalValor := TotalValor + qrLivroVALOR_TOTAL.AsFloat;
   totalSAldoGeral := totalSAldoGeral + qrLivroSALDO.AsFloat;
   totalValorGeral := totalValorGeral + qrLivroVALOR_TOTAL.AsFloat;
end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    lbTotSaldo.Caption := FormatFloat('###,###,##0.00', TotalSaldo);
    lbTotValor.Caption := FormatFloat('###,###,##0.00', TotalValor);
    TotalSaldo := 0;
    TotalValor := 0;
end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin

  wwQuery7.close;
 // wwQuery7.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text) - 1);
  wwQuery7.Open;
    //Value := FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat);

  wwQuery8.close;
  //wwQuery8.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
//  wwQuery8.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery8.Open;


  wwQuery9.close;
  //wwQuery9.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
  //wwQuery9.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery9.Open;

   totalValorGeral := 0;
   totalSAldoGeral := 0;

   gtQRLabel9.Caption := FormatFloat('###,###,##0.00', wwQuery9SALDO.AsFloat);
   gtQRLabel10.Caption :=  FormatFloat('###,###,##0.00', wwQuery9VALOR_TOTAL.AsFloat);
   totalSAldoGeral := 0;
   totalValorGeral := 0;


end;

procedure TfrmRelLivroArmazemResumoDepositante.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  wwQuery2.close;
  wwQuery2.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text) - 1);
  wwQuery2.Params[1].AsInteger := qrLivropro_id.AsInteger;
  wwQuery2.Open;
   // Value := FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat);

  wwQuery3.close;
  wwQuery3.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
  wwQuery3.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery3.Params[2].AsInteger := qrLivropro_id.AsInteger;
  wwQuery3.Open;


  wwQuery4.close;
  wwQuery4.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
  wwQuery4.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery4.Params[2].AsInteger := qrLivropro_id.AsInteger;
  wwQuery4.Open;

  wwQuery5.close;
  wwQuery5.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
  wwQuery5.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery5.Params[2].AsInteger := qrLivropro_id.AsInteger;
  wwQuery5.Open;


  lbSaldoPorItem.Caption :=  FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat + wwQuery3TOT_ENTRADAS.AsFloat - wwQuery4TOT_SAIDAS.AsFloat);

  TotalSaldo := TotalSaldo + wwQuery2SALDO_ANT.AsFloat + wwQuery3TOT_ENTRADAS.AsFloat - wwQuery4TOT_SAIDAS.AsFloat;
  TotalValor := TotalValor + wwQuery5TOT_VALOR.AsFloat;
  totalSAldoGeral := totalSAldoGeral + wwQuery2SALDO_ANT.AsFloat + wwQuery3TOT_ENTRADAS.AsFloat - wwQuery4TOT_SAIDAS.AsFloat;
  totalValorGeral := totalValorGeral + wwQuery5TOT_VALOR.AsFloat;
       }

end;

end.

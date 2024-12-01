unit URel_livro_Armazem_INV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, gtQrCtrls, ADODB;

type
  TfrmRel_Livro_Armazem_INV = class(TForm)
    qrLivro: TwwQuery;
    qrLivroDATA: TDateTimeField;
    qrLivroCLIENTE: TStringField;
    qrLivroPRODUTO: TIntegerField;
    qrLivroSALDO_ANT: TFloatField;
    qrLivroENTRADAS: TFloatField;
    qrLivroSAIDAS: TFloatField;
    qrLivroSALDO: TFloatField;
    qrLivroPRO_DESC: TStringField;
    qrLivroPRO_COD: TStringField;
    qrpEntradasSaidas: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    qrlbPeriodo: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qrLivroVALOR: TFloatField;
    qrLivroPARCIAL: TFloatField;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    wwQuery1: TwwQuery;
    wwQuery1TotalSaldo: TFloatField;
    wwQuery2: TwwQuery;
    wwQuery2SALDO_ANT: TFloatField;
    wwQuery3: TwwQuery;
    wwQuery3TOT_ENTRADAS: TFloatField;
    wwQuery4: TwwQuery;
    wwQuery4TOT_SAIDAS: TFloatField;
    wwQuery5: TwwQuery;
    wwQuery5TOT_VALOR: TFloatField;
    qrLivroResumo: TADOQuery;
    qrLivroResumoCLIN_RAZA: TStringField;
    qrLivroResumoPRO_COD: TStringField;
    qrLivroResumoPRO_DESC: TStringField;
    qrLivroResumoSALDO: TFloatField;
    qrLivroResumoVALOR_TOTAL: TFloatField;
    qrLivroResumopro_id: TAutoIncField;
    wwQuery22: TwwQuery;
    wwQuery22SALDO_ANT: TFloatField;
    wwQuery33: TwwQuery;
    wwQuery33TOT_ENTRADAS: TFloatField;
    wwQuery44: TwwQuery;
    wwQuery44TOT_SAIDAS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSysData3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    DATA_I, DATA_F : TDATETIME;
  end;

var
  frmRel_Livro_Armazem_INV: TfrmRel_Livro_Armazem_INV;

implementation

uses ULivroArmazem;                      

{$R *.DFM}

procedure TfrmRel_Livro_Armazem_INV.FormCreate(Sender: TObject);
var D1, D2 : TDateTime;
begin
  try
  D1 := StrToDateTime(frmLivroArmazem.MaskEdit1.Text);
  D2 := StrToDateTime(frmLivroArmazem.MaskEdit2.Text);
        qrLivro.close;
        qrLivro.SQL.Clear;
        qrLivro.SQL.Add(
             ' select  '+
             ' A.DATA   '+
             ' ,A.CLIENTE   '+
             ' ,A.PRODUTO   '+
             ' ,A.SALDO_ANT  '+
             ' ,A.ENTRADAS  '+
             ' ,A.SAIDAS  '+
             ' ,A.SALDO   '+
             ' ,A.VALOR   '+
             ' ,A.PARCIAL  '+
             ' ,B.PRO_DESC   '+
             ' ,B.PRO_COD  '+
             ' from livro_armazem A, PRODUTO B   '+
             ' where a.produto = b.pro_id '+
             ' AND CONVERT(VARCHAR, DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)) +
             ' AND CONVERT(VARCHAR, DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)) +
             ' ORDER BY ID'
        );
        qrLivro.open;
        qrlbPeriodo.Caption := 'Período de : '+FormatDateTime('DD/MM/YYYY',D1)+' Até '+FormatDateTime('DD/MM/YYYY',D2);
  except
     ShowMessage('erro 1');
  end;
end;

procedure TfrmRel_Livro_Armazem_INV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrLivro.close;
   Action := caFree;
   frmRel_Livro_Armazem_INV :=  nil;
end;

procedure TfrmRel_Livro_Armazem_INV.QRSysData3Print(sender: TObject;
  var Value: String);
  var i : Integer;
begin
 { try
      i := StrToInt(Value);
      Value := IntToStr(i + 1);
  except
      ShowMessage('erro 2');
  end;    }

end;

procedure TfrmRel_Livro_Armazem_INV.QRExpr4Print(sender: TObject;
  var Value: String);
begin
 { try
    wwQuery1.close;
    wwQuery1.Open;
    Value := FormatFloat('###,###,##0.00', wwQuery1TotalSaldo.AsFloat);
  except
      ShowMessage('erro 3');
  end; }
end;

procedure TfrmRel_Livro_Armazem_INV.QRExpr1Print(sender: TObject;
  var Value: String);
begin
 { with frmLivroArmazem do begin
    ADOStoredProc1.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate('31/12/2006'));
    ADOStoredProc1.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text));
    ADOStoredProc1.ExecProc;
  end;   }

  
end;

procedure TfrmRel_Livro_Armazem_INV.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  var entradas, saidas, saldo : Real;
begin  {
 try
  wwQuery2.close;
 // wwQuery2.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text) - 1);
  wwQuery2.Open;
   // Value := FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat);

  wwQuery3.close;
 // wwQuery3.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
 // wwQuery3.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery3.Open;


  wwQuery4.close;
 // wwQuery4.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
 // wwQuery4.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery4.Open;

  wwQuery5.close;
 // wwQuery5.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
 // wwQuery5.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  wwQuery5.Open;


  //LBSALDOFINAL.Caption :=  FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat + wwQuery3TOT_ENTRADAS.AsFloat - wwQuery4TOT_SAIDAS.AsFloat);
  LBSALDOFINAL.Caption :=  FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat + wwQuery3TOT_ENTRADAS.AsFloat - wwQuery4TOT_SAIDAS.AsFloat);


  qrLivroResumo.Close;
 // qrLivroResumo.Parameters[0].Value := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
 // qrLivroResumo.Parameters[1].Value := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
  qrLivroResumo.Open;

  entradas := 0;
  saidas := 0;
  saldo := 0;

  while not qrLivroResumo.Eof do begin
       // wwQuery22.close;
      ///  wwQuery22.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text) - 1);
      //  wwQuery22.Params[1].AsInteger := qrLivroResumopro_id.AsInteger;
      //  wwQuery22.Open;
         // Value := FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat);

      //  wwQuery33.close;
      //  wwQuery33.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
      //  wwQuery33.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
      //  wwQuery33.Params[2].AsInteger := qrLivroResumopro_id.AsInteger;
      //  wwQuery33.Open;

      //  entradas := entradas + qrLivroResumoE

       // wwQuery44.close;
      //  wwQuery44.Params[0].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit1.Text));
      ////  wwQuery44.Params[1].AsString := FormatDateTime('YYYYMMDD', StrToDate(frmLivroArmazem.MaskEdit2.Text));
        //wwQuery44.Params[2].AsInteger := qrLivroResumopro_id.AsInteger;
      //  wwQuery44.Open;

       // saidas := saidas + wwQuery44TOT_SAIDAS.AsFloat;


        qrLivroResumo.Next;
  end;

   saldo := entradas - saidas;

   glbEntradas.Caption := FormatFloat('##0.00', entradas);
   glbSaidas.Caption := FormatFloat('##0.00', saidas);
   glbSaldo.Caption := FormatFloat('##0.00', saldo);


   LBSALDOFINAL.Caption :=  FormatFloat('###,###,##0.00', wwQuery2SALDO_ANT.AsFloat + wwQuery3TOT_ENTRADAS.AsFloat - wwQuery4TOT_SAIDAS.AsFloat);
   //LBSALDOFINAL.Caption :=  FormatFloat('###,###,##0.00', saldo);
   except
       ShowMessage('erro 4');
   end;         }
end;

end.

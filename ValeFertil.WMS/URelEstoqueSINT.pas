unit URelEstoqueSINT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, gtQrCtrls, gtQRXport, gtQRXport_Doc,
  gtQRXport_RTF, gtQRXport_Graphic, gtQRXport_BMP, Db, DBTables, Wwquery,
  DBClient, Provider, jpeg;

type
  TFRelEstoqueSINT = class(TForm)
    ESTOQ: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel3: TgtQRLabel;
    QRLabel4: TgtQRLabel;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRSysData2: TgtQRSysData;
    QRSysData1: TgtQRSysData;
    QRLabel37: TgtQRLabel;
    QRLabel6: TgtQRLabel;
    
    QRShape1: TgtQRShape;
    QRLabel8: TgtQRLabel;
    QRShape3: TgtQRShape;
    QRBand2: TQRBand;
    clin_id: TgtQRDBText;
    QRDBText12: TgtQRDBText;
    QRDBText2: TgtQRDBText;
    QRLabel1: TgtQRLabel;
    QRDBText1: TgtQRDBText;
    QRLabel2: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRBand3: TQRBand;
    QRLabel18: TgtQRLabel;
    QRLabel29: TgtQRLabel;
    gtQRRTFExport1: TgtQRRTFExport;
    gtQRLabel1: TgtQRLabel;
    gtQRDBText1: TgtQRDBText;
    Q_AUX: TwwQuery;
    gtQRDBText2: TgtQRDBText;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    qrAux2: TwwQuery;
    dspAux: TDataSetProvider;
    cdsAux: TClientDataSet;
    qrPallets: TwwQuery;
    qrPalletsQTD_PALLET: TIntegerField;
    lbPallets: TQRLabel;
    gtQRLabel5: TgtQRLabel;
    qrPalletsQTDE_UVUE: TFloatField;
    lbPeso: TgtQRLabel;
    lbValor: TgtQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure gtQRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEstoqueSINT: TFRelEstoqueSINT;
  TOTALUV : real ;
  TOTAVALORREAIS : real ;
  TOTALPESO : real ;
implementation
uses USenha,Umenu, UAbTabelas, UConsEstoque, U_Funcoes ;
{$R *.DFM}

procedure TFRelEstoqueSINT.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ////TOTALUV := 0 ;

end;

procedure TFRelEstoqueSINT.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabel29.caption  := formatfloat('###,###,##0.000',TOTALUV) ;
     gtQRLabel3.caption := formatfloat('###,###,##0.00',TOTAVALORREAIS) ;
     gtQRLabel4.caption := formatfloat('###,###,##0.0000',TOTALPESO) ;
end;

procedure TFRelEstoqueSINT.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TOTALUV := (TOTALUV + FConsEstoque.cdsEstoque2XVALOR.asfloat) ;
end;

procedure TFRelEstoqueSINT.FormCreate(Sender: TObject);
begin
     TOTALUV := 0 ;
     TOTAVALORREAIS:=0;
     TOTALPESO := 0 ;
end;

procedure TFRelEstoqueSINT.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     TOTALUV        := 0 ;
     TOTAVALORREAIS := 0;
     TOTALPESO := 0 ;
end;

procedure TFRelEstoqueSINT.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var pallets : real;
begin
           { Q_AUX.SQL.clear ;
            //Q_AUX.SQL.ADD('SET ROWCOUNT 1') ;
            Q_AUX.SQL.ADD('SELECT top 1 B.INF_PUNI,A.NFI_DEMI ') ;
            Q_AUX.SQL.ADD('   FROM   NF A (NOLOCK),NF_ITENS B (NOLOCK)  ') ;
            Q_AUX.SQL.ADD('WHERE  (A.TDOC_ID = ' + inttostr(2));
            Q_AUX.SQL.ADD('or      A.TDOC_ID = ' + inttostr(4) +')');
            Q_AUX.SQL.ADD('AND    A.NFI_CODI = B.NFI_CODI ') ;
            Q_AUX.SQL.ADD('and    B.PRO_ID = ' + FConsEstoque.cdsEstoque2PRO_ID.asstring    ) ;
            Q_AUX.SQL.ADD('order by A.NFI_DEMI  desc ') ;
            //Q_AUX.SQL.ADD('SET ROWCOUNT 0') ;
           // Q_AUX.open ;
           cdsAux.close;  }


        //COMENTADO POR MIGUEL - ULTIMO PRECO DO CADASTRO DE PRODUTO
//           cdsAux.open;
            Q_AUX.close;
            Q_AUX.SQL.clear ;
            Q_AUX.SQL.ADD(' select top 1 A.inf_puni '+
                          ' from nf_itens A, NF N '+
                          ' where n.nfi_codi = A.nfi_codi '+
                          ' and (N.TDOC_ID = 2 OR N.TDOC_ID = 4) '+
                          ' AND A.PRO_ID =   '+  FConsEstoque.cdsEstoque2PRO_ID.asstring     +
                          ' order by  n.nfi_codi desc ') ;
            Q_AUX.open ;


            TOTAVALORREAIS := (TOTAVALORREAIS + (FConsEstoque.cdsEstoque2XVALOR.asfloat*(q_Aux.fieldbyname('INF_PUNI').asfloat))) ;
 // TOTAVALORREAIS := (TOTAVALORREAIS + (FConsEstoque.cdsEstoque2XVALOR.asfloat*(FConsEstoque.cdsEstoque2ULTIMO_PRECO.asfloat))) ;
            TOTALPESO := (TOTALPESO + (FConsEstoque.cdsEstoque2TOTPESO.asfloat)) ;

            lbValor.Caption := FormatFloat('##0.00', (FConsEstoque.cdsEstoque2XVALOR.asfloat*(q_Aux.fieldbyname('INF_PUNI').asfloat)));
            lbPeso.Caption := FormatFloat('##0.00', (FConsEstoque.cdsEstoque2TOTPESO.asfloat));



//   FConsEstoque.cdsEstoque2PRO_ID

        qrPallets.close;
        qrPallets.Params[0].AsInteger := FConsEstoque.cdsEstoque2PRO_ID.AsInteger;
        qrPallets.Open;

        Funcoes.TopNumber(qrPalletsQTDE_UVUE.AsFloat);

        if qrPallets.IsEmpty = false then begin
            pallets := FConsEstoque.cdsEstoque2XVALOR.AsInteger / qrPalletsQTDE_UVUE.AsInteger  / qrPalletsQTD_PALLET.AsInteger;
            pallets := int(pallets);
            lbPallets.Caption := FloatToStr(Funcoes.TopNumber(pallets));
        end
        else
            lbPallets.Caption := '-';


end;

procedure TFRelEstoqueSINT.gtQRDBText2Print(sender: TObject;
  var Value: String);
begin
  //  value := formatfloat('###,###,##0.00' ,(FConsEstoque.cdsEstoque2XVALOR.asfloat*(cdsAux.fieldbyname('INF_PUNI').asfloat))) ;
///  value := formatfloat('###,###,##0.00' ,(FConsEstoque.cdsEstoque2XVALOR.asfloat*(FConsEstoque.cdsEstoque2ULTIMO_PRECO.asfloat))) ;
end;

end.

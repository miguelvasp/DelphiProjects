unit UrelChequePre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Wwquery, Qrctrls, QuickRpt, Db, Wwtable, ExtCtrls;

type
  TFRelChequePre = class(TForm)
    ChequePre: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRMemo1: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    Q_IPAG: TwwQuery;
    Q_IPAGNumero: TIntegerField;
    Q_IPAGDocumento: TStringField;
    Q_IPAGRazao: TStringField;
    Q_IPAGVencimento: TDateTimeField;
    Q_IPAGData: TDateTimeField;
    Q_IPAGAbater: TFloatField;
    Q_IPAGbancoConta: TStringField;
    Q_IPAGdocumento_1: TStringField;
    QRGroup2: TQRGroup;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    Q_IPAGban_Nome: TStringField;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel15: TQRLabel;
    QRBand4: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure ChequePreBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelChequePre: TFRelChequePre;

implementation

uses CPPMENU, URelChequePreFilt;

{$R *.DFM}

procedure TFRelChequePre.ChequePreBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
   QRLabel16.caption := FMenu.DATABASE1.Params.Values['USER NAME'];
end;

procedure TFRelChequePre.FormCreate(Sender: TObject);
begin
   Q_IPAG.Close ;
   Q_IPAG.Sql.Clear ;
   Q_IPAG.Sql.Add('select A.Numero,A.Documento,A.Razao,A.Vencimento,C.ban_Nome, ' ) ;
   Q_IPAG.Sql.Add('B.Data,B.Abater,B.bancoConta,b.documento ' ) ;
   Q_IPAG.Sql.Add('from Cpapaga A, cpaipag B, cpabanc c ' ) ;
   Q_IPAG.Sql.Add('where TipoBaixa = "C"  and B.BancoConta = c.Ban_Codi ' ) ;
   Q_IPAG.Sql.Add('and A.Numero = b.Numero ' ) ;
   if FRelChequePreFilt.edit1.text <> '' Then
      Q_IPAG.Sql.Add('and A.Numero >=  ' + FRelChequePreFilt.edit1.text  ) ;

   if FRelChequePreFilt.edit2.text <> '' Then
      Q_IPAG.Sql.Add('and A.Numero <=  ' + FRelChequePreFilt.edit2.text  ) ;

   if FRelChequePreFilt.wwDBLookupCombo1.text <> '' then
      Q_IPAG.Sql.Add('and A.Fornecedor >=  ' + '''' + FRelChequePreFilt.wwDBLookupCombo1.text  + '''' ) ;
   if FRelChequePreFilt.wwDBLookupCombo2.text <> '' then
      Q_IPAG.Sql.Add('and A.Fornecedor <=  ' + '''' + FRelChequePreFilt.wwDBLookupCombo2.text  + '''' ) ;
   if FRelChequePreFilt.wwDBLookupCombo7.text <> '' then
      Q_IPAG.Sql.Add('and B.bancoConta >=  ' + '''' + FRelChequePreFilt.wwDBLookupCombo7.Lookupvalue  + '''' ) ;
   if FRelChequePreFilt.wwDBLookupCombo8.text <> '' then
      Q_IPAG.Sql.Add('and B.BancoConta <=  ' + '''' + FRelChequePreFilt.wwDBLookupCombo8.lookupvalue  + '''' ) ;

   if FRelChequePreFilt.edit3.text <> '' Then
      Q_IPAG.Sql.Add('and B.Documento >=  ' + '''' + FRelChequePreFilt.edit3.text + ''''   ) ;

   if FRelChequePreFilt.edit4.text <> '' Then
      Q_IPAG.Sql.Add('and B.Documento <=  ' + '''' + FRelChequePreFilt.edit4.text + ''''  ) ;


   if FRelChequePreFilt.Maskedit1.text <> '  /  /  ' then
      Q_IPAG.Sql.Add('and convert(Char(10),B.Data,112) >=  ' + '''' + formatdatetime('YYYYMMDD',strtodate(FRelChequePreFilt.Maskedit1.text)) + ''''   ) ;

   if FRelChequePreFilt.Maskedit4.text <> '  /  /  ' then
      Q_IPAG.Sql.Add('and convert(Char(10),B.Data,112)<=  ' + '''' + formatdatetime('YYYYMMDD',strtodate(FRelChequePreFilt.Maskedit4.text)) + ''''   ) ;

   if FRelChequePreFilt.edit5.text <> '' Then
      Q_IPAG.Sql.Add('and A.Documento >=  ' + '''' + FRelChequePreFilt.edit5.text + ''''   ) ;

   if FRelChequePreFilt.edit6.text <> '' Then
      Q_IPAG.Sql.Add('and A.Documento <=  ' + '''' + FRelChequePreFilt.edit6.text + ''''  ) ;

   Q_IPAG.Sql.Add('order by B.BancoConta,b.documento ' ) ;
   Q_IPAG.Open ;
//
// Seleciona o Nome da Empresa
//
     QRLabel16.caption := FMenu.FUsuario  ;
end;

end.

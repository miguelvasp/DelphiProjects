unit U_DTPGAN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstDTPGAN = class(TForm)
    LST_DTPG: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRGroup1: TQRGroup;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    Q_DTPG: TwwQuery;
    Q_DTPGNumero: TIntegerField;
    Q_DTPGDocumento: TStringField;
    Q_DTPGFornecedor: TStringField;
    Q_DTPGRazao: TStringField;
    Q_DTPGContaGerencial: TStringField;
    Q_DTPGValorTitulo: TFloatField;
    Q_DTPGDescAcresc: TFloatField;
    Q_DTPGValorLiquido: TFloatField;
    Q_DTPGVencimento: TDateTimeField;
    Q_DTPGBancoConta: TStringField;
    Q_DTPGEmissao: TDateTimeField;
    Q_DTPGMoeda: TStringField;
    Q_DTPGDataMoeda: TDateTimeField;
    Q_DTPGMoedaOriginal: TStringField;
    Q_DTPGDataMoedaOriginal: TDateTimeField;
    Q_DTPGValorOriginal: TFloatField;
    Q_DTPGVencimentoPrevisto: TDateTimeField;
    Q_DTPGHistorico: TStringField;
    Q_DTPGFlag: TStringField;
    Q_DTPGSituacao: TStringField;
    Q_DTPGSaldo: TFloatField;
    Q_DTPGFilial: TStringField;
    Q_DTPGData: TDateTimeField;
    Q_DTPGDescAcresc_1: TFloatField;
    Q_DTPGValorPago: TFloatField;
    Q_DTPGCON_CODI: TStringField;
    Q_DTPGCON_DESC: TStringField;
    Q_DTPGNumero_1: TIntegerField;
    Q_DTPGFIL_CODI: TStringField;
    Q_DTPGFIL_DESC: TStringField;
    DS_DTPG: TwwDataSource;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure LST_DTPGBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fGeralVliq : real ;
    ftotVLiq : Real ;

  end;

var
  FlstDTPGAN: TFlstDTPGAN;
  strger : string ;
implementation
 uses RelFPagtos, CPPMENU ;
{$R *.DFM}







procedure TFlstDTPGAN.FormCreate(Sender: TObject);
var StrTipo : string ;
begin
  fGeralVliq := 0 ;
  ftotVLiq :=  0 ;
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel2.caption := 'Relatório Analitico de Contas a Pagar - Pagamento ' + StrTipo ;
  Q_DTPG.close ;
  Q_DTPG.SQL.clear ;
  Q_DTPG.SQL.ADD('Select A.*,B.Data,B.DescAcresc,B.ValorPago,B.Numero,C.CON_CODI,C.CON_DESC,D.FIL_CODI,D.FIL_DESC  from CPAPAGA A,CPAIPAG B ,CPACONT C,CPAFILI D  ') ;
  Q_DTPG.SQL.ADD('where A.ContaGerencial = C.CON_CODI and A.Filial = D.Fil_Codi and ') ;
  Q_DTPG.SQL.ADD('A.Numero = B.Numero ');
  Q_DTPG.Sql.Add(' and TipoBaixa <> "C" ' ) ;
  if NumeroI <> '' then
     Q_DTPG.SQL.ADD( ' and A.Numero >= '+ NumeroI );
  if NumeroF <> '' then
     Q_DTPG.SQL.ADD( ' and A.Numero <= '+ NumeroF );
  if FornecedorI <> '' then
     Q_DTPG.SQL.ADD( ' and A.Fornecedor >= '+''''+ FornecedorI +'''');
  if FornecedorF <> '' then
     Q_DTPG.SQL.ADD( ' and A.Fornecedor  <= '+''''+ FornecedorF +'''');
  if FilialI <> '' then
     Q_DTPG.SQL.ADD( ' and A.Filial >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_DTPG.SQL.ADD( ' and A.Filial <= '+''''+ FilialF +'''');
  if ContaGerencialI <> '' then
     Q_DTPG.SQL.ADD( ' and A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_DTPG.SQL.ADD( ' and A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
  if VencimentoI <> 0.0 then
     Q_DTPG.SQL.ADD( ' and A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
  if VencimentoF <> 0.0 then
     Q_DTPG.SQL.ADD( ' and A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
  if BancocontaI <> '' then
     Q_DTPG.SQL.ADD( ' and A.BancoConta >= '+''''+ BancoContaI +'''');
  if BancocontaF <> '' then
     Q_DTPG.SQL.ADD( ' and A.BancoConta <= '+''''+ BancoContaF +'''');
  if Tipo = 1 then
     Q_DTPG.SQL.ADD( ' and A.Saldo <> 0 ');
  Q_DTPG.SQL.ADD( ' order by B.Data ' )  ;
  Q_DTPG.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstDTPGAN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_DTPG.close ;
   action := cafree ; 
end;


procedure TFlstDTPGAN.QRDBText3Print(sender: TObject; var Value: String);
begin
  if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText4Print(sender: TObject; var Value: String);
begin
  if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText5Print(sender: TObject; var Value: String);
begin
  if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText6Print(sender: TObject; var Value: String);
begin
  if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText7Print(sender: TObject; var Value: String);
begin
  if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText8Print(sender: TObject; var Value: String);
begin
if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText9Print(sender: TObject; var Value: String);
begin
if strGER = Q_DTPGNumero.asstring then value := '';
end;

procedure TFlstDTPGAN.QRDBText10Print(sender: TObject; var Value: String);
begin
  if strGER = Q_DTPGNumero.asstring then value := ''
  else   fTotVliq := fTotVliq + Q_DTPGValorLiquido.asfloat ;
    StrGER := Q_DTPGNumero.asstring ;

end;



procedure TFlstDTPGAN.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fTotVliq) ;
  fGeralVliq := fGeralVliq + fTotVliq ;
  fTotVliq := 0 ;

end;

procedure TFlstDTPGAN.QRExpr3Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fGeralVliq) ;
  fGeralVliq := 0 ;

end;

procedure TFlstDTPGAN.LST_DTPGBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel20.caption := FMenu.DATABASE1.Params.Values['USER NAME'];

end;

end.

unit U_CGERAN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, ExtCtrls, Qrctrls, Db, Wwdatsrc, DBTables, Wwquery, Wwtable;

type
  TFlstCGERAN = class(TForm)
    LST_CGERAN: TQuickRep;
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRGroup1: TQRGroup;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    Q_CGER: TwwQuery;
    DS_CGER: TwwDataSource;
    Q_CGERNumero: TIntegerField;
    Q_CGERDocumento: TStringField;
    Q_CGERFornecedor: TStringField;
    Q_CGERRazao: TStringField;
    Q_CGERContaGerencial: TStringField;
    Q_CGERValorTitulo: TFloatField;
    Q_CGERDescAcresc: TFloatField;
    Q_CGERValorLiquido: TFloatField;
    Q_CGERVencimento: TDateTimeField;
    Q_CGERBancoConta: TStringField;
    Q_CGEREmissao: TDateTimeField;
    Q_CGERMoeda: TStringField;
    Q_CGERDataMoeda: TDateTimeField;
    Q_CGERMoedaOriginal: TStringField;
    Q_CGERDataMoedaOriginal: TDateTimeField;
    Q_CGERValorOriginal: TFloatField;
    Q_CGERVencimentoPrevisto: TDateTimeField;
    Q_CGERHistorico: TStringField;
    Q_CGERFlag: TStringField;
    Q_CGERSituacao: TStringField;
    Q_CGERSaldo: TFloatField;
    Q_CGERFilial: TStringField;
    Q_CGERCON_CODI: TStringField;
    Q_CGERCON_DESC: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    Q_CGERFIL_CODI: TStringField;
    Q_CGERFIL_DESC: TStringField;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    Q_IPAG: TwwQuery;
    Q_IPAGNumero: TIntegerField;
    Q_IPAGSequencia: TAutoIncField;
    Q_IPAGData: TDateTimeField;
    Q_IPAGDocumento: TStringField;
    Q_IPAGAbater: TFloatField;
    Q_IPAGDescAcresc: TFloatField;
    Q_IPAGValorPago: TFloatField;
    Q_IPAGDataDebito: TDateTimeField;
    Q_IPAGTipoBaixa: TStringField;
    Q_IPAGHistorico: TStringField;
    Q_IPAGBancoConta: TStringField;
    Q_IPAGPrepCheque: TStringField;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_CGERANBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    fGeralCger : real ;
    ftotCger   : real ;

  end;

var
  FlstCGERAN: TFlstCGERAN;
implementation
uses RelFPagtos, CPPMENU ;
{$R *.DFM}


procedure TFlstCGERAN.FormCreate(Sender: TObject);
var StrTipo : String ;
begin
  if Tipo = 0 then StrTipo := 'Pagos';
  if Tipo = 1 then StrTipo := 'A Pagar ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel2.caption := 'Relat�rio Analitico de Contas a Pagar - Cta. Gerencial ' + StrTipo ;

  Q_CGER.close ;
  Q_CGER.SQL.clear ;
  Q_CGER.SQL.ADD('Select A.*,C.CON_CODI,C.CON_DESC,D.FIL_CODI,D.FIL_DESC  from CPAPAGA A ,CPACONT C,CPAFILI D  ') ;
  Q_CGER.SQL.ADD('where A.ContaGerencial = C.CON_CODI ');
  Q_CGER.SQL.ADD('  and A.Filial = D.Fil_Codi ') ;
  if NumeroI <> '' then
     Q_CGER.SQL.ADD( ' and A.Numero >= '+ NumeroI );
  if NumeroF <> '' then
     Q_CGER.SQL.ADD( ' and A.Numero <= '+NumeroF );
  if FornecedorI <> '' then
     Q_CGER.SQL.ADD( ' and A.fornecedor >= '+''''+ FornecedorI +'''');
  if FornecedorF <> '' then
     Q_CGER.SQL.ADD( ' and A.Fornecedor <= '+''''+ FornecedorF +'''');
  if FilialI <> '' then
     Q_CGER.SQL.ADD( ' and A.Filial >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_CGER.SQL.ADD( ' and A.Filial <= '+''''+ FilialF +'''');
  if ContaGerencialI <> '' then
     Q_CGER.SQL.ADD( ' and A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_CGER.SQL.ADD( ' and A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
  if VencimentoI <> 0.0 then
     Q_CGER.SQL.ADD( ' and A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
  if VencimentoF <> 0.0 then
     Q_CGER.SQL.ADD( ' and A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );


  if (Tipo = 1) then begin
     Q_CGER.SQL.ADD( ' and A.Saldo <> 0 ');
     if BancocontaI <> '' then
        Q_CGER.SQL.ADD( ' and BancoConta >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_CGER.SQL.ADD( ' and BancoConta <= '+''''+ BancoContaF +'''');
  end;

  if ( Tipo = 0)  or ((PAGAMENTOI <> 0.0) and (PAGAMENTOF <> 0.0))   then begin
     Q_CGER.Sql.Add(  ' and  A.Numero  in  (Select B.Numero from CPAIPAG B where B.Numero = A.Numero ') ;
     Q_CGER.Sql.Add(' and TipoBaixa <> "C" ' ) ;
     if PAGAMENTOI <> 0.0 then
        Q_CGER.Sql.Add(' and B.Data >= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOI ) + '''' );
     if PAGAMENTOF <> 0.0 then
        Q_CGER.Sql.Add(' and B.Data <= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOF ) + '''' );
     if BancocontaI <> '' then
        Q_CGER.SQL.ADD( ' and B.BancoConta >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_CGER.SQL.ADD( ' and B.BancoConta <= '+''''+ BancoContaF +'''' );
     Q_CGER.SQL.ADD( ' ) ' )  ;
  end;
  Q_CGER.SQL.ADD( ' order by A.ContaGerencial ' )  ;
  Q_CGER.open;
  fGeralCger := 0 ;
  ftotCger := 0 ;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstCGERAN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CGER.close ;
   Q_IPAg.Close;
   action := cafree ;
end;


procedure TFlstCGERAN.LST_CGERANBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
//   QRLabel20.caption := FMenu.StatusBar1.Panels[2].text ;
   QRLabel20.caption := FMenu.FUsuario ;

end;







procedure TFlstCGERAN.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //fecha a query
   Q_IPAG.close;
   // limpa oconte�do da prop SQL do componente Query
   Q_IPAG.SQL.clear;
   //insere na prop SQL do comp query a linha do select
   Q_IPAG.SQL.ADD('select * from CPAIPAG where Numero = '+ Q_CGERNumero.ASSTRING) ;
   Q_IPAG.Sql.Add(' and TipoBaixa <> "C" ' ) ;   
   if PAGAMENTOI <> 0.0 then
      Q_IPAg.Sql.Add(' and data >= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOI ) + '''' );
   if PAGAMENTOF <> 0.0 then
      Q_IPAG.Sql.Add(' and DATA <= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOF ) + '''' );
   if (TIPO = 0) then begin
      if BancocontaI <> '' then
         Q_IPAG.SQL.ADD( ' and BancoConta >= '+''''+ BancoContaI +'''');
      if BancocontaF <> '' then
         Q_IPAG.SQL.ADD( ' and BancoConta <= '+''''+ BancoContaF +'''');
   end ;
   //abre/executa a senten�a SQL
   Q_IPAG.open;

end;

procedure TFlstCGERAN.QRDBText15Print(sender: TObject; var Value: String);
begin
  fTotCger   := FtotCger + Q_IPAGValorPago.asfloat ;
end;

procedure TFlstCGERAN.QRExpr2Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fTotCger) ;
  FGeralCger := FGeralCger + fTotCGer ;
  ftotCger := 0 ;

end;

procedure TFlstCGERAN.QRExpr4Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',fGeralCger) ;
  fGeralCger := 0 ;

end;



end.

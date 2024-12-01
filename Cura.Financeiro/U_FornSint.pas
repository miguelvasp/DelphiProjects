unit U_FornSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstFornSint = class(TForm)
    Q_SINT: TwwQuery;
    Q_SINTxvalor: TFloatField;
    DS_SINT: TwwDataSource;
    Q_IPAG: TwwQuery;
    Q_IPAGyvalor: TFloatField;
    Lst_Forn: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    Q_SINTFornecedor: TStringField;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_FORNBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    fTotal : real ;
  end;

var
  FlstFornSint: TFlstFornSint;

implementation
uses RelFPagtos, CPPMENU ;
{$R *.DFM}




procedure TFlstFornSint.FormCreate(Sender: TObject);
var StrTipo : String ;
    StrAnd  : String;
begin
   fTotal := 0 ;
  if Tipo = 0 then StrTipo := 'Pagos';
  if Tipo = 1 then StrTipo := 'A Pagar ';
  if Tipo = 2 then StrTipo := 'Todos';
  QRLabel4.caption := 'Relatório Sintetico de Contas a Pagar - Fornecedor ' + StrTipo ;
  Q_sint.close ;
  Q_sint.SQL.clear ;
  Q_Sint.SQL.ADD('Select Fornecedor, sum(ValorLiquido) as XValor from CPAPAGA A' ) ;
  StrAnd := ' where ';
  if NumeroI <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + 'A.Numero >= '+ NumeroI );
     StrAnd :=  ' and ';
  end ;
  if NumeroF <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Numero <= '+ NumeroF );
     StrAnd :=  ' and ';
  end ;

  if FornecedorI <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Fornecedor >= '+''''+ FornecedorI +'''');
     StrAnd :=  ' and ';
  end ;

  if FornecedorF <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Fornecedor <= '+''''+ FornecedorF +'''');
     StrAnd :=  ' and ';
  end ;

  if FilialI <> '' then begin
     Q_Sint.SQL.ADD(StrAnd + ' A.Filial >= '+''''+ FilialI +'''');
     StrAnd :=  ' and ';
  end ;

  if FilialF <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Filial <= '+''''+ FilialF +'''');
     StrAnd :=  ' and ';
  end ;

  if ContaGerencialI <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
     StrAnd :=  ' and ';
  end ;

  if ContaGerencialF <> '' then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
     StrAnd :=  ' and ';
  end ;

  if VencimentoI <> 0.0 then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
     StrAnd :=  ' and ';
  end ;

  if VencimentoF <> 0.0 then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
     StrAnd :=  ' and ';
  end ;

  if (Tipo = 1) then begin
     Q_Sint.SQL.ADD( StrAnd + ' A.Saldo <> 0 ');
     StrAnd :=  ' and ';
     if BancocontaI <> '' then begin
        Q_Sint.SQL.ADD( StrAnd + ' BancoConta >= '+''''+ BancoContaI +'''');
        StrAnd :=  ' and ';
     end ;

     if BancocontaF <> '' then begin
        Q_Sint.SQL.ADD( StrAnd + ' BancoConta <= '+''''+ BancoContaF +'''');
        StrAnd :=  ' and ';
     end ;
  end;
  if ( Tipo = 0)  or ((PAGAMENTOI <> 0.0) and (PAGAMENTOF <> 0.0)) then begin
     Q_Sint.Sql.Add(  StrAnd + ' A.Numero  in  (Select B.Numero from CPAIPAG B where B.Numero = A.Numero ') ;
     Q_Sint.Sql.Add(' and TipoBaixa <> "C" ' ) ;     
     if PAGAMENTOI <> 0.0 then
        Q_Sint.Sql.Add(' and B.Data >= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOI ) + '''' );
     if PAGAMENTOF <> 0.0 then
        Q_Sint.Sql.Add(' and B.Data <= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOF ) + '''' );
     if BancocontaI <> '' then
        Q_Sint.SQL.ADD( ' and B.BancoConta >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_Sint.SQL.ADD( ' and B.BancoConta <= '+''''+ BancoContaF +'''' );
     Q_Sint.SQL.ADD( ' ) ' )  ;
  end;
  Q_Sint.SQL.ADD('group by A.Fornecedor');
  Q_Sint.SQL.ADD( ' order by A.Fornecedor' )  ;
  Q_Sint.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstFornSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_Sint.close ;
   Q_IPAG.Close ;
   action := cafree  ;
end;


procedure TFlstFornSint.LST_FORNBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel12.caption := FMenu.DATABASE1.Params.Values['USER NAME'];

end;



procedure TFlstFornSint.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Q_IPAG.close ;
  Q_IPAG.SQL.clear ;
  Q_IPAG.SQL.ADD('Select sum(B.ValorPago) as YValor from CPAPAGA A ,CPAIPAG B ') ;
  Q_IPAG.SQL.ADD('where A.Numero = B.Numero and  A.Fornecedor = '+ ''''+ Q_Sintfornecedor.asstring +'''' ) ;
  Q_IPAG.Sql.Add(' and TipoBaixa <> "C" ' ) ;
  if NumeroI <> '' then
     Q_IPAG.SQL.ADD( ' and A.Numero >= '+ NumeroI );
  if NumeroF <> '' then
     Q_IPAG.SQL.ADD( ' and A.Numero <= '+ NumeroF );
  if FornecedorI <> '' then
     Q_IPAG.SQL.ADD( ' and A.fornecedor >= '+''''+ FornecedorI +'''');
  if FornecedorF <> '' then
     Q_IPAG.SQL.ADD( ' and A.fornecedor <= '+''''+ FornecedorF +'''');
  if FilialI <> '' then
     Q_IPAG.SQL.ADD( ' and A.Filial >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_IPAG.SQL.ADD( ' and A.Filial <= '+''''+ FilialF +'''');
  if ContaGerencialI <> '' then
     Q_IPAG.SQL.ADD( ' and A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_IPAG.SQL.ADD( ' and A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
  if VencimentoI <> 0.0 then
     Q_IPAG.SQL.ADD( ' and A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
  if VencimentoF <> 0.0 then
     Q_IPAG.SQL.ADD( ' and A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
  if (Tipo = 1) then
     Q_IPAG.SQL.ADD( ' and A.Saldo <> 0 ');
  if ( Tipo = 0)  or ((PAGAMENTOI <> 0.0) and (PAGAMENTOF <> 0.0))   then begin
      if PAGAMENTOI <> 0.0 then
         Q_IPAG.Sql.Add(' and B.Data >= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOI ) + '''' );
      if PAGAMENTOF <> 0.0 then
         Q_IPAG.Sql.Add(' and B.Data <= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOF ) + '''' );
      if BancocontaI <> '' then
         Q_IPAG.SQL.ADD( ' and B.BancoConta >= '+''''+ BancoContaI +'''');
      if BancocontaF <> '' then
         Q_IPAG.SQL.ADD( ' and B.BancoConta <= '+''''+ BancoContaF +'''' );
  end ;
  Q_IPAG.open;


end;

procedure TFlstFornSint.QRDBText4Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',Q_IPAGYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IPAGYVALOR.asfloat ;

end;

procedure TFlstFornSint.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  FTotal := 0 ;

end;

end.

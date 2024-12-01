unit U_CGERSINT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, Wwdatsrc, Wwquery, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstCGERSINT = class(TForm)
    Lst_CGERSINT: TQuickRep;
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
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    Q_SINT: TwwQuery;
    DS_SINT: TwwDataSource;
    QRExpr1: TQRExpr;
    Q_SINTContaGerencial: TStringField;
    Q_SINTxvalor: TFloatField;
    Q_SINTCON_DESC: TStringField;
    QRDBText2: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    Q_IPAG: TwwQuery;
    Q_IPAGyvalor: TFloatField;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Lst_CGERSINTBeforePrint(Sender:TCustomQuickRep;
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
  FlstCGERSINT: TFlstCGERSINT;
implementation
 uses RelFPagtos, CPPMENU  ;
{$R *.DFM}


procedure TFlstCGERSINT.FormCreate(Sender: TObject);
var StrTipo : String ;
begin
   fTotal := 0 ;
  if Tipo = 0 then StrTipo := 'Pagos';
  if Tipo = 1 then StrTipo := 'A Pagar ';
  if Tipo = 2 then StrTipo := 'Todos';

  QRLabel4.caption := 'Relatório Sintetico de Contas a Pagar - Cta. Gerencial ' + StrTipo ;

  Q_sint.close ;
  Q_sint.SQL.clear ;
  Q_Sint.SQL.ADD('Select C.CON_DESC , a.ContaGerencial, sum(ValorLiquido) as XValor ') ;
  Q_Sint.SQL.ADD(' from CPAPAGA A ,CPACONT C ') ;
  Q_Sint.SQL.ADD('where A.ContaGerencial = C.CON_CODI ');
  if NumeroI <> '' then
     Q_Sint.SQL.ADD( ' and A.Numero >= '+ NumeroI );
  if NumeroF <> '' then
     Q_Sint.SQL.ADD( ' and A.Numero <= '+ NumeroF );
  if FornecedorI <> '' then
     Q_Sint.SQL.ADD( ' and A.Fornecedor >= '+''''+ FornecedorI +'''');
  if FornecedorF <> '' then
     Q_Sint.SQL.ADD( ' and A.Fornecedor <= '+''''+ FornecedorF +'''');
  if FilialI <> '' then
     Q_Sint.SQL.ADD( ' and A.Filial >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_Sint.SQL.ADD( ' and A.Filial <= '+''''+ FilialF +'''');
  if ContaGerencialI <> '' then
     Q_Sint.SQL.ADD( ' and A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_Sint.SQL.ADD( ' and A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
  if VencimentoI <> 0.0 then
     Q_Sint.SQL.ADD( ' and A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
  if VencimentoF <> 0.0 then
     Q_Sint.SQL.ADD( ' and A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );


  if (Tipo = 1) then begin
     Q_Sint.SQL.ADD( ' and A.Saldo <> 0 ');
     if BancocontaI <> '' then
        Q_Sint.SQL.ADD( ' and BancoConta >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_Sint.SQL.ADD( ' and BancoConta <= '+''''+ BancoContaF +'''');
  end;
  if ( Tipo = 0)  or ((PAGAMENTOI <> 0.0) and (PAGAMENTOF <> 0.0))   then begin
     Q_Sint.Sql.Add(  ' and  A.Numero  in  (Select B.Numero from CPAIPAG B where B.Numero = A.Numero ') ;
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
  Q_Sint.SQL.ADD('group by A.ContaGerencial,C.CON_DESC');
  Q_Sint.SQL.ADD( ' order by A.ContaGerencial,C.CON_DESC ' )  ;
  Q_Sint.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstCGERSINT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_Sint.close ;
   Q_IPAG.Close ;
   action := cafree  ;
end;




procedure TFlstCGERSINT.Lst_CGERSINTBeforePrint(Sender:TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel12.caption := FMenu.DATABASE1.Params.Values['USER NAME'];

end;


procedure TFlstCGERSINT.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Q_IPAG.close ;
  Q_IPAG.SQL.clear ;
  Q_IPAG.SQL.ADD('Select sum(B.ValorPago) as YValor from CPAPAGA A ,CPAIPAG B ') ;
  Q_IPAG.SQL.ADD('where A.Numero = B.Numero and  A.ContaGerencial = '+ ''''+ Q_SintContaGerencial.asstring +'''' ) ;
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

procedure TFlstCGERSINT.QRDBText4Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',Q_IPAGYVALOR.asfloat) ;
  Ftotal := FTotal + Q_IPAGYVALOR.asfloat ;

end;

procedure TFlstCGERSINT.QRExpr1Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00', Ftotal) ;
  FTotal := 0 ;

end;

end.

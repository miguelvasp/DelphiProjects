unit U_DTPGSINT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstDTPGSINT = class(TForm)
    LST_DTPG: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    Q_DTPG: TwwQuery;
    DS_DTPG: TwwDataSource;
    Q_DTPGData: TDateTimeField;
    Q_DTPGyvalor: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_DTPGBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstDTPGSINT: TFlstDTPGSINT;

implementation
uses RelFPagtos, CPPMENU   ;
{$R *.DFM}




procedure TFlstDTPGSINT.FormCreate(Sender: TObject);
var Strand : String ;
begin
  Q_DTPG.close ;
  Q_DTPG.SQL.clear ;
  Q_DTPG.SQL.ADD('Select B.Data , ');
  Q_DTPG.SQL.ADD('SUM(B.ValorPago) as  yvalor   ') ;
  Q_DTPG.SQL.ADD('from CPAPAGA A,CPAIPAG B ') ;
  Q_DTPG.SQL.ADD('where A.Numero = B.Numero   ') ;
  Q_DTPG.Sql.Add(' and TipoBaixa <> "C" ' ) ;
  StrAnd := ' and ';
  if NumeroI <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + 'A.Numero >= '+ NumeroI );
     StrAnd :=  ' and ';
  end ;
  if NumeroF <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Numero <= '+ NumeroF );
     StrAnd :=  ' and ';
  end ;

  if FornecedorI <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Fornecedor >= '+''''+ FornecedorI +'''');
     StrAnd :=  ' and ';
  end ;

  if FornecedorF <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Fornecedor <= '+''''+ FornecedorF +'''');
     StrAnd :=  ' and ';
  end ;

  if FilialI <> '' then begin
     Q_DTPG.SQL.ADD(StrAnd + ' A.Filial >= '+''''+ FilialI +'''');
     StrAnd :=  ' and ';
  end ;

  if FilialF <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Filial <= '+''''+ FilialF +'''');
     StrAnd :=  ' and ';
  end ;

  if ContaGerencialI <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
     StrAnd :=  ' and ';
  end ;

  if ContaGerencialF <> '' then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
     StrAnd :=  ' and ';
  end ;

  if VencimentoI <> 0.0 then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
     StrAnd :=  ' and ';
  end ;

  if VencimentoF <> 0.0 then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
     StrAnd :=  ' and ';
  end ;

  if (Tipo = 1) then begin
     Q_DTPG.SQL.ADD( StrAnd + ' A.Saldo <> 0 ');
     StrAnd :=  ' and ';
     if BancocontaI <> '' then begin
        Q_DTPG.SQL.ADD( StrAnd + ' BancoConta >= '+''''+ BancoContaI +'''');
        StrAnd :=  ' and ';
     end ;

     if BancocontaF <> '' then begin
        Q_DTPG.SQL.ADD( StrAnd + ' BancoConta <= '+''''+ BancoContaF +'''');
        StrAnd :=  ' and ';
     end ;
  end;
  if ( Tipo = 0)  or ((PAGAMENTOI <> 0.0) and (PAGAMENTOF <> 0.0)) then begin
     Q_DTPG.Sql.Add(  StrAnd + ' A.Numero  in  (Select B.Numero from CPAIPAG B where B.Numero = A.Numero ') ;
     Q_DTPG.Sql.Add(' and TipoBaixa <> "C" ' ) ;
     if PAGAMENTOI <> 0.0 then
        Q_DTPG.Sql.Add(' and B.Data >= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOI ) + '''' );
     if PAGAMENTOF <> 0.0 then
        Q_DTPG.Sql.Add(' and B.Data <= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOF ) + '''' );
     if BancocontaI <> '' then
        Q_DTPG.SQL.ADD( ' and B.BancoConta >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_DTPG.SQL.ADD( ' and B.BancoConta <= '+''''+ BancoContaF +'''' );
     Q_DTPG.SQL.ADD( ' ) ' )  ;
  end;
  Q_DTPG.SQL.ADD('group by B.Data');
  Q_DTPG.SQL.ADD( ' order by B.Data' )  ;

  Q_DTPG.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstDTPGSINT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_DTPG.close ;
  action := cafree ;
end;


procedure TFlstDTPGSINT.LST_DTPGBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel5.caption := FMenu.DATABASE1.Params.Values['USER NAME'];

end;

end.

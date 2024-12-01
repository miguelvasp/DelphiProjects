unit RelPagtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, DBTables, Wwquery, Db, Wwtable, Wwdatsrc;

type
  TFlstPagtos = class(TForm)
    LST_Pagtos: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    DS_Pagtos: TwwDataSource;
    T_empr: TwwTable;
    Q_Pagtos: TwwQuery;
    T_emprEmp_Sequencia: TIntegerField;
    T_emprEmp_Razao: TStringField;
    T_emprEmp_CGC: TStringField;
    T_emprEmp_Insc: TStringField;
    T_emprEmp_EndFiscal: TStringField;
    T_emprEmp_MunFiscal: TStringField;
    T_emprEmp_EstFiscal: TStringField;
    T_emprEmp_CepFiscal: TStringField;
    T_emprEmp_Telefone1: TStringField;
    T_emprEmp_Telefone2: TStringField;
    T_emprEmp_Fax: TStringField;
    T_emprEmp_NomeFantasia: TStringField;
    T_emprEmp_Logo: TBlobField;
    Q_PagtosNumero: TIntegerField;
    Q_PagtosDocumento: TStringField;
    Q_PagtosFornecedor: TStringField;
    Q_PagtosRazao: TStringField;
    Q_PagtosContaGerencial: TStringField;
    Q_PagtosValorTitulo: TFloatField;
    Q_PagtosDescAcresc: TFloatField;
    Q_PagtosValorLiquido: TFloatField;
    Q_PagtosVencimento: TDateTimeField;
    Q_PagtosBancoConta: TStringField;
    Q_PagtosEmissao: TDateTimeField;
    Q_PagtosMoeda: TStringField;
    Q_PagtosDataMoeda: TDateTimeField;
    Q_PagtosMoedaOriginal: TStringField;
    Q_PagtosDataMoedaOriginal: TDateTimeField;
    Q_PagtosValorOriginal: TFloatField;
    Q_PagtosVencimentoPrevisto: TDateTimeField;
    Q_PagtosSituacao: TStringField;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    Q_PagtosHistorico: TStringField;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRMemo1: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    Q_PagtosFilial: TStringField;
    Q_Grava: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_PagtosBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure LST_PagtosAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  FlstPagtos: TFlstPagtos;

implementation
 uses RelFPagtos, CPPMENU ;
{$R *.DFM}

procedure TFlstPagtos.FormCreate(Sender: TObject);
var strAnd : string ;
begin

  if RelFpagtos.Ordenacao = '' then begin
     QRGroup1.enabled  := false ;
     QRGroup1.expression := '' ;
//     QRBand3.BandType  := rbSummary ;
//       BandType = rbGroupFooter
  end else begin
     if  RelFpagtos.Ordenacao = '1' then begin
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;
        QrLabel15.caption :='Conta Gerencial :' ;
        QRDBText6.DataField := 'ContaGerencial' ;
        QRGroup1.expression := 'Q_Pagtos.ContaGerencial' ;
     end ;
     if RelFpagtos.Ordenacao = '2' then begin
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;

        QrLabel15.caption :='Vencimento :' ;
        QRDBText6.DataField := 'Vencimento' ;
        QRGroup1.expression := 'Q_Pagtos.Vencimento' ;
     end ;
     if  RelFpagtos.Ordenacao = '3' then begin
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;

        QrLabel15.enabled := false  ;
        QRDBText6.enabled := false  ;
        QRGroup1.expression := 'Q_Pagtos.Fornecedor' ;
     end ;
     if  RelFpagtos.Ordenacao = '4' then begin
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;

        QrLabel15.caption :='Centro de Custo :' ;
        QRDBText6.DataField := 'Filial' ;
        QRGroup1.expression := 'Q_Pagtos.Filial' ;
     end ;
     QRGroup1.enabled  := true ;
//     QRBand3.BandType := rbGroupFooter ;
     QRGroup1.footerBand := QRBand3 ;
  end ;

  Q_Pagtos.close ;
  Q_Pagtos.SQL.clear ;
  Q_Pagtos.SQL.ADD('select * from CPAPAGA A ');
  StrAnd := ' where ' ;
  if RelFpagtos.Ordenacao = '' then begin
     Q_Pagtos.Sql.Add( ' where Conferencia = ' + '''' + 'S' + '''' ) ;
     StrAnd := ' and ' ;
  end ;
  if NumeroI <> '' then begin
     Q_Pagtos.SQL.ADD( StrAnd + '  Numero >= '+NumeroI);
     StrAnd := ' and ' ;
  end ;
  if NumeroF <> '' then begin
     Q_Pagtos.SQL.ADD( StrAnd + ' Numero <= '+ NumeroF );
     Strand := ' and ' ;
  end ;
  if FornecedorI <> '' then begin
     Q_Pagtos.SQL.ADD( strand + ' Fornecedor >= '+''''+ FornecedorI +'''');
     strand := ' and ' ;
  end ;
  if FornecedorF <> '' then  begin
     Q_Pagtos.SQL.ADD( strand + ' Fornecedor <= '+''''+ FornecedorF +'''');
     strand := ' and ' ;
  end ;
  if FilialI <> '' then  begin
     Q_Pagtos.SQL.ADD( strand + ' Filial >= '+''''+ FilialI +'''');
     strand := ' and ' ;

  end ;
  if FilialF <> '' then begin
     Q_Pagtos.SQL.ADD( strand + ' Filial <= '+''''+ FilialF +'''');
     strand := ' and ' ;
  end ;
  if ContaGerencialI <> '' then begin
     Q_Pagtos.SQL.ADD( strand +  '  ContaGerencial >= '+''''+ ContaGerencialI +'''');
     strand := ' and ' ;
  end ;
  if ContaGerencialF <> '' then  begin
     Q_Pagtos.SQL.ADD( strand + ' ContaGerencial <= '+''''+ ContaGerencialF +'''');
     strand := ' and  ' ;
  end ;
  if VencimentoI <> 0.0 then  begin
     Q_Pagtos.SQL.ADD( strand + ' Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
     strand := ' and  ' ;
  end ;
  if VencimentoF <> 0.0 then  begin
     Q_Pagtos.SQL.ADD( strand + '  Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
     strand := ' and ' ;
  end ;

  if Tipo = 1 then begin
     if BancocontaI <> '' then  begin
        Q_Pagtos.SQL.ADD( strand + '  BancoConta >= '+''''+ BancoContaI +'''');
        strand :=  ' and  ' ;
     end ;
     if BancocontaF <> '' then  begin
        Q_Pagtos.SQL.ADD( strand + ' BancoConta <= '+''''+ BancoContaF +'''');
        strand := ' and  ' ;
     end  ;
     Q_Pagtos.SQL.ADD( strand + '  Saldo <> 0 ');
     strand := ' and  ' ;
  end  ;
  if Tipo = 0 then begin
     Q_Pagtos.Sql.Add(StrAnd + ' A.Numero  in  (Select B.Numero from CPAIPAG B where B.Numero = A.Numero ') ;
     if PAGAMENTOI <> 0.0 then
        Q_Pagtos.Sql.Add(' and B.Data >= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOI ) + '''' );
     if PAGAMENTOF <> 0.0 then
        Q_Pagtos.Sql.Add(' and B.Data <= ' + '''' + FormatDateTime('MM/DD/YYYY',PAGAMENTOF ) + '''' );
     if BancocontaI <> '' then
        Q_Pagtos.SQL.ADD( ' and B.BancoConta >= '+''''+ BancoContaI +'''');
     if BancocontaF <> '' then
        Q_Pagtos.SQL.ADD( ' and B.BancoConta <= '+''''+ BancoContaF +'''' );
     Q_Pagtos.SQL.ADD( ' ) ' )  ;
  end;
  if RelFpagtos.Ordenacao = '1' then
     Q_Pagtos.SQL.ADD( ' Order by ContaGerencial' )  ;

  if RelFpagtos.Ordenacao = '2' then
     Q_Pagtos.SQL.ADD( ' Order by Vencimento' )  ;

  if RelFpagtos.Ordenacao = '3' then
     Q_Pagtos.SQL.ADD( ' Order by Fornecedor ' )  ;

  if RelFpagtos.Ordenacao = '4' then
     Q_Pagtos.SQL.ADD( ' Order by Filial' )  ;

  QRMemo1.lines.add(StrFiltro) ;
  Q_PAGTOS.open;
  T_EMPR.Open;
  QRImage1.picture.assign(T_EMPREMP_LOGO) ;

end;

procedure TFlstPagtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PAGTOS.close;
  action:=cafree;
end;

procedure TFlstPagtos.LST_PagtosBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//

   QRLabel16.caption := FMenu.DATABASE1.Params.Values['USER NAME'];

   T_Empr.Close;

   T_Empr.open;
   vLogo := T_EmprEmp_Logo;
   QRImage1.Picture.Assign(vLogo);



end;

procedure TFlstPagtos.LST_PagtosAfterPrint(Sender: TObject);
begin
   if RelfPagtos.Ordenacao = '' then begin
     Q_Grava.close ;
     Q_Grava.Sql.clear ;
     Q_Grava.Sql.Add('update CPAPAGA set Conferencia = ' + '''' + 'N' + '''' );
     Q_Grava.Sql.Add(' where Conferencia = ' + '''' + 'S' + '''' ) ;
     Q_GRava.ExecSql ;
   end ;
end;

end.




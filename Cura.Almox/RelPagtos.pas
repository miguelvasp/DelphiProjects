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
    QRDBText9: TQRDBText;
    DS_Pagtos: TwwDataSource;
    Q_Pagtos: TwwQuery;
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
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRMemo1: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    Q_PagtosFilial: TStringField;
    Q_Grava: TwwQuery;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel17: TQRLabel;
    QRExpr2: TQRExpr;
    Q_PagtosSaldo: TFloatField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_PagtosBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure LST_PagtosAfterPrint(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstPagtos: TFlstPagtos;
  F : TextFile;

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
        QRLabel2.caption  := 'Relatório de Conferência de Pagamentos por Conta Gerencial';
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;
        QrLabel15.caption :='Conta Gerencial :' ;
        QRDBText6.DataField := 'ContaGerencial' ;
        QRGroup1.expression := 'Q_Pagtos.ContaGerencial' ;
    end ;
    if RelFpagtos.Ordenacao = '2' then begin
        QRLabel2.caption  := 'Relatório de Conferência de Pagamentos por Vencimento ';
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;
        QrLabel15.caption :='Vencimento :' ;
        QRDBText6.DataField := 'Vencimento' ;
        QRGroup1.expression := 'Q_Pagtos.Vencimento' ;
    end ;
    if  RelFpagtos.Ordenacao = '3' then begin
        QRLabel2.caption  := 'Relatório de Conferência de Pagamentos por Fornecedor';
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;

        QrLabel15.enabled := false  ;
        QRDBText6.enabled := false  ;
        QRGroup1.expression := 'Q_Pagtos.Fornecedor' ;
    end ;
    if  RelFpagtos.Ordenacao = '4' then begin
        QRLabel2.caption  := 'Relatório de Conferência de Pagamentos por Centro de Custo';
        QrLabel15.enabled := true ;
        QRDBText6.enabled := true ;

        QrLabel15.caption :='Centro de Custo :' ;
        QRDBText6.DataField := 'Filial' ;
        QRGroup1.expression := 'Q_Pagtos.Filial' ;
    end ;

    QRGroup1.enabled  := true ;
    QRGroup1.footerBand := QRBand3 ;

    if  RelFpagtos.Ordenacao = '7' then begin
        QRLabel2.caption  := 'Relatório de Conferência de Pagamentos por C.P. ';
        QrLabel15.enabled := FALSE ;
        QRDBText6.enabled := FALSE ;
        QRGroup1.enabled  := false ;
        QRGroup1.expression := '' ;
    end ;
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
     Q_Pagtos.SQL.ADD( strand + ' Vencimento >= CONVERT(SMALLDATETIME,' +'''' +Lst_Pagto_Filt.MaskEdit1.Text +'''' +',103)');
     strand := ' and  ' ;
  end ;
  if VencimentoF <> 0.0 then  begin
     Q_Pagtos.SQL.ADD( strand + '  Vencimento <= CONVERT(SMALLDATETIME,' + '''' +Lst_Pagto_Filt.MaskEdit4.Text +'''' +',103)');
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
     Q_Pagtos.Sql.Add(' and TipoBaixa <> "C" ' ) ;
     if PAGAMENTOI <> 0.0 then
        Q_Pagtos.Sql.Add(' and B.Data >= CONVERT(SMALLDATETIME,' +'''' +Lst_Pagto_Filt.MaskEdit2.Text +'''' +',103)');
     if PAGAMENTOF <> 0.0 then
        Q_Pagtos.Sql.Add(' and B.Data <= CONVERT(SMALLDATETIME,' +'''' +Lst_Pagto_Filt.MaskEdit6.Text +'''' +',103)');
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

  if RelFpagtos.Ordenacao = '7' then
     Q_Pagtos.SQL.ADD( ' Order by Numero' )  ;

  QRMemo1.lines.add(StrFiltro) ;
  Q_PAGTOS.open;
  {
  assignfile(f,'sql.txt');
  rewrite(f);
  write(f,q_pagtos.sql.text);
  closefile(f);
  }

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

procedure TFlstPagtos.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
case RelFpagtos.Ordenacao[1] of
        '2' : QRLabel14.Caption := 'Total em ' + Q_PagtosVencimento.AsString;
end;
end;

end.




unit RelRecNotasFiscais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwtable, Wwdatsrc, quickrpt, Qrctrls, ExtCtrls;

type
    TFLstNotasFiscais = class(TForm)
    LST_RecNotasFiscais: TQuickRep;
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
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText21: TQRDBText;
    DS_NotasFiscais: TwwDataSource;
    Q_NotasFiscais: TwwQuery;
    QRDBText18: TQRDBText;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText1: TQRDBText;
    Q_NotasFiscaisNFI_NFIS: TIntegerField;
    Q_NotasFiscaisNFI_TOTA: TFloatField;
    Q_NotasFiscaisNFI_DEMI: TDateTimeField;
    Q_NotasFiscaisNFI_CANC: TStringField;
    Q_NotasFiscaisNFI_LCOB: TStringField;
    Q_NotasFiscaisNFI_CLIE: TIntegerField;
    Q_NotasFiscaisNFI_VEND: TStringField;
    Q_NotasFiscaisCLI_APELIDO: TStringField;
    Q_NotasFiscaisCDP_DESC: TStringField;
    Q_NotasFiscaisVEN_NOME: TStringField;
    Q_NotasFiscaisNFI_CDPG: TStringField;
    Q_NotasFiscaisNFI_CFAT: TStringField;
    Q_NotasFiscaisCFA_DCFO: TStringField;
    Q_NotasFiscaisNFI_FATESPE: TStringField;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_RecNotasFiscaisBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    StrEntrou : string[1] ;
  end;

var
  FLstNotasFiscais: TFLstNotasFiscais;

implementation
 uses RecNotasFiscais , CPPMENU ;
{$R *.DFM}


procedure TFLstNotasFiscais.FormCreate(Sender: TObject);
var StrTipo : string ;
    StrAnd  : string ;
begin
  if RecNotasFiscais.Ordenacao = '1'  then begin
     QrLabel11.enabled := true ;
     QRDBText6.enabled := true ;
     QrLabel11.caption :='Clientes :' ;
     QRDBText6.DataField := 'CLI_APELIDO' ;
     QRGroup1.expression := 'Q_NOTASFISCAIS.CLI_APELIDO' ;
  end ;
  if RecNotasFiscais.Ordenacao = '2' then begin
     QrLabel11.enabled := true ;
     QRDBText6.enabled := true ;
     QrLabel11.caption :='Vendedores :' ;
     QRDBText6.DataField := 'NFI_VEND' ;
     QRGroup1.expression := 'Q_NOTASFISCAIS.NFI_VEND' ;
//     QRLabel17.enabled := false ;
//     QRDBText10.enabled := false ;
  end ;
  if RecNotasFiscais.Ordenacao = '3' then begin
     QrLabel11.enabled := true ;
     QRDBText6.enabled := true ;
     QrLabel11.caption :='Data de Emissão :' ;
     QRDBText6.DataField := 'NFI_DEMI' ;
     QRGroup1.expression := 'Q_NOTASFISCAIS.NFI_DEMI' ;
//     QRLabel9.enabled := false ;
//     QRDBText4.enabled := false ;
  end ;

//  QRLabel2.caption := 'Relatório de Contas a Receber por C.R. - ' + StrTipo ;
  Q_NOTASFISCAIS.close ;
  Q_NOTASFISCAIS.SQL.clear ;

  Q_NOTASFISCAIS.SQL.ADD('Select B.NFI_NFIS, B.NFI_TOTA, B.NFI_DEMI, B.NFI_CANC, B.NFI_FATESPE, ');
  Q_NOTASFISCAIS.SQL.ADD('B.NFI_LCOB, B.NFI_CLIE,B.NFI_VEND,');
  Q_NOTASFISCAIS.SQL.ADD('B.NFI_CDPG, B.NFI_CFAT, ');
  Q_NOTASFISCAIS.SQL.ADD('C.CLI_APELIDO, D.CDP_DESC, E.VEN_NOME,F.CFA_DCFO ');
  Q_NOTASFISCAIS.SQL.ADD('From SIANFIS B, CPACLIE C , CPACDPG D, SIAVEND E, SIACFAT F ');
  Q_NOTASFISCAIS.SQL.ADD(' where C.CLI_CODI = B.NFI_CLIE ');
  Q_NOTASFISCAIS.SQL.ADD('   and D.CDP_CODI = B.NFI_CDPG ');
  Q_NOTASFISCAIS.SQL.ADD('   and E.VEN_CODI = B.NFI_VEND ');
  Q_NOTASFISCAIS.SQL.ADD('   and F.CFA_CODI = B.NFI_CFAT ');
  Q_NOTASFISCAIS.SQL.ADD('   and F.CFA_SEQU = B.NFI_SEQU ');

  StrAnd := ' and ' ;

  if CFatur <> ''  then   BEGIN
     Q_NOTASFISCAIS.SQL.ADD( StrANd + ' CFA_CODI = '+ '''' + CFatur + '''');
     StrAnd := ' and ' ;
  end;

  if (ClienteI <> '')     and
     (ClienteF <> '')     then begin
     Q_NotasFiscais.SQL.ADD( StrANd + ' CLI_APELIDO >= '+ '''' + ClienteI + '''' );
     Q_NotasFiscais.SQL.ADD( ' and CLI_APELIDO <= '+''''+ ClienteF +'''');
     StrAnd := ' and ' ;
  end;

  if (VendedorI <> '') and (VendedorF <> '' ) then begin
     Q_NOTASFISCAIS.SQL.ADD( StrANd + ' VEN_NOME >= '+''''+ VendedorI +'''');
     Q_NOTASFISCAIS.SQL.ADD( ' and VEN_NOME <= '+''''+ VendedorF +'''');
     StrAnd := ' and ' ;
  end;

  if Condicao <> '' then BEGIN
     Q_NOTASFISCAIS.SQL.ADD( StrANd + ' cdp_desc = '+''''+ Condicao +'''');
     StrAnd := ' and ' ;
  end;

  if EMISSAOI <> 0.0 then  begin
     Q_NOTASFISCAIS.SQL.ADD( StrANd + ' nfi_Demi >= '+ ''''+ FormatDateTime('MM/DD/YYYY',EmissaoI ) + '''' );
     StrAnd := ' and ' ;
  end ;

  if EmissaoF <> 0.0 then begin
     Q_NOTASFISCAIS.SQL.ADD( StrANd + ' nfi_Demi <= '+ ''''+ FormatDateTime('MM/DD/YYYY',EmissaoF ) + '''' );
     StrAnd := ' and ' ;
  end ;

  if (Situacao = 0 ) or (Situacao = 1 ) or (Situacao = 3 )   then begin
     if Situacao = 0  then
        Q_NOTASFISCAIS.SQL.ADD( StrANd + ' NFI_NFAT > 0 ');

     if Situacao = 1  then
        Q_NOTASFISCAIS.SQL.ADD( StrANd + ' NFI_CANC = '+'''' +'S' +'''');

     if Situacao = 3  then
        Q_NOTASFISCAIS.SQL.ADD( StrANd + ' NFI_FATESPE = "S" ');
     StrAnd := ' and ' ;
  end;

//     if Tipo = 1 then begin
//        Q_NOTASFISCAIS.SQL.ADD( StrANd + ' Rec_Sald <> 0 ');
//        StrAnd := ' and ' ;
//     end ;

  if RecNotasFiscais.Ordenacao = '1' then
     Q_NOTASFISCAIS.SQL.ADD( ' Order by NFI_CLIE' )  ;

  if RecNotasFiscais.Ordenacao = '2' then
     Q_NOTASFISCAIS.SQL.ADD( ' Order by NFI_VEND' )  ;

  if RecNotasFiscais.Ordenacao = '3' then
     Q_NOTASFISCAIS.SQL.ADD( ' Order by NFI_DEMI' )  ;

  Q_NOTASFISCAIS.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFLstNotasFiscais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_NOTASFISCAIS.close;
  action:=cafree;
end;

procedure TFLstNotasFiscais.LST_RecNotasFiscaisBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
   QRLabel20.caption := FMenu.FUsuario ;
end;
end.

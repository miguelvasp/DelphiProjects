unit RelRecCRSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwtable, Wwdatsrc, quickrpt, Qrctrls, ExtCtrls;

type
  TFlstRecCRSint = class(TForm)
    LST_RecCRSint: TQuickRep;
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
    QRLabel7: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    DS_Rec: TwwDataSource;
    Q_Rec: TwwQuery;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_APELIDO: TStringField;
    QRExpr4: TQRExpr;
    QRShape3: TQRShape;
    Q_Grava: TwwQuery;
    Q_CLIECLI_CODI: TAutoIncField;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    Q_RecREC_NFIS: TStringField;
    Q_RecREC_CODI: TIntegerField;
    Q_Recyvalor: TFloatField;
    Q_Recxvalor: TFloatField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_RecCRSintBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    StrEntrou : string[1] ;
  end;

var
  FlstRecCRSint: TFlstRecCRSint;

implementation
 uses RelFrec, CPPMENU ;
{$R *.DFM}


procedure TFlstRecCRSint.FormCreate(Sender: TObject);
var StrTipo : string ;
    StrAnd  : string ;
begin
  QRGroup1.enabled  := false ;
  QRGroup1.expression := '' ;
  QrLabel11.enabled := false ;
  QRDBText6.enabled := false;

  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';

  QRLabel2.caption := 'Relatório Sintético de Contas a Receber por C.R. - ' + StrTipo ;
  Q_Rec.close ;
  Q_Rec.SQL.clear ;

  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0) then begin
     Q_Rec.SQL.ADD('Select A.REC_CODI,A.REC_NFIS,');
     Q_Rec.SQL.ADD('SUM (A.REC_VLIQ) as xvalor, ');
     Q_Rec.SQL.ADD('SUM (A.REC_SALD) as yvalor ');
     Q_Rec.SQL.ADD('from CPARECE A, cpaclie b   ');
     Q_rec.sql.add(' where a.rec_clie = b.cli_codi ');

     StrAnd := ' and ' ;
     if NumeroI <> '' then begin
        Q_Rec.SQL.ADD(   StrAnd + ' a.Rec_Codi >= ' + NumeroI );
     end;
     if NumeroF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Codi <= ' + NumeroF );
     end;
     if ClienteI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' b.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
     end;
     if ClienteF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' b.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
     end;
     if FilialI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Fili >= '+''''+ FilialI +'''');
     end;
     if FilialF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Fili <= '+''''+ FilialF +'''');
     end;
     if DOCUMENTOI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
     end;
     if DOCUMENTOF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
     end;
     if ContaGerencialI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Cger >= '+''''+ ContaGerencialI +'''');
     end;
     if ContaGerencialF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Cger <= '+''''+ ContaGerencialF +'''');
     end;
     if VencimentoI <> 0.0 then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     end;
     if VencimentoF <> 0.0 then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     end;
     if EMISSAOI <> 0.0 then begin
        Q_rEC.SQL.ADD( StrAnd + ' A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     end;
     if EMISSAOF <> 0.0 then begin
        Q_Rec.SQL.ADD( StrAnd + ' A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     end;
     if PortadorI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Banc >= '+''''+ PortadorI +'''');
     end;
     if PortadorF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' a.Rec_Banc <= '+''''+ PortadorF +'''');
     end;
     if Tipo = 0  then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Sald = 0 ');
     end;
     if Tipo = 1   then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Sald <> 0 ');
     end;
  end else begin

     Q_Rec.SQL.ADD('Select A.REC_CODI,A.REC_NFIS,');
     Q_Rec.SQL.ADD('SUM (A.REC_VLIQ) as xvalor, ');
     Q_Rec.SQL.ADD('SUM (A.REC_SALD) as yvalor ');
     Q_Rec.SQL.ADD('from CPARECE A, cpaclie b   ');
     Q_rec.sql.add(' where a.rec_clie = b.cli_codi ');

     StrAnd := ' and ' ;
     if NumeroI <> '' then begin
        Q_Rec.SQL.ADD(   StrAnd + ' Rec_Codi >= ' + NumeroI );
     end;
     if NumeroF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Codi <= ' + NumeroF );
     end;
     if ClienteI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' CLI_APELIDO >= '+ ''''+ ClienteI + '''');
     end;
     if ClienteF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
     end;
     if FilialI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Fili >= '+''''+ FilialI +'''');
     end;
     if FilialF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Fili <= '+''''+ FilialF +'''');
     end;
     if DOCUMENTOI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
     end;
     if DOCUMENTOF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
     end;
     if ContaGerencialI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Cger >= '+''''+ ContaGerencialI +'''');
     end;
     if ContaGerencialF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Cger <= '+''''+ ContaGerencialF +'''');
     end;
     if VencimentoI <> 0.0 then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
     end;
     if VencimentoF <> 0.0 then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
     end;
     if EMISSAOI <> 0.0 then begin
        Q_rEC.SQL.ADD( StrAnd + ' A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
     end;
     if EMISSAOF <> 0.0 then begin
        Q_Rec.SQL.ADD( StrAnd + ' A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
     end;
     if PortadorI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Banc >= '+''''+ PortadorI +'''');
     end;
     if PortadorF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Banc <= '+''''+ PortadorF +'''');
     end;

     if (Tipo = 0) then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Sald = 0 ');
     end;
     if (Tipo = 1) then begin
        Q_Rec.SQL.ADD( StrAnd + ' Rec_Sald <> 0 ');
     end;

     Q_REC.Sql.Add( StrAnd + ' REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI') ;
     StrAnd := ' and ' ;

     if RECEBIMENTOI <> 0.0 then begin
        Q_REC.Sql.Add( StrAnd + ' IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
     end ;
     if RECEBIMENTOF <> 0.0 then begin
        Q_REC.Sql.Add( StrAnd + ' IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
     end ;
     if BancocontaI <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Ire_Banc >= '+''''+ BancoContaI +'''');
     end ;
     if BancocontaF <> '' then begin
        Q_Rec.SQL.ADD( StrAnd + ' Ire_Banc <= '+''''+ BancoContaF +'''' );
     end ;
     if LOTEI <> ''  then begin
        Q_Rec.SQL.ADD( StrAnd + ' Ire_DOCT >= '+''''+ LOTEI +'''' );
     end ;
     if LOTEF <> ''  then begin
        Q_Rec.SQL.ADD( StrAnd + ' Ire_DOCT <= '+''''+ LOTEF +'''' );
     end ;
     Q_rec.Sql.Add(' )') ;
  end ;

  Q_REC.SQL.ADD( ' group by A.REC_CODI, A.REC_NFIS Order by REC_CODI' )  ;
  Q_REC.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstRecCRSint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_REC.close;
  action:=cafree;
end;

procedure TFlstRecCRSint.LST_RecCRSintBeforePrint(Sender: TCustomQuickRep;
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

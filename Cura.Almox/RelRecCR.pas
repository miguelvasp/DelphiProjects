unit RelRecCR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwtable, Wwdatsrc, quickrpt, Qrctrls, ExtCtrls;

type
  TFlstRecCR = class(TForm)
    LST_RecCR: TQuickRep;
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
    QRLabel7: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    DS_Rec: TwwDataSource;
    Q_Rec: TwwQuery;
    Q_RecREC_CODI: TIntegerField;
    Q_RecREC_NFIS: TStringField;
    Q_RecREC_CGER: TStringField;
    Q_RecREC_VLIQ: TFloatField;
    Q_RecREC_VENC: TDateTimeField;
    Q_RecREC_EMIS: TDateTimeField;
    Q_RecREC_SALD: TFloatField;
    Q_RecREC_FILI: TStringField;
    QRDBText18: TQRDBText;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    Q_RecREC_BANC: TStringField;
    QRLabel8: TQRLabel;
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
    Q_RecREC_CLIE: TIntegerField;
    Q_RecCLI_APELIDO: TStringField;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_RecCRBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    StrEntrou : string[1] ;
  end;

var
  FlstRecCR: TFlstRecCR;

implementation
 uses RelFrec, CPPMENU ;
{$R *.DFM}


procedure TFlstRecCR.FormCreate(Sender: TObject);
var StrTipo : string ;
    StrAnd : string ;
begin
  QRGroup1.enabled  := false ;
  QRGroup1.expression := '' ;
  QrLabel11.enabled := false ;
  QRDBText6.enabled := false;
  QrLabel17.enabled := false ;
  QRDBText10.enabled := false ;

  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';

  QRLabel2.caption := 'Relatório Analítico de Contas a Receber - C.R. ' + StrTipo ;
  Q_Rec.close ;
  Q_Rec.SQL.clear ;

  if (RECEBIMENTOI = 0.0) and (RECEBIMENTOF = 0.0) and (BancoContaI = '') and (BancoContaF = '') and (LOTEI = '') and (LOTEF = '' ) and (TIPO <> 0) then begin
     Q_Rec.SQL.ADD('Select A.REC_CODI,A.REC_NFIS, A.REC_VLIQ, A.REC_VENC, ');
     Q_Rec.SQL.ADD('A.REC_BANC, A.REC_EMIS, A.REC_SALD, A.REC_CGER,');
     Q_Rec.SQL.ADD('A.REC_FILI, A.REC_CLIE, c.cli_apelido ');
     Q_Rec.SQL.ADD('from CPARECE A, cpaclie c   ');
     Q_Rec.SQL.ADD('where A.rec_clie = c.cli_codi ');
     StrAnd := ' and ';
//     Q_Rec.SQL.ADD('where A.REC_CLIE = D.CLI_CODI');

     if NumeroI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Codi >= ' + NumeroI );
        StrAnd := ' and ';
     end;
     if NumeroF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Codi <= ' + NumeroF );
        StrAnd := ' and ';
     end;
     if ClienteI <> '' then begin
        Q_Rec.SQL.ADD( Strand + ' c.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
        StrAnd := ' and ';
     end;
     if ClienteF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  c.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
        StrAnd := ' and ';
     end;
     if FilialI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Fili >= '+''''+ FilialI +'''');
        StrAnd := ' and ';
     end;
     if FilialF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Fili <= '+''''+ FilialF +'''');
        StrAnd := ' and ';
     end;
     if DOCUMENTOI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
        StrAnd := ' and ';
     end;
     if DOCUMENTOF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
        StrAnd := ' and ';
     end;
     if ContaGerencialI <> '' then begin
        Q_Rec.SQL.ADD(  StrAnd + ' Rec_Cger >= '+''''+ ContaGerencialI +'''');
        StrAnd := ' and ';
     end;
     if ContaGerencialF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Cger <= '+''''+ ContaGerencialF +'''');
        StrAnd := ' and ';
     end;
     if VencimentoI <> 0.0 then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if VencimentoF <> 0.0 then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if EMISSAOI <> 0.0 then begin
        Q_rEC.SQL.ADD( Strand + '  Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if EMISSAOF <> 0.0 then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if PortadorI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Banc >= '+''''+ PortadorI +'''');
        StrAnd := ' and ';
     end;
     if PortadorF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Banc <= '+''''+ PortadorF +'''');
        StrAnd := ' and ';
     end;
     if Tipo = 1 then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Sald <> 0 ');
        StrAnd := ' and ';
     end;
  end else begin
     Q_Rec.SQL.ADD('Select A.REC_CODI,A.REC_NFIS, A.REC_VLIQ, A.REC_VENC, ');
     Q_Rec.SQL.ADD('A.REC_BANC, A.REC_EMIS, A.REC_SALD, A.REC_CGER,');
     Q_Rec.SQL.ADD('A.REC_FILI, A.REC_CLIE, c.cli_apelido ');
     Q_Rec.SQL.ADD('from CPARECE A, cpaclie c   ');
     Q_Rec.SQL.ADD('where A.rec_clie = c.cli_codi ');
     StrAnd := ' and ';

//     StrAnd := ' WHERE ';
//     Q_Rec.SQL.ADD('where A.REC_CLIE = D.CLI_CODI');

     if NumeroI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Codi >= ' + NumeroI );
        StrAnd := ' and ';
     end;
     if NumeroF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Codi <= ' + NumeroF );
        StrAnd := ' and ';
     end;
     if ClienteI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  c.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
        StrAnd := ' and ';
     end;
     if ClienteF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  c.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
        StrAnd := ' and ';
     end;
     if FilialI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Fili >= '+''''+ FilialI +'''');
        StrAnd := ' and ';
     end;
     if FilialF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Fili <= '+''''+ FilialF +'''');
         StrAnd := ' and ';
     end;
     if DOCUMENTOI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
        StrAnd := ' and ';
     end;
     if DOCUMENTOF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
        StrAnd := ' and ';
     end;
     if ContaGerencialI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Cger >= '+''''+ ContaGerencialI +'''');
        StrAnd := ' and ';
     end;
     if ContaGerencialF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Cger <= '+''''+ ContaGerencialF +'''');
        StrAnd := ' and ';
     end;
     if VencimentoI <> 0.0 then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if VencimentoF <> 0.0 then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if EMISSAOI <> 0.0 then begin
        Q_rEC.SQL.ADD( Strand + '  A.Rec_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if EMISSAOF <> 0.0 then begin
        Q_Rec.SQL.ADD( Strand + '  A.Rec_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');
        StrAnd := ' and ';
     end;
     if PortadorI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Banc >= '+''''+ PortadorI +'''');
        StrAnd := ' and ';
     end;
     if PortadorF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Banc <= '+''''+ PortadorF +'''');
         StrAnd := ' and ';
     end;
     Q_REC.Sql.Add(Strand + '  REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI') ;
     StrEntrou := 'N' ;
     StrAnd := ' and ';
     if RECEBIMENTOI <> 0.0 then begin
        Q_REC.Sql.Add(Strand + '  IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
        StrEntrou := 'S' ;
        StrAnd := ' and ';
     end ;
     if RECEBIMENTOF <> 0.0 then begin
        Q_REC.Sql.Add(Strand + '  IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');
        StrEntrou := 'S' ;
        StrAnd := ' and ';
     end ;
     if BancocontaI <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Ire_Banc >= '+''''+ BancoContaI +'''');
        StrEntrou := 'S' ;
        StrAnd := ' and ';
     end ;
     if BancocontaF <> '' then begin
        Q_Rec.SQL.ADD( Strand + '  Ire_Banc <= '+''''+ BancoContaF +'''' );
        StrEntrou := 'S' ;
        StrAnd := ' and ';
     end ;
     if LOTEI <> ''  then begin
        Q_Rec.SQL.ADD( Strand + '  Ire_DOCT >= '+''''+ LOTEI +'''' );
        StrEntrou := 'S' ;
        StrAnd := ' and ';
     end ;
     if LOTEF <> ''  then begin
        Q_Rec.SQL.ADD( Strand + '  Ire_DOCT <= '+''''+ LOTEF +'''' );
        StrEntrou := 'S' ;
        StrAnd := ' and ';
     end ;
     Q_rec.Sql.Add(' )') ;
     if (Tipo = 0) and (StrEntrou = 'N' ) then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Sald = 0 ');
        StrAnd := ' and ';
     end;
     if (Tipo = 1 ) and (StrEntrou = 'N' ) then begin
        Q_Rec.SQL.ADD( Strand + '  Rec_Sald <> 0 ');
        StrAnd := ' and ';
     end;
  end ;
  Q_REC.SQL.ADD( ' Order by REC_CODI' )  ;
  Q_REC.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstRecCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_REC.close;
  action:=cafree;
end;

procedure TFlstRecCR.LST_RecCRBeforePrint(Sender: TCustomQuickRep;
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

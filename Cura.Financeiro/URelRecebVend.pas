unit URelRecebVend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, Wwdatsrc, DBTables, Wwquery, Wwtable;

type
  TFRelRecebVend = class(TForm)
    RecebVend: TQuickRep;
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
    QRLabel18: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape3: TQRShape;
    QRGroup1: TQRGroup;
    Q_Rec: TwwQuery;
    DS_Rec: TwwDataSource;
    Q_RecVEN_NOME: TStringField;
    Q_RecREC_RAZA: TStringField;
    Q_RecREC_CODI: TIntegerField;
    Q_RecREC_NFIS: TStringField;
    Q_RecREC_EMIS: TDateTimeField;
    Q_RecREC_VORI: TFloatField;
    Q_RecREC_SALD: TFloatField;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    Q_RecREC_VENC: TDateTimeField;
    Q_RecIRE_SALD: TFloatField;
    Q_RecIRE_DATA: TDateTimeField;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    Q_TOTS: TwwQuery;
    Q_TOTSTOT_RECEB: TFloatField;
    Q_TOTSTOT_PAGO: TFloatField;
    Q_TOTSTOT_SALDO: TFloatField;
    QRBand4: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRecebVend: TFRelRecebVend;

implementation
uses RelFrec;
{$R *.DFM}

procedure TFRelRecebVend.FormCreate(Sender: TObject);
var StrTipo : string ;
    StrAnd : string ;
begin
  if Tipo = 0 then StrTipo := 'Recebidos';
  if Tipo = 1 then StrTipo := 'A Receber ';
  if Tipo = 2 then StrTipo := 'Todos';

  QRLabel2.caption := 'Relatório Analítico de Contas a Receber - Por Vendedor ' + StrTipo ;

  IF (Lst_Receb_Filt.cbo_SITU.itemindex = 0) then
  begin
       Q_REC.close;
       Q_REC.SQL.clear;
       Q_REC.SQL.add('Select D.VEN_NOME,A.REC_RAZA,A.REC_CODI,A.REC_NFIS,A.REC_EMIS,A.REC_VENC,');
       Q_REC.SQL.add('A.REC_VORI,B.IRE_SALD,B.IRE_DATA,A.REC_SALD  ');
       Q_REC.SQL.add('from cpaIrec B,CPARECE A, cpaclie c,SIAVEND D ');
       Q_Rec.SQL.ADD('where A.rec_clie = c.cli_codi ');
       Q_Rec.SQL.ADD('and   A.REC_CODI = B.IRE_CODI ');
       Q_Rec.SQL.ADD('and   D.VEN_CODI = A.REC_VEND ');

       if EMISSAOI <> 0.0 then
          Q_REC.SQL.add('and A.REC_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
       if EMISSAOF <> 0.0 then
          Q_REC.SQL.add('and A.REC_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');

       if RECEBIMENTOI <> 0.0 then
          Q_REC.SQL.add('and B.IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
       if RECEBIMENTOF <> 0.0 then
          Q_REC.SQL.add('and B.IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');


       if NumeroI <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Codi >= ' + NumeroI );
       if NumeroF <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Codi <= ' + NumeroF );
       if ClienteI <> '' then
          Q_Rec.SQL.ADD( 'and  c.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
       if ClienteF <> '' then
          Q_Rec.SQL.ADD( 'and  c.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
       if FilialI <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Fili >= '+''''+ FilialI +'''');
       if FilialF <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Fili <= '+''''+ FilialF +'''');
       if DOCUMENTOI <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
       if DOCUMENTOF <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
       If ContaGerencialI <> '' then
          Q_Rec.SQL.ADD(  'and  A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
       if ContaGerencialF <> '' then
          Q_Rec.SQL.ADD(  'and  A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
       if VENCIMENTOI <> 0.0 then
          Q_REC.SQL.add('and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
       if VENCIMENTOF <> 0.0 then
          Q_REC.SQL.add('and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
       if PortadorI <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Banc >= '+''''+ PortadorI +'''');
       if PortadorF <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Banc <= '+''''+ PortadorF +'''');
          Q_Rec.SQL.ADD( 'order by D.VEN_NOME');
          Q_REC.OPEN;
  end;

  if (Lst_Receb_Filt.cbo_SITU.itemindex = 1) then
  begin
       Q_REC.close;
       Q_REC.SQL.clear;
       Q_REC.SQL.add('Select D.VEN_NOME,A.REC_RAZA,A.REC_CODI,A.REC_NFIS,A.REC_EMIS,A.REC_VENC,');
       Q_REC.SQL.add('A.REC_VORI,B.IRE_SALD,B.IRE_DATA,A.REC_SALD  ');
       Q_REC.SQL.add('from CPARECE A ');
       Q_REC.SQL.add('LEFT OUTER JOIN CPAIREC B ON A.REC_CODI = B.IRE_CODI, ');
       Q_REC.SQL.add('cpaclie c,  SIAVEND D');
       Q_Rec.SQL.ADD('where A.rec_clie = c.cli_codi ');
       Q_Rec.SQL.ADD('and   D.VEN_CODI = A.REC_VEND ');
       Q_Rec.SQL.ADD('and   A.REC_CODI not in       ');
       Q_Rec.SQL.ADD('(select IRE_CODI from cpaIrec)');

       if EMISSAOI <> 0.0 then
          Q_REC.SQL.add('and A.REC_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
       if EMISSAOF <> 0.0 then
          Q_REC.SQL.add('and A.REC_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');

       if NumeroI <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Codi >= ' + NumeroI );
       if NumeroF <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Codi <= ' + NumeroF );
       if ClienteI <> '' then
          Q_Rec.SQL.ADD( 'and  c.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
       if ClienteF <> '' then
          Q_Rec.SQL.ADD( 'and  c.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
       if FilialI <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Fili >= '+''''+ FilialI +'''');
       if FilialF <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Fili <= '+''''+ FilialF +'''');
       if DOCUMENTOI <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
       if DOCUMENTOF <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
       If ContaGerencialI <> '' then
          Q_Rec.SQL.ADD(  'and  A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
       if ContaGerencialF <> '' then
          Q_Rec.SQL.ADD(  'and  A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
       if VENCIMENTOI <> 0.0 then
          Q_REC.SQL.add('and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
       if VENCIMENTOF <> 0.0 then
          Q_REC.SQL.add('and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
       if PortadorI <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Banc >= '+''''+ PortadorI +'''');
       if PortadorF <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Banc <= '+''''+ PortadorF +'''');
          Q_Rec.SQL.ADD( 'order by D.VEN_NOME');
          Q_REC.OPEN;
  end ;

  if (Lst_Receb_Filt.cbo_SITU.itemindex = 2) then
  begin
  Q_REC.close;
       Q_REC.SQL.clear;
       Q_REC.SQL.add('Select D.VEN_NOME,A.REC_RAZA,A.REC_CODI,A.REC_NFIS,A.REC_EMIS,A.REC_VENC,');
       Q_REC.SQL.add('A.REC_VORI,B.IRE_SALD,B.IRE_DATA,A.REC_SALD  ');
       Q_REC.SQL.add('from CPARECE A left outer join cpairec b on A.REC_CODI = B.IRE_CODI, cpaclie c,SIAVEND D ');
       Q_Rec.SQL.ADD('where A.rec_clie = c.cli_codi ');
       Q_Rec.SQL.ADD('and   D.VEN_CODI = A.REC_VEND ');

       if EMISSAOI <> 0.0 then
          Q_REC.SQL.add('and A.REC_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
       if EMISSAOF <> 0.0 then
          Q_REC.SQL.add('and A.REC_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');

       if RECEBIMENTOI <> 0.0 then
          Q_REC.SQL.add('and B.IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
       if RECEBIMENTOF <> 0.0 then
          Q_REC.SQL.add('and B.IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');


       if NumeroI <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Codi >= ' + NumeroI );
       if NumeroF <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Codi <= ' + NumeroF );
       if ClienteI <> '' then
          Q_Rec.SQL.ADD( 'and  c.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
       if ClienteF <> '' then
          Q_Rec.SQL.ADD( 'and  c.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
       if FilialI <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Fili >= '+''''+ FilialI +'''');
       if FilialF <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_Fili <= '+''''+ FilialF +'''');
       if DOCUMENTOI <> '' then
          Q_Rec.SQL.ADD( 'and  A.Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
       if DOCUMENTOF <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
       If ContaGerencialI <> '' then
          Q_Rec.SQL.ADD(  'and  A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
       if ContaGerencialF <> '' then
          Q_Rec.SQL.ADD(  'and  A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
       if VENCIMENTOI <> 0.0 then
          Q_REC.SQL.add('and A.Rec_Venc,112 >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
       if VENCIMENTOF <> 0.0 then
          Q_REC.SQL.add('and A.Rec_Venc,112 <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
       if PortadorI <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Banc >= '+''''+ PortadorI +'''');
       if PortadorF <> '' then
          Q_Rec.SQL.ADD( 'and A.Rec_Banc <= '+''''+ PortadorF +'''');
          Q_Rec.SQL.ADD( 'order by D.VEN_NOME');
          Q_REC.OPEN;
  end;
  QRMemo1.lines.add(StrFiltro) ;



end;
procedure TFRelRecebVend.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{    IF (Lst_Receb_Filt.REC_SITU.itemindex <> 0) then begin
       QRDBText9.enabled := false;
       QRDBText6.enabled := false;
    end ;}
end;

procedure TFRelRecebVend.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   Q_TOTS.SQL.CLEAR;
   Q_TOTS.SQL.ADD('SELECT SUM(REC_VORI) AS TOT_RECEB, SUM(IRE_SALD) AS TOT_PAGO, ');
   Q_TOTS.SQL.ADD('SUM(REC_SALD) AS TOT_SALDO FROM ');
   if Lst_Receb_Filt.cbo_SITU.itemindex = 0 then
   begin
        Q_TOTS.SQL.ADD('cpaIrec B,CPARECE A, cpaclie c,SIAVEND D ');
        Q_TOTS.SQL.ADD('where A.rec_clie = c.cli_codi ');
        Q_TOTS.SQL.ADD('and   A.REC_CODI = B.IRE_CODI ');
        Q_TOTS.SQL.ADD('and   D.VEN_CODI = A.REC_VEND ');
   end;
   if Lst_Receb_Filt.cbo_SITU.itemindex = 1 then
   begin
       Q_TOTS.SQL.ADD(' CPARECE A ');
       Q_TOTS.SQL.add('LEFT OUTER JOIN CPAIREC B ON A.REC_CODI = B.IRE_CODI, ');
       Q_TOTS.SQL.add('cpaclie c,  SIAVEND D');
       Q_TOTS.SQL.ADD('where A.rec_clie = c.cli_codi ');
       Q_TOTS.SQL.ADD('and   D.VEN_CODI = A.REC_VEND ');
       Q_TOTS.SQL.ADD('and   A.REC_CODI not in       ');
       Q_TOTS.SQL.ADD('(select IRE_CODI from cpaIrec)');
   end;
   if Lst_Receb_Filt.cbo_SITU.itemindex = 2 then
   begin
       Q_TOTS.SQL.ADD(' CPARECE A left outer join cpairec b on A.REC_CODI = B.IRE_CODI, cpaclie c,SIAVEND D ');
       Q_TOTS.SQL.ADD('where A.rec_clie = c.cli_codi ');
       Q_TOTS.SQL.ADD('and   D.VEN_CODI = A.REC_VEND ');
   end;

   if EMISSAOI <> 0.0 then
      Q_TOTS.SQL.add('and A.REC_EMIS >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_INI.text +'''' +',103)');
   if EMISSAOF <> 0.0 then
      Q_TOTS.SQL.add('and A.REC_EMIS <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.EMIS_FIM.text +'''' +',103)');

   if RECEBIMENTOI <> 0.0 then
      Q_TOTS.SQL.add('and B.IRE_DATA >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_INI.text +'''' +',103)');
   if RECEBIMENTOF <> 0.0 then
      Q_TOTS.SQL.add('and B.IRE_DATA <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.REC_FIM.text +'''' +',103)');


   if NumeroI <> '' then
      Q_TOTS.SQL.ADD( 'and  A.Rec_Codi >= ' + NumeroI );
   if NumeroF <> '' then
      Q_TOTS.SQL.ADD( 'and  A.Rec_Codi <= ' + NumeroF );
   if ClienteI <> '' then
      Q_TOTS.SQL.ADD( 'and  c.CLI_APELIDO >= '+ ''''+ ClienteI + '''');
   if ClienteF <> '' then
      Q_TOTS.SQL.ADD( 'and  c.CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );
   if FilialI <> '' then
      Q_TOTS.SQL.ADD( 'and A.Rec_Fili >= '+''''+ FilialI +'''');
   if FilialF <> '' then
      Q_TOTS.SQL.ADD( 'and  A.Rec_Fili <= '+''''+ FilialF +'''');
   if DOCUMENTOI <> '' then
      Q_TOTS.SQL.ADD( 'and  A.Rec_NFIS >= '+''''+ DOCUMENTOI +'''');
   if DOCUMENTOF <> '' then
      Q_TOTS.SQL.ADD( 'and A.Rec_NFIS <= '+''''+ DOCUMENTOF +'''');
   If ContaGerencialI <> '' then
      Q_TOTS.SQL.ADD(  'and  A.Rec_Cger >= '+''''+ ContaGerencialI +'''');
   if ContaGerencialF <> '' then
      Q_TOTS.SQL.ADD(  'and  A.Rec_Cger <= '+''''+ ContaGerencialF +'''');
   if VENCIMENTOI <> 0.0 then
      Q_TOTS.SQL.add('and A.Rec_Venc >= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_INI.text +'''' +',103)');
   if VENCIMENTOF <> 0.0 then
      Q_TOTS.SQL.add('and A.Rec_Venc <= convert(smalldatetime,' +'''' +Lst_Receb_Filt.VENC_FIM.text +'''' +',103)');
   if PortadorI <> '' then
      Q_TOTS.SQL.ADD( 'and A.Rec_Banc >= '+''''+ PortadorI +'''');
   if PortadorF <> '' then
      Q_TOTS.SQL.ADD( 'and A.Rec_Banc <= '+''''+ PortadorF +'''');
   Q_TOTS.SQL.ADD( 'AND D.VEN_NOME = :VEN_NOME');
   Q_TOTS.OPEN;
end;

end.

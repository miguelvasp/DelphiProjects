unit RelRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwtable, Wwdatsrc, quickrpt, Qrctrls, ExtCtrls;

type
  TFlstRec = class(TForm)
    LST_Rec: TQuickRep;
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
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_APELIDO: TStringField;
    QRExpr4: TQRExpr;
    QRShape3: TQRShape;
    Q_Grava: TwwQuery;
    Q_RecREC_CLIE: TIntegerField;
    Q_CLIEcli_codi: TAutoIncField;
    Q_Reccli_apelido: TStringField;
    QRLabel13: TQRLabel;
    QRExpr3: TQRExpr;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel12: TQRLabel;
    QRShape4: TQRShape;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LST_RecBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure LST_RecAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StrEntrou : string[1] ;
  end;

var
  FlstRec: TFlstRec;

implementation
 uses RelFrec, CPPMENU ;
{$R *.DFM}


procedure TFlstRec.FormCreate(Sender: TObject);
var StrTipo : string ;
begin
   if (Ordenacao = '') then
      begin
      QRGroup1.enabled  := false ;
      QRGroup1.expression := '' ;
      end
   else
      begin
      QRGroup1.Enabled  := True ;
      QRGroup1.FooterBand := QRBand3 ;
      Case Ordenacao[1] of
         '1': begin
         QrLabel11.enabled := true;
         QRDBText6.enabled := true;
         QrLabel11.caption :='Conta Gerencial :' ;
         QRDBText6.DataField := 'REC_CGER' ;
         QRGroup1.expression := 'Q_REC.REC_CGER' ;
         end;
         '2': begin
         QrLabel11.enabled := true ;
         QRDBText6.enabled := true ;
         QrLabel11.caption :='Vencimento :' ;
         QRDBText6.DataField := 'REC_VENC' ;
         QRGroup1.expression := 'Q_REC.REC_VENC' ;
         QRLabel17.enabled := false ;
         QRDBText10.enabled := false ;
         end;
         '3': begin
         QrLabel11.enabled := true ;
         QRDBText6.enabled := true ;
         QrLabel11.caption :='Cliente :' ;
         QRDBText6.DataField := 'CLI_APELIDO' ;
         QRGroup1.expression := 'Q_REC.CLI_APELIDO' ;
         QRLabel9.enabled := false ;
         QRDBText4.enabled := false ;
         end;
         '4': begin
         QrLabel11.enabled := true ;
         QRDBText6.enabled := true ;
         QrLabel11.caption :='Centro de Custo :' ;
         QRDBText6.DataField := 'REC_FILI' ;
         QRGroup1.expression := 'Q_REC.REC_FILI' ;
         end;
         '6': begin
         QRGroup1.enabled  := false ;
         QRGroup1.expression := '' ;
         //QrLabel11.enabled := true ;
         //QRDBText6.enabled := true ;
         //QrLabel11.caption :='Documento :' ;
         //QRDBText6.DataField := 'REC_NFIS' ;
         //QRGroup1.expression := 'Q_REC.REC_NFIS' ;
         end;
         '8': begin
         QRGroup1.enabled  := false ;
         QRGroup1.expression := '' ;
         QrLabel11.enabled := false ;
         QRDBText6.enabled := false;
         end;
      end;
   end; //IF

  if SITU = 0 then StrTipo := 'Recebidos';
  if SITU = 1 then StrTipo := 'A Receber ';
  if SITU = 2 then StrTipo := 'Todos';

   Case rTIPO of
      1: QRLabel2.caption := 'Relatório de Contas a Receber por Conta Gerencial - ' + StrTipo;
      2: QRLabel2.caption := 'Relatório de Contas a Receber por Vencimento - ' + StrTipo;
      3: QRLabel2.caption := 'Relatório de Contas a Receber por Cliente - ' + StrTipo;
      4: QRLabel2.caption := 'Relatório de Contas a Receber por Centro de Custo - ' + StrTipo;
      5: QRLabel2.caption := 'Relatório de Contas a Receber de Previsto x Realizado - ' + StrTipo;
      6: QRLabel2.caption := 'Relatório de Contas a Receber por Documento - ' + StrTipo;
      7: ;
      8: QRLabel2.caption := 'Relatório de Contas a Receber por C.R. - ' + StrTipo;
   end;

 Q_Rec.close ;
 Q_Rec.SQL.clear ;
 Q_Rec.SQL.ADD(' SELECT   A.REC_CODI,      '+
               '          A.REC_NFIS,      '+
               '          A.REC_VLIQ,      '+
               '          A.REC_VENC,      '+
               '          A.REC_BANC,      '+
               '          A.REC_EMIS,      '+
               '          A.REC_SALD,      '+
               '          A.REC_CGER,      '+
               '          A.REC_FILI,      '+
               '          A.REC_CLIE,      '+
               '          A.REC_CONF,      '+
               '          B.CLI_APELIDO    '+
               ' FROM CPARECE A, CPACLIE B '+
               ' WHERE A.REC_CLIE = B.CLI_CODI ');

 if Ordenacao = '' then
    Q_REC.Sql.Add(' AND REC_CONF = ' + '''' + 'S' + '''' ) ;

 if NumeroI <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Codi >= ' + NumeroI );

 if NumeroF <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Codi <= ' + NumeroF );

 if ClienteI <> '' then
    Q_Rec.SQL.ADD(' AND CLI_APELIDO >= '+ ''''+ ClienteI + '''');

 if ClienteF <> '' then
    Q_Rec.SQL.ADD(' AND CLI_APELIDO <= '+ ''''+  ClienteF+ '''' );

 if FilialI <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Fili >= '+''''+ FilialI +'''');

 if FilialF <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Fili <= '+''''+ FilialF +'''');

 if DOCUMENTOI <> '' then
    Q_Rec.SQL.ADD(' AND Rec_NFIS >= '+''''+ DOCUMENTOI +'''');

 if DOCUMENTOF <> '' then
    Q_Rec.SQL.ADD(' AND Rec_NFIS <= '+''''+ DOCUMENTOF +'''');

 if ContaGerencialI <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Cger >= '+''''+ ContaGerencialI +'''');

 if ContaGerencialF <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Cger <= '+''''+ ContaGerencialF +'''');

 if VencimentoI <> 0.0 then
    Q_Rec.SQL.ADD(' AND Rec_Venc >= ' + '''' + FormatDateTime('YYYY-MM-DD',VencimentoI) + '''');

 if VencimentoF <> 0.0 then
    Q_Rec.SQL.ADD(' AND Rec_Venc <= ' +'''' + FormatDateTime('YYYY-MM-DD',VencimentoF) + '''');

 if EMISSAOI <> 0.0 then
    Q_Rec.SQL.ADD(' AND Rec_EMIS >= ' +'''' + FormatDateTime('YYYY-MM-DD',EMISSAOI) +'''');

 if EMISSAOF <> 0.0 then
    Q_Rec.SQL.ADD(' AND Rec_EMIS <= ' +'''' + FormatDateTime('YYYY-MM-DD',EMISSAOF) +'''');

 if PortadorI <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Banc >= '+''''+ PortadorI +'''');

 if PortadorF <> '' then
    Q_Rec.SQL.ADD(' AND Rec_Banc <= '+''''+ PortadorF +'''');

 if (RECEBIMENTOI <> 0.0)and
    (RECEBIMENTOF <> 0.0)and
    (BancoContaI  <> '') and
    (BancoContaF  <> '') and
    (LOTEI <> '') and
    (LOTEF <> '') and
    (TIPO = 0) then
    begin

    Q_REC.Sql.Add(' AND a.REC_CODI  in  (Select IRE_CODI from CPAIREC where IRE_CODI = A.REC_CODI');
    StrEntrou := 'N';

    if RECEBIMENTOI <> 0.0 then
      begin
      Q_REC.Sql.Add(' AND IRE_DATA >= ' +'''' + FormatDateTime('YYYY-MM-DD',RECEBIMENTOI) +'''');
      StrEntrou := 'S';
      end;

    if RECEBIMENTOF <> 0.0 then
      begin
      Q_REC.Sql.Add(' AND IRE_DATA <= ' +'''' + FormatDateTime('YYYY-MM-DD',RECEBIMENTOF) +'''');
      StrEntrou := 'S';
      end;
    if BancocontaI <> '' then
      begin
      Q_Rec.SQL.ADD(' AND Ire_Banc >= '+''''+ BancoContaI +'''');
      StrEntrou := 'S';
      end;

    if BancocontaF <> '' then
      begin
      Q_Rec.SQL.ADD(' AND Ire_Banc <= '+''''+ BancoContaF +'''' );
      StrEntrou := 'S';
      end;

    if LOTEI <> ''  then
      begin
      Q_Rec.SQL.ADD(' AND Ire_DOCT >= '+''''+ LOTEI +'''' );
      StrEntrou := 'S';
      end;

    if LOTEF <> ''  then
      begin
      Q_Rec.SQL.ADD(' AND Ire_DOCT <= '+''''+ LOTEF +'''' );
      StrEntrou := 'S';
      end;

    Q_rec.Sql.Add(' )') ;
    end;

    if (Tipo = 0) and (StrEntrou = 'N' ) then
       Q_Rec.SQL.ADD(' AND a.Rec_Sald = 0 ');

    if (Tipo = 1 ) and (StrEntrou = 'N' ) then
       Q_Rec.SQL.ADD(' AND a.Rec_Sald <> 0 ');

 if ordenacao <> '' then
 begin
        Case Ordenacao[1] of
        '1': Q_REC.SQL.ADD(' Order by a.REC_CGER, b.cli_apelido, a.rec_codi');
        '2': Q_REC.SQL.ADD(' Order by a.REC_VENC, b.cli_apelido, a.rec_codi');
        '3': Q_REC.SQL.ADD(' Order by b.cli_apelido, a.rec_codi');
        '4': Q_REC.SQL.ADD(' Order by a.REC_FILI, b.cli_apelido, a.rec_codi');
        '6': Q_REC.SQL.ADD(' Order by a.REC_NFIS, b.cli_apelido, a.rec_codi');
        end;
 end
 else
        Q_REC.SQL.ADD(' Order by a.REC_CODI' );

  Q_REC.open;
  QRMemo1.lines.add(StrFiltro) ;
end;

procedure TFlstRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_REC.close;
  action:=cafree;
end;

procedure TFlstRec.LST_RecBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
//Var
//     vLogo : TBlobField;
begin
//
// Seleciona o Nome da Empresa
//
   QRLabel20.caption := FMenu.FUsuario ;
end;

procedure TFlstRec.LST_RecAfterPrint(Sender: TObject);
begin
   if RelFrec.Ordenacao = '' then
     begin
     Q_Grava.close ;
     Q_Grava.Sql.clear ;
     Q_Grava.Sql.Add('Update CPARECE set REC_CONF = ''''N'''' '+
                     'Where  REC_CONF = ''''S''''') ;
     Q_GRava.ExecSql ;
     end;
end;

end.

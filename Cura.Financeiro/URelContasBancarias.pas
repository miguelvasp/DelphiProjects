unit URelContasBancarias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelContasBancariais = class(TForm)
    QuickRep1: TQuickRep;
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
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    QRGroup1: TQRGroup;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    Q_BANC: TwwQuery;
    DS_BANC: TwwDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_AGEN: TStringField;
    Q_BANCBAN_NAGE: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Q_BANCBAN_SALD: TFloatField;
    Q_BANCBAN_NLAN: TFloatField;
    Q_BANCBAN_LCHE: TStringField;
    Q_BANCBAN_UCHE: TStringField;
    Q_BANCBAN_SALDT: TFloatField;
    Q_BANCBAN_DATAT: TDateTimeField;
    Q_BANCBAN_CARTAGECC: TStringField;
    Q_BANCBAN_CODEMPR: TStringField;
    Q_BANCBAN_Ordem: TIntegerField;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    Q_PAG: TwwQuery;
    DS_PAG: TwwDataSource;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    Q_PAGNUMERO: TIntegerField;
    Q_PAGRAZAO: TStringField;
    Q_PAGVALORTITULO: TFloatField;
    Q_PAGVENCIMENTO: TDateTimeField;
    Q_PAGEMISSAO: TDateTimeField;
    Q_PAGVALORORIGINAL: TFloatField;
    Q_PAGDOCUMENTO: TStringField;
    Q_PAGVALORPAGO: TFloatField;
    Q_PAGDATADEBITO: TDateTimeField;
    QRShape5: TQRShape;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    Q_PAGFIL_DESC: TStringField;
    Q_PAGFILIAL: TStringField;
    Q_BANCFIL_DESC: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelContasBancariais: TFRelContasBancariais;

implementation
USES UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelContasBancariais.FormCreate(Sender: TObject);
VAR SQL: STRING;
    DATA1: String;
    DATA2: String;
begin

    DATA1:= '';
    DATA2:= '';

       SQL:=  ' SELECT 		CBX.*  , ' +
              '                 FIL.FIL_DESC ' +
              ' FROM 	      	CPABANC CBX, ' +
	      '	                CPAFILI FIL   ' +
              ' where           CBX.BAN_CODEMPR = FIL.FIL_CODI  ' +
              ' AND             CBX.BAN_CODI IN (SELECT 		CB.BAN_CODI  ' +
              '                                 FROM 		CPAPAGA CP,  ' +
	      '	                                                CPAIPAG CI,  ' +
	      '	                                                CPABANC CB   ' +
              '                                 WHERE 		CP.NUMERO = CI.NUMERO ' +
              '                                 AND 		CI.BANCOCONTA = CB.BAN_CODI ' +
              '                                 AND             CP.FILIAL <> CB.BAN_CODEMPR ' ;



              IF FPesq_ContasBancarias.cbo_FILIAL_INI.Text <> '' THEN
                 SQL:= SQL + ' AND CP.FILIAL = ' + '''' + FPesq_ContasBancarias.cbo_FILIAL_INI.LookupValue + '''';


              IF FPesq_ContasBancarias.cbo_BANCO_INI.Text <> '' THEN
                 SQL:= SQL + ' AND CB.BAN_CODI = ' + '''' +  FPesq_ContasBancarias.cbo_BANCO_INI.LookupValue + '''';

              IF FPesq_ContasBancarias.DOC_INI.Text <> '' THEN
                 SQL:= SQL + ' AND CI.DOCUMENTO = ' + '''' + FPesq_ContasBancarias.DOC_INI.Text + '''';


              if (FPesq_ContasBancarias.EMIS_INI.Text <> '  /  /  ') THEN
                  DATA1  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_ContasBancarias.EMIS_INI.Text)) ;

              IF  (FPesq_ContasBancarias.EMIS_FIM.Text <> '  /  /  ') then
                   DATA2  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_ContasBancarias.EMIS_FIM.Text)) ;


              IF (DATA1 <> '') AND (DATA2 <> '') THEN
                  SQL := SQL +  ' AND CP.EMISSAO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';


              SQL:= SQL + ')' ;

              IF FPesq_ContasBancarias.wwDBLookupCombo1.Text <> '' THEN
                 SQL:= SQL + ' AND CBX.BAN_CODEMPR = ' + '''' +  FPesq_ContasBancarias.wwDBLookupCombo1.LookupValue + '''';


              SQL:= SQL + ' ORDER BY  FIL.FIL_DESC ' ;


              Q_BANC.CLOSE;
              Q_BANC.SQL.CLEAR;
              Q_BANC.SQL.ADD(SQL);
              Q_BANC.OPEN;

              SQL:=' SELECT 		CP.NUMERO,  ' +
                   '                     EMP.FIL_DESC, ' +
                   '                     CP.RAZAO,      ' +
                   '                     CP.VALORTITULO,  ' +
                   '                     CP.VENCIMENTO,   ' +
                   '                     CP.EMISSAO,      ' +
                   '                     CP.VALORORIGINAL,' +
                   '                     CI.DOCUMENTO,    ' +
                   '                     CI.VALORPAGO,    ' +
                   '                     CI.DATADEBITO,   ' +
                   '                     CP.FILIAL        ' +
                   ' FROM 		CPAPAGA CP,       ' +
                   '                     CPAIPAG CI,       ' +
                   '                     CPABANC CB,         ' +
                   '                     CPAFILI EMP,         ' +
                   '                     CPAFILI EMPB          ' +
                   '     WHERE 		CP.NUMERO = CI.NUMERO   ' +
                   '     AND 		CI.BANCOCONTA = CB.BAN_CODI ' +
                   '     AND             CP.FILIAL = EMP.FIL_CODI     ' +
                   '     AND             CB.BAN_CODEMPR = EMPB.FIL_CODI ' +
                   '     AND 		CB.BAN_CODEMPR <> CP.FILIAL  ' +
                   '     AND             CB.BAN_CODI =:BAN_CODI    ' ;


              IF FPesq_ContasBancarias.cbo_FILIAL_INI.Text <> '' THEN
                 SQL:= SQL + ' AND CP.FILIAL = ' + '''' + FPesq_ContasBancarias.cbo_FILIAL_INI.LookupValue + '''';


              IF FPesq_ContasBancarias.cbo_BANCO_INI.Text <> '' THEN
                 SQL:= SQL + ' AND CB.BAN_CODI = ' + '''' +  FPesq_ContasBancarias.cbo_BANCO_INI.LookupValue + '''';

              IF FPesq_ContasBancarias.DOC_INI.Text <> '' THEN
                 SQL:= SQL + ' AND CI.DOCUMENTO = ' + '''' + FPesq_ContasBancarias.DOC_INI.Text + '''';

              IF (DATA1 <> '') AND (DATA2 <> '') THEN
                  SQL := SQL +  ' AND CP.EMISSAO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';


              SQL:= SQL + 'ORDER BY   CP.EMISSAO ' ;


              Q_PAG.CLOSE;
              Q_PAG.SQL.CLEAR;
              Q_PAG.SQL.ADD(SQL);
              Q_PAG.OPEN;


end;

end.

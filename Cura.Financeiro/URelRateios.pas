unit URelRateios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelRateios = class(TForm)
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
    Q_BANC: TwwQuery;
    DS_BANC: TwwDataSource;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    Q_CON: TwwQuery;
    DS_CON: TwwDataSource;
    Q_CONCDESC: TStringField;
    Q_CONCON_CODI: TStringField;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    Q_BANCCON_DESC: TStringField;
    Q_BANCNumero: TIntegerField;
    Q_BANCVALOR: TFloatField;
    Q_BANCPERCENTUAL: TIntegerField;
    Q_BANCCON_CODI: TStringField;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRateios: TFRelRateios;
  T:TextFile;
  

implementation
USES  UPesq_Rateios, UPesq_ContasBancarias;

{$R *.DFM}

procedure TFRelRateios.FormCreate(Sender: TObject);
VAR SQL: STRING;
    DATA1: String;
    DATA2: String;
begin

    DATA1:= '';
    DATA2:= '';


      SQL:= ' SELECT 	 CON_DESC AS CDESC , ' +
            '            CON_CODI            ' +
            ' FROM 	 CPACONT         ' +
            ' WHERE      CON_CODI IN (SELECT	A.CONTAGERENCIAL ' +
	    '	                      FROM 	CPAPAGA  A,      ' +
	    '			                CPAPACON B       ' +
	    '	                      WHERE       A.NUMERO = B.NUMERO ' ;


             IF FPesq_Rateios.DBLC_FORN.Text <> '' THEN
                 SQL:= SQL + ' AND A.CONTAGERENCIAL =  ' + '''' + FPesq_Rateios.DBLC_FORN.LookupValue + '''';

             IF FPesq_Rateios.DBE_CCU_DESC.Text <> '' THEN
                 SQL:= SQL + ' AND  A.NUMERO = ' + '''' + FPesq_Rateios.DBE_CCU_DESC.Text + '''';


              if (FPesq_Rateios.EMIS_INI.Text <> '  /  /    ') THEN
                  DATA1  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Rateios.EMIS_INI.Text)) ;

              IF  (FPesq_Rateios.EMIS_FIM.Text <> '  /  /    ') then
                   DATA2  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Rateios.EMIS_FIM.Text)) ;


              IF (DATA1 <> '') AND (DATA2 <> '') THEN
                  SQL := SQL +  ' AND A.EMISSAO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';


              SQL:= SQL + ' ) ' ;

              SQL:= SQL + ' ORDER BY 1 ' ;




              Q_CON.CLOSE;
              Q_CON.SQL.CLEAR;
              Q_CON.SQL.ADD(SQL);
              Q_CON.OPEN;


       SQL:= ' SELECT	A.*,    ' +
	     '          B.* ,    ' +
             '          C.CON_DESC  ' +
             ' FROM 	CPAPAGA  A,   ' +
             '	        CPAPACON B,   ' +
             '	        CPACONT  C    ' +
             ' WHERE   A.NUMERO = B.NUMERO   ' +
             ' AND     A.CONTAGERENCIAL =:CON_CODI ' +
             ' AND     B.CON_CODI = C.CON_CODI  ' ;




         IF FPesq_Rateios.DBLC_FORN.Text <> '' THEN
                 SQL:= SQL + ' AND A.CONTAGERENCIAL =  ' + '''' + FPesq_Rateios.DBLC_FORN.LookupValue + '''';

         IF FPesq_Rateios.DBE_CCU_DESC.Text <> '' THEN
                 SQL:= SQL + ' AND  A.NUMERO = ' + '''' + FPesq_Rateios.DBE_CCU_DESC.Text + '''';




         if (FPesq_Rateios.EMIS_INI.Text <> '  /  /    ') THEN
                  DATA1  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Rateios.EMIS_INI.Text)) ;

         IF  (FPesq_Rateios.EMIS_FIM.Text <> '  /  /    ') then
                   DATA2  := formatdatetime('MM/DD/YYYY',strtodate(FPesq_Rateios.EMIS_FIM.Text)) ;


              IF (DATA1 <> '') AND (DATA2 <> '') THEN
                  SQL := SQL +  ' AND A.EMISSAO BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')';


               SQL:= SQL + ' ORDER BY A.NUMERO' ;

              Q_BANC.CLOSE;
              Q_BANC.SQL.CLEAR;
              Q_BANC.SQL.ADD(SQL);
              Q_BANC.OPEN;




end;

end.

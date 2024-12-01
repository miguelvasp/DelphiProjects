unit URelBuscaDin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, jpeg, Db, DBTables, Wwquery, ExtCtrls;

type
  TFRelBuscaDin = class(TForm)
    QuickRep1: TQuickRep;
    DS_ALM: TDataSource;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRImage1: TQRImage;
    QRLabel37: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    Q_AUX: TwwQuery;
    QRDBText9: TQRDBText;
    QRMemo1: TQRMemo;
    QRShape5: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    Q_ALM: TwwQuery;
    Q_ALMDS_LOC: TStringField;
    Q_ALMMAT_DESC: TStringField;
    Q_ALMQTDE_MOSTRA: TFloatField;
    Q_ALMQtdeOC: TFloatField;
    Q_ALMQTDE: TFloatField;
    Q_ALMUNI_ID: TIntegerField;
    Q_ALMMAT_ID: TAutoIncField;
    Q_ALMLOCAL_ID: TAutoIncField;
    Q_ALMMARCA_ID: TIntegerField;
    Q_UN_ORD: TwwQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    Q_MARCA: TwwQuery;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_ALMDSMARCA: TStringField;
    Q_ALMDSUNI: TStringField;
    procedure Q_ALMCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelBuscaDin: TFRelBuscaDin;
  some: boolean;
implementation
USES UBDinAlm;

{$R *.DFM}

procedure TFRelBuscaDin.Q_ALMCalcFields(DataSet: TDataSet);
var     SQL: String;
Begin
    {    SQL := 'SELECT          SUM(OI.QTDE_COMP - ' +
               '                CASE WHEN OI.QTDE_COMP_REC IS NULL THEN 0 ' +
               '                ELSE OI.QTDE_COMP_REC              END) QTDE ' +
               ' FROM           ORDEM_ITEM OI, ' +
               '                ORDEM_CAPA OC ' +
               ' WHERE          OI.NUM_OCOM = OC.NUM_OCOM ' +
               ' AND            OI.MATERIAL_ID = ' + Q_ALMMaterial_ID.AsString +
               ' AND            OC.STATUS <> ' + '''' + 'F' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'T' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'C' + '''' +
               ' AND		(OI.QTDE_COMP - QTDE_COMP_REC > 0.001  OR QTDE_COMP_REC IS  NULL ) ';
     }

             SQL := 'SELECT      SUM(OI.QTDE_ESTQ_COMP - ' +
               '                CASE WHEN OI.QTDE_REC IS NULL THEN 0 ' +
               '                ELSE OI.QTDE_REC              END) QTDE ' +
               ' FROM           ORDEM_COMPRAITEM OI, ' +
               '                ORDEM_COMPRA OC ' +
               ' WHERE          OI.ORD_ID = OC.ORD_ID ' +
               ' AND            OI.MAT_ID = ' + Q_ALMMat_ID.AsString +
               ' AND            OC.STATUS <> ' + '''' + 'F' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'T' + '''' +
               ' AND		OI.STATUS  <> ' + '''' + 'C' + '''' +
               ' AND		(OI.QTDE_COMP - QTDE_COMP_REC > 0.001  OR QTDE_COMP_REC IS  NULL ) ';



        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtdeOC.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtdeOC.AsFloat := 0.0;

        {SQL :=
        ' SELECT	SUM(QTDE) QTDE ' +
        ' FROM		SOL_COMP ' +
        ' WHERE		MATERIAL_ID  = ' + Q_ALMMat_ID.AsString +
        ' AND		STATUS = ' + '''' + 'P' + '''';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtdeSol.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtdeSol.AsFloat := 0.0;


        //ABERTO, IMPRESSO (EMITIDO, ALOCADO E EM PRODUÇÃO*/
        //Cálculo de quantidade empenhada.
        SQL :=
        ' SELECT	SUM(QTDE) QTDE' +
        ' FROM		OS_MAT ' +
        ' WHERE		MATERIAL_ID = ' + Q_ALMMaterial_Id.AsString +
        ' AND		STATUS IN (' + '''' + 'A' + '''' +
                        ',' + '''' + 'I' + '''' +
                        ',' + '''' + 'L' + '''' +
                        ',' + '''' + 'P' + '''' + ')' +
        ' GROUP BY	MATERIAL_ID ';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtde_Emp.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtde_Emp.AsFloat := 0.0;

        //ABERTO, IMPRESSO (EMITIDO, ALOCADO E EM PRODUÇÃO*/
        //Cálculo de quantidade usada para OS ainda não finalizadas, ou seja
        // quanto do empenho já foi gasto.
        SQL :=
        ' SELECT	SUM(APMAT.QTDE) QTDE ' +
        ' FROM		APONT_MAT  APMAT,  ' +
        '		APONT_CAPA APCAP, ' +
        '		OS_SEMI	   OSMI ' +
        ' WHERE		APMAT.APONT_CAPA_ID = APCAP.APONT_CAPA_ID ' +
        ' AND		APCAP.OS_SEMI_ID = OSMI.OS_SEMI_ID ' +
        ' AND		APMAT.MATERIAL_ID = ' + Q_ALMMaterial_ID.AsString +
        ' AND		OSMI.STATUS IN (' + '''' + 'A' + '''' +
                        ',' + '''' + 'I' + '''' +
                        ',' + '''' + 'L' + '''' +
                        ',' + '''' + 'P' + '''' + ')';

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;

        If Q_AUX.FieldByName('QTDE').AsString <> '' then
                Q_ALMQtde_EmpUsa.AsFloat := Q_AUX.FieldByName('QTDE').AsFloat
        Else
                Q_ALMQtde_EmpUsa.AsFloat := 0.0;

        Q_AUX.CLOSE;

        Q_ALMQt_Calc.AsFloat := Q_ALMQtde.AsFloat - Q_ALMQtde_Emp.AsFloat;

        }
end;

procedure TFRelBuscaDin.FormCreate(Sender: TObject);
begin

       qrmemo1.lines.clear;
       qrmemo1.lines.add(strfiltro);

        Q_ALM.CLOSE;
        Q_ALM.SQL.CLEAR;
        Q_ALM.SQL.ADD(SQLREL);
        Q_ALM.open;
        q_marca.open;
        Q_UN_ORD.OPEN;


end;

procedure TFRelBuscaDin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_ALM.close;

end;

procedure TFRelBuscaDin.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        some:= true;
end;

procedure TFRelBuscaDin.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if  some = true then begin

       QRLabel1.Enabled:= false;
       QRLabel9.Enabled:= false;
       QRLabel3.Enabled:= false;
       QRLabel4.Enabled:= false;
       QRLabel5.Enabled:= false;
       QRLabel6.Enabled:= false;
       QRLabel7.Enabled:= false;
       QRLabel8.Enabled:= false;
       QRLabel10.Enabled:= false;


       QRDBText1.Top:= 3;
       QRDBText5.Top:= 3;
       QRDBText2.Top:= 3;
       QRDBText8.Top:= 3;
       QRDBText4.Top:= 3;
       QRDBText6.Top:= 3;
       QRDBText7.Top:= 3;
       QRDBText3.Top:= 3;
       QRDBText9.Top:= 3;

       QRShape1.top:= 20;

       QRGroup1.Height:= 23

       end else begin

       QRLabel1.Enabled:= true;
       QRLabel9.Enabled:= true;
       QRLabel3.Enabled:= true;
       QRLabel4.Enabled:= true;
       QRLabel5.Enabled:= true;
       QRLabel6.Enabled:= true;
       QRLabel7.Enabled:= true;
       QRLabel8.Enabled:= true;
       QRLabel10.Enabled:= true;

       QRDBText1.Top:= 23;
       QRDBText5.Top:= 23;
       QRDBText2.Top:= 23;
       QRDBText8.Top:= 23;
       QRDBText4.Top:= 23;
       QRDBText6.Top:= 23;
       QRDBText7.Top:= 23;
       QRDBText3.Top:= 23;
       QRDBText9.Top:= 23;
       QRShape1.top:= 40;

       QRGroup1.Height:= 46;

       end;


end;

procedure TFRelBuscaDin.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   some:= false;
end;

end.

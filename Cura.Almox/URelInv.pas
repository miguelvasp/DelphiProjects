unit URelInv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, Qrctrls, jpeg, QuickRpt, ExtCtrls;

type
  TFRelInv = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    DS_ITEMS: TwwDataSource;
    Q_ITENS: TwwQuery;
    DS_INV: TwwDataSource;
    Q_INV: TwwQuery;
    Q_ITENSInv_ID: TAutoIncField;
    Q_ITENSNum_Inv: TIntegerField;
    Q_ITENSData: TDateTimeField;
    Q_ITENSN_Lote: TStringField;
    Q_ITENSQtde_Almox: TFloatField;
    Q_ITENSQtde_Inv: TFloatField;
    Q_ITENSTipo: TStringField;
    Q_ITENSUsuario: TStringField;
    Q_ITENSDt_Alt: TDateTimeField;
    Q_ITENSStatus: TStringField;
    QRGroup1: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    Q_INVDATA: TDateTimeField;
    Q_INVNUM_INV: TIntegerField;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    Q_ITENSQtdeCalc: TFloatField;
    QRMemo1: TQRMemo;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    Q_ITENSMat_ID: TIntegerField;
    Q_ITENSFor_Codi: TStringField;
    Q_ITENSMAT_DESC: TStringField;
    QRDBText9: TQRDBText;
    Q_ITENSValid: TDateTimeField;
    Q_ITENSMARCA_DESC: TStringField;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    qrAux: TwwQuery;
    qrAuxREPOSICAO: TFloatField;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    Q_ITENSReposicao: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_ITENSCalcFields(DataSet: TDataSet);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelInv: TFRelInv;
  ExiCab1:Boolean;
  tOTAL : REAL;

implementation
USES UPrepInvCa, UPrepInv, UMenu;
{$R *.DFM}

procedure TFRelInv.FormCreate(Sender: TObject);
VAR SQL : String;
    SQLX: String;
begin
        tOTAL := 0;
        qrmemo1.lines.clear;
        qrmemo1.lines.add(strfiltro) ;

        SQL:= 'SELECT   MIN(DATA)    DATA, ' +
	      '         MIN(NUM_INV) NUM_INV ' +
              ' FROM    INV  ' +
              ' WHERE   NUM_INV = ' + NINV ;



        SQLX:=' SELECT   I.*, ' +
              '          MAT.MAT_DESC,' +
              '	         FORN.FOR_CODI, ' +
              ' MC.MARCA_DESC ' +
              ' FROM     INV I, ' +
              '	         MATERIAIS MAT,  ' +
              '	         CPAFORN FORN,  ' +
	      ' MARCAS MC    ' +
              ' WHERE    I.MAT_ID = MAT.MAT_ID ' +
              ' AND      I.FOR_CODI = FORN.FOR_CODI ' +
              ' AND      I.MARCA_ID = MC.MARCA_ID ' +
              ' AND      I.NUM_INV = :NUM_INV '+
              ' AND      LOCAL_ID = ' + FPrepInv.cboLocal.LookupValue;

        If DIF = TRUE Then begin
           SQLX:= SQLX + ' AND  ABS(QTDE_INV - QTDE_ALMOX) > 0.0001 ';
           QRLabel3.Caption := 'Só os que tenham diferença';

        end;

        SQLX:= SQLX + ' ORDER BY MAT.MAT_DESC ';

        Q_INV.Close;
        Q_INV.SQL.Clear;
        Q_INV.SQL.Add(SQL);
        Q_INV.Open;


        Q_ITENS.Close;
        Q_ITENS.SQL.Clear;
        Q_ITENS.SQL.Add(SQLX);
        Q_ITENS.Open;


end;

procedure TFRelInv.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
// ExiCab1 := true;
end;

procedure TFRelInv.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{ if ExiCab1 then
 Begin
    QRLabel10.Enabled := False;
    QRLabel5.Enabled := False;
    QRLabel9.Enabled := False;
    QRLabel8.Enabled := False;
    QRLabel6.Enabled := False;
    QRShape3.Enabled:= FALSE;
     QRDBText2.Top:= 2;
     QRDBText3.TOP:=2;
     QRDBText7.Top:= 2;
     QRDBText6.Top:= 2;
     QRDBText5.Top:= 2;

     QRSubDetail1.Height := 22
 END
 ELSE BEGIN
    QRLabel10.Enabled := TRUE;
    QRLabel5.Enabled := TRUE;
    QRLabel9.Enabled := TRUE;
    QRLabel8.Enabled := TRUE;
    QRLabel6.Enabled := TRUE;
    QRShape3.Enabled:= TRUE;
      QRDBText2.Top:= 25;
     QRDBText3.TOP:= 25;
     QRDBText7.Top:= 25;
     QRDBText6.Top:= 25;
     QRDBText5.Top:= 25;
     QRSubDetail1.Height := 44

 END; }



 // qrAux.Close;
 // qrAux.Params[0].Value := Q_ITENSMat_ID.AsInteger;
 // qrAux.Open;

  QRLabel16.Caption := FormatFloat('###,###,##0.00', Q_ITENSReposicao.AsFloat);
  QRLabel17.Caption := FormatFloat('###,###,##0.00', Q_ITENSReposicao.AsFloat * Q_ITENSQtdeCalc.AsFloat);
  tOTAL := tOTAL + Q_ITENSReposicao.AsFloat * Q_ITENSQtdeCalc.AsFloat;







end;

procedure TFRelInv.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
       //  ExiCab1 := FALSE;
end;

procedure TFRelInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_INV.CLOSE;
        Q_ITENS.CLOSE;
end;

procedure TFRelInv.Q_ITENSCalcFields(DataSet: TDataSet);
begin
  If Q_ItensQtde_Inv.AsString <> '' then
                Q_ItensQtdeCalc.AsFloat := Q_ItensQtde_Inv.AsFloat - Q_ItensQtde_Almox.AsFloat;
end;

procedure TFRelInv.QRDBText6Print(sender: TObject; var Value: String);
begin

if FPrepInv.CheckBox1.Checked then
        Value := '';
end;

procedure TFRelInv.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption := FormatFloat('###,###,##0.00', tOTAL );
  tOTAL := 0;
end;

end.

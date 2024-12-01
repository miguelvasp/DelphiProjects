unit URelInvPre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, DBTables, Wwquery, Wwdatsrc, jpeg, ExtCtrls;

type
  TFRelInvPre = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    DS_INV: TwwDataSource;
    Q_ITENS: TwwQuery;
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
    DS_ITEMS: TwwDataSource;
    Q_INV: TwwQuery;
    Q_INVDATA: TDateTimeField;
    Q_INVNUM_INV: TIntegerField;
    QRGroup1: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRBand2: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel48: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand3: TQRBand;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape17: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    Q_ITENSQtdeCalc: TFloatField;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    Q_ITENSMat_ID: TIntegerField;
    Q_ITENSFor_Codi: TStringField;
    Q_ITENSValid: TDateTimeField;
    Q_ITENSMAT_DESC: TStringField;
    Q_ITENSMARCA_DESC: TStringField;
    QRDBText10: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRDBText11: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure Q_ITENSCalcFields(DataSet: TDataSet);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  

 

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelInvPre: TFRelInvPre;
   ExiCab1:Boolean;
   PAGE : INTEGER;
   
implementation
uses UPrepInv, UMenu;

{$R *.DFM}

procedure TFRelInvPre.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 //ExiCab1 := true;
end;

procedure TFRelInvPre.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 {if ExiCab1 then
 Begin
    QRLabel10.Enabled := False;
    QRLabel5.Enabled := False;
    QRLabel9.Enabled := False;
    QRLabel8.Enabled := False;
    QRLabel6.Enabled := False;
  //  QRShape7.Enabled:= FALSE;
     QRDBText2.Top:= 3;
     QRDBText3.TOP:=3;
     QRDBText7.Top:= 3;
     QRDBText6.Top:= 3;
     QRDBText5.Top:= 3;

     QRSubDetail1.Height := 24
 END
 ELSE BEGIN
    QRLabel10.Enabled := TRUE;
    QRLabel5.Enabled := TRUE;
    QRLabel9.Enabled := TRUE;
    QRLabel8.Enabled := TRUE;
    QRLabel6.Enabled := TRUE;
 //   QRShape3.Enabled:= TRUE;
      QRDBText2.Top:= 25;
     QRDBText3.TOP:= 25;
     QRDBText7.Top:= 25;
     QRDBText6.Top:= 25;
     QRDBText5.Top:= 25;
     QRSubDetail1.Height := 48

end; }
end;

procedure TFRelInvPre.FormCreate(Sender: TObject);
VAR SQL : STRING;
    SQLX: STRING;
begin
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


        If QTDEDIF = TRUE  Then Begin
           SQLX:= SQLX + ' AND         I.QTDE_INV IS NULL ';
           QRLabel3.Caption := 'Qtde. Inv. não preenchida';
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

procedure TFRelInvPre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         Q_INV.close;
         Q_ITENS.close;
end;

procedure TFRelInvPre.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  //ExiCab1 := FALSE;
end;


procedure TFRelInvPre.Q_ITENSCalcFields(DataSet: TDataSet);
begin
      If Q_ItensQtde_Inv.AsString <> '' then
         Q_ItensQtdeCalc.AsFloat := Q_ItensQtde_Inv.AsFloat - Q_ItensQtde_Almox.AsFloat;
end;

procedure TFRelInvPre.QRDBText6Print(sender: TObject; var Value: String);
begin
//if FPrepInv.CheckBox1.Checked then
//        Value := '';
end;

end.

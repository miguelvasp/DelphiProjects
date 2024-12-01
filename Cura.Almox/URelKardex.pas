unit URelKardex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, jpeg, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelKardex = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    DS_KDX: TwwDataSource;
    Q_KDX: TwwQuery;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape5: TQRShape;
    Q_TOT: TwwQuery;
    Q_TOTQTDE: TFloatField;
    QRLabel10: TQRLabel;
    Q_KDXKAR_ID: TAutoIncField;
    Q_KDXMAT_ID: TIntegerField;
    Q_KDXMARCA_ID: TIntegerField;
    Q_KDXLOCAL_ID: TIntegerField;
    Q_KDXN_LOTE: TStringField;
    Q_KDXVALID: TDateTimeField;
    Q_KDXDATA: TDateTimeField;
    Q_KDXTIPO: TStringField;
    Q_KDXQTDE: TFloatField;
    Q_KDXSALDO: TFloatField;
    Q_KDXUSUARIO: TStringField;
    Q_KDXUSUARIOATIVO: TStringField;
    Q_KDXTD_ID: TIntegerField;
    Q_KDXDOCTO: TStringField;
    Q_KDXFOR_CODI: TStringField;
    Q_KDXalmox_id: TIntegerField;
    Q_KDXDESCRICAO: TStringField;
    Q_KDXFOR_RAZA: TStringField;
    Q_KDXMATERIAL: TStringField;
    Q_KDXLOCAL: TStringField;
    Q_KDXMARCA_DESC: TStringField;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    Q_KDXUNI_ID: TIntegerField;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelKardex: TFRelKardex;
  some : boolean;

implementation

uses UKardex, Unt_Senha, UMenu;

{$R *.DFM}

procedure TFRelKardex.FormCreate(Sender: TObject);
var SQL: STRING;
begin
        qrmemo1.lines.clear ;

            SQL:= '';

        IF MATERIAL <> '' THEN
           SQL:= ' AND A.mat_id = ' + MATERIAL;

        IF FORNECEDOR <> '' THEN
           SQL:= SQL + ' AND  A.for_codi = ' + FORNECEDOR;

        IF LOTE <> '' THEN
           SQL:= SQL +' AND  A.N_LOTE = ' + '''' + LOTE + '''';

        Q_KDX.CLOSE;
        Q_KDX.SQL.CLEAR;
        Q_KDX.SQL.ADD(SQLORDAN);
        Q_KDX.Open;

        Q_TOT.SQL.ADD(SQL);
        Q_TOT.OPEN;

        QRLabel10.Caption:= formatfloat('###,###,##0.00',Q_TOT.FieldByName('QTDE').asfloat ) ;

end;

procedure TFRelKardex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_KDX.Close;
        Q_TOT.close;
end;

procedure TFRelKardex.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if some then begin
     QRLabel4.Enabled:= false;
    // QRLabel8.Enabled:= false;
    // QRLabel11.Enabled:= false;
     //QRLabel6.Enabled:= false;
    // QRLabel5.Enabled:= false;
   //  QRLabel7.Enabled:= false;
   //  QRLabel9.Enabled:= false;
     end
     else begin
     QRLabel4.Enabled:= true;
     //QRLabel8.Enabled:= true;
     //QRLabel11.Enabled:= true;
   //  QRLabel6.Enabled:= true;
   //  QRLabel5.Enabled:= true;
   ///  QRLabel7.Enabled:= true;
   //  QRLabel9.Enabled:= true;
     end;



  IF Q_KDXTIPO.AsString = 'E' THEN BEGIN
        QRDBText2.Font.Color := CLBLACK;
        QRDBText3.Font.Color := CLBLACK;
        QRDBText7.Font.Color := CLBLACK;
        QRDBText6.Font.Color := CLBLACK;
        QRDBText9.Font.Color := CLBLACK;
        QRDBText5.Font.Color := CLBLACK;
        QRDBText4.Font.Color := CLBLACK;
       END

       else BEGIN
        QRDBText2.Font.Color := CLred;
        QRDBText3.Font.Color := CLred;
        QRDBText7.Font.Color := CLred;
        QRDBText6.Font.Color := CLred;
        QRDBText9.Font.Color := CLred;
        QRDBText5.Font.Color := CLred;
        QRDBText4.Font.Color := CLred;


end;
end;

procedure TFRelKardex.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        some := true;
end;

procedure TFRelKardex.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
some:= false
end;

end.

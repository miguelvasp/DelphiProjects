unit URelKardexSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, Qrctrls, QuickRpt, jpeg, ExtCtrls;

type
  TFRelKardexSint = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape4: TQRShape;
    QRDBText9: TQRDBText;
    QRBand2: TQRBand;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    DS_KDXSINT: TwwDataSource;
    Q_KDXSINT: TwwQuery;
    QRDBText3: TQRDBText;
    QRMemo1: TQRMemo;
    Q_TOT: TwwQuery;
    Q_TOTQTDE: TFloatField;
    QRLabel5: TQRLabel;
    Q_KDXSINTKAR_ID: TAutoIncField;
    Q_KDXSINTMAT_ID: TIntegerField;
    Q_KDXSINTMARCA_ID: TIntegerField;
    Q_KDXSINTLOCAL_ID: TIntegerField;
    Q_KDXSINTN_LOTE: TStringField;
    Q_KDXSINTVALID: TDateTimeField;
    Q_KDXSINTDATA: TDateTimeField;
    Q_KDXSINTTIPO: TStringField;
    Q_KDXSINTQTDE: TFloatField;
    Q_KDXSINTSALDO: TFloatField;
    Q_KDXSINTUSUARIO: TStringField;
    Q_KDXSINTUSUARIOATIVO: TStringField;
    Q_KDXSINTTD_ID: TIntegerField;
    Q_KDXSINTDOCTO: TStringField;
    Q_KDXSINTFOR_CODI: TStringField;
    Q_KDXSINTalmox_id: TIntegerField;
    Q_KDXSINTDESCRICAO: TStringField;
    Q_MAT: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_KDXSINTMaterial: TStringField;
    Q_KDXSINTUNI_ID: TIntegerField;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  FRelKardexSint: TFRelKardexSint;
  some :boolean;

implementation
uses UKardex, Unt_Senha, UMenu;
{$R *.DFM}

procedure TFRelKardexSint.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if some then begin
     QRLabel4.Enabled:= false;
     QRLabel8.Enabled:= false;

     QRLabel6.Enabled:= false;

     QRLabel7.Enabled:= false;
     //QRLabel9.Enabled:= false;
     end
     else begin
     QRLabel4.Enabled:= true;
     QRLabel8.Enabled:= true;

     QRLabel6.Enabled:= true;

     QRLabel7.Enabled:= true;
    // QRLabel9.Enabled:= true;
     end;




    IF  Q_KDXsintTIPO.AsString = 'E' THEN BEGIN
        QRDBText2.Font.Color := CLBLACK;
        QRDBText3.Font.Color := CLBLACK;
        QRDBText7.Font.Color := CLBLACK;

        QRDBText9.Font.Color := CLBLACK;
        QRDBText5.Font.Color := CLBLACK;
        QRDBText4.Font.Color := CLBLACK;
       END

       else BEGIN
        QRDBText2.Font.Color := CLred;
        QRDBText3.Font.Color := CLred;
        QRDBText7.Font.Color := CLred;
       
        QRDBText9.Font.Color := CLred;
        QRDBText5.Font.Color := CLred;
        QRDBText4.Font.Color := CLred;

end;
end;
procedure TFRelKardexSint.FormCreate(Sender: TObject);
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

        Q_KDXSINT.SQL.ADD(' AND A.USUARIOATIVO = ' + ''''+ StrUsuario+'''');
        Q_KDXSINT.SQL.ADD(SQLORDSIN);
        Q_KDXSINT.Open;

        Q_TOT.SQL.ADD(SQL);
        Q_TOT.OPEN;
        Q_MAT.close;
        Q_MAT.open;

        QRLabel5.Caption:= formatfloat('###,###,##0.00',Q_TOT.FieldByName('QTDE').asfloat ) ;

end;



procedure TFRelKardexSint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_KDXSINT.Close;
        Q_TOT.CLOSE;
end;

procedure TFRelKardexSint.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
      some:= true;
end;

procedure TFRelKardexSint.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
       some:= false;
end;

end.


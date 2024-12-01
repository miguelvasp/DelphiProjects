unit URelRecMerc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, Db, DBTables, Wwquery, Wwdatsrc, jpeg, ExtCtrls;

type
  TFRelRecMerc = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    DS_RECMER: TwwDataSource;
    Q_RECMER: TwwQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    Q_RECMERFOR_CODI: TStringField;
    Q_RECMERMAT_DESC: TStringField;
    Q_RECMERRec_ID: TAutoIncField;
    Q_RECMERNFIS: TIntegerField;
    Q_RECMERSerie: TStringField;
    Q_RECMERDt_Entrada: TDateTimeField;
    Q_RECMERCFO: TStringField;
    Q_RECMERCfa_Sequ: TIntegerField;
    Q_RECMERDt_Emiss: TDateTimeField;
    Q_RECMERCond_Pgto_ID: TIntegerField;
    Q_RECMERLocal_ID: TIntegerField;
    Q_RECMERICMS: TFloatField;
    Q_RECMERIPI: TFloatField;
    Q_RECMERCodICMS: TStringField;
    Q_RECMERCodIPI: TStringField;
    Q_RECMERVl_ICMS: TFloatField;
    Q_RECMERVl_IPI: TFloatField;
    Q_RECMERBase_ICMS: TFloatField;
    Q_RECMERBase_IPI: TFloatField;
    Q_RECMERFrete: TStringField;
    Q_RECMERVl_Frete: TFloatField;
    Q_RECMERVl_Seguro: TFloatField;
    Q_RECMERVl_OutrasDesp: TFloatField;
    Q_RECMERVl_TotMer: TFloatField;
    Q_RECMERVl_TotNF: TFloatField;
    Q_RECMERStatus: TStringField;
    Q_RECMERFOR_CODI_1: TStringField;
    Q_RECMERRec_Item_ID: TAutoIncField;
    Q_RECMERRec_ID_1: TIntegerField;
    Q_RECMERMat_ID: TIntegerField;
    Q_RECMERQtde: TFloatField;
    Q_RECMERQtde_OC: TFloatField;
    Q_RECMERPreco_Unit: TFloatField;
    Q_RECMERICMS_1: TFloatField;
    Q_RECMERIPI_1: TFloatField;
    Q_RECMERVl_ICMS_1: TFloatField;
    Q_RECMERVl_IPI_1: TFloatField;
    Q_RECMERVl_Total: TFloatField;
    Q_RECMERAlterar: TStringField;
    Q_RECMERMarca_ID: TIntegerField;
    Q_RECMERStatus_1: TStringField;
    Q_RECMERIORD_ID: TIntegerField;
    Q_RECMERORD_ID: TIntegerField;
    Q_RECMERMATMARCA_ID: TIntegerField;
    QRDBImage1: TQRDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRecMerc: TFRelRecMerc;

implementation
USES URecebPesq, UMenu;
{$R *.DFM}

procedure TFRelRecMerc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_RECMER.Close;
        Action := caFree;
end;

procedure TFRelRecMerc.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if Q_RECMERStatus.AsString = 'F' THEN
       QRLabel10.Caption:= 'Finalizado'

    else if Q_RECMERStatus.AsString = 'P' THEN
            QRLabel10.Caption:= 'Parcial'
         else
            QRLabel10.Caption:= 'Aberto'
end;

procedure TFRelRecMerc.FormCreate(Sender: TObject);
begin
        IF SQL_MERC = '' THEN
           Q_RECMER.OPEN
        ELSE BEGIN
            Q_RECMER.CLOSE;
            Q_RECMER.SQL.CLEAR;
            Q_RECMER.SQL.ADD(SQL_MERC);
            Q_RECMER.OPEN;

        end;
end;

end.

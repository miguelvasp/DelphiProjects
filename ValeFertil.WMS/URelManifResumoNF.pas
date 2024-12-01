unit URelManifResumoNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, Wwquery, Wwdatsrc, jpeg;

type
  TFRelManifResumoNF = class(TForm)
    RESUMONF: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    Q_INF: TwwQuery;
    Q_INFPRO_COD: TStringField;
    Q_INFPRO_DESC: TStringField;
    Q_INFINF_QTDE: TFloatField;
    Q_INFINF_PUNI: TFloatField;
    Q_INFINF_AIPI: TFloatField;
    Q_INFINF_VIPI: TFloatField;
    Q_INFINF_TOTA: TFloatField;
    Q_INFINF_AICM: TFloatField;
    Q_INFPRO_ID: TIntegerField;
    Q_INFINF_PESO: TFloatField;
    Q_INFINF_VICM: TFloatField;
    Q_INFINF_CODI: TAutoIncField;
    Q_INFNFI_CODI: TIntegerField;
    Q_INFUVEN_ID: TIntegerField;
    Q_INFINF_VOL: TFloatField;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    DS_INF: TwwDataSource;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    Q_NF: TwwQuery;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFCLIN_RAZA: TStringField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_CODI: TAutoIncField;
    DS_NF: TwwDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape1: TQRShape;
    QRBand3: TQRBand;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    Q_RMP: TwwQuery;
    Q_RMPPRO_COD: TStringField;
    Q_RMPPRO_DESC: TStringField;
    Q_RMPMRP_PESO: TFloatField;
    Q_RMPMRP_VOLUME: TFloatField;
    Q_RMPMRP_QTDEPALLET: TIntegerField;
    Q_RMPMRP_ID: TAutoIncField;
    Q_RMPMANI_ID: TIntegerField;
    Q_RMPPRO_ID: TIntegerField;
    Q_RMPMRP_QTDE: TFloatField;
    Q_NFNFI_PBRU: TFloatField;
    Q_NF2: TwwQuery;
    Q_NF2NFI_PBRU: TFloatField;
    Q_NF2NFI_CODI: TAutoIncField;
    QRLabel19: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    Q_NFNFI_NUMERO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelManifResumoNF: TFRelManifResumoNF;

implementation
uses USenha, UAbTabelas, UManifesto ;
{$R *.DFM}

procedure TFRelManifResumoNF.FormCreate(Sender: TObject);
begin
  Q_NF.open ;
  Q_NF2.open ;
  Q_INF.open ;
  Q_UNIDVEND.open ;
  Q_RMP.open ;
end;

procedure TFRelManifResumoNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_NF.close ;
   Q_INF.close ;
   Q_NF2.close ;
   Q_UNIDVEND.close ;
   Q_RMP.close ;
   action := cafree  ;
end;

procedure TFRelManifResumoNF.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ////Q_NF2.locate('NFI_CODI',Q_INFNFI_CODI.asstring,[]);
  QRLABEL19.caption := formatfloat('0.0000',(Q_INFINF_QTDE.asfloat*Q_INFINF_PESO.asfloat));



end;

end.

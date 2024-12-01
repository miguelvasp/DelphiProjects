unit ufrmRelResumoFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, Db, ADODB, ExtCtrls;

type
  TfrmRelResumoFrete = class(TForm)
    QuickRep1: TQuickRep;
    qrManifestos: TADOQuery;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRMemo1: TQRMemo;
    lbTitulo: TQRLabel;
    lbTransp: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbFrete: TQRLabel;
    lbCombustivel: TQRLabel;
    lbEmprestimo: TQRLabel;
    lbNextel: TQRLabel;
    lbNotas: TQRLabel;
    lbFalta: TQRLabel;
    lbAvarias: TQRLabel;
    lbPamcary: TQRLabel;
    QRLabel10: TQRLabel;
    lbOutros: TQRLabel;
    QRLabel12: TQRLabel;
    lbAdiantamento: TQRLabel;
    QRLabel14: TQRLabel;
    lbLiquido: TQRLabel;
    QRLabel16: TQRLabel;
    lbSest: TQRLabel;
    QRLabel18: TQRLabel;
    lbBaseIRRF: TQRLabel;
    QRLabel20: TQRLabel;
    lbIRRF: TQRLabel;
    QRLabel22: TQRLabel;
    lbBaseINSS: TQRLabel;
    QRLabel24: TQRLabel;
    lbINSS: TQRLabel;
    qrManifestosID: TAutoIncField;
    qrManifestosMANI_ID: TIntegerField;
    qrManifestosLANC_MANUAL: TIntegerField;
    qrManifestosTRANS_ID: TIntegerField;
    qrManifestosDATA: TDateTimeField;
    qrManifestosREG_ID: TIntegerField;
    qrManifestosVLR_FRETE: TFloatField;
    qrManifestosSTATUS: TStringField;
    qrManifestosOBS: TStringField;
    qrManifestosDATA_FECHAMENTO: TDateTimeField;
    qrManifestosRECIBO: TStringField;
    qrManifestosREG_NOME: TStringField;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel19: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelResumoFrete: TfrmRelResumoFrete;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelResumoFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelResumoFrete := nil;
end;

end.

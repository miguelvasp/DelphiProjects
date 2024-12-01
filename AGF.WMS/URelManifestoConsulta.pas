unit URelManifestoConsulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, gtQrCtrls, Db, DBTables, Wwquery;

type
  TfrmRelManifestoConsulta = class(TForm)
    Report: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TgtQRShape;
    QRShape3: TgtQRShape;
    QRImage1: TgtQRImage;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRLabel6: TgtQRLabel;
    QRLabel7: TgtQRLabel;
    QRLabel8: TgtQRLabel;
    QRLabel9: TgtQRLabel;
    QRLabel10: TgtQRLabel;
    QRLabel11: TgtQRLabel;
    QRLabel12: TgtQRLabel;
    QRLabel17: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel18: TgtQRLabel;
    QRLabel19: TgtQRLabel;
    QRLabel20: TgtQRLabel;
    QRLabel21: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel25: TgtQRLabel;
    QRLabel26: TgtQRLabel;
    QRLabel27: TgtQRLabel;
    QRLabel28: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    QRLabel36: TgtQRLabel;
    QRLabel39: TgtQRLabel;
    gtQRLabel1: TgtQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand3: TQRBand;
    gtQRLabel2: TgtQRLabel;
    gtQRShape1: TgtQRShape;
    lbTotalFrete: TgtQRLabel;
    lbTotalIcms: TgtQRLabel;
    lbTotalOutros: TgtQRLabel;
    lbTotalValor: TgtQRLabel;
    qrDesconto: TwwQuery;
    qrDescontoDESCONTO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;


      var PrintBand: Boolean);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
  private
    function GeraDesconto(valor : Double) : Double;
  public
    { Public declarations }
  end;

var
  frmRelManifestoConsulta: TfrmRelManifestoConsulta;
  frete, icms, outros, valor : Double;
  IMPRIMIU : Boolean;
implementation

uses UConsultaCTRC;

{$R *.DFM}

procedure TfrmRelManifestoConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmRelManifestoConsulta := nil;
end;

procedure TfrmRelManifestoConsulta.QRDBText3Print(sender: TObject;
  var Value: String);
begin
   {if FConsultaCTRC.Q_CTRCORD_STATUS.Value = 'A' then
      Value := 'Aberto'
   else if   FConsultaCTRC.Q_CTRCORD_STATUS.Value = 'E' then
      Value := 'Emitido'; }
end;

procedure TfrmRelManifestoConsulta.FormCreate(Sender: TObject);
begin
  frete := 0;
  icms := 0;
  outros := 0;
  valor := 0;
  IMPRIMIU := False;
end;

procedure TfrmRelManifestoConsulta.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   frete := frete + GeraDesconto(FConsultaCTRC.Q_CTRCORD_VLR_FRETE.Value);
   icms := icms +  GeraDesconto(FConsultaCTRC.Q_CTRCORD_VLR_ICMS.Value);
   outros := outros +  GeraDesconto(FConsultaCTRC.Q_CTRCORD_VLR_OUTROS.Value);
   valor := valor + GeraDesconto(FConsultaCTRC.Q_CTRCORD_TOTALPREST.Value);
end;

procedure TfrmRelManifestoConsulta.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if IMPRIMIU = False then
  begin
        lbTotalFrete.Caption := FormatFloat('##0.00',frete);
        lbTotalIcms.Caption := FormatFloat('##0.00',icms);
        lbTotalOutros.Caption := FormatFloat('##0.00', outros);
        lbTotalValor.Caption := FormatFloat('##0.00', valor);
        IMPRIMIU := True;
  end;
end;

function TfrmRelManifestoConsulta.GeraDesconto(valor: Double): Double;
var novovalor, desconto : Double;
begin
        desconto := 0;
        novovalor := valor;
        with FConsultaCTRC do
        begin
             qrDesconto.CLOSE;
             qrDesconto.Params[0].AsInteger := Q_CTRCCLIN_ID.Value;
             qrDesconto.Open;
             if qrDescontoDESCONTO.AsString <> '' then
             begin
                 if qrDescontoDESCONTO.Value > 0 then
                 begin
                      desconto := qrDescontoDESCONTO.Value;
                      novovalor := valor - ((valor * desconto) / 100);

                 end
             end;
        end;
        Result := novovalor;
end;

procedure TfrmRelManifestoConsulta.QRDBText7Print(sender: TObject;
  var Value: String);
begin
      Value := FormatFloat('###,##0.00', GeraDesconto(FConsultaCTRC.Q_CTRCORD_VLR_FRETE.Value));
end;

procedure TfrmRelManifestoConsulta.QRDBText8Print(sender: TObject;
  var Value: String);
begin
      Value := FormatFloat('###,##0.00', GeraDesconto(FConsultaCTRC.Q_CTRCORD_VLR_ICMS.Value));
end;

procedure TfrmRelManifestoConsulta.QRDBText9Print(sender: TObject;
  var Value: String);
begin
      Value := FormatFloat('###,##0.00', GeraDesconto(FConsultaCTRC.Q_CTRCORD_VLR_OUTROS.Value));
end;

procedure TfrmRelManifestoConsulta.QRDBText10Print(sender: TObject;
  var Value: String);
begin
     Value := FormatFloat('###,##0.00', GeraDesconto(FConsultaCTRC.Q_CTRCORD_TOTALPREST.Value));
end;

end.

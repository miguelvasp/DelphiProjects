unit UfrmRelPagamentoFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, ADODB, ExtCtrls, QuickRpt, Qrctrls;

type
  TfrmRelPagamentoFrete = class(TForm)
    QuickRep1: TQuickRep;
    qrGera: TADOQuery;
    qrGeraID: TAutoIncField;
    qrGeraMANI_ID: TIntegerField;
    qrGeraLANC_MANUAL: TIntegerField;
    qrGeraTRANS_ID: TIntegerField;
    qrGeraDATA: TDateTimeField;
    qrGeraREG_ID: TIntegerField;
    qrGeraVLR_FRETE: TFloatField;
    qrGeraSTATUS: TStringField;
    qrGeraOBS: TStringField;
    qrGeraTRANS_FANTASIA: TStringField;
    qrGeraREG_NOME: TStringField;
    dspGera: TDataSetProvider;
    cdsGera: TClientDataSet;
    cdsGeraMANI_ID: TIntegerField;
    cdsGeraLANC_MANUAL: TIntegerField;
    cdsGeraDATA: TDateTimeField;
    cdsGeraTRANS_FANTASIA: TStringField;
    cdsGeraREG_NOME: TStringField;
    cdsGeraVLR_FRETE: TFloatField;
    cdsGeraOBS: TStringField;
    cdsGeraTRANS_ID: TIntegerField;
    cdsGeraREG_ID: TIntegerField;
    cdsGeraSTATUS: TStringField;
    cdsGeraID: TAutoIncField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbFiltros: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRBand4: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPagamentoFrete: TfrmRelPagamentoFrete;
  totalTrans, TotalRel :Real;
implementation

uses UfrmPgtoFrete;

{$R *.DFM}

procedure TfrmRelPagamentoFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelPagamentoFrete := nil;
end;

procedure TfrmRelPagamentoFrete.FormCreate(Sender: TObject);
begin
  qrGera.close;
  cdsGera.Close;
  qrGera.sql.Clear;
  qrGera.sql := frmPgtoFrete.qrGera.SQL;
  cdsGera.Open;

  totalTrans := 0;
  TotalRel := 0;

end;

procedure TfrmRelPagamentoFrete.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   totalTrans := totalTrans + cdsGeraVLR_FRETE.Value;
   TotalRel := TotalRel + cdsGeraVLR_FRETE.Value;
end;

procedure TfrmRelPagamentoFrete.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,###,##0.00', totalTrans);
  totalTrans := 0;
end;

procedure TfrmRelPagamentoFrete.QRLabel11Print(sender: TObject;
  var Value: String);
begin
   Value := FormatFloat('###,###,##0.00', TotalRel);
   TotalRel := 0;
end;

end.

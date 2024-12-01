unit uRelTransporteQrp2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, gtQRXport, gtQRXport_Doc, gtQRXport_PDF, Qrctrls,
  QuickRpt, ExtCtrls, jpeg;

type
  TRelTransporteQrp2 = class(TForm)
    rel: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbFornecedor: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRImage1: TQRImage;
    lbPeriodo: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRGroup1: TQRGroup;
    lbGrupo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRExpr5: TQRExpr;
    QRBand4: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRExpr7: TQRExpr;
    gtQRPDFExport1: TgtQRPDFExport;
    qrRel: TwwQuery;
    qrRelDATA: TDateTimeField;
    qrRelNOTA_FISCAL: TStringField;
    qrRelPESO: TFloatField;
    qrRelOBS: TStringField;
    qrRelCODIGO: TStringField;
    qrRelPRODUTO: TStringField;
    qrRelFATURA: TFloatField;
    qrRelUV: TFloatField;
    qrRelUE: TFloatField;
    qrRelCH: TIntegerField;
    qrRelDESTINATARIO: TStringField;
    qrRelVALOR: TFloatField;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    qrRelTotalItem: TFloatField;
    qrRelPesoTotal: TFloatField;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lbGrupoPrint(sender: TObject; var Value: String);
    procedure qrRelCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelTransporteQrp2: TRelTransporteQrp2;

implementation

uses uRelTransporteQrp, URel_Transporte, UMenu, UfrmRelTransporte2;

{$R *.DFM}

procedure TRelTransporteQrp2.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr1.Reset;
  //QRExpr2.Reset;
  QRExpr5.Reset;
  QRExpr3.Reset;
end;

procedure TRelTransporteQrp2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
        frmReltransporteqrp := nil;
end;

procedure TRelTransporteQrp2.FormCreate(Sender: TObject);
begin
        qrRel.close;
        qrRel.SQL.Clear;
        qrRel.SQL.Add('Select * from REL_TRANSPORTE where ch = :ch') ;
        if frmRelTransporte2.rgGrupo.ItemIndex = 0 then
        begin
                QRGroup1.Expression := 'qrRel.PRODUTO';
                qrRel.SQL.Add(' ORDER BY CODIGO ');
        end
        else begin
                QRGroup1.Expression :=  'qrRel.NOTA_FISCAL';
                qrRel.sql.Add(' order by nota_fiscal');
        end;
        qrRel.Params[0].AsInteger :=   FMenu.SqlUsuariosCH.Value;
        qrRel.Open;

        lbFornecedor.Caption := 'Controle de Transporte - ' +  frmRelTransporte2.cbocliente.Text;
        lbPeriodo.Caption := 'Período de: ' + frmRelTransporte2.MaskEdit1.Text +
                             ' Até: ' + frmRelTransporte2.MaskEdit2.Text;


end;

procedure TRelTransporteQrp2.lbGrupoPrint(sender: TObject;
  var Value: String);
begin
       if frmRelTransporte2.rgGrupo.ItemIndex = 0 then
           Value := 'Produto: ' +  qrRelPRODUTO.Value
        else
           Value := 'Nota Fiscal: ' +  qrRelNOTA_FISCAL.Value;
end;

procedure TRelTransporteQrp2.qrRelCalcFields(DataSet: TDataSet);
begin
   qrRelPesoTotal.AsFloat := qrRelPESO.AsFloat * qrRelUV.AsFloat;
   qrRelTotalItem.AsFloat := qrRelVALOR.AsFloat * qrRelUV.AsFloat;
end;

end.

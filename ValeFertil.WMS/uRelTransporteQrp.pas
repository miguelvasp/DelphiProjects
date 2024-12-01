unit uRelTransporteQrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, Wwquery, gtQRXport_RTF,
  gtQRXport_Excel, gtQRXport, gtQRXport_Doc, gtQRXport_PDF, jpeg;

type
  TfrmReltransporteqrp = class(TForm)
    rel: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    lbFornecedor: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    lbPeriodo: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRGroup1: TQRGroup;
    qrRel: TwwQuery;
    qrRelDATA: TDateTimeField;
    qrRelNOTA_FISCAL: TStringField;
    qrRelPESO: TFloatField;
    qrRelOBS: TStringField;
    qrRelCODIGO: TStringField;
    qrRelPRODUTO: TStringField;
    qrRelFATURA: TFloatField;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    lbGrupo: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    gtQRPDFExport1: TgtQRPDFExport;
    QRLabel16: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrRelUV: TFloatField;
    qrRelUE: TFloatField;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lbGrupoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReltransporteqrp: TfrmReltransporteqrp;

implementation

uses UMenu, URel_Transporte;

{$R *.DFM}

procedure TfrmReltransporteqrp.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr1.Reset;
  QRExpr2.Reset;
  QRExpr5.Reset;
  QRExpr6.Reset;
end;

procedure TfrmReltransporteqrp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
        frmReltransporteqrp := nil;
end;

procedure TfrmReltransporteqrp.FormCreate(Sender: TObject);
begin
        qrRel.close;
        qrRel.SQL.Clear;
        qrRel.SQL.Add('Select * from REL_TRANSPORTE where ch = :ch') ;
        if frmRel_Transporte.rgGrupo.ItemIndex = 0 then
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

        lbFornecedor.Caption := 'Controle de Transporte - ' +  frmRel_Transporte.cbocliente.Text;
        lbPeriodo.Caption := 'Período de: ' + frmRel_Transporte.MaskEdit1.Text +
                             ' Até: ' + frmRel_Transporte.MaskEdit2.Text;



end;

procedure TfrmReltransporteqrp.lbGrupoPrint(sender: TObject;
  var Value: String);
begin
       if frmRel_Transporte.rgGrupo.ItemIndex = 0 then
           Value := 'Produto: ' +  qrRelPRODUTO.Value
        else
           Value := 'Nota Fiscal: ' +  qrRelNOTA_FISCAL.Value;
end;

end.

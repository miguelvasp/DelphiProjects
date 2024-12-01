unit URelSaldoNotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, gtQRXport,
  gtQRXport_Doc, gtQRXport_Excel;

type
  TFRelSaldoNotas = class(TForm)
    RelSaldoNotas: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Q_CLIENTE: TwwQuery;
    Q_NF: TwwQuery;
    Q_NFITEM: TwwQuery;
    Q_CLIENTECLIN_RAZA: TStringField;
    DS_CLIENTE: TwwDataSource;
    DS_NF: TwwDataSource;
    Q_CLIENTECLIN_ID: TAutoIncField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFITEMINF_ITEM: TIntegerField;
    Q_NFITEMNFI_CODI: TIntegerField;
    Q_NFITEMPRO_DESC: TStringField;
    Q_NFITEMINF_QTDE: TFloatField;
    Q_NFITEMINF_PUNI: TFloatField;
    Q_NFITEMINF_AIPI: TFloatField;
    Q_NFITEMINF_VIPI: TFloatField;
    Q_NFITEMINF_TOTA: TFloatField;
    Q_NFITEMINF_PESOLIQ: TFloatField;
    Q_NFITEMINF_PESO: TFloatField;
    Q_NFITEMINF_VOL: TFloatField;
    Q_NFITEMINF_AICM: TFloatField;
    Q_NFITEMINF_BICM: TFloatField;
    Q_NFITEMINF_VICM: TFloatField;
    Q_NFITEMUVEN_ID: TIntegerField;
    Q_NFITEMINF_QTDERETORNADA: TFloatField;
    Q_NFITEMINF_NFE: TIntegerField;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    Q_NFITEMPRO_COD: TStringField;
    gtQRExcelExport1: TgtQRExcelExport;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  FRelSaldoNotas: TFRelSaldoNotas;

implementation

uses USaldo_NF;

{$R *.DFM}

procedure TFRelSaldoNotas.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
SALDO : double;
begin

end;

procedure TFRelSaldoNotas.FormCreate(Sender: TObject);
begin
   Q_CLIENTE.Open;
 //  if FSaldo_NF.NF.Text <> '' then
  // begin
        Q_NF.SQL.Clear;
        Q_NF.SQL.Add('SELECT NFI_CODI, NFI_NUMERO FROM NF WHERE NFI_EMIT_CLI = :CLIN_ID');
        IF FSaldo_NF.Q_NFNFI_CODI.AsInteger  <> 0 then
            Q_NF.SQL.Add('AND TDOC_ID = 2 AND NFI_CODI = ' +inttostr(NFI_CODI))
         else
            Q_NF.SQL.Add('AND TDOC_ID = 2 ') ;
        Q_NF.SQL.Add(' AND CONVERT(CHAR(10), NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(FSaldo_NF.MaskEdit1.Text))));
        Q_NF.SQL.Add(' AND CONVERT(CHAR(10), NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(FSaldo_NF.MaskEdit2.Text))));
        Q_NF.OPEN;
  // end
   //else
        Q_NF.Open;

   Q_NFITEM.Open;
end;

procedure TFRelSaldoNotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_CLIENTE.Close;
   Q_NF.Close;
   Q_NFITEM.Close;
end;

procedure TFRelSaldoNotas.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
SALDO : DOUBLE;
TOT : DOUBLE;
begin
   QRLabel10.Caption := Q_NFITEMINF_ITEM.AsString +' - ' + Q_NFITEMPRO_COD.AsString +' - ' +Q_NFITEMPRO_DESC.AsString;
   SALDO := Q_NFITEMINF_QTDE.ASFLOAT - Q_NFITEMINF_QTDERETORNADA.ASFLOAT;
   QRLabel11.Caption := formatfloat('0.00', SALDO);
   TOT := Q_NFITEMINF_PUNI.AsFloat * SALDO;
   QRLabel12.Caption := formatfloat('0.00', TOT);
end;

end.

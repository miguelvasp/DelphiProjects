unit URelConsultaPagFreteSINT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, gtQrCtrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery;

type
  TFRelConsultaPagFreteSINT = class(TForm)
    ConsultaPosicao: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TgtQRImage;
    QRLabel1: TgtQRLabel;
    QRLabel2: TgtQRLabel;
    QRLabel3: TgtQRLabel;
    QRSysData1: TgtQRSysData;
    QRLabel4: TgtQRLabel;
    QRSysData2: TgtQRSysData;
    QRLabel5: TgtQRLabel;
    QRSysData3: TgtQRSysData;
    QRLabel17: TgtQRLabel;
    QRShape1: TgtQRShape;
    QRLabel22: TgtQRLabel;
    gtQRLabel2: TgtQRLabel;
    QRLabel23: TgtQRLabel;
    QRLabel32: TgtQRLabel;
    QRLabel24: TgtQRLabel;
    QRLabel33: TgtQRLabel;
    QRBand3: TQRBand;
    gtQRLabel13: TgtQRLabel;
    gtQRLabel12: TgtQRLabel;
    QRShape3: TgtQRShape;
    QRShape2: TgtQRShape;
    gtQRDBText1: TgtQRDBText;
    gtQRDBText2: TgtQRDBText;
    Q_FRE: TwwQuery;
    DS_FRE: TwwDataSource;
    Q_FRETOTFRETE: TFloatField;
    Q_FRETRANS_RAZA: TStringField;
    QRBand4: TQRBand;
    gtQRLabel11: TgtQRLabel;
    gtQRLabel16: TgtQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConsultaPagFreteSINT: TFRelConsultaPagFreteSINT;
  SOMATRANSP : real ;
implementation
uses UFConsultaPagFrete ;
{$R *.DFM}

procedure TFRelConsultaPagFreteSINT.FormCreate(Sender: TObject);
begin
        Q_FRE.close ;
        Q_FRE.Sql.Clear ;
        Q_FRE.Sql.Add('SELECT  SUM(MANI_VFRETEPAG) as TOTFRETE,C.TRANS_RAZA from    ');
        Q_FRE.Sql.Add('  MANIFESTO A,TRANSPORTADORA C   ');
        Q_FRE.Sql.Add('   where A.NFI_TRANS = ' + '''' + 'S' + ''''  );
        Q_FRE.Sql.Add('  and A.TRANS_Id = C.TRANS_ID  ');

        IF TRANS <> '' then
            Q_FRE.SQL.ADD(' AND A.TRANS_ID = ' + '''' + TRANS + '''');
        if PERI <> 0.0 then
            Q_FRE.SQL.ADD(' AND CONVERT(CHAR(10), A.MANI_DATA, 112) >= ' +''''+ formatdatetime('YYYYMMDD',PERI) + '''');
        if PERF <> 0.0 then
            Q_FRE.SQL.ADD(' AND CONVERT(CHAR(10), A.MANI_DATA, 112) <= ' +''''+ formatdatetime('YYYYMMDD',PERF) + '''') ;
            Q_FRE.Sql.Add('   group by C.TRANS_RAZA   ');
            Q_FRE.Sql.Add('  order by C.TRANS_RAZA   ');
            Q_FRE.open ;
end;

procedure TFRelConsultaPagFreteSINT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_FRE.close ;
  action := cafree ;

end;

procedure TFRelConsultaPagFreteSINT.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  SOMATRANSP := (SOMATRANSP + Q_FRETOTFRETE.asfloat);
end;

procedure TFRelConsultaPagFreteSINT.QRBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   gtQRLabel16.caption := formatfloat('###,###,##0.00',SOMATRANSP) ;
end;

procedure TFRelConsultaPagFreteSINT.QRBand4AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
   SOMATRANSP := 0 ;
end;

end.

unit CPPLFOR;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListFornecedoresFC = class(TForm)
    QR_FORN: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_FORN: TwwQuery;
    DS_FORN: TwwDataSource;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_CGC: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNCTC_DESC: TStringField;
    Q_FORNCON_DESC: TStringField;
    QRShape2: TQRShape;
    procedure FormActivate(Sender: TObject);
    procedure QR_FORNBeforePrint(var PrintReport: Boolean);
    procedure QR_FORNAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListFornecedoresFC: TFListFornecedoresFC;

implementation
uses CPPMLI2;
{$R *.DFM}

procedure TFListFornecedoresFC.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;

procedure TFListFornecedoresFC.QR_FORNBeforePrint(var PrintReport: Boolean);
begin
     with Q_FORN do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT A.FOR_CODI,A.FOR_RAZA,A.FOR_PESS,A.FOR_CGC,A.FOR_INSC,A.FOR_ENDE,A.FOR_MUNI,A.FOR_ESTA,');
       Sql.Add('A.FOR_CEP,A.FOR_TEL1,A.FOR_TEL2,A.FOR_FAX,A.FOR_EMAI,A.FOR_NCON,A.FOR_CONT,A.FOR_IATI,A.FOR_CGER,');
       Sql.Add('A.FOR_MARK,A.FOR_PENT,B.CTC_DESC,C.CON_DESC FROM CPAFORN A, CPACTCO B, CPACONT C');
       Sql.Add('WHERE A.FOR_CODI <> '''+ '%#' +'''');
       if (FMenuListForCli.ED_CODI.Text <> '') then
          Sql.Add('AND A.FOR_CODI >= '''+FMenuListForCli.ED_CODI.Text+'''');
       if (FMenuListForCli.ED_CODF.Text <> '') then
          Sql.Add('AND A.FOR_CODI <= '''+FMenuListForCli.ED_CODF.Text+'''');
       Sql.Add('AND B.CTC_CODI =* A.FOR_CONT AND C.CON_CODI =* A.FOR_CGER');
       if (FMenuListForCli.RDG_ORDE.ItemIndex = 0) then
          Sql.Add('ORDER BY A.FOR_CODI')
       else
          Sql.Add('ORDER BY A.FOR_RAZA');
       Open;
     end;
end;

procedure TFListFornecedoresFC.QR_FORNAfterPrint(Sender: TObject);
begin
     Q_FORN.Close;
     Screen.Cursor := crDefault;
end;

end.

unit CPPLFO2;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListFornecedoresR = class(TForm)
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
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    Cabec: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
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
    procedure FormActivate(Sender: TObject);
    procedure QR_FORNBeforePrint(var PrintReport: Boolean);
    procedure QR_FORNAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListFornecedoresR: TFListFornecedoresR;

implementation
uses CPPMLI2;
{$R *.DFM}

procedure TFListFornecedoresR.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;

procedure TFListFornecedoresR.QR_FORNBeforePrint(var PrintReport: Boolean);
begin
     with Q_FORN do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM CPAFORN');
       Sql.Add('WHERE FOR_CODI <> '''+ '%#' +'''');
       if (FMenuListForCli.ED_CODI.Text <> '') then
          Sql.Add('AND FOR_CODI >= '''+FMenuListForCli.ED_CODI.Text+'''');
       if (FMenuListForCli.ED_CODF.Text <> '') then
          Sql.Add('AND FOR_CODI <= '''+FMenuListForCli.ED_CODF.Text+'''');
       if (FMenuListForCli.RDG_ORDE.ItemIndex = 0) then
          Sql.Add('ORDER BY FOR_CODI')
       else
          Sql.Add('ORDER BY FOR_RAZA');
       Open;
     end;
end;

procedure TFListFornecedoresR.QR_FORNAfterPrint(Sender: TObject);
begin
     Q_FORN.Close;
     Screen.Cursor := crDefault;
end;

end.

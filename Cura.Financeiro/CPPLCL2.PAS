unit CPPLCL2;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListClientesR = class(TForm)
    QR_CLIE: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_CLIE: TwwQuery;
    DS_CLIE: TwwDataSource;
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
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_PESS: TStringField;
    Q_CLIECLI_CGC: TStringField;
    Q_CLIECLI_INSC: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    Q_CLIECLI_FEMA: TStringField;
    Q_CLIECLI_FCON: TStringField;
    Q_CLIECLI_CEND: TStringField;
    Q_CLIECLI_CMUN: TStringField;
    Q_CLIECLI_CEST: TStringField;
    Q_CLIECLI_CCEP: TStringField;
    Q_CLIECLI_CTEL: TStringField;
    Q_CLIECLI_CTE2: TStringField;
    Q_CLIECLI_CFAX: TStringField;
    Q_CLIECLI_CEMA: TStringField;
    Q_CLIECLI_CCON: TStringField;
    Q_CLIECLI_CBAN: TStringField;
    Q_CLIECLI_CCBA: TStringField;
    Q_CLIECLI_CONT: TStringField;
    Q_CLIECLI_TRAN: TStringField;
    Q_CLIECLI_RAAT: TStringField;
    Q_CLIECLI_CANA: TStringField;
    Q_CLIECLI_VEND: TStringField;
    Q_CLIECLI_REPR: TStringField;
    Q_CLIECLI_INIC: TDateTimeField;
    Q_CLIECLI_UCOM: TDateTimeField;
    Q_CLIECLI_VUCO: TFloatField;
    Q_CLIECLI_VUCD: TFloatField;
    Q_CLIECLI_MCOM: TDateTimeField;
    Q_CLIECLI_VMCO: TFloatField;
    Q_CLIECLI_VMCD: TFloatField;
    Q_CLIECLI_ATRA: TIntegerField;
    Q_CLIECLI_LCRE: TFloatField;
    Q_CLIECLI_VATR: TFloatField;
    Q_CLIECLI_SCRE: TStringField;
    Q_CLIECLI_CGER: TStringField;
    Q_CLIECLI_CODI: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure QR_CLIEBeforePrint(var PrintReport: Boolean);
    procedure QR_CLIEAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListClientesR: TFListClientesR;

implementation
uses CPPMLI2;
{$R *.DFM}

procedure TFListClientesR.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;

procedure TFListClientesR.QR_CLIEBeforePrint(var PrintReport: Boolean);
begin
     with Q_CLIE do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM CPACLIE');
       Sql.Add('WHERE CLI_CODI <> 999999999');
       if (FMenuListForCli.ED_CODI.Text <> '') then
          Sql.Add('AND CLI_CODI >= '+FMenuListForCli.ED_CODI.Text+'');
       if (FMenuListForCli.ED_CODF.Text <> '') then
          Sql.Add('AND CLI_CODI <= '+FMenuListForCli.ED_CODF.Text+'');
       if (FMenuListForCli.RDG_ORDE.ItemIndex = 0) then
          Sql.Add('ORDER BY CLI_CODI')
       else
          Sql.Add('ORDER BY CLI_RAZA');
       Open;
     end;
end;

procedure TFListClientesR.QR_CLIEAfterPrint(Sender: TObject);
begin
     Q_CLIE.Close;
     Screen.Cursor := crDefault;
end;

end.

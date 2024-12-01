unit URelCodFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, jpeg;

type
  TFRelCodFat = class(TForm)
    CODFAT: TQuickRep;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Q_CODFAT: TwwQuery;
    Q_CODFATCFA_ID: TAutoIncField;
    Q_CODFATCFA_CODI: TStringField;
    Q_CODFATCFA_DCFO: TStringField;
    Q_CODFATCFA_DCCF: TStringField;
    Q_CODFATTDOC_ID: TIntegerField;
    Q_CODFATCFA_TPA1: TStringField;
    Q_CODFATCFA_TPA2: TStringField;
    Q_CODFATCFA_TPA3: TStringField;
    Q_CODFATCFA_TICM: TStringField;
    Q_CODFATCFA_RICM: TFloatField;
    Q_CODFATCFA_FICM: TStringField;
    Q_CODFATCFA_IIPI: TStringField;
    Q_CODFATCFA_TIPI: TStringField;
    Q_CODFATCFA_FISS: TStringField;
    Q_CODFATCFA_AISS: TFloatField;
    Q_CODFATCFA_GDUP: TStringField;
    Q_CODFATTDOC_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCodFat: TFRelCodFat;

implementation
uses USenha,Uabtabelas, UMenu, URegiao;
{$R *.DFM}

procedure TFRelCodFat.FormCreate(Sender: TObject);
begin
  Q_CODFAT.open ;
end;

procedure TFRelCodFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CODFAT.close ;
  action := cafree ;
end;

procedure TFRelCodFat.QRDBText3Print(sender: TObject; var Value: String);
begin
  if (Value = '0') then Value := 'Tributado Integralmente';
  if (Value = '1') then Value := 'Tributado e ICMS por Substituição Tributária';
  if (Value = '2') then Value := 'Com Redução de Base de Cálculo';
  if (Value = '3') then Value := 'Isento ou Não Tributado e ICMS por Substituição Tributária';
  if (Value = '4') then Value := 'Isento ou Não Tributado';
  if (Value = '5') then Value := 'Com Suspensão ou Diferimento';
  if (Value = '6') then Value := 'ICMS Cobrado Anteriormente por Substituição Tributária';
  if (Value = '7') then Value := 'Com Redução de Base de Cálculo';
  if (Value = '9') then Value := 'Outros';
end;

procedure TFRelCodFat.QRDBText5Print(sender: TObject; var Value: String);
begin
  if (Value = 'M') then Value := 'Mercadoria';
  if (Value = 'T') then Value := 'Total da Nota Fiscal';
end;
procedure TFRelCodFat.QRDBText6Print(sender: TObject; var Value: String);
begin
  if (Value = 'S') then Value := 'Sim';
  if (Value = 'N') then Value := 'Não';
end;

procedure TFRelCodFat.QRDBText8Print(sender: TObject; var Value: String);
begin
  if (Value = 'S') then Value := 'Sim';
  if (Value = 'N') then Value := 'Não';
end;

procedure TFRelCodFat.QRDBText7Print(sender: TObject; var Value: String);
begin
  if (Value = 'I') then Value := 'Isentas';
  if (Value = 'O') then Value := 'Outras';
end;

procedure TFRelCodFat.QRDBText11Print(sender: TObject; var Value: String);
begin
  if (Value = 'S') then Value := 'Sim';
  if (Value = 'N') then Value := 'Não';
end;

end.

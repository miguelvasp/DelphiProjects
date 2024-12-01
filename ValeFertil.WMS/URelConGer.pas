unit URelConGer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelConGer = class(TForm)
    CONGER: TQuickRep;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Q_CONGER: TwwQuery;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Q_CONGERCON_CODI: TStringField;
    Q_CONGERCON_DESC: TStringField;
    Q_CONGERCON_ENSA: TStringField;
    Q_CONGERCON_OPER: TStringField;
    Q_CONGERCON_FLOA: TFloatField;
    Q_CONGERCON_FLUX: TStringField;
    Q_CONGERCON_CTCO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelConGer: TFRelConGer;

implementation
uses USenha,Uabtabelas, UMenu, UContaGer;
{$R *.DFM}

procedure TFRelConGer.FormCreate(Sender: TObject);
begin
  Q_CONGER.open ;
end;

procedure TFRelConGer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CONGER.close ;
  action := cafree ;
end;

procedure TFRelConGer.QRDBText2Print(sender: TObject; var Value: String);
begin
  if (Value = 'N') then Value := 'Não';
  if (Value = 'S') then Value := 'Sim';
end;

procedure TFRelConGer.QRDBText4Print(sender: TObject; var Value: String);
begin
  if (Value = 'S') then Value := 'Sim';
  if (Value = 'N') then Value := 'Não';
end;

procedure TFRelConGer.QRDBText5Print(sender: TObject; var Value: String);
begin
  if (Value = 'E') then Value := 'Entrada';
  if (Value = 'S') then Value := 'Saída';
end;

procedure TFRelConGer.QRDBText6Print(sender: TObject; var Value: String);
begin
  if (Value = 'O') then Value := 'Operacional';
  if (Value = 'F') then Value := 'Financeiro';
  if (Value = 'N') then Value := 'Não Operacional';
end;

end.

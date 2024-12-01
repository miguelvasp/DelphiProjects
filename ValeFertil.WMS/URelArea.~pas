unit URelArea;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls;

type
  TFRelArea = class(TForm)
    AREA: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand2: TQRBand;
    Q_AREA: TwwQuery;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOME: TStringField;
    Q_AREAAR_CONTROL_POS: TStringField;
    Q_AREAAR_EMPILHA_LIVRE: TStringField;
    Q_AREAAR_EMPILHA_MAX: TIntegerField;
    Q_AREAAR_DISPONIVEL: TStringField;
    Q_AREAPAR_ID: TIntegerField;
    Q_AREAPOS_ID: TAutoIncField;
    Q_AREAPOS_COD: TStringField;
    Q_AREAAR_ID_1: TIntegerField;
    Q_AREAPOS_PESOMAX: TFloatField;
    Q_AREAPOS_UTILIZADO: TStringField;
    Q_AREAPAR_NOME: TStringField;
    Q_AREAPAR_RAZA: TStringField;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelArea: TFRelArea;

implementation
uses USenha,Umenu, UAbTabelas, UArea;
{$R *.DFM}

procedure TFRelArea.FormCreate(Sender: TObject);
begin
  Q_AREA.open ;
end;

procedure TFRelArea.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_AREA.close ;
  action := cafree ;
end;

procedure TFRelArea.QRDBText1Print(sender: TObject; var Value: String);
begin
  if (Value = 'N') then Value := 'Não';
  if (Value = 'S') then Value := 'Sim';
end;

procedure TFRelArea.QRDBText2Print(sender: TObject; var Value: String);
begin
  if (Value = 'N') then Value := 'Não';
  if (Value = 'S') then Value := 'Sim';
end;

procedure TFRelArea.QRDBText4Print(sender: TObject; var Value: String);
begin
  if (Value = 'N') then Value := 'Não';
  if (Value = 'S') then Value := 'Sim';
end;

end.

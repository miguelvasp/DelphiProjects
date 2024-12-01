unit URelCondPagtoIn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, jpeg;

type
  TFRelCondPagtoI = class(TForm)
    QR_CONDPAGTOI: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    Descricao: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    Q_COND: TwwQuery;
    Q_CONDCOND_PGTO_ID: TAutoIncField;
    Q_CONDDESCRICAO: TStringField;
    Q_CONDNUM_PARCELAS: TFloatField;
    Q_CONDPAGAMENTO: TStringField;
    Q_CONDFORA: TStringField;
    DS_COND: TwwDataSource;
    Q_CONDI: TwwQuery;
    Q_CONDIINTERVALO_ID: TAutoIncField;
    Q_CONDICOND_PGTO_ID: TIntegerField;
    Q_CONDIPERCENTUAL: TFloatField;
    Q_CONDINUM_DIAS: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Q_CONDFORAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCondPagtoI: TFRelCondPagtoI;

implementation
USES UCondPagto;

{$R *.DFM}

procedure TFRelCondPagtoI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := cafree;
end;

procedure TFRelCondPagtoI.FormCreate(Sender: TObject);
begin
        Q_COND.Open;
        Q_CONDI.Open;
end;

procedure TFRelCondPagtoI.Q_CONDFORAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
        If Q_CONDFORA.AsString = 'S' then
                Text := 'A Semana';
        If Q_CONDFORA.AsString = 'D' then
                Text := 'A Dezena';
        If Q_CONDFORA.AsString = 'Q' then
                Text := 'A Quinzena';
        If Q_CONDFORA.AsString = 'M' then
                Text := 'O Mês';
        If Q_CONDFORA.AsString = '' then
                Text := '';
end;

end.

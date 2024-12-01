unit URelCondPagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, Wwdatsrc, jpeg;

type
  TFRelCondPagto = class(TForm)
    QR_CONDPAGTO: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    Descricao: TQRDBText;
    Q_COND: TwwQuery;
    Q_CONDCOND_PGTO_ID: TAutoIncField;
    Q_CONDDESCRICAO: TStringField;
    Q_CONDNUM_PARCELAS: TFloatField;
    Q_CONDPAGAMENTO: TStringField;
    Q_CONDFORA: TStringField;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    Q_CONDI: TwwQuery;
    DS_COND: TwwDataSource;
    Q_CONDIINTERVALO_ID: TAutoIncField;
    Q_CONDICOND_PGTO_ID: TIntegerField;
    Q_CONDIPERCENTUAL: TFloatField;
    Q_CONDINUM_DIAS: TFloatField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure LBL_CONDFORAPrint(sender: TObject; var Value: String);
    procedure Q_CONDFORAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCondPagto: TFRelCondPagto;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelCondPagto.FormCreate(Sender: TObject);
begin
        Q_COND.Open;
end;

procedure TFRelCondPagto.LBL_CONDFORAPrint(sender: TObject;
  var Value: String);
begin
        {If Q_CONDFORA.AsString = 'S' then
                Value := 'A Semana';
        If Q_CONDFORA.AsString = 'D' then
                Value := 'A Dezena';
        If Q_CONDFORA.AsString = 'Q' then
                Value := 'A Quinzena';
        If Q_CONDFORA.AsString = 'M' then
                Value := 'O Mês';
        If Q_CONDFORA.AsString = '' then
                Value := '';}
end;

procedure TFRelCondPagto.Q_CONDFORAGetText(Sender: TField;
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

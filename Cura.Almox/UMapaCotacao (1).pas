unit UMapaCotacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, ADODB, QuickRpt, ExtCtrls;

type
  TfrmMapaCotacao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qry1: TADOQuery;
    qry1ID: TIntegerField;
    qry1FORNECEDOR: TStringField;
    QRBand2: TQRBand;
    qry2: TADOQuery;
    qry2id: TAutoIncField;
    qry2COT_ID: TIntegerField;
    qry2MAT_ID: TIntegerField;
    qry2F1: TStringField;
    qry2F2: TStringField;
    qry2F3: TStringField;
    qry2F4: TStringField;
    qry2F5: TStringField;
    qry2F6: TStringField;
    qry2F7: TStringField;
    qry2F8: TStringField;
    qry2F9: TStringField;
    qry2F10: TStringField;
    qry2P1: TFloatField;
    qry2P2: TFloatField;
    qry2P3: TFloatField;
    qry2P4: TFloatField;
    qry2P5: TFloatField;
    qry2P6: TFloatField;
    qry2P7: TFloatField;
    qry2P8: TFloatField;
    qry2P9: TFloatField;
    qry2P10: TFloatField;
    qry2E1: TDateTimeField;
    qry2E2: TDateTimeField;
    qry2E3: TDateTimeField;
    qry2E4: TDateTimeField;
    qry2E5: TDateTimeField;
    qry2E6: TDateTimeField;
    qry2E7: TDateTimeField;
    qry2E8: TDateTimeField;
    qry2E9: TDateTimeField;
    qry2E10: TDateTimeField;
    qry2C1: TStringField;
    qry2C2: TStringField;
    qry2C3: TStringField;
    qry2C4: TStringField;
    qry2C5: TStringField;
    qry2C6: TStringField;
    qry2C7: TStringField;
    qry2C8: TStringField;
    qry2C9: TStringField;
    qry2C10: TStringField;
    qry2MAT_DESC: TStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel9: TQRLabel;
    lbCot: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape17: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape18: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMapaCotacao: TfrmMapaCotacao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmMapaCotacao.FormCreate(Sender: TObject);
begin
        QRLabel1.Caption := '';
        QRLabel2.Caption := '';
        QRLabel3.Caption := '';
        QRLabel4.Caption := '';
        QRLabel5.Caption := '';
        QRLabel6.Caption := '';
        QRLabel7.Caption := '';
        QRLabel8.Caption := '';
        qry1.Open;
        while not qry1.Eof do
        begin
                if qry1ID.Value = 1 then
                        QRLabel1.Caption := qry1FORNECEDOR.Value ;


                if qry1ID.Value = 2 then
                        QRLabel2.Caption := qry1FORNECEDOR.Value;

                if qry1ID.Value = 3 then
                        QRLabel3.Caption := qry1FORNECEDOR.Value;

                if qry1ID.Value = 4 then
                        QRLabel4.Caption := qry1FORNECEDOR.Value;

                if qry1ID.Value = 5 then
                        QRLabel5.Caption := qry1FORNECEDOR.Value;

                if qry1ID.Value = 6 then
                        QRLabel6.Caption := qry1FORNECEDOR.Value;

                if qry1ID.Value = 7 then
                        QRLabel7.Caption := qry1FORNECEDOR.Value;

                if qry1ID.Value = 8 then
                        QRLabel8.Caption := qry1FORNECEDOR.Value;

                qry1.NEXT;
        end;
        qry2.Open;
end;

procedure TfrmMapaCotacao.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMemo1.Lines.Text := qry2MAT_DESC.Value;
end;

end.

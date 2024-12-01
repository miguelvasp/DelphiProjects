unit URelTOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls;

type
  TFRelTOS = class(TForm)
    TOS: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
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
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    Q_TOS: TwwQuery;
    QRGroup1: TQRGroup;
    Q_TOSTOS_ID: TAutoIncField;
    Q_TOSTOS_NOME: TStringField;
    Q_TOSTOS_CONCEITO: TMemoField;
    Q_TOSTOS_ORDEM: TIntegerField;
    Q_TOSTDTO_ID: TAutoIncField;
    Q_TOSTOS_ID_1: TIntegerField;
    Q_TOSTDOC_ID: TIntegerField;
    Q_TOSTDTO_ORDEM: TIntegerField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Q_TOSTDOC_NOME: TStringField;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTOS: TFRelTOS;

implementation
uses USenha,Uabtabelas, UMenu, UTpOS;
{$R *.DFM}

procedure TFRelTOS.FormCreate(Sender: TObject);
begin
  Q_TOS.open ;
end;

procedure TFRelTOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_TOS.close ;
  action := cafree ;
end;

end.

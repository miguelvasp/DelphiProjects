unit URelServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Wwquery, Qrctrls;

type
  TFRelServico = class(TForm)
    SERVICO: TQuickRep;
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
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    Q_SERVICO: TwwQuery;
    Q_SERVICOSER_ID: TAutoIncField;
    Q_SERVICOTSER_ID: TIntegerField;
    Q_SERVICOSER_NOME: TStringField;
    Q_SERVICOTSER_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelServico: TFRelServico;

implementation
uses USenha,Umenu, UAbTabelas, UServico;
{$R *.DFM}

procedure TFRelServico.FormCreate(Sender: TObject);
begin
  Q_SERVICO.open ;
end;

procedure TFRelServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_SERVICO.close ;
  action := cafree ;
end;

end.

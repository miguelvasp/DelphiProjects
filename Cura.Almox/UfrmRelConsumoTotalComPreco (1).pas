unit UfrmRelConsumoTotalComPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, ADODB;

type
  TfrmRelConsumoTotalComPreco = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    qrRel: TADOQuery;
    qrRelMAT_ID: TAutoIncField;
    qrRelMAT_DESC: TStringField;
    qrRelQTDE: TFloatField;
    qrRelporCusto: TFloatField;
    qrRelporReposicao: TFloatField;
    qrRelUni_Sigla: TStringField;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRMemo1: TQRMemo;
    procedure FormCreate(Sender: TObject);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelConsumoTotalComPreco: TfrmRelConsumoTotalComPreco;
  total : Real;
implementation

uses UMenu, UEstoque;

{$R *.DFM}

procedure TfrmRelConsumoTotalComPreco.FormCreate(Sender: TObject);
var filtros : string;
begin
  total := 0;



end;

procedure TfrmRelConsumoTotalComPreco.QRDBText4Print(sender: TObject;
  var Value: String);
begin
   if frmConsultaEstoque.rgValor.ItemIndex = 3 then  begin
        Value := FormatFloat('###,##0.00', qrRelporReposicao.asfloat);
        total := total + qrRelporReposicao.asfloat;
   end else begin
        Value := FormatFloat('###,##0.00', qrRelporCusto.asfloat);
        total := total + qrRelporCusto.asfloat;
   end;
end;

procedure TfrmRelConsumoTotalComPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelConsumoTotalComPreco := nil;
end;

procedure TfrmRelConsumoTotalComPreco.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabel5.Caption := 'Total: ' + FormatFloat('###,###,##0.00', total);
   total := 0;
end;

end.

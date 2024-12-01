unit ufrmRelResumo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelResumo = class(TForm)
    qrRel: TADOQuery;
    qrRelMAT_DESC: TStringField;
    qrRelCC_Desc: TStringField;
    qrRelqtde: TFloatField;
    qrRelUni_Sigla: TStringField;
    qrRelCusto_medio: TFloatField;
    qrRelReposicao_item: TFloatField;
    report: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    Filtros: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    lbVlrUnit: TQRDBText;
    QRLabel7: TQRLabel;
    lbVlrTotal: TQRDBText;
    qrRelTotal: TFloatField;
    QRBand3: TQRBand;
    lbRodape: TQRLabel;
    QRShape4: TQRShape;
    procedure qrRelCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelResumo: TfrmRelResumo;
  TotalGeral : Real;

implementation

uses UMenu, UEstoque;

{$R *.DFM}

procedure TfrmRelResumo.qrRelCalcFields(DataSet: TDataSet);
var total : Real;
begin
   if frmConsultaEstoque.rgValor.ItemIndex = 5 then
        total := qrRelqtde.AsFloat * qrRelReposicao_item.AsFloat;

   if frmConsultaEstoque.rgValor.ItemIndex = 6 then
        total := qrRelqtde.AsFloat * qrRelCusto_medio.AsFloat;

   qrRelTotal.AsFloat := total;


end;

procedure TfrmRelResumo.FormCreate(Sender: TObject);
begin
   TotalGeral := 0;
end;

procedure TfrmRelResumo.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    TotalGeral := TotalGeral + qrRelTotal.AsFloat;
end;

procedure TfrmRelResumo.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbRodape.Caption := 'Total R$ ' + FormatFloat('###,###,##0.00', TotalGeral);
    TotalGeral := 0;
end;

end.

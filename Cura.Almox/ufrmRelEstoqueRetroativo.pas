unit ufrmRelEstoqueRetroativo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelEstoqueRetroativo = class(TForm)
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
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    lbPosicao: TQRLabel;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
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
  frmRelEstoqueRetroativo: TfrmRelEstoqueRetroativo;
  total : Real;
  totalMedio: Real;
implementation

uses  frmHistoricoEstoque;

{$R *.DFM}

procedure TfrmRelEstoqueRetroativo.FormCreate(Sender: TObject);
begin
  total := 0.00;
  totalMedio := 0.00;
end;

procedure TfrmRelEstoqueRetroativo.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   total := total + frmHistEstoque.qrBuscaValorReposicaoTotal.AsFloat;
   totalMedio := totalMedio + frmHistEstoque.qrBuscaValorCustoMedioTotal.AsFloat;
end;

procedure TfrmRelEstoqueRetroativo.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabel5.Caption := 'Valor Total por Custo de Reposição R$ ' + FormatFloat('###,###,##0.00', total );
   QRLabel12.Caption := 'Valor Total por Custo Médio R$ ' + FormatFloat('###,###,##0.00', totalMedio );
   total := 0;
   totalMedio:= 0;
end;

end.

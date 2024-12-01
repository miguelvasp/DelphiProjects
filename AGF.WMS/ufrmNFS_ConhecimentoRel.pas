unit ufrmNFS_ConhecimentoRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmNFS_ConhecimentoRel = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    lbFiltros: TQRLabel;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    lbPeso: TQRLabel;
    lbNota: TQRLabel;
    lbFrete: TQRLabel;
    lbISS: TQRLabel;
    lbTotal: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    PesoT, NotaT, FreteT, ISST, TotalT : Real;
  public
    { Public declarations }
  end;

var
  frmNFS_ConhecimentoRel: TfrmNFS_ConhecimentoRel;

implementation

uses ufrmNFS_Conhecimento;

{$R *.DFM}

procedure TfrmNFS_ConhecimentoRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmNFS_ConhecimentoRel := nil;
end;

procedure TfrmNFS_ConhecimentoRel.FormCreate(Sender: TObject);
begin
    PesoT := 0.00;
    NotaT := 0.00;
    FreteT := 0.00;
    ISST := 0.00;
    TotalT := 0.00;
end;

procedure TfrmNFS_ConhecimentoRel.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    PesoT := PesoT + frmNFS_Conhecimento.qrItensORD_PESO_TOTAL.AsFloat;
    NotaT := NotaT   + frmNFS_Conhecimento.qrItensORD_VALORTOTAL.AsFloat;
    FreteT := FreteT + frmNFS_Conhecimento.qrItensORD_VLR_FRETE.AsFloat;
    ISST := ISST + frmNFS_Conhecimento.qrItensVLR_ISS.AsFloat;
    TotalT := TotalT + frmNFS_Conhecimento.qrItensVLR_NFS.AsFloat;
end;

procedure TfrmNFS_ConhecimentoRel.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lbPeso.Caption := FormatFloat('###,###,##0.00', PesoT);
   lbNota.Caption := FormatFloat('###,###,##0.00', NotaT);
   lbFrete.Caption := FormatFloat('###,###,##0.00', FreteT) ;
   lbISS.Caption := FormatFloat('###,###,##0.00', ISST) ;
   lbTotal.Caption := FormatFloat('###,###,##0.00', TotalT) ;

   PesoT := 0.00;
   NotaT := 0.00;
   FreteT := 0.00;
   ISST := 0.00;
   TotalT := 0.00;
end;

end.

unit URelEstoque_minimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelEStoque_minimo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbFiltros: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBText9: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEStoque_minimo: TfrmRelEStoque_minimo;

implementation

uses UEstoque_minimo, UMenu;

{$R *.DFM}

procedure TfrmRelEStoque_minimo.FormCreate(Sender: TObject);
var filtros : string;
begin
    filtros := '';

    with frmEstoque_minimo do
    begin
        if cboMaterial.Text <> '' then
                filtros := filtros + 'Material: ' + cboMaterial.Text;

        if cboMarca.Text <> '' then
                filtros := filtros + '    Marca: ' + cboMarca.Text;

        if cboGrupo.Text <> '' then
                filtros := filtros + '    Grupo: ' + cboGrupo.Text;

        if cbofornecedor.Text <> '' then
                filtros := filtros + '    Fornecedor: ' + cbofornecedor.Text;

                

    end;

    lbFiltros.Caption := filtros;

end;

procedure TfrmRelEStoque_minimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelEStoque_minimo := nil;
end;

procedure TfrmRelEStoque_minimo.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if  frmEstoque_minimo.qrConsultaCRITICO.AsString = 'F' then
        QRDBText9.Caption := '';
end;

end.

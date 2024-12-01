unit URel_KardexCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRel_kardexCliente = class(TForm)
    Report: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbCliente: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRImage1: TQRImage;
    lbPeriodo: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    qrRelatorio: TwwQuery;
    qrRelatorioSALDO: TFloatField;
    qrRelatorioPRO_COD: TStringField;
    qrRelatorioPRO_DESC: TStringField;
    qrRelatorioUVEN: TStringField;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData4: TQRSysData;
    QRLabel7: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel_kardexCliente: TfrmRel_kardexCliente;

implementation

uses UfrmKardexCliente;

{$R *.DFM}

procedure TfrmRel_kardexCliente.FormCreate(Sender: TObject);
begin
        with qrRelatorio do
        begin
            close;
            sql.Clear;
            sql.Add('SELECT A.SALDO, B.PRO_COD, B.PRO_DESC, SUBSTRING(C.UVEN_NOME, 1,2) AS UVEN');
            sql.Add('FROM REL_KARDEX A, PRODUTO B , UNIDVENDA C ');
            sql.Add('WHERE A.PRO_ID = B.PRO_ID');
            sql.Add('AND B.UVEN_ID = C.UVEN_ID');

            if frmKardexCliente.RadioGroup1.ItemIndex = 0 then
                SQL.Add('order by B.pro_cod ')
            else  if frmKardexCliente.RadioGroup1.ItemIndex = 1 then
                SQL.Add('order by b.pro_desc')
            else
                sql.Add('orde by A.SALDO');
            Open;
        end;

        lbCliente.Caption := 'Cliente: ' + frmKardexCliente.cbocliente.Text;
        lbPeriodo.Caption := 'Posição do estoque em:  ' + frmKardexCliente.MaskEdit1.Text;
end;

end.

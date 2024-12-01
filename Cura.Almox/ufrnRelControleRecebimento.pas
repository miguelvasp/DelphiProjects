unit ufrnRelControleRecebimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, ADODB;

type
  TfrnRelControleRecebimento = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRDBImage1: TQRDBImage;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbFornecedor: TQRLabel;
    lbNota: TQRLabel;
    QRLabel3: TQRLabel;
    lbQtde: TQRLabel;
    lbValidade: TQRLabel;
    lbLote: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    lbHorario: TQRLabel;
    QRLabel5: TQRLabel;
    lbTemperatura: TQRLabel;
    QRLabel6: TQRLabel;
    lbCondicoes: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    lbRegistro: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape9: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape10: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape11: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape12: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    lbConferir: TQRLabel;
    QRMemo1: TQRMemo;
    Q_REC: TADOQuery;
    Q_RECRec_ID: TAutoIncField;
    Q_RECNFIS: TIntegerField;
    Q_RECSerie: TStringField;
    Q_RECDt_Entrada: TDateTimeField;
    Q_RECCFO: TStringField;
    Q_RECCfa_Sequ: TIntegerField;
    Q_RECDt_Emiss: TDateTimeField;
    Q_RECCond_Pgto_ID: TIntegerField;
    Q_RECLocal_ID: TIntegerField;
    Q_RECICMS: TFloatField;
    Q_RECIPI: TFloatField;
    Q_RECCodICMS: TStringField;
    Q_RECCodIPI: TStringField;
    Q_RECVl_ICMS: TFloatField;
    Q_RECVl_IPI: TFloatField;
    Q_RECBase_ICMS: TFloatField;
    Q_RECBase_IPI: TFloatField;
    Q_RECFrete: TStringField;
    Q_RECVl_Frete: TFloatField;
    Q_RECVl_Seguro: TFloatField;
    Q_RECVl_OutrasDesp: TFloatField;
    Q_RECVl_TotMer: TFloatField;
    Q_RECVl_TotNF: TFloatField;
    Q_RECStatus: TStringField;
    Q_RECFor_Codi: TStringField;
    Q_RECFIL_CODI: TStringField;
    Q_RECCONFERE_QTDE: TStringField;
    Q_RECCONFERE_VALIDADE: TStringField;
    Q_RECCONFERE_LOTE: TStringField;
    Q_RECCONFERE_HORARIO: TStringField;
    Q_RECCONFERE_TEMPERATURA: TStringField;
    Q_RECCONFERE_CONDICAO: TStringField;
    Q_RECCONFERE_NUMERO_LOTE: TStringField;
    Q_RECCONFERE_REGISTRO: TStringField;
    Q_RECCONFERE_OBS: TStringField;
    QRLabel12: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frnRelControleRecebimento: TfrnRelControleRecebimento;

implementation

uses UReceb, UMenu;

{$R *.DFM}

procedure TfrnRelControleRecebimento.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    // with FReceb do begin
         lbFornecedor.Caption := FReceb.cboDiv.Text;
         lbNota.Caption := FReceb.txtNF.Text;
         if Q_RECCONFERE_QTDE.AsString = 'C' then
                lbQtde.Caption := 'Quantidade: Conforme';
         if Q_RECCONFERE_QTDE.AsString = 'N' then
                lbQtde.Caption := 'Quantidade: Não Conforme';


         if Q_RECCONFERE_VALIDADE.AsString = 'C' then
                lbValidade.Caption := 'Validade: Conforme';
         if Q_RECCONFERE_VALIDADE.AsString = 'N' then
                lbValidade.Caption := 'Validade: Não Conforme';

         if Q_RECCONFERE_LOTE.AsString = 'C' then
                lbLote.Caption := 'Lote: Conforme';
         if Q_RECCONFERE_LOTE.AsString = 'N' then
                lbLote.Caption := 'Lote: Não Conforme';



         if Q_RECCONFERE_HORARIO.AsString = 'S' then
                lbHorario.Caption := 'Sim';
         if Q_RECCONFERE_QTDE.AsString = 'N' then
                lbHorario.Caption := 'Não';


         if Q_RECCONFERE_TEMPERATURA.AsString = 'C' then
                lbTemperatura.Caption := 'Conforme';
         if Q_RECCONFERE_TEMPERATURA.AsString = 'N' then
                lbTemperatura.Caption := 'Não Conforme';

         if Q_RECCONFERE_CONDICAO.AsString = 'S' then
                lbCondicoes.Caption := 'Satisfatória';
         if Q_RECCONFERE_CONDICAO.AsString = 'I' then
                lbCondicoes.Caption := 'Insatisfatória';


         lbConferir.Caption := Q_RECCONFERE_NUMERO_LOTE.AsString;

         if Q_RECCONFERE_REGISTRO.AsString = 'C' then
                lbCondicoes.Caption := 'Conforme';
         if Q_RECCONFERE_CONDICAO.AsString = 'N' then
                lbCondicoes.Caption := 'Não conforme';


         QRMemo1.Lines.Text := Q_RECCONFERE_OBS.AsString;

   //  end;
end;

procedure TfrnRelControleRecebimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frnRelControleRecebimento := nil;
end;

end.

unit UfrmRelRequisicaoUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, Db, ExtCtrls, ADODB;

type
  TfrmRelRequisicaoUsuarios = class(TForm)
    qrRel: TADOQuery;
    QuickRep1: TQuickRep;
    qrRelSOL_ID: TAutoIncField;
    qrRelDATA: TDateTimeField;
    qrRelCC_ID: TIntegerField;
    qrRelUSUARIO: TStringField;
    qrRelCOPIA_DE: TIntegerField;
    qrRelAPROVADOR: TStringField;
    qrRelDT_APROVACAO: TDateTimeField;
    qrRelLOCAL_ID: TIntegerField;
    qrRelITEM: TAutoIncField;
    qrRelSOL_ID_1: TIntegerField;
    qrRelMAT_ID: TIntegerField;
    qrRelMARCA_ID: TIntegerField;
    qrRelQTDE_SOL: TFloatField;
    qrRelQTDE_ATENDIDA: TFloatField;
    qrRelSALDO: TFloatField;
    qrRelSTATUS: TStringField;
    qrRelESTOQUE: TFloatField;
    qrRelSEL: TStringField;
    qrRelCC_ID_1: TAutoIncField;
    qrRelCC_Desc: TStringField;
    qrRelLocal_ID_1: TAutoIncField;
    qrRelDescricao: TStringField;
    qrRelDisponivelSN: TStringField;
    qrRelCONSUMO: TStringField;
    qrRelCONTROLA_ESTOQUE: TStringField;
    qrRelMAT_ID_1: TAutoIncField;
    qrRelMAT_DESC: TStringField;
    qrRelGRU_ID: TIntegerField;
    qrRelUNI_ID: TIntegerField;
    qrRelMAT_IPI: TFloatField;
    qrRelMAT_CONTROLA: TStringField;
    qrRelMAT_ESTMIN: TFloatField;
    qrRelMAT_LOTEPED: TFloatField;
    qrRelMAT_LOCACAO: TStringField;
    qrRelCusto_Medio: TFloatField;
    qrRelGENERICO: TStringField;
    qrRelMAT_ATIVO: TStringField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    qrRelSTATUS_DESC: TStringField;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    qrRelUNI_SIGLA: TStringField;
    QRDBText11: TQRDBText;
    lbTipo: TQRLabel;
    qrRelTIPO: TStringField;
    QRLabel13: TQRLabel;
    qrRelOBS: TStringField;
    QRDBText12: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRequisicaoUsuarios: TfrmRelRequisicaoUsuarios;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelRequisicaoUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelRequisicaoUsuarios := nil;
end;

procedure TfrmRelRequisicaoUsuarios.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if qrRelTIPO.Value = 'N' then lbTipo.Caption := 'Tipo Normal';
     if qrRelTIPO.Value = 'U' then lbTipo.Caption := 'Tipo Urgente';
     if qrRelTIPO.Value = 'E' then lbTipo.Caption := 'Tipo Emergência';
end;

end.

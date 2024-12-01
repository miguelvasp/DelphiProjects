unit URELCOTACAO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, QuickRpt, ExtCtrls, Qrctrls;

type
  TfrmRelCotacao = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    qrRel: TADOQuery;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    qrRelCOT_ID: TAutoIncField;
    qrRelMAT_DESC: TStringField;
    qrRelQTDE_SOL: TFloatField;
    qrRelFOR_RAZA: TStringField;
    qrRelFOR_EMAI: TStringField;
    qrRelFOR_TEL1: TStringField;
    qrRelFOR_TEL2: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrRelUNI_SIGLA: TStringField;
    QRLabel8: TQRLabel;
    qrParams: TADOQuery;
    qrParamsParam_ID: TAutoIncField;
    qrParamsPIS: TFloatField;
    qrParamsCofins: TFloatField;
    qrParamsNum_Inv: TIntegerField;
    qrParamsUsu_Inv: TStringField;
    qrParamsFor_Codi_Inv: TStringField;
    qrParamsFoto: TBlobField;
    qrParamsEmp_Nome: TStringField;
    qrParamsParam_end: TStringField;
    qrParamsParam_bairro: TStringField;
    qrParamsParam_cep: TStringField;
    qrParamsParam_cidade: TStringField;
    qrParamsParam_uf: TStringField;
    qrParamsParam_tel: TStringField;
    qrParamsParam_site: TStringField;
    qrParamsVersao: TFloatField;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape6: TQRShape;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    qrRelMARCA_DESC: TStringField;
    QRLabel17: TQRLabel;
    QRShape9: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRLabel11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCotacao: TfrmRelCotacao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelCotacao.FormCreate(Sender: TObject);
begin
  qrParams.Open;
end;

procedure TfrmRelCotacao.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  Value := 'Cotação N°: '+ qrRelCOT_ID.AsString;
end;

end.

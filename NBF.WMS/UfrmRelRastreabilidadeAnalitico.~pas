unit UfrmRelRastreabilidadeAnalitico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, QuickRpt, Qrctrls, gtQrCtrls;

type
  TfrmRelRastreabilidadeAnalitico = class(TForm)
    qrRel: TADOQuery;
    qrRelCH: TIntegerField;
    qrRelPRO_ID: TIntegerField;
    qrRelMANI_ID: TIntegerField;
    qrRelDATA: TDateTimeField;
    qrRelCLIN_ID: TIntegerField;
    qrRelLOTE: TStringField;
    qrRelVALIDADE: TDateTimeField;
    qrRelQTDE: TFloatField;
    qrRelNFI_NUMERO: TStringField;
    qrRelNFI_LOAD: TStringField;
    qrRelNFI_DEMI: TDateTimeField;
    qrRelNFI_DEST_RAZA: TStringField;
    qrRelINF_QTDE: TFloatField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    gtQRLabel1: TgtQRLabel;
    QRBand2: TQRBand;
    gtQRDBText1: TgtQRDBText;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRLabel6: TgtQRLabel;
    gtQRDBText5: TgtQRDBText;
    gtQRLabel7: TgtQRLabel;
    gtQRDBText6: TgtQRDBText;
    gtQRLabel8: TgtQRLabel;
    gtQRDBText7: TgtQRDBText;
    gtQRLabel9: TgtQRLabel;
    gtQRDBText8: TgtQRDBText;
    gtQRLabel10: TgtQRLabel;
    gtQRDBText9: TgtQRDBText;
    gtQRShape1: TgtQRShape;
    gtQRMemo1: TgtQRMemo;
    qrRelNFI_DEST_UF_SIGLA: TStringField;
    gtQRLabel11: TgtQRLabel;
    gtQRDBText10: TgtQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRastreabilidadeAnalitico: TfrmRelRastreabilidadeAnalitico;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelRastreabilidadeAnalitico.FormCreate(Sender: TObject);
begin
   qrRel.CLOSE;
   qrRel.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
   qrRel.Open;
end;

procedure TfrmRelRastreabilidadeAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelRastreabilidadeAnalitico := nil;
end;

end.

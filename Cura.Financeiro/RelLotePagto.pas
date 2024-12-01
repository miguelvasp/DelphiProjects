unit RelLotePagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, Qrctrls, QuickRpt, ExtCtrls, Wwquery, Wwdatsrc;

type
  TLstLotePagto = class(TForm)
    Lst_LotePagto: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRMemo1: TQRMemo;
    QRShape3: TQRShape;
    T_empr: TwwTable;
    T_emprEmp_Sequencia: TIntegerField;
    T_emprEmp_Razao: TStringField;
    T_emprEmp_CGC: TStringField;
    T_emprEmp_Insc: TStringField;
    T_emprEmp_EndFiscal: TStringField;
    T_emprEmp_MunFiscal: TStringField;
    T_emprEmp_EstFiscal: TStringField;
    T_emprEmp_CepFiscal: TStringField;
    T_emprEmp_Telefone1: TStringField;
    T_emprEmp_Telefone2: TStringField;
    T_emprEmp_Fax: TStringField;
    T_emprEmp_NomeFantasia: TStringField;
    T_emprEmp_Logo: TBlobField;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape5: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LstLotePagto: TLstLotePagto;

implementation
USES LotePagamento, CPPMENU ;
{$R *.DFM}

procedure TLstLotePagto.FormCreate(Sender: TObject);
begin
  T_EMPR.Open;
//  QRImage1.picture.assign(T_EMPREMP_LOGO);
  T_EMPR.close;
  QRLabel20.caption := FMenu.FUsuario;

end;

procedure TLstLotePagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;
end.

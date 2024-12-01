unit RelLoteReceb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, Qrctrls, QuickRpt, ExtCtrls, Wwquery, Wwdatsrc;

type
  TLstLoteReceb = class(TForm)
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
    Lst_LoteReceb: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand4: TQRBand;
    QRDBText3: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LstLoteReceb: TLstLoteReceb;

implementation
USES LoteRecebimento, CPPMENU ;
{$R *.DFM}

procedure TLstLoteReceb.FormCreate(Sender: TObject);
begin
  T_EMPR.Open;
//  QRImage1.picture.assign(T_EMPREMP_LOGO) ;
  T_EMPR.close;
  QRLabel20.caption := FMenu.FUsuario;
end;

procedure TLstLoteReceb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;
end.

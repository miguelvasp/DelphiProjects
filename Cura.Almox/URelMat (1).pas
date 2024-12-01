unit URelMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, Wwdatsrc, jpeg;

type
  TFRelMateriais = class(TForm)
    QR_MAT: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    Descricao: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    Q_MAT: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_IPI: TFloatField;
    Q_MATMAT_CONTROLA: TStringField;
    Q_UNI: TwwQuery;
    Q_GRMAT: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_GRMATGRU_ID: TAutoIncField;
    Q_GRMATGRU_DESC: TStringField;
    DS_MAT: TwwDataSource;
    Q_MATGRU_ID: TIntegerField;
    Q_MATUNI_ID: TIntegerField;
    Q_MATuni_cod: TStringField;
    Q_MATgru_desc: TStringField;
    Q_MATMAT_ESTMIN: TFloatField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    Q_MATMAT_LOTEPED: TFloatField;
    Q_MATMAT_LOCACAO: TStringField;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMateriais: TFRelMateriais;
  

implementation

USES UMateriais, UMenu;

{$R *.DFM}

procedure TFRelMateriais.FormCreate(Sender: TObject);
begin
        Q_MAT.open;
        Q_UNI.Open;
        Q_GRMAT.Open;
end;

procedure TFRelMateriais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_MAT.Close;
        Q_UNI.Close;
        Q_GRMAT.Close;
        Action := cafree;
end;

end.

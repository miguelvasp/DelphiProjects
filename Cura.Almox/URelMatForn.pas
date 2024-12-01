unit URelMatForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, Wwdatsrc, jpeg;

type
  TFRelMatMarca = class(TForm)
    QR_MATMARC: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    Q_MATMARC: TwwQuery;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    Descricao: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    Q_MAT: TwwQuery;
    DS_MAT: TwwDataSource;
    Q_MARC: TwwQuery;
    Q_UNI: TwwQuery;
    Q_MARCMARCA_ID: TAutoIncField;
    Q_MARCMARCA_DESC: TStringField;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    Q_UNIUNI_DESC: TStringField;
    Q_GMAT: TwwQuery;
    Q_GMATGRU_ID: TAutoIncField;
    Q_GMATGRU_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_MATGRU_ID: TIntegerField;
    Q_MATUNI_ID: TIntegerField;
    Q_MATMAT_IPI: TFloatField;
    Q_MATMAT_CONTROLA: TStringField;
    Q_MATMAT_ESTMIN: TFloatField;
    Q_MATMAT_LOTEPED: TFloatField;
    Q_MATMAT_LOCACAO: TStringField;
    Q_MATGRU_DESC: TStringField;
    Q_MATUNI_DESC: TStringField;
    Q_MATMARCMATMARCA_ID: TAutoIncField;
    Q_MATMARCMAT_ID: TIntegerField;
    Q_MATMARCMARCA_ID: TIntegerField;
    Q_MATMARCMATMARCA_EMBALAGEM: TStringField;
    Q_MATMARCUNI_ID: TIntegerField;
    Q_MATMARCMATMARCA_CONVERSAO: TFloatField;
    Q_MATMARCMATMARCA_DT_ULTCOMP: TDateTimeField;
    Q_MATMARCMATMARCA_PRE_ULTCOMP: TFloatField;
    Q_MATMARCMATMARCA_DT_ULTCOTA: TDateTimeField;
    Q_MATMARCMATMARCA_PRE_ULTCOTA: TFloatField;
    Q_MATMARCMARCA_DESC: TStringField;
    Q_MATMARCUNI_SIGLA: TStringField;
    QRImage1: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMatMarca: TFRelMatMarca;

implementation


{$R *.DFM}

procedure TFRelMatMarca.FormCreate(Sender: TObject);
begin
        Q_MAT.Open;
        Q_MATMARC.Open;
        Q_MARC.Open;
        Q_UNI.Open;
        Q_GMAT.Open;

end;

procedure TFRelMatMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_MATMARC.Close;
        Q_MAT.Close;
        Q_MARC.Close;
        Q_UNI.Close;
        Action:= cafree;
end;

end.

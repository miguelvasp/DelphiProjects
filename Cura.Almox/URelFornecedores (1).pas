unit URelFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelFornecedores = class(TForm)
    QR_FORN: TQuickRep;
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
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_CGC: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNFOR_SEGU: TIntegerField;
    Q_FORNFOR_UCOM: TDateTimeField;
    Q_FORNFOR_VUCO: TFloatField;
    Q_FORNFOR_VUCD: TFloatField;
    Q_FORNFOR_MCOM: TDateTimeField;
    Q_FORNFOR_VMCO: TFloatField;
    Q_FORNFOR_VMCD: TFloatField;
    Q_FORNFOR_AnaIndividual: TStringField;
    Q_FORNFOR_DIMP: TFloatField;
    Q_FORNFOR_DACE: TFloatField;
    QRBand1: TQRBand;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape3: TQRShape;
    QRDBImage1: TQRDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelFornecedores: TFRelFornecedores;

implementation

uses UPesq_Forn;

{$R *.DFM}

procedure TFRelFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_FORN.Close;
        Action :=cafree;
end;

procedure TFRelFornecedores.FormCreate(Sender: TObject);
Var SQL:String;
begin
        SQL :=  ' SELECT          * ' +
                ' FROM            CPAFORN ' +
                StrFiltro +
                ' ORDER BY        FOR_CODI ';


        Q_FORN.SQL.CLEAR;
        Q_FORN.SQL.ADD(SQL);

        Q_FORN.Open;
end;

end.

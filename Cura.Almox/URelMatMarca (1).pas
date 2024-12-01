unit URelMatMarca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelMatM = class(TForm)
    QR_RELM: TQuickRep;
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
    QRShape3: TQRShape;
    QRBand1: TQRBand;
    Descricao: TQRDBText;
    Q_MARCA: TwwQuery;
    DS_MARCA: TDataSource;
    Q_MAT: TwwQuery;
    QRS: TQRSubDetail;
    QRLabel2: TQRLabel;
    L1: TQRDBText;
    L2: TQRDBText;
    Q1: TQRLabel;
    Q2: TQRLabel;
    Q_MARCAMARCA_ID: TAutoIncField;
    Q_MARCAMARCA_DESC: TStringField;
    Q_MATMAT_DESC: TStringField;
    Q_MATGRU_DESC: TStringField;
    QRShape2: TQRShape;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMatM: TFRelMatM;
  Ja:Boolean;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelMatM.FormCreate(Sender: TObject);
begin
        Q_MARCA.Open;
        Q_MAT.Open;
end;

procedure TFRelMatM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_MARCA.Open;
        Q_MAT.Close;
        Action:= cafree;
end;

procedure TFRelMatM.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        Ja:= False;
end;

procedure TFRelMatM.QRSBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
        If Ja then Begin
                Q1.Enabled := false;
                Q2.Enabled := false;

                L1.Top := 1;
                L2.Top := 1;

                QRS.Height := 16;


        End Else Begin
                Q1.Enabled := true;
                Q2.Enabled := true;

                L1.Top := 15;
                L2.Top := 15;

                QRS.Height := 32;
        End;
        Ja := True;
end;

end.

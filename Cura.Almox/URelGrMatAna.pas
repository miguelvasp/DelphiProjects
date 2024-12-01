unit URelGrMatAna;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TFRelGrMatAna = class(TForm)
    QR_GRMAT: TQuickRep;
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
    QRBand1: TQRBand;
    Descricao: TQRDBText;
    Q_GRMAT: TwwQuery;
    Q_GRMATGRU_ID: TAutoIncField;
    Q_GRMATGRU_DESC: TStringField;
    DS_GRMAT: TDataSource;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_IPI: TFloatField;
    Q_MATMAT_CONTROLA: TStringField;
    Q_MATCUSTO_MEDIO: TFloatField;
    Q_MATUNI_DESC: TStringField;
    QRS: TQRSubDetail;
    QRLabel2: TQRLabel;
    L1: TQRDBText;
    L2: TQRDBText;
    L3: TQRDBText;
    L4: TQRDBText;
    L5: TQRDBText;
    Q1: TQRLabel;
    Q2: TQRLabel;
    Q3: TQRLabel;
    Q4: TQRLabel;
    Q5: TQRLabel;
    Q_MATMAT_CONTROL: TStringField;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGrMatAna: TFRelGrMatAna;
  Ja:Boolean;

implementation

uses UMenu;

{$R *.DFM}

procedure TFRelGrMatAna.FormCreate(Sender: TObject);
begin
        Q_GRMAT.Open;
        Q_MAT.Open;
end;

procedure TFRelGrMatAna.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_GRMAT.Open;
        Q_MAT.Close;
        Action:= cafree;
end;

procedure TFRelGrMatAna.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
        Ja:= False;
end;

procedure TFRelGrMatAna.QRSBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       


        If Ja then Begin
                Q1.Enabled := false;
                Q2.Enabled := false;
                Q3.Enabled := false;
                Q4.Enabled := false;
                Q5.Enabled := false;

                L1.Top := 1;
                L2.Top := 1;
                L3.Top := 1;
                L4.Top := 1;
                L5.Top := 1;

                QRS.Height := 16;


        End Else Begin
                Q1.Enabled := true;
                Q2.Enabled := true;
                Q3.Enabled := true;
                Q4.Enabled := true;
                Q5.Enabled := true;

                L1.Top := 15;
                L2.Top := 15;
                L3.Top := 15;
                L4.Top := 15;
                L5.Top := 15;

                QRS.Height := 32;
        End;
        Ja := True;

         

end;

procedure TFRelGrMatAna.QRLabel1Print(sender: TObject; var Value: String);
begin
  if Q_MATMAT_CONTROLA.AsString = 'S' THEN
                value:= 'Sim'
            else if (Q_MATMAT_CONTROLA.AsString = 'N') or (Q_MATMAT_CONTROLA.AsString = '') then
                    value:= 'Não'
                 else
                   value:= 'Não' ;
end;

end.

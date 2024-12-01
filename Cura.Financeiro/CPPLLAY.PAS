unit CPPLLAY;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable, quickrpt,
  Qrctrls;

type
  TFListLCheques = class(TForm)
    QR_LAYO: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Grupo: TQRBand;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_LAYO: TwwQuery;
    DS_LAYO: TwwDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    Q_LAYOLAY_CODI: TStringField;
    Q_LAYOLAY_DESC: TStringField;
    Q_LAYOLAY_VALLIN: TIntegerField;
    Q_LAYOLAY_VALCOL: TIntegerField;
    Q_LAYOLAY_EXTLIN1: TIntegerField;
    Q_LAYOLAY_EXTCOL1: TIntegerField;
    Q_LAYOLAY_EXTLIN2: TIntegerField;
    Q_LAYOLAY_EXTCOL2: TIntegerField;
    Q_LAYOLAY_FAVLIN: TIntegerField;
    Q_LAYOLAY_FAVCOL: TIntegerField;
    Q_LAYOLAY_LOCLIN: TIntegerField;
    Q_LAYOLAY_LOCCOL: TIntegerField;
    Q_LAYOLAY_DIALIN: TIntegerField;
    Q_LAYOLAY_DIACOL: TIntegerField;
    Q_LAYOLAY_MESLIN: TIntegerField;
    Q_LAYOLAY_MESCOL: TIntegerField;
    Q_LAYOLAY_ANOLIN: TIntegerField;
    Q_LAYOLAY_ANOCOL: TIntegerField;
    Q_LAYOLAY_LINHAS: TIntegerField;
    QRLabel5: TQRLabel;
    NLinhas: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    procedure FormActivate(Sender: TObject);
    procedure QR_LAYOBeforePrint(var PrintReport: Boolean);
    procedure QR_LAYOAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListLCheques: TFListLCheques;

implementation

uses Cppmlisold;

{$R *.DFM}

procedure TFListLCheques.FormActivate(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TFListLCheques.QR_LAYOBeforePrint(var PrintReport: Boolean);
begin
  with Q_LAYO do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CPALAYO');
    Sql.Add('WHERE LAY_CODI <> '''+ '%#' +'''');
    if (CODI <> '') then
      Sql.Add('AND LAY_CODI >= '''+CODI+'''');
    if (CODF <> '') then
      Sql.Add('AND LAY_CODI <= '''+CODF+'''');
    if (FMenuList.RDG_ORDE.ItemIndex = 0) then
      Sql.Add('ORDER BY LAY_CODI')
    else
      Sql.Add('ORDER BY LAY_DESC');
    Open;
  end;
end;

procedure TFListLCheques.QR_LAYOAfterPrint(Sender: TObject);
begin
  Q_LAYO.Close;
  Screen.Cursor := crDefault;
end;

end.

unit ListFor2;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable,
  Qrctrls, gtQRXport, gtQRXport_Doc, gtQRXport_Excel;

type
  TListForn2 = class(TForm)
    QR_FORN: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_FORN: TwwQuery;
    DS_FORN: TwwDataSource;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNFOR_CGC: TStringField;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormActivate(Sender: TObject);
    procedure QR_FORNAfterPrint(Sender: TObject);
    procedure QR_FORNBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListForn2: TListForn2;

implementation
uses
   CppMenu, MenuLis2;
{$R *.DFM}

procedure TListForn2.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;

procedure TListForn2.QR_FORNAfterPrint(Sender: TObject);
begin
     Q_FORN.Close;
     Screen.Cursor := crDefault;
end;

procedure TListForn2.QR_FORNBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin  
     Try
        Begin
           Q_FORN.Open;
        end;
     Except
        On E:EdbEngineError do
           Begin
                MessageDlg(E.Message,Mterror,[mbok],0);
                exit;
           End;
     End;

     with Q_FORN do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM CPAFORN');
       Sql.Add('WHERE FOR_CODI <> '''+ '%#' +'''');
       if (FMenuList2.wwDBLookupCombo1.Text <> '') then
          Sql.Add('AND FOR_CODI >= '''+FMenuList2.wwDBLookupCombo1.Text+'''');
       if (FMenuList2.wwDBLookupCombo2.Text <> '') then
          Sql.Add('AND FOR_CODI <= '''+FMenuList2.wwDBLookupCombo2.Text+'''');
       if (FMenuList2.RDG_ORDE.ItemIndex = 0) then
          Sql.Add('ORDER BY FOR_CODI')
       else
          Sql.Add('ORDER BY FOR_RAZA');
       Open;
     end;
//
// Seleciona o Nome da Empresa
//
    QRLabel26.caption := FMenu.FUsuario ;
end;

end.

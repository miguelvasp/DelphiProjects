unit ListForn;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable,
  Qrctrls, wwstorep;

type
  TList_Forn = class(TForm)
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
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    Q_FORNFOR_CGER: TStringField;
    QRShape2: TQRShape;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    Q_FORNCTC_DESC: TStringField;
    Q_FORNCON_DESC: TStringField;
    Q_FORNFOR_CGC: TStringField;
    QRShape3: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText18: TQRDBText;
    Q_FORNFOR_UCOM: TDateTimeField;
    Q_FORNFOR_VUCO: TFloatField;
    Q_FORNFOR_VUCD: TFloatField;
    Q_FORNFOR_MCOM: TDateTimeField;
    Q_FORNFOR_VMCO: TFloatField;
    Q_FORNFOR_VMCD: TFloatField;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    STP_DIVIDAFORNEC: TwwStoredProc;
    QRShape4: TQRShape;
    QRDBImage1: TQRDBImage;
    procedure FormActivate(Sender: TObject);
    procedure QR_FORNAfterPrint(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText20Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure QRDBText24Print(sender: TObject; var Value: String);
    procedure QR_FORNBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  List_Forn: TList_Forn;

implementation
uses  CppMenu, MenuLis2 ;
{$R *.DFM}

procedure TList_Forn.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;


procedure TList_Forn.QR_FORNAfterPrint(Sender: TObject);
begin
     Q_FORN.Close;
     Screen.Cursor := crDefault;
end;

procedure TList_Forn.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      try
        STP_DIVIDAFORNEC.ParamByName('@Fornecedor').Asstring := Q_FORNFOR_CODI.Asstring ;
        STP_DIVIDAFORNEC.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
        STP_DIVIDAFORNEC.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
        STP_DIVIDAFORNEC.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
        STP_DIVIDAFORNEC.ExecProc;
      finally
      end;


end;


procedure TList_Forn.QRDBText20Print(sender: TObject; var Value: String);
begin
   value  := inttostr(STP_DIVIDAFORNEC.Parambyname('@NumeroDuplicatas').asinteger );
end;

procedure TList_Forn.QRDBText23Print(sender: TObject; var Value: String);
begin
   value  := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaReais').asfloat );



end;

procedure TList_Forn.QRDBText24Print(sender: TObject; var Value: String);
begin
  value := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaDolar').asfloat );
end;


procedure TList_Forn.QR_FORNBeforePrint(Sender: TCustomQuickRep;
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
       Sql.Add('SELECT A.FOR_CODI,A.FOR_RAZA,A.FOR_PESS,A.FOR_CGC,A.FOR_INSC,A.FOR_ENDE,A.FOR_MUNI,A.FOR_ESTA,');
       Sql.Add(' A.FOR_UCOM,A.FOR_VUCO,FOR_VUCD,A.FOR_MCOM,A.FOR_VMCO,A.FOR_VMCD, ' );
       Sql.Add('A.FOR_CEP,A.FOR_TEL1,A.FOR_TEL2,A.FOR_FAX,A.FOR_EMAI,A.FOR_NCON,A.FOR_CONT,A.FOR_IATI,A.FOR_CGER,');
       Sql.Add('A.FOR_MARK,A.FOR_PENT,B.CTC_DESC,C.CON_DESC FROM CPAFORN A, CPACTCO B, CPACONT C');
       Sql.Add('WHERE A.FOR_CODI <> '''+ '%#' +'''');
       if (FMenuList2.wwDBLookupCombo1.Text <> '') then
          Sql.Add('AND A.FOR_CODI >= '''+FMenuList2.wwDBLookupCombo1.Text+'''');
       if (FMenuList2.wwDBLookupCombo2.Text <> '') then
          Sql.Add('AND A.FOR_CODI <= '''+FMenuList2.wwDBLookupCombo2.Text+'''');
       Sql.Add('AND B.CTC_CODI =* A.FOR_CONT AND C.CON_CODI =* A.FOR_CGER');
       if (FMenuList2.RDG_ORDE.ItemIndex = 0) then
          Sql.Add('ORDER BY A.FOR_CODI')
       else
          Sql.Add('ORDER BY A.FOR_RAZA');
       Open;
     end;
//
// Seleciona o Nome da Empresa
//
     QRLabel26.caption := FMenu.FUsuario  ;
end;

end.

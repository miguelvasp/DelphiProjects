unit ListCli2;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DBTables, DB, Wwdatsrc, Wwquery, Wwtable,
  Qrctrls;

type
  TListClie2 = class(TForm)
    QR_CLIE: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    Codigo: TQRDBText;
    Descricao: TQRDBText;
    QRLabel3: TQRLabel;
    Q_CLIE: TwwQuery;
    DS_CLIE: TwwDataSource;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    Q_CLIECLI_FTEL: TStringField;
    Q_CLIECLI_FTE2: TStringField;
    Q_CLIECLI_FFAX: TStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    Q_CLIECLI_CODI: TIntegerField;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FEST: TStringField;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    Q_CLIECLI_APELIDO: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    Q_CLIEcli_lcre: TFloatField;
    Filtros: TQRLabel;
    QRShape2: TQRShape;
    QRDBImage1: TQRDBImage;
    procedure FormActivate(Sender: TObject);
    procedure QR_CLIEAfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QR_CLIEBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FiltrosPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListClie2: TListClie2;
  var strfiltro : string;

implementation
uses CppMenu, MenuLis2;
{$R *.DFM}

procedure TListClie2.FormActivate(Sender: TObject);
begin
     Screen.Cursor := crDefault;
end;

procedure TListClie2.QR_CLIEAfterPrint(Sender: TObject);
begin
     Q_CLIE.Close;
     Screen.Cursor := crDefault;
end;


procedure TListClie2.FormCreate(Sender: TObject);

begin
  strfiltro := '';
end;

procedure TListClie2.QR_CLIEBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var strand : string;
begin
  strfiltro := '';
     Try
        Begin
           Q_CLIE.Open;
        end;
     Except
        On E:EdbEngineError do
           Begin
                MessageDlg(E.Message,Mterror,[mbok],0);
                exit;
           End;
     End;

     with Q_CLIE do
     begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM CPACLIE');
//       Sql.Add('WHERE CLI_CODI <> 999999999');
       strand := ' where ';

       if (FMenuList2.wwDBLookupCombo1.Text <> '') then begin
          Sql.Add('where CLI_APELIDO >= '+ ''''+ FMenuList2.wwDBLookupCombo1.Text+'''');
          strfiltro := 'Cliente de ' + FMenuList2.wwDBLookupCombo1.Text;
          if (FMenuList2.wwDBLookupCombo2.Text <> '') then begin
             Sql.Add('AND CLI_APELIDO <= '+ ''''+ FMenuList2.wwDBLookupCombo2.Text+'''');
             strfiltro := strfiltro + 'até ' + FMenuList2.wwDBLookupCombo2.Text;
           end else begin
             Sql.Add('AND CLI_APELIDO <= '+ ''''+ FMenuList2.wwDBLookupCombo1.Text+'''');
          end;
          strand := ' and ';
       end;

       if (FMenuList2.Maskedit1.text <>  '  /  /  ') then begin
          Sql.Add( StrAnd + 'CLI_UCOM >= '+ ''''+ formatdatetime('MM/DD/YYYY',strtodate(FMenuList2.Maskedit1.text))  + '''' ) ;
          strfiltro := strfiltro + ' Ultima Compra de ' + formatdatetime('DD/MM/YYYY',strtodate(FMenuList2.Maskedit1.text));
          StrAnd := ' and ' ;
       end ;

       if (FMenuList2.Maskedit2.text <>  '  /  /  ' )then begin
          strfiltro := strfiltro + ' até '+ formatdatetime('DD/MM/YYYY',strtodate(FMenuList2.Maskedit2.text));
          Sql.Add(StrAnd + 'CLI_UCOM <= '+ ''''+ formatdatetime('MM/DD/YYYY',strtodate(FMenuList2.Maskedit2.text))  + '''' ) ;
          StrAnd := ' and ' ;
       end ;

       if (FMenuList2.Maskedit5.text <> '  /  /  ') then begin
          strfiltro := strfiltro + ' Inclusão de ' + formatdatetime('DD/MM/YYYY',strtodate(FMenuList2.Maskedit5.text));;
          Sql.Add( strand + ' convert(char(10),cli_DTIN,112) >= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(FMenuList2.Maskedit5.text)) + '''') ;
          if (FMenuList2.Maskedit6.text <> '  /  /  ') then   begin
             strfiltro := strfiltro + ' até ' + formatdatetime('DD/MM/YYYY',strtodate(FMenuList2.Maskedit6.text));
             Sql.Add(' and convert(char(10),cli_DTIN,112) <= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(FMenuList2.Maskedit6.text)) + '''') ;
           end else begin
             Sql.Add(' and convert(char(10),cli_DTIN,112) >= '+ ''''+ formatdatetime('YYYYMMDD', strtodate(FMenuList2.Maskedit5.text)) + '''') ;
          end;
       end;

       if (FMenuList2.RDG_ORDE.ItemIndex = 0) then begin
          Sql.Add('ORDER BY CLI_APELIDO');
       end;
       if (FMenuList2.RDG_ORDE.ItemIndex = 1) then begin
          Sql.Add('ORDER BY CLI_RAZA');
       end;
       if (FMenuList2.RDG_ORDE.ItemIndex = 2) then begin
          Sql.Add('ORDER BY CLI_dtin');
       end;
       Open;
     end;
// Seleciona o Nome da Empresa
//
    QRLabel13.caption := FMenu.FUsuario ;
end;

procedure TListClie2.FiltrosPrint(sender: TObject; var Value: String);
begin
VALUE := STRFILTRO;
end;

end.





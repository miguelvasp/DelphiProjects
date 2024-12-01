unit UlstClieEtiq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, Wwquery, Wwdatsrc, Qrctrls, QuickRpt, ExtCtrls;

type
  TList_ClieEtiq = class(TForm)
    QR_CLIE: TQuickRep;
    DS_CLIE: TwwDataSource;
    Q_CLIE: TwwQuery;
    Q_CLIECLI_RAZA: TStringField;
    Q_CLIECLI_FEND: TStringField;
    Q_CLIECLI_FMUN: TStringField;
    Q_CLIECLI_FCEP: TStringField;
    Q_CLIECLI_FEST: TStringField;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  List_ClieEtiq: TList_ClieEtiq;

implementation
uses CppMenu, MenuLis2, FiltEtiqueta;
{$R *.DFM}

procedure TList_ClieEtiq.FormCreate(Sender: TObject);
var StrAnd : string ;
begin
     if FMenu.StrEtiqueta = '1'  then begin
           StrAnd := ' where ';
           with Q_CLIE do
           begin
             Close;
             Sql.Clear;
             Sql.Add('SELECT CLI_RAZA,CLI_FEND,CLI_FMUN,CLI_FCEP,CLI_FEST FROM CPACLIE');
             if (FMenuList2.ED_CODI.Text <> '') then begin
                Sql.Add(StrANd + ' CLI_APELIDO >= '+ ''''+ FMenuList2.ED_CODI.Text+'''');
                StrAnd := ' and ' ;
             end ;
             if (FMenuList2.ED_CODF.Text <> '') then Begin
                Sql.Add(StrANd + ' CLI_APELIDO <= '+ ''''+ FMenuList2.ED_CODF.Text+'''');
                StrAnd := ' and ' ;
             end ;
             if (FMenuList2.Maskedit3.Text <> '  /  /    ') then begin
                SQL.Add(StrANd + 'CONVERT(Char(08),CLI_UCOM,112) >= ' + '''' + FMenuList2.Maskedit3.Text  + '''' ) ;
                StrAnd := ' and ' ;
             end ;
             if (FMenuList2.Maskedit4.Text <> '  /  /    ') then Begin
                SQL.Add(StrANd + ' CONVERT(Char(08),CLI_UCOM,112) <= ' + '''' + FMenuList2.Maskedit4.Text  + '''' ) ;
                StrAnd := ' and ' ;
             end ;
              if (FMenuList2.RDG_ORDE.ItemIndex = 0) then
                Sql.Add('ORDER BY CLI_APELIDO')
             else
                Sql.Add('ORDER BY CLI_RAZA');
             Open;
           end;
      end else begin
          QR_CLIE.DataSet := FEtiqueta.Q_ETIQ ;

      end ;

end;

procedure TList_ClieEtiq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_CLIE.close ;
  action := cafree ;
end;

procedure TList_ClieEtiq.QRLabel1Print(sender: TObject; var Value: String);
begin
  value := 'Att. ' + FMenuList2.edit1.Text ;
end;

procedure TList_ClieEtiq.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if FMenu.StrEtiqueta = '2'  then begin
        Q_CLIE.Close;
        if FEtiqueta.Q_ETIQEtiqueta.asstring = 'S' then begin
           Q_CLIE.Sql.Clear;
           Q_CLIE.Sql.Add('SELECT CLI_RAZA,CLI_FEND,CLI_FMUN,CLI_FCEP,CLI_FEST FROM CPACLIE');
           Q_CLIE.Sql.Add(' where CLI_CODI = '+ FEtiqueta.Q_ETIQREC_CLIE.asstring ) ;
           Q_CLIE.Open ;
        end ;   
     end ;

end;

end.

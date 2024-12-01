unit URelCFinais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, jpeg;

type
  TFRelCFinais = class(TForm)
    CFINAIS: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    Q_CFINAIS: TwwQuery;
    QRBand2: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText13: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel7: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    Q_CFINAISCLIF_ID: TAutoIncField;
    Q_CFINAISCLIF_PESSOA: TStringField;
    Q_CFINAISCLIF_RAZA: TStringField;
    Q_CFINAISCLIF_NOME: TStringField;
    Q_CFINAISCLIF_CGCCPF: TStringField;
    Q_CFINAISCLIF_INSCRG: TStringField;
    Q_CFINAISCLIF_ENDERECO: TStringField;
    Q_CFINAISCLIF_ENDERECO_COMPL: TStringField;
    Q_CFINAISCLIF_ENDERECO_BAIRRO: TStringField;
    Q_CFINAISCLIF_MUNICIPIO: TStringField;
    Q_CFINAISCLIF_MUNICIPIO2: TStringField;
    Q_CFINAISUF_SIGLA: TStringField;
    Q_CFINAISCLIF_CEP: TStringField;
    Q_CFINAISCLIF_TEL1: TStringField;
    Q_CFINAISCLIF_TEL2: TStringField;
    Q_CFINAISCLIF_FAX: TStringField;
    Q_CFINAISCLIF_EMAIL: TStringField;
    Q_CFINAISCLIF_CONTATO: TStringField;
    Q_CFINAISMUN_ID: TIntegerField;
    Q_CFINAISCLIF_CARGAPALLET: TStringField;
    Q_CFINAISNBFINAL_DT_INCL: TDateTimeField;
    Q_CFINAISNBFINAL_COD_CLIN: TStringField;
    Q_CFINAISCLIN_RAZA: TStringField;
    QRShape2: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCFinais: TFRelCFinais;

implementation
uses USenha,UMenu, UAbTabelas, UClienteFinal;
{$R *.DFM}

procedure TFRelCFinais.FormCreate(Sender: TObject);
begin
  Q_CFINAIS.close ;
  Q_CFINAIS.SQL.clear ;
  Q_CFINAIS.SQL.ADD('Select A.*,B.NBFINAL_DT_INCL,B.NBFINAL_COD_CLIN,C.CLIN_RAZA');
  Q_CFINAIS.SQL.ADD('from');
  Q_CFINAIS.SQL.ADD('ClienteFINAL A,');
  Q_CFINAIS.SQL.ADD('Cliente_NBFINAL B,');
  Q_CFINAIS.SQL.ADD('CLIENTENBF C');
  Q_CFINAIS.SQL.ADD('where A.CLIF_ID = B.CLIF_ID and');
  Q_CFINAIS.SQL.ADD('B.CLIN_ID = C.CLIN_ID');

  IF FClienteFINAL.wwDBLookupCombo3.text <> '' then
      Q_CFINAIS.SQL.ADD ( ' and A.CLIF_ID = ' + '''' + FClienteFINAL.wwDBLookupCombo3.lookupvalue + '''' ) ;

  IF FClienteFINAL.wwDBLookupCombo4.text <> '' then
      Q_CFINAIS.SQL.ADD ( ' and B.CLIN_ID = ' + '''' + FClienteFINAL.wwDBLookupCombo4.lookupvalue + '''' ) ;

  Q_CFINAIS.SQL.ADD ( ' order by A.CLIF_NOME  ' ) ;
  Q_CFINAIS.Open ;

end;

procedure TFRelCFinais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CFINAIS.close ;
  action := cafree ;
end;

procedure TFRelCFinais.QRDBText2Print(sender: TObject; var Value: String);
begin
  if (Value = 'F') then Value := 'Física';
  if (Value = 'J') then Value := 'Jurídica';
end;

procedure TFRelCFinais.QRDBText1Print(sender: TObject; var Value: String);
begin
  if (Value = 'S') then Value := 'Sim';
  if (Value = 'N') then Value := 'Não';
end;

end.

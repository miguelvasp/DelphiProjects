unit URelFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables, Wwquery, Wwdatsrc;

type
  TFRelFornecedores = class(TForm)
    FORNE: TQuickRep;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    Q_FORNE: TwwQuery;
    QRShape5: TQRShape;
    TRANS_FANTASIA: TQRDBText;
    TRANS_RAZA: TQRDBText;
    TRANS_PESSOA: TQRDBText;
    TRANS_FLAG: TQRDBText;
    TRANS_CNPJ: TQRDBText;
    TRANS_INSCRICAO: TQRDBText;
    TRANS_CEP: TQRDBText;
    TRANS_ENDERECO: TQRDBText;
    TRANS_ENDERECO_BAIRRO: TQRDBText;
    MUN_ID: TQRDBText;
    TRANS_TEL: TQRDBText;
    TRANS_TEL2: TQRDBText;
    TRANS_FAX: TQRDBText;
    TRANS_ENDERECO_COMPL: TQRDBText;
    UF_SIGLA: TQRDBText;
    TRANS_EMAIL: TQRDBText;
    TRANS_CONTATO: TQRDBText;
    CON_CODI: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape1: TQRShape;
    Q_FORNETRANS_ID: TAutoIncField;
    Q_FORNETRANS_FANTASIA: TStringField;
    Q_FORNETRANS_RAZA: TStringField;
    Q_FORNETRANS_CNPJ: TStringField;
    Q_FORNETRANS_INSCRICAO: TStringField;
    Q_FORNETRANS_ENDERECO: TStringField;
    Q_FORNETRANS_ENDERECO_COMPL: TStringField;
    Q_FORNETRANS_ENDERECO_BAIRRO: TStringField;
    Q_FORNETRANS_MUNICIPIO: TStringField;
    Q_FORNETRANS_CEP: TStringField;
    Q_FORNEUF_SIGLA: TStringField;
    Q_FORNETRANS_TEL: TStringField;
    Q_FORNETRANS_TEL2: TStringField;
    Q_FORNETRANS_FAX: TStringField;
    Q_FORNETRANS_EMAIL: TStringField;
    Q_FORNETRANS_CONTATO: TStringField;
    Q_FORNETRANS_FLAG: TStringField;
    Q_FORNECON_CODI: TStringField;
    Q_FORNEMUN_ID: TIntegerField;
    Q_FORNETRANS_PESSOA: TStringField;
    Q_CG: TwwQuery;
    Q_CGCON_DESC: TStringField;
    Q_CGCON_CODI: TStringField;
    Q_CGCON_ENSA: TStringField;
    Q_CGCON_OPER: TStringField;
    Q_CGCON_FLOA: TFloatField;
    Q_CGCON_FLUX: TStringField;
    DS_FORNE: TwwDataSource;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TRANS_PESSOAPrint(sender: TObject; var Value: String);
    procedure TRANS_FLAGPrint(sender: TObject; var Value: String);
    procedure MOT_PAMCARDPrint(sender: TObject; var Value: String);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelFornecedores: TFRelFornecedores;

implementation
uses USenha,Umenu, UAbTabelas, UFRelFornecedores;
{$R *.DFM}

procedure TFRelFornecedores.FormCreate(Sender: TObject);
begin
        Q_FORNE.SQL.clear ;
        Q_FORNE.SQL.ADD('SELECT * FROM    TRANSPORTADORA where ');
        Q_FORNE.SQL.ADD(' TRANS_ID <> null ') ;
        IF (RTIPO = 0) then
            Q_FORNE.SQL.ADD('AND TRANS_FLAG = ' + '''' + 'S' + '''' )
        else
            Q_FORNE.SQL.ADD('AND TRANS_FLAG = ' + '''' + 'N' + '''') ;

        if FORNECI <> '' then
               Q_FORNE.SQL.ADD ( 'and TRANS_ID = ' + FORNECI  ) ;
        {if FORNECF <> '' then
               Q_FORNE.SQL.ADD ( 'and TRANS_ID <= ' + FORNECF  ) ;}

        Q_FORNE.SQL.ADD('order by TRANS_RAZA');
        Q_FORNE.open ;
        Q_CG.open ;
        Q_MUNI.open ;

        
end;

procedure TFRelFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_FORNE.close ;
  Q_CG.close ;
  Q_MUNI.close ;
  action := cafree ;
end;

procedure TFRelFornecedores.TRANS_PESSOAPrint(sender: TObject;
  var Value: String);
begin
  if (Value = 'F') then Value := 'Física';
  if (Value = 'J') then Value := 'Juridica';
end;

procedure TFRelFornecedores.TRANS_FLAGPrint(sender: TObject;
  var Value: String);
begin
  if (Value = 'N') then Value := 'Não';
  if (Value = 'S') then Value := 'Sim';
end;

procedure TFRelFornecedores.MOT_PAMCARDPrint(sender: TObject;
  var Value: String);
begin
  if (Value = 'N') then Value := 'Não';
  if (Value = 'S') then Value := 'Sim';
end;

procedure TFRelFornecedores.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Q_FORNETRANS_CNPJ.EditMask := '' ;
   if Q_FORNETRANS_PESSOA.text = 'F' then
      Q_FORNETRANS_CNPJ.EditMask := '!999.999.999-99;0;_'
   else Q_FORNETRANS_CNPJ.EditMask := '!99.999.999/9999-99;0;_';

end;

end.

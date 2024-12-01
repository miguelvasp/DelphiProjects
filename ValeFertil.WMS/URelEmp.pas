unit URelEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, Wwquery, jpeg;

type
  TFRelEmp = class(TForm)
    EMP: TQuickRep;
    Q_EMP: TwwQuery;
    QRGroup1: TQRGroup;
    QRLabel22: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText16: TQRDBText;
    Q_EMPAR_ID: TAutoIncField;
    Q_EMPAR_NOME: TStringField;
    Q_EMPAR_CONTROL_POS: TStringField;
    Q_EMPAR_EMPILHA_LIVRE: TStringField;
    Q_EMPAR_EMPILHA_MAX: TIntegerField;
    Q_EMPAR_DISPONIVEL: TStringField;
    Q_EMPPAR_ID: TIntegerField;
    Q_EMPPAR_ID_1: TAutoIncField;
    Q_EMPPAR_NOME: TStringField;
    Q_EMPPAR_RAZA: TStringField;
    Q_EMPPAR_CNPJ: TStringField;
    Q_EMPPAR_INSC: TStringField;
    Q_EMPPAR_ENDERECO: TStringField;
    Q_EMPPAR_ENDERECO_COMPL: TStringField;
    Q_EMPPAR_ENDERECO_BAIRRO: TStringField;
    Q_EMPPAR_UF_SIGLA: TStringField;
    Q_EMPPAR_CEP: TStringField;
    Q_EMPPAR_TEL: TStringField;
    Q_EMPPAR_FAX: TStringField;
    Q_EMPPAR_EMAIL: TStringField;
    Q_EMPAR_ID_1: TIntegerField;
    Q_EMPMUN_ID: TIntegerField;
    Q_EMPAR_ID_OPER: TIntegerField;
    Q_EMPMUN_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEmp: TFRelEmp;

implementation
uses USenha,Umenu, UAbTabelas, UParametro;
{$R *.DFM}

procedure TFRelEmp.FormCreate(Sender: TObject);
begin
  Q_EMP.open ;
end;

procedure TFRelEmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_EMP.close ;
  action := cafree ;
end;

end.

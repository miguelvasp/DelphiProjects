unit U_RbVencimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwtable, Qrctrls, quickrpt, ExtCtrls;

type
  TFlstRbVencimentos = class(TForm)
    LST_venc: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
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
    QRBand3: TQRBand;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    T_Empr: TwwTable;
    T_EmprEmp_Sequencia: TIntegerField;
    T_EmprEmp_Razao: TStringField;
    T_EmprEmp_CGC: TStringField;
    T_EmprEmp_Insc: TStringField;
    T_EmprEmp_EndFiscal: TStringField;
    T_EmprEmp_MunFiscal: TStringField;
    T_EmprEmp_EstFiscal: TStringField;
    T_EmprEmp_CepFiscal: TStringField;
    T_EmprEmp_Telefone1: TStringField;
    T_EmprEmp_Telefone2: TStringField;
    T_EmprEmp_Fax: TStringField;
    T_EmprEmp_NomeFantasia: TStringField;
    T_EmprEmp_Logo: TBlobField;
    Q_venc: TwwQuery;
    DS_venc: TwwDataSource;
    Q_vencREC_CODI: TIntegerField;
    Q_vencREC_CLIE: TIntegerField;
    Q_vencREC_NFIS: TStringField;
    Q_vencREC_DEVE: TStringField;
    Q_vencREC_RAZA: TStringField;
    Q_vencREC_CGER: TStringField;
    Q_vencREC_VALO: TFloatField;
    Q_vencREC_DESC: TFloatField;
    Q_vencREC_VLIQ: TFloatField;
    Q_vencREC_VENC: TDateTimeField;
    Q_vencREC_BANC: TStringField;
    Q_vencREC_VPAG: TFloatField;
    Q_vencREC_EMIS: TDateTimeField;
    Q_vencREC_MOED: TStringField;
    Q_vencREC_DCON: TDateTimeField;
    Q_vencREC_MORI: TStringField;
    Q_vencREC_DCOR: TDateTimeField;
    Q_vencREC_VORI: TFloatField;
    Q_vencREC_VPRE: TDateTimeField;
    Q_vencREC_HIST: TStringField;
    Q_vencREC_SALD: TFloatField;
    Q_vencREC_SITU: TStringField;
    Q_vencREC_FILI: TStringField;
    Q_vencIRE_CODI: TIntegerField;
    Q_vencIRE_DATA: TDateTimeField;
    Q_vencIRE_VDIF: TFloatField;
    Q_vencIRE_VTOT: TFloatField;
    Q_vencCON_DESC: TStringField;
    Q_vencCON_CODI: TStringField;
    Q_vencFIL_CODI: TStringField;
    Q_vencFIL_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstRbVencimentos: TFlstRbVencimentos;

implementation

{$R *.DFM}











end.

unit U_Forn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Qrctrls, quickrpt, ExtCtrls, Wwtable;

type
  TFlstforn = class(TForm)
    LST_FORN: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape4: TQRShape;
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
    QRBand3: TQRBand;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    Q_Forn: TwwQuery;
    DS_FORn: TwwDataSource;
    Q_FornNumero: TIntegerField;
    Q_FornDocumento: TStringField;
    Q_FornFornecedor: TStringField;
    Q_FornRazao: TStringField;
    Q_FornContaGerencial: TStringField;
    Q_FornValorTitulo: TFloatField;
    Q_FornDescAcresc: TFloatField;
    Q_FornValorLiquido: TFloatField;
    Q_FornVencimento: TDateTimeField;
    Q_FornBancoConta: TStringField;
    Q_FornEmissao: TDateTimeField;
    Q_FornMoeda: TStringField;
    Q_FornDataMoeda: TDateTimeField;
    Q_FornMoedaOriginal: TStringField;
    Q_FornDataMoedaOriginal: TDateTimeField;
    Q_FornValorOriginal: TFloatField;
    Q_FornVencimentoPrevisto: TDateTimeField;
    Q_FornHistorico: TStringField;
    Q_FornFlag: TStringField;
    Q_FornSituacao: TStringField;
    Q_FornSaldo: TFloatField;
    Q_FornFilial: TStringField;
    Q_FornData: TDateTimeField;
    Q_FornDescAcresc_1: TFloatField;
    Q_FornValorPago: TFloatField;
    Q_FornNumero_1: TIntegerField;
    Q_FornCON_CODI: TStringField;
    Q_FornCON_DESC: TStringField;
    Q_FornFIL_CODI: TStringField;
    Q_FornFIL_DESC: TStringField;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flstforn: TFlstforn;
  Strger : string ;
implementation
uses RelFPagtos ;
{$R *.DFM}










procedure TFlstforn.FormCreate(Sender: TObject);
begin
  Q_forn.close ;
  Q_forn.SQL.clear ;
  Q_forn.SQL.ADD('Select A.*,B.Data,B.DescAcresc,B.ValorPago,B.Numero,C.CON_CODI,C.CON_DESC,D.FIL_CODI,D.FIL_DESC  from CPAPAGA A,CPAIPAG B ,CPACONT C,CPAFILI D  ') ;
  Q_forn.SQL.ADD('where A.ContaGerencial = C.CON_CODI and A.Filial = D.Fil_Codi and ') ;
  Q_forn.SQL.ADD('A.Numero = B.Numero ');
  if NumeroI <> '' then
     Q_forn.SQL.ADD( ' and A.Numero >= '+''''+ NumeroI +'''');
  if NumeroF <> '' then
     Q_forn.SQL.ADD( ' and A.Numero <= '+ ''''+NumeroF +'''');
  if FornecedorI <> '' then
     Q_forn.SQL.ADD( ' and A.Fornecedor >= '+''''+ FornecedorI +'''');
  if FornecedorF <> '' then
     Q_forn.SQL.ADD( ' and A.Fornecedor <= '+''''+ FornecedorF +'''');
  if FilialI <> '' then
     Q_forn.SQL.ADD( ' and A.Filial >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_forn.SQL.ADD( ' and A.Filial <= '+''''+ FilialF +'''');
  if ContaGerencialI <> '' then
     Q_forn.SQL.ADD( ' and A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_forn.SQL.ADD( ' and A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
  if VencimentoI <> 0.0 then
     Q_forn.SQL.ADD( ' and A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
  if VencimentoF <> 0.0 then
     Q_forn.SQL.ADD( ' and A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
  if BancocontaI <> '' then
     Q_forn.SQL.ADD( ' and A.BancoConta >= '+''''+ BancoContaI +'''');
  if BancocontaF <> '' then
     Q_forn.SQL.ADD( ' and A.BancoConta <= '+''''+ BancoContaF +'''');
  if Tipo = 0 then
     Q_forn.SQL.ADD( ' and A.Saldo = 0 ');
  if Tipo = 1 then
     Q_forn.SQL.ADD( ' and A.Saldo <> 0 ');
  if rTipo = 1  then
     Q_forn.SQL.ADD( ' order by A.Razao ' )  ;
  Q_forn.open;
  T_EMPR.Open;
  QRImage1.picture.assign(T_EMPREMP_LOGO) ;
  T_EMPR.close;
end;

procedure TFlstforn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_Forn.close;
   action := cafree ;       
end;

procedure TFlstforn.QRDBText2Print(sender: TObject; var Value: String);
begin
   if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText3Print(sender: TObject; var Value: String);
begin
   if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText12Print(sender: TObject; var Value: String);
begin
  if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText4Print(sender: TObject; var Value: String);
begin
  if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText5Print(sender: TObject; var Value: String);
begin
   if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText6Print(sender: TObject; var Value: String);
begin
  if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText13Print(sender: TObject; var Value: String);
begin
   if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText7Print(sender: TObject; var Value: String);
begin
   if strGER = Q_fornNumero.asstring then value := '';
end;

procedure TFlstforn.QRDBText8Print(sender: TObject; var Value: String);
begin
   if strGER = Q_fornNumero.asstring then value := '';
    StrGER := Q_fornNumero.asstring ;
end;


procedure TFlstforn.QRLabel14Print(sender: TObject; var Value: String);
begin
    value := Q_FornCon_Desc.asstring
end;

end.

unit U_VENC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, Qrctrls, Wwdatsrc, Wwquery, quickrpt, ExtCtrls;

type
  TFlstVencimentos = class(TForm)
    Lst_Venc: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    Q_Venc: TwwQuery;
    DS_Venc: TwwDataSource;
    Q_VencNumero: TIntegerField;
    Q_VencVencimento: TDateTimeField;
    Q_VencRazao: TStringField;
    Q_VencHistorico: TStringField;
    Q_VencDocumento: TStringField;
    Q_VencContaGerencial: TStringField;
    Q_VencFilial: TStringField;
    Q_VencValorTitulo: TFloatField;
    Q_VencData: TDateTimeField;
    Q_VencDescAcresc: TFloatField;
    Q_VencValorPago: TFloatField;
    Q_VencCon_COdi: TStringField;
    Q_VencCon_Desc: TStringField;
    QRDBText1: TQRDBText;
    QRLabel14: TQRLabel;
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
    Q_VencFIL_CODI: TStringField;
    Q_VencFIL_DESC: TStringField;
    QRDBText2: TQRDBText;
    QRDBText13: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlstVencimentos: TFlstVencimentos;
  StrGer : string ;
implementation
uses RelFPagtos ;
{$R *.DFM}











procedure TFlstVencimentos.FormCreate(Sender: TObject);
begin
  Q_venc.close ;
  Q_venc.SQL.clear ;
  Q_venc.SQL.ADD('Select A.Numero,A.BancoConta,A.Saldo,A.Vencimento,A.Razao,A.Historico,A.Documento,A.ContaGerencial, ');
  Q_venc.SQL.ADD('A.Filial,A.ValorTitulo,B.Data,B.DescAcresc,B.ValorPago,C.Con_COdi,C.Con_Desc,  ');
  Q_venc.SQL.ADD('D.FIL_CODI,D.FIL_DESC ');
  Q_venc.SQL.ADD('from CPAPAGA A,CPAIPAG B,CPACONT C,CPAFILI D  ');
  Q_venc.SQL.ADD('where A.Numero = B.Numero and A.ContaGerencial = C.Con_Codi  and ') ;
  Q_venc.SQL.ADD('A.Filial = D.Fil_Codi  ') ;
  if NumeroI <> '' then
     Q_venc.SQL.ADD( ' and A.Numero >= '+''''+ NumeroI +'''');
  if NumeroF <> '' then
     Q_venc.SQL.ADD( ' and A.Numero <= '+ ''''+NumeroF +'''');
  if FornecedorI <> '' then
     Q_venc.SQL.ADD( ' and A.Razao >= '+''''+ FornecedorI +'''');
  if FornecedorF <> '' then
     Q_venc.SQL.ADD( ' and A.Razao <= '+''''+ FornecedorF +'''');
  if FilialI <> '' then
     Q_venc.SQL.ADD( ' and A.Filial >= '+''''+ FilialI +'''');
  if FilialF <> '' then
     Q_venc.SQL.ADD( ' and A.Filial <= '+''''+ FilialF +'''');
  if ContaGerencialI <> '' then
     Q_venc.SQL.ADD( ' and A.ContaGerencial >= '+''''+ ContaGerencialI +'''');
  if ContaGerencialF <> '' then
     Q_venc.SQL.ADD( ' and A.ContaGerencial <= '+''''+ ContaGerencialF +'''');
  if VencimentoI <> 0.0 then
     Q_venc.SQL.ADD( ' and A.Vencimento >= '+ ''''+ FormatDateTime('MM/DD/YYYY',VencimentoI ) + '''' );
  if VencimentoF <> 0.0 then
     Q_venc.SQL.ADD( ' and A.Vencimento <= '+ '''' + FormatDateTime('MM/DD/YYYY',VencimentoF ) + '''' );
  if BancocontaI <> '' then
     Q_venc.SQL.ADD( ' and A.BancoConta >= '+''''+ BancoContaI +'''');
  if BancocontaF <> '' then
     Q_venc.SQL.ADD( ' and A.BancoConta <= '+''''+ BancoContaF +'''');
  if Tipo = 0 then
     Q_venc.SQL.ADD( ' and A.Saldo = 0 ');
  if Tipo = 1 then
     Q_venc.SQL.ADD( ' and A.Saldo <> 0 ');
  if rTipo = 1  then
     Q_venc.SQL.ADD( ' order by A.Vencimento ' )  ;
  Q_venc.open;
  T_EMPR.Open;
  QRImage1.picture.assign(T_EMPREMP_LOGO) ;
  T_EMPR.close;
end;

procedure TFlstVencimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_Venc.close ;
  action := cafree ; 
end;

procedure TFlstVencimentos.QRDBText2Print(sender: TObject;
  var Value: String);
begin
   if strGER = Q_vencNumero.asstring then value := '';
    
end;

procedure TFlstVencimentos.QRDBText3Print(sender: TObject;
  var Value: String);
begin
   if strGER = Q_vencNumero.asstring then value := '';

end;

procedure TFlstVencimentos.QRDBText4Print(sender: TObject;
  var Value: String);
begin
   if strGER = Q_vencNumero.asstring then value := '';

end;

procedure TFlstVencimentos.QRDBText5Print(sender: TObject;
  var Value: String);
begin
   if strGER = Q_vencNumero.asstring then value := '';

end;

procedure TFlstVencimentos.QRDBText6Print(sender: TObject;
  var Value: String);
begin
   if strGER = Q_vencNumero.asstring then value := '';

end;

procedure TFlstVencimentos.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  if strGER = Q_vencNumero.asstring then value := '';

end;

procedure TFlstVencimentos.QRDBText8Print(sender: TObject;
  var Value: String);
begin
   if strGER = Q_vencNumero.asstring then value := '';
    StrGER := Q_vencNumero.asstring ;
end;

end.

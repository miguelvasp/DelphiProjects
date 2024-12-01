unit UfrmTransferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, wwdblook, Mask, Db, DBTables, Wwquery, ExtCtrls;

type
  TfrmTransferencia = class(TForm)
    Q_Banc: TwwQuery;
    Q_BancBAN_NOME: TStringField;
    Q_BancBAN_CODI: TStringField;
    Q_BancFIL_DESC: TStringField;
    Q_BancBAN_CODEMPR: TStringField;
    Q_Cont: TwwQuery;
    Q_ContDS: TStringField;
    Q_ContCON_DESC: TStringField;
    Q_ContCON_CODI: TStringField;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    cboBan: TwwDBLookupCombo;
    Label3: TLabel;
    cboContaOrigem: TwwDBLookupCombo;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    qrRelatorio: TwwQuery;
    qrEmpresa: TwwQuery;
    qrEmpresaFIL_CODI: TStringField;
    qrEmpresaFIL_DESC: TStringField;
    cboEmpOrigem: TwwDBLookupCombo;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cboBancDest: TwwDBLookupCombo;
    cboCGerencialDest: TwwDBLookupCombo;
    cboEmpDest: TwwDBLookupCombo;
    qrRelatorioNUMERO: TAutoIncField;
    qrRelatorioDATA: TDateTimeField;
    qrRelatorioDOCUMENTO: TStringField;
    qrRelatorioHISTORICO: TStringField;
    qrRelatorioVALOR: TFloatField;
    qrRelatorioEMP_ORIGEM: TStringField;
    qrRelatorioEMP_DESTINO: TStringField;
    qrRelatorioBANCO_ORIGEM: TStringField;
    qrRelatorioBANCO_DESTINO: TStringField;
    qrRelatorioCONTA_ORIGEM: TStringField;
    qrRelatorioCONTA_DESTINO: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferencia: TfrmTransferencia;

implementation

uses UfrmRelTransferencia, UfrmRelTranferencia2;

{$R *.DFM}

procedure TfrmTransferencia.SpeedButton1Click(Sender: TObject);
var
        d1, d2: TDateTime;
begin

      try
          if MaskEdit1.Text <> '  /  /    ' then
              d1 := StrToDate(MaskEdit1.Text) ;
          if MaskEdit2.Text <> '  /  /    ' then
              d2 := StrToDate(MaskEdit2.Text) ;
      except
           on e : EConvertError do
           begin
                MessageBox(Self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR)  ;
           end;
      end;


      with qrRelatorio do
      begin
          Close;
          sql.Clear;
          sql.Add('SELECT A.NUMERO, A.DATA, A.DOCUMENTO, A.HISTORICO, A.VALOR,');
          SQL.Add('(SELECT FIL_DESC FROM CPAFILI WHERE FIL_CODI = A.FILIALORIGEM) AS EMP_ORIGEM,');
          SQL.Add('(SELECT FIL_DESC FROM CPAFILI WHERE FIL_CODI = A.FILIALDESTINO) AS EMP_DESTINO,');
          SQL.Add('(SELECT BAN_NOME FROM CPABANC WHERE BAN_CODI = A.BANCOORIGEM) AS BANCO_ORIGEM ,');
          SQL.Add('(SELECT BAN_NOME FROM CPABANC WHERE BAN_CODI = A.BANCODESTINO) AS BANCO_DESTINO,');
          SQL.Add('(SELECT CON_DESC FROM CPACONT WHERE CON_CODI = A.CTAGERENCIALORIG) AS CONTA_ORIGEM,');
          SQL.Add('(SELECT CON_DESC FROM CPACONT WHERE CON_CODI = A.CTAGERENCIALDEST) AS CONTA_DESTINO');
          SQL.Add('FROM CPATRAN A where 1 = 1');

          if MaskEdit1.Text <> '  /  /    ' then
                SQL.Add('AND CONVERT(CHAR(10), A.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

          if MaskEdit2.Text <> '  /  /    ' then
                SQL.Add('AND CONVERT(CHAR(10), A.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));

          if cboEmpOrigem.Text <> '' then
                SQL.Add('AND A.FILIALORIGEM = ' + QuotedStr(cboEmpOrigem.LookupValue));

          IF cboBan.Text <> '' then
                SQL.Add('AND A.BANCOORIGEM = ' + QuotedStr(cboBan.LookupValue));

          IF cboContaOrigem.Text <> '' then
                SQL.Add('AND A.CTAGERENCIALORIG = ' + QuotedStr(cboContaOrigem.LookupValue));

          IF cboEmpDest.Text <> '' then
                SQL.Add('AND A.FILIALDESTINO = ' + QuotedStr(cboEmpDest.LookupValue));

          IF cboBancDest.Text <> '' then
                SQL.Add('AND A.BANCODESTINO = ' + QuotedStr(cboBancDest.LookupValue));

          IF cboCGerencialDest.Text <> '' then
                SQL.Add('AND A.CTAGERENCIALDEST = ' + QuotedStr(cboCGerencialDest.LookupValue));

          SQL.Add('ORDER BY A.DATA');

          Open;
      end;  //end with qrrelatorio

       frmRelTransferencia := TfrmRelTransferencia.Create(self);
       frmRelTransferencia.Q.Preview;

end;

procedure TfrmTransferencia.FormCreate(Sender: TObject);
begin
        Q_Banc.open;
        Q_Cont.Open;
        qrEmpresa.Open;
end;

procedure TfrmTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action := caFree;
        frmTransferencia := nil;
end;

end.

unit UfrmFaturaGenerica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, DBTables, Wwquery, ExtCtrls, RzPanel, StdCtrls,
  wwdblook, RzButton, RzRadGrp, wwstorep;

type
  TfrmFaturaGenerica = class(TForm)
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_CLINCLIN_UTIL_COD: TStringField;
    Q_CLINCLIN_PESSOA: TStringField;
    Q_CLINCLIN_NOME: TStringField;
    Q_CLINCLIN_CGCCPF: TStringField;
    Q_CLINCLIN_INSCRG: TStringField;
    Q_CLINCLIN_ENDERECO: TStringField;
    Q_CLINCLIN_ENDERECO_COMPL: TStringField;
    Q_CLINCLIN_ENDERECO_BAIRRO: TStringField;
    Q_CLINCLIN_MUNICIPIO: TStringField;
    Q_CLINUF_SIGLA: TStringField;
    Q_CLINCLIN_CEP: TStringField;
    Q_CLINCLIN_TEL1: TStringField;
    Q_CLINCLIN_TEL2: TStringField;
    Q_CLINCLIN_FAX: TStringField;
    Q_CLINCLIN_EMAIL: TStringField;
    Q_CLINCON_CODI: TStringField;
    Q_CLINCLIN_CONTRATO: TStringField;
    Q_CLINMUN_ID: TIntegerField;
    Q_CLINCLIN_TIPOSALDO: TStringField;
    Q_CLINCLIN_DESCONTO: TFloatField;
    dspClin: TDataSetProvider;
    cdsClin: TClientDataSet;
    cdsClinCLIN_RAZA: TStringField;
    cdsClinCLIN_ID: TAutoIncField;
    cdsClinCLIN_UTIL_COD: TStringField;
    cdsClinCLIN_PESSOA: TStringField;
    cdsClinCLIN_NOME: TStringField;
    cdsClinCLIN_CGCCPF: TStringField;
    cdsClinCLIN_INSCRG: TStringField;
    cdsClinCLIN_ENDERECO: TStringField;
    cdsClinCLIN_ENDERECO_COMPL: TStringField;
    cdsClinCLIN_ENDERECO_BAIRRO: TStringField;
    cdsClinCLIN_MUNICIPIO: TStringField;
    cdsClinUF_SIGLA: TStringField;
    cdsClinCLIN_CEP: TStringField;
    cdsClinCLIN_TEL1: TStringField;
    cdsClinCLIN_TEL2: TStringField;
    cdsClinCLIN_FAX: TStringField;
    cdsClinCLIN_EMAIL: TStringField;
    cdsClinCON_CODI: TStringField;
    cdsClinCLIN_CONTRATO: TStringField;
    cdsClinMUN_ID: TIntegerField;
    cdsClinCLIN_TIPOSALDO: TStringField;
    cdsClinCLIN_DESCONTO: TFloatField;
    RzGroupBox1: TRzGroupBox;
    cboCliente: TwwDBLookupCombo;
    RzGroupBox2: TRzGroupBox;
    cboCondPgto: TwwDBLookupCombo;
    Q_COND: TwwQuery;
    Q_CONDDescricao: TStringField;
    Q_CONDNum_Parcelas: TFloatField;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDPagamento: TStringField;
    Q_CONDFora: TStringField;
    RzRadioGroup1: TRzRadioGroup;
    RzGroupBox3: TRzGroupBox;
    edtValor: TEdit;
    RzBitBtn1: TRzBitBtn;
    STP_GERAFATURA: TwwStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFaturaGenerica: TfrmFaturaGenerica;

implementation

{$R *.DFM}

procedure TfrmFaturaGenerica.FormCreate(Sender: TObject);
begin
  cdsClin.Open;
  Q_COND.Open;
end;

procedure TfrmFaturaGenerica.RzBitBtn1Click(Sender: TObject);
var valor : Double;
begin

 if cboCliente.Text = '' then begin
    MessageBox(Self.Handle, 'Informe o cliente', 'Erro', MB_OK + MB_ICONERROR)  ;
    Abort;
 end;

 if cboCondPgto.Text = '' then begin
    MessageBox(Self.Handle, 'Informe a condição de pagamento', 'Erro', MB_OK + MB_ICONERROR)  ;
    Abort;
 end;

 try
     valor := StrToFloat(edtValor.Text);
 except
     MessageBox(Self.Handle, 'Informe o valor da fatura', 'Erro', MB_OK + MB_ICONERROR)  ;
     Abort;
 end;

  if valor <= 0 then begin
    MessageBox(Self.Handle, 'Valor inferior ou igual a zero', 'Erro', MB_OK + MB_ICONERROR)  ;
    Abort;
 end;


 if MessageBox(Self.Handle, 'Confirma a geração da fatura?', 'Confirmaçao', MB_YESNO + MB_ICONQUESTION) = 6 then
 begin
      try
      Begin
         STP_GERAFATURA.ParamByName('@VALORCHEIO').Value    :=  valor ;
         STP_GERAFATURA.ParamByName('@CLIN_ID').Value       :=  StrToInt(cboCliente.LookupValue);
         STP_GERAFATURA.ParamByName('@COND_PGTO_ID').Value  :=  StrToInt(cboCondPgto.LookupValue);
         if RzRadioGroup1.ItemIndex = 0 then
            STP_GERAFATURA.ParamByName('@TIPO').Value  :=  '2'
         else
            STP_GERAFATURA.ParamByName('@TIPO').Value  :=  '3';
         STP_GERAFATURA.Execproc;
         MessageBox(Self.Handle, 'Geração efetuada com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION)  ;
         CLOSE;
       End
      except
       begin
         MessageDlg('Geração de Fatura Transporte, com erro !',mtInformation,[mbOk], 0);
          abort ;
       end;
      end;
 end;
end;

procedure TfrmFaturaGenerica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   cdsClin.Close;
   Q_COND.Close;
   Action := caFree;
   frmFaturaGenerica := nil;
end;

end.

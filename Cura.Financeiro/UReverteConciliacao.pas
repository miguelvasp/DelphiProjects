unit UReverteConciliacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, wwdblook, DBTables, Wwquery, DBCtrls, Buttons, Mask;

type
  TfrmReverteConciliacao = class(TForm)
    Q_AUX: TwwQuery;
    GroupBox1: TGroupBox;
    cboBanco: TwwDBLookupCombo;
    qrBancos: TwwQuery;
    qrBancosBAN_CODI: TStringField;
    qrBancosBAN_NOME: TStringField;
    GroupBox2: TGroupBox;
    DBText1: TDBText;
    qrDataConc: TwwQuery;
    qrDataConcDATA: TDateTimeField;
    DataSource1: TDataSource;
    GroupBox3: TGroupBox;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    qrLibera: TwwQuery;
    QRCPABANC: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure cboBancoCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReverteConciliacao: TfrmReverteConciliacao;

implementation

{$R *.DFM}

procedure TfrmReverteConciliacao.FormCreate(Sender: TObject);
begin
  qrBancos.Open;
end;

procedure TfrmReverteConciliacao.cboBancoCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   qrDataConc.Close;
   qrDataConc.Params[0].AsString :=  cboBanco.LookupValue;
   qrDataConc.Open;
end;

procedure TfrmReverteConciliacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmReverteConciliacao := nil;
end;

procedure TfrmReverteConciliacao.BitBtn1Click(Sender: TObject);
var data : TDateTime;
begin

   if qrDataConcDATA.AsString = '' then
   begin
     MessageBox(Self.Handle, 'Não existe período conciliado para esta conta.', 'Informação', MB_OK + MB_ICONINFORMATION)  ;
     Abort;
   end;

   try
      data := StrToDate(MaskEdit1.Text);
   except
      MessageBox(Self.Handle, 'Data inválida', 'Erro', MB_OK + MB_ICONERROR)  ;
      Abort;
   end;


   if data >= qrDataConcDATA.Value then
   begin
       MessageBox(Self.Handle, 'A data de liberação não pode ser maior ou igual a data já conciliada', 'Erro', MB_OK + MB_ICONERROR)  ;
       Abort;
   end;



   if MessageBox(Self.Handle, PChar('Confirma o desbloqueio da movimentação bancária da seguinte conta bancária:' + #13 +
   'Conta bancária: ' + cboBanco.Text + #13 + 'Liberação da movimentação bancária a partir de: ' + MaskEdit1.Text), '', MB_YESNO + MB_ICONQUESTION) = 6 then
   begin

   
       qrLibera.Params[0].AsString := FormatDateTime('YYYYMMDD', data);
       qrLibera.Params[1].AsString := cboBanco.LookupValue;
       qrLibera.ExecSQL;

       QRCPABANC.Params[0].AsString := FormatDateTime('YYYYMMDD', data);
       QRCPABANC.Params[1].AsString := cboBanco.LookupValue;
       QRCPABANC.ExecSQL;

       
       qrDataConc.Close;
       cboBanco.Text := '';
       cboBanco.LookupValue := '';
       MaskEdit1.Clear;
       cboBanco.SetFocus;
       MessageBox(Self.Handle, 'Desbloqueio efetuado com sucesso.', 'Informação', MB_OK + MB_ICONINFORMATION) ;
   end;



   

end;

end.

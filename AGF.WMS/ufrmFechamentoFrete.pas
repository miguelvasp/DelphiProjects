unit ufrmFechamentoFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB;

type
  TfrmFechamentoFrete = class(TForm)
    qrParametro: TADOQuery;
    Label1: TLabel;
    qrParametrodata: TStringField;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    cboQuinzena: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cboMes: TComboBox;
    Label7: TLabel;
    cboAno: TComboBox;
    Button1: TButton;
    qrParametroDATA_FRETE_FECHAMENTO: TDateTimeField;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamentoFrete: TfrmFechamentoFrete;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmFechamentoFrete.FormCreate(Sender: TObject);
begin
   qrParametro.Open;
   Label1.Caption := qrParametrodata.AsString;
end;

procedure TfrmFechamentoFrete.Button1Click(Sender: TObject);
var data : string;
begin
   if cboQuinzena.Text = '' then begin
      ShowMessage('Informe a quinzena');
      Abort;
  end;

  if cboMes.Text = '' then begin
      ShowMessage('Informe o mês');
      Abort;
  end;

  if cboAno.Text = '' then begin
      ShowMessage('Informe o ano');
      Abort;
  end;


    if cboQuinzena.ItemIndex = 0 then
     data := '01/';

  if cboQuinzena.ItemIndex = 1 then
     data := '15/';

  data := data + FormatFloat('00', cboMes.ItemIndex) + '/' + cboAno.Text;

  if qrParametroDATA_FRETE_FECHAMENTO.AsDateTime > StrToDate(data) then begin
      ShowMessage('O periodo de fechamento informado é inferior ao que existe na base de dados!');
      Abort;
  end;

  with ADOQuery1 do begin
      Close;
      sql.Clear;
      sql.Add('update parametro set DATA_FRETE_FECHAMENTO = :DATA_FRETE_FECHAMENTO');
      Parameters[0].Value := StrToDate(data);
      ExecSQL;
  end;


  qrParametro.close;
  qrParametro.Open;


  ShowMessage('Fechamento do pagamento de frete atualizado para:' + qrParametrodata.AsString );
  Self.Close;



end;

procedure TfrmFechamentoFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrParametro.close;
  Action := caFree;
  frmFechamentoFrete := nil;
end;

end.

unit UfrmFaturamentoMultimedAgrupa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, Db, ADODB;

type
  TfrmFaturamentoMultimedAgrupa = class(TForm)
    qrEmpresa: TADOQuery;
    edtEmissao: TMaskEdit;
    Label1: TLabel;
    edtVencimento: TMaskEdit;
    Vencimento: TLabel;
    edtNotaFiscal: TMaskEdit;
    Label2: TLabel;
    cboEmpresa: TwwDBLookupCombo;
    Label3: TLabel;
    edtHistorico: TMaskEdit;
    Label4: TLabel;
    Button1: TButton;
    qrEmpresaFIL_CODI: TStringField;
    qrEmpresaFIL_DESC: TStringField;
    qrEmpresaFIL_NATOPERA: TStringField;
    qrEmpresaFIL_DESCSERV: TStringField;
    qrEmpresaFIL_ULTIMANF: TStringField;
    qrEmpresaRAZAO: TStringField;
    qrEmpresaCNPJ: TStringField;
    qrEmpresaENDERECO: TStringField;
    qrEmpresaCOMPL: TStringField;
    qrEmpresaCEP: TStringField;
    qrEmpresaCIDADE: TStringField;
    qrEmpresaUF: TStringField;
    qrEmpresaSEL: TStringField;
    lbTipo: TLabel;
    stpAgrupa: TADOStoredProc;
    ADOQuery1: TADOQuery;
    qrLancar: TADOQuery;
    qrLancarNRFATURAMENTO: TWideStringField;
    qrLancarDTFATURA: TDateTimeField;
    qrLancarMES: TWideStringField;
    qrLancarANO: TWideStringField;
    qrLancarNOMECONVENIO: TStringField;
    qrLancarCLI_CODI_FINANC: TBCDField;
    qrLancarCLI_CGC_FINANC: TStringField;
    qrLancarVALORFATURADO: TBCDField;
    qrLancarLancar: TStringField;
    qrLancarAgrupar: TStringField;
    qrLancarId: TAutoIncField;
    qrLancarREC_ID: TIntegerField;
    stpLancar: TADOStoredProc;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFaturamentoMultimedAgrupa: TfrmFaturamentoMultimedAgrupa;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TfrmFaturamentoMultimedAgrupa.Button1Click(Sender: TObject);
begin

  if edtEmissao.Text = '  /  /    '  then begin
      ShowMessage('Informe a emissão');
      Abort;
  end;
    if edtVencimento.Text = '  /  /    '  then begin
      ShowMessage('Informe o vencimento');
      Abort;
  end;


     if cboEmpresa.Text = ''  then begin
      ShowMessage('Informe a empresa');
      Abort;
  end;

  if lbTipo.Caption = 'A' then begin
       stpAgrupa.Parameters[0].Value := 1;
       stpAgrupa.Parameters[1].Value := StrToDate(edtEmissao.Text);
       stpAgrupa.Parameters[2].Value := StrToDate(edtVencimento.Text);
       stpAgrupa.Parameters[3].Value := edtNotaFiscal.Text;
       stpAgrupa.Parameters[4].Value := cboEmpresa.LookupValue;
       stpAgrupa.Parameters[5].Value := edtHistorico.Text;
       stpAgrupa.ExecProc;
       ShowMessage('Solicitação efetuada com sucesso');
       Self.Close;
  end;

  if lbTipo.Caption = 'L' then begin
        qrLancar.Close;
        qrLancar.Open;
        while not qrLancar.Eof do begin

            stpLancar.Parameters[0].Value := qrLancarId.AsInteger;
            stpLancar.Parameters[1].Value := StrToDate(edtEmissao.Text);
            stpLancar.Parameters[2].Value := StrToDate(edtVencimento.Text);
            stpLancar.Parameters[3].Value := cboEmpresa.LookupValue;
            stpLancar.Parameters[4].Value := edtHistorico.Text;
            stpLancar.ExecProc;


            qrLancar.Next;
        end;
         ShowMessage('Solicitação efetuada com sucesso');
            Self.Close;
  end;


end;

procedure TfrmFaturamentoMultimedAgrupa.FormCreate(Sender: TObject);
begin
   qrEmpresa.Open;
end;

procedure TfrmFaturamentoMultimedAgrupa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

end.

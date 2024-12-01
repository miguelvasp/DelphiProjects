unit UAddPgtoFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Provider, ADODB, RzButton, StdCtrls, DBCtrls, wwdblook,
  Mask;

type
  TfrmAddPgtoFrete = class(TForm)
    qrTrans: TADOQuery;
    dspTrans: TDataSetProvider;
    cdsTrans: TClientDataSet;
    qrTransTRANS_ID: TAutoIncField;
    qrTransTRANS_FANTASIA: TStringField;
    cdsTransTRANS_ID: TAutoIncField;
    cdsTransTRANS_FANTASIA: TStringField;
    qrAux: TADOQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    cboQuinzena: TComboBox;
    Label6: TLabel;
    cboMes: TComboBox;
    Label7: TLabel;
    cboAno: TComboBox;
    GroupBox5: TGroupBox;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddPgtoFrete: TfrmAddPgtoFrete;

implementation

uses UfrmPgtoFrete, UMenu;

{$R *.DFM}

procedure TfrmAddPgtoFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmAddPgtoFrete := nil;
end;

procedure TfrmAddPgtoFrete.RzBitBtn1Click(Sender: TObject);
VAR  data : string;
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

  qrAux.Open;

  if qrAux.FieldByName('NEWLANC').AsString = '' then
        frmPgtoFrete.cdsGeraLANC_MANUAL.Value := 1
  else
        frmPgtoFrete.cdsGeraLANC_MANUAL.Value := qrAux.FieldByName('NEWLANC').AsInteger + 1;

  frmPgtoFrete.cdsGeraDATA.Value := StrToDate(MaskEdit1.Text);
  frmPgtoFrete.cdsGeraDATA_FECHAMENTO.Value := StrToDate(data);
  frmPgtoFrete.cdsGera.Post;
  frmPgtoFrete.cdsGera.Close;
  frmPgtoFrete.cdsGera.Open;
  close;
end;

procedure TfrmAddPgtoFrete.RzBitBtn2Click(Sender: TObject);
begin
   frmPgtoFrete.cdsGera.Cancel;
   close;
end;

procedure TfrmAddPgtoFrete.FormCreate(Sender: TObject);
begin
  cdsTrans.Open;
end;

end.

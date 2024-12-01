unit ufrmDespesasFreteLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Db, ADODB;

type
  TfrmDespesasFreteLote = class(TForm)
    rgQuinzena: TRadioGroup;
    rgMes: TRadioGroup;
    GroupBox1: TGroupBox;
    cboAno: TComboBox;
    RadioGroup3: TRadioGroup;
    cboTipoDespesa: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    cboTransportador: TwwDBLookupCombo;
    edtValor: TEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrTrans: TADOQuery;
    qrTransTRANS_ID: TAutoIncField;
    qrTransTRANS_FANTASIA: TStringField;
    qrTipo: TADOQuery;
    qrTipoTIPO: TStringField;
    qrTipoID: TAutoIncField;
    qrDespesas: TADOQuery;
    qrDespesasDE_ID: TAutoIncField;
    qrDespesasTRANS_ID: TIntegerField;
    qrDespesasDATA: TDateTimeField;
    qrDespesasTIPO: TIntegerField;
    qrDespesasVALOR: TFloatField;
    qrDespesasTRANS_FANTASIA: TStringField;
    qrDespesasTIPO_1: TStringField;
    DataSource1: TDataSource;
    qrAdd: TADOQuery;
    qrAddDE_ID: TAutoIncField;
    qrAddTRANS_ID: TIntegerField;
    qrAddDATA: TDateTimeField;
    qrAddTIPO: TIntegerField;
    qrAddVALOR: TFloatField;
    Button2: TButton;
    qrAux: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Buscar;
    procedure cboTipoDespesaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cboTipoDespesaExit(Sender: TObject);
    procedure Montadata;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

     data : string;
  public
    { Public declarations }
  end;

var
  frmDespesasFreteLote: TfrmDespesasFreteLote;
  
implementation

uses UMenu;

{$R *.DFM}

procedure TfrmDespesasFreteLote.Buscar;
begin
   Montadata;
    with qrDespesas do begin
        Close;
        sql.Clear;
        sql.Add(
          '  SELECT '+
          '          A.*, B.TRANS_FANTASIA, C.TIPO '+
          '  FROM DESPESAS_FRETE A INNER JOIN TRANSPORTADORA B   '+
          '  ON A.TRANS_ID = B.TRANS_ID INNER JOIN TP_DESPESA_FRETE C   '+
          '  ON A.TIPO = C.ID   '
        ) ;

        sql.Add('where convert(varchar, A.DATA, 112) = ' + QuotedStr(FormatDateTime('YYYYMMdd', StrToDate(data))));
        sql.Add('and A.TIPO = ' + cboTipoDespesa.LookupValue);
        SQL.Add('ORDER BY B.TRANS_FANTASIA');
        Open;

    end;
end;

procedure TfrmDespesasFreteLote.Button1Click(Sender: TObject);

begin
    Montadata;

    if cboTipoDespesa.Text = '' then begin
        ShowMessage('Informe o tipo de despesa');
        Abort;
    end;


    if cboTransportador.Text = '' then begin
        ShowMessage('Informe o transportador');
        Abort;
    end;

    if edtValor.Text = '' then begin
        ShowMessage('Informe o valor da despesa');
        Abort;
    end;

    qrAdd.Close;
    qrAdd.Open;
    qrAdd.Append;
    qrAddTRANS_ID.AsInteger := StrToInt(cboTransportador.LookupValue);
    qrAddDATA.Value := StrToDate(data);
    qrAddTIPO.AsInteger := StrToInt(cboTipoDespesa.LookupValue);
    qrAddVALOR.AsFloat := StrToFloat(edtValor.Text);
    qrAdd.Post;

    Buscar;


    cboTransportador.Text := '';
    edtValor.Text := '';
    cboTransportador.SetFocus;


end;

procedure TfrmDespesasFreteLote.cboTipoDespesaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   Buscar;
end;

procedure TfrmDespesasFreteLote.cboTipoDespesaExit(Sender: TObject);
begin
   Buscar;
end;

procedure TfrmDespesasFreteLote.Montadata;
begin
    if rgQuinzena.ItemIndex = 0 then
        data := '01/'
    else
        data := '15/';

    data := data + FormatFloat('00', rgMes.ItemIndex + 1) + '/';

    if cboAno.Text = '' then begin
        ShowMessage('Selecione o ano');
        Abort;
    end;

    data := data + cboAno.Text;
end;

procedure TfrmDespesasFreteLote.FormCreate(Sender: TObject);
begin
  qrTrans.Open;
  qrTipo.Open;
end;

procedure TfrmDespesasFreteLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrTrans.Close;
  qrTipo.Close;
  qrDespesas.Close;
  Action := caFree;
  frmDespesasFreteLote := nil;
end;

procedure TfrmDespesasFreteLote.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
     begin
       key := #0;
         perform(WM_nextdlgctl,0,0);
    end;
end;

procedure TfrmDespesasFreteLote.Button2Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Confirma a exclusão da despesa?', 'Confirmação', MB_YESNO) = 6 then begin
        with qrAux do begin
            close;
            sql.Clear;
            sql.Add(
              'delete from DESPESAS_FRETE where DE_ID = ' + qrDespesasDE_ID.AsString
            );
            ExecSQL;
        end;
        qrDespesas.Close;
        qrDespesas.Open;

   end;
end;

end.

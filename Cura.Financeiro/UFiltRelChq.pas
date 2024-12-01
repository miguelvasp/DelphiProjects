unit UFiltRelChq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Mask, ExtCtrls, Buttons, Db, DBTables, Wwquery;

type
  TFFiltRelChq = class(TForm)
    RadioGroup1: TRadioGroup;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    VENC_INI: TMaskEdit;
    VENC_FIM: TMaskEdit;
    cbo_CLIENTE_INI: TwwDBLookupCombo;
    cbo_CLIENTE_FIM: TwwDBLookupCombo;
    cbo_BANCO_INI: TwwDBLookupCombo;
    cbo_BANCO_FIM: TwwDBLookupCombo;
    NCR_INI: TEdit;
    NCR_FIM: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_FORNI: TwwQuery;
    Q_FORNF: TwwQuery;
    Q_FORNIFOR_CODI: TStringField;
    Q_FORNIFOR_RAZA: TStringField;
    Q_FORNFFOR_CODI: TStringField;
    Q_FORNFFOR_RAZA: TStringField;
    Q_BANCI: TwwQuery;
    Q_BANCF: TwwQuery;
    Q_BANCFBAN_CODI: TStringField;
    Q_BANCFBAN_NOME: TStringField;
    Q_BANCIBAN_CODI: TStringField;
    Q_BANCIBAN_NOME: TStringField;
    Label2: TLabel;
    ComboBox1: TComboBox;
    rgTipoPagamento: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label4: TLabel;
    edtVencI: TMaskEdit;
    edtVencF: TMaskEdit;
    Label5: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoPagamentoClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltRelChq: TFFiltRelChq;
  NUMEROI : string;
  NUMEROF : string;
  BANCOI : string;
  BANCOF : string;
  DINI : tdatetime;
  DFIM : tdatetime;
  VENC_I: TDateTime;
  VENC_F: TDateTime;
  FAVORECIDOI : string;
  FAVORECIDOF : string;
  ORD : integer;
  SIT : integer;
  FILTRO : string;
  TIPOREL : Integer;

implementation

uses URelChq;

{$R *.DFM}

procedure TFFiltRelChq.SpeedButton3Click(Sender: TObject);
begin
   close;
end;

procedure TFFiltRelChq.SpeedButton1Click(Sender: TObject);
var
TEM : boolean;
begin
   TEM := false;
   if NCR_INI.Text <> '' then
   begin
        FILTRO := '- Nº de Cheque a partir de ' +NCR_INI.text;
        NUMEROI := NCR_INI.text;
        TEM := true;
   end;
   if NCR_FIM.Text <> '' then
   begin
        NUMEROF := NCR_FIM.text;
        if TEM then
                FILTRO := FILTRO + ' até ' +NCR_FIM.text
        else
                FILTRO := '- Nº de Cheque até ' +NCR_FIM.text;
        TEM := false;
   end;
   if cbo_BANCO_INI.Text <> '' then
   begin
        BANCOI := cbo_BANCO_INI.LookupValue;
        FILTRO := FILTRO + ' - Banco a partir de ' +cbo_BANCO_INI.text;
        TEM := true
   end;
   if cbo_BANCO_FIM.Text <> '' then
   begin
        BANCOF := cbo_BANCO_FIM.LookupValue;
        if TEM then
                FILTRO := FILTRO + ' até ' + cbo_BANCO_FIM.Text
        else
                FILTRO := FILTRO + ' - Banco até ' +cbo_BANCO_FIM.Text;
        TEM := false;
   end;
   if cbo_CLIENTE_INI.Text <> '' then
   begin
        FAVORECIDOI := cbo_CLIENTE_INI.LookupValue;
        TEM := true;
        FILTRO := FILTRO + ' - Favorecido a partir de ' + cbo_CLIENTE_INI.text;
   end;
   if cbo_CLIENTE_FIM.Text <> '' then
   begin
        FAVORECIDOF := cbo_CLIENTE_FIM.LookupValue;
        if TEM then
                FILTRO := FILTRO + ' até ' + cbo_CLIENTE_FIM.Text
        else
                FILTRO := FILTRO + ' - Favorecido até ' +cbo_CLIENTE_FIM.Text;
        TEM := false;
   end;
   if VENC_INI.text <> '  /  /    ' then
   begin
        DINI := strtodate(VENC_INI.text);
        TEM := true;
        FILTRO := FILTRO + ' - Emissão a partir de ' +VENC_INI.Text;
   end;
   if VENC_FIM.text <> '  /  /    ' then
   begin
        DFIM := strtodate(VENC_FIM.text);
        if TEM then
                FILTRO := FILTRO + ' até ' +VENC_FIM.text
        else
                FILTRO := FILTRO + ' - Emissão até '+VENC_FIM.Text;
   end;


   if edtVencI.text <> '  /  /    ' then
   begin
        VENC_I := strtodate(edtVencI.text);
        TEM := true;
        FILTRO := FILTRO + ' - Vencimento a partir de ' +edtVencI.Text;
   end;
   if edtVencF.text <> '  /  /    ' then
   begin
        VENC_F := strtodate(edtVencF.text);
        if TEM then
                FILTRO := FILTRO + ' até ' +edtVencF.text
        else
                FILTRO := FILTRO + ' - Emissão até '+edtVencF.Text;
   end;



   ORD := RadioGroup1.ItemIndex;

   TIPOREL := rgTipoPagamento.ItemIndex;

   FILTRO := FILTRO + ' - Ordenado por ' +RadioGroup1.Items.Strings[ORD];
   SIT := ComboBox1.ItemIndex;
   FILTRO := FILTRO + ' - Situação: ' +ComboBox1.Items.Strings[SIT];

   Application.CreateForm(TFRelChq, FRelChq);
   FRelChq.RelChq.Preview;
   FRelChq.Close;
end;

procedure TFFiltRelChq.SpeedButton2Click(Sender: TObject);
begin
   if cbo_BANCO_INI.Text <> '' then
        BANCOI := cbo_BANCO_INI.LookupValue;
   if cbo_BANCO_FIM.Text <> '' then
        BANCOF := cbo_BANCO_FIM.LookupValue;
   if NCR_INI.Text <> '' then
        NUMEROI := NCR_INI.text;
   if NCR_FIM.Text <> '' then
        NUMEROF := NCR_FIM.text;
   if cbo_CLIENTE_INI.Text <> '' then
        FAVORECIDOI := cbo_CLIENTE_INI.LookupValue;
   if cbo_CLIENTE_FIM.Text <> '' then
        FAVORECIDOF := cbo_CLIENTE_FIM.LookupValue;
   if VENC_INI.text <> '  /  /  ' then
        DINI := strtodate(VENC_INI.text);
   if VENC_FIM.text <> '  /  /  ' then
        DFIM := strtodate(VENC_FIM.text);
   ORD := RadioGroup1.ItemIndex;
   SIT := ComboBox1.ItemIndex;

   Application.CreateForm(TFRelChq, FRelChq);
   FRelChq.RelChq.Print;
   FRelChq.Close;
end;

procedure TFFiltRelChq.FormCreate(Sender: TObject);
begin
   Q_BANCI.Open;
   Q_BANCF.Open;
   Q_FORNI.Open;
   Q_FORNF.Open;
   ComboBox1.ItemIndex := 0;
end;

procedure TFFiltRelChq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_BANCI.Close;
   Q_BANCF.Close;
   Q_FORNI.Close;
   Q_FORNF.Close;
end;

procedure TFFiltRelChq.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
        key := #0;
        perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFFiltRelChq.rgTipoPagamentoClick(Sender: TObject);
begin
    if rgTipoPagamento.ItemIndex = 0 then
    begin
        label1.Visible := True;
        Label16.Visible := True;
        NCR_INI.Text := '';
        NCR_FIM.Text := '';
        NCR_INI.Visible := True;
        NCR_FIM.Visible := True;
    end
    else
    begin
        label1.Visible := False;
        Label16.Visible := False;
        NCR_INI.Text := '';
        NCR_FIM.Text := '';
        NCR_INI.Visible := False;
        NCR_FIM.Visible := False;
    end;
end;

procedure TFFiltRelChq.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
     Label8.Caption := 'Data de emissão de'
  else
     Label8.Caption := 'Vencimento de';
end;

end.

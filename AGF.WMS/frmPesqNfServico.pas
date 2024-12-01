unit frmPesqNfServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, wwdblook,
  ExtCtrls;

type
  TfPesqNfServico = class(TForm)
    cboCliente: TwwDBLookupCombo;
    Label1: TLabel;
    edtNumero: TEdit;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrCliente: TADOQuery;
    qrBusca: TADOQuery;
    BitBtn3: TBitBtn;
    qrClienteCLIF_ID: TAutoIncField;
    qrClienteCLIN_RAZA: TStringField;
    RadioGroup1: TRadioGroup;
    qrBuscaNFI_NUMERO: TStringField;
    qrBuscaNFI_DEST_RAZA: TStringField;
    qrBuscaNFI_DEMI: TDateTimeField;
    qrBuscaSTATUS_NF: TStringField;
    qrBuscaNFI_CODI: TAutoIncField;
    DataSource1: TDataSource;
    qrBuscaNFI_TOTA: TFloatField;
    BitBtn4: TBitBtn;
    qrBuscaNF_SERVICO_SEL: TStringField;
    qrBuscaNFI_ALIQISS: TFloatField;
    qrBuscaNFI_ISS: TFloatField;
    qrBuscaNFI_VDES: TFloatField;
    Panel1: TPanel;
    btnFatura: TButton;
    qrCondPgto: TADOQuery;
    qrCondPgtoCond_Pgto_ID: TAutoIncField;
    qrCondPgtoDescricao: TStringField;
    qrCondPgtoNum_Parcelas: TFloatField;
    qrCondPgtoPagamento: TStringField;
    qrCondPgtoFora: TStringField;
    cbocondicao: TwwDBLookupCombo;
    Label3: TLabel;
    STP_GERAFATURA: TADOStoredProc;
    qrAux: TADOQuery;
    qrClienteCLIN_ID: TAutoIncField;
    qrClienteCLIF_NOME: TStringField;
    edtOrdID: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnFaturaClick(Sender: TObject);
    procedure qrBuscaNF_SERVICO_SELChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPesqNfServico: TfPesqNfServico;
  filtro : string;
implementation

uses UMenu, UfrmNFServicos, UfrmRelNFServico;

{$R *.DFM}

procedure TfPesqNfServico.BitBtn3Click(Sender: TObject);
begin
  frmNFServicos := TfrmNFServicos.Create(Self);
  frmNFServicos.NFI_CODI := 0;
  frmNFServicos.ShowModal;
end;

procedure TfPesqNfServico.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
  qrCondPgto.Open;
end;

procedure TfPesqNfServico.BitBtn1Click(Sender: TObject);
begin

   if RadioGroup1.ItemIndex = 5 then
        if cboCliente.Text = '' then begin
            ShowMessage('Informe o cliente');
            Abort;
        end;


   WITH qrBusca do begin
       Close;
       sql.Clear;
       sql.Add(
           ' SELECT  '+
           '         A.NFI_CODI, '+
           '         A.NFI_NUMERO,  '+
           '         A.NFI_DEST_RAZA, '+
           '         A.NFI_DEMI, A.NFI_TOTA, A.NFI_ALIQISS, A.NFI_ISS, A.NFI_VDES, ISNULL(NF_SERVICO_SEL, ''N'') NF_SERVICO_SEL,'+
           '         CASE  '+
           '                 WHEN NFI_STATUS = ''A'' THEN ''A EMITIR'' '+
           '                 WHEN NFI_STATUS = ''E'' AND FAT_ID IS NULL THEN ''EMITIDA'' '+
           '                 WHEN NFI_STATUS = ''E'' AND FAT_ID IS NOT NULL THEN ''FATURADA'' '+
           '                 WHEN NFI_STATUS = ''C'' THEN ''CANCELADA'' '+
           '         END AS STATUS_NF  '+
           ' FROM NF A WHERE TDOC_ID = 16 '
       );

       filtro := 'Filtros: ';
       if edtNumero.Text <> '' then  begin
          SQL.Add('And NFI_NUMERO = ' + QuotedStr(edtNumero.Text));
          filtro := filtro + ' Nota Fiscal: ' + edtNumero.Text;
       end;

       if edtOrdID.Text <> '' then begin
           SQL.Add(' and ord_id = ' + edtOrdID.Text);
       end;

       IF MaskEdit1.Text <> '  /  /    ' then  begin
          SQL.Add('AND CONVERT(CHAR(10), NFI_DEMI, 112) >= '  + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))) );
          filtro := filtro + ' Emissão de ' + MaskEdit1.Text;
       end;

       IF MaskEdit2.Text <> '  /  /    ' then  begin
          SQL.Add('AND CONVERT(CHAR(10), NFI_DEMI, 112) <= '  + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))) );
          filtro := filtro + ' Emissão até ' + MaskEdit2.Text;
       end;


       if cboCliente.Text <> '' then  begin
          SQL.Add('AND NFI_DEST_CLI = ' + cboCliente.LookupValue);
          filtro := filtro + ' Cliente: ' + cboCliente.Text;
       end;

       case  RadioGroup1.ItemIndex of
           1 : sql.Add('and NFI_STATUS = ''A'' ');
           2 : sql.Add('and NFI_STATUS = ''E'' ');
           3 : sql.Add('and NFI_STATUS = ''C'' ');
           4 : sql.Add('and fat_id is not null');
           5 : sql.Add('and fat_id is  null and nfi_status = ''E'' ');
       end;

       case  RadioGroup1.ItemIndex of
           0 : filtro := filtro + ' Tipo: Todas';
           1 : filtro := filtro + ' Tipo: A emitir';
           2 : filtro := filtro + ' Tipo: Emitidas';
           3 : filtro := filtro + ' Tipo: Canceladas';
           4 : filtro := filtro + ' Tipo: Faturadas';
           5 : filtro := filtro + ' Tipo: A Faturar';
       end;

       if RadioGroup1.ItemIndex = 5 then begin
           

           Panel1.Visible := True;
       end
       else
           Panel1.Visible := False;

        SQL.Add('ORDER BY NFI_NUMERO');

       Open;
   end;
end;

procedure TfPesqNfServico.BitBtn2Click(Sender: TObject);
begin
   if qrBuscaNFI_CODI.AsString <> '' then BEGIN
      frmNFServicos := TfrmNFServicos.Create(Self);
      frmNFServicos.NFI_CODI := qrBuscaNFI_CODI.AsInteger;
      frmNFServicos.ShowModal;
   end;
end;

procedure TfPesqNfServico.BitBtn4Click(Sender: TObject);
begin
    frmRelNFServico := TfrmRelNFServico.Create(Self);
    frmRelNFServico.lbFiltro.Caption := filtro;
    frmRelNFServico.QuickRep1.Preview;
    frmRelNFServico.Close;
end;

procedure TfPesqNfServico.btnFaturaClick(Sender: TObject);
var ValorServicos : Real;
begin
   IF MessageBox(Self.Handle, 'Confirma a emissão da fatura?', 'Confirmação', MB_YESNO) = 7 then Abort;

   with qraux do begin
       close;
       sql.Clear;
       sql.Add(
         ' select isnull(sum(nfi_tota), 0.00) soma from nf where tdoc_id = 16 and fat_id is null and NF_SERVICO_SEL = ''S'' '
       );
       Open;
   end;

   if qrAux.FieldByName('soma').AsFloat = 0 then begin
       ShowMessage('Nenhuma nota fiscal foi selecionada');
       Abort;
   end;

   ValorServicos := qrAux.FieldByName('soma').AsFloat;

   FMenu.ADOConnection.BeginTrans;



   try
         STP_GERAFATURA.Parameters.ParamByName('@VALORCHEIO').Value    :=  valorServicos ;
         STP_GERAFATURA.Parameters.ParamByName('@CLIN_ID').Value       :=  qrClienteCLIN_ID.AsInteger;
         STP_GERAFATURA.Parameters.ParamByName('@COND_PGTO_ID').Value  :=  StrToInt(cbocondicao.LookupValue);
         STP_GERAFATURA.Parameters.ParamByName('@TIPO').Value  :=  '1';
         STP_GERAFATURA.ExecProc;
         FMenu.ADOConnection.CommitTrans;
         ShowMessage('Geração efetuada com sucesso!');
         qrBusca.Close;
   except
       on e : Exception do begin
           FMenu.ADOConnection.RollbackTrans;
           ShowMessage('Aconteceu um erro: ' + e.Message);
       end;
   end;

   WITH qrAux DO BEGIN
        CLOSE;
        SQL.Clear;
        SQL.Add(
          ' UPDATE NF SET NF_SERVICO_SEL = ''N'' WHERE TDOC_ID = 16 '
        );
        ExecSQL;
   end;

   
end;

procedure TfPesqNfServico.qrBuscaNF_SERVICO_SELChange(Sender: TField);
var codNF : Integer;
begin

  codNF := qrBuscaNFI_CODI.AsInteger;
  with qrAux do begin
    Close;
    sql.Clear;

    if qrBuscaNF_SERVICO_SEL.AsString = 'S' then
        sql.Add('Update nf set NF_SERVICO_SEL = ''S'' ')
    else
        sql.Add('Update nf set NF_SERVICO_SEL = ''N'' ');
    sql.Add('where nfi_codi = ' + IntToStr(codNF));

    ExecSQL;
  end;

  BitBtn1.Click;

  qrBusca.Locate('NFI_CODI', codNF, []);


end;

procedure TfPesqNfServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//LIMPA TODAS AS NOTAS ANTES DE LIBERAR PARA FATURAMENTO
           WITH qrAux DO BEGIN
                CLOSE;
                SQL.Clear;
                SQL.Add(
                  ' UPDATE NF SET NF_SERVICO_SEL = ''N'' WHERE TDOC_ID = 16 '
                );
                ExecSQL;
           end;

           Action := caFree;
           fPesqNfServico := nil;
end;

end.

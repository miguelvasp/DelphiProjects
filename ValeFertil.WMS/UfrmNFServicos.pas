unit UfrmNFServicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, wwdblook, Db, ADODB,
  ExtCtrls, DBCtrls;

type
  TfrmNFServicos = class(TForm)
    qrCliente: TADOQuery;
    cboCliente: TwwDBLookupCombo;
    Label1: TLabel;
    Panel1: TPanel;
    qrClienteCLIF_ID: TAutoIncField;
    qrClienteCLIF_RAZA: TStringField;
    qrClienteCLIF_NOME: TStringField;
    qrClienteCLIF_CGCCPF: TStringField;
    qrClienteCLIF_INSCRG: TStringField;
    qrClienteCLIF_ENDERECO: TStringField;
    qrClienteCLIF_ENDERECO_COMPL: TStringField;
    qrClienteCLIF_ENDERECO_BAIRRO: TStringField;
    qrClienteCLIF_MUNICIPIO: TStringField;
    qrClienteCLIF_MUNICIPIO2: TStringField;
    qrClienteUF_SIGLA: TStringField;
    qrClienteCLIF_CEP: TStringField;
    qrClienteCLIF_TEL1: TStringField;
    qrClienteCLIF_TEL2: TStringField;
    qrClienteCLIF_FAX: TStringField;
    qrClienteCLIF_EMAIL: TStringField;
    qrClienteCLIF_CONTATO: TStringField;
    qrClienteMUN_ID: TIntegerField;
    qrClienteCLIF_CARGAPALLET: TStringField;
    qrClienteCLIE_ENDERECO: TStringField;
    qrClienteCLIE_ENDERECO_COMPL: TStringField;
    qrClienteCLIE_ENDERECO_BAIRRO: TStringField;
    qrClienteCLIE_MUNICIPIO: TStringField;
    qrClienteCLIE_MUN_ID: TIntegerField;
    qrClienteCLIE_UF_SIGLA: TStringField;
    qrClienteCLIE_CEP: TStringField;
    qrClienteCLI_HORARIO: TStringField;
    qrClienteCLI_VL_DESCARGA: TFloatField;
    qrClienteCLI_OBS: TStringField;
    qrClienteCLI_UNCOBRACA: TStringField;
    qrClienteIBGE_ID: TIntegerField;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    qrNF: TADOQuery;
    qrNFNFI_CODI: TAutoIncField;
    qrNFNFI_NUMERO: TStringField;
    qrNFTDOC_ID: TIntegerField;
    qrNFNFI_EMIT_ORIG: TStringField;
    qrNFNFI_EMIT_CLI: TIntegerField;
    qrNFNFI_DEST_ORIG: TStringField;
    qrNFNFI_DEST_CLI: TIntegerField;
    qrNFNFI_DEST_NOME: TStringField;
    qrNFNFI_DEST_RAZA: TStringField;
    qrNFNFI_DEST_ENDERECO: TStringField;
    qrNFNFI_DEST_COMPL: TStringField;
    qrNFNFI_DEST_BAIRRO: TStringField;
    qrNFNFI_DEST_UF_SIGLA: TStringField;
    qrNFNFI_DEST_CEP: TStringField;
    qrNFNFI_DEST_TEL: TStringField;
    qrNFNFI_DEST_FAX: TStringField;
    qrNFNFI_DEST_CGC: TStringField;
    qrNFNFI_DEST_INSCRG: TStringField;
    qrNFNFI_DEST_INSCTRB: TStringField;
    qrNFNFI_DEST_PESS: TStringField;
    qrNFNFI_VDES: TFloatField;
    qrNFNFI_VFRE: TFloatField;
    qrNFNFI_VSEG: TFloatField;
    qrNFNFI_BIPI: TFloatField;
    qrNFNFI_VIPI: TFloatField;
    qrNFNFI_BICM: TFloatField;
    qrNFNFI_VICM: TFloatField;
    qrNFNFI_VMER: TFloatField;
    qrNFNFI_TOTA: TFloatField;
    qrNFNFI_DSAI: TDateTimeField;
    qrNFNFI_HSAI: TDateTimeField;
    qrNFNFI_TRAN: TStringField;
    qrNFNFI_PLAC: TStringField;
    qrNFNFI_UF_SIGLA: TStringField;
    qrNFNFI_MARC: TStringField;
    qrNFNFI_QTDE: TIntegerField;
    qrNFNFI_ESPE: TStringField;
    qrNFNFI_PLIQ: TFloatField;
    qrNFNFI_PBRU: TFloatField;
    qrNFNFI_VOL: TFloatField;
    qrNFNFI_TFRE: TStringField;
    qrNFNFI_DEMI: TDateTimeField;
    qrNFCFA_ID: TIntegerField;
    qrNFOS_ID: TIntegerField;
    qrNFMUN_ID: TIntegerField;
    qrNFNFI_MARCADOR: TStringField;
    qrNFNFI_DTENTREGA: TDateTimeField;
    qrNFMANI_ID: TIntegerField;
    qrNFMANI_ORDEM: TIntegerField;
    qrNFNFI_MOVESTQ: TStringField;
    qrNFNFI_TRANS: TStringField;
    qrNFTEXTO_LIVRE: TMemoField;
    qrNFNFI_DTENTREGA_FIM: TDateTimeField;
    qrNFNFI_ENTREGA: TStringField;
    qrNFNFI_COBRAR: TStringField;
    qrNFNFI_CLONE: TStringField;
    qrNFNFI_QTDEPALLET: TIntegerField;
    qrNFNFI_QTDEUV: TFloatField;
    qrNFTPRO_ID: TIntegerField;
    qrNFNFI_MARCADOR_NFRS: TStringField;
    qrNFNFI_NFRS_REJEITADA: TStringField;
    qrNFNFI_RETORNADA: TStringField;
    qrNFNFI_GEROUNFE: TStringField;
    qrNFNFI_REDESPACHO: TStringField;
    qrNFORD_ID: TIntegerField;
    qrNFTRANS_ID: TIntegerField;
    qrNFNFI_PRESTSERV: TStringField;
    qrNFNFI_FATURADA: TStringField;
    qrNFNFI_DISCRIM: TStringField;
    qrNFFAT_ID: TIntegerField;
    qrNFNFI_MARCAREEN: TStringField;
    qrNFNFI_STATUS: TStringField;
    qrNFNFI_MARCAIMP: TStringField;
    qrNFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    qrNFNFI_LOAD: TStringField;
    qrNFNFI_SERIE: TStringField;
    qrNFNFI_MARCADOR_CROS: TStringField;
    qrNFNFI_EXCLUI_REEN: TStringField;
    qrNFNFI_MARCADOR_CTRCGEN: TStringField;
    qrNFNFI_GEROU_REENTREGA: TStringField;
    qrNFBLOQUEIO: TStringField;
    qrNFSEL: TStringField;
    qrNFCOD_EDI: TStringField;
    qrNFNFI_CODI_SIMB: TIntegerField;
    qrNFIBGE_ID: TIntegerField;
    qrNFCHAVE_NFE: TStringField;
    qrNFcNF: TStringField;
    qrNFcDV: TStringField;
    qrItens: TADOQuery;
    qrItensINF_CODI: TAutoIncField;
    qrItensINF_ITEM: TIntegerField;
    qrItensNFI_CODI: TIntegerField;
    qrItensPRO_ID: TIntegerField;
    qrItensPRO_COD: TStringField;
    qrItensPRO_DESC: TStringField;
    qrItensINF_QTDE: TFloatField;
    qrItensINF_PUNI: TFloatField;
    qrItensINF_AIPI: TFloatField;
    qrItensINF_VIPI: TFloatField;
    qrItensINF_TOTA: TFloatField;
    qrItensINF_PESOLIQ: TFloatField;
    qrItensINF_PESO: TFloatField;
    qrItensINF_VOL: TFloatField;
    qrItensINF_AICM: TFloatField;
    qrItensINF_BICM: TFloatField;
    qrItensINF_VICM: TFloatField;
    qrItensUVEN_ID: TIntegerField;
    qrItensINF_QTDERETORNADA: TFloatField;
    qrItensINF_NFE: TIntegerField;
    qrItensINF_QTDERETORNADASALDO: TFloatField;
    qrItensESTQ_LOTE1: TStringField;
    qrItensESTQ_LOTE1_QTDE: TFloatField;
    qrItensESTQ_LOTE2: TStringField;
    qrItensESTQ_LOTE2_QTDE: TFloatField;
    qrItensINF_CST: TStringField;
    wwDBGrid1: TwwDBGrid;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    btnSalvar: TButton;
    btnconfirmar: TButton;
    btnImprimir: TButton;
    btnCancelar: TButton;
    qrParametro: TADOQuery;
    qrParametroPAR_ID: TAutoIncField;
    qrParametroPAR_NOME: TStringField;
    qrParametroPAR_RAZA: TStringField;
    qrParametroPAR_CNPJ: TStringField;
    qrParametroPAR_INSC: TStringField;
    qrParametroPAR_ENDERECO: TStringField;
    qrParametroPAR_ENDERECO_COMPL: TStringField;
    qrParametroPAR_ENDERECO_BAIRRO: TStringField;
    qrParametroPAR_UF_SIGLA: TStringField;
    qrParametroPAR_CEP: TStringField;
    qrParametroPAR_TEL: TStringField;
    qrParametroPAR_FAX: TStringField;
    qrParametroPAR_EMAIL: TStringField;
    qrParametroAR_ID: TIntegerField;
    qrParametroMUN_ID: TIntegerField;
    qrParametroAR_ID_OPER: TIntegerField;
    qrParametroULT_TAG: TIntegerField;
    qrParametroPALLET_M2: TFloatField;
    qrParametroCO_SER_ID: TIntegerField;
    qrParametroEN_SER_ID: TIntegerField;
    qrParametroFLAGTELA: TStringField;
    qrParametroFLAGTELA2: TStringField;
    qrParametroFLAGTELA3: TStringField;
    qrParametroCLIN_ID: TIntegerField;
    qrParametroVERSAO: TStringField;
    qrParametroFLAGTELA_USUARIO: TStringField;
    qrParametroFLAGTELA_DATA: TDateTimeField;
    qrParametroFLAGTELA2_USUARIO: TStringField;
    qrParametroFLAGTELA2_DATA: TDateTimeField;
    qrParametroPORTA: TIntegerField;
    qrParametroHOST: TStringField;
    qrParametroCAMINHO: TStringField;
    qrParametroULT_FATURA: TIntegerField;
    qrParametroULT_NF: TIntegerField;
    qrParametroULT_CONH: TIntegerField;
    qrParametroAR_ID_AVARIA: TIntegerField;
    qrParametroULT_MINUTA: TIntegerField;
    qrParametroULT_NFPROV: TIntegerField;
    qrParametroULT_CONHPROV: TIntegerField;
    qrParametroULT_MINUTAPROV: TIntegerField;
    qrParametroCAMINHO_MATRICIAL: TStringField;
    qrParametroCAMINHO_MATRICIAL_FATURA: TStringField;
    qrParametroCAMINHO_MATRICIAL_CONH: TStringField;
    qrParametroDATA: TDateTimeField;
    qrParametroConnectionString: TStringField;
    qrParametroIBGE_ID: TIntegerField;
    qrParametroNUMERO: TIntegerField;
    qrParametroLOGO: TBlobField;
    qrParametroNF_SERVICO: TIntegerField;
    qrParametroALIQ_ISS: TFloatField;
    dsItens: TDataSource;
    dsNF: TDataSource;
    qrAux: TADOQuery;
    qrNFNFI_ISS: TFloatField;
    qrNFNFI_ALIQISS: TFloatField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBText1: TDBText;
    DBText3: TDBText;
    DBEdit3: TDBEdit;
    qrClienteCLIF_PESSOA: TStringField;
    qrClienteCLIN_RAZA: TStringField;
    DBText4: TDBText;
    qrParametroNF_SERVICO_PROV: TIntegerField;
    btnCalc: TButton;
    GroupBox5: TGroupBox;
    DBEdit4: TDBEdit;
    CheckBox1: TCheckBox;
    qrMun: TADOQuery;
    qrMunMUN_ID: TAutoIncField;
    qrMunDIPAM: TStringField;
    qrMunMUN_NOME: TStringField;
    qrMunUF_SIGLA: TStringField;
    qrMunREG_ID: TIntegerField;
    qrMunIBGE_ID: TIntegerField;
    DBText2: TDBText;
    qrItensUNIDADE: TStringField;
    btn1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qrNFNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure qrNFBeforePost(DataSet: TDataSet);
    procedure qrItensBeforePost(DataSet: TDataSet);
    procedure btnconfirmarClick(Sender: TObject);
    procedure dsNFDataChange(Sender: TObject; Field: TField);
    procedure CalculaTotal;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    NFI_CODI : Integer;

  end;

var
  frmNFServicos: TfrmNFServicos;

implementation

uses UMenu, U_Funcoes;

{$R *.DFM}

procedure TfrmNFServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmNFServicos := nil;
end;

procedure TfrmNFServicos.FormCreate(Sender: TObject);
begin
  qrCliente.Open;
  qrParametro.Open;



end;

procedure TfrmNFServicos.qrNFNewRecord(DataSet: TDataSet);
begin
  qrParametro.Open;
  qrNFTDOC_ID.AsInteger := 16; //nf de serviços
  qrNFNFI_DEMI.AsDateTime := qrParametroDATA.Value;
  qrNFNFI_STATUS.AsString := 'A';

end;

procedure TfrmNFServicos.Button1Click(Sender: TObject);
begin
   cboCliente.SetFocus;
   qrNF.Append;
//   lbBase.Caption := '';
end;

procedure TfrmNFServicos.btnSalvarClick(Sender: TObject);
begin

  if cboCliente.Text = '' then begin
      ShowMessage('Informe o Cliente');
      Abort;
  end;
  if qrNF.State in [dsEdit, dsInsert] then
     qrNF.Post;
end;

procedure TfrmNFServicos.qrNFBeforePost(DataSet: TDataSet);
VAR NOVO_PROV :Integer;
begin


   if qrNFNFI_STATUS.AsString = 'E' then begin
       ShowMessage('Nota Fiscal confirmada, não pode ser alterada');
       qrNF.cancel;
       Abort;
   end;

   if qrNFNFI_STATUS.AsString = 'C' then begin
       ShowMessage('Nota Fiscal cancelada, não pode ser alterada');
       qrNF.cancel;
       Abort;
   end;


   qrNFNFI_EMIT_CLI.AsInteger :=   qrParametroCLIN_ID.AsInteger;
   qrNFNFI_DEST_NOME.Value := qrClienteCLIF_NOME.Value;
   qrNFNFI_DEST_RAZA.Value := qrClienteCLIF_RAZA.Value;
   qrNFNFI_DEST_ENDERECO.Value := qrClienteCLIF_ENDERECO.Value;
   qrNFNFI_DEST_COMPL.Value := qrClienteCLIF_ENDERECO_COMPL.Value;
   qrNFNFI_DEST_BAIRRO.Value := qrClienteCLIF_ENDERECO_BAIRRO.Value;
   qrNFNFI_DEST_UF_SIGLA.Value := qrClienteUF_SIGLA.Value;
   qrNFNFI_DEST_CEP.Value := qrClienteCLIF_CEP.Value;
   qrNFNFI_DEST_CGC.Value := qrClienteCLIF_CGCCPF.Value;
   qrNFNFI_DEST_INSCRG.Value := qrClienteCLIF_INSCRG.Value;
   qrNFNFI_DEST_PESS.Value := qrClienteCLIF_PESSOA.Value;
   qrNFMUN_ID.AsInteger := qrClienteMUN_ID.AsInteger;
   qrNFCFA_ID.AsInteger := 562;
   qrNFNFI_SERIE.Value := 'A1';
  //calcula total

  IF qrNFNFI_NUMERO.AsString = '' then begin
     NOVO_PROV := qrParametroNF_SERVICO_PROV.AsInteger + 1;
     qrNFNFI_NUMERO.AsString := IntToStr(NOVO_PROV) + '-S';

     qrParametro.First;
     while not qrParametro.Eof do BEGIN
         qrParametro.Edit;
         qrParametroNF_SERVICO_PROV.AsInteger := NOVO_PROV;
         qrParametro.Post;
         qrParametro.Next;
     end;
  end;




end;

procedure TfrmNFServicos.qrItensBeforePost(DataSet: TDataSet);
begin
   if qrNFNFI_STATUS.AsString = 'E' then begin
       ShowMessage('Nota Fiscal confirmada, não pode ser alterada');
       qrItens.Cancel;
       qrNF.cancel;
       Abort;
   end;

   if qrNFNFI_STATUS.AsString = 'C' then begin
       ShowMessage('Nota Fiscal cancelada, não pode ser alterada');
       qrNF.cancel;
       qrItens.Cancel;
       Abort;
   end;   


   IF qrNFNFI_CODI.AsString = '' then
   BEGIN
       ShowMessage('Salve as informações da nota fiscal!');
       Abort;
   end;


   with qrAux do begin
       Close;
       sql.Clear;
       sql.Add(
         'select count(*) achei from nf_itens where nfi_codi = ' + qrNFNFI_CODI.AsString
       );
       Open;
   end;
   qrItensNFI_CODI.AsInteger := qrNFNFI_CODI.AsInteger;
   qrItensINF_ITEM.AsInteger := qrAux.FieldByName('achei').AsInteger + 1;
   qrItensPRO_COD.AsString := IntToStr(qrAux.FieldByName('achei').AsInteger + 1);

   if (qrItensINF_QTDE.AsFloat > 0) and  (qrItensINF_PUNI.AsFloat > 0) then
        qrItensINF_TOTA.Value := qrItensINF_QTDE.AsFloat * qrItensINF_PUNI.AsFloat;



end;

procedure TfrmNFServicos.btnconfirmarClick(Sender: TObject);
var novaNf, Codigo : Integer;
begin
  if MessageBox(Self.Handle, 'Confirma a nota fiscal de serviços?', 'Confirmação', MB_YESNO ) = 7 then
        Abort;


  qrItens.Last;
  if qrItens.IsEmpty then begin
      ShowMessage('Informe pelo menos um item da nota fiscal');
      Abort;
  end;





  //CalculaTotal();
  IF qrNFORD_ID.AsString = '' then begin  //renumera se nao foi gerado por um CTe
        novaNf := qrParametroNF_SERVICO.AsInteger + 1;

        with qrAux do begin
            close;
            sql.Clear;
            SQL.Add(
              'update nf set nfi_numero = ' + QuotedStr(IntToStr(novaNf))   +
              ', nfi_status = ''E'' where nfi_codi = ' + qrNFNFI_CODI.AsString
            );
            ExecSQL;
        end;

        Codigo := qrNFNFI_CODI.AsInteger;

        qrNF.Close;
        qrNF.Parameters[0].Value := Codigo;
        qrNF.Open;

        qrParametro.First;
        while not qrParametro.Eof do begin
            qrParametro.Edit;
            qrParametroNF_SERVICO.AsInteger := novaNf;
            qrParametro.Post;
            qrParametro.next;
        end;

        qrParametro.Close;
        qrParametro.Open;
        end
        else begin
               with qrAux do begin
            close;
            sql.Clear;
            SQL.Add(
              'update nf set nfi_status = ''E'' where nfi_codi = ' + qrNFNFI_CODI.AsString
            );
            ExecSQL;
        end;
  end;

end;

procedure TfrmNFServicos.dsNFDataChange(Sender: TObject; Field: TField);
begin
  qrItens.Close;
  qrItens.Parameters[0].Value := qrNFNFI_CODI.AsInteger;
  qrItens.Open;

  if qrNFNFI_STATUS.AsString = 'A' then begin
      btnCalc.Enabled := True;
      btnSalvar.Enabled := True;
      btnconfirmar.Enabled := True;
      btnImprimir.Enabled := False;
      btnCancelar.Enabled := True;
  end;
  if qrNFNFI_STATUS.AsString = 'E' then begin
      btnCalc.Enabled := False;
      btnSalvar.Enabled := False;
      btnconfirmar.Enabled := False;
      btnImprimir.Enabled := True;
      btnCancelar.Enabled := True;
  end;
  if qrNFNFI_STATUS.AsString = 'C' then begin
      btnCalc.Enabled := False;
      btnSalvar.Enabled := False;
      btnconfirmar.Enabled := False;
      btnImprimir.Enabled := False;
      btnCancelar.Enabled := False;
  end;




end;

procedure TfrmNFServicos.CalculaTotal;
var TOTAL_SERVICO, ISS, FATOR_ISS : Real;
begin
    IF qrNFNFI_CODI.AsString <> '' THEN begin
      qrItens.First;
      TOTAL_SERVICO := 0;
      while not qrItens.Eof do begin
          TOTAL_SERVICO := TOTAL_SERVICO + qrItensINF_TOTA.AsFloat;
          qrItens.Next;
      end;

      FATOR_ISS :=  1 - (qrNFNFI_ALIQISS.AsFloat / 100);
      qrNF.Edit;
      //TOTAL_SERVICO := qrAux.FieldByName('total').AsFloat - qrNFNFI_VDES.AsFloat;
      qrNFNFI_BICM.AsFloat :=  TOTAL_SERVICO;
      //ISS :=  ((TOTAL_SERVICO - qrNFNFI_VDES.AsFloat)  / FATOR_ISS)  - (TOTAL_SERVICO - qrNFNFI_VDES.AsFloat);
      ISS := (TOTAL_SERVICO * qrNFNFI_ALIQISS.AsFloat) / 100;
      qrNFNFI_TOTA.AsFloat :=  TOTAL_SERVICO ;//+ ISS;
     // qrNFNFI_ALIQISS.AsFloat := qrParametroALIQ_ISS.AsFloat;
      qrNFNFI_ISS.AsFloat :=  ISS;
      qrNF.Post;
    end;
end;

procedure TfrmNFServicos.SpeedButton1Click(Sender: TObject);
begin
   IF MessageBox(Self.Handle, 'Deseja eliminar o item selecionado?', 'Confirmação', MB_YESNO) = 7 then Abort;

  qrItens.delete;

   
end;

procedure TfrmNFServicos.btnCalcClick(Sender: TObject);
begin
   CalculaTotal;
end;

procedure TfrmNFServicos.btnCancelarClick(Sender: TObject);
VAR CODIGO : Integer;
begin
  if qrNFFAT_ID.AsString <> '' then begin
      ShowMessage('Nota Fiscal faturada, não pode ser cancelada!');
      Abort;
  end;

  if MessageBox(Self.Handle, 'Confirma o cancelamento da Nota??', 'Confirmação', MB_YESNO) = 7 then Abort;

  with qrAux do begin
      close;
      sql.Clear;
      SQL.Add(
        'update nf set ' +
        ' nfi_status = ''C'' where nfi_codi = ' + qrNFNFI_CODI.AsString
      );
      ExecSQL;
  end;

  Codigo := qrNFNFI_CODI.AsInteger;

  qrNF.Close;
  qrNF.Parameters[0].Value := Codigo;
  qrNF.Open;

  qrNF.Close;
  qrNF.Parameters[0].Value := Codigo;
  qrNF.Open;


end;

procedure TfrmNFServicos.FormShow(Sender: TObject);
begin
  qrNF.Close;
  qrNF.Parameters[0].Value := NFI_CODI;
  qrNF.Open;

  IF NFI_CODI = 0 then
        qrNF.Append;
end;

procedure TfrmNFServicos.btnImprimirClick(Sender: TObject);
VAR F : TStringList;
    L : WideString;
    AUX : string;
    i :Integer;
begin

   F := TStringList.Create;
   L := '';
   qrMun.CLOSE;
   qrMun.Parameters[0].Value := qrNFMUN_ID.AsInteger;
   qrMun.Open;


   WITH Funcoes do begin
     //ESCREVEMOS OS DADOS DO CABEÇAÇHO
         F.Add('');
         F.Add('');
         L := writeString('', 100) + writeString(qrNFNFI_NUMERO.AsString, 10);
         F.Add(L);
         F.Add('');
         F.Add('');
         F.Add('');

         F.Add('');
         F.Add('');
         L :=writeString('', 9) +  writeString(qrNFNFI_DEST_RAZA.AsString, 100);
         F.Add(L);
         L := writeString('', 11) +  writeString(qrNFNFI_DEST_ENDERECO.AsString, 100);
         F.Add(L);

         AUX := Copy(qrNFNFI_DEST_CEP.AsString, 1, 5);
         AUX := AUX + '&' + Copy(qrNFNFI_DEST_CEP.AsString, 6, 3); //NA FUNÇÃO O - É ELIMINADO ENTAO USAMOS & PARA INFORMAR UM -
         L := writeString('', 10) + writeString(qrMunMUN_NOME.AsString, 66) + writeString(AUX, 42) + writeString(qrNFNFI_DEST_UF_SIGLA.AsString, 2);
         F.Add(L);

         AUX := Copy(qrNFNFI_DEST_CGC.AsString, 1, 2);
         AUX := AUX + '.' +Copy(qrNFNFI_DEST_CGC.AsString, 3, 3);
         AUX := AUX + '.' +Copy(qrNFNFI_DEST_CGC.AsString, 6, 3);
         AUX := AUX + '/' +Copy(qrNFNFI_DEST_CGC.AsString, 9, 4);
         AUX := AUX + '&' +Copy(qrNFNFI_DEST_CGC.AsString, 13, 2);

         L := writeString('', 15) + writeString(AUX, 48) + writeString(qrNFNFI_DEST_INSCRG.AsString, 30);
         F.Add(L);
         //F.Add('');

         AUX := '';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '01' then AUX := 'JANEIRO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '02' then AUX := 'FEVEREIRO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '03' then AUX := 'MARCO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '04' then AUX := 'ABRIL';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '05' then AUX := 'MAIO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '06' then AUX := 'JUNHO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '07' then AUX := 'JULHO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '08' then AUX := 'AGOSTO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '09' then AUX := 'SETEMBRO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '10' then AUX := 'OUTUBRO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '11' then AUX := 'NOVEMBRO';
          if Copy(qrNFNFI_DEMI.AsString, 3, 2) =   '12' then AUX := 'DEZEMBRO';
        F.Add('');

        AUX := FormatDateTime('MMMM', qrNFNFI_DEMI.AsDateTime);

  //      ShowMessage(Copy(qrNFNFI_DEMI.AsString, 4, 2));

         L := writeString('', 5) + writeString(Copy(qrNFNFI_DEMI.AsString, 1, 2), 11) +
              writeString(AUX, 21) + writeString(FormatDateTime('yyyy', qrNFNFI_DEMI.AsDateTime), 53);
         F.Add(L);
         F.Add('');
         F.Add('');
         F.Add('');
         F.Add('');
         //F.Add('');
         //COMEÇA A IMPRESSÃO DOS ITENS
         i := 0;
         qrItens.First;
         WHILE not qrItens.Eof do begin
             Inc(i);
             L := writeStringRight(FormatFloat('###,###,##0.00', qrItensINF_QTDE.AsFloat), 8) + '  '+
                  writeString(qrItensUNIDADE.AsString, 9) + writeString(qrItensPRO_DESC.AsString, 68) +
                  writeStringRight(FormatFloat('###,###,##0.00', qrItensINF_PUNI.AsFloat), 18) +
                  writeStringRight(FormatFloat('###,###,##0.00', qrItensINF_TOTA.AsFloat), 26);
             f.Add(L);
             qrItens.Next;
         end;

         while i < 19 do begin
             f.Add('');
             Inc(i);
         end;

        // f.Add('');
         f.Add('');
         F.Add('');
         //totais

         l:= writeStringRight(FormatFloat('###,###,##0.00', qrNFNFI_BICM.AsFloat), 15) +
             writeStringRight(FormatFloat('###,###,##0.00', qrNFNFI_ALIQISS.AsFloat), 15) +
             writeStringRight(FormatFloat('###,###,##0.00', qrNFNFI_ISS.AsFloat), 17) +
             writeStringRight(FormatFloat('###,###,##0.00', qrNFNFI_VDES.AsFloat), 30) +
             writeStringRight(FormatFloat('###,###,##0.00', qrNFNFI_TOTA.AsFloat {- qrNFNFI_ISS.AsFloat}), 53);
         f.add(L);
         f.Add('');
         L := writeStringRight(FormatFloat('###,###,##0.00', qrNFNFI_TOTA.AsFloat), 130);
         F.Add(L);
   end;


               f.Add('');
   f.Add('');
   f.Add('');
   f.Add('');
   f.Add('');
   f.Add('');
   f.Add('');
   f.Add('');
   f.Add('');
//   f.Add('');
  // f.Add('');

   if CheckBox1.Checked then
      f.SaveToFile('fatura servico nbf ' + qrNFNFI_NUMERO.AsString + '.txt')
   else
      f.SaveToFile(qrParametroCAMINHO_MATRICIAL_FATURA.AsString);

   ShowMessage('Impressão enviada com sucesso!');
  // FreeAndNil(F);

   
end;

end.

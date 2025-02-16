unit UfrmCTRCGererico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, RzRadGrp, ExtCtrls, RzPanel, RzButton, DBClient, Provider,
  StdCtrls, wwdblook, JvExControls, JvComponent, JvEnterTab, Grids,
  Wwdbigrd, Wwdbgrid, Mask, DBCtrls;

type
  TfrmCTRCGererico = class(TForm)
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    RzRadioGroup1: TRzRadioGroup;
    RzGroupBox3: TRzGroupBox;
    qrOS: TADOQuery;
    qrOSOS_ID: TAutoIncField;
    qrOSCLIN_ID: TIntegerField;
    qrOSCLIN_NOME: TStringField;
    dspOs: TDataSetProvider;
    cdsOS: TClientDataSet;
    cdsOSOS_ID: TAutoIncField;
    cdsOSCLIN_ID: TIntegerField;
    cdsOSCLIN_NOME: TStringField;
    lbOs: TLabel;
    lbClinId: TLabel;
    lbCliente: TLabel;
    RzBitBtn4: TRzBitBtn;
    edtOs: TEdit;
    RzBitBtn5: TRzBitBtn;
    qrDestinatario: TADOQuery;
    qrDestinatarioCLIF_ID: TAutoIncField;
    qrDestinatarioCLIF_RAZA: TStringField;
    cboDest: TwwDBLookupCombo;
    dspDestinatario: TDataSetProvider;
    cdsDestinatario: TClientDataSet;
    cdsDestinatarioCLIF_ID: TAutoIncField;
    cdsDestinatarioCLIF_RAZA: TStringField;
    qrTrans: TADOQuery;
    qrTransTRANS_ID: TAutoIncField;
    qrTransTRANS_RAZA: TStringField;
    qrTransTRANS_ENDERECO: TStringField;
    qrTransTRANS_ENDERECO_COMPL: TStringField;
    qrTransTRANS_CNPJ: TStringField;
    qrTransTRANS_PESSOA: TStringField;
    qrTransMUN_ID: TIntegerField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dspTrans: TDataSetProvider;
    cdsTrans: TClientDataSet;
    cdsTransTRANS_ID: TAutoIncField;
    cdsTransTRANS_RAZA: TStringField;
    cdsTransTRANS_ENDERECO: TStringField;
    cdsTransTRANS_ENDERECO_COMPL: TStringField;
    cdsTransTRANS_CNPJ: TStringField;
    cdsTransTRANS_PESSOA: TStringField;
    cdsTransMUN_ID: TIntegerField;
    RzGroupBox4: TRzGroupBox;
    pnlNotas: TPanel;
    RzGroupBox5: TRzGroupBox;
    lbManifesto: TLabel;
    lbNotas: TLabel;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    edtManifesto: TEdit;
    Label1: TLabel;
    RzBitBtn8: TRzBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrNotas: TADOQuery;
    dspNotas: TDataSetProvider;
    cdsNotas: TClientDataSet;
    qrNotasNFI_CODI: TAutoIncField;
    qrNotasNFI_NUMERO: TStringField;
    qrNotasNFI_DEMI: TDateTimeField;
    qrNotasNFI_DEST_NOME: TStringField;
    dsNotas: TDataSource;
    qrNotasSEL: TStringField;
    cdsNotasNFI_CODI: TAutoIncField;
    cdsNotasNFI_NUMERO: TStringField;
    cdsNotasNFI_DEMI: TDateTimeField;
    cdsNotasNFI_DEST_NOME: TStringField;
    cdsNotasSEL: TStringField;
    RzBitBtn9: TRzBitBtn;
    qrNotasMANI_ID: TIntegerField;
    cdsNotasMANI_ID: TIntegerField;
    RzBitBtn10: TRzBitBtn;
    dsCTRC: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    RzGroupBox6: TRzGroupBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    qrMuni: TADOQuery;
    qrMuniMUN_ID: TAutoIncField;
    qrMuniDIPAM: TStringField;
    qrMuniMUN_NOME: TStringField;
    qrMuniUF_SIGLA: TStringField;
    qrMuniREG_ID: TIntegerField;
    dspMuni: TDataSetProvider;
    cdsMuni: TClientDataSet;
    cdsMuniMUN_ID: TAutoIncField;
    cdsMuniDIPAM: TStringField;
    cdsMuniMUN_NOME: TStringField;
    cdsMuniUF_SIGLA: TStringField;
    cdsMuniREG_ID: TIntegerField;
    RzGroupBox7: TRzGroupBox;
    wwDBLookupCombo3: TwwDBLookupCombo;
    qrMuni2: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    dspMuni2: TDataSetProvider;
    cdsMuni2: TClientDataSet;
    RzGroupBox8: TRzGroupBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    lbUFCol: TLabel;
    lbUFEnt: TLabel;
    cdsMuni2MUN_ID: TAutoIncField;
    cdsMuni2DIPAM: TStringField;
    cdsMuni2MUN_NOME: TStringField;
    cdsMuni2UF_SIGLA: TStringField;
    cdsMuni2REG_ID: TIntegerField;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    qrAux: TADOQuery;
    qrAuxCFA: TADOQuery;
    DBEdit17: TDBEdit;
    CheckBox1: TCheckBox;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    qrCTRC: TADOQuery;
    qrCTRCORD_ID: TAutoIncField;
    qrCTRCOS_ID: TIntegerField;
    qrCTRCMANI_ID: TIntegerField;
    qrCTRCTRANS_ID: TIntegerField;
    qrCTRCVEIC_ID: TIntegerField;
    qrCTRCVEIC_ID_RECEB: TIntegerField;
    qrCTRCREG_ID: TIntegerField;
    qrCTRCORD_PESO_TOTAL: TFloatField;
    qrCTRCORD_QTDE_PALLET: TFloatField;
    qrCTRCORD_VOLUME: TFloatField;
    qrCTRCORD_VALORTOTAL: TFloatField;
    qrCTRCORD_COLETA_ENTREGA: TStringField;
    qrCTRCORD_COL_ENDERECO: TStringField;
    qrCTRCORD_COL_ENDERECO_COMPL: TStringField;
    qrCTRCORD_COL_ENDERECO_BAIRRO: TStringField;
    qrCTRCMUN_ID_COL: TIntegerField;
    qrCTRCORD_COL_MUNICIPIO: TStringField;
    qrCTRCUF_SIGLA_COL: TStringField;
    qrCTRCORD_COL_CEP: TStringField;
    qrCTRCORD_COL_TEL1: TStringField;
    qrCTRCORD_COL_TEL2: TStringField;
    qrCTRCORD_COL_FAX: TStringField;
    qrCTRCORD_COL_EMAIL: TStringField;
    qrCTRCORD_COL_CONTATO: TStringField;
    qrCTRCORD_ENT_ENDERECO: TStringField;
    qrCTRCORD_ENT_ENDERECO_COMPL: TStringField;
    qrCTRCORD_ENT_ENDERECO_BAIRRO: TStringField;
    qrCTRCMUN_ID_ENT: TIntegerField;
    qrCTRCORD_ENT_MUNICIPIO: TStringField;
    qrCTRCUF_SIGLA_ENT: TStringField;
    qrCTRCORD_ENT_CEP: TStringField;
    qrCTRCORD_ENT_TEL1: TStringField;
    qrCTRCORD_ENT_TEL2: TStringField;
    qrCTRCORD_ENT_FAX: TStringField;
    qrCTRCORD_ENT_EMAIL: TStringField;
    qrCTRCORD_ENT_CONTATO: TStringField;
    qrCTRCCLIF_ID: TIntegerField;
    qrCTRCORD_TPCARGA: TStringField;
    qrCTRCORD_QTDE_UV: TFloatField;
    qrCTRCORD_REDESPACHO: TStringField;
    qrCTRCORD_PLACA: TStringField;
    qrCTRCCFA_ID: TIntegerField;
    qrCTRCORD_TOTALPREST: TFloatField;
    qrCTRCORD_VLR_ICMS: TFloatField;
    qrCTRCORD_NOTAS: TStringField;
    qrCTRCTRANS_ID_REDES: TIntegerField;
    qrCTRCORD_PAGO: TStringField;
    qrCTRCCLIN_ID: TIntegerField;
    qrCTRCORD_CONSIGN: TStringField;
    qrCTRCORD_VLR_FRETE: TFloatField;
    qrCTRCORD_VLR_SECCAT: TFloatField;
    qrCTRCORD_VLR_DESPACHO: TFloatField;
    qrCTRCORD_VLR_PEDAGIO: TFloatField;
    qrCTRCORD_VLR_OUTROS: TFloatField;
    qrCTRCORD_CONH: TStringField;
    qrCTRCORD_ALIQ: TFloatField;
    qrCTRCMARCADOR: TStringField;
    qrCTRCORD_MINUTA: TStringField;
    qrCTRCORD_STATUS: TStringField;
    qrCTRCORD_DATA: TDateTimeField;
    qrCTRCORD_OBS: TStringField;
    qrCTRCORD_GENERICO: TStringField;
    qrCTRCCHAVE_ID: TStringField;
    qrCTRCSEL: TStringField;
    qrCTRCFAT_ID: TIntegerField;
    qrCTRCORD_TXENTREGA: TFloatField;
    qrCTRCORD_SEGURO: TFloatField;
    qrCTRCE_COMPLEMENTAR: TStringField;
    qrCTRCORD_ID_COMPLEMENTAR: TIntegerField;
    qrCTRCTEM_COMPLEMENTAR: TStringField;
    qrCTRCSEL_CTRC: TStringField;
    qrCTRCPAMCARD_SEL: TStringField;
    qrCTRCTOMADOR: TStringField;
    qrCTRCNFSO_SEL: TStringField;
    qrCTRCNFSO_ID: TIntegerField;
    qrCTRCALIQ_ISS: TFloatField;
    qrCTRCVLR_ISS: TFloatField;
    qrCTRCVLR_NFS: TFloatField;
    qrCTRCNFI_REENTREGA: TIntegerField;
    qrCTRCCLI_RECEBEDOR: TIntegerField;
    qrCTRCCLI_EXPEDIDOR: TIntegerField;
    qrCTRCCLI_REMETENTE: TIntegerField;
    qrCTRCCLI_REMETENTE_TIPO: TStringField;
    qrCTRCCTE_XML: TMemoField;
    qrCTRCCTE_CHAVE: TMemoField;
    qrCTRCCTE_PROTOCOLO: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn8Click(Sender: TObject);
    procedure RzBitBtn9Click(Sender: TObject);
    procedure RzBitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure cboDestCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure qrCTRCNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCTRCGererico: TfrmCTRCGererico;
  NotasFiscais : array [1..40] of Integer;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmCTRCGererico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmCTRCGererico := nil;
end;

procedure TfrmCTRCGererico.RzBitBtn4Click(Sender: TObject);
begin
  edtOs.Clear;
  edtOs.Visible := True;
  RzBitBtn5.Visible := True;
  lbCliente.Visible := False;
  edtOs.SetFocus;
end;

procedure TfrmCTRCGererico.RzBitBtn5Click(Sender: TObject);
begin
    cdsOS.CLOSE;
    qrOS.Parameters[0].Value := StrToInt(edtOs.Text);
    cdsOS.Open;

    IF cdsOS.IsEmpty then
    begin
        MessageBox(Self.Handle, 'Os n�o encontrada!', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
    end;

    lbOs.Caption := cdsOSOS_ID.AsString;
    lbClinId.Caption := cdsOSCLIN_ID.AsString;
    lbCliente.Caption := cdsOSCLIN_NOME.AsString;

    cdsDestinatario.Close;
    qrDestinatario.Parameters[0].Value := cdsOSCLIN_ID.Value;
    cdsDestinatario.Open;

    cboDest.LookupValue := '';
    cboDest.Text := '';

    edtOs.Visible := False;
    RzBitBtn5.Visible := False;
    lbCliente.Visible := True;

end;

procedure TfrmCTRCGererico.RzBitBtn7Click(Sender: TObject);
VAR I : Integer;
begin
  lbManifesto.Caption := '0';
  lbNotas.Caption := '0';
  for i := 0 to 40 do
        NotasFiscais[i] := 0;
end;

procedure TfrmCTRCGererico.RzBitBtn6Click(Sender: TObject);
begin
  pnlNotas.Top := 200;
  pnlNotas.Left := 8;
  pnlNotas.Visible := True;
end;

procedure TfrmCTRCGererico.RzBitBtn8Click(Sender: TObject);
begin
   cdsNotas.Close;
   qrNotas.Parameters[0].Value := StrToInt(edtManifesto.Text);
   cdsNotas.Open;
end;

procedure TfrmCTRCGererico.RzBitBtn9Click(Sender: TObject);
var i : Integer;
    NotasResumo : string;
begin
   //Limpando o array
   for i := 0 to 40 do
        NotasFiscais[i] := 0;

   i := 0;

   NotasResumo := '';

   cdsNotas.First;
   while not cdsNotas.Eof do begin
       if cdsNotasSEL.Value = '*' then
       begin
           NotasFiscais[i] := cdsNotasNFI_CODI.Value;
           NotasResumo := NotasResumo + cdsNotasNFI_NUMERO.Value + '/';
           Inc(i);
       end;
       cdsNotas.Next;
   end;
   pnlNotas.Visible := False;
   lbManifesto.Caption := cdsNotasMANI_ID.AsString;
   lbNotas.Caption := NotasResumo;

end;

procedure TfrmCTRCGererico.RzBitBtn10Click(Sender: TObject);
VAR I : Integer;
begin
  lbManifesto.Caption := '0';
  lbNotas.Caption := '0';
  for i := 0 to 40 do
        NotasFiscais[i] := 0;
  pnlNotas.Visible := False;
end;

procedure TfrmCTRCGererico.FormCreate(Sender: TObject);
begin
  cdsMuni.Open;
  cdsMuni2.Open;
  cdsTrans.Open;
  
end;

procedure TfrmCTRCGererico.RzBitBtn1Click(Sender: TObject);
begin
  qrCTRC.close;
  qrCTRC.Open;
  qrCTRC.Append;
end;

procedure TfrmCTRCGererico.RzBitBtn2Click(Sender: TObject);
VAR CHAVE_ID : string;
    ORD_ID : Integer;
    i : Integer;
    ConhProv : Integer;
begin


   if lbManifesto.Caption = '' then begin
        MessageBox(Self.Handle, 'Informe o manifesto!', 'Erro', MB_OK);
        Abort;
   end;
 if lbNotas.Caption = '' then begin
        MessageBox(Self.Handle, 'Informe a nota fiscal!', 'Erro', MB_OK);
        Abort;
   end;


  QRCTRCOS_ID.Value := StrToInt(lbOs.Caption);
  QRCTRCCLIN_ID.Value := StrToInt(lbClinId.Caption);
   try
       FMenu.ADOConnection.BeginTrans;
       QRCTRC.Post;
       ORD_ID := qrCTRCORD_ID.AsInteger;
  WITH qrAux DO begin
      close;
      sql.Clear;
      sql.Add('select ULT_CONHPROV from parametro');
      Open;
  end;

  ConhProv := qrAux.FieldByName('ULT_CONHPROV').AsInteger;

  qrCTRC.Edit;
  qrCTRCORD_CONH.Value := qrAux.FieldByName('ULT_CONHPROV').AsString + '-P';

  if lbManifesto.Caption <> '0' then
        QRCTRCMANI_ID.Value := StrToInt(lbManifesto.Caption);
  if lbNotas.Caption <> '0' then
        QRCTRCORD_NOTAS.Value := lbNotas.Caption;
  if RzRadioGroup1.ItemIndex = 0 then
        QRCTRCORD_CONSIGN.Value := 'S'
  else
        QRCTRCORD_CONSIGN.Value := 'N';


  QRCTRCUF_SIGLA_COL.Value := lbUFCol.Caption;
  QRCTRCUF_SIGLA_ENT.Value := lbUFEnt.Caption;

  //GERAMOS CHAVE PARA RECUPERA��O DO ID
  CHAVE_ID := FMenu.SqlUsuariosNOME.Value+' '+FormatDateTime('YYYYMMDD-hhmmss', Now);
  qrCTRCORD_GENERICO.AsString := 'S';
  qrCTRCCHAVE_ID.Value := CHAVE_ID;





       with qrAux do begin
           close;
           sql.Clear;
           sql.Add('update parametro set ULT_CONHPROV = ' + IntToStr(ConhProv + 1));
           ExecSQL;
       end;


       cdsNotas.First;
       while not cdsNotas.Eof do begin
         if cdsNotasSEL.Value = '*' then begin
           with qrAux do begin
               Close;
               sql.Clear;
               sql.Add('update nf set ord_id = ' + IntToStr(ORD_ID) + ' WHERE NFI_CODI = ' + IntToStr(cdsNotasNFI_CODI.Value));
               ExecSQL;
           end;
         end;
         cdsNotas.Next;
       end;



       //ATUALIZA O ORD_ID DAS NOTAS FISCAIS SELECIONADAS
//       WITH qrAux do
//       begin
//           close;
//           sql.Clear;
//           SQL.Add('SELECT MAX(ORD_ID) AS ORD_ID FROM ORDEM_COLETA_ENTREGA WHERE CHAVE_ID IS NOT NULL ');
//           Open;
//       end;
//       if Trim(qrAux.FieldByName('ORD_ID').AsString) <> '' then begin
//
//           ORD_ID := StrToInt(qrAux.FieldByName('ORD_ID').AsString);
//
//           for i := 0 to 40 do begin
//               if NotasFiscais[i] <> 0 then
//               begin
//                   with qrAux do begin
//                       Close;
//                       sql.Clear;
//                       sql.Add('update nf set ord_id = ' + IntToStr(ORD_ID) + ' WHERE NFI_CODI = ' + IntToStr(NotasFiscais[i]));
//                       ExecSQL;
//                   end;
//               end;
//           end;
//       end;


       IF qrCTRC.State IN [dsEdit, dsInsert] then
          qrCTRC.Post;


       //acerta os campos do manifesto copiando dentro da OE generica
       with qrAux do begin
           Close;
           SQL.Clear;
           sql.Add('exec ACERTA_ORDEM_ENTREGA ' + lbManifesto.Caption);
           ExecSQL;
       end;


       FMenu.ADOConnection.CommitTrans;
       ShowMessage('Conhecimento Generico gerado com sucesso!');
       self.close;
   except
     ON E : Exception do begin
       FMenu.ADOConnection.RollbackTrans;
       MessageBox(Self.Handle, PCHAR('Aconteceu um erro ao gerar o conhecimento.' + #13 + E.Message), 'Erro', MB_OK + MB_ICONERROR)  ;
     end;
   end;


end;

procedure TfrmCTRCGererico.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  lbUFCol.Caption := cdsMuniUF_SIGLA.Value;
end;

procedure TfrmCTRCGererico.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  lbUFEnt.Caption := cdsMuni2UF_SIGLA.Value;
end;

procedure TfrmCTRCGererico.FormShow(Sender: TObject);
begin
 RzBitBtn1.Click;
 RzBitBtn4.Click;
end;

procedure TfrmCTRCGererico.RzBitBtn3Click(Sender: TObject);
begin
     if MessageBox(Self.Handle, 'Confirma cancelamento do conhecimento?', 'Confirma��o', MB_YESNO + MB_ICONQUESTION) = 6 then
     begin
          qrCTRC.Cancel;
          Close;
     end;
end;

procedure TfrmCTRCGererico.cboDestCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  {with qrAuxCFA do begin
       close;
       sql.cel
   end;}
end;

procedure TfrmCTRCGererico.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
        DBEdit17.Visible := True
  else
        DBEdit17.Visible := False;
end;

procedure TfrmCTRCGererico.qrCTRCNewRecord(DataSet: TDataSet);
begin
   qrCTRCORD_DATA.Value := Now;
   qrCTRCORD_STATUS.Value := 'A';
end;

end.

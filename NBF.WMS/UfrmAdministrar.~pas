unit UfrmAdministrar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, RzTabs, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmAdministrativo = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    edtManifesto: TEdit;
    Button1: TButton;
    qrAux: TADOQuery;
    Button2: TButton;
    TabSheet2: TRzTabSheet;
    edtNFMani: TEdit;
    Label2: TLabel;
    Button3: TButton;
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
    wwDBGrid1: TwwDBGrid;
    dsNF: TDataSource;
    GroupBox1: TGroupBox;
    TabSheet3: TRzTabSheet;
    GroupBox2: TGroupBox;
    edtRomaneio: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdministrativo: TfrmAdministrativo;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmAdministrativo.Button1Click(Sender: TObject);
begin
  if   MessageBox(Self.Handle, 'Confirma a operação?', '', MB_YESNO) = 6 then begin
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('update manifesto set confirma_mani = ''N'' where mani_id = ' + edtManifesto.Text);
          ExecSQL;
      end;
      ShowMessage('Manifesto liberado!');
  end;
end;

procedure TfrmAdministrativo.Button2Click(Sender: TObject);
begin
   if   MessageBox(Self.Handle, 'Confirma a operação?', '', MB_YESNO) = 6 then begin
       with qrAux do begin
          close;
          sql.Clear;
          sql.Add('EXEC DELETA_OE ' + edtManifesto.Text);
          ExecSQL;
      end;
      ShowMessage('OEs liberadas!');
   end;
end;

procedure TfrmAdministrativo.Button3Click(Sender: TObject);
begin
   qrNF.Close;
   qrNF.Parameters[0].Value := StrToInt(edtNFMani.Text);
   qrNF.Open;
end;

procedure TfrmAdministrativo.Button4Click(Sender: TObject);
begin
   if   MessageBox(Self.Handle, 'Confirma a operação?', '', MB_YESNO) = 6 then begin
       with qrAux do begin
          close;
          sql.Clear;
          sql.Add('update Romaneio set Rom_Confirma = ''N'' where Rom_id = ' + edtRomaneio.Text);
          ExecSQL;
      end;
      ShowMessage('Romaneio Liberado!');
   end;
end;

end.

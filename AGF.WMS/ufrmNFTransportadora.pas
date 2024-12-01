unit ufrmNFTransportadora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, ADODB, DBCtrls, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb;

type
  TfrmNFTransportadora = class(TForm)
    qryNota: TADOQuery;
    qryNotaNFI_CODI: TAutoIncField;
    qryNotaNFI_NUMERO: TStringField;
    qryNotaTDOC_ID: TIntegerField;
    qryNotaNFI_EMIT_ORIG: TStringField;
    qryNotaNFI_EMIT_CLI: TIntegerField;
    qryNotaNFI_DEST_ORIG: TStringField;
    qryNotaNFI_DEST_CLI: TIntegerField;
    qryNotaNFI_DEST_NOME: TStringField;
    qryNotaNFI_DEST_RAZA: TStringField;
    qryNotaNFI_DEST_ENDERECO: TStringField;
    qryNotaNFI_DEST_COMPL: TStringField;
    qryNotaNFI_DEST_BAIRRO: TStringField;
    qryNotaNFI_DEST_UF_SIGLA: TStringField;
    qryNotaNFI_DEST_CEP: TStringField;
    qryNotaNFI_DEST_TEL: TStringField;
    qryNotaNFI_DEST_FAX: TStringField;
    qryNotaNFI_DEST_CGC: TStringField;
    qryNotaNFI_DEST_INSCRG: TStringField;
    qryNotaNFI_DEST_INSCTRB: TStringField;
    qryNotaNFI_DEST_PESS: TStringField;
    qryNotaNFI_VDES: TFloatField;
    qryNotaNFI_VFRE: TFloatField;
    qryNotaNFI_VSEG: TFloatField;
    qryNotaNFI_BIPI: TFloatField;
    qryNotaNFI_VIPI: TFloatField;
    qryNotaNFI_BICM: TFloatField;
    qryNotaNFI_VICM: TFloatField;
    qryNotaNFI_VMER: TFloatField;
    qryNotaNFI_TOTA: TFloatField;
    qryNotaNFI_DSAI: TDateTimeField;
    qryNotaNFI_HSAI: TDateTimeField;
    qryNotaNFI_TRAN: TStringField;
    qryNotaNFI_PLAC: TStringField;
    qryNotaNFI_UF_SIGLA: TStringField;
    qryNotaNFI_MARC: TStringField;
    qryNotaNFI_QTDE: TIntegerField;
    qryNotaNFI_ESPE: TStringField;
    qryNotaNFI_PLIQ: TFloatField;
    qryNotaNFI_PBRU: TFloatField;
    qryNotaNFI_VOL: TFloatField;
    qryNotaNFI_TFRE: TStringField;
    qryNotaNFI_DEMI: TDateTimeField;
    qryNotaCFA_ID: TIntegerField;
    qryNotaOS_ID: TIntegerField;
    qryNotaMUN_ID: TIntegerField;
    qryNotaNFI_MARCADOR: TStringField;
    qryNotaNFI_DTENTREGA: TDateTimeField;
    qryNotaMANI_ID: TIntegerField;
    qryNotaMANI_ORDEM: TIntegerField;
    qryNotaNFI_MOVESTQ: TStringField;
    qryNotaNFI_TRANS: TStringField;
    qryNotaTEXTO_LIVRE: TMemoField;
    qryNotaNFI_DTENTREGA_FIM: TDateTimeField;
    qryNotaNFI_ENTREGA: TStringField;
    qryNotaNFI_COBRAR: TStringField;
    qryNotaNFI_CLONE: TStringField;
    qryNotaNFI_QTDEPALLET: TIntegerField;
    qryNotaNFI_QTDEUV: TFloatField;
    qryNotaTPRO_ID: TIntegerField;
    qryNotaNFI_MARCADOR_NFRS: TStringField;
    qryNotaNFI_NFRS_REJEITADA: TStringField;
    qryNotaNFI_RETORNADA: TStringField;
    qryNotaNFI_GEROUNFE: TStringField;
    qryNotaNFI_REDESPACHO: TStringField;
    qryNotaORD_ID: TIntegerField;
    qryNotaTRANS_ID: TIntegerField;
    qryNotaNFI_PRESTSERV: TStringField;
    qryNotaNFI_FATURADA: TStringField;
    qryNotaNFI_DISCRIM: TStringField;
    qryNotaFAT_ID: TIntegerField;
    qryNotaNFI_MARCAREEN: TStringField;
    qryNotaNFI_STATUS: TStringField;
    qryNotaNFI_MARCAIMP: TStringField;
    qryNotaNFI_CODI_ORIGINOUNFRS: TIntegerField;
    qryNotaNFI_LOAD: TStringField;
    qryNotaNFI_SERIE: TStringField;
    qryNotaNFI_MARCADOR_CROS: TStringField;
    qryNotaNFI_EXCLUI_REEN: TStringField;
    qryNotaNFI_MARCADOR_CTRCGEN: TStringField;
    qryNotaNFI_GEROU_REENTREGA: TStringField;
    qryNotaBLOQUEIO: TStringField;
    qryNotaSEL: TStringField;
    qryNotaCOD_EDI: TStringField;
    qryNotaNFI_CODI_SIMB: TIntegerField;
    qryNotaIBGE_ID: TIntegerField;
    qryNotaCHAVE_NFE: TStringField;
    qryNotacNF: TStringField;
    qryNotacDV: TStringField;
    qryNotaOBS_DANFE: TMemoField;
    qryNotaNFE: TStringField;
    qryNotaNFI_ISS: TFloatField;
    qryNotaNFI_ALIQISS: TFloatField;
    qryNotaNF_SERVICO_SEL: TStringField;
    qryNotaPREP_ID: TIntegerField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    lbl1: TLabel;
    qryTransp: TADOQuery;
    ds1: TDataSource;
    lbl2: TLabel;
    dbmmo1: TDBMemo;
    btn1: TButton;
    qryTranspTRANS_ID: TAutoIncField;
    qryTranspnome: TStringField;
    lbl3: TLabel;
    dbedt1: TDBEdit;
    lbl4: TLabel;
    dbedt2: TDBEdit;
    lbl5: TLabel;
    dbedt3: TDBEdit;
    lbl6: TLabel;
    dbedt4: TDBEdit;
    btn2: TButton;
    lbl7: TLabel;
    dbedt5: TDBEdit;
    lbl8: TLabel;
    dbedt6: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    lbl9: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFTransportadora: TfrmNFTransportadora;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmNFTransportadora.FormCreate(Sender: TObject);
begin
  qryTransp.Open;
end;

procedure TfrmNFTransportadora.btn1Click(Sender: TObject);
begin
  qryNota.Post;
  Self.Close;
end;

procedure TfrmNFTransportadora.btn2Click(Sender: TObject);
begin
   qryNota.cancel;
   Self.Close; 
end;

end.

unit ufrmCorrigeConhecimentoComplementar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, DBCtrls;

type
  TfrmCorrigeConhecimentoComplementar = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrCTR: TADOQuery;
    qrCTRORD_ID: TAutoIncField;
    qrCTROS_ID: TIntegerField;
    qrCTRMANI_ID: TIntegerField;
    qrCTRTRANS_ID: TIntegerField;
    qrCTRVEIC_ID: TIntegerField;
    qrCTRVEIC_ID_RECEB: TIntegerField;
    qrCTRREG_ID: TIntegerField;
    qrCTRORD_PESO_TOTAL: TFloatField;
    qrCTRORD_QTDE_PALLET: TFloatField;
    qrCTRORD_VOLUME: TFloatField;
    qrCTRORD_VALORTOTAL: TFloatField;
    qrCTRORD_COLETA_ENTREGA: TStringField;
    qrCTRORD_COL_ENDERECO: TStringField;
    qrCTRORD_COL_ENDERECO_COMPL: TStringField;
    qrCTRORD_COL_ENDERECO_BAIRRO: TStringField;
    qrCTRMUN_ID_COL: TIntegerField;
    qrCTRORD_COL_MUNICIPIO: TStringField;
    qrCTRUF_SIGLA_COL: TStringField;
    qrCTRORD_COL_CEP: TStringField;
    qrCTRORD_COL_TEL1: TStringField;
    qrCTRORD_COL_TEL2: TStringField;
    qrCTRORD_COL_FAX: TStringField;
    qrCTRORD_COL_EMAIL: TStringField;
    qrCTRORD_COL_CONTATO: TStringField;
    qrCTRORD_ENT_ENDERECO: TStringField;
    qrCTRORD_ENT_ENDERECO_COMPL: TStringField;
    qrCTRORD_ENT_ENDERECO_BAIRRO: TStringField;
    qrCTRMUN_ID_ENT: TIntegerField;
    qrCTRORD_ENT_MUNICIPIO: TStringField;
    qrCTRUF_SIGLA_ENT: TStringField;
    qrCTRORD_ENT_CEP: TStringField;
    qrCTRORD_ENT_TEL1: TStringField;
    qrCTRORD_ENT_TEL2: TStringField;
    qrCTRORD_ENT_FAX: TStringField;
    qrCTRORD_ENT_EMAIL: TStringField;
    qrCTRORD_ENT_CONTATO: TStringField;
    qrCTRCLIF_ID: TIntegerField;
    qrCTRORD_TPCARGA: TStringField;
    qrCTRORD_QTDE_UV: TFloatField;
    qrCTRORD_REDESPACHO: TStringField;
    qrCTRORD_PLACA: TStringField;
    qrCTRCFA_ID: TIntegerField;
    qrCTRORD_TOTALPREST: TFloatField;
    qrCTRORD_VLR_ICMS: TFloatField;
    qrCTRORD_NOTAS: TStringField;
    qrCTRTRANS_ID_REDES: TIntegerField;
    qrCTRORD_PAGO: TStringField;
    qrCTRCLIN_ID: TIntegerField;
    qrCTRORD_CONSIGN: TStringField;
    qrCTRORD_VLR_FRETE: TFloatField;
    qrCTRORD_VLR_SECCAT: TFloatField;
    qrCTRORD_VLR_DESPACHO: TFloatField;
    qrCTRORD_VLR_PEDAGIO: TFloatField;
    qrCTRORD_VLR_OUTROS: TFloatField;
    qrCTRORD_CONH: TStringField;
    qrCTRORD_ALIQ: TFloatField;
    qrCTRMARCADOR: TStringField;
    qrCTRORD_MINUTA: TStringField;
    qrCTRORD_STATUS: TStringField;
    qrCTRORD_DATA: TDateTimeField;
    qrCTRORD_OBS: TStringField;
    qrCTRORD_GENERICO: TStringField;
    qrCTRCHAVE_ID: TStringField;
    qrCTRSEL: TStringField;
    qrCTRFAT_ID: TIntegerField;
    qrCTRORD_TXENTREGA: TFloatField;
    qrCTRORD_SEGURO: TFloatField;
    qrCTRE_COMPLEMENTAR: TStringField;
    qrCTRORD_ID_COMPLEMENTAR: TIntegerField;
    qrCTRTEM_COMPLEMENTAR: TStringField;
    qrCTRSEL_CTRC: TStringField;
    qrCTRPAMCARD_SEL: TStringField;
    qrCTRTOMADOR: TStringField;
    qrCTRNFSO_SEL: TStringField;
    qrCTRNFSO_ID: TIntegerField;
    qrCTRALIQ_ISS: TFloatField;
    qrCTRVLR_ISS: TFloatField;
    qrCTRVLR_NFS: TFloatField;
    DataSource1: TDataSource;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    qrOECAux: TADOQuery;
    qrOECAuxORD_ID: TIntegerField;
    qrOECAuxVLR_FRETE: TFloatField;
    qrOECAuxTOTAL: TFloatField;
    qrOECAuxSEC_CAT: TFloatField;
    qrOECAuxDESPACHO: TFloatField;
    qrOECAuxPEDAGIO: TFloatField;
    qrOECAuxOUTROS: TFloatField;
    qrOECAuxALIQ: TFloatField;
    qrOECAuxICMS: TFloatField;
    qrOECAuxENTREGA: TFloatField;
    qrOECAuxSEGURO: TFloatField;
    DBText1: TDBText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrigeConhecimentoComplementar: TfrmCorrigeConhecimentoComplementar;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmCorrigeConhecimentoComplementar.Button1Click(
  Sender: TObject);
begin
   qrCTR.close;
   qrCTR.Parameters[0].Value := Edit1.Text;
   qrCTR.Open;
end;

procedure TfrmCorrigeConhecimentoComplementar.Button2Click(
  Sender: TObject);
begin
   if Application.MessageBox('Confirma as alterações?', 'Confirmação', MB_YESNO) = 7 then
        Abort;

   if qrCTR.State = dsEdit then
        qrCTR.Post;

   with ADOQuery1 do begin
       Close;
       sql.Clear;
       sql.Add(
            'delete from OEC_aux where ord_id = ' + qrCTRORD_ID.AsString
       );
       ExecSQL;
   end;

   qrOECAux.Close;
   qrOECAux.Open;

   qrOECAux.Append;
   qrOECAuxORD_ID.AsInteger := qrCTRORD_ID.AsInteger;
   qrOECAuxVLR_FRETE.AsFloat := qrCTRORD_VLR_FRETE.AsFloat;
   qrOECAuxSEC_CAT.AsFloat := qrCTRORD_VLR_SECCAT.AsFloat;
   qrOECAuxDESPACHO.AsFloat := qrCTRORD_VLR_DESPACHO.AsFloat;
   qrOECAuxPEDAGIO.AsFloat := qrCTRORD_VLR_PEDAGIO.AsFloat;
   qrOECAuxENTREGA.AsFloat := qrCTRORD_TXENTREGA.AsFloat;
   qrOECAuxSEGURO.AsFloat := qrCTRORD_SEGURO.AsFloat;
   qrOECAuxALIQ.AsFloat := qrCTRORD_ALIQ.AsFloat;
   qrOECAuxICMS.AsFloat := qrCTRORD_VLR_ICMS.AsFloat;
   qrOECAuxTOTAL.AsFloat := qrCTRORD_TOTALPREST.AsFloat;
   qrOECAux.Post;

   ShowMessage('Dados alterados com sucesso!');

   Self.Close;



end;

procedure TfrmCorrigeConhecimentoComplementar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrOECAux.Close;
  qrCTR.Close;

  Action := caFree;
  frmCorrigeConhecimentoComplementar := nil;


end;

end.

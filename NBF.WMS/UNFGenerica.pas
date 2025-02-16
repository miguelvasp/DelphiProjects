unit UNFGenerica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, wwdblook, Mask, wwdbedit, ComCtrls, Tabnotbk, Db,
  DBTables, Wwquery, Wwdatsrc, wwstorep, wwDialog, wwidlg, ADODB;

type
  TFNFGenerica = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    DBNavigator1: TDBNavigator;
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    DBG_INFI: TwwDBGrid;
    Label20: TLabel;
    DBText14: TDBText;
    Panel4: TPanel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    GroupBox5: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBCB_CFA_TIPI: TwwDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox10: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    DBE_NFI_PLAC: TwwDBEdit;
    DBLC_NFI_UFVE: TwwDBLookupCombo;
    DBCB_NFI_TFRE: TwwDBComboBox;
    DBE_NFI_DSAI: TwwDBEdit;
    DBE_NFI_MARC: TwwDBEdit;
    DBE_NFI_QTDE: TwwDBEdit;
    DBE_NFI_ESPE: TwwDBEdit;
    DBE_NFI_PLIQ: TwwDBEdit;
    DBE_NFI_PBRU: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBText15: TDBText;
    wwDBComboBox4: TwwDBComboBox;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label10: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    Q_NF: TwwQuery;
    Q_NFNFI_TFRE: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFTDOC_ID: TIntegerField;
    Q_NFNFI_EMIT_ORIG: TStringField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_DEST_ORIG: TStringField;
    Q_NFNFI_DEST_CLI: TIntegerField;
    Q_NFNFI_DEST_NOME: TStringField;
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_DEST_ENDERECO: TStringField;
    Q_NFNFI_DEST_COMPL: TStringField;
    Q_NFNFI_DEST_BAIRRO: TStringField;
    Q_NFNFI_DEST_UF_SIGLA: TStringField;
    Q_NFNFI_DEST_CEP: TStringField;
    Q_NFNFI_DEST_TEL: TStringField;
    Q_NFNFI_DEST_FAX: TStringField;
    Q_NFNFI_DEST_CGC: TStringField;
    Q_NFNFI_DEST_INSCRG: TStringField;
    Q_NFNFI_DEST_INSCTRB: TStringField;
    Q_NFNFI_DEST_PESS: TStringField;
    Q_NFNFI_VFRE: TFloatField;
    Q_NFNFI_VSEG: TFloatField;
    Q_NFNFI_BIPI: TFloatField;
    Q_NFNFI_VIPI: TFloatField;
    Q_NFNFI_BICM: TFloatField;
    Q_NFNFI_VICM: TFloatField;
    Q_NFNFI_VMER: TFloatField;
    Q_NFNFI_TOTA: TFloatField;
    Q_NFNFI_DSAI: TDateTimeField;
    Q_NFNFI_HSAI: TDateTimeField;
    Q_NFNFI_TRAN: TStringField;
    Q_NFNFI_PLAC: TStringField;
    Q_NFNFI_UF_SIGLA: TStringField;
    Q_NFNFI_MARC: TStringField;
    Q_NFNFI_QTDE: TIntegerField;
    Q_NFNFI_ESPE: TStringField;
    Q_NFNFI_PLIQ: TFloatField;
    Q_NFNFI_PBRU: TFloatField;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_NFNFI_VDES: TFloatField;
    Q_NFCFA_ID: TIntegerField;
    Q_NFOS_ID: TIntegerField;
    Q_NFMUN_ID: TIntegerField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFNFI_MOVESTQ: TStringField;
    Q_NFNFI_MARCADOR: TStringField;
    Q_NFMANI_ID: TIntegerField;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_VOL: TFloatField;
    Q_NFCFACODI: TStringField;
    Q_NFNFI_TRANS: TStringField;
    Q_NFTEXTO_LIVRE: TMemoField;
    Q_NFNFI_COBRAR: TStringField;
    Q_NFNFI_DTENTREGA_FIM: TDateTimeField;
    Q_NFNFI_ENTREGA: TStringField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFNFI_CLONE: TStringField;
    Q_NFNFI_QTDEPALLET: TIntegerField;
    Q_NFNFI_RETORNADA: TStringField;
    Q_NFNFI_NFRS_REJEITADA: TStringField;
    Q_NFNFI_GEROUNFE: TStringField;
    Q_NFNFI_REDESPACHO: TStringField;
    Q_NFNFI_QTDEUV: TFloatField;
    Q_NFTPRO_ID: TIntegerField;
    Q_NFNFI_MARCADOR_NFRS: TStringField;
    Q_NFORD_ID: TIntegerField;
    Q_NFTRANS_ID: TIntegerField;
    Q_NFNFI_DISCRIM: TStringField;
    UPD_NF: TUpdateSQL;
    DS_NF: TwwDataSource;
    Q_UF: TwwQuery;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_FAT: TwwQuery;
    Q_FATCFA_CODI: TStringField;
    Q_FATCFA_DCFO: TStringField;
    Q_FATCFA_DCCF: TStringField;
    Q_FATTDOC_ID: TIntegerField;
    Q_FATCFA_TPA1: TStringField;
    Q_FATCFA_TPA2: TStringField;
    Q_FATCFA_TPA3: TStringField;
    Q_FATCFA_TICM: TStringField;
    Q_FATCFA_RICM: TFloatField;
    Q_FATCFA_FICM: TStringField;
    Q_FATCFA_IIPI: TStringField;
    Q_FATCFA_TIPI: TStringField;
    Q_FATCFA_FISS: TStringField;
    Q_FATCFA_AISS: TFloatField;
    Q_FATCFA_GDUP: TStringField;
    Q_FATCFA_ID: TAutoIncField;
    DS_FAT: TwwDataSource;
    Q_CEP: TwwQuery;
    Q_AUX: TwwQuery;
    Q_PAR: TwwQuery;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARPAR_CNPJ: TStringField;
    Q_PARPAR_INSC: TStringField;
    Q_PARPAR_ENDERECO: TStringField;
    Q_PARPAR_ENDERECO_COMPL: TStringField;
    Q_PARPAR_ENDERECO_BAIRRO: TStringField;
    Q_PARPAR_UF_SIGLA: TStringField;
    Q_PARPAR_CEP: TStringField;
    Q_PARPAR_TEL: TStringField;
    Q_PARPAR_FAX: TStringField;
    Q_PARPAR_EMAIL: TStringField;
    Q_PARMUN_ID: TIntegerField;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARULT_NF: TIntegerField;
    Q_PARCLIN_ID: TIntegerField;
    DS_INF: TwwDataSource;
    UPD_INF: TUpdateSQL;
    Q_INF: TwwQuery;
    Q_INFINF_ITEM: TIntegerField;
    Q_INFPRO_cod: TStringField;
    Q_INFPRO_DESC: TStringField;
    Q_INFINF_QTDE: TFloatField;
    Q_INFINF_PUNI: TFloatField;
    Q_INFINF_AIPI: TFloatField;
    Q_INFINF_VIPI: TFloatField;
    Q_INFINF_TOTA: TFloatField;
    Q_INFINF_AICM: TFloatField;
    Q_INFPRO_ID: TIntegerField;
    Q_INFINF_PESO: TFloatField;
    Q_INFINF_VICM: TFloatField;
    Q_INFINF_CODI: TAutoIncField;
    Q_INFNFI_CODI: TIntegerField;
    Q_INFUVEN_ID: TIntegerField;
    Q_INFINF_VOL: TFloatField;
    Q_INFINF_PESOLIQ: TFloatField;
    Q_INFINF_BICM: TFloatField;
    Q_INFINF_QTDERETORNADA: TFloatField;
    DBText2: TDBText;
    STP_NF: TwwStoredProc;
    wwSearchDialog1: TwwSearchDialog;
    Q_NF55: TwwQuery;
    Q_NF55NFI_NUMERO: TStringField;
    Q_NF55NFI_CODI: TAutoIncField;
    Q_NFNFI_PRESTSERV: TStringField;
    Q_NFNFI_FATURADA: TStringField;
    Q_NFFAT_ID: TIntegerField;
    Q_NFNFI_MARCAREEN: TStringField;
    Q_NFNFI_STATUS: TStringField;
    Q_NFNFI_MARCAIMP: TStringField;
    Q_NFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_INFUVenDesc: TStringField;
    DBLC_INF_PROD: TwwDBLookupCombo;
    pnlBusca: TPanel;
    RadioGroup1: TRadioGroup;
    edtBusca: TEdit;
    gClienteNBF: TwwDBGrid;
    qrClienteNBF: TADOQuery;
    qrClienteFinal: TADOQuery;
    dsClienteNBF: TDataSource;
    gClienteFinal: TwwDBGrid;
    qrClienteNBFCLIN_ID: TAutoIncField;
    qrClienteNBFCLIN_PESSOA: TStringField;
    qrClienteNBFCLIN_RAZA: TStringField;
    qrClienteNBFCLIN_NOME: TStringField;
    qrClienteNBFCLIN_CGCCPF: TStringField;
    qrClienteNBFCLIN_INSCRG: TStringField;
    qrClienteNBFCLIN_ENDERECO: TStringField;
    qrClienteNBFCLIN_ENDERECO_COMPL: TStringField;
    qrClienteNBFCLIN_ENDERECO_BAIRRO: TStringField;
    qrClienteNBFCLIN_MUNICIPIO: TStringField;
    qrClienteNBFUF_SIGLA: TStringField;
    qrClienteNBFCLIN_CEP: TStringField;
    qrClienteNBFCLIN_TEL1: TStringField;
    qrClienteNBFCLIN_TEL2: TStringField;
    qrClienteNBFCLIN_FAX: TStringField;
    qrClienteNBFCLIN_EMAIL: TStringField;
    qrClienteNBFCON_CODI: TStringField;
    qrClienteNBFCLIN_CONTRATO: TStringField;
    qrClienteNBFCLIN_UTIL_COD: TStringField;
    qrClienteNBFMUN_ID: TIntegerField;
    qrClienteNBFCLIN_WEB: TStringField;
    qrClienteNBFCLIN_ENDC: TStringField;
    qrClienteNBFCLIN_END_COMPLC: TStringField;
    qrClienteNBFCLIN_END_BAIRC: TStringField;
    qrClienteNBFCLIN_MUNICC: TStringField;
    qrClienteNBFUF_SIGLAC: TStringField;
    qrClienteNBFCLIN_CEPC: TStringField;
    qrClienteNBFCLIN_TELC: TStringField;
    qrClienteNBFCLIN_FAXC: TStringField;
    qrClienteNBFCLIN_EMAILC: TStringField;
    qrClienteNBFMUN_IDC: TIntegerField;
    qrClienteNBFCLIN_TIPOSALDO: TStringField;
    qrClienteNBFCLIN_VLRSALDO: TFloatField;
    qrClienteNBFCLIN_TPMERC: TStringField;
    qrClienteNBFCLIN_LOTE: TStringField;
    qrClienteNBFCLIN_ISS: TFloatField;
    qrClienteNBFCLIN_DESCONTO: TFloatField;
    qrClienteNBFRemanejaSN: TStringField;
    dsClienteFinal: TDataSource;
    qrClienteFinalCLIF_ID: TAutoIncField;
    qrClienteFinalCLIF_PESSOA: TStringField;
    qrClienteFinalCLIF_RAZA: TStringField;
    qrClienteFinalCLIF_NOME: TStringField;
    qrClienteFinalCLIF_CGCCPF: TStringField;
    qrClienteFinalCLIF_INSCRG: TStringField;
    qrClienteFinalCLIF_ENDERECO: TStringField;
    qrClienteFinalCLIF_ENDERECO_COMPL: TStringField;
    qrClienteFinalCLIF_ENDERECO_BAIRRO: TStringField;
    qrClienteFinalCLIF_MUNICIPIO: TStringField;
    qrClienteFinalCLIF_MUNICIPIO2: TStringField;
    qrClienteFinalUF_SIGLA: TStringField;
    qrClienteFinalCLIF_CEP: TStringField;
    qrClienteFinalCLIF_TEL1: TStringField;
    qrClienteFinalCLIF_TEL2: TStringField;
    qrClienteFinalCLIF_FAX: TStringField;
    qrClienteFinalCLIF_EMAIL: TStringField;
    qrClienteFinalCLIF_CONTATO: TStringField;
    qrClienteFinalMUN_ID: TIntegerField;
    qrClienteFinalCLIF_CARGAPALLET: TStringField;
    qrClienteFinalCLIE_ENDERECO: TStringField;
    qrClienteFinalCLIE_ENDERECO_COMPL: TStringField;
    qrClienteFinalCLIE_ENDERECO_BAIRRO: TStringField;
    qrClienteFinalCLIE_MUNICIPIO: TStringField;
    qrClienteFinalCLIE_MUN_ID: TIntegerField;
    qrClienteFinalCLIE_UF_SIGLA: TStringField;
    qrClienteFinalCLIE_CEP: TStringField;
    qrClienteFinalCLI_HORARIO: TStringField;
    qrClienteFinalCLI_VL_DESCARGA: TFloatField;
    qrClienteFinalCLI_OBS: TStringField;
    qrClienteFinalCLI_UNCOBRACA: TStringField;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    DBText3: TDBText;
    SpeedButton5: TSpeedButton;
    Q_INFNCM: TStringField;
    btn1: TButton;
    Q_INFINF_NFE: TIntegerField;
    Q_INFINF_QTDERETORNADASALDO: TFloatField;
    Q_INFINF_CST: TStringField;
    Q_INFUNIDADE: TStringField;
    Q_NFDIRECAO_CFOP: TIntegerField;
    wwDBComboBox1: TwwDBComboBox;
    Label1: TLabel;
    Q_NFOBS_DANFE: TMemoField;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBComboBox4Enter(Sender: TObject);
    procedure wwDBComboBox4Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBLookupCombo10Enter(Sender: TObject);
    procedure wwDBLookupCombo10Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure Q_NFNewRecord(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Q_NFAfterPost(DataSet: TDataSet);
    procedure Q_NFAfterDelete(DataSet: TDataSet);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure Q_INFNewRecord(DataSet: TDataSet);
    procedure Q_INFAfterPost(DataSet: TDataSet);
    procedure Q_INFAfterDelete(DataSet: TDataSet);
    procedure Q_INFBeforePost(DataSet: TDataSet);
    procedure DBG_INFIColExit(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure DBE_NFI_PLACEnter(Sender: TObject);
    procedure DBE_NFI_PLACExit(Sender: TObject);
    procedure DBLC_NFI_UFVEEnter(Sender: TObject);
    procedure DBLC_NFI_UFVEExit(Sender: TObject);
    procedure DBE_NFI_DSAIEnter(Sender: TObject);
    procedure DBE_NFI_DSAIExit(Sender: TObject);
    procedure DBE_NFI_MARCEnter(Sender: TObject);
    procedure DBE_NFI_MARCExit(Sender: TObject);
    procedure DBE_NFI_QTDEEnter(Sender: TObject);
    procedure DBE_NFI_QTDEExit(Sender: TObject);
    procedure DBE_NFI_ESPEEnter(Sender: TObject);
    procedure DBE_NFI_ESPEExit(Sender: TObject);
    procedure DBCB_NFI_TFREEnter(Sender: TObject);
    procedure DBCB_NFI_TFREExit(Sender: TObject);
    procedure DBE_NFI_PBRUEnter(Sender: TObject);
    procedure DBE_NFI_PBRUExit(Sender: TObject);
    procedure DBE_NFI_PLIQEnter(Sender: TObject);
    procedure DBE_NFI_PLIQExit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_INFBeforeDelete(DataSet: TDataSet);
    procedure edtBuscaChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure gClienteNBFDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure gClienteFinalDblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Q_NFBeforePost(DataSet: TDataSet);
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNFGenerica: TFNFGenerica;

implementation
  uses UMENU, USenha,u_fUNCOES,UFConsultaNFGen, UfrmBuscaTrans,
  ufrmSelecionaItensNFEntrada ;
{$R *.DFM}

procedure TFNFGenerica.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFNFGenerica.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;

   If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then  begin
         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit6.text + ''''  ) ;
         Q_CEP.Open ;

         Q_NFNFI_DEST_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         ////Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[])  ;


         IF   Q_CEP.fieldbyname('CEP_CIDADE').asstring <> '' then begin
               Q_MUNI.close ;
               Q_MUNI.Sql.Clear ;
               Q_MUNI.Sql.Add(' Select * from MUNICIPIO ') ;
               Q_MUNI.Sql.Add(' where MUN_NOME = ' + '''' + Q_CEP.fieldbyname('CEP_CIDADE').asstring + ''''  ) ;
               Q_MUNI.Open ;
         end  ;


         IF (Q_MUNIMUN_ID.asstring <> '')   then begin
             Q_NFMUN_ID.asinteger  := Q_MUNIMUN_ID.asinteger ;
             Q_NFNFI_DEST_UF_SIGLA.asstring := Q_MUNIUF_SIGLA.asstring ;

         end else begin
             Q_NFMUN_ID.asinteger  := 0 ;
             Q_NFNFI_DEST_UF_SIGLA.asstring := '0' ;
            
         end ;


         Q_NFNFI_DEST_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
         wwdbedit12.setfocus ;
     end ;

end;

procedure TFNFGenerica.wwDBEdit4Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit4Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.wwDBEdit5Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit5Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.wwDBComboBox4Enter(Sender: TObject);
begin
   (Sender as TwwDBComboBOX).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBComboBox4Exit(Sender: TObject);
begin
   (Sender as TwwDBComboBOX).Color := Clwindow ;
     Q_NFNFI_DEST_CGC.EditMask := '' ;
   if wwDBComboBox4.text = 'F�sica' then
      Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
   else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';
end;

procedure TFNFGenerica.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;

     Q_NFNFI_DEST_CGC.EditMask := '' ;
   if wwDBComboBox4.text = 'F�sica' then
      Q_NFNFI_DEST_CGC.EditMask := '!999.999.999-99;0;_'
   else Q_NFNFI_DEST_CGC.EditMask := '!99.999.999/9999-99;0;_';
end;

procedure TFNFGenerica.wwDBEdit1Exit(Sender: TObject);
Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;
begin

  IF (Q_NF.state = dsINSERT) or (Q_NF.state = dsedit)  then begin


      if ((copy(wwDBEdit1.text,1,1)) = ' ' ) then begin
           MessageDlg('Preencha todos os d�gitos!',mtWarning,[mbok],0);
           wwDBEdit1.SetFocus;
           abort ;
      end ;

      if wwDBComboBox4.text = 'Jur�dica' then
         begin
            A:= StrtoInt(copy(wwDBEdit1.Text,1,1));
            B:= StrtoInt(copy(wwDBEdit1.Text,2,1));
            C:= StrtoInt(copy(wwDBEdit1.Text,3,1));
            D:= StrtoInt(copy(wwDBEdit1.Text,4,1));
            E:= StrtoInt(copy(wwDBEdit1.Text,5,1));
            F:= StrtoInt(copy(wwDBEdit1.Text,6,1));
            G:= StrtoInt(copy(wwDBEdit1.Text,7,1));
            H:= StrtoInt(copy(wwDBEdit1.Text,8,1));
            I:= StrtoInt(copy(wwDBEdit1.Text,9,1));
            J:= StrtoInt(copy(wwDBEdit1.Text,10,1));
            K:= StrtoInt(copy(wwDBEdit1.Text,11,1));
            L:= StrtoInt(copy(wwDBEdit1.Text,12,1));
            X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
            M:= 11-((X)-(11*((X div 11))));
            if M > 9 then
               M:=0;
               Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
               N:= 11-((Y)-(11*((Y div 11))));
            if N > 9 then
               N:=0;
               DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
               if DC <> copy(wwDBEdit1.Text,13,2) then

                  Begin
                     MessageDlg('Digito de controle n�o confere.', mtInformation,
                     [mbOk], 0);
                     wwDBEdit1.Clear;
                     wwDBEdit1.Setfocus;
                   end
         end
      else
         begin
            A:= StrtoInt(copy(wwDBEdit1.Text,1,1));
            B:= StrtoInt(copy(wwDBEdit1.Text,2,1));
            C:= StrtoInt(copy(wwDBEdit1.Text,3,1));
            D:= StrtoInt(copy(wwDBEdit1.Text,4,1));
            E:= StrtoInt(copy(wwDBEdit1.Text,5,1));
            F:= StrtoInt(copy(wwDBEdit1.Text,6,1));
            G:= StrtoInt(copy(wwDBEdit1.Text,7,1));
            H:= StrtoInt(copy(wwDBEdit1.Text,8,1));
            I:= StrtoInt(copy(wwDBEdit1.Text,9,1));
            X:= (2*I+3*H+4*G+5*F+6*E+7*D+8*C+9*B+10*A)*10;
            M:= X-((11*((X div 11))));
            if M > 9 then
               M:=0;
            Y:= (2*M+3*I+4*H+5*G+6*F+7*E+8*D+9*C+10*B+11*A)*10 ;
            N:= Y-((11*((Y div 11))));
            if N > 9 then
               N:=0;
            DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
            if DC <> copy(wwDBEdit1.Text,10,2) then
               Begin
                  MessageDlg('Digito de controle n�o confere.', mtInformation,
                  [mbOk], 0);
                  wwDBEdit1.Clear;
                  wwDBEdit1.Setfocus;
               end
        end          ;
  end ; 

   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBLookupCombo3Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBLookupCombo3Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow  ;
end;

procedure TFNFGenerica.wwDBEdit6Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit7Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit7Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.wwDBEdit12Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit12Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBEdit8Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit8Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBLookupCombo10Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBLookupCombo10Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBLookupCombo1Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBEdit9Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit9Exit(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := Clwindow ;
end;

procedure TFNFGenerica.wwDBEdit10Enter(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit10Exit(Sender: TObject);
begin

    (Sender as TwwDBedit).Color := Clwindow ;

    

end;

procedure TFNFGenerica.FormCreate(Sender: TObject);
begin




   Q_MUNI.open ;
   Q_UF.open ;
   Q_FAT.open ;

   IF PESQUISANFger <> ''  then begin
    Q_NF.SQL.Clear;
    Q_NF.SQL.Add(' select * FROM NF ') ;
    Q_NF.SQL.ADD(' WHERE TDOC_ID = ' + inttostr(17));
    Q_NF.SQL.ADD(' and   NFI_CODI = ' + PESQUISANFger ) ;
    Q_NF.open;
   end else  Q_NF.open ;
   Q_PAR.open ;
   Q_INF.open ;
   Q_UNIDVEND.open ;
   TabbedNotebook1.pageindex := 0 ;


end;

procedure TFNFGenerica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Q_MUNI.close ;
     Q_UF.close  ;
     Q_FAT.close  ;
     Q_NF.close  ;
     Q_PAR.close ;
     Q_INF.close ;
     Q_UNIDVEND.close  ;
     PESQUISANFger := '' ; 
     action := cafree;
end;

procedure TFNFGenerica.TabbedNotebook1Click(Sender: TObject);
var
     STRNF : string ;
     pliq, pbru : Real;
begin
   If (Q_NF.state = dsedit ) or (Q_NF.state = dsinsert )  then
      Q_NF.post ;

  If (Q_INF.state = dsedit ) or (Q_INF.state = dsinsert )  then
      Q_INF.post ;


  If (TabbedNotebook1.pageindex = 0) or (TabbedNotebook1.pageindex = 2) then
      DBNavigator1.datasource := DS_NF;

  If (TabbedNotebook1.pageindex = 1) then
      DBNavigator1.datasource := DS_INF;


  If (TabbedNotebook1.pageindex = 2) then  begin

      If (Q_FATCFA_TICM.asstring = '0') then Label21.caption := 'Tributado Integralmente' ;
      If (Q_FATCFA_TICM.asstring = '1') then Label21.caption := 'Tributado e ICMS por Substitui��o Tribut�ria' ;
      If (Q_FATCFA_TICM.asstring = '2') then Label21.caption := 'Com Redu��o de Base de C�lculo' ;
      If (Q_FATCFA_TICM.asstring = '3') then Label21.caption := 'Isento ou N�o Tributado e ICMS por Substitui��o Tribut�ria' ;
      If (Q_FATCFA_TICM.asstring = '4') then Label21.caption := 'Isento ou N�o Tributado' ;
      If (Q_FATCFA_TICM.asstring = '5') then Label21.caption := 'Com Suspens�o ou Diferimento' ;
      If (Q_FATCFA_TICM.asstring = '6') then Label21.caption := 'ICMS Cobrado Anteriormente por Substitui��o Tribut�ria' ;
      If (Q_FATCFA_TICM.asstring = '7') then Label21.caption := 'Com Redu��o de Base de C�lculo e ICMS por Substitui��o Tribut�ria' ;
      If (Q_FATCFA_TICM.asstring = '9') then Label21.caption := 'Outros' ;

      If (Q_NFNFI_CODI.asstring <> '') and
         (Q_NFCFA_ID.asstring <> '')   then begin
           pliq := Q_NFNFI_PLIQ.AsFloat;
           pbru := Q_NFNFI_PBRU.AsFloat;
                  try
                  Begin
                     STP_NF.ParamByName('@NF').Value        :=   Q_NFNFI_CODI.asinteger ;
                     STP_NF.ParamByName('@CFO').Value       :=   Q_NFCFA_ID.asinteger ;
                     STP_NF.ParamByName('@CLIN_ID').Value   :=   0 ;
                     STP_NF.ParamByName('@GERATPROD').Value := 'S' ;
                     STP_NF.Execproc;
                  End
                except
                   begin
                     MessageDlg('Gera��o Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
                     abort  ;
                   end;
                end;
                 STRNF := Q_NFNFI_CODI.asstring    ;
                 Q_NF.close ;
                 Q_NF.open ;
                 Q_NF.locate('NFI_CODI',STRNF,[]) ;
                 Q_NF.Edit;
                 Q_NFNFI_PLIQ.Value := pliq;
                 Q_NFNFI_PBRU.Value := pbru;
                 Q_NF.Post;
      end ;
  end  ;




end;

procedure TFNFGenerica.Q_NFNewRecord(DataSet: TDataSet);
var
  NumeroPROV : integer ;
begin
  Q_NFTDOC_ID.asinteger := 17 ;
  Q_NFNFI_CLONE.asstring := 'N' ;
  Q_NFNFI_QTDEPALLET.asinteger := 0 ;
  Q_NFNFI_COBRAR.asstring := 'N' ;
  Q_NFNFI_QTDEUV.asinteger := 0 ;
  Q_NFNFI_EMIT_CLI.asstring := Q_PARCLIN_ID.asstring  ;

  Q_NFNFI_DEMI.asdatetime := now ;
  Q_NFNFI_VFRE.asfloat :=  0.00;
  Q_NFNFI_VSEG.asfloat :=  0.00;
  Q_NFNFI_BIPI.asfloat :=  0.00;
  Q_NFNFI_VIPI.asfloat :=  0.00;
  Q_NFNFI_BICM.asfloat :=  0.00;
  Q_NFNFI_VICM.asfloat :=  0.00;
  Q_NFNFI_VMER.asfloat :=  0.00;
  Q_NFNFI_TOTA.asfloat :=  0.00;
  Q_NFNFI_PLIQ.asfloat :=  0.00;
  Q_NFNFI_PBRU.asfloat :=  0.00;
  Q_NFNFI_VDES.asfloat :=  0.00;
  Q_NFNFI_RETORNADA.asstring := 'N' ;
  Q_NFNFI_REDESPACHO.asstring:= 'N' ;
  Q_NFNFI_STATUS.asstring    := 'A' ;



  Q_AUX.close ;
  Q_AUX.Sql.Clear ;
  Q_AUX.Sql.Add('SELECT ULT_NFPROV from PARAMETRO ') ;
  Q_AUX.Open ;

  NumeroPROV := (Q_AUX.fieldbyname('ULT_NFPROV').asinteger + 1) ;

  Q_AUX.close ;
  Q_AUX.Sql.Clear ;
  Q_AUX.Sql.Add('UPDATE PARAMETRO set ULT_NFPROV = ' + inttostr(NumeroPROV)) ;
  Q_AUX.execsql ;


  Q_NFNFI_NUMERO.asstring := inttostr(NumeroPROV) + '-P'  ;



end;

procedure TFNFGenerica.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    If (Q_NF.state =  dsinsert )  then
         wwDBEdit4.setfocus ;
end;

procedure TFNFGenerica.Q_NFAfterPost(DataSet: TDataSet);
var
   STRNF : string ; {121212}
begin
   STRNF := Q_NFNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF.close ;
   Q_NF.Open ;

   if STRNF = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(NFI_CODI) as Numero from NF ' ) ;
     Q_AUX.Sql.Add( ' where TDOC_ID =  ' + inttostr(17) ) ;
     Q_AUX.open ;
     STRNF := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_NF.locate('NFI_CODI',STRNF,[])    ;
end;

procedure TFNFGenerica.Q_NFAfterDelete(DataSet: TDataSet);
var
  STRNF : string ; {121212}
begin
   STRNF := Q_NFNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF.close ;
   Q_NF.Open ;

   If (StrNF <> '') then begin
       Q_NF.close ;
       Q_NF.Open ;
       Q_NF.locate('NFI_CODI',StrNF,[]);
   end ;
end;


procedure TFNFGenerica.wwDBEdit13Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit13Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.Q_INFNewRecord(DataSet: TDataSet);
begin
    Q_INFNFI_CODI.asstring := Q_NFNFI_CODI.asstring ;
    Q_INFINF_QTDERETORNADA.asinteger := 0 ;


    IF Q_INF.recordcount = 0 then
        Q_INFINF_ITEM.asinteger :=  (Q_INFINF_ITEM.asinteger + 1)
    else
       Q_INFINF_ITEM.asinteger :=  (Q_INF.recordcount + 1);

end;

procedure TFNFGenerica.Q_INFAfterPost(DataSet: TDataSet);
var
StrITEM : string ;
begin
   StrITEM := Q_INFINF_ITEM.asstring   ;
   try

           FSenha.Dtb_BaseDados.ApplyUpdates([Q_INF])

   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If (StrITEM <> '') then begin
       Q_INF.close ;
       Q_INF.Open ;
       Q_INF.locate('INF_ITEM',StrITEM,[]);
   end ;


   if Q_INFINF_ITEM.asINTEGER > 1 THEN BEGIN
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add('UPDATE nf set NFI_QTDEUV = (NFI_QTDEUV + ' + Funcoes.Converte(floattostr(Q_INFINF_QTDE.ASFLOAT) ,',','.') + ')');
      Q_AUX.Sql.Add('WHERE nfi_codi = ' + Q_INFNFI_CODI.ASSTRING ) ;
      Q_AUX.execsql ;
   end else begin
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add('UPDATE nf set NFI_QTDEUV =  ' + Funcoes.Converte(floattostr(Q_INFINF_QTDE.ASFLOAT) ,',','.') );
      Q_AUX.Sql.Add('WHERE nfi_codi = ' + Q_INFNFI_CODI.ASSTRING ) ;
      Q_AUX.execsql ;

   end ;


end;

procedure TFNFGenerica.Q_INFAfterDelete(DataSet: TDataSet);
begin
       try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_INF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;


    

end;

procedure TFNFGenerica.Q_INFBeforePost(DataSet: TDataSet);
begin

    Q_INFINF_TOTA.AsFloat :=  (Q_INFINF_QTDE.AsFloat *  Q_INFINF_PUNI.AsFloat) ;

    If (Q_INFPRO_COD.asstring = '') then begin
        MessageDlg('C�digo � campo de Preechimento obrigat�rio !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFPRO_COD;
        abort ;
    end ;

    If (Q_INFNCM.asstring = '') then begin
        MessageDlg('NCM � campo de Preechimento obrigat�rio !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFNCM;
        abort ;
    end ;


    If (Q_INFPRO_DESC.asstring = '') then begin
        MessageDlg('Descri��o � campo de Preechimento obrigat�rio !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFPRO_DESC;
        abort ;
    end ;

    If (Q_INFUVEN_ID.asstring = '') then begin
        MessageDlg('Unidade � campo de Preechimento obrigat�rio !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFUVEN_ID;
        abort ;
    end ;


    IF (Q_INFINF_QTDE.asfloat = 0) or
       (Q_INFINF_QTDE.asstring  ='')  then begin
       MessageDlg('Quantidade deve ser superior a zero !',mtWarning,[mbok],0);
       TabbedNotebook1.pageindex := 1   ;
       DBG_INFI.SelectedField := Q_INFINF_QTDE;
       abort ;
    end ;


    If (Q_INFINF_AIPI.asstring = '') then begin
        MessageDlg('% Ipi � campo de Preechimento obrigat�rio !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFINF_AIPI;
        abort ;
    end ;

    If (Q_INFINF_AICM.asstring = '') then begin
        MessageDlg('% ICM � campo de Preechimento obrigat�rio !',mtWarning,[mbok],0);
        TabbedNotebook1.pageindex := 1   ;
        DBG_INFI.SelectedField := Q_INFINF_AICM;
        abort ;
    end ;


    IF (Q_INFINF_PUNI.asfloat <= 0) or (Q_INFINF_PUNI.asstring = '')  then begin
       MessageDlg('Pre�o unit�rio deve ser superior a zero !',mtWarning,[mbok],0);
       TabbedNotebook1.pageindex := 1   ;
       DBG_INFI.SelectedField := Q_INFINF_PUNI;
       abort ;
    end ;

    IF (Q_INFINF_TOTA.asfloat <= 0) or (Q_INFINF_TOTA.asstring = '')  then begin
       MessageDlg('Valor Total deve ser superior a zero !',mtWarning,[mbok],0);
       TabbedNotebook1.pageindex := 1   ;
       DBG_INFI.SelectedField := Q_INFINF_PUNI;
       abort ;
    end ;



end;

procedure TFNFGenerica.DBG_INFIColExit(Sender: TObject);
begin
   if (Q_INF.State = dsEdit) or
       (Q_INF.State = dsInsert) then
       begin


         If (DBG_INFI.SelectedField = Q_INFINF_QTDE) or
            (DBG_INFI.SelectedField = Q_INFINF_PUNI) or
            (DBG_INFI.SelectedField = Q_INFINF_AICM) or
            (DBG_INFI.SelectedField = Q_INFINF_AIPI) Then begin
            Q_INFINF_TOTA.AsFloat :=
            Q_INFINF_QTDE.AsFloat *
            Q_INFINF_PUNI.AsFloat ;

            Q_INFINF_VIPI.AsFloat :=
            Q_INFINF_TOTA.AsFloat *
            (Q_INFINF_AIPI.AsFloat/100) ;

            Q_INFINF_VICM.AsFloat :=
            Q_INFINF_TOTA.AsFloat *
            (Q_INFINF_AICM.AsFloat/100) ;

         end;

     End;

end;

procedure TFNFGenerica.wwDBEdit14Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.wwDBEdit14Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBE_NFI_PLACEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_PLACExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBLC_NFI_UFVEEnter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFNFGenerica.DBLC_NFI_UFVEExit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFNFGenerica.DBE_NFI_DSAIEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_DSAIExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBE_NFI_MARCEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_MARCExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBE_NFI_QTDEEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_QTDEExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBE_NFI_ESPEEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_ESPEExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBCB_NFI_TFREEnter(Sender: TObject);
begin
  (Sender as TwwDBComboBox).Color := Claqua ;
end;

procedure TFNFGenerica.DBCB_NFI_TFREExit(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Clwindow ;
end;

procedure TFNFGenerica.DBE_NFI_PBRUEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_PBRUExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFNFGenerica.DBE_NFI_PLIQEnter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBE_NFI_PLIQExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBEdit9Enter(Sender: TObject);
begin
          (Sender as TdBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit9Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.DBEdit14Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit14Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBEdit10Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit10Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.DBEdit11Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit11Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.DBEdit5Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit5Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.DBEdit1Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit1Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.DBEdit2Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit2Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow ;
end;

procedure TFNFGenerica.DBEdit3Enter(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Claqua ;
end;

procedure TFNFGenerica.DBEdit3Exit(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Clwindow  ;
end;

procedure TFNFGenerica.SpeedButton4Click(Sender: TObject);
begin
       Q_NF55.open ;
       wwSearchDialog1.execute ;
       Q_NF.locate('NFI_CODI',Q_NF55NFI_CODI.asstring,[]);
       Q_NF55.close ;
end;

procedure TFNFGenerica.Q_INFBeforeDelete(DataSet: TDataSet);
begin
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add('select  NFI_QTDEUV from nf');
      Q_AUX.Sql.Add('WHERE nfi_codi = ' + Q_INFNFI_CODI.ASSTRING ) ;
      Q_AUX.open ;

     if Q_AUX.fieldbyname('NFI_QTDEUV').asINTEGER > 0 THEN BEGIN
        Q_AUX.close ;
        Q_AUX.Sql.Clear ;
        Q_AUX.Sql.Add('UPDATE nf set NFI_QTDEUV = (NFI_QTDEUV - ' + Funcoes.Converte(floattostr(Q_INFINF_QTDE.ASFLOAT) ,',','.') + ')');
        Q_AUX.Sql.Add('WHERE nfi_codi = ' + Q_INFNFI_CODI.ASSTRING ) ;
        Q_AUX.execsql ;
     end;


end;

procedure TFNFGenerica.edtBuscaChange(Sender: TObject);
var texto : string;
begin
  texto := '%'+edtBusca.Text + '%';
  if RadioGroup1.ItemIndex = 0 then begin
      qrClienteNBF.Close;
      qrClienteNBF.Parameters[0].Value := Texto;
      qrClienteNBF.Open;
  end else begin
      qrClienteFinal.close;
      qrClienteFinal.Parameters[0].Value := Texto;
      qrClienteFinal.Open;
  end;
end;

procedure TFNFGenerica.RadioGroup1Click(Sender: TObject);
begin
  {if RadioGroup1.ItemIndex = 0 then begin
        gClienteNBF.Visible := True;
        gClienteFinal.Visible:= False;
  end else begin
        gClienteFinal.Visible := True;
        gClienteNBF.Visible := False;
  end;  }
end;

procedure TFNFGenerica.gClienteNBFDblClick(Sender: TObject);
begin
    Q_NFNFI_DEST_NOME.Value := qrClienteNBFCLIN_NOME.Value;
    Q_NFNFI_DEST_RAZA.Value := qrClienteNBFCLIN_RAZA.Value;
    Q_NFNFI_DEST_PESS.Value := qrClienteNBFCLIN_PESSOA.Value;
    Q_NFNFI_DEST_CGC.Value := qrClienteNBFCLIN_CGCCPF.Value ;
    Q_NFNFI_DEST_INSCRG.Value := qrClienteNBFCLIN_INSCRG.Value;
    Q_NFNFI_DEST_CEP.Value := qrClienteNBFCLIN_CEP.Value;
    Q_NFNFI_DEST_ENDERECO.Value := qrClienteNBFCLIN_ENDERECO.Value;
    Q_NFNFI_DEST_BAIRRO.Value := qrClienteNBFCLIN_END_BAIRC.Value;
    Q_NFNFI_DEST_UF_SIGLA.Value := qrClienteNBFUF_SIGLA.Value;
    Q_NFNFI_DEST_TEL.Value := qrClienteNBFCLIN_TEL1.Value;
    Q_NFNFI_DEST_FAX.Value := qrClienteNBFCLIN_FAX.Value;
    Q_NFNFI_DEST_COMPL.Value := qrClienteNBFCLIN_ENDERECO_COMPL.Value;
    Q_NFMUN_ID.Value := qrClienteNBFMUN_ID.Value;
    pnlBusca.Visible := False;
    
end;

procedure TFNFGenerica.SpeedButton2Click(Sender: TObject);
begin

  pnlBusca.top := 80;
  pnlBusca.Left := 8;
  pnlBusca.Visible := True;
  gClienteFinal.Visible := True;
  gClienteNBF.Visible := False;
end;

procedure TFNFGenerica.Button1Click(Sender: TObject);
begin
  pnlBusca.Visible := False;
end;

procedure TFNFGenerica.gClienteFinalDblClick(Sender: TObject);
begin

    Q_NF.Edit;
    Q_NFNFI_DEST_NOME.Value := qrClienteFinalCLIF_NOME.Value;
    Q_NFNFI_DEST_RAZA.Value := qrClienteFinalCLIf_RAZA.Value;
    Q_NFNFI_DEST_PESS.Value := qrClienteFinalCLIf_PESSOA.Value;
    Q_NFNFI_DEST_CGC.Value := qrClienteFinalCLIf_CGCCPF.Value ;
    Q_NFNFI_DEST_INSCRG.Value := qrClienteFinalCLIf_INSCRG.Value;
    Q_NFNFI_DEST_CEP.Value := qrClienteFinalCLIf_CEP.Value;
    Q_NFNFI_DEST_ENDERECO.Value := qrClienteFinalCLIf_ENDERECO.Value;
    Q_NFNFI_DEST_BAIRRO.Value := qrClienteFinalCLIF_ENDERECO_BAIRRO.Value;
    Q_NFNFI_DEST_UF_SIGLA.Value := qrClienteFinalUF_SIGLA.Value;
    Q_NFNFI_DEST_TEL.Value := qrClienteFinalCLIf_TEL1.Value;
    Q_NFNFI_DEST_FAX.Value := qrClienteFinalCLIf_FAX.Value;
    Q_NFNFI_DEST_COMPL.Value := qrClienteFinalCLIf_ENDERECO_COMPL.Value;
    Q_NFNFI_DEST_CLI.Value := qrClienteFinalCLIF_ID.AsInteger;
    Q_NFMUN_ID.Value := qrClienteFinalMUN_ID.Value;
    pnlBusca.Visible := False;

end;

procedure TFNFGenerica.SpeedButton5Click(Sender: TObject);
begin
//busca a transportadora

   frmBuscaTrans := TfrmBuscaTrans.Create(Self);
   frmBuscaTrans.ShowModal;
end;

procedure TFNFGenerica.Q_NFBeforePost(DataSet: TDataSet);
begin
  if q_nfNFI_TFRE.AsString = '' then begin
      ShowMessage('Informe o tipo de frete');
      Abort;
  end;
end;

procedure TFNFGenerica.btn1Click(Sender: TObject);
begin
   frmSelecionaItensNFEntrada := tfrmSelecionaItensNFEntrada.Create(Self);
   frmSelecionaItensNFEntrada.ShowModal;
end;

end.



unit UTransp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, DBCtrls, Wwdotdot, Wwdbcomb, wwdblook,
  StdCtrls, Mask, wwdbedit, ComCtrls, Tabnotbk, Buttons, ExtCtrls, Db,
  DBTables, Wwdatsrc, Wwquery, wwDialog, wwidlg;

type
  TFTransp = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    DBNavigator1: TDBNavigator;
    TabbedNotebook1: TTabbedNotebook;
    DBText4: TDBText;
    Label15: TLabel;
    Q_TRANS: TwwQuery;
    DS_TRANS: TwwDataSource;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRANSTRANS_RAZA: TStringField;
    Q_TRANSTRANS_CNPJ: TStringField;
    Q_TRANSTRANS_INSCRICAO: TStringField;
    Q_TRANSTRANS_ENDERECO: TStringField;
    Q_TRANSTRANS_MUNICIPIO: TStringField;
    Q_TRANSTRANS_CEP: TStringField;
    Q_TRANSTRANS_TEL: TStringField;
    Q_TRANSTRANS_FAX: TStringField;
    Q_TRANSTRANS_EMAIL: TStringField;
    Q_TRANSTRANS_CONTATO: TStringField;
    Q_TRMOT: TwwQuery;
    DS_TRMOT: TwwDataSource;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTMOT_ENDERECO: TStringField;
    Q_TRMOTMOT_MUNICIPIO: TStringField;
    Q_TRMOTMOT_CEP: TStringField;
    Q_TRMOTUF_SIGLA: TStringField;
    Q_TRMOTMOT_CPF: TStringField;
    Q_TRMOTMOT_RG: TStringField;
    Q_TRMOTMOT_DT_NASC: TDateTimeField;
    Q_TRMOTMOT_RG_ORGAO: TStringField;
    Q_TRMOTMOT_CNH: TStringField;
    Q_TRMOTMOT_CNH_CATEG: TStringField;
    Q_TRMOTMOT_PAI: TStringField;
    Q_TRMOTMOT_MAE: TStringField;
    Q_TRMOTMOT_TEL_PESS: TStringField;
    Q_TRMOTMOT_TEL_COM: TStringField;
    Q_TRMOTMOT_PAMCARD: TStringField;
    Q_TRMOTMOT_PAMCARD_VIG: TDateTimeField;
    Q_TRMOTMOT_CNH_VALID: TDateTimeField;
    Q_UF: TwwQuery;
    Q_UFUF_SIGLA: TStringField;
    Q_UFUF_NOME: TStringField;
    Q_UFUF_ALIQUOTA: TFloatField;
    Q_UF2: TwwQuery;
    Q_UF2UF_SIGLA: TStringField;
    Q_UF2UF_NOME: TStringField;
    Q_UF2UF_ALIQUOTA: TFloatField;
    Q_TRMOTMOT_ENDERECO_COMPL: TStringField;
    Q_TRMOTMOT_ENDERECO_BAIRRO: TStringField;
    Q_CEP: TwwQuery;
    Q_TRANSTRANS_ENDERECO_COMPL: TStringField;
    Q_TRANSTRANS_ENDERECO_BAIRRO: TStringField;
    TabbedNotebook2: TTabbedNotebook;
    Panel6: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    Panel2: TPanel;
    Panel5: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    Label35: TLabel;
    DBText1: TDBText;
    Panel4: TPanel;
    Label43: TLabel;
    DBText2: TDBText;
    GroupBox3: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label34: TLabel;
    Label13: TLabel;
    DBCB_CLI_PESS: TwwDBComboBox;
    wwDBEdit6: TwwDBEdit;
    Label36: TLabel;
    DBText3: TDBText;
    GroupBox1: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit25: TwwDBEdit;
    Label40: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit26: TwwDBEdit;
    wwDBEdit27: TwwDBEdit;
    wwDBEdit28: TwwDBEdit;
    wwDBEdit29: TwwDBEdit;
    wwDBEdit30: TwwDBEdit;
    GroupBox5: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    wwDBEdit31: TwwDBEdit;
    wwDBEdit32: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit33: TwwDBEdit;
    wwDBEdit34: TwwDBEdit;
    wwDBEdit35: TwwDBEdit;
    wwDBEdit36: TwwDBEdit;
    wwDBEdit37: TwwDBEdit;
    Q_TRMOTVEIC_ID: TIntegerField;
    Q_TRMOTMOT_VEIC_PLACA: TStringField;
    Q_TRMOTMOT_VEIC_CIDADE: TStringField;
    Q_TRMOTMOT_VEIC_UF_SIGLA: TStringField;
    Q_TRMOTMOT_VEIC_MARCA: TStringField;
    Q_TRMOTMOT_VEIC_ANO: TStringField;
    Q_TRMOTMOT_VEIC_MODELO: TStringField;
    Q_TRMOTMOT_VEIC_COR: TStringField;
    Q_TRMOTMOT_VEIC_CHASSI: TStringField;
    Q_TRMOTMOT_CARRETA_PLACA: TStringField;
    Q_TRMOTMOT_CARRETA_CIDADE: TStringField;
    Q_TRMOTMOT_CARRETA_UF_SIGLA: TStringField;
    Q_TRMOTMOT_CARRETA_MARCA: TStringField;
    Q_TRMOTMOT_CARRETA_ANO: TStringField;
    Q_TRMOTMOT_CARRETA_MODELO: TStringField;
    Q_TRMOTMOT_CARRETA_COR: TStringField;
    Q_TRMOTMOT_CARRETA_CHASSI: TStringField;
    UPD_TRMOT: TUpdateSQL;
    Q_UF3: TwwQuery;
    Q_UF3UF_SIGLA: TStringField;
    Q_UF3UF_NOME: TStringField;
    Q_UF3UF_ALIQUOTA: TFloatField;
    Q_UF4: TwwQuery;
    Q_UF4UF_SIGLA: TStringField;
    Q_UF4UF_NOME: TStringField;
    Q_UF4UF_ALIQUOTA: TFloatField;
    Label56: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_VEICVEIC_NOME: TStringField;
    Q_TRANSUF_SIGLA: TStringField;
    Q_TRANSTRANS_FLAG: TStringField;
    Panel7: TPanel;
    Q_CG: TwwQuery;
    Q_CGCON_DESC: TStringField;
    Q_CGCON_CODI: TStringField;
    Q_CGCON_ENSA: TStringField;
    Q_CGCON_OPER: TStringField;
    Q_CGCON_FLOA: TFloatField;
    Q_CGCON_FLUX: TStringField;
    Q_TRANSCON_CODI: TStringField;
    Q_MUNI: TwwQuery;
    Q_MUNIMUN_NOME: TStringField;
    Q_MUNIDIPAM: TStringField;
    Q_MUNIMUN_ID: TAutoIncField;
    Q_MUNIUF_SIGLA: TStringField;
    DS_MUNI: TwwDataSource;
    Q_TRANSMUN_ID: TIntegerField;
    wwSearchDialog1: TwwSearchDialog;
    SpeedButton4: TSpeedButton;
    Q_TRANSTRANS_TEL2: TStringField;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label17: TLabel;
    Label59: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    DBE_CLI_CGC: TwwDBEdit;
    DBE_CLI_INSC: TwwDBEdit;
    DBE_CLI_FEND: TwwDBEdit;
    DBE_CLI_FCEP: TwwDBEdit;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    DBE_CLI_FEMA: TwwDBEdit;
    DBE_CLI_FFAX: TwwDBEdit;
    DBE_CLI_FTEL: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit38: TwwDBEdit;
    UPD_TRANS: TUpdateSQL;
    Label60: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Q_TRANSTRANS_PESSOA: TStringField;
    Label61: TLabel;
    wwDBEdit39: TwwDBEdit;
    Q_TRMOTMOT_PAMC_NUM: TStringField;
    Label62: TLabel;
    wwDBEdit40: TwwDBEdit;
    Q_TRMOTMOT_NUMPIS: TStringField;
    GroupBox6: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label66: TLabel;
    DBText10: TDBText;
    wwDBEdit41: TwwDBEdit;
    wwDBEdit42: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    Q_TRMOTMOT_CARRETA_COMPR: TFloatField;
    Q_TRMOTMOT_CARRETA_LARG: TFloatField;
    Q_TRMOTMOT_CARRETA_ALT: TFloatField;
    Q_TRMOTMOT_CARRETA_M3: TFloatField;
    Label63: TLabel;
    wwDBComboBox3: TwwDBComboBox;
    Q_TRANSTRANS_REDES: TStringField;
    Label64: TLabel;
    Q_TRANSPIS: TStringField;
    wwDBEdit44: TwwDBEdit;
    Q_TRMOTMOT_NEXTEL: TStringField;
    Q_TRMOTMOT_EQUIP: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Q_TRMOTRENAVAN: TStringField;
    Label68: TLabel;
    wwDBEdit45: TwwDBEdit;
    Q_TRANSRNTRC: TStringField;
    Label69: TLabel;
    wwDBEdit46: TwwDBEdit;
    Q_TRMOTPADRAO: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label70: TLabel;
    wwDBEdit47: TwwDBEdit;
    Q_TRMOTRNTRC: TStringField;
    Q_TRMOTCIOT: TStringField;
    Label71: TLabel;
    Label65: TLabel;
    Q_TRANSIBGE_ID: TIntegerField;
    Q_TRANSTRANS_CATEGORIA: TStringField;
    Label67: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Q_TRANSBANCO: TStringField;
    Q_TRANSTIPOCONTA: TStringField;
    Q_TRANSAGENCIA: TStringField;
    Q_TRANSCONTACORRENTE: TStringField;
    Label72: TLabel;
    wwDBEdit48: TwwDBEdit;
    wwDBEdit49: TwwDBEdit;
    Label73: TLabel;
    wwDBEdit50: TwwDBEdit;
    Label74: TLabel;
    wwDBEdit51: TwwDBEdit;
    Label75: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_TRANSAfterDelete(DataSet: TDataSet);
    procedure Q_TRANSAfterPost(DataSet: TDataSet);
    procedure Q_TRMOTNewRecord(DataSet: TDataSet);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DBE_CLI_CGCEnter(Sender: TObject);
    procedure DBE_CLI_INSCEnter(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure DBE_CLI_FFAXEnter(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBE_CLI_CGCExit(Sender: TObject);
    procedure DBE_CLI_INSCExit(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure DBE_CLI_FFAXExit(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBEdit15Enter(Sender: TObject);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit19Enter(Sender: TObject);
    procedure wwDBEdit20Enter(Sender: TObject);
    procedure wwDBEdit21Enter(Sender: TObject);
    procedure wwDBEdit17Enter(Sender: TObject);
    procedure wwDBEdit18Enter(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBEdit15Exit(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure wwDBEdit21Exit(Sender: TObject);
    procedure wwDBEdit20Exit(Sender: TObject);
    procedure wwDBEdit19Exit(Sender: TObject);
    procedure wwDBEdit17Exit(Sender: TObject);
    procedure wwDBEdit18Exit(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure Q_TRMOTAfterDelete(DataSet: TDataSet);
    procedure Q_TRMOTAfterPost(DataSet: TDataSet);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBEdit22Enter(Sender: TObject);
    procedure wwDBEdit22Exit(Sender: TObject);
    procedure wwDBEdit23Enter(Sender: TObject);
    procedure wwDBEdit23Exit(Sender: TObject);
    procedure wwDBEdit24Enter(Sender: TObject);
    procedure wwDBEdit25Enter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBEdit26Enter(Sender: TObject);
    procedure wwDBEdit27Enter(Sender: TObject);
    procedure wwDBEdit28Enter(Sender: TObject);
    procedure wwDBEdit29Enter(Sender: TObject);
    procedure wwDBEdit30Enter(Sender: TObject);
    procedure wwDBEdit24Exit(Sender: TObject);
    procedure wwDBEdit31Enter(Sender: TObject);
    procedure wwDBEdit32Enter(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBEdit33Enter(Sender: TObject);
    procedure wwDBEdit34Enter(Sender: TObject);
    procedure wwDBEdit35Enter(Sender: TObject);
    procedure wwDBEdit36Enter(Sender: TObject);
    procedure wwDBEdit37Enter(Sender: TObject);
    procedure wwDBEdit25Exit(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBEdit26Exit(Sender: TObject);
    procedure wwDBEdit27Exit(Sender: TObject);
    procedure wwDBEdit28Exit(Sender: TObject);
    procedure wwDBEdit29Exit(Sender: TObject);
    procedure wwDBEdit30Exit(Sender: TObject);
    procedure wwDBEdit31Exit(Sender: TObject);
    procedure wwDBEdit32Exit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBEdit33Exit(Sender: TObject);
    procedure wwDBEdit34Exit(Sender: TObject);
    procedure wwDBEdit35Exit(Sender: TObject);
    procedure wwDBEdit36Exit(Sender: TObject);
    procedure wwDBEdit37Exit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure DS_TRANSDataChange(Sender: TObject; Field: TField);
    procedure Q_TRANSNewRecord(DataSet: TDataSet);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure Q_TRANSBeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBComboBox2Enter(Sender: TObject);
    procedure wwDBComboBox2Exit(Sender: TObject);
    procedure wwDBEdit39Enter(Sender: TObject);
    procedure wwDBEdit39Exit(Sender: TObject);
    procedure wwDBEdit41Enter(Sender: TObject);
    procedure wwDBEdit41Exit(Sender: TObject);
    procedure wwDBEdit42Enter(Sender: TObject);
    procedure wwDBEdit42Exit(Sender: TObject);
    procedure wwDBEdit43Enter(Sender: TObject);
    procedure wwDBEdit43Exit(Sender: TObject);
    procedure Q_TRMOTBeforePost(DataSet: TDataSet);
    procedure wwDBComboBox3Enter(Sender: TObject);
    procedure wwDBComboBox3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransp: TFTransp;
  VOLM3 : real ;
implementation
uses USenha,Umenu, UAbTabelas ;
{$R *.DFM}

procedure TFTransp.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFTransp.Q_TRANSAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TRANSTRANS_FANTASIA.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TRANS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TRANS.close ;
   Q_TRANS.Open ;
   Q_TRANS.locate('TRANS_FANTASIA',StrNome,[]);

end;

procedure TFTransp.Q_TRANSAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TRANSTRANS_FANTASIA.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TRANS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TRANS.close ;
   Q_TRANS.Open ;
   Q_TRANS.locate('TRANS_FANTASIA',StrNome,[]);

end;

procedure TFTransp.Q_TRMOTNewRecord(DataSet: TDataSet);
begin
  Q_TRMOTTRANS_ID.asstring := Q_TRANSTRANS_ID.asstring  ;
end;

procedure TFTransp.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.DBE_CLI_CGCEnter(Sender: TObject);
begin
   
    Q_TRANSTRANS_CNPJ.EditMask := '' ;
   if wwDBComboBox2.text = 'Física' then
      Q_TRANSTRANS_CNPJ.EditMask := '!999.999.999-99;0;_'
   else Q_TRANSTRANS_CNPJ.EditMask := '!99.999.999/9999-99;0;_';

      (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.DBE_CLI_INSCEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.DBE_CLI_FCEPEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.DBE_CLI_FENDEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.DBLC_DBE_FESTEnter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFTransp.DBE_CLI_FFAXEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.DBE_CLI_FTELEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.DBE_CLI_FEMAEnter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit3Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBE_CLI_CGCExit(Sender: TObject);
Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;
begin
  IF (Q_TRANS.state = dsINSERT) or (Q_TRANS.state = dsedit)  then begin


      if wwDBComboBox2.text = 'Jurídica' then
         begin
            A:= StrtoInt(copy(DBE_CLI_CGC.Text,1,1));
            B:= StrtoInt(copy(DBE_CLI_CGC.Text,2,1));
            C:= StrtoInt(copy(DBE_CLI_CGC.Text,3,1));
            D:= StrtoInt(copy(DBE_CLI_CGC.Text,4,1));
            E:= StrtoInt(copy(DBE_CLI_CGC.Text,5,1));
            F:= StrtoInt(copy(DBE_CLI_CGC.Text,6,1));
            G:= StrtoInt(copy(DBE_CLI_CGC.Text,7,1));
            H:= StrtoInt(copy(DBE_CLI_CGC.Text,8,1));
            I:= StrtoInt(copy(DBE_CLI_CGC.Text,9,1));
            J:= StrtoInt(copy(DBE_CLI_CGC.Text,10,1));
            K:= StrtoInt(copy(DBE_CLI_CGC.Text,11,1));
            L:= StrtoInt(copy(DBE_CLI_CGC.Text,12,1));
            X:= 2*(L+D)+3*(K+C)+4*(J+B)+5*(I+A)+6*H+7*G+8*F+9*E;
            M:= 11-((X)-(11*((X div 11))));
            if M > 9 then
               M:=0;
               Y:= 2*(M+E)+3*(L+D)+4*(K+C)+5*(J+B)+6*(I+A)+7*H+8*G+9*F;
               N:= 11-((Y)-(11*((Y div 11))));
            if N > 9 then
               N:=0;
               DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
               if DC <> copy(DBE_CLI_CGC.Text,13,2) then

                  Begin
                     MessageDlg('Digito de controle não confere.', mtInformation,
                     [mbOk], 0);
                     DBE_CLI_CGC.Clear;
                     DBE_CLI_CGC.Setfocus;
                   end
         end
      else
         begin
            A:= StrtoInt(copy(DBE_CLI_CGC.Text,1,1));
            B:= StrtoInt(copy(DBE_CLI_CGC.Text,2,1));
            C:= StrtoInt(copy(DBE_CLI_CGC.Text,3,1));
            D:= StrtoInt(copy(DBE_CLI_CGC.Text,4,1));
            E:= StrtoInt(copy(DBE_CLI_CGC.Text,5,1));
            F:= StrtoInt(copy(DBE_CLI_CGC.Text,6,1));
            G:= StrtoInt(copy(DBE_CLI_CGC.Text,7,1));
            H:= StrtoInt(copy(DBE_CLI_CGC.Text,8,1));
            I:= StrtoInt(copy(DBE_CLI_CGC.Text,9,1));
            X:= (2*I+3*H+4*G+5*F+6*E+7*D+8*C+9*B+10*A)*10;
            M:= X-((11*((X div 11))));
            if M > 9 then
               M:=0;
            Y:= (2*M+3*I+4*H+5*G+6*F+7*E+8*D+9*C+10*B+11*A)*10 ;
            N:= Y-((11*((Y div 11))));
            if N > 9 then
               N:=0;
            DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
            if DC <> copy(DBE_CLI_CGC.Text,10,2) then
               Begin
                  MessageDlg('Digito de controle não confere.', mtInformation,
                  [mbOk], 0);
                  DBE_CLI_CGC.Clear;
                  DBE_CLI_CGC.Setfocus;
               end
        end          ;
  end ; 

   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBE_CLI_INSCExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBE_CLI_FCEPExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;

    If (Q_TRANS.state = dsedit ) or (Q_TRANS.state = dsinsert )  then  begin

       Q_CEP.close ;
       Q_CEP.Sql.Clear ;
       Q_CEP.Sql.Add(' Select * from CEP ') ;
       Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + DBE_CLI_FCEP.text + ''''  ) ;
       Q_CEP.Open ;

       Q_TRANSTRANS_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
       Q_TRANSTRANS_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;

       IF Q_MUNI.locate('MUN_NOME',Q_CEP.fieldbyname('CEP_CIDADE').asstring,[]) then begin
           Q_TRANSMUN_ID.asinteger  := Q_MUNIMUN_ID.asinteger ;
           Q_TRANSUF_SIGLA.asstring := Q_MUNIUF_SIGLA.asstring ;

       end else begin
           Q_TRANSMUN_ID.asinteger  := 0 ;
           Q_TRANSUF_SIGLA.asstring := '0' ;
       end ;

       Q_TRANSTRANS_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
       ///Q_TRANSUF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

       wwdbedit22.setfocus ;

    end ; 

end;

procedure TFTransp.DBE_CLI_FENDExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBLC_DBE_FESTExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFTransp.DBE_CLI_FFAXExit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBE_CLI_FTELExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBE_CLI_FEMAExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit4Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit5Enter(Sender: TObject);
begin
          (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit7Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit8Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit9Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit10Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua
end;

procedure TFTransp.wwDBEdit11Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Claqua;
end;

procedure TFTransp.wwDBEdit15Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit16Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit14Enter(Sender: TObject);
begin
(Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit19Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit20Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit21Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit17Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit18Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.DBCB_CLI_PESSEnter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Claqua;
end;

procedure TFTransp.wwDBEdit6Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit5Exit(Sender: TObject);
Var
   A,B,C,D,E,F,G,H,I,J,K,L,X,M,Y,N : Integer;
   DC : String;
begin
        A:= StrtoInt(copy(wwDBEdit5.Text,1,1));
        B:= StrtoInt(copy(wwDBEdit5.Text,2,1));
        C:= StrtoInt(copy(wwDBEdit5.Text,3,1));
        D:= StrtoInt(copy(wwDBEdit5.Text,4,1));
        E:= StrtoInt(copy(wwDBEdit5.Text,5,1));
        F:= StrtoInt(copy(wwDBEdit5.Text,6,1));
        G:= StrtoInt(copy(wwDBEdit5.Text,7,1));
        H:= StrtoInt(copy(wwDBEdit5.Text,8,1));
        I:= StrtoInt(copy(wwDBEdit5.Text,9,1));
        X:= (2*I+3*H+4*G+5*F+6*E+7*D+8*C+9*B+10*A)*10;
        M:= X-((11*((X div 11))));
        if M > 9 then
           M:=0;
        Y:= (2*M+3*I+4*H+5*G+6*F+7*E+8*D+9*C+10*B+11*A)*10 ;
        N:= Y-((11*((Y div 11))));
        if N > 9 then
           N:=0;
        DC:= copy((INTTOSTR(M)),1,1)+ copy((iNTTOSTR(N)),1,1);
        if DC <> copy(wwDBEdit5.Text,10,2) then
           Begin
              MessageDlg('Digito de controle não confere.', mtInformation,
              [mbOk], 0);
              wwDBEdit5.Clear;
              wwDBEdit5.Setfocus;
           end;
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;

  If (Q_TRMOT.state = dsedit ) or (Q_TRMOT.state = dsinsert )  then  begin

     Q_CEP.close ;
     Q_CEP.Sql.Clear ;
     Q_CEP.Sql.Add(' Select * from CEP ') ;
     Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwdbedit7.text + ''''  ) ;
     Q_CEP.Open ;

     Q_TRMOTMOT_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
     Q_TRMOTMOT_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;
     Q_TRMOTMOT_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
     Q_TRMOTUF_SIGLA.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

     wwdbedit12.setfocus ;
     
  end ;

end;

procedure TFTransp.wwDBEdit8Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit9Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit10Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit11Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit15Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit16Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit14Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit21Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit20Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit19Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit17Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit18Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit6Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow;
end;

procedure TFTransp.DBCB_CLI_PESSExit(Sender: TObject);
begin
   (Sender as TwwDBcombobox).Color := Clwindow;
end;

procedure TFTransp.Q_TRMOTAfterDelete(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TRMOTMOT_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TRMOT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TRMOT.close ;
   Q_TRMOT.Open ;
   Q_TRMOT.locate('MOT_NOME',StrNome,[]);

end;

procedure TFTransp.Q_TRMOTAfterPost(DataSet: TDataSet);
var StrNome : string ;
begin
   STRNOME :=  Q_TRMOTMOT_NOME.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_TRMOT])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_TRMOT.close ;
   Q_TRMOT.Open ;
   Q_TRMOT.locate('MOT_NOME',StrNome,[]);


end;

procedure TFTransp.TabbedNotebook1Click(Sender: TObject);
begin
  If (TabbedNotebook1.pageindex = 0) then
     DBNavigator1.datasource := DS_TRANS;

  If (TabbedNotebook1.pageindex = 1) then begin
     if (Q_TRANS.state = dsedit ) or (Q_TRANS.state = dsinsert ) then
        Q_TRANS.post ;
     DBNavigator1.datasource := DS_TRMOT;
     TabbedNotebook2.pageindex := 0 ;
     Q_TRMOT.edit ;
     Q_TRMOT.cancel ;

  end ;

end;

procedure TFTransp.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   if button in [nbInsert] then  begin
       If (TabbedNotebook1.pageindex = 0) then
           wwDBEdit3.setfocus ;
       {If (TabbedNotebook1.pageindex = 1) then
           wwDBEdit4.setfocus ;  }
   end ;


  if (Button in [nbFirst,nbPrior,nbNext,nbLast]) and (TabbedNotebook1.pageindex = 0) then begin
      if (Q_TRANSTRANS_PESSOA.AsString = 'F') then
          Q_TRANSTRANS_CNPJ.EditMask := '!999.999.999/99;0;_'
      else
         if (Q_TRANSTRANS_PESSOA.AsString = 'J') then
              Q_TRANSTRANS_CNPJ.EditMask := '!99.999.999/9999-99;0;_'
         else Q_TRANSTRANS_CNPJ.EditMask := '';
   end ;


end;

procedure TFTransp.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTransp.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 8;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     ///FAbTabelas.Gauge1.Progress            := 1;
                     ///FAbTabelas.DS_REG.OnStateChange      := DS_CATEStateChange;

                     //FAbTabelas.Gauge1.Progress            := 1;
                     ///FRegiao.Q_REG.BeforePost          := Q_REGBeforePost;

                     FAbTabelas.Gauge1.Progress            := 1;
                     Q_TRANS.Open;

                     FAbTabelas.Gauge1.Progress            := 2;
                     Q_TRMOT.Open;

                     FAbTabelas.Gauge1.Progress            := 3;
                     Q_UF.Open;

                     FAbTabelas.Gauge1.Progress            := 4;
                     Q_UF2.Open;

                     FAbTabelas.Gauge1.Progress            := 5;
                     Q_UF3.Open;

                     FAbTabelas.Gauge1.Progress            := 6;
                     Q_UF4.Open;

                     FAbTabelas.Gauge1.Progress            := 7;
                     Q_VEIC.Open;

                     FAbTabelas.Gauge1.Progress            := 8;
                     Q_MUNI.Open;


                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             FAbTabelas.Close;
             FAbTabelas.Release;
             If Self.Tag = 2 Then Self.Close;
    end  ;
end;

procedure TFTransp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_TRMOT.close ;
  Q_TRANS.close ;
  Q_UF.close ;
  Q_CG.close ; 
  Q_UF2.close ;
  Q_UF3.close ;
  Q_UF4.close ;
  Q_VEIC.close ;
  Q_MUNI.close; 
  action := cafree ; 
end;

procedure TFTransp.FormCreate(Sender: TObject);
begin
   TabbedNotebook1.pageindex := 0 ;
   Q_CG.open ; 
end;

procedure TFTransp.wwDBEdit12Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFTransp.wwDBEdit13Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit13Exit(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit22Enter(Sender: TObject);
begin
      (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit22Exit(Sender: TObject);
begin
 (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit23Enter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit23Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit24Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit25Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Claqua;
end;

procedure TFTransp.wwDBEdit26Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit27Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit28Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit29Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua;   
end;

procedure TFTransp.wwDBEdit30Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit24Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit31Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit32Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBLookupCombo3Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua;
end;

procedure TFTransp.wwDBEdit33Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit34Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit35Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit36Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit37Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit25Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBLookupCombo2Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit26Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit27Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit28Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit29Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit30Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit31Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit32Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBLookupCombo3Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit33Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit34Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit35Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit36Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit37Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBComboBox1Enter(Sender: TObject);
begin
   (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFTransp.wwDBComboBox1Exit(Sender: TObject);
begin
    (Sender as TwwDBCOMBOBOX).Color := Clwindow ;

    If (Q_TRANSTRANS_FLAG.asstring = 'N') then
      Panel7.visible := true
    else
      Panel7.visible := false ;


    ///If (Q_TRANS.state = dsedit ) or (Q_TRANS.state = dsinsert ) then Q_TRANS.post ;

end;

procedure TFTransp.DS_TRANSDataChange(Sender: TObject; Field: TField);
begin
     If (Q_TRANSTRANS_FLAG.asstring = 'N') then
      Panel7.visible := true
    else
      Panel7.visible := false ;
end;

procedure TFTransp.Q_TRANSNewRecord(DataSet: TDataSet);
begin
    Q_TRANSTRANS_FLAG.asstring := 'N' ;
    Q_TRANSTRANS_REDES.asstring := 'N' ;
end;

procedure TFTransp.wwDBLookupCombo5Enter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFTransp.wwDBLookupCombo5Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFTransp.Q_TRANSBeforePost(DataSet: TDataSet);
begin
   IF (wwDBEdit3.text = '')  then begin
       MessageDlg('Nome é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBEdit3.setfocus ;
       abort ;
     end ;

     IF (wwDBEdit1.text = '')  then begin
       MessageDlg('Razão Social é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBEdit1.setfocus ;
       abort ;
     end ;

      IF (DBE_CLI_FEND.text = '')  then begin
       MessageDlg('Endereço é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       DBE_CLI_FEND.setfocus ;
       abort ;
      end ;

      IF wwDBEdit46.Text = '' then  begin
       MessageDlg('RNTRC é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBEdit46.setfocus ;
       abort ;
      end ;


      IF (DBE_CLI_FCEP.text = '')  then begin
       MessageDlg('CEP é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       DBE_CLI_FCEP.setfocus ;
       abort ;
      end ;

      IF (DBLC_DBE_FEST.text = '')  then begin
       MessageDlg('Estado é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       DBLC_DBE_FEST.setfocus ;
       abort ;
      end ;

      IF (DBE_CLI_FFAX.text = '')  then begin
       MessageDlg('Telefone é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       DBE_CLI_FFAX.setfocus ;
       abort ;
      end ;


      IF (wwDBEdit44.text = '')  then begin
        IF Q_TRANSTRANS_PESSOA.Value = 'F' then begin
             MessageDlg('PIS é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
             wwDBEdit44.setfocus ;
             abort ;
        end;

      end ;
     { IF (wwDBEdit2.text = '')  then begin
       MessageDlg('Contato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBEdit2.setfocus ;
       abort ;
      end ; }

      IF (wwDBComboBox1.text = '')  then begin
       MessageDlg('Transportadora ? é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBComboBox1.setfocus ;
       abort ;
      end ;

      IF (wwDBComboBox2.text = '')  then begin
         MessageDlg('Tipo de Pessoa é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
         wwDBComboBox2.setfocus ;
         abort ;
      end ;
end;

procedure TFTransp.SpeedButton4Click(Sender: TObject);
begin
   wwSearchDialog1.execute ;
end;

procedure TFTransp.wwDBComboBox2Enter(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Claqua;
end;

procedure TFTransp.wwDBComboBox2Exit(Sender: TObject);
begin
  (Sender as TwwDBcombobox).Color := Clwindow ;

   Q_TRANSTRANS_CNPJ.EditMask := '' ;
   if wwDBComboBox2.text = 'Física' then
      Q_TRANSTRANS_CNPJ.EditMask := '!999.999.999-99;0;_'
   else Q_TRANSTRANS_CNPJ.EditMask := '!99.999.999/9999-99;0;_';

end;

procedure TFTransp.wwDBEdit39Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Claqua;
end;

procedure TFTransp.wwDBEdit39Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFTransp.wwDBEdit41Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit41Exit(Sender: TObject);
begin
    (Sender as TwwDBedit).Color := ClWINDOW;
end;

procedure TFTransp.wwDBEdit42Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit42Exit(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := Clwindow;
end;

procedure TFTransp.wwDBEdit43Enter(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := ClAqua;
end;

procedure TFTransp.wwDBEdit43Exit(Sender: TObject);
begin
   (Sender as TwwDBedit).Color := Clwindow ;

     VOLM3 := 0 ;

  If (Q_TRMOT.state = dsedit ) or (Q_TRMOT.state = dsInsert ) then begin

     IF (wwDBEdit41.text <> '') and
        (wwDBEdit42.text <> '') and
        (wwDBEdit43.text <> '') then begin

         VOLM3 := (Q_TRMOTMOT_CARRETA_COMPR.asfloat *
                   Q_TRMOTMOT_CARRETA_LARG.asfloat  *
                   Q_TRMOTMOT_CARRETA_ALT.asfloat )  ;

         Q_TRMOTMOT_CARRETA_M3.asfloat := VOLM3 ;

     end ;

  end ;


end;

procedure TFTransp.Q_TRMOTBeforePost(DataSet: TDataSet);
begin
   VOLM3 := 0 ;

  If (Q_TRMOT.state = dsedit ) or (Q_TRMOT.state = dsInsert ) then begin

     IF (wwDBEdit41.text <> '') and
        (wwDBEdit42.text <> '') and
        (wwDBEdit43.text <> '') then begin

         VOLM3 := (Q_TRMOTMOT_CARRETA_COMPR.asfloat *
                   Q_TRMOTMOT_CARRETA_LARG.asfloat  *
                   Q_TRMOTMOT_CARRETA_ALT.asfloat )  ;

         Q_TRMOTMOT_CARRETA_M3.asfloat := VOLM3 ;

     end ;

  end ;


end;

procedure TFTransp.wwDBComboBox3Enter(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := ClAqua;
end;

procedure TFTransp.wwDBComboBox3Exit(Sender: TObject);
begin
    (Sender as TwwDBCOMBOBOX).Color := Clwindow ;
end;

end.

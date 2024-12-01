unit UOrdemCE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, StdCtrls, DBCtrls, Wwdbigrd, Grids, Wwdbgrid, Mask,
  wwdbedit, Buttons, ExtCtrls, wwdblook, Db, Wwdatsrc, DBTables, Wwquery,
  ComCtrls, Tabnotbk;

type
  TFOrdemCE = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    DBCB_CLI_PESS: TwwDBComboBox;
    Q_OCE: TwwQuery;
    DS_OCE: TwwDataSource;
    Q_OCEORD_ID: TAutoIncField;
    Q_OCEOS_ID: TIntegerField;
    Q_OCEORD_COLETA_ENTREGA: TStringField;
    Q_OCEREG_ID: TIntegerField;
    Q_OCEVEIC_ID: TIntegerField;
    Q_OCETDOC_ID: TIntegerField;
    Q_OCEORD_TPCARGA: TStringField;
    Q_OCEORD_QTDE_PALLET: TIntegerField;
    Q_OCEORD_QTDE_CAIXA: TIntegerField;
    Q_OCETRANS_ID: TIntegerField;
    Q_OCEMOT_ID: TIntegerField;
    Q_OCEORD_COL_ENDERECO: TStringField;
    Q_OCEORD_COL_ENDERECO_COMPL: TStringField;
    Q_OCEORD_COL_ENDERECO_BAIRRO: TStringField;
    Q_OCEORD_COL_MUNICIPIO: TStringField;
    Q_OCEUF_SIGLA_COL: TStringField;
    Q_OCEORD_COL_CEP: TStringField;
    Q_OCEORD_COL_TEL1: TStringField;
    Q_OCEORD_COL_TEL2: TStringField;
    Q_OCEORD_COL_FAX: TStringField;
    Q_OCEORD_COL_EMAIL: TStringField;
    Q_OCEORD_COL_CONTATO: TStringField;
    Q_OCEORD_ENT_ENDERECO: TStringField;
    Q_OCEORD_ENT_ENDERECO_COMPL: TStringField;
    Q_OCEORD_ENT_ENDERECO_BAIRRO: TStringField;
    Q_OCEORD_ENT_MUNICIPIO: TStringField;
    Q_OCEUF_SIGLA_ENT: TStringField;
    Q_OCEORD_ENT_CEP: TStringField;
    Q_OCEORD_ENT_TEL1: TStringField;
    Q_OCEORD_ENT_TEL2: TStringField;
    Q_OCEORD_ENT_FAX: TStringField;
    Q_OCEORD_ENT_EMAIL: TStringField;
    Q_OCEORD_ENT_CONTATO: TStringField;
    Panel3: TPanel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText3: TDBText;
    Label15: TLabel;
    DBText4: TDBText;
    Label18: TLabel;
    Label50: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label21: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label26: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label31: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label32: TLabel;
    wwDBEdit14: TwwDBEdit;
    Label39: TLabel;
    Label33: TLabel;
    wwDBEdit15: TwwDBEdit;
    Label5: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label6: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label16: TLabel;
    UPD_OCE: TUpdateSQL;
    Q_REG: TwwQuery;
    Q_REGREG_ID: TAutoIncField;
    Q_REGREG_NOME: TStringField;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRMOT: TwwQuery;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_OCEORD_DATA: TDateTimeField;
    Q_CLIN: TwwQuery;
    Q_CLIF: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_CLIFCLIF_RAZA: TStringField;
    Q_CLIFCLIF_ID: TAutoIncField;
    Q_UF1: TwwQuery;
    Q_UF1UF_NOME: TStringField;
    Q_UF1UF_SIGLA: TStringField;
    Q_UF1UF_ALIQUOTA: TFloatField;
    Q_UF2: TwwQuery;
    Q_UF2UF_SIGLA: TStringField;
    Q_UF2UF_NOME: TStringField;
    Q_UF2UF_ALIQUOTA: TFloatField;
    Q_CLINCLIN_PESSOA: TStringField;
    Q_CLINCLIN_NOME: TStringField;
    Q_CLINCLIN_CGCCPF: TStringField;
    Q_CLINCLIN_INSCRG: TStringField;
    Q_CLINCLIN_ENDERECO: TStringField;
    Q_CLINCLIN_ENDERECO_COMPL: TStringField;
    Q_CLINCLIN_ENDERECO_BAIRRO: TStringField;
    Q_CLINCLIN_MUNICIPIO: TStringField;
    Q_CLINUF_SIGLA: TStringField;
    Q_CLINCLIN_CEP: TStringField;
    Q_CLINCLIN_TEL1: TStringField;
    Q_CLINCLIN_TEL2: TStringField;
    Q_CLINCLIN_FAX: TStringField;
    Q_CLINCLIN_EMAIL: TStringField;
    Q_CLINCON_CODI: TStringField;
    Q_CLIFCLIF_PESSOA: TStringField;
    Q_CLIFCLIF_NOME: TStringField;
    Q_CLIFCLIF_CGCCPF: TStringField;
    Q_CLIFCLIF_INSCRG: TStringField;
    Q_CLIFCLIF_ENDERECO: TStringField;
    Q_CLIFCLIF_ENDERECO_COMPL: TStringField;
    Q_CLIFCLIF_ENDERECO_BAIRRO: TStringField;
    Q_CLIFCLIF_MUNICIPIO: TStringField;
    Q_CLIFUF_SIGLA: TStringField;
    Q_CLIFCLIF_CEP: TStringField;
    Q_CLIFCLIF_TEL1: TStringField;
    Q_CLIFCLIF_TEL2: TStringField;
    Q_CLIFCLIF_FAX: TStringField;
    Q_CLIFCLIF_EMAIL: TStringField;
    Q_CLIFCLIF_CONTATO: TStringField;
    TabbedNotebook1: TTabbedNotebook;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    RadioGroup2: TRadioGroup;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label42: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label41: TLabel;
    Label19: TLabel;
    DBE_CLI_FEND: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    DBLC_DBE_FEST: TwwDBLookupCombo;
    DBE_CLI_FFAX: TwwDBEdit;
    DBE_CLI_FTEL: TwwDBEdit;
    DBE_CLI_FEMA: TwwDBEdit;
    DBE_CLI_FTE2: TwwDBEdit;
    DBE_CLI_FMUN: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    RadioGroup1: TRadioGroup;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    Label11: TLabel;
    DBE_CLI_FCEP: TwwDBEdit;
    Q_CEP: TwwQuery;
    Q_OCEORD_PESO_TOTAL: TFloatField;
    Q_OCEORD_VOLUME: TFloatField;
    Q_OSESPEC: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure wwDBLookupCombo7Enter(Sender: TObject);
    procedure wwDBLookupCombo5Enter(Sender: TObject);
    procedure DBLC_DBE_FESTEnter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBLookupCombo7Exit(Sender: TObject);
    procedure DBLC_DBE_FESTExit(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure DBCB_CLI_PESSEnter(Sender: TObject);
    procedure DBCB_CLI_PESSExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure wwDBEdit12Enter(Sender: TObject);
    procedure wwDBEdit6Enter(Sender: TObject);
    procedure wwDBEdit14Enter(Sender: TObject);
    procedure wwDBEdit15Enter(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit11Enter(Sender: TObject);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit10Enter(Sender: TObject);
    procedure wwDBEdit5Enter(Sender: TObject);
    procedure wwDBEdit9Enter(Sender: TObject);
    procedure wwDBEdit7Enter(Sender: TObject);
    procedure wwDBEdit8Enter(Sender: TObject);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit6Exit(Sender: TObject);
    procedure wwDBEdit14Exit(Sender: TObject);
    procedure wwDBEdit15Exit(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit11Exit(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure wwDBEdit10Exit(Sender: TObject);
    procedure wwDBEdit5Exit(Sender: TObject);
    procedure wwDBEdit9Exit(Sender: TObject);
    procedure wwDBEdit7Exit(Sender: TObject);
    procedure wwDBEdit8Exit(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBE_CLI_FEMAExit(Sender: TObject);
    procedure DBE_CLI_FTELExit(Sender: TObject);
    procedure DBE_CLI_FFAXExit(Sender: TObject);
    procedure DBE_CLI_FTE2Exit(Sender: TObject);
    procedure DBE_CLI_FMUNExit(Sender: TObject);
    procedure wwDBEdit18Exit(Sender: TObject);
    procedure wwDBEdit16Exit(Sender: TObject);
    procedure DBE_CLI_FENDExit(Sender: TObject);
    procedure DBE_CLI_FCEPExit(Sender: TObject);
    procedure DBE_CLI_FCEPEnter(Sender: TObject);
    procedure DBE_CLI_FENDEnter(Sender: TObject);
    procedure wwDBEdit16Enter(Sender: TObject);
    procedure wwDBEdit18Enter(Sender: TObject);
    procedure DBE_CLI_FMUNEnter(Sender: TObject);
    procedure DBE_CLI_FFAXEnter(Sender: TObject);
    procedure DBE_CLI_FTE2Enter(Sender: TObject);
    procedure DBE_CLI_FTELEnter(Sender: TObject);
    procedure DBE_CLI_FEMAEnter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DS_OCEDataChange(Sender: TObject; Field: TField);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_OCEAfterPost(DataSet: TDataSet);
    procedure Q_OCENewRecord(DataSet: TDataSet);
    procedure Q_OCEAfterDelete(DataSet: TDataSet);
    procedure wwDBEdit12Exit(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo8Enter(Sender: TObject);
    procedure wwDBLookupCombo8Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure wwDBLookupCombo9Exit(Sender: TObject);
    procedure wwDBLookupCombo9Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_OCEBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrdemCE: TFOrdemCE;

implementation
uses USenha,UOS, UAbTabelas ;
{$R *.DFM}

procedure TFOrdemCE.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFOrdemCE.wwDBLookupCombo3Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo3Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

procedure TFOrdemCE.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo6Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo7Enter(Sender: TObject);
begin
       (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo5Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.DBLC_DBE_FESTEnter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo1Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

procedure TFOrdemCE.wwDBLookupCombo2Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

procedure TFOrdemCE.wwDBLookupCombo4Exit(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

procedure TFOrdemCE.wwDBLookupCombo5Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClWINDOW;
     Q_OCE.edit;

    ///If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

      If (Q_OCEORD_ENT_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
            else begin
                RadioGROUP1.itemindex := -1 ;
                wwDBLookupCombo5.visible := false;
                wwDBLookupCombo8.visible := false;
                ABORT ;
            end ;

      end ;


     Q_OCEORD_ENT_ENDERECO.asstring  :=  Q_CLInCLIn_ENDERECO.asstring ;
     Q_OCEORD_ENT_ENDERECO_COMPL.text := Q_CLInCLIn_ENDERECO_COMPL.asstring ;
     Q_OCEORD_ENT_ENDERECO_BAIRRO.text := Q_CLInCLIn_ENDERECO_BAIRRO.asstring ;
     Q_OCEORD_ENT_MUNICIPIO.text :=  Q_CLINCLIN_MUNICIPIO.asstring ;
     Q_OCEUF_SIGLA_ENT.asstring :=  Q_CLInUF_SIGLA.asstring ;
     Q_OCEORD_ENT_CEP.asstring :=  Q_CLInCLIn_CEP.asstring ;


     RadioGROUP1.itemindex := -1 ;
     wwDBLookupCombo5.visible := false;
     wwDBLookupCombo8.visible := false;
     DBE_CLI_FFAX.setfocus ;

   ///end ;

end;

procedure TFOrdemCE.wwDBLookupCombo7Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClWINDOW;
     Q_OCE.edit ; 
  /// If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

      If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
            else begin
                RadioGROUP2.itemindex := -1 ;
                wwDBLookupCombo7.visible := false;
                wwDBLookupCombo9.visible := false;
                ABORT ;
            end ;


      end ;


     Q_OCEORD_COL_ENDERECO.asstring  :=  Q_CLINCLIN_ENDERECO.asstring ;
     Q_OCEORD_COL_ENDERECO_COMPL.text := Q_CLINCLIN_ENDERECO_COMPL.asstring ;
     Q_OCEORD_COL_ENDERECO_BAIRRO.text := Q_CLINCLIN_ENDERECO_BAIRRO.asstring ;
     Q_OCEORD_COL_MUNICIPIO.text :=  Q_CLINCLIN_MUNICIPIO.asstring ;
     Q_OCEUF_SIGLA_COL.asstring :=  Q_CLINUF_SIGLA.asstring ;
     Q_OCEORD_COL_CEP.asstring :=  Q_CLINCLIN_CEP.asstring ;

     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit5.setfocus ;

  /// end ;

end;

procedure TFOrdemCE.DBLC_DBE_FESTExit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

procedure TFOrdemCE.wwDBLookupCombo6Exit(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClWINDOW;
end;

procedure TFOrdemCE.DBCB_CLI_PESSEnter(Sender: TObject);
begin
  (Sender as TwwDBCOMBOBOX).Color := ClAqua;      
end;

procedure TFOrdemCE.DBCB_CLI_PESSExit(Sender: TObject);
begin
   (Sender as TwwDBCOMBOBOX).Color := Clwindow;
 
  If (Q_OCEORD_COLETA_ENTREGA.asstring = 'C') then
       TabbedNotebook1.pageindex := 0 ;

  If (Q_OCEORD_COLETA_ENTREGA.asstring = 'E') then
       TabbedNotebook1.pageindex := 1 ;


end;

procedure TFOrdemCE.wwDBComboBox1Enter(Sender: TObject);
begin
   (Sender as TwwDBCOMBOBOX).Color := ClAqua;      
end;

procedure TFOrdemCE.wwDBComboBox1Exit(Sender: TObject);
begin
   (Sender as TwwDBCOMBOBOX).Color := ClWINDOW ; 
end;

procedure TFOrdemCE.wwDBEdit12Enter(Sender: TObject);
begin
   (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit6Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit14Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit15Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit2Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit3Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit11Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit4Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit10Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit5Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit9Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit7Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit8Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit13Enter(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBEdit6Exit(Sender: TObject);
begin
    (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit14Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit15Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit2Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;


  If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

         If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

             if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
               else ABORT ;
         end ;



         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + wwDBEdit2.text + ''''  ) ;
         Q_CEP.Open ;

         Q_OCEORD_COL_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_OCEORD_COL_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;
         Q_OCEORD_COL_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
         Q_OCEUF_SIGLA_COL.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwdbedit11.text := '' ;
         Q_OCEORD_COL_ENDERECO_COMPL.asstring := '' ;
         wwdbedit11.setfocus ;
  end ;

end;

procedure TFOrdemCE.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit11Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit4Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit10Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit5Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit9Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit7Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit8Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit1Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FEMAExit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FTELExit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FFAXExit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FTE2Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FMUNExit(Sender: TObject);
begin
 (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit18Exit(Sender: TObject);
begin
 (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.wwDBEdit16Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FENDExit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;
end;

procedure TFOrdemCE.DBE_CLI_FCEPExit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWINDOW ;

  If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin
         If (Q_OCEORD_ENT_ENDERECO.asstring <> '') then begin

             if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
               else ABORT ;
         end ;

         Q_CEP.close ;
         Q_CEP.Sql.Clear ;
         Q_CEP.Sql.Add(' Select * from CEP ') ;
         Q_CEP.Sql.Add(' where CEP_CEP = ' + '''' + DBE_CLI_FCEP.text + ''''  ) ;
         Q_CEP.Open ;

         Q_OCEORD_ENT_ENDERECO.asstring := Q_CEP.fieldbyname('CEP_RUA').asstring ;
         Q_OCEORD_ENT_MUNICIPIO.asstring := Q_CEP.fieldbyname('CEP_CIDADE').asstring ;
         Q_OCEORD_ENT_ENDERECO_BAIRRO.asstring := Q_CEP.fieldbyname('CEP_BAIRRO').asstring ;
         Q_OCEUF_SIGLA_ENT.asstring := Q_CEP.fieldbyname('CEP_UF').asstring ;

         wwDBEdit16.text := '' ;
         Q_OCEORD_ENT_ENDERECO_COMPL.asstring := '' ;
         wwdbedit16.setfocus ;
  end ;



end;

procedure TFOrdemCE.DBE_CLI_FCEPEnter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ;
end;

procedure TFOrdemCE.DBE_CLI_FENDEnter(Sender: TObject);
begin
     (Sender as TwwDBEDIT).Color := ClAqua ;
end;

procedure TFOrdemCE.wwDBEdit16Enter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.wwDBEdit18Enter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.DBE_CLI_FMUNEnter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.DBE_CLI_FFAXEnter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.DBE_CLI_FTE2Enter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.DBE_CLI_FTELEnter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.DBE_CLI_FEMAEnter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClAqua ; 
end;

procedure TFOrdemCE.DS_OCEDataChange(Sender: TObject; Field: TField);
begin

   If (Q_OCE.state = dsbrowse ) then begin
       If (Q_OCEORD_COLETA_ENTREGA.asstring = 'C') then
          TabbedNotebook1.pageindex := 0 ;

        If (Q_OCEORD_COLETA_ENTREGA.asstring = 'E') then
          TabbedNotebook1.pageindex := 1 ;

   end;



   If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsbrowse ) then begin

        IF (Q_OCETRANS_ID.asstring <> '' ) then begin
            Q_TRMOT.close ;
            Q_TRMOT.Sql.Clear ;
            Q_TRMOT.Sql.Add('select MOT_ID,MOT_NOME,TRANS_ID from TRANSPORTADORA_MOTORISTA') ;
            Q_TRMOT.Sql.Add(' where TRANS_ID = ' + Q_OCETRANS_ID.asstring  ) ;
            Q_TRMOT.Open ;
        end ;

   end ;         


end;

procedure TFOrdemCE.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

    
    Q_TRMOT.close ;
    Q_TRMOT.Sql.Clear ;
    Q_TRMOT.Sql.Add('select MOT_ID,MOT_NOME,TRANS_ID from TRANSPORTADORA_MOTORISTA') ;
    Q_TRMOT.Sql.Add(' where TRANS_ID = ' + Q_TRANSTRANS_ID.asstring  ) ;
    Q_TRMOT.Open ;

      wwDBLookupCombo4.text := '' ;

end;

procedure TFOrdemCE.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
    end;
end;

procedure TFOrdemCE.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 10;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin
                     FAbTabelas.Gauge1.Progress            := 1;
                     FOrdemCE.Q_OCE.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     FOrdemCE.Q_REG.Open;
                     FAbTabelas.Gauge1.Progress            := 3;
                     FOrdemCE.Q_VEIC.Open;
                     FAbTabelas.Gauge1.Progress            := 4;
                     FOrdemCE.Q_TRANS.Open;
                     FAbTabelas.Gauge1.Progress            := 5;
                     FOrdemCE.Q_TRMOT.Open;

                     FAbTabelas.Gauge1.Progress            := 6;
                     FOrdemCE.Q_CLIF.Open;
                     FAbTabelas.Gauge1.Progress            := 7;
                     FOrdemCE.Q_CLIN.Open;

                     FAbTabelas.Gauge1.Progress            := 8;
                     FOrdemCE.Q_UF1.Open;
                     FAbTabelas.Gauge1.Progress            := 9;
                     FOrdemCE.Q_UF2.Open;
                    



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

procedure TFOrdemCE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_REG.close  ;
  Q_OCE.close  ;
  Q_VEIC.close ;
  Q_TRANS.close ;
  Q_TRMOT.close ;
  Q_CLIN.close ;
  Q_CLIF.close ;
  Q_UF1.close;
  Q_UF2.close ;
  Q_CEP.close ;
  action := cafree ; 

end;

procedure TFOrdemCE.Q_OCEAfterPost(DataSet: TDataSet);
var
DataAuxiliar : tdatetime ;
begin
   DataAuxiliar := Q_OCEORD_DATA.asdatetime   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OCE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_OCE.close ;
   Q_OCE.Open ;
   ///Q_OS.locate('OS_NUMERO',StrOS,[]);

   //Q_OS.close ;
   //Q_OS.Sql.Clear ;
   //Q_OS.Sql.Add(' select * from OS where CONVERT(CHAR(08),OS_Data,112) = ' + '''' + formatdatetime('YYYYMMDD',DataAuxiliar) + ''''  ) ;
   //Q_OS.Sql.Add(' and convert(char(08),OS_Data,8) = '+ '''' + formatdatetime('hh:mm:ss',DataAuxiliar) + '''' ) ;
   //Q_OS.Open ;
   Q_OCE.locate('ORD_Data',DataAuxiliar,[]) ;


end;

procedure TFOrdemCE.Q_OCENewRecord(DataSet: TDataSet);
begin
   Q_OCEORD_DATA.asdatetime := NOW;
   Q_OCEOS_ID.asstring := FOS.CDSOSOS_ID.asstring ;
   Q_OCETDOC_ID.asstring := FOS.Q_TDOCTDOC_ID.asstring ;

end;

procedure TFOrdemCE.Q_OCEAfterDelete(DataSet: TDataSet);
var
StrORD : string ;
begin
   StrORD := Q_OCEORD_ID.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OCE])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If (StrORD <> '') then begin
       Q_OCE.close ;
       Q_OCE.Open ;
       Q_OCE.locate('ORD_id',StrORD,[]);
   end ;

end;

procedure TFOrdemCE.wwDBEdit12Exit(Sender: TObject);
begin
  (Sender as TwwDBEDIT).Color := ClWindow ;
end;

procedure TFOrdemCE.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

   If (wwDBLookupCombo2.text = '') then begin
       MessageDlg('Transportadora é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
       wwDBLookupCombo2.SetFocus;
       wwDBLookupCombo4.text := '' ;
       abort ; 
   end ;


end;

procedure TFOrdemCE.wwDBLookupCombo8Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFOrdemCE.wwDBLookupCombo8Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow ;
     Q_OCE.edit; 
    ///If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

      If (Q_OCEORD_ENT_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
            else begin
                RadioGROUP1.itemindex := -1 ;
                wwDBLookupCombo5.visible := false;
                wwDBLookupCombo8.visible := false;
                ABORT ;
            end ;


      end ;


     Q_OCEORD_ENT_ENDERECO.asstring  :=  Q_CLIfCLIf_ENDERECO.asstring ;
     Q_OCEORD_ENT_ENDERECO_COMPL.text := Q_CLIfCLIf_ENDERECO_COMPL.asstring ;
     Q_OCEORD_ENT_ENDERECO_BAIRRO.text := Q_CLIfCLIf_ENDERECO_BAIRRO.asstring ;
     Q_OCEORD_ENT_MUNICIPIO.text :=  Q_CLIfCLIf_MUNICIPIO.asstring ;
     Q_OCEUF_SIGLA_ENT.asstring :=  Q_CLIfUF_SIGLA.asstring ;
     Q_OCEORD_ENT_CEP.asstring :=  Q_CLIfCLif_CEP.asstring ;

     RadioGROUP1.itemindex := -1 ;
     wwDBLookupCombo5.visible := false;
     wwDBLookupCombo8.visible := false;
     DBE_CLI_FFAX.setfocus ;
   ///end ;

end;

procedure TFOrdemCE.RadioGroup1Click(Sender: TObject);
begin
   IF RadioGroup1.itemindex = 0 then
      wwDBLookupCombo5.visible := true
    else
      wwDBLookupCombo5.visible := false;

   IF RadioGroup1.itemindex = 1 then
      wwDBLookupCombo8.visible := true
    else
      wwDBLookupCombo8.visible := false;



end;

procedure TFOrdemCE.RadioGroup2Click(Sender: TObject);
begin
  IF RadioGroup2.itemindex = 0 then
      wwDBLookupCombo7.visible := true
    else
      wwDBLookupCombo7.visible := false;

   IF RadioGroup2.itemindex = 1 then
      wwDBLookupCombo9.visible := true
    else
      wwDBLookupCombo9.visible := false;

end;

procedure TFOrdemCE.wwDBLookupCombo9Exit(Sender: TObject);
begin
    Q_OCE.edit ; 
  /// If (Q_OCE.state = dsedit ) or (Q_OCE.state = dsinsert )  then  begin

      If (Q_OCEORD_COL_ENDERECO.asstring <> '') then begin

          if MessageDlg('O campo Endereço encontra-se preenchido, confirma alteração ?  '
                               ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then
            else begin
                RadioGROUP2.itemindex := -1 ;
                wwDBLookupCombo7.visible := false;
                wwDBLookupCombo9.visible := false;
                ABORT ;
            end ;

      end ;


     Q_OCEORD_COL_ENDERECO.asstring  :=  Q_CLIfCLIf_ENDERECO.asstring ;
     Q_OCEORD_COL_ENDERECO_COMPL.text := Q_CLIfCLIf_ENDERECO_COMPL.asstring ;
     Q_OCEORD_COL_ENDERECO_BAIRRO.text := Q_CLIfCLIf_ENDERECO_BAIRRO.asstring ;
     Q_OCEORD_COL_MUNICIPIO.text :=  Q_CLIfCLIf_MUNICIPIO.asstring ;
     Q_OCEUF_SIGLA_COL.asstring :=  Q_CLIfUF_SIGLA.asstring ;
     Q_OCEORD_COL_CEP.asstring :=  Q_CLIfCLIf_CEP.asstring ;

     RadioGROUP2.itemindex := -1 ;
     wwDBLookupCombo7.visible := false;
     wwDBLookupCombo9.visible := false;
     wwDBEdit5.setfocus ; 

  // end ;




end;

procedure TFOrdemCE.wwDBLookupCombo9Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Claqua ;
end;

procedure TFOrdemCE.FormCreate(Sender: TObject);
begin
   TabbedNotebook1.pageindex := 0 ;
end;

procedure TFOrdemCE.Q_OCEBeforePost(DataSet: TDataSet);
begin

    If (wwDBEdit12.text = '') then begin
        Q_OSESPEC.close ;
        Q_OSESPEC.Sql.Clear ;
        Q_OSESPEC.Sql.Add(' SELECT Count(*) as QTDEReg from OS_ESPECIFICACOES ') ;
        Q_OSESPEC.Sql.Add(' where UCOB_ID = ' + '''' + '4' + '''') ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_ID in ') ;
        Q_OSESPEC.Sql.Add('(Select OS_SERVICO_ID from OS_SERVICO  ') ;
        Q_OSESPEC.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring ) ;
        Q_OSESPEC.Sql.Add(' and   TDOC_ID = ' + FOS.Q_TDOCTDOC_ID.asstring) ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_COBRA = ' + '''' + 'S' + '''' + ')' );
        Q_OSESPEC.open  ;

        If Q_OSESPEC.fieldbyname('QTDEReg').asinteger > 0 then begin
           MessageDlg('Peso Total é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBEdit12.SetFocus;
           Abort;
        end ;
    end ;

    If (wwDBEdit6.text = '') then begin
        Q_OSESPEC.close ;
        Q_OSESPEC.Sql.Clear ;
        Q_OSESPEC.Sql.Add(' SELECT Count(*) as QTDEReg from OS_ESPECIFICACOES ') ;
        Q_OSESPEC.Sql.Add(' where UCOB_ID = ' + '''' + '5' + '''') ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_ID in ') ;
        Q_OSESPEC.Sql.Add('(Select OS_SERVICO_ID from OS_SERVICO  ') ;
        Q_OSESPEC.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring ) ;
        Q_OSESPEC.Sql.Add(' and   TDOC_ID = ' + FOS.Q_TDOCTDOC_ID.asstring) ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_COBRA = ' + '''' + 'S' + '''' + ')' );
        Q_OSESPEC.open  ;

        If Q_OSESPEC.fieldbyname('QTDEReg').asinteger > 0 then begin
           MessageDlg('Qtde. Pallets é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBEdit6.SetFocus;
           Abort;
        end ;
    end ;

    If (wwDBEdit14.text = '') then begin
        Q_OSESPEC.close ;
        Q_OSESPEC.Sql.Clear ;
        Q_OSESPEC.Sql.Add(' SELECT Count(*) as QTDEReg from OS_ESPECIFICACOES ') ;
        Q_OSESPEC.Sql.Add(' where UCOB_ID = ' + '''' + '2' + '''') ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_ID in ') ;
        Q_OSESPEC.Sql.Add('(Select OS_SERVICO_ID from OS_SERVICO  ') ;
        Q_OSESPEC.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring ) ;
        Q_OSESPEC.Sql.Add(' and   TDOC_ID = ' + FOS.Q_TDOCTDOC_ID.asstring) ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_COBRA = ' + '''' + 'S' + '''' + ')' );
        Q_OSESPEC.open  ;

        If Q_OSESPEC.fieldbyname('QTDEReg').asinteger > 0 then begin
           MessageDlg('Volume é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBEdit14.SetFocus;
           Abort;
        end ;
    end ;

    If (wwDBEdit15.text = '') then begin
        Q_OSESPEC.close ;
        Q_OSESPEC.Sql.Clear ;
        Q_OSESPEC.Sql.Add(' SELECT Count(*) as QTDEReg from OS_ESPECIFICACOES ') ;
        Q_OSESPEC.Sql.Add(' where UCOB_ID = ' + '''' + '6' + '''') ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_ID in ') ;
        Q_OSESPEC.Sql.Add('(Select OS_SERVICO_ID from OS_SERVICO  ') ;
        Q_OSESPEC.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring ) ;
        Q_OSESPEC.Sql.Add(' and   TDOC_ID = ' + FOS.Q_TDOCTDOC_ID.asstring) ;
        Q_OSESPEC.Sql.Add(' and   OS_SERVICO_COBRA = ' + '''' + 'S' + '''' + ')' );
        Q_OSESPEC.open  ;

        If Q_OSESPEC.fieldbyname('QTDEReg').asinteger > 0 then begin
           MessageDlg('Qtde. UV é Campo de preenchimento obrigatório ',mtWarning,[mbok],0);
           wwDBEdit15.SetFocus;
           Abort;
        end ;
    end ;


end;

end.

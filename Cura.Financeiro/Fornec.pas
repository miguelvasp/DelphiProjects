unit Fornec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwtable, wwdblook,
  Wwdotdot, Wwdbcomb, ComCtrls, Tabnotbk, wwstorep, ADODB;

type
  TFFornecedores = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Fonte: TDBNavigator;
    Q_FORN: TwwQuery;
    DS_FORN: TwwDataSource;
    UPD_FORN: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    T_UFED: TwwTable;
    DS_UFED: TwwDataSource;
    SBT_REFR: TSpeedButton;
    T_CONT: TwwTable;
    T_CGER: TwwTable;
    DS_CONT: TwwDataSource;
    DS_CGER: TwwDataSource;
    T_CONTCTC_CODI: TStringField;
    T_CONTCTC_DESC: TStringField;
    STP_FORNCGCDUPL: TStoredProc;
    Q_FORNFOR_CGC: TStringField;
    T_UFEDUFE_CODI: TStringField;
    T_UFEDUFE_DESC: TStringField;
    T_CGERCON_CODI: TStringField;
    T_CGERCON_DESC: TStringField;
    T_CGERCON_ENSA: TStringField;
    T_CGERCON_OPER: TStringField;
    T_CGERCON_FLOA: TFloatField;
    T_CGERCON_FLUX: TStringField;
    T_CGERCON_CTCO: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_FORNFOR_IATI: TDateTimeField;
    Q_FORNFOR_PESS: TStringField;
    Q_FORNFOR_INSC: TStringField;
    Q_FORNFOR_ENDE: TStringField;
    Q_FORNFOR_MUNI: TStringField;
    Q_FORNFOR_ESTA: TStringField;
    Q_FORNFOR_EMAI: TStringField;
    Q_FORNFOR_NCON: TStringField;
    Q_FORNFOR_CONT: TStringField;
    Q_FORNFOR_CGER: TStringField;
    Q_FORNFOR_MARK: TFloatField;
    Q_FORNFOR_PENT: TFloatField;
    wwQ_Aux: TwwQuery;
    TabbedNotebook1: TTabbedNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBE_FOR_CODI: TwwDBEdit;
    DBLC_DBE_PESS: TwwDBComboBox;
    DBE_FOR_INIC: TwwDBEdit;
    DBE_FOR_CGC: TwwDBEdit;
    DBE_FOR_INSC: TwwDBEdit;
    DBE_FOR_MUNI: TwwDBEdit;
    DBLC_FOR_ESTA: TwwDBLookupCombo;
    DBE_FOR_CEP: TwwDBEdit;
    DBE_FOR_TELE: TwwDBEdit;
    DBE_FOR_TEL2: TwwDBEdit;
    DBE_FOR_FAX: TwwDBEdit;
    DBE_FOR_EMAI: TwwDBEdit;
    DBE_FOR_NCON: TwwDBEdit;
    DBE_FOR_MARK: TwwDBEdit;
    DBE_FOR_PENT: TwwDBEdit;
    DBLC_FOR_CONT: TwwDBLookupCombo;
    Q_PFAB: TwwQuery;
    DS_PFAB: TwwDataSource;
    Q_PFABPFA_PROD: TStringField;
    Q_PFABPFA_FORN: TStringField;
    Q_PFABPFA_FABR: TStringField;
    Q_PFABPFA_PREC: TFloatField;
    Q_PFABPFA_AIPI: TFloatField;
    Q_PFABPFA_Desconto: TFloatField;
    Panel6: TPanel;
    Label73: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    wwDBLookupCombo14: TwwDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SBT_CONS: TSpeedButton;
    Label24: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label25: TLabel;
    Q_FORNFOR_SEGU: TIntegerField;
    Panel4: TPanel;
    wwDBGrid4: TwwDBGrid;
    Q_PAGA: TwwQuery;
    DS_PAGA: TwwDataSource;
    Q_PAGADocumento: TStringField;
    Q_PAGAVencimento: TDateTimeField;
    Q_PAGASaldo: TFloatField;
    Q_PAGANumero: TIntegerField;
    GroupBox8: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Label71: TLabel;
    Label78: TLabel;
    STP_DIVIDAFORNEC: TwwStoredProc;
    Panel5: TPanel;
    DBMemo1: TDBMemo;
    Q_OFOR: TwwQuery;
    UPD_OFOR: TUpdateSQL;
    DS_OFOR: TwwDataSource;
    Q_OFOROFO_FORN: TStringField;
    Q_OFOROFO_DESC: TMemoField;
    GroupBox3: TGroupBox;
    Label30: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    DBE_CLI_UCOM: TwwDBEdit;
    DBE_CLI_VUCO: TwwDBEdit;
    DBE_CLI_VUCD: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBE_CLI_MCOM: TwwDBEdit;
    DBE_CLI_VMCO: TwwDBEdit;
    DBE_CLI_VMCD: TwwDBEdit;
    Q_FORNFOR_UCOM: TDateTimeField;
    Q_FORNFOR_VUCO: TFloatField;
    Q_FORNFOR_VUCD: TFloatField;
    Q_FORNFOR_MCOM: TDateTimeField;
    Q_FORNFOR_VMCO: TFloatField;
    Q_FORNFOR_VMCD: TFloatField;
    Label26: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Label29: TLabel;
    DBLC_FOR_CGER: TwwDBLookupCombo;
    Label22: TLabel;
    DBE_BAN_CODI: TwwDBEdit;
    Label23: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label31: TLabel;
    wwDBEdit2: TwwDBEdit;
    Q_FORNBAN_ID: TIntegerField;
    Q_FORNAGENCIA: TStringField;
    Q_FORNCONTA: TStringField;
    Q_FORNDESCRICAO: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label32: TLabel;
    Q_BANCO: TwwQuery;
    DS_BANCO: TwwDataSource;
    Q_BANCOBAN_ID: TAutoIncField;
    Q_BANCONUMERO: TIntegerField;
    Q_BANCODESCRICAO: TStringField;
    Panel7: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    Label35: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label36: TLabel;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    Label37: TLabel;
    Q_FBA: TwwQuery;
    DS_FBA: TwwDataSource;
    UPD_FBA: TUpdateSQL;
    Q_FBAFB_ID: TIntegerField;
    Q_FBAFOR_CODI: TStringField;
    wwDBGrid1: TwwDBGrid;
    cboBanco: TwwDBLookupCombo;
    Q_FBAPADRAOSN: TStringField;
    DBCheckBox1: TDBCheckBox;
    Q_FBABAN_ID: TIntegerField;
    Q_FBABAN_CONTA: TStringField;
    Q_B: TwwQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    Q_FBANmBanco: TStringField;
    Q_AUX: TwwQuery;
    T_CGERDS: TStringField;
    pnl1: TPanel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAtualizar: TSpeedButton;
    Q_FBABAN_DIGITOCC: TStringField;
    Q_FBABAN_AGEN: TStringField;
    Label1: TLabel;
    Label38: TLabel;
    qrDescontosFornecedor: TwwQuery;
    Upd_Descontos: TUpdateSQL;
    qrDescontosFornecedorID: TAutoIncField;
    qrDescontosFornecedorFOR_CODI: TStringField;
    qrDescontosFornecedorDIF_CODI: TStringField;
    wwDBGrid2: TwwDBGrid;
    qrDescontos: TwwQuery;
    qrDescontosDIF_CODI: TStringField;
    qrDescontosDIF_DESC: TStringField;
    dsDescontoFornecedor: TDataSource;
    wwDBLookupCombo3: TwwDBLookupCombo;
    qrDescontosFornecedorDesconto: TStringField;
    DBE_FOR_RAZA: TDBEdit;
    DBE_FOR_ENDE: TDBEdit;
    Q_FORNIdCentroCusto: TIntegerField;
    Label39: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    qrCentroCusto: TwwQuery;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoFinancSN: TStringField;
    qrCentrosCusto2: TwwQuery;
    StringField2: TStringField;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    Label40: TLabel;
    wwDBLookupCombo5: TwwDBLookupCombo;
    DBNavigator1: TDBNavigator;
    qrListaCentrosCusto: TADOQuery;
    qrListaCentrosCustoFOR_CODI: TStringField;
    qrListaCentrosCustoCC_Desc: TStringField;
    qrListaCentrosCustoId: TIntegerField;
    qrListaCentrosCustoIdCentroCusto: TIntegerField;
    qrListaCentrosCustoPercentual: TFloatField;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label41: TLabel;
    wwDBGrid3: TwwDBGrid;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_FORNAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DS_FORNStateChange(Sender: TObject);
    procedure Q_FORNAfterDelete(DataSet: TDataSet);
    procedure Q_FORNBeforeDelete(DataSet: TDataSet);
    procedure Q_FORNAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure DBE_FOR_CGCEnter(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure Q_FORNFOR_CGCValidate(Sender: TField);
    procedure DBLC_FOR_ESTAChange(Sender: TObject);
    procedure DBLC_FOR_CONTChange(Sender: TObject);
    procedure DBLC_FOR_CGERChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_CONSClick(Sender: TObject);
    procedure DBE_FOR_CODIExit(Sender: TObject);
    procedure DBE_FOR_INICExit(Sender: TObject);
    procedure DBE_FOR_CGCExit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Q_FORNBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBLookupCombo14KeyPress(Sender: TObject; var Key: Char);
    procedure Q_OFORAfterDelete(DataSet: TDataSet);
    procedure Q_OFORAfterPost(DataSet: TDataSet);
    procedure Q_OFORNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure Q_FBAAfterDelete(DataSet: TDataSet);
    procedure Q_FBAAfterPost(DataSet: TDataSet);
    procedure Q_FBABeforePost(DataSet: TDataSet);
    procedure Q_FBANewRecord(DataSet: TDataSet);
    procedure Q_FORNAfterScroll(DataSet: TDataSet);
    procedure Q_FORNAfterOpen(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure DS_FORNDataChange(Sender: TObject; Field: TField);
    procedure qrDescontosFornecedorBeforePost(DataSet: TDataSet);
    procedure qrDescontosFornecedorAfterPost(DataSet: TDataSet);
    procedure qrDescontosFornecedorAfterDelete(DataSet: TDataSet);
    procedure DBE_FOR_CODIKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_FOR_RAZAKeyPress(Sender: TObject; var Key: Char);
    procedure qrListaCentrosCustoBeforePost(DataSet: TDataSet);
    procedure qrListaCentrosCustoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    sCodigo : String;
  end;

var
  FFornecedores: TFFornecedores;
  dData : TDateTime;
  sCodigo : String;
  RazaoSocial : string;

implementation

uses CppMenu, PesqForn, U_Funcoes, Unt_Splash1;

{$R *.DFM}

procedure TFFornecedores.SBT_SAIRClick(Sender: TObject);
begin
     FFornecedores.Close;
end;

procedure TFFornecedores.Q_FORNAfterPost(DataSet: TDataSet);
Var
   sCodigo   : String ;
   SQL       : String;
begin
   sCodigo := Q_FORNFOR_CODI.AsString;
   try
      FMenu.DATABASE1.ApplyUpdates([Q_FORN])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   DBE_FOR_CODI.Enabled := false;
{
   Q_FORN.Close;
   Q_FORN.Open;
   Q_FORN.locate('FOR_CODI',sCodigo,[loCaseInsensitive]);
}

   Q_FORN.SQL.Clear;
   Q_FORN.SQL.Add('SELECT FOR_CODI,FOR_RAZA,FOR_IATI,FOR_PESS, ');
   Q_FORN.SQL.Add('FOR_CGC,FOR_INSC,FOR_ENDE,FOR_MUNI,FOR_ESTA,FOR_CEP, ');
   Q_FORN.SQL.Add('FOR_TEL1,FOR_TEL2,FOR_FAX,FOR_EMAI,FOR_NCON,FOR_CONT, ');
   Q_FORN.SQL.Add('FOR_CGER,FOR_MARK,FOR_PENT,FOR_SEGU,FOR_UCOM,FOR_VUCO, ');
   Q_FORN.SQL.Add('FOR_VUCD,FOR_MCOM,FOR_VMCO,FOR_VMCD, BAN_ID, AGENCIA,CONTA,DESCRICAO, IdCentroCusto ');
   Q_FORN.SQL.Add('FROM CPAFORN WHERE FOR_CODI LIKE ' );
   Q_FORN.SQL.Add('''' +sCodigo +'''' +' ORDER BY FOR_CODI ');
   Q_FORN.Open;

end;

procedure TFFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_FORN.Close;
   Q_FBA.CLOSE;
   Q_BANCO.CLOSE;
   Q_OFOR.CLOSE;
   Q_PAGA.CLOSE;
   Q_B.CLOSE;
   Q_PFAB.CLOSE;
   T_UFED.Close;
   T_CONT.close;
   T_CGER.Close;
   Action := caFree;
end;

procedure TFFornecedores.DS_FORNStateChange(Sender: TObject);
begin
   if (Q_FORN.State = dsEdit) or (Q_FORN.State = dsInsert) then
     begin
        SBT_SAIR.Enabled := false;
        SBT_REFR.Enabled := false;
        if Q_FORN.State = dsEdit then
          begin
            LBL_STATUS.Caption := 'ALTERA��O';
          end
        else
          begin
            LBL_STATUS.Caption := 'INCLUS�O';
            DBE_FOR_CODI.Enabled := true;
            DBE_FOR_CODI.SetFocus;
          end;
        LBL_STATUS.Visible := true;
     end
   else
     begin
        SBT_SAIR.Enabled := true;
        SBT_REFR.Enabled := true;
        LBL_STATUS.Visible := false;
     end;
end;

procedure TFFornecedores.Q_FORNAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_FORN]);
    end;
  except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
  end;
end;

procedure TFFornecedores.Q_FORNBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclus�o ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFFornecedores.Q_FORNAfterCancel(DataSet: TDataSet);
begin
  DBE_FOR_CODI.Enabled := false;
end;

procedure TFFornecedores.SBT_REFRClick(Sender: TObject);
begin
     Q_FORN.close;
     Q_FBA.CLOSE;
     T_UFED.close;
     T_CONT.close;
     T_CGER.close;
     Q_FORN.Open;
     Q_FBA.OPEN;
     T_UFED.Open;
     T_CONT.Open;
     T_CGER.Open;
end;

procedure TFFornecedores.DBE_FOR_CGCEnter(Sender: TObject);
begin
     if Q_FORNFOR_PESS.AsString = '' then
      begin
         MessageDlg('Preencha o tipo de pessoa antes de preencher o CNPJ/CPF.', mtInformation,
               [mbOk], 0);
         Abort;
      end;

     if (Q_FORNFOR_PESS.AsString = 'F') then
       begin
         Q_FORNFOR_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_FORNFOR_PESS.AsString = 'J') then
             Q_FORNFOR_CGC.EditMask := '99.999.999/9999-99;0;_'
         else
             Q_FORNFOR_CGC.EditMask := '';
       end;
end;

procedure TFFornecedores.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
  sCodigo := Q_FORNFOR_CODI.AsString;
  if (Button in [nbFirst,nbPrior,nbNext,nbLast]) then
   begin
     sCodigo := Q_FORNFOR_CODI.AsString;
     if (Q_FORNFOR_PESS.AsString = 'F') then
       begin
         Q_FORNFOR_CGC.EditMask := '!999.999.999/99;0;_';
       end
     else
       begin
         if (Q_FORNFOR_PESS.AsString = 'J') then
           begin
             Q_FORNFOR_CGC.EditMask := '!999.999.999/9999-99;0;_';
           end
         else
           begin
             Q_FORNFOR_CGC.EditMask := '';
           end;
       end;
   end;

     Case Button Of
          NbInsert : Begin
                        DBE_FOR_INIC.Text := '';
                     End;
          NbPost : Begin
                      FMenu.DATABASE1.ApplyUpdates([Q_FORN]);
                   End;
     End;


end;

procedure TFFornecedores.Q_FORNFOR_CGCValidate(Sender: TField);
var RT : Integer;
begin
  if ((Q_FORNFOR_PESS.AsString = 'J') and (DBE_FOR_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inv�lido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_FORNFOR_PESS.AsString = 'F') and (DBE_FOR_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inv�lido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;

   try
     STP_FORNCGCDUPL.ParamByName('@V_FOR_CODI').AsString := Q_FORNFOR_CODI.AsString;
     STP_FORNCGCDUPL.ParamByName('@V_FOR_CGC').AsString := Q_FORNFOR_CGC.AsString;
     STP_FORNCGCDUPL.ExecProc;
   finally
     RT := STP_FORNCGCDUPL.ParamByName('Result').AsInteger
   end;

   if (RT = 1) then
    begin
      MessageDlg('CGC/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      Abort;
    end;
end;

procedure TFFornecedores.DBLC_FOR_ESTAChange(Sender: TObject);
begin
  if ((DBLC_FOR_ESTA.Text = '') and (DS_FORN.state in [dsInsert,dsEdit])) then
   begin
     Q_FORNFOR_ESTA.Clear;
   end;
end;

procedure TFFornecedores.DBLC_FOR_CONTChange(Sender: TObject);
begin
  if ((DBLC_FOR_CONT.Text = '') and (DS_FORN.state in [dsInsert,dsEdit])) then
   begin
     Q_FORNFOR_CONT.Clear;
   end;

end;

procedure TFFornecedores.DBLC_FOR_CGERChange(Sender: TObject);
begin
  if ((DBLC_FOR_CGER.Text = '') and (DS_FORN.state in [dsInsert,dsEdit])) then
   begin
     Q_FORNFOR_CGER.Clear;
   end;

end;

procedure TFFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
     begin
 //      Key := #0;
       Perform(WM_Nextdlgctl,0,0);
     end;
end;

procedure TFFornecedores.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqForn, FPesqForn);
   FPesqForn.ShowModal;

end;

procedure TFFornecedores.DBE_FOR_CODIExit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClWindow;
   sCodigo :=DBE_FOR_CODI.TEXT;

   if (Q_Forn.State = dsInsert) or (Q_Forn.State = dsEdit) then
      Begin
         With wwQ_Aux do begin
            Close;
            SQL.Clear;
            SQL.Add('Select FOR_CODI from CpaForn');
            SQL.Add('Where FOR_CODI = '+'"'+sCodigo+'"');
            Open;
         End;
         If not wwQ_Aux.Eof then
            Begin
               MessageDlg('Nome fantasia j� cadastrado',MtError,[mbok],0);
               DBE_FOR_CODI.SetFocus;
               Q_FORNFOR_CODI.AsString := '';
               DBE_FOR_CODI.Text := '';
            End;
      End;


end;

procedure TFFornecedores.DBE_FOR_INICExit(Sender: TObject);
begin
if DBE_FOR_INIC.Text <> '  /  /  ' then
   dData := StrToDate(DBE_FOR_INIC.Text);
end;

procedure TFFornecedores.DBE_FOR_CGCExit(Sender: TObject);
var RT : Integer;
begin
  if ((Q_FORNFOR_PESS.AsString = 'J') and (DBE_FOR_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inv�lido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_FORNFOR_PESS.AsString = 'F') and (DBE_FOR_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inv�lido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;

   try
     STP_FORNCGCDUPL.ParamByName('@V_FOR_CODI').AsString := Q_FORNFOR_CODI.AsString;
     STP_FORNCGCDUPL.ParamByName('@V_FOR_CGC').AsString := Q_FORNFOR_CGC.AsString;
     STP_FORNCGCDUPL.ExecProc;
   finally
     RT := STP_FORNCGCDUPL.ParamByName('Result').AsInteger
   end;

   if (RT = 1) then
    begin
      MessageDlg('CNPJ/CPF em Duplicidade.',mtInformation,[mbOk], 0);
      Abort;
    end;

end;

procedure TFFornecedores.FormPaint(Sender: TObject);
Var
   i : Integer;
begin
//
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 6;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                     Dfm_Splash1.Gauge1.Progress := 1;
                     T_CGER.Open;

                     Dfm_Splash1.Gauge1.Progress := 2;
                     T_CONT.Open;

                     Dfm_Splash1.Gauge1.Progress := 3;
                     T_UFED.Open;

                     Dfm_Splash1.Gauge1.Progress := 4;
                     Q_PAGA.Open;
                     Q_B.OPEN;
                     qrDescontos.Open;
                     qrCentroCusto.Open;
                     qrCentrosCusto2.Open;

                     Dfm_Splash1.Gauge1.Progress := 5;
                     Q_OFOR.Open;

                     Dfm_Splash1.Gauge1.Progress := 6;
                     Q_FORN.SQL.Clear;
                     Q_FORN.SQL.Add('SELECT FOR_CODI,FOR_RAZA,FOR_IATI,FOR_PESS, ');
                     Q_FORN.SQL.Add('FOR_CGC,FOR_INSC,FOR_ENDE,FOR_MUNI,FOR_ESTA,FOR_CEP, ');
                     Q_FORN.SQL.Add('FOR_TEL1,FOR_TEL2,FOR_FAX,FOR_EMAI,FOR_NCON,FOR_CONT, ');
                     Q_FORN.SQL.Add('FOR_CGER,FOR_MARK,FOR_PENT,FOR_SEGU,FOR_UCOM,FOR_VUCO, ');
                     Q_FORN.SQL.Add('FOR_VUCD,FOR_MCOM,FOR_VMCO,FOR_VMCD, BAN_ID, AGENCIA,CONTA,DESCRICAO, IdCentroCusto ');
                     Q_FORN.SQL.Add('FROM CPAFORN WHERE FOR_CODI LIKE ' );
                     Q_FORN.SQL.Add('''' +CODIGOFORN +'''' +' ORDER BY FOR_CODI ');
                     Q_FORN.Open;
                     Q_FBA.OPEN;



//
                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
             If Self.Tag = 2 Then Self.Close;
        End;


        Q_BANCO.OPEN;


        if (DBE_FOR_CODI.Enabled) AND (TabbedNotebook1.PageIndex <> 4) then
           DBE_FOR_CODI.SetFocus;
end;


procedure TFFornecedores.Q_FORNBeforePost(DataSet: TDataSet);
begin
   If DBE_FOR_CODI.Text = '' then Begin
      MessageDlg('Nome Fantasia � Campo de preenchimento obrigat�rio',mtWarning,[mbok],0);
      Abort;
   End;
   If DBLC_DBE_PESS.Text = '' then Begin
      MessageDlg('F/J/E � Campo de preenchimento obrigat�rio',mtWarning,[mbok],0);
      DBLC_DBE_PESS.SetFocus;
      Abort;
   End;
   If DBE_FOR_ENDE.Text = '' then Begin
      MessageDlg('Endere�o � Campo de preenchimento obrigat�rio',mtWarning,[mbok],0);
      DBE_FOR_ENDE.SetFocus;
      Abort;
   End;
   If DBE_FOR_MUNI.Text = '' then Begin
      MessageDlg('Munic�pio � Campo de preenchimento obrigat�rio',mtWarning,[mbok],0);
      DBE_FOR_MUNI.SetFocus;
      Abort;
   End;
   If DBLC_FOR_ESTA.Text = '' then Begin
      MessageDlg('UF � Campo de preenchimento obrigat�rio',mtWarning,[mbok],0);
      DBLC_FOR_ESTA.SetFocus;
      Abort;
   End;

     if ((Q_FORNFOR_PESS.AsString = 'J') and (DBE_FOR_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inv�lido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_FORNFOR_PESS.AsString = 'F') and (DBE_FOR_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inv�lido.',mtInformation,[mbOk], 0);
           Abort;
         end;
      end;
   end;



  if RazaoSocial <>  Q_FORNFOR_RAZA.Value then
  Begin
     with Q_AUX do
     Begin
        close;
        sql.clear;
        sql.add('update cpapaga set razao = :razao ' +
                ' where razao = :razaoA ');
        Params[0].asstring := Q_FORNFOR_RAZA.Value;
        params[1].asstring := RazaoSocial;
        ExecSQL;
     End;
   End;

end;



procedure TFFornecedores.FormCreate(Sender: TObject);
begin
  TabbedNotebook1.pageindex := 0;
end;

procedure TFFornecedores.TabbedNotebook1Click(Sender: TObject);
begin
  Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbPost,nbCancel]);
  if TabbedNotebook1.pageindex = 1 then begin
     Fonte.Datasource := DS_PFAB ;
     Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
     Dfm_Splash1.label1.caption := 'Aguarde...                    Selecionando Dados ';
     Dfm_Splash1.Gauge1.MaxValue := 1;
     Dfm_Splash1.Show;
     Dfm_Splash1.RePaint;
     Self.Repaint;
     Dfm_Splash1.Gauge1.Progress := 2;
     Q_PFAB.close;
     Q_PFAB.SQL.clear;
     Q_PFAB.SQL.Add('Select * from SIAPFAB' ) ;
     Q_PFAB.SQL.Add('where PFA_FORN = ' + '''' + Q_FORNFOR_CODI.asstring + '''' );
     Q_PFAB.open;
     Dfm_Splash1.Close;
     Dfm_Splash1.Release;
//     wwDBGrid1.visible := true ;
     Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbCancel]) ;
  end ;
  if TabbedNotebook1.pageindex = 0 then begin
      Fonte.Datasource := DS_FORN ;
//      wwDBGrid1.visible := false ;
  end;
  if TabbedNotebook1.pageindex = 1 then begin
      try
        STP_DIVIDAFORNEC.ParamByName('@Fornecedor').Asstring := Q_FORNFOR_CODI.Asstring ;
        STP_DIVIDAFORNEC.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
        STP_DIVIDAFORNEC.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
        STP_DIVIDAFORNEC.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
        STP_DIVIDAFORNEC.ExecProc;
      finally
      end;
      Label67.caption := inttostr(STP_DIVIDAFORNEC.Parambyname('@NumeroDuplicatas').asinteger );
      Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaReais').asfloat );
      Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaDolar').asfloat );
      Fonte.Datasource := DS_PAGA ;
  end;

  if TabbedNotebook1.pageindex = 2 then
  Begin
          Fonte.Datasource := DS_OFOR ;
          Q_OFOR.CLOSE;
          Q_OFOR.OPEN;
  End;

  if TabbedNotebook1.pageindex = 3 then
  Begin
          Fonte.Datasource := DS_FBA ;
          Q_FBA.CLOSE;
          Q_FBA.OPEN;
  End;

  if TabbedNotebook1.pageindex = 4 then
  begin
      Fonte.DataSource := dsDescontoFornecedor;
  end;


end;


procedure TFFornecedores.SpeedButton1Click(Sender: TObject);
begin
   // Ajusta o posicionamento do Panel de Localiza��o r�pida
  // Panel6.Top := 74;
  // Panel6.Left := 200;
  // Panel6.width := 297;
  // Panel6.Height := 41;
   Panel2.enabled := false;
   Panel1.enabled := false;
   TabbedNotebook1.enabled := false ;
   Panel6.enabled := true ;
   Panel6.visible := true ;
   wwDBLookupCombo14.setfocus ;


end;

procedure TFFornecedores.SpeedButton6Click(Sender: TObject);
begin
   if wwDBLookupCombo14.text <> '' then
      wwDBLookupCombo14.text := '' ;
   TabbedNotebook1.enabled := true;
   Panel6.visible := false ;
   Panel2.enabled := true ;
   Panel1.enabled := true;
   try
     STP_DIVIDAFORNEC.ParamByName('@Fornecedor').Asstring := Q_FORNFOR_CODI.Asstring ;
     STP_DIVIDAFORNEC.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
     STP_DIVIDAFORNEC.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
     STP_DIVIDAFORNEC.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
     STP_DIVIDAFORNEC.ExecProc;
   finally
   end;
   Label67.caption := inttostr(STP_DIVIDAFORNEC.Parambyname('@NumeroDuplicatas').asinteger );
   Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaReais').asfloat );
   Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaDolar').asfloat );

end;

procedure TFFornecedores.SpeedButton5Click(Sender: TObject);
begin
   Panel6.visible := false ;
   TabbedNotebook1.enabled := true;
   Panel2.enabled := true ;
   Panel1.enabled := true;
end;

procedure TFFornecedores.wwDBLookupCombo14KeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then begin
      if wwDBLookupCombo14.text <> '' then
         wwDBLookupCombo14.text := '' ;
      TabbedNotebook1.enabled := true;
      Panel6.visible := false ;
      Panel2.enabled := true ;
      Panel1.enabled := true;
      try
        STP_DIVIDAFORNEC.ParamByName('@Fornecedor').Asstring := Q_FORNFOR_CODI.Asstring ;
        STP_DIVIDAFORNEC.ParamByName('@NumeroDuplicatas').Asinteger := 0 ;
        STP_DIVIDAFORNEC.ParamByName('@ValorDividaReais').Asfloat   := 0 ;
        STP_DIVIDAFORNEC.ParamByName('@ValorDividaDolar').asfloat   := 0 ;
        STP_DIVIDAFORNEC.ExecProc;
      finally
      end;
      Label67.caption := inttostr(STP_DIVIDAFORNEC.Parambyname('@NumeroDuplicatas').asinteger );
      Label71.caption := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaReais').asfloat );
      Label78.caption := formatfloat('###,###,##0.00',STP_DIVIDAFORNEC.Parambyname('@ValorDividaDolar').asfloat );
   end ;
end;

procedure TFFornecedores.Q_OFORAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_OFOR]);
    end;
  except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
  end;

end;

procedure TFFornecedores.Q_OFORAfterPost(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_OFOR]);
    end;
  except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
  end;
end;

procedure TFFornecedores.Q_OFORNewRecord(DataSet: TDataSet);
begin
  Q_OFOROFO_FORN.asstring := Q_FORNFOR_CODI.Asstring ;
end;

procedure TFFornecedores.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFFornecedores.DBMemo1Change(Sender: TObject);
var txt:string;
begin
        txt := 'tst';
end;

procedure TFFornecedores.Q_FBAAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_FBA]);
    end;
  except
     On E:EdbEngineError do
        begin
           MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
           E.Message,MtError,[MbOk],0);
        end;
  end;

end;

procedure TFFornecedores.Q_FBAAfterPost(DataSet: TDataSet);
Var
   sCodigo   : String ;
   SQL : String;
begin
   sCodigo := Q_FBAFB_ID.AsString;

   //Faz com que os outros bancos n�o sejam padr�o, caso este seja.
   //Se nenhum banco for padr�o, quando for buscar no Sispag pego o primeiro banco
   //da lista, mesmo pq a pessoa pode mudar os bancos de fornecedor na hora do pagamento.

   try
      FMenu.DATABASE1.ApplyUpdates([Q_FBA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_FBA.Close;
   Q_FBA.Open;

   If sCodigo = '' then
   Begin
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(' SELECT          MAX(FB_ID) FB_ID ' +
                      ' FROM            FORNECEDOR_BANCO ');
        Q_AUX.OPEN;
        sCodigo := Q_AUX.FieldByName('FB_ID').AsString;
   End;

   Q_FBA.locate('FB_ID',sCodigo,[loCaseInsensitive]);

   If Q_FBAPADRAOSN.AsString = 'S' then
   Begin
        SQL :=  ' UPDATE        FORNECEDOR_BANCO ' +
                ' SET           PADRAOSN = ''N''' +
                ' WHERE         FOR_CODI = ''' + Q_FBAFor_Codi.AsString + '''' +
                ' AND           FB_ID <> ' + Q_FBAFB_ID.AsString;

        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.EXECSQL;

        Q_FBA.Close;
        Q_FBA.Open;
        Q_FBA.locate('FB_ID',sCodigo,[loCaseInsensitive]);
   End;

end;

procedure TFFornecedores.Q_FBABeforePost(DataSet: TDataSet);
var SQL:String;
begin
   If Q_FBABAN_ID.AsString = '' then Begin
      MessageDlg('O c�digo do banco � de preenchimento obrigat�rio.',mtWarning,[mbok],0);
      Abort;
   End;
   If Q_FBABAN_AGEN.AsString = '' then Begin
      MessageDlg('O N�mero da Agencia � de preenchimento obrigat�rio.',mtWarning,[mbok],0);
      Abort;
   End;
   If Q_FBABAN_CONTA.AsString = '' then Begin
      MessageDlg('O N�mero da Conta Corrente � de preenchimento obrigat�rio.',mtWarning,[mbok],0);
      Abort;
   End;

   if Q_FBABAN_DIGITOCC.AsString = '' then
   begin
      MessageDlg('O Digito da Conta Corrente � de preenchimento obrigat�rio.',mtWarning,[mbok],0);
      Abort;
   end;

end;

procedure TFFornecedores.Q_FBANewRecord(DataSet: TDataSet);
begin
        Q_FBAFOR_CODI.AsString := Q_FORNFOR_CODI.AsString;
        Q_FBAPADRAOSN.AsString := 'N';
end;

procedure TFFornecedores.Q_FORNAfterScroll(DataSet: TDataSet);
begin
     if (Q_FORNFOR_PESS.AsString = 'F') then
       begin
         Q_FORNFOR_CGC.EditMask := '999.999.999/99;0;_';
       end
     else
       begin
         if (Q_FORNFOR_PESS.AsString = 'J') then
             Q_FORNFOR_CGC.EditMask := '99.999.999/9999-99;0;_'
         else
             Q_FORNFOR_CGC.EditMask := '';
       end;
end;

procedure TFFornecedores.Q_FORNAfterOpen(DataSet: TDataSet);
begin
  RazaoSocial := Q_FORNFOR_RAZA.value;
end;

procedure TFFornecedores.btnAddClick(Sender: TObject);
begin
  DBE_FOR_CODI.Enabled := True;
  Fonte.BtnClick(nbInsert);
  DBE_FOR_CODI.SetFocus;
end;

procedure TFFornecedores.btnAtualizarClick(Sender: TObject);
begin
  Fonte.BtnClick(nbRefresh);
end;

procedure TFFornecedores.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFFornecedores.btnDeleteClick(Sender: TObject);
begin
   Fonte.BtnClick(nbDelete);
end;

procedure TFFornecedores.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFFornecedores.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFFornecedores.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFFornecedores.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
  Fonte.BtnClick(nbPost);
  DBE_FOR_CODI.Enabled := False;
  end;
end;

procedure TFFornecedores.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

procedure TFFornecedores.DS_FORNDataChange(Sender: TObject; Field: TField);
begin
        qrDescontosFornecedor.Close;
        qrDescontosFornecedor.Open;
        qrListaCentrosCusto.Close;
        qrListaCentrosCusto.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
        qrListaCentrosCusto.Open;
end;

procedure TFFornecedores.qrDescontosFornecedorBeforePost(
  DataSet: TDataSet);
begin
  qrDescontosFornecedorFOR_CODI.Value := Q_FORNFOR_CODI.Value;
end;

procedure TFFornecedores.qrDescontosFornecedorAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([qrDescontosFornecedor]);
  end;
  except
    begin
      qrDescontosFornecedor.RevertRecord;
    end;
  end;

  qrDescontosFornecedor.Close;
  qrDescontosFornecedor.Open;
  qrDescontosFornecedor.Append;
end;

procedure TFFornecedores.qrDescontosFornecedorAfterDelete(
  DataSet: TDataSet);
begin
        qrDescontosFornecedor.Close;
        qrDescontosFornecedor.Open;
end;

procedure TFFornecedores.DBE_FOR_CODIKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #39 then begin
          showmessage('N�o � permitida a inclus�o do caracter ap�strofo, favor substitu�-lo ');
          DBE_FOR_CODI.Text := '';
       end;
end;

procedure TFFornecedores.DBE_FOR_RAZAKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #39 then begin
          showmessage('N�o � permitida a inclus�o do caracter ap�strofo, favor substitu�-lo ');
          DBE_FOR_RAZA.Text := '';
       end;
end;

procedure TFFornecedores.qrListaCentrosCustoBeforePost(DataSet: TDataSet);
begin
  qrListaCentrosCustoFOR_CODI.Value := Q_FORNFOR_CODI.Value;
end;

procedure TFFornecedores.qrListaCentrosCustoAfterPost(DataSet: TDataSet);
begin
 qrListaCentrosCusto.Close;
 qrListaCentrosCusto.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
 qrListaCentrosCusto.Open;
end;

end.

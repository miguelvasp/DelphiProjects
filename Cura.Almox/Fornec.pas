unit Fornec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwtable, wwdblook,
  Wwdotdot, Wwdbcomb, ComCtrls, Tabnotbk, wwstorep, wwDialog, wwidlg,
  ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, ADODB, RzTabs,
  DBCGrids;

type
  TFFornecedores = class(TForm)
    Panel1: TPanel;
    Fonte2: TDBNavigator;
    Q_FORN: TwwQuery;
    DS_FORN: TwwDataSource;
    UPD_FORN: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    Q_FORNFOR_CEP: TStringField;
    Q_FORNFOR_TEL1: TStringField;
    Q_FORNFOR_TEL2: TStringField;
    Q_FORNFOR_FAX: TStringField;
    T_UFED: TwwTable;
    DS_UFED: TwwDataSource;
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
    Q_PFAB: TwwQuery;
    DS_PFAB: TwwDataSource;
    Q_PFABPFA_PROD: TStringField;
    Q_PFABPFA_FORN: TStringField;
    Q_PFABPFA_FABR: TStringField;
    Q_PFABPFA_PREC: TFloatField;
    Q_PFABPFA_AIPI: TFloatField;
    Q_PFABPFA_Desconto: TFloatField;
    SBT_PES: TSpeedButton;
    Q_FORNFOR_SEGU: TIntegerField;
    Q_PAGA: TwwQuery;
    DS_PAGA: TwwDataSource;
    Q_PAGADocumento: TStringField;
    Q_PAGAVencimento: TDateTimeField;
    Q_PAGASaldo: TFloatField;
    Q_PAGANumero: TIntegerField;
    STP_DIVIDAFORNEC: TwwStoredProc;
    Q_OFOR: TwwQuery;
    UPD_OFOR: TUpdateSQL;
    DS_OFOR: TwwDataSource;
    Q_OFOROFO_FORN: TStringField;
    Q_OFOROFO_DESC: TMemoField;
    Q_FORNFOR_UCOM: TDateTimeField;
    Q_FORNFOR_VUCO: TFloatField;
    Q_FORNFOR_VUCD: TFloatField;
    Q_FORNFOR_MCOM: TDateTimeField;
    Q_FORNFOR_VMCO: TFloatField;
    Q_FORNFOR_VMCD: TFloatField;
    SBT_REL: TSpeedButton;
    PESQ_FORN: TwwSearchDialog;
    Q_PSQFORN: TwwQuery;
    Q_PSQFORNFOR_CODI: TStringField;
    Q_PSQFORNFOR_RAZA: TStringField;
    Q_PSQFORNFOR_PESS: TStringField;
    Q_PSQFORNFOR_CGC: TStringField;
    Q_PSQFORNFOR_INSC: TStringField;
    Q_PSQFORNFOR_ENDE: TStringField;
    Q_PSQFORNFOR_MUNI: TStringField;
    Q_PSQFORNFOR_ESTA: TStringField;
    Q_PSQFORNFOR_CEP: TStringField;
    Q_PSQFORNFOR_TEL1: TStringField;
    Q_PSQFORNFOR_TEL2: TStringField;
    Q_PSQFORNFOR_FAX: TStringField;
    Q_PSQFORNFOR_EMAI: TStringField;
    Q_PSQFORNFOR_NCON: TStringField;
    Q_PSQFORNFOR_CONT: TStringField;
    Q_PSQFORNFOR_IATI: TDateTimeField;
    Q_PSQFORNFOR_CGER: TStringField;
    Q_PSQFORNFOR_MARK: TFloatField;
    Q_PSQFORNFOR_PENT: TFloatField;
    Q_PSQFORNFOR_SEGU: TIntegerField;
    Q_PSQFORNFOR_UCOM: TDateTimeField;
    Q_PSQFORNFOR_VUCO: TFloatField;
    Q_PSQFORNFOR_VUCD: TFloatField;
    Q_PSQFORNFOR_MCOM: TDateTimeField;
    Q_PSQFORNFOR_VMCO: TFloatField;
    Q_PSQFORNFOR_VMCD: TFloatField;
    Q_PSQFORNFOR_AnaIndividual: TStringField;
    Q_PSQFORNFOR_DIMP: TFloatField;
    Q_PSQFORNFOR_DACE: TFloatField;
    SBT_REFR: TSpeedButton;
    Q_FORNFOR_OBS: TStringField;
    qrUpdate: TwwQuery;
    ImageList1: TImageList;
    Q_FORNF_ALMOX: TStringField;
    Label1: TLabel;
    qrFornecedorDocumentos: TADOQuery;
    dsFornecedorDocumento: TDataSource;
    qrDocumentos: TADOQuery;
    qrDocumentosDOC_ID: TAutoIncField;
    qrDocumentosDOC_DESC: TStringField;
    qrAuxDocs: TADOQuery;
    qrAuxDocsDOC_ID: TAutoIncField;
    qrAuxDocsDOC_DESC: TStringField;
    qrFornecedorDocumentosID: TAutoIncField;
    qrFornecedorDocumentosFOR_CODI: TStringField;
    qrFornecedorDocumentosDOC_ID: TIntegerField;
    qrFornecedorDocumentosVENCIMENTO: TDateTimeField;
    qrFornecedorDocumentosDocumento: TStringField;
    qrFornecedorDocumentosOBS: TStringField;
    Q_FORNControlaDocumentos: TStringField;
    qrConsultaFornDocs: TADOQuery;
    qrConsultaFornDocsDOC_DESC: TStringField;
    qrConsultaFornDocsID: TAutoIncField;
    qrConsultaFornDocsFOR_CODI: TStringField;
    qrConsultaFornDocsDOC_ID: TIntegerField;
    qrConsultaFornDocsVENCIMENTO: TDateTimeField;
    qrConsultaFornDocsOBS: TStringField;
    DataSource1: TDataSource;
    qrAvaliaForn: TADOQuery;
    qrAvaliaFornID: TAutoIncField;
    qrAvaliaFornFOR_CODI: TStringField;
    qrAvaliaFornQ1: TStringField;
    qrAvaliaFornQ2: TStringField;
    qrAvaliaFornQ3: TStringField;
    qrAvaliaFornQ4: TStringField;
    qrAvaliaFornQ5: TStringField;
    qrAvaliaFornQ6: TStringField;
    qrAvaliaFornQ7: TStringField;
    qrAvaliaFornQ8: TStringField;
    qrAvaliaFornQ9: TStringField;
    qrAvaliaFornQ10: TStringField;
    qrAvaliaFornQ11: TStringField;
    qrAvaliaFornQ12: TStringField;
    qrAvaliaFornRESULTADO: TStringField;
    qrAvaliaFornDATA: TDateTimeField;
    qrAvaliaFornTOTAL: TStringField;
    qrAvaliaFornMEDIA: TStringField;
    qrAvaliaFornPARECER: TStringField;
    qrAvaliaFornAVALIADOR: TStringField;
    dsAvaliaForn: TDataSource;
    fonte: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fonteEdit: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    qrForContato: TADOQuery;
    qrForContatoid: TAutoIncField;
    qrForContatoFOR_CODI: TStringField;
    qrForContatoDATA: TDateTimeField;
    qrForContatoOBS: TStringField;
    dsForContato: TDataSource;
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
    Label24: TLabel;
    Label25: TLabel;
    Label22: TLabel;
    DBE_FOR_CODI: TwwDBEdit;
    DBLC_DBE_PESS: TwwDBComboBox;
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
    wwDBEdit3: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    DBLC_FOR_CGER: TwwDBLookupCombo;
    DBE_FOR_INIC: TwwDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBE_FOR_RAZA: TDBEdit;
    DBE_FOR_ENDE: TDBEdit;
    Panel5: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    DBMemo1: TDBMemo;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    wwDBGrid1: TwwDBGrid;
    cboDoc: TwwDBLookupCombo;
    DBEdit1: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    Label30: TLabel;
    DBText1: TDBText;
    Label31: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBCtrlGrid1: TDBCtrlGrid;
    Label40: TLabel;
    DBEdit6: TDBEdit;
    DBMemo2: TDBMemo;
    Button1: TButton;
    qrAvaliaFornpAtende: TFloatField;
    qrAvaliaFornpRestricao: TFloatField;
    qrAvaliaFornpNaoAtende: TFloatField;
    Label32: TLabel;
    lbresultado: TLabel;
    Memo1: TMemo;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_FORNAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DS_FORNStateChange(Sender: TObject);
    procedure Q_FORNAfterDelete(DataSet: TDataSet);
    procedure Q_FORNBeforeDelete(DataSet: TDataSet);
    procedure DBE_FOR_CGCEnter(Sender: TObject);
    procedure Fonte2Click(Sender: TObject; Button: TNavigateBtn);
    procedure Q_FORNFOR_CGCValidate(Sender: TField);
    procedure DBLC_FOR_ESTAChange(Sender: TObject);
    procedure DBLC_FOR_CONTChange(Sender: TObject);
    procedure DBLC_FOR_CGERChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_CONSClick(Sender: TObject);
    procedure DBE_FOR_CODIExit(Sender: TObject);
    procedure DBE_FOR_INICExit(Sender: TObject);
    procedure DBE_FOR_CGCExit(Sender: TObject);
    procedure Q_FORNBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SBT_PESClick(Sender: TObject);
    procedure Q_OFORAfterDelete(DataSet: TDataSet);
    procedure Q_OFORAfterPost(DataSet: TDataSet);
    procedure Q_OFORNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBE_FOR_CODIEnter(Sender: TObject);
    procedure DBE_FOR_RAZAEnter(Sender: TObject);
    procedure DBE_FOR_INICEnter(Sender: TObject);
    procedure DBE_FOR_INSCEnter(Sender: TObject);
    procedure DBE_FOR_ENDEEnter(Sender: TObject);
    procedure DBE_FOR_MUNIEnter(Sender: TObject);
    procedure DBE_FOR_CEPEnter(Sender: TObject);
    procedure DBE_FOR_TELEEnter(Sender: TObject);
    procedure DBE_FOR_TEL2Enter(Sender: TObject);
    procedure DBE_FOR_FAXEnter(Sender: TObject);
    procedure DBE_FOR_EMAIEnter(Sender: TObject);
    procedure DBE_FOR_NCONEnter(Sender: TObject);
    procedure DBE_FOR_PENTEnter(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure DBE_FOR_RAZAExit(Sender: TObject);
    procedure DBE_FOR_INSCExit(Sender: TObject);
    procedure DBE_FOR_ENDEExit(Sender: TObject);
    procedure DBE_FOR_MUNIExit(Sender: TObject);
    procedure DBE_FOR_CEPExit(Sender: TObject);
    procedure DBE_FOR_TELEExit(Sender: TObject);
    procedure DBE_FOR_TEL2Exit(Sender: TObject);
    procedure DBE_FOR_FAXExit(Sender: TObject);
    procedure DBE_FOR_EMAIExit(Sender: TObject);
    procedure DBE_FOR_NCONExit(Sender: TObject);
    procedure DBE_FOR_PENTExit(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBLC_DBE_PESSEnter(Sender: TObject);
    procedure DBLC_FOR_CONTEnter(Sender: TObject);
    procedure DBLC_FOR_CGEREnter(Sender: TObject);
    procedure DBLC_DBE_PESSExit(Sender: TObject);
    procedure DBLC_FOR_CONTExit(Sender: TObject);
    procedure DBLC_FOR_CGERExit(Sender: TObject);
    procedure Q_FORNAfterCancel(DataSet: TDataSet);
    procedure SBT_RELClick(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_FORNAfterOpen(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure DS_FORNDataChange(Sender: TObject; Field: TField);
    procedure qrFornecedorDocumentosAfterPost(DataSet: TDataSet);
    procedure qrFornecedorDocumentosNewRecord(DataSet: TDataSet);
    procedure dsFornecedorDocumentoDataChange(Sender: TObject;
      Field: TField);
    procedure qrFornecedorDocumentosAfterOpen(DataSet: TDataSet);
    procedure qrAvaliaFornNewRecord(DataSet: TDataSet);
    procedure qrAvaliaFornBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure qrForContatoNewRecord(DataSet: TDataSet);
    procedure dsAvaliaFornDataChange(Sender: TObject; Field: TField);
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
  ForCodix : String;
  Razao : String;

implementation

uses UMenu, PesqForn, U_Funcoes, Unt_Splash1, URelFornecedores, UPesq_Forn,
  ufrmRelAvaliaForn{, Unt_Splash1};

{$R *.DFM}

procedure TFFornecedores.SBT_SAIRClick(Sender: TObject);
begin
     FFornecedores.Close;
end;

procedure TFFornecedores.Q_FORNAfterPost(DataSet: TDataSet);
Var
   sCodigo   : String ;
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
   Q_FORN.Close;
   Q_FORN.Open;
   Q_FORN.locate('FOR_CODI',sCodigo,[loCaseInsensitive]);




end;

procedure TFFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_FORN.Close;
   T_UFED.Close;
   T_CONT.close;
   T_CGER.Close;
   Action := caFree;
end;

procedure TFFornecedores.DS_FORNStateChange(Sender: TObject);
begin
   IF (Q_FORN.State = dsEdit) or (Q_FORN.State = dsInsert) THEN
                begin

                        if Q_FORN.State = dsEdit then
                                begin
                              //  LBL_STATUS.Caption := 'ALTERAÇÃO';
                                end
                                else
                                begin
                           //     LBL_STATUS.Caption := 'INCLUSÃO';
                                DBE_FOR_CODI.Enabled := true;
                                DBE_FOR_CODI.SetFocus;
                        end;
                             //   LBL_STATUS.Visible := true;
     end
   ELSE
     begin
      // LBL_STATUS.Visible := false;
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
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFFornecedores.DBE_FOR_CGCEnter(Sender: TObject);
begin
     (Sender as TwwDBEdit).Color := ClAqua;
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

procedure TFFornecedores.Fonte2Click(Sender: TObject; Button: TNavigateBtn);
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
       MessageDlg('CGC Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_FORNFOR_PESS.AsString = 'F') and (DBE_FOR_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
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
               MessageDlg('Nome fantasia já cadastrado',MtError,[mbok],0);
               DBE_FOR_CODI.SetFocus;
               Q_FORNFOR_CODI.AsString := '';
               DBE_FOR_CODI.Text := '';
            End;
      End;


end;

procedure TFFornecedores.DBE_FOR_INICExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
        if DBE_FOR_INIC.Text <> '  /  /    ' then
                dData := StrToDate(DBE_FOR_INIC.Text);
        end;

procedure TFFornecedores.DBE_FOR_CGCExit(Sender: TObject);
var RT : Integer;
begin
   (Sender as TwwDBedit).Color := clwindow;
   if ((Q_FORNFOR_PESS.AsString = 'J') and (DBE_FOR_CGC.Text <> '')) then
   begin
    if not (FMenu.CGC(DBE_FOR_CGC.Text)) then
      begin
       MessageDlg('CGC Inválido.',mtInformation,[mbOk], 0);
       Abort;
      end;
   end
 else
   begin
     if ((Q_FORNFOR_PESS.AsString = 'F') and (DBE_FOR_CGC.Text <> '')) then
      begin
       if not (FMenu.CPF(DBE_FOR_CGC.Text)) then
         begin
           MessageDlg('CPF Inválido.',mtInformation,[mbOk], 0);
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

procedure TFFornecedores.Q_FORNBeforePost(DataSet: TDataSet);
begin
   If DBE_FOR_CODI.Text = '' then Begin
      MessageDlg('Nome Fantasia é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FOR_CODI.SetFocus;
      Abort;
   End;
   If DBLC_DBE_PESS.Text = '' then Begin
      MessageDlg('F/J/E é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBLC_DBE_PESS.SetFocus;
      Abort;
   End;

   If DBE_FOR_ENDE.Text = '' then Begin
      MessageDlg('Endereço é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FOR_ENDE.SetFocus;
      Abort;
   End;
   If DBE_FOR_MUNI.Text = '' then Begin
      MessageDlg('Município é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBE_FOR_MUNI.SetFocus;
      Abort;
   End;
   If DBLC_FOR_ESTA.Text = '' then Begin
      MessageDlg('UF é Campo de preenchimento obrigatório',mtWarning,[mbok],0);
      DBLC_FOR_ESTA.SetFocus;
      Abort;
   End;

   if Razao <> Q_FORNFOR_RAZA.Value then
   Begin
       with qrUpdate do
        begin
          close;
          sql.clear;
          sql.add('update cpapaga set razao = :razao ' +
                  ' where razao = :razaoA ');
          Params[0].asstring := Q_FORNFOR_RAZA.Value;
          params[1].asstring := Razao;
          ExecSQL;
        end;
   end;
end;



procedure TFFornecedores.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   TabbedNotebook1.pageindex := 0;
   qrAuxDocs.Open;
  T_CGER.Open;
  T_CONT.Open;
  T_UFED.Open;
  Q_PAGA.Open;
  Q_OFOR.Open;
 // Q_FORN.Open;

end;

procedure TFFornecedores.TabbedNotebook1Click(Sender: TObject);
begin
  //Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbPost,nbCancel]);
  if TabbedNotebook1.pageindex = 1 then begin
     Fonte.Datasource := DS_PFAB ;
     Q_PFAB.close;
     Q_PFAB.SQL.clear;
     Q_PFAB.SQL.Add('Select * from SIAPFAB' ) ;
     Q_PFAB.SQL.Add('where PFA_FORN = ' + '''' + Q_FORNFOR_CODI.asstring + '''' );
     Q_PFAB.open;
     //Fonte.visibleButtons := ([nbFirst,nbPrior,nbNext,nbLast,nbCancel]) ;
  end ;
  if TabbedNotebook1.pageindex = 0 then begin
      Fonte.Datasource := DS_FORN ;

  end;

   if TabbedNotebook1.pageindex = 1 then
      Fonte.Datasource := DS_FORN ;

{  if TabbedNotebook1.pageindex = 2 then begin
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
    }
    if TabbedNotebook1.pageindex = 2 then begin
      Fonte.Datasource := DataSource1 ;

  end;

  if TabbedNotebook1.pageindex = 3 then begin
      Fonte.Datasource := dsAvaliaForn ;

  end;


  if TabbedNotebook1.pageindex = 4 then begin
      Fonte.Datasource := dsForContato ;

  end;




end;


procedure TFFornecedores.SBT_PESClick(Sender: TObject);
begin
       Q_PSQFORN.Open;
       PESQ_FORN.Execute ;
       Q_FORN.Locate('FOR_CODI',Q_PSQFORNFOR_CODI.asstring,[]);
       Q_PSQFORN.Close ;
       
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
      //  CENTRO(Self,False);
end;

procedure TFFornecedores.DBE_FOR_CODIEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_RAZAEnter(Sender: TObject);
begin
        (Sender as tDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_INICEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_INSCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_ENDEEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_MUNIEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_CEPEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_TELEEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_TEL2Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_FAXEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_EMAIEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_NCONEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_PENTEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.wwDBEdit3Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.wwDBEdit1Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFFornecedores.DBE_FOR_RAZAExit(Sender: TObject);
begin
        (Sender as TDBEdit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_INSCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_ENDEExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_MUNIExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_CEPExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_TELEExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_TEL2Exit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_FAXExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_EMAIExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_NCONExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBE_FOR_PENTExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.wwDBEdit3Exit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.wwDBEdit1Exit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFFornecedores.DBLC_DBE_PESSEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFFornecedores.DBLC_FOR_CONTEnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFFornecedores.DBLC_FOR_CGEREnter(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFFornecedores.DBLC_DBE_PESSExit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFFornecedores.DBLC_FOR_CONTExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFFornecedores.DBLC_FOR_CGERExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If DBLC_FOR_CGER.text <> '' then
                DBLC_FOR_CGER.text := Q_FORNFOR_CGER.asstring  ;
end;

procedure TFFornecedores.Q_FORNAfterCancel(DataSet: TDataSet);
begin
        DBE_FOR_CODI.Enabled := false;
end;

procedure TFFornecedores.SBT_RELClick(Sender: TObject);
begin
        If Q_FORNFor_Codi.AsString <> '' then
                ForCodix := Q_FORNFor_Codi.AsString ;

        Application.CreateForm(TFPesq_Forn, FPesq_Forn);
        FPesq_Forn.ShowModal;
        FPesq_Forn.Release;
end;

procedure TFFornecedores.DBMemo1Enter(Sender: TObject);
begin
        FFornecedores.KeyPreview:= false;
end;

procedure TFFornecedores.DBMemo1Exit(Sender: TObject);
begin
        FFornecedores.KeyPreview:= true;
end;

procedure TFFornecedores.SBT_REFRClick(Sender: TObject);
var id: string;
begin

        id:= Q_FORNFOR_CODI.AsString;

        Q_OFOR.close;
        Q_PAGA.close;
        Q_PFAB.close;
        Q_FORN.close;
        T_CGER.close;
        T_CONT.close;
        T_UFED.close;
        Q_OFOR.open;
        Q_PAGA.open;
        Q_PFAB.open;
        Q_FORN.open;
        T_CGER.open;
        T_CONT.open;
        T_UFED.open;

        Q_FORN.locate('for_codi',ID,[loCaseInsensitive]);

end;

procedure TFFornecedores.Q_FORNAfterOpen(DataSet: TDataSet);
begin
  Razao := Q_FORNFOR_RAZA.Value;
end;

procedure TFFornecedores.FormPaint(Sender: TObject);
begin
   IF Label1.Caption = 'N' then
        fonte.Buttons[4].Click;
end;

procedure TFFornecedores.DS_FORNDataChange(Sender: TObject; Field: TField);
begin
    qrFornecedorDocumentos.close;
    qrFornecedorDocumentos.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
    qrFornecedorDocumentos.Open;

    qrAvaliaForn.Close;
    qrAvaliaForn.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
    qrAvaliaForn.Open;

    qrForContato.Close;
    qrForContato.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
    qrForContato.Open;

    qrDocumentos.close;
    //qrDocumentos.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
    qrDocumentos.Open;
end;

procedure TFFornecedores.qrFornecedorDocumentosAfterPost(
  DataSet: TDataSet);
begin

{
    qrFornecedorDocumentos.close;
    qrFornecedorDocumentos.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
    qrFornecedorDocumentos.Open;
 }


 qrConsultaFornDocs.CLOSE;
 qrConsultaFornDocs.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
 qrConsultaFornDocs.Open;

end;

procedure TFFornecedores.qrFornecedorDocumentosNewRecord(
  DataSet: TDataSet);
begin
    qrFornecedorDocumentosFOR_CODI.AsString := Q_FORNFOR_CODI.AsString;
end;

procedure TFFornecedores.dsFornecedorDocumentoDataChange(Sender: TObject;
  Field: TField);
begin
  if qrConsultaFornDocsID.AsString <> '' then 
   qrFornecedorDocumentos.Locate('ID', qrConsultaFornDocsID.AsInteger,[]);
end;

procedure TFFornecedores.qrFornecedorDocumentosAfterOpen(
  DataSet: TDataSet);
begin
 qrConsultaFornDocs.CLOSE;
 qrConsultaFornDocs.Parameters[0].Value := Q_FORNFOR_CODI.AsString;
 qrConsultaFornDocs.Open;
end;

procedure TFFornecedores.qrAvaliaFornNewRecord(DataSet: TDataSet);
begin
  qrAvaliaFornFOR_CODI.AsString := Q_FORNFOR_CODI.AsString;
  qrAvaliaFornDATA.Value := Date;
end;

procedure TFFornecedores.qrAvaliaFornBeforePost(DataSet: TDataSet);

begin
   if qrAvaliaFornQ1.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;
   if qrAvaliaFornQ2.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;
   if qrAvaliaFornQ3.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;
   if qrAvaliaFornQ4.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;
   if qrAvaliaFornQ5.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;
   if qrAvaliaFornQ6.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;
   if qrAvaliaFornQ7.AsString = '' then begin
       ShowMessage('Preencha todas as questões');
       Abort;
   end;



end;

procedure TFFornecedores.Button1Click(Sender: TObject);
begin
  frmRelAvaliaForn := TfrmRelAvaliaForn.Create(Self);
  frmRelAvaliaForn.QuickRep1.Preview;
end;

procedure TFFornecedores.qrForContatoNewRecord(DataSet: TDataSet);
begin
  qrForContatoFOR_CODI.AsString := Q_FORNFOR_CODI.AsString;
end;

procedure TFFornecedores.dsAvaliaFornDataChange(Sender: TObject;
  Field: TField);
  var pAtende, pRestricao, pNaoatende, aux : Real;
    resultado, obs : string;
begin
  try
   pAtende := 0;
   pRestricao := 0;
   pNaoatende := 0;



   case StrToInt(qrAvaliaFornQ2.Value) of
       0 :  pAtende := pAtende + 1;
       1 : pRestricao := pRestricao + 1;
       2 : pNaoatende := pNaoatende + 1;
   end;
   case StrToInt(qrAvaliaFornQ3.Value) of
       0 :  pAtende := pAtende + 1;
       1 : pRestricao := pRestricao + 1;
       2 : pNaoatende := pNaoatende + 1;
   end;
   case StrToInt(qrAvaliaFornQ4.Value) of
       0 :  pAtende := pAtende + 1;
       1 : pRestricao := pRestricao + 1;
       2 : pNaoatende := pNaoatende + 1;
   end;
   case StrToInt(qrAvaliaFornQ5.Value) of
       0 :  pAtende := pAtende + 1;
       1 : pRestricao := pRestricao + 1;
       2 : pNaoatende := pNaoatende + 1;
   end;
   case StrToInt(qrAvaliaFornQ6.Value) of
       0 :  pAtende := pAtende + 1;
       1 : pRestricao := pRestricao + 1;
       2 : pNaoatende := pNaoatende + 1;
   end;
   case StrToInt(qrAvaliaFornQ7.Value) of
       0 :  pAtende := pAtende + 1;
       1 : pRestricao := pRestricao + 1;
       2 : pNaoatende := pNaoatende + 1;
   end;


   //calcular as medias
   pAtende := (pAtende * 100 / 6);
   pRestricao := (pRestricao * 100 / 6);
   pNaoatende := (pNaoatende * 100 / 7);

   if pNaoatende > pRestricao then
      if pNaoatende > pAtende then
        resultado :=   '( )Atende  ( )Atende com restrições  (X)Não Atende';

   if pRestricao > pNaoatende then
        if pRestricao > pAtende then
           resultado :=   '( )Atende  (X)Atende com restrições  ( )Não Atende';


   if pAtende > pNaoatende then
        if pAtende > pRestricao then
           resultado :=   '(X)Atende  ( )Atende com restrições  ( )Não Atende';

   lbresultado.Caption := resultado;

   Memo1.Lines.Clear;

   Memo1.Lines.add('Percentual da avaliação:');
   Memo1.Lines.add('Atende ' + FormatFloat('##0.00', pAtende) + '%');
   Memo1.Lines.add('Atende com restrições ' +  FormatFloat('##0.00', pRestricao) +  '%');
   Memo1.Lines.add('Não atende ' + FormatFloat('##0.00', pNaoatende) + '%');
   //Memo1.Lines.Text := obs;
   except

   end;
end;

end.

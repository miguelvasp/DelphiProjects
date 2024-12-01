unit URequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBCtrls, Buttons, Wwdotdot, Wwdbcomb,
  StdCtrls, wwdblook, Mask, wwdbedit, ExtCtrls, ComCtrls, Tabnotbk, Grids,
  Wwdbigrd, Wwdbgrid, wwstorep, ADODB;

type
  TFRequisicao = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Fonte: TDBNavigator;
    Q_REQY: TwwQuery;
    DS_REQ: TwwDataSource;
    UPD_REQ: TUpdateSQL;
    Q_REQYReq_ID: TAutoIncField;
    Q_REQYData: TDateTimeField;
    Q_REQYUsuario: TStringField;
    Q_REQYData_Sist: TDateTimeField;
    Q_REQ_ITEM: TwwQuery;
    UPD_REQ_ITEM: TUpdateSQL;
    DS_REQ_ITEM: TwwDataSource;
    Q_REQ_ITEMReq_Item_ID: TAutoIncField;
    Q_REQ_ITEMReq_ID: TIntegerField;
    Q_REQ_ITEMMat_ID: TIntegerField;
    Q_REQ_ITEMQtde: TFloatField;
    Label21: TLabel;
    txData: TwwDBEdit;
    Label6: TLabel;
    Label19: TLabel;
    cboMat: TwwDBLookupCombo;
    Grid: TwwDBGrid;
    Label1: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label2: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label4: TLabel;
    txQt: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    DS_MAT: TDataSource;
    Q_MATGR: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    Q_REQ_ITEMDSMAT: TStringField;
    Q_AUX: TwwQuery;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_REQYCC_ID: TIntegerField;
    Q_CC: TwwQuery;
    Q_CCCC_ID: TAutoIncField;
    Q_CCCC_Desc: TStringField;
    wwDBGrid2: TwwDBGrid;
    Q_RQL: TwwQuery;
    DS_RQL: TwwDataSource;
    Q_RQLLOC_DESC: TStringField;
    Q_RQLMARCA_DESC: TStringField;
    Q_RQLFOR_CODI: TStringField;
    Q_RQLVALID: TDateTimeField;
    Q_RQLQTDE: TFloatField;
    Q_RQLSTATUS: TStringField;
    Label3: TLabel;
    Q_REQYCC_Desc: TStringField;
    Label5: TLabel;
    cboMarca: TwwDBLookupCombo;
    Q_MARCA: TwwQuery;
    btSimul: TSpeedButton;
    btConf: TSpeedButton;
    SP_SIMULA_ALOC: TwwStoredProc;
    Q_RQLN_LOTE: TStringField;
    Q_REQ_ITEMMarca_ID: TIntegerField;
    Q_REQ_ITEMStatus: TStringField;
    Q_REQ_ITEMDS_Marca: TStringField;
    Q_MARCA2: TwwQuery;
    SP_AJALM: TwwStoredProc;
    Q_RQLMAT_ID: TIntegerField;
    Q_RQLMARCA_ID: TIntegerField;
    Q_RQLLOCAL_ID: TIntegerField;
    Q_RQLRR_ID: TAutoIncField;
    Q_AUX2: TwwQuery;
    btOc: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    wwDBEdit1: TwwDBEdit;
    Q_REQ_ITEMUni_Sigla: TStringField;
    Q_SIG: TwwQuery;
    Q_SIGUNI_SIGLA: TStringField;
    pnl1: TPanel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnAdd: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    dsMyNavPanel: TDataSource;
    qrAux: TADOQuery;
    cboLocal: TwwDBLookupCombo;
    Label12: TLabel;
    Q_REQYLOCAL_ID: TIntegerField;
    Button1: TButton;
    qrPreparaProdutos: TADOQuery;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    qryDadosOrigem: TADOQuery;
    qryDadosOrigemIMG: TIntegerField;
    qryDadosOrigemMAT_DESC: TStringField;
    qryDadosOrigemQTDE: TFloatField;
    qryDadosOrigemLOTE: TStringField;
    qryDadosOrigemVALIDADE: TDateTimeField;
    qryDadosOrigemQTDE_SOL: TFloatField;
    qryDadosOrigemITEM: TAutoIncField;
    qryDadosOrigemMAT_ID: TIntegerField;
    qryDadosOrigemESTOQUE: TFloatField;
    dsDadosOrigem: TDataSource;
    wwDBGrid3: TwwDBGrid;
    qrAddItemSelecionado: TADOQuery;
    qryDadosOrigemmarca_id: TIntegerField;
    qryDadosOrigemFOR_CODI: TStringField;
    qrApagaItem: TADOQuery;
    qrAuxLocal_ID: TAutoIncField;
    qrAuxDescricao: TStringField;
    qrAuxDisponivelSN: TStringField;
    qrAuxCONSUMO: TStringField;
    qrAuxCONTROLA_ESTOQUE: TStringField;
    qrAux2: TADOQuery;
    qrAux2TD_ID: TAutoIncField;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    SpeedButton3: TSpeedButton;
    wwDBGrid4: TwwDBGrid;
    qrDevolucao: TADOQuery;
    qrDevolucaoMAT_DESC: TStringField;
    qrDevolucaoN_Lote: TWideStringField;
    qrDevolucaoQtde: TFloatField;
    qrDevolucaoValid: TDateTimeField;
    qrDevolucaoDevolucao: TFloatField;
    qrDevolucaoAux: TFloatField;
    qrDevolucaoRR_ID: TAutoIncField;
    qrDevolucaoReq_Item_ID: TIntegerField;
    qrDevolucaoMat_ID: TIntegerField;
    qrDevolucaoMarca_ID: TIntegerField;
    qrDevolucaoFor_Codi: TStringField;
    qrDevolucaoLocal_ID: TIntegerField;
    qrDevolucaoUsuario: TStringField;
    qrDevolucaoStatus: TStringField;
    qrDevolucaoMAT_ID_1: TAutoIncField;
    dsDevolucao: TDataSource;
    SpeedButton4: TSpeedButton;
    STP_COPY_REQUISICAO: TADOStoredProc;
    qrAuxAdd: TADOQuery;
    qrAuxAddACHEI: TIntegerField;
    chkAltera: TCheckBox;
    btnTransferencia: TButton;
    cboDestino: TwwDBLookupCombo;
    lbDestino: TLabel;
    qrLocalDest: TADOQuery;
    StringField2: TStringField;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    Q_REQYLOCAL_DESTINO: TIntegerField;
    Q_REQYTIPO: TStringField;
    Button4: TButton;
    wwDBComboBox1: TwwDBComboBox;
    Label13: TLabel;
    Q_REQ_ITEMAUTORIZA: TStringField;
    Q_REQ_ITEMCONTROLA_GRUPO: TStringField;
    Q_MATCONTROLA_GRUPO: TStringField;
    Label14: TLabel;
    Label15: TLabel;
    wwDBEdit4: TwwDBEdit;
    Q_REQYTIPO_REQUISICAO: TStringField;
    qrAux222: TADOQuery;
    SpeedButton5: TSpeedButton;
    lbCancelada: TLabel;
    lbSolicitacao: TLabel;
    qrSol: TADOQuery;
    qrSolSOL_ID: TIntegerField;
    STP_ConsultaEstoqueMax: TADOStoredProc;
    Label16: TLabel;
    STP_ConsultaEstoqueMaxRESULTADO: TBCDField;
    Label17: TLabel;
    Q_REQ_ITEMESTOQUEMAXIMO: TStringField;
    qrAux_3: TADOQuery;
    qrLocalArmazenamento: TADOQuery;
    qrLocalArmazenamentoMAT_ID: TAutoIncField;
    qrLocalArmazenamentoLocalArmazem: TStringField;
    Q_REQ_ITEMLocalArmazem: TStringField;
    SpeedButton6: TSpeedButton;
    Label18: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    wwDBEdit5: TwwDBEdit;
    Q_REQYUsuarioSolicitacao: TStringField;
    qryDadosOrigemALMOX_ID: TIntegerField;
    Q_RQLALMOX_ID: TIntegerField;
    Q_REQ_ITEMInformacaoAdicional: TStringField;
    DBMemo1: TDBMemo;
    Label22: TLabel;
    Q_REQYObservacaoSolicitacao: TStringField;
    cboTipo: TwwDBComboBox;
    Label23: TLabel;
    Q_REQYTipoSolicitacao: TStringField;
    Q_REQYMotivoSolicitacao: TStringField;
    edtMotivoSolicitacao: TwwDBEdit;
    Label24: TLabel;
    btnGetMaterial: TBitBtn;
    procedure TabbedNotebook1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_REQYAfterDelete(DataSet: TDataSet);
    procedure Q_REQ_ITEMAfterDelete(DataSet: TDataSet);
    procedure Q_REQ_ITEMAfterPost(DataSet: TDataSet);
    procedure Q_REQYAfterPost(DataSet: TDataSet);
    procedure Q_REQYNewRecord(DataSet: TDataSet);
    procedure Q_REQ_ITEMNewRecord(DataSet: TDataSet);
    procedure txDataEnter(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure txDataExit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure txQtExit(Sender: TObject);
    procedure txtLoteEnter(Sender: TObject);
    procedure txQtEnter(Sender: TObject);
    procedure cboMatEnter(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Q_REQ_ITEMAfterScroll(DataSet: TDataSet);
    procedure Q_REQ_ITEMMat_IDChange(Sender: TField);
    procedure cboMarcaExit(Sender: TObject);
    procedure btSimulClick(Sender: TObject);
    procedure btConfClick(Sender: TObject);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btOcClick(Sender: TObject);
    procedure Q_REQ_ITEMBeforeDelete(DataSet: TDataSet);
    procedure Q_REQYBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure Q_REQYBeforePost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure qryDadosOrigemBeforePost(DataSet: TDataSet);
    procedure Transferencia;
    procedure TransferenciaComBaixa;
    procedure SpeedButton3Click(Sender: TObject);
    procedure DS_REQDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_MARCAAfterOpen(DataSet: TDataSet);
    procedure Q_REQ_ITEMBeforeEdit(DataSet: TDataSet);
    procedure Q_REQYBeforeEdit(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure wwDBComboBox1Change(Sender: TObject);
    procedure cboMatCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Q_REQYTIPO_REQUISICAOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Q_REQ_ITEMCalcFields(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRequisicao: TFRequisicao;

implementation

uses UMenu, Unt_Senha, URequisicaoPesq, UBDinAlm, UAjusAlm, URelReq,
  UfrmDevolucaoRequisicao, ufrmImprimeEtiqueta, ufrmLeitorCodigo,
  ufrmRequisicaoConferencia, UfrmBuscaMaterial;

{$R *.DFM}

procedure TFRequisicao.TabbedNotebook1Click(Sender: TObject);
begin
        If (TabbedNotebook1.PageIndex = 0) then
        Begin
                FONTE.Datasource := DS_REQ;
                dsMyNavPanel.DataSet :=  DS_REQ.DataSet;
                FONTE.Enabled := true;
        end;

        If (TabbedNotebook1.PageIndex = 1) then
        Begin
                FONTE.Datasource := DS_REQ_ITEM;
                dsMyNavPanel.DataSet :=  DS_REQ_ITEM.DataSet;
        end;



end;

procedure TFRequisicao.SpeedButton1Click(Sender: TObject);
var SQL:String;
begin
        //APAGA OS ITENS SIMULADOS E NÃO CONFIRMADOS PELO USUÁRIO.

	SQL :=
        ' DELETE 	FROM REQ_LOTE WHERE STATUS = ''S''' +
	'AND	        USUARIO = ''' + STRUSUARIO + '''';
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.EXECSQL;

        close;
end;

procedure TFRequisicao.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  dsMyNavPanel.DataSet :=  DS_REQ.DataSet;

  Self.AutoSize := True;

        Q_REQY.SQL.Clear;
        Q_REQY.SQL.ADD(' SELECT * FROM REQ_CAPA ');

        IF REQ_ID <> '' then Begin
           Q_REQY.SQL.ADD(' WHERE REQ_ID = ' + REQ_ID );
           Q_REQY.SQL.ADD(' ORDER BY REQ_ID');
        End Else if (REQ_ID = '') and (ConsIntREQ <> '') then
           Begin
               Q_REQY.SQL.ADD(' WHERE REQ_ID = ' + ConsIntREQ);
               {IF FMenu.sqlUsuariosLOCAL_ID.AsString <> '1' then
                   Q_REQY.SQL.ADD(' and local_id in (select local_id from UsuariosAlmoxLocais where ch = ' + FMenu.sqlUsuariosCH.AsString + ')');   }
               Q_REQY.SQL.ADD(' ORDER BY REQ_ID')
           end
           else begin
              Q_REQY.SQL.ADD(' WHERE REQ_ID = 0');
               Q_REQY.SQL.ADD(' ORDER BY REQ_ID ');
           end   ;




        //controla se o usuario nao pertence ao local principal
        IF FMenu.sqlUsuariosLOCAL_ID.AsString <> '1' then
         begin
             SpeedButton4.Visible := False;
             //SpeedButton3.Visible := False;
             btOc.Visible := False;
         end;


        Q_REQY.open;

        Q_REQ_ITEM.OPEN;
        Q_MATGR.OPEN;
        Q_MAT.OPEN;
        Q_RQL.OPEN;
        Q_MARCA2.OPEN;
        qrLocalArmazenamento.Open;
        //Q_CC.OPEN;
        if FMenu.sqlUsuariosadmRequisicao.AsString = 'S' then begin
         Q_CC.Open;
        end
        else begin
           Q_CC.sql.Clear;
           Q_CC.sql.Add(
             ' SELECT * FROM CENTRO_CUSTO ' +
             ' where CC_ID in (select CC_ID from UsuarioAlmoxCentros where ch = ' + FMenu.sqlUsuariosCH.AsString + ')' +
             ' ORDER BY CC_Desc '
           );
           Q_CC.Open;
        end;


       qrLocal.Close;
       if FMenu.qrLocalCONSUMO.Value <> 'S' then
       begin

            qrLocal.sql.Clear;
            //qrLocal.sql.add('SELECT * FROM LOCAL WHERE LOCAL_ID in (select local_id from UsuariosAlmoxLocais where ch = ' + FMenu.sqlUsuariosCH.AsString + ')');
            qrLocal.sql.add('SELECT * FROM LOCAL WHERE LOCAL_ID  = ' + FMenu.sqlUsuariosLOCAL_ID.AsString);
            qrLocal.sql.Add(' order by descricao')  ;
       end;

       qrLocal.Open;




end;

procedure TFRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Q_MAT.close;
        Q_MARCA2.CLOSE;
        Q_REQY.close;
        Q_REQ_ITEM.close;
        Q_MATGR.close;
        Q_CC.CLOSE;
        Q_RQL.CLOSE;

        Action := CaFree;
end;

procedure TFRequisicao.Q_REQYAfterDelete(DataSet: TDataSet);
begin
 try
      FMenu.DATABASE1.ApplyUpdates([Q_reqY])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
end;

procedure TFRequisicao.Q_REQ_ITEMAfterDelete(DataSet: TDataSet);
begin
 try
      FMenu.DATABASE1.ApplyUpdates([Q_req_item])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
end;

procedure TFRequisicao.Q_REQ_ITEMAfterPost(DataSet: TDataSet);
var     Strchave : String ;
        SQL : String;
BEGIN        
try BEGIN

      If Q_REQ_ITEMMat_ID.AsString = '' then
      Begin
                MessageDlg('O campo de Material é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                abort;
      End;

      If Q_REQ_ITEMQtde.AsString = '' then
      Begin
                MessageDlg('O campo de Material é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                abort;
      End;

      Strchave:= Q_REQ_ITEMReq_Item_ID.ASSTRING;
      FMenu.DATABASE1.ApplyUpdates([Q_req_item])

    END;  
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

    If StrChave = '' then
             Begin
                SQL :=  ' SELECT          MAX(REQ_ITEM_ID) REQ_ITEM_ID ' +
                        ' FROM            REQ_ITEM ' ;
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('REQ_ITEM_ID').AsString <> '' then
                        StrChave := Q_AUX.FieldByName('REQ_ITEM_ID').AsString;

                Q_AUX.CLOSE;
             End;


   Q_REQ_ITEM.CLOSE;
   Q_REQ_ITEM.Open;
      if Strchave <> '' then
           Q_REQ_ITEM.Locate('REQ_ITEM_ID',StrChave, [])  ;

   SQL :=
        ' DELETE 	FROM REQ_LOTE WHERE STATUS = ''S''' +
	'AND	        USUARIO = ''' + STRUSUARIO + '''';
   Q_AUX.SQL.CLEAR;
   Q_AUX.SQL.ADD(SQL);
   Q_AUX.EXECSQL;

end;

procedure TFRequisicao.Q_REQYAfterPost(DataSet: TDataSet);
var     Strchave : String ;
        SQL : String;
begin
        If Q_REQYCC_ID.AsString = '' then
        Begin
                MessageDlg('O campo de Centro de Custo é de preenchimento obrigatório!' ,mtWarning,[MbOk],0);
                abort;
        End;


try Begin
        Strchave:= Q_REQYReq_ID.AsString;
        FMenu.DATABASE1.ApplyUpdates([Q_ReqY])
    end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

         If StrChave = '' then
             Begin
                SQL :=  ' SELECT          MAX(REQ_ID) REQ_ID ' +
                        ' FROM            REQ_CAPA ' ;
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('REQ_ID').AsString <> '' then
                        StrChave := Q_AUX.FieldByName('REQ_ID').AsString;

                Q_AUX.CLOSE;
             End;

        if StrChave <> '' then
        Begin
                REQ_ID := StrChave;

                Q_REQY.SQL.Clear;
                Q_REQY.SQL.ADD(' SELECT * FROM REQ_CAPA ');
                Q_REQY.SQL.ADD(' WHERE REQ_ID = ' + REQ_ID );
                Q_REQY.SQL.ADD(' ORDER BY REQ_ID');
        End;

        Q_REQY.ClOSE;
        Q_REQY.OPEN;

end;

procedure TFRequisicao.Q_REQYNewRecord(DataSet: TDataSet);
begin
        
        Fonte.Enabled := True;
        Q_REQYData_Sist.AsString:=  FormatDateTime('dd/mm/yyyy',Date);
        Q_REQYData.AsString:=  FormatDateTime('dd/mm/yyyy',Date);
        Q_REQYUsuario.AsString:= STRUSUARIO;
        lbCancelada.Visible := False;
        txData.SetFocus;
end;

procedure TFRequisicao.Q_REQ_ITEMNewRecord(DataSet: TDataSet);
begin

  qrAuxAdd.Close;
  qrAuxAdd.Parameters[0].Value := Q_REQYReq_ID.Value;
  qrAuxAdd.Open;

  IF qrAuxAddACHEI.Value > 0 then begin
    if chkAltera.Checked = False then begin
      ShowMessage('Requisição Finalizada!');
      Abort;
    end;
  end;

        btConf.Enabled := true;
        Fonte.Enabled :=  true;
        cboMat.Enabled := true;
        cboMarca.Enabled := true;
        txQt.Enabled := true;
        btSimul.Enabled := true;

        Q_REQ_ITEMReq_ID.AsString:= Q_REQYReq_ID.AsString;
        Q_REQ_ITEMStatus.AsString := 'A'; //Aberta
        cboMat.SetFocus;
end;

procedure TFRequisicao.txDataEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRequisicao.wwDBEdit1Enter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRequisicao.txDataExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFRequisicao.wwDBEdit1Exit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFRequisicao.txtLoteExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClWindow;
end;

procedure TFRequisicao.txQtExit(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := $00F0FFFF;
end;

procedure TFRequisicao.txtLoteEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRequisicao.txQtEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFRequisicao.cboMatEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFRequisicao.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := $00F0FFFF;
          if Q_REQ_ITEM.State IN [DSEDIT, DSINSERT] then
    Q_REQ_ITEMCONTROLA_GRUPO.AsString := Q_MATCONTROLA_GRUPO.AsString;
end;

procedure TFRequisicao.TabbedNotebook1Change(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
begin
    If (Q_REQY.State = dsEdit) or (Q_REQY.State = dsInsert) Then
                        Q_REQY.POST;
                If (Q_REQ_ITEM.State = dsEdit) or (Q_REQ_ITEM.State = dsInsert) Then
                        Q_REQ_ITEM.POST;
                Q_REQ_ITEM.CLOSE;
                Q_REQ_ITEM.Open;
    
end;

procedure TFRequisicao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFRequisicao.FormShow(Sender: TObject);
begin
           TabbedNotebook1.PageIndex := 0;

           If Clic then
                Q_REQY.Insert;

end;

procedure TFRequisicao.Q_REQ_ITEMAfterScroll(DataSet: TDataSet);
begin
        If Q_REQ_ITEMStatus.AsString = 'F' then
        Begin
                btConf.Enabled := false;
                Fonte.Enabled :=  false;
                cboMat.Enabled := false;
                cboMarca.Enabled := false;
                txQt.Enabled := false;
                btSimul.Enabled := false;
        End Else Begin
                btConf.Enabled := true;
                Fonte.Enabled :=  true;
                cboMat.Enabled := true;
                cboMarca.Enabled := true;
                txQt.Enabled := true;
                btSimul.Enabled := true;
        End;

        Q_MARCA.CLOSE;
        Q_MARCA.OPEN;
end;

procedure TFRequisicao.Q_REQ_ITEMMat_IDChange(Sender: TField);
begin
        Q_MARCA.CLOSE;
        Q_MARCA.OPEN;

        Q_SIG.CLOSE;
        Q_SIG.OPEN;

        Q_REQ_ITEMUni_Sigla.AsString := Q_SIGUni_Sigla.AsString;


end;

procedure TFRequisicao.cboMarcaExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clInfoBk;
end;

procedure TFRequisicao.btSimulClick(Sender: TObject);
begin


  IF cboMarca.Text = '' THEN
  BEGIN
     MessageBox(Self.Handle, 'INFORME A MARCA!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
  END;

    IF MessageBox(Self.Handle, 'Todos os dados lidos serão apagados, deseja continuar?', 'Confirmação', MB_YESNO) = 7 THEN
  BEGIN

     Abort;
  END;



        Q_REQ_ITEM.First;

        If  not Q_REQ_ITEM.EOF then
        Begin
                While not Q_REQ_ITEM.Eof Do
                Begin

                        If Q_REQ_ITEMStatus.AsString <> 'F' then
                        Begin
                                SP_SIMULA_ALOC.ParamByName('@REQ_ITEM_ID').Value := Q_REQ_ITEMReq_Item_ID.AsString;

                                If Q_REQ_ITEMMarca_ID.AsString <> '' then
                                        SP_SIMULA_ALOC.ParamByName('@MARCA_ID_PREF').Value := Q_REQ_ITEMMarca_ID.AsString
                                Else
                                        SP_SIMULA_ALOC.ParamByName('@MARCA_ID_PREF').Value := Null;

                                SP_SIMULA_ALOC.ParamByName('@USUARIO').Value := strUsuario;

                                //VERIFICA O LOCAL ONDE O USUARIO ESTÁ CADASTRADO
                                SP_SIMULA_ALOC.ParamByName('@LOCAL').AsInteger := FMenu.sqlUsuariosLOCAL_ID.Value;

                                SP_SIMULA_ALOC.ParamByName('@MSG').Value := Null;

                                SP_SIMULA_ALOC.ExecProc;

                                If SP_SIMULA_ALOC.ParamByName('@MSG').Value = 'OK' then
                                Begin
                                        Q_RQL.CLOSE;
                                        Q_RQL.OPEN;
                                End Else Begin
                                        MessageDlg(SP_SIMULA_ALOC.ParamByName('@MSG').Value,mtWarning,[MbOk],0);
                                End;
                        End;

                        Q_REQ_ITEM.Next;
                End;
                Q_REQ_ITEM.First;
        End Else Begin
                MessageDlg('É necessário haver ao menos um item de requisição!',mtWarning,[MbOk],0);
        End;


        Button1.Enabled := True;
end;

procedure TFRequisicao.btConfClick(Sender: TObject);
Var SQL :String;
        tipoConsumo : string;
        GEROU : Boolean;
begin

//verifica se a requisição foi cancelada
with qrAux222 do begin
      close;
      sql.Clear;
      sql.Add(
           'SELECT COUNT(*) as achei FROM REQ_ITEM WHERE STATUS = ''C'' AND REQ_ID = ' + Q_REQYReq_ID.AsString
      );
      Open;
  end;

  if qrAux222.FieldByName('achei').AsInteger > 0 then begin
      ShowMessage('Requisição já foi  cancelada');
      Abort;
  end;



   //só faz o controle de material controlado se for na brigadeiro
   if FMenu.sqlUsuariosLOCAL_ID.AsString = '1' then begin
    with Q_AUX do begin
        close;
        SQL.Clear;
        sql.Add(
          '  SELECT '+
          '          COUNT(*) as achei  '+
          '  FROM Req_Item A INNER JOIN MATERIAIS B  '+
          '  ON A.Mat_ID = B.MAT_ID   '+
          '  WHERE Req_ID =  '+ Q_REQYReq_ID.AsString +
          ' AND B.CONTROLA_GRUPO = ''S''  '+
          ' AND ISNULL(A.AUTORIZA, '''') <> ''S''  '
        );
        Open;
    end;

    IF Q_AUX.FieldByName('ACHEI').AsInteger > 0  then begin
        ShowMessage('Existem materiais que precisam de liberação, favor entrar em contato com os responsáveis');
        Abort;
    end;
  end;

if MessageBox(Self.Handle, PChar('Confirma a operação?' +#13+'Não será possível nenhuma alteração após a confirmação.'), 'Confirmação', MB_YESNO) = 7 then
        Abort;



       try
           FMenu.Database1.StartTransaction;
            SQL := 'SELECT TD_ID FROM TIPO_DOCUMENTO WHERE APELIDO = ''BVR''';
            Q_AUX.SQL.CLEAR;
            Q_AUX.SQL.ADD(SQL);
            Q_AUX.OPEN;

            qrAux2.Open;


            GEROU := False;

            Q_REQ_ITEM.First;

            qrAux.Close;
            qrAux.Parameters[0].Value := Q_REQYLOCAL_ID.Value;
            qrAux.Open;



            //determinamos se o tipo de requisião é de consumo ou é de transferencia
            tipoConsumo := 'C';

            if Q_REQYLOCAL_ID.Value <> FMenu.sqlUsuariosLOCAL_ID.Value then
            begin
                 if qrAuxCONTROLA_ESTOQUE.Value = 'S' then
                 begin
                       tipoConsumo := 'T';
                 end;
            end;





            While not Q_REQ_ITEM.eof Do
            Begin
                    Q_RQL.First;

                    While not (Q_RQL.Eof) and not (Q_REQ_ITEM.Eof) Do
                    Begin
                            //Somente dá baixa para os Itens de Lote que estejam com
                            //Status de 'simulação';
                            If Q_RQLStatus.AsString = 'S' then
                            Begin
                                    SP_AJALM.ParamByName('@TD_ID').Value := Q_AUX.FieldByName('TD_ID').AsString;

                                    SP_AJALM.ParamByName('@DOCTO').Value := Q_REQ_ITEMReq_ID.AsString;
                                    //Passa o número da requisição como o número do documento.

                                    SP_AJALM.ParamByName('@N_LOTE').Value := Q_RQLN_LOTE.AsString;
                                    SP_AJALM.ParamByName('@QTDE').Value := Q_RQLQTDE.AsFloat;
                                    SP_AJALM.ParamByName('@MAT_ID').Value := Q_RQLMat_ID.AsString;
                                    SP_AJALM.ParamByName('@FOR_CODI').Value := Q_RQLFor_Codi.AsString;
                                    SP_AJALM.ParamByName('@MOT_ID').Value := Null;
                                    SP_AJALM.ParamByName('@TIPO').Value := 'B';
                                    SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;
                                    SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
                                    SP_AJALM.ParamByName('@DATAX').Value := Null;
                                    SP_AJALM.ParamByName('@MARCA_ID').Value := Q_RQLMarca_ID.AsString;

                                    //COMENTADO POR MIGUEL - AGORA PEGA O LOCAL DO CADASTRO DE USUÁRIO
                                    //SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_RQLLocal_ID.AsString;

                                    SP_AJALM.ParamByName('@LOCAL_ID').Value := FMenu.sqlUsuariosLOCAL_ID.Value;

                                    DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_RQLValid.AsString)) ;
                                    SP_AJALM.ParamByName('@VALID').Value := DATAI;

                                    //envia o id do lote
                                    SP_AJALM.ParamByName('@IdRequisicaoItemLote').Value := Q_RQLRR_ID.AsInteger;

                                    IF Q_RQLALMOX_ID.AsString <> '' then
                                        SP_AJALM.ParamByName('@ALMOX_ID').Value := Q_RQLALMOX_ID.AsInteger;

                                    SP_AJALM.ExecProc;

                                    If SP_AJALM.ParamByName('@MSG').value <> 'OK' then
                                            MessageDlg(SP_AJALM.ParamByName('@MSG').Value,mtWarning,[MbOk],0)
                                    Else Begin
                                            //Atualiza Status do Req_Lote por já ter executado.
                                            SQL :=  ' UPDATE        REQ_LOTE SET STATUS = ''F''' +
                                                    ' WHERE         RR_ID = ' + Q_RQLRR_ID.AsString;
                                            Q_AUX2.SQL.CLEAR;
                                            Q_AUX2.SQL.ADD(SQL);
                                            Q_AUX2.EXECSQL;

                                            GEROU := True;

                                          //  MessageDlg('Operação realizada com sucesso!',
                                          //  mtInformation, [mbOk], 0);
                                    End;


                                    //EFETUAR TRANSFERENCIA EM CASO DE NÃO SER CENTRAL E CONTROLAR ESTOQUE
                                    IF  (qrAuxCONSUMO.Value = 'N') and (qrAuxCONTROLA_ESTOQUE.Value = 'S')
                                    and(FMenu.sqlUsuariosLOCAL_ID.Value <> Q_REQYLOCAL_ID.Value) then
                                    BEGIN
                                      IF GEROU = True then
                                         Transferencia;
                                    end;//END IF TRANSFERENCIA


                                    //EFETUAR TRANSFERENCIA EM CASO DE NÃO SER CENTRAL E CONTROLAR ESTOQUE
                                    IF  (qrAuxCONSUMO.Value = 'N') and (qrAuxCONTROLA_ESTOQUE.Value = 'N')
                                    and(FMenu.sqlUsuariosLOCAL_ID.Value <> Q_REQYLOCAL_ID.Value) then
                                    BEGIN
                                      IF GEROU = True then
                                         TransferenciaComBaixa;
                                    end;//END IF TRANSFERENCIA


                            End;

                            Q_RQL.Next;

                    End;

                    SQL :=  ' UPDATE        REQ_ITEM SET STATUS = ''F'', TipoConsumo = '+ QuotedStr(tipoConsumo) +
                            ' WHERE         REQ_ITEM_ID = ' + Q_REQ_ITEMReq_Item_ID.AsString +
                            ' AND           EXISTS (SELECT          1 ' +
                            '                       FROM            REQ_LOTE RL ' +
                            '                       WHERE           REQ_ITEM.REQ_ITEM_ID = RL.REQ_ITEM_ID ' +
                            '                       AND             RL.STATUS = ''F''' + ')' +
                            ' AND NOT       EXISTS (SELECT          1 ' +
                            '                       FROM            REQ_LOTE RL ' +
                            '                       WHERE           REQ_ITEM.REQ_ITEM_ID = RL.REQ_ITEM_ID ' +
                            '                       AND             RL.STATUS IS NULL)';

                    Q_AUX2.SQL.CLEAR;
                    Q_AUX2.SQL.ADD(SQL);
                    Q_AUX2.EXECSQL;

                    Q_REQ_ITEM.Next;
            End;



           // Button1.Enabled := False;

           //efetua a validação

           FMenu.Database1.Commit;




           //gera os valores na requisição para custo medio e custo de reposição
           with qrAux do begin
               close;
               SQL.Clear;
               sql.Add(
               ' exec GERA_VALORES_REQUISICAO ' + Q_REQYReq_ID.AsString
               ) ;
               ExecSQL;
           end;

           
           with qrAux_3 do begin
               close;
               SQL.Clear;
               sql.Add(
               ' exec VERIFICA_BAIXA_ESTOQUE ' + Q_REQYReq_ID.AsString
               ) ;
               ExecSQL;
           end;

           with qrAux_3 do begin
               close;
               SQL.Clear;
               sql.Add(
               ' SELECT COUNT(*) AS ACHEI FROM REQ_LOTE WHERE STATUS = ''E'' AND  Req_Item_ID IN( SELECT Req_Item_ID FROM Req_Item WHERE Req_ID =  ' + Q_REQYReq_ID.AsString + ')') ;
               OPEN;
           end;

           IF qrAux_3.FieldByName('ACHEI').asinteger > 0 then begin
               showmessage('Aconteceu um erro ao tentar baixar o estoque de alguns materiais, verifique os lotes');
           end;


           //gera desdobramento dos lotes para conferencia do laboratório 25/11/2013
           if tipoConsumo = 'C' then begin
             with qrAux do begin
                 close;
                 SQL.Clear;
                 sql.Add(
                 ' exec GERA_DESDOBRAMENTO_LOTE ' + Q_REQYReq_ID.AsString
                 ) ;
                 ExecSQL;
             end;
           end;

            Q_REQ_ITEM.Close;
            Q_REQ_ITEM.Open;
            Q_REQ_ITEM.First;
            Q_REQ_ITEM.Locate('Status','P',[]) ;


       except
           on e : Exception do
           begin
               MessageBox(Self.Handle, PChar('Aconteceu um erro ao gerar a atualização' + #13 + 'todas as atualizações serão desfeitas' + #13 + e.Message) , 'Erro', MB_OK);
               showmessage(e.Message);
               FMenu.Database1.Rollback;
           end;
       end;


end;

procedure TFRequisicao.GridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  //só fica vermelho se é estoque central

  if FMenu.sqlUsuariosLOCAL_ID.AsString = '1' then begin
    try
        IF Q_REQ_ITEMCONTROLA_GRUPO.AsString = 'S' then begin
            if Q_REQ_ITEMAUTORIZA.AsString <> 'S' then
                 ABrush.Color := clRed;
        end;

        if Q_REQ_ITEMESTOQUEMAXIMO.Value = 'S' then   ABrush.Color := clYellow;

//        STP_ConsultaEstoqueMax.Close;
//        STP_ConsultaEstoqueMax.Parameters[0].Value := Q_REQ_ITEMMat_ID.AsInteger;
//        STP_ConsultaEstoqueMax.Parameters[1].Value := Q_REQYLOCAL_ID.AsInteger;
//        STP_ConsultaEstoqueMax.Open;
//
//        //99999999 indica que nao tem estoque maximo cadastrado
//        if STP_ConsultaEstoqueMaxRESULTADO.AsInteger <> 99999999 then begin
//          if Q_REQ_ITEMQtde.AsFloat > STP_ConsultaEstoqueMaxRESULTADO.AsFloat then
//                  ABrush.Color := clYellow;
//        end;


    except end;
  end;
        If Q_REQ_ITEMStatus.AsString = 'F' then
                AFont.Color := clGreen
        Else
                AFont.Color := clBlue;

        If Highlight then
                AFont.Color := clWhite;

        If Q_REQ_ITEMStatus.AsString = 'P' then   begin
            AFont.Color := clBlack;
            ABrush.Color := clYellow;
        end;


end;

procedure TFRequisicao.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If Q_RQLStatus.AsString = 'F' then
                AFont.Color := clGreen
        Else
                AFont.Color := clBlue;

        If Highlight then
                AFont.Color := clWhite;

end;

procedure TFRequisicao.btOcClick(Sender: TObject);
begin
        ConsIntMAT := Q_REQ_ItemMat_ID.AsString;

        Application.CreateForm(TFAjustAlm, FAjustAlm);
        FAjustAlm.ShowModal;
        FAjustAlm.Release;
end;

procedure TFRequisicao.Q_REQ_ITEMBeforeDelete(DataSet: TDataSet);
begin
  qrAuxAdd.Close;
  qrAuxAdd.Parameters[0].Value := Q_REQYReq_ID.Value;
  qrAuxAdd.Open;

  IF qrAuxAddACHEI.Value > 0 then begin
    if chkAltera.Checked = False then begin
      ShowMessage('Requisição Finalizada!');
      Abort;
    end;
  end;

    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;

end;

procedure TFRequisicao.Q_REQYBeforeDelete(DataSet: TDataSet);
begin
  qrAuxAdd.Close;
  qrAuxAdd.Parameters[0].Value := Q_REQYReq_ID.Value;
  qrAuxAdd.Open;

  IF qrAuxAddACHEI.Value > 0 then begin
    if chkAltera.Checked = False then begin
      ShowMessage('Requisição Finalizada!');
      Abort;
    end;
  end;

    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;

end;

procedure TFRequisicao.SpeedButton2Click(Sender: TObject);
begin
    IF Q_REQYReq_ID.AsString = '' then
    Abort;

        Application.CreateForm(TFRelReq,FRelReq);
        FRelReq.Q_Req.close;
        FRelReq.Q_Req.Params[0].AsInteger := Q_REQYReq_ID.AsInteger;
        FRelReq.Q_Req.Open;
        FRelReq.QR_REQ.Preview;
        FRelReq.Close;
end;

procedure TFRequisicao.btnAddClick(Sender: TObject);
begin


   if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Append;
end;

procedure TFRequisicao.btnCancelClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsEdit, dsInsert] then
     dsMyNavPanel.DataSet.Cancel;
end;

procedure TFRequisicao.btnDeleteClick(Sender: TObject);
begin
   if TabbedNotebook1.PageIndex > 0 then begin
     if  dsMyNavPanel.DataSet.State in [dsBrowse] then
        dsMyNavPanel.DataSet.Delete;
        Abort;
   end;


  with qrAux222 do begin
      close;
      sql.Clear;
      sql.Add(
           'SELECT COUNT(*) as achei FROM REQ_ITEM WHERE STATUS = ''C'' AND REQ_ID = ' + Q_REQYReq_ID.AsString
      );
      Open;
  end;

  if qrAux222.FieldByName('achei').AsInteger > 0 then begin
      ShowMessage('Requisição já foi cancelada');
      Abort;
  end;


  with qrAux222 do begin
      close;
      sql.Clear;
      sql.Add(
           'SELECT COUNT(*) as achei FROM REQ_ITEM WHERE STATUS = ''F'' AND REQ_ID = ' + Q_REQYReq_ID.AsString
      );
      Open;
  end;

  if qrAux222.FieldByName('achei').AsInteger > 0 then begin
      ShowMessage('Requisição já foi atendida, não pode ser cancelada');
      Abort;
  end;


  if MessageBox(Self.Handle, 'Confirma o cancelamento da Requisição?', 'Confirmação', MB_YESNO) = 6 then begin
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('update req_item set status = ''C'' where req_id = ' + Q_REQYReq_ID.AsString);
          ExecSQL;
      end;

      TabbedNotebook1.PageIndex := 0 ;
      lbCancelada.Visible := True;
      
  end;
end;

procedure TFRequisicao.btnFirstClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
    dsMyNavPanel.DataSet.First;
end;

procedure TFRequisicao.btnLastClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Last;
end;

procedure TFRequisicao.btnNextClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Next;
end;

procedure TFRequisicao.btnPostClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsEdit, dsInsert] then
     dsMyNavPanel.DataSet.Post;
end;

procedure TFRequisicao.btnPriorClick(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Prior;
end;


procedure TFRequisicao.Q_REQYBeforePost(DataSet: TDataSet);
begin

  if  Q_REQYReq_ID.AsString <> '' then begin
      with qrAux222 do begin
          close;
          sql.Clear;
          sql.Add(
               'SELECT COUNT(*) as achei FROM REQ_ITEM WHERE STATUS = ''C'' AND REQ_ID = ' + Q_REQYReq_ID.AsString
          );
          Open;
      end;

      if qrAux222.FieldByName('achei').AsInteger > 0 then begin
          ShowMessage('Requisição já foi  cancelada');
          Abort;
      end;
  end;

    if cboLocal.LookupValue = '' then
    begin
        MessageBox(Self.Handle, 'Informe o local!', 'Informação', MB_OK);
        Abort;
    end;
end;

 procedure TFRequisicao.Button3Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TFRequisicao.Button1Click(Sender: TObject);
begin
   qrPreparaProdutos.Parameters[0].Value := FMenu.sqlUsuariosCH.Value;
   qrPreparaProdutos.Parameters[1].Value := FMenu.sqlUsuariosLOCAL_ID.Value; //USA O LOCAL DO USUARIO 
   qrPreparaProdutos.Parameters[2].Value := Q_REQ_ITEMMat_ID.Value;
   qrPreparaProdutos.ExecSQL;

   qryDadosOrigem.Close;
   qryDadosOrigem.Parameters[0].Value :=  Q_REQ_ITEMMat_ID.Value;
   qryDadosOrigem.Parameters[1].Value :=  FMenu.sqlUsuariosCH.Value;
   qryDadosOrigem.Open;

   Panel1.Left := 8;
   Panel1.Top := 10;
   Panel1.Visible := True;
end;

procedure TFRequisicao.Button2Click(Sender: TObject);
var qtdeSol : Double;
    qtdeSelecionada : Double;
begin
//

    if qryDadosOrigem.State in [dsEdit, dsInsert] then
        qryDadosOrigem.Post;

    qtdeSol :=  Q_REQ_ITEMQtde.Value;
    qtdeSelecionada := 0;
    qryDadosOrigem.First;
    while not qryDadosOrigem.Eof do
    begin
        qtdeSelecionada := qtdeSelecionada + qryDadosOrigemQTDE_SOL.Value;
        qryDadosOrigem.Next;
    end;

    if qtdeSol <> qtdeSelecionada then
    begin
        MessageBox(Self.Handle, 'A quantidade solicitada não é igual a quantidade selecionada', 'Erro', MB_OK);
        Abort;
    end;

    qrApagaItem.Parameters[0].Value :=  Q_REQ_ITEMReq_Item_ID.Value;
    qrApagaItem.ExecSQL;

    qryDadosOrigem.First;
    while not qryDadosOrigem.Eof do
    begin
       if qryDadosOrigemQTDE_SOL.Value > 0 then
       begin
            with qrAddItemSelecionado do
            begin
                 Parameters[0].Value :=  Q_REQ_ITEMReq_Item_ID.Value;
                 Parameters[1].Value :=  Q_REQ_ITEMMat_ID.Value;
                 Parameters[2].Value :=  qryDadosOrigemLOTE.Value;
                 Parameters[3].Value :=  qryDadosOrigemVALIDADE.Value;
                 Parameters[4].Value :=  qryDadosOrigemmarca_id.Value;
                 Parameters[5].Value :=  qryDadosOrigemFOR_CODI.Value;
                 Parameters[6].Value :=  StrToInt(cboLocal.LookupValue);
                 Parameters[7].Value :=  qryDadosOrigemQTDE_SOL.Value;
                 Parameters[8].Value :=  FMenu.sqlUsuariosNome.Value;
                 Parameters[9].Value :=  'S';
                 Parameters[10].Value := qryDadosOrigemALMOX_ID.AsInteger;
                 ExecSQL;
            end;
       end;


        qryDadosOrigem.next;
    end;

    Q_RQL.Close;
    Q_RQL.Open;

    panel1.Visible := False;




end;

procedure TFRequisicao.qryDadosOrigemBeforePost(DataSet: TDataSet);
begin
  if qryDadosOrigemQTDE_SOL.Value > qryDadosOrigemQTDE.Value then
  begin
      MessageBox(Self.Handle, 'A quantidade selecionada não pode ser maior que a quantidade em estoque', 'Erro', MB_OK);
      Abort;
  end;
end;

procedure TFRequisicao.Transferencia;
begin

     //alem de dar a baixa ele da entrada no estoque do local que recebe a requisição.

      SP_AJALM.ParamByName('@TD_ID').Value := qrAux2TD_ID.AsString;

      SP_AJALM.ParamByName('@DOCTO').Value := Q_REQ_ITEMReq_ID.AsString;
      //Passa o número da requisição como o número do documento.

      SP_AJALM.ParamByName('@N_LOTE').Value := Q_RQLN_LOTE.AsString;
      SP_AJALM.ParamByName('@QTDE').Value := Q_RQLQTDE.AsFloat;
      SP_AJALM.ParamByName('@MAT_ID').Value := Q_RQLMat_ID.AsString;
      SP_AJALM.ParamByName('@FOR_CODI').Value := Q_RQLFor_Codi.AsString;
      SP_AJALM.ParamByName('@MOT_ID').Value := Null;
      SP_AJALM.ParamByName('@TIPO').Value := 'E';
      SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;
      SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
      SP_AJALM.ParamByName('@DATAX').Value := Null;
      SP_AJALM.ParamByName('@MARCA_ID').Value := Q_RQLMarca_ID.AsString;
      SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_REQYLOCAL_ID.Value;

      DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_RQLValid.AsString)) ;
      SP_AJALM.ParamByName('@VALID').Value := DATAI;

      SP_AJALM.ExecProc;
end;

procedure TFRequisicao.TransferenciaComBaixa;
begin
     //alem de dar a baixa ele da entrada no estoque do local que recebe a requisição.

      SP_AJALM.ParamByName('@TD_ID').Value := qrAux2TD_ID.AsString;

      SP_AJALM.ParamByName('@DOCTO').Value := Q_REQ_ITEMReq_ID.AsString;
      //Passa o número da requisição como o número do documento.

      SP_AJALM.ParamByName('@N_LOTE').Value := Q_RQLN_LOTE.AsString;
      SP_AJALM.ParamByName('@QTDE').Value := Q_RQLQTDE.AsFloat;
      SP_AJALM.ParamByName('@MAT_ID').Value := Q_RQLMat_ID.AsString;
      SP_AJALM.ParamByName('@FOR_CODI').Value := Q_RQLFor_Codi.AsString;
      SP_AJALM.ParamByName('@MOT_ID').Value := Null;
      SP_AJALM.ParamByName('@TIPO').Value := 'E';
      SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;
      SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
      SP_AJALM.ParamByName('@DATAX').Value := Null;
      SP_AJALM.ParamByName('@MARCA_ID').Value := Q_RQLMarca_ID.AsString;
      SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_REQYLOCAL_ID.Value;

      DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_RQLValid.AsString)) ;
      SP_AJALM.ParamByName('@VALID').Value := DATAI;

      SP_AJALM.ExecProc;


      //alem de dar a baixa ele da entrada no estoque do local que recebe a requisição.

      SP_AJALM.ParamByName('@TD_ID').Value := qrAux2TD_ID.AsString;

      SP_AJALM.ParamByName('@DOCTO').Value := Q_REQ_ITEMReq_ID.AsString;
      //Passa o número da requisição como o número do documento.

      SP_AJALM.ParamByName('@N_LOTE').Value := Q_RQLN_LOTE.AsString;
      SP_AJALM.ParamByName('@QTDE').Value := Q_RQLQTDE.AsFloat;
      SP_AJALM.ParamByName('@MAT_ID').Value := Q_RQLMat_ID.AsString;
      SP_AJALM.ParamByName('@FOR_CODI').Value := Q_RQLFor_Codi.AsString;
      SP_AJALM.ParamByName('@MOT_ID').Value := Null;
      SP_AJALM.ParamByName('@TIPO').Value := 'B';
      SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;
      SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
      SP_AJALM.ParamByName('@DATAX').Value := Null;
      SP_AJALM.ParamByName('@MARCA_ID').Value := Q_RQLMarca_ID.AsString;
      SP_AJALM.ParamByName('@LOCAL_ID').Value := Q_REQYLOCAL_ID.Value;

      DATAI  := formatdatetime('DD-MM-YYYY',strtodate(Q_RQLValid.AsString)) ;
      SP_AJALM.ParamByName('@VALID').Value := DATAI;

      SP_AJALM.ExecProc;

      //alteramos o tipo de requisição para transferencia
    {  Q_REQY.Edit;
      Q_REQYTIPO.AsString := 'T';
      Q_REQY.Post; }

end;

procedure TFRequisicao.SpeedButton3Click(Sender: TObject);
begin
   frmDevolucaoRequisicao := TfrmDevolucaoRequisicao.Create(Self);
   frmDevolucaoRequisicao.ShowModal;

   qrDevolucao.Close;
   qrDevolucao.Parameters[0].Value := Q_REQYReq_ID.Value;
   qrDevolucao.Open;
end;

procedure TFRequisicao.DS_REQDataChange(Sender: TObject; Field: TField);
var qtdeSolicitacoes: Integer;
begin

  try
    if Q_REQYReq_ID.AsString <> '' then begin
      with qrAux222 do begin
          close;
          sql.Clear;
          sql.Add(
               'SELECT COUNT(*) as achei FROM REQ_ITEM WHERE STATUS = ''C'' AND REQ_ID = ' + Q_REQYReq_ID.AsString
          );
          Open;
      end;

      if qrAux222.FieldByName('achei').AsInteger > 0 then begin
          lbCancelada.Visible := True
      end else begin
          lbCancelada.Visible := False;
    end;
  end;
  except

  end;


   lbSolicitacao.Caption := 'Solicitações atendidas: ';
   qtdeSolicitacoes := 0;

   qrSol.Close;
   qrSol.Parameters[0].Value := Q_REQYReq_ID.AsInteger;
   qrSol.Open;
   while not qrSol.Eof do begin
     qtdeSolicitacoes := qtdeSolicitacoes + 1;
        lbSolicitacao.Caption := lbSolicitacao.Caption + qrSolSOL_ID.AsString + ', ';

   qrSol.Next;
   end;

   if qtdeSolicitacoes = 0 then begin
      cboTipo.ReadOnly := False;
      cboTipo.Enabled := True;
      edtMotivoSolicitacao.ReadOnly := False;
      edtMotivoSolicitacao.Enabled := True;
      DBMemo1.ReadOnly := False;
      DBMemo1.Enabled := True;
   end
   else begin
      cboTipo.ReadOnly := true;
      cboTipo.Enabled := false;
      edtMotivoSolicitacao.ReadOnly := true;
      edtMotivoSolicitacao.Enabled := false;
      DBMemo1.ReadOnly := true;
      DBMemo1.Enabled := false;
   end;


   qrDevolucao.Close;
   qrDevolucao.Parameters[0].Value := Q_REQYReq_ID.Value;
   qrDevolucao.Open;


   if Q_REQYTIPO_REQUISICAO.Value = 'E' then
      wwDBEdit4.Color := clRed
   else if Q_REQYTIPO_REQUISICAO.Value = 'U' then
      wwDBEdit4.Color := clRed
   else
      wwDBEdit4.Color := clWindow;


   lbDestino.Visible := False;
   cboDestino.Visible := False;
   cboDestino.LookupValue := '';
   cboDestino.Text := '';
   btnTransferencia.Visible := False;
   btConf.Visible := True;

   if Q_REQYTIPO.AsString = 'R' then begin
           lbDestino.Visible := False;
           cboDestino.Visible := False;
           cboDestino.LookupValue := '';
           cboDestino.Text := '';
           btnTransferencia.Visible := False;
           btConf.Visible := True;
       end;

       if Q_REQYTIPO.AsString = 'T' then begin
           lbDestino.Visible := True;
           cboDestino.Visible := True;
           cboDestino.LookupValue := '';
           cboDestino.Text := '';
           btnTransferencia.Visible := True;
           btConf.Visible := False;
       end;

end;

procedure TFRequisicao.SpeedButton4Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Confirma geração desta requisição?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
   begin
        STP_COPY_REQUISICAO.Parameters[0].Value := Q_REQYReq_ID.Value;
        STP_COPY_REQUISICAO.Prepared;
        STP_COPY_REQUISICAO.ExecProc;

        REQ_ID := inttostr( STP_COPY_REQUISICAO.Parameters[1].Value );

        IF REQ_ID = '' then
                Abort;

        Application.CreateForm(TFRequisicao, FRequisicao);
        FRequisicao.ShowModal;
        //FRequisicao.Release;

   end;

   REQ_ID := Q_REQYReq_ID.AsString;
end;

procedure TFRequisicao.Q_MARCAAfterOpen(DataSet: TDataSet);
begin
{    Q_MARCA.Last;
    if Q_MARCA.RecordCount = 1 then
        begin
            cboMarca.LookupValue := Q_MARCA.fieldbyName('MARCA_ID').AsString;
            cboMarca.Text :=  Q_MARCA.fieldbyName('MARCA_DESC').AsString
        end
    else
    Q_MARCA.First; }
end;

procedure TFRequisicao.Q_REQ_ITEMBeforeEdit(DataSet: TDataSet);
begin
  qrAuxAdd.Close;
  qrAuxAdd.Parameters[0].Value := Q_REQYReq_ID.Value;
  qrAuxAdd.Open;

  IF qrAuxAddACHEI.Value > 0 then begin
    if chkAltera.Checked = False then begin
      ShowMessage('Requisição Finalizada!');
      Abort;
    end;
  end;
end;

procedure TFRequisicao.Q_REQYBeforeEdit(DataSet: TDataSet);
begin
  qrAuxAdd.Close;
  qrAuxAdd.Parameters[0].Value := Q_REQYReq_ID.Value;
  qrAuxAdd.Open;

  IF qrAuxAddACHEI.Value > 0 then begin
    if chkAltera.Checked = False then begin
      ShowMessage('Requisição Finalizada!');
      Abort;
    end;
  end;
end;

procedure TFRequisicao.Button4Click(Sender: TObject);
begin
    if Q_REQ_ITEM.State in [dsEdit, dsInsert] then Q_REQ_ITEM.Post;

    frmLeitorCodigo := TfrmLeitorCodigo.Create(Self);
    with frmLeitorCodigo.qrMateriais do begin
        Close;
        sql.Clear;
        SQL.Add(
          '  SELECT '+
          '          M.MAT_DESC, '+
          '  I.mat_id, '+
          '          I.Qtde, '+
          '          ( '+
          '                  SELECT SUM(QTDE) '+
          '                  FROM Req_Lote '+
          '                  WHERE Req_Item_ID  = I.Req_Item_ID '+
          '          ) AS QTDE_SEL, REQ_ITEM_ID  '+
          '  FROM REQ_ITEM I inner join MATERIAIS M  '+
          '  on I.Mat_ID = M.MAT_ID   '+
          '  where I.REQ_ID = ' + Q_REQYReq_ID.AsString +
          ' ORDER BY M.MAT_DESC'
        );
        Open;
    end;

    with frmLeitorCodigo.qrLotes do begin
        Close;
        sql.Clear;
        sql.Add(
           ' SELECT * '+
           ' FROM Req_Lote  '+
           ' WHERE Req_Item_ID IN  '+
           ' (SELECT Req_Item_ID FROM Req_Item WHERE Req_ID = '  + Q_REQYReq_ID.AsString +  ')   '+
           ' order by mat_id '
        );
        Open;
    end;
    frmLeitorCodigo.lbCodigo.Caption := Q_REQYReq_ID.AsString;
    frmLeitorCodigo.ShowModal;
    Q_RQL.CLOSE;
    Q_RQL.OPEN;

    Q_REQ_ITEM.Close;
    Q_REQ_ITEM.Open;

end;

procedure TFRequisicao.wwDBComboBox1Change(Sender: TObject);
begin
   if wwDBComboBox1.Text <> '' then begin
       if wwDBComboBox1.ItemIndex = 0 then begin
           lbDestino.Visible := False;
           cboDestino.Visible := False;
           cboDestino.LookupValue := '';
           cboDestino.Text := '';
           btnTransferencia.Visible := False;
           btConf.Visible := True;
       end;

       if wwDBComboBox1.ItemIndex = 1 then begin
           lbDestino.Visible := True;
           cboDestino.Visible := True;
           cboDestino.LookupValue := '';
           cboDestino.Text := '';
           btnTransferencia.Visible := True;
           btConf.Visible := False;
       end;
   end;
end;

procedure TFRequisicao.cboMatCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if Q_REQ_ITEM.State IN [DSEDIT, DSINSERT] then
    Q_REQ_ITEMCONTROLA_GRUPO.AsString := Q_MATCONTROLA_GRUPO.AsString;
end;

procedure TFRequisicao.Q_REQYTIPO_REQUISICAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = 'N' then Text := 'Normal';
  if Sender.Value = 'E' then Text := 'Emergência';
  if Sender.Value = 'U' then Text := 'Urgente';
  if Sender.Value = '' then Text := 'Normal';
end;

procedure TFRequisicao.SpeedButton5Click(Sender: TObject);
begin
if  dsMyNavPanel.DataSet.State in [dsBrowse] then
     dsMyNavPanel.DataSet.Cancel;   
end;

procedure TFRequisicao.Q_REQ_ITEMCalcFields(DataSet: TDataSet);
begin
//        STP_ConsultaEstoqueMax.Close;
//        STP_ConsultaEstoqueMax.Parameters[0].Value := Q_REQ_ITEMMat_ID.AsInteger;
//        STP_ConsultaEstoqueMax.Parameters[1].Value := Q_REQYLOCAL_ID.AsInteger;
//        STP_ConsultaEstoqueMax.Open;
//
//        //99999999 indica que nao tem estoque maximo cadastrado
//        if STP_ConsultaEstoqueMaxRESULTADO.AsInteger <> 99999999 then begin
//          if Q_REQ_ITEMQtde.AsFloat > STP_ConsultaEstoqueMaxRESULTADO.AsFloat then
//                  Q_REQ_ITEMESTOQUEMAXIMO.Value := 'S';
//        end;
end;

procedure TFRequisicao.SpeedButton6Click(Sender: TObject);
begin
    frmRequisicaoConferencia := TfrmRequisicaoConferencia.create(Self);
    frmRequisicaoConferencia.lbRequisicao.Caption := IntToStr(Q_REQYReq_ID.AsInteger);
    frmRequisicaoConferencia.showmodal;
end;

procedure TFRequisicao.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    //frmBuscaMaterial.chkConsideraMarca.Checked := True;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
      if Q_REQ_ITEMReq_Item_ID.AsString = '' then
         Q_REQ_ITEM.Append
      else
         Q_REQ_ITEM.Edit;

      Q_REQ_ITEMMat_ID.Value := StrToInt(frmBuscaMaterial.lbSelecao.Caption);
       if Q_REQ_ITEM.State IN [DSEDIT, DSINSERT] then
                Q_REQ_ITEMCONTROLA_GRUPO.AsString := Q_MATCONTROLA_GRUPO.AsString;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

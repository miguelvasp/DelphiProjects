unit URecebLotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook,Tabnotbk, ComCtrls, Wwdotdot, Wwdbcomb, wwstorep,
  wwDialog, wwidlg, ImgList, ADODB ;


type
  TFRecebLote = class(TForm)
    Tb1x: TTabbedNotebook;
    Panel1x: TPanel;
    Label3x: TLabel;
    cboDivx: TwwDBLookupCombo;
    Label2x: TLabel;
    dbCodx: TwwDBEdit;
    Label1x: TLabel;
    txtNFx: TwwDBEdit;
    Label4x: TLabel;
    wwDBEdit2x: TwwDBEdit;
    Panel4X: TPanel;
    Bt_IncluirX: TSpeedButton;
    bt_gravarX: TSpeedButton;
    Bt_cancelarX: TSpeedButton;
    SBT_SAIRX: TSpeedButton;
    SBT_REFRX: TSpeedButton;
    GroupBox3x: TGroupBox;
    GridYx: TwwDBGrid;
    GP1x: TGroupBox;
    wwDBGrid1x: TwwDBGrid;
    GroupBox2x: TGroupBox;
    wwDBEdit1x: TwwDBEdit;
    spVai: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_AUX2: TwwQuery;
    Q_AUX3: TwwQuery;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cboStIt: TwwDBComboBox;
    txtNLote: TwwDBEdit;
    Q_AUX: TwwQuery;
    UPD_RLOT: TUpdateSQL;
    DS_RLOT: TwwDataSource;
    Q_RLOT: TwwQuery;
    Q_RLOTN_Lote: TStringField;
    Q_RLOTQtde: TFloatField;
    Q_RLOTRec_Lote_ID: TAutoIncField;
    Q_RLOTRec_ID: TIntegerField;
    Q_RLOTRec_Item_ID: TIntegerField;
    Q_RLOTQtde_Sobra: TFloatField;
    Q_RLOTUsuario: TStringField;
    Q_RLOTStatus: TStringField;
    Q_RLOS: TwwQuery;
    Q_SQL: TwwQuery;
    SP_AJALM: TwwStoredProc;
    Q_RLOTAlterar: TStringField;
    Q_RLOTValid: TDateTimeField;
    SP_GERA_CPAPAGA: TwwStoredProc;
    DS_RLOS: TwwDataSource;
    Q_RLOSQTDE_SOB: TFloatField;
    qrAtualizaEstoque: TwwQuery;
    ImageList1: TImageList;
    qrCusto: TwwQuery;
    qrCustoNegativo: TwwQuery;
    qrCustoNegativoACHEI: TIntegerField;
    dsREcit: TDataSource;
    qrRecit: TADOQuery;
    qrRecitRec_Item_ID: TAutoIncField;
    qrRecitRec_ID: TIntegerField;
    qrRecitMat_ID: TIntegerField;
    qrRecitQtde: TFloatField;
    qrRecitQtde_OC: TFloatField;
    qrRecitPreco_Unit: TFloatField;
    qrRecitICMS: TFloatField;
    qrRecitIPI: TFloatField;
    qrRecitVl_ICMS: TFloatField;
    qrRecitVl_IPI: TFloatField;
    qrRecitVl_Total: TFloatField;
    qrRecitAlterar: TStringField;
    qrRecitMarca_ID: TIntegerField;
    qrRecitStatus: TStringField;
    qrRecitIOrd_ID: TIntegerField;
    qrRecitOrd_ID: TIntegerField;
    qrRecitMatMarca_ID: TIntegerField;
    qrRecitDevolucao: TFloatField;
    qrRecitMAT_DESC: TStringField;
    qrRecitGENERICO: TStringField;
    qrRecitMAT_CONTROLA: TStringField;
    qrRecitSTORD: TStringField;
    qrRecitMAT_DESC2: TStringField;
    qrCBarras: TADOQuery;
    qrCBarrasID: TAutoIncField;
    qrCBarrasMAT_ID: TIntegerField;
    qrCBarrasN_LOTE: TStringField;
    qrCBarrasVALIDADE: TDateTimeField;
    qrCBarrasMARCA_ID: TIntegerField;
    qrCBarrasFOR_CODI: TStringField;
    qrCBarrasQTDE: TIntegerField;
    qrCBarrasREC_ID: TIntegerField;
    qrCBarrasIMPRESSAO: TStringField;
    qrCBarrasQTDE_SEL: TIntegerField;
    qrCBarrasREC_NF: TStringField;
    qrCBarrasREC_DATA: TDateTimeField;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_gravarXClick(Sender: TObject);
    procedure Bt_IncluirXClick(Sender: TObject);
    procedure Bt_cancelarXClick(Sender: TObject);
    procedure SBT_REFRXClick(Sender: TObject);
    procedure SBT_SAIRXClick(Sender: TObject);
    procedure txtNFxEnter(Sender: TObject);
    procedure wwDBEdit2xEnter(Sender: TObject);
    procedure wwDBEdit2xExit(Sender: TObject);
    procedure cboDivxEnter(Sender: TObject);
    procedure cboDivxExit(Sender: TObject);
    procedure CboPessoaEnter(Sender: TObject);
    procedure CboPessoaExit(Sender: TObject);
    procedure DBCB_CFA_TICMEnter(Sender: TObject);
    procedure DBCB_CFA_TICMExit(Sender: TObject);
    procedure txtNFxExit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cboLocEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

    Procedure Q_RLOTAfterPost(DataSet: TDataSet);
    Procedure DS_RLOTStateChange(Sender: TObject);
    Procedure Q_RLOTBeforePost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBGrid1xEnter(Sender: TObject);
    procedure wwDBGrid1xExit(Sender: TObject);
    procedure spVaiClick(Sender: TObject);
    procedure GridYxCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1xCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ChecaEnabled(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Q_RLOTAfterOpen(DataSet: TDataSet);
    procedure Q_RLOTAfterDelete(DataSet: TDataSet);
    procedure Q_RLOTBeforeDelete(DataSet: TDataSet);
    procedure Q_RLOTNewRecord(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRecebLote: TFRecebLote;
  Interno : Integer;
  F: TextFile;
  TD_ID_NF:String;

implementation

uses U_Funcoes, Unt_Senha, UReceb, UMenu, ufrmImprimeEtiqueta;

{$R *.DFM}

Procedure TFRecebLote.FormShow(Sender: TObject);
var SQL:String;
begin
                //Descobre o ID em Tipo_Documento para "Nota Fisca de Entrada".

                SQL :=  ' SELECT        TD_ID ' +
                        ' FROM          TIPO_DOCUMENTO ' +
                        ' WHERE         APELIDO = ' + '''' + 'NFE' + '''';

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                TD_ID_NF := Q_AUX.FieldByName('TD_ID').AsString;

                FReceb.Q_REC.AfterOpen := ChecaEnabled;

                Q_RLOT.OPEN;

                Q_RLOT.AfterPost := Q_RLOTAfterPost;
                Q_RLOT.BeforePost := Q_RLOTBeforePost;
                DS_RLOT.OnStateChange := DS_RLOTStateChange;
end;

procedure TFRecebLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_AUX2.CLOSE;
        Q_AUX3.CLOSE;

        FReceb.Q_REC.AfterOpen := Nil;

        Q_RLOT.CLOSE;
        Q_RLOS.CLOSE;
        Q_AUX.CLOSE;

        Q_RLOT.AfterPost := nil;
        Q_RLOT.BeforePost := nil;
        DS_RLOT.OnStateChange := nil;

end;

procedure TFRecebLote.bt_gravarXClick(Sender: TObject);
Begin
        Q_RLOT.Post;
end;

procedure TFRecebLote.Bt_IncluirXClick(Sender: TObject);
BEGIN
        Q_RLOT.Insert;
end;


procedure TFRecebLote.Bt_cancelarXClick(Sender: TObject);
begin
        Q_RLOT.Cancel;
end;

procedure TFRecebLote.SBT_REFRXClick(Sender: TObject);
begin
        FReceb.Q_RECIT.CLOSE;
        FReceb.Q_RECIT.OPEN;

        Q_RLOT.CLOSE;
        Q_RLOT.OPEN;

end;

Procedure  TFRecebLote.Q_RLOTAfterPost(DataSet: TDataSet);
var Strchave : string ;
begin
        try
        begin
                StrChave := Q_RLOTRec_Lote_ID.AsString;
                Fmenu.Database1.ApplyUpdates([Q_RLOT]);
        end;
        except
        On E:EdbEngineError do
        begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
        end;

          Q_RLOT.Close;
          Q_RLOT.Open;

          If StrChave <> '' Then
                  Q_RLOT.Locate('Rec_Lote_ID',StrChave,[])
          Else Begin
                  Q_SQL.CLOSE;
                  Q_SQL.SQL.CLEAR;
                  Q_SQL.SQL.ADD('SELECT MAX (Rec_Lote_ID) Rec_Lote_ID FROM Rec_Lote ');
                  Q_SQL.OPEN;
                  StrChave := Q_SQL.Fieldbyname('Rec_Lote_ID').AsString;
                  If StrChave <> '' Then
                          Q_RLOT.Locate('Rec_Lote_ID',StrChave,[])
          End;
End ;


Procedure TFRecebLote.DS_RLOTStateChange(Sender: TObject);
begin
        if (Q_RLOT.State = dsEdit) or (Q_RLOT.State = dsInsert) then
        begin
                SBT_SAIRX.Enabled := false;
                SBT_REFRX.Enabled := false;
                Bt_IncluirX.Enabled := false;
                Bt_GravarX.Enabled := true;
                Bt_CancelarX.Enabled := true;

        end else begin
                SBT_SAIRX.Enabled := true;
                SBT_REFRX.Enabled := true;
                Bt_IncluirX.Enabled := true;
                Bt_GravarX.Enabled := false;
                Bt_CancelarX.Enabled := false;
        end;
end;



Procedure TFRecebLote.Q_RLOTBeforePost(DataSet: TDataSet);
Var SQL:String;
begin

                If Q_RLOTValid.AsString = '' then
                Begin
			MessageDlg('Favor preencher a Validade!',mtWarning,[MbOk],0);
			Abort;
                End;


               { If Q_RLOTQtde.AsFloat - Q_RLOSQtde_Sob.AsFloat > 0.001 then
                Begin
			MessageDlg('A quantidade digitada supera a quantidade Total!',mtWarning,[MbOk],0);
		       //	Abort;
                End;  }

                If Q_RLOTQtde.AsFloat <= 0.001 then
                Begin
			MessageDlg('A quantidade deve ser positiva!',mtWarning,[MbOk],0);
			Abort;
                End;


                SQL :=  ' SELECT         MIN(1) HA ' +
                        ' FROM           REC_LOTE ' +
                        ' WHERE          REC_ITEM_ID = ' + Q_RLOTRec_Item_ID.AsString +
                        ' AND            N_LOTE = ' + '''' + Q_RLOTN_LOTE.AsString + '''' +
                        ' AND            VALID = ' + '''' + FormatDateTime('MM-DD-YYYY',strToDate(Q_RLOTValid.AsString)) + '''' ;


                If (Q_RLOT.State = dsEdit) AND (Q_RLOTREC_LOTE_ID.AsString <> '')  then
                        SQL := SQL + ' AND            REC_LOTE_ID <> ' + Q_RLOTREC_LOTE_ID.AsString;


                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('HA').AsString = '1' Then
                Begin
                        MessageDlg('Este lote j� existe!',mtWarning,[MbOk],0);
                        Abort;
                End;



end;


procedure TFRecebLote.SBT_SAIRXClick(Sender: TObject);
begin
        Close;
end;

procedure TFRecebLote.txtNFxEnter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFRecebLote.wwDBEdit2xEnter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFRecebLote.wwDBEdit2xExit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFRecebLote.cboDivxEnter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFRecebLote.cboDivxExit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
end;

procedure TFRecebLote.CboPessoaEnter(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clAqua;
end;

procedure TFRecebLote.CboPessoaExit(Sender: TObject);
begin
        (sender as TwwDBComboBox).Color := clWindow;
end;

procedure TFRecebLote.DBCB_CFA_TICMEnter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clAqua;
end;

procedure TFRecebLote.DBCB_CFA_TICMExit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clWindow;
end;

procedure TFRecebLote.txtNFxExit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;


procedure TFRecebLote.btn1Click(Sender: TObject);
Var SQL:String;
begin

                SQL := 'INSERT INTO REC_ITEM ' +
        	       ' (REC_ID, ' +
                       ' MAT_ID , ' +
                       ' QTDE, ' +
                       ' PRECO_UNIT, ' +
                       ' ICMS, ' +
                       ' IPI, ' +
        	       ' VL_ICMS, ' +
        	       ' VL_IPI, ' +
                       ' VL_TOTAL) ' +
                       ' (SELECT        ' + FReceb.Q_RECREC_ID.AsString + ',' +
        	       '                OI.MAT_ID, ' +
                       '                OI.QTDE_COMP, ' +
                       '                OI.PRECO_UNIT, ' +
                       Funcoes.Converte(FloatToStr(FReceb.Q_RECICMS.AsFloat),',','.') + ',' +
                       '                OI.IPI, ' +
                       Funcoes.Converte(FloatToStr(FReceb.Q_RECICMS.AsFloat),',','.') + ' *  OI.VALOR/100, ' +
                       '         	OI.VL_IPI, ' +
                       '         	OI.VALOR + OI.VL_IPI + ' + Funcoes.Converte(FloatToStr(FReceb.Q_RECICMS.AsFloat),',','.') + ' *  OI.VALOR/100 ' +
                       '   FROM	        ORDEM_COMPRAITEM  OI, ' +
                       '                MATERIAIS   MAT ' +
                       '  WHERE	        OI.ALTERAR = ' + '''' + 'S' + '''' +
                       '  AND           OI.MAT_ID = MAT.MAT_ID )';


                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);
                       Q_AUX.ExecSQL;

                       SQL := 'UPDATE           ORDEM_COMPRAITEM '+
                              'SET              REC_ID = ' + FReceb.Q_RECREC_ID.AsString + ',' +
                              '                 ALTERAR = NULL ' +
                              'WHERE	        ALTERAR = ' + '''' + 'S' + '''' + '';
                       Q_AUX.SQL.CLEAR;
                       Q_AUX.SQL.ADD(SQL);
                       Q_AUX.ExecSQL;


        FReceb.Q_RECIT.CLOSE;
        FReceb.Q_RECIT.OPEN;

        GridYX.Visible := true;
end;



procedure TFRecebLote.cboLocEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clAqua;
end;



procedure TFRecebLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFRecebLote.SpeedButton3Click(Sender: TObject);
begin
        Q_RLOT.Delete;
end;

procedure TFRecebLote.wwDBGrid1xEnter(Sender: TObject);
begin
        FRecebLote.KeyPreview := false;
end;

procedure TFRecebLote.wwDBGrid1xExit(Sender: TObject);
begin
        FRecebLote.KeyPreview := true;

        If (Q_RLOT.State = dsEdit) or (Q_RLOT.State = dsInsert) then
                Q_RLOT.Post;
end;

procedure TFRecebLote.spVaiClick(Sender: TObject);
var     SQL:String;
        FezAlgum:Boolean;
        Status:String;
        SQL2 :String;
        StrChave :String;
        Fator : Double;
        SQLX: STRING;
        N_lote : string;
        i : Integer;
begin

                Q_AUX.CLOSE;

                SQL := ' SELECT COUNT(1) HA FROM REC_VCTO WHERE REC_ID = ' + FReceb.Q_RECITREC_ID.AsString;
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

               { IF FReceb.Q_RVCT.IsEmpty then
                BEGIN
                    MessageBox(Self.Handle, 'N�o h� vencimentos para esta nota, favor verificar!', 'Erro', MB_OK + MB_ICONERROR);
                    Abort;
                end;  

                If Not Q_AUX.FieldByName('Ha').Asinteger > 0 then
                Begin
                        MessageDlg('Favor gerar Vencimentos.',
                        mtInformation, [mbOk], 0);
                        Abort;
                End;  }

                If (Q_RLOT.State = dsEdit) or (Q_RLOT.State = dsInsert) then
                        Q_RLOT.Post;

                //Verifica��o de consist�ncias, checagem de lan�amentos de lotes controlados.
                SQL := 'SELECT          DBO.CHECA_TODOS_REC(' + FReceb.Q_RECITREC_ID.AsString + ' ) MSG ';
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('MSG').AsString <> 'OK' Then
                Begin
                        MessageDlg(Q_AUX.FIELDBYNAME('MSG').AsString,
                        mtInformation, [mbOk], 0);
                        Abort;
                End;

                //Verfica��o de valor total das mercadorias
                //e valor total da nota para dar mensagem
                SQL := 'SELECT          DBO.CHECA_VALORES_REC(' + FReceb.Q_RECITREC_ID.AsString + ' ) MSG ';
                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                If Q_AUX.FieldByName('MSG').AsString <> 'OK' Then
                Begin
                        If MessageDlg(Q_AUX.FIELDBYNAME('MSG').AsString + #13+#10 + ' Deseja Continuar?',
                        mtInformation, [mbYes,mbNo], 0) = mrNo then
                                Abort;
                End;

                FezAlgum := False;

                If MessageDlg('Deseja realmente dar entrada no Estoque? Note que n�o ser� mais poss�vel alterar os itens (Qtde, Pre�o) ap�s esta confirma��o!',
                        mtWarning,[MbYes,MbNo],0) = mrYes then
                Begin

                        SQL :=
                        'SELECT		 RI.MAT_ID, ' +
                        '		 RN.FOR_CODI, ' +
                        '		 RL.N_LOTE, ' +
                        '		 RL.QTDE, ' +
                        '                CASE WHEN RI.QTDE IS NULL THEN 0 ELSE ROUND(RI.QTDE,2) END QTDE_ORIG, ' +
                        '                CASE WHEN RI.QTDE_OC IS NULL THEN 0 ELSE ROUND(RI.QTDE_OC,2) END QTDE_OC, ' +
                        '		 MAT.UNI_ID, ' +
                        '                RL.REC_LOTE_ID, '+
                        '                RI.REC_ITEM_ID, ' +
                        '                RI.IORD_ID, ' +
                        '                RN.REC_ID, ' +
                        '                MAT.MAT_DESC, ' +
                        '                RI.MATMARCA_ID, ' +
                        '                RN.NFIS, ' +
                        '                RI.MARCA_ID,' +
                        '                RL.VALID, RI.GENERICO, RN.DT_ENTRADA ' +
                        ' FROM		 REC_NF 	RN,' +
                        '		 REC_ITEM	RI LEFT OUTER JOIN' +
                        '		 REC_LOTE	RL ON RI.REC_ITEM_ID = RL.REC_ITEM_ID ' +
                        '                               AND            RL.STATUS = ' + '''' + 'A' + '''' + ',' +
                        '		 MATERIAIS	MAT' +
                        ' WHERE		 RN.REC_ID = ' + FReceb.Q_RECRec_ID.AsString +
                        ' AND            RN.REC_ID 	= RI.REC_ID' +
                        ' AND		 RI.MAT_ID	= MAT.MAT_ID ';

                        //APENAS LOTES COM STATUS ABERTO.

                        Q_AUX.SQL.CLEAR;
                        Q_AUX.SQL.ADD(SQL);
                        Q_AUX.OPEN;

                        //verifica se todos os items tem lote
                        Q_AUX.First;
                        WHILE NOT Q_AUX.EOF DO
                        begin
                             IF Q_AUX.FieldByName('GENERICO').AsString <> 'S' then begin
                               if q_aux.FieldByName('N_LOTE').asstring = '' then
                               begin
                                    MessageBox(Self.Handle, PChar('Lote n�o informado para este item: '+Q_AUX.FieldByName('mat_desc').AsString), 'Erro', MB_OK + MB_ICONERROR);
                                    Abort;
                               end;
                               if Q_AUX.FieldByName('VALID').AsString = '' then
                               begin
                                    MessageBox(Self.Handle, PChar('Data de vencimento n�o informada para este item: '+Q_AUX.FieldByName('mat_desc').AsString), 'Erro', MB_OK + MB_ICONERROR);
                                    Abort;
                               end;
                             end;
                           Q_AUX.Next;
                        end;

                        Q_AUX.First;
                        WHILE NOT Q_AUX.EOF DO
                        Begin
                           SQL :=  'SELECT         MATMARCA_CONVERSAO FATOR ' +
                                        'FROM           MATERIAL_MARCA ' +
                                        'WHERE          MATMARCA_ID = ' + Q_AUX.fieldByName('MATMARCA_ID').AsString;

                                Q_AUX2.SQL.CLEAR;
                                Q_AUX2.SQL.ADD(SQL);
                                Q_AUX2.OPEN;

                                If Q_AUX2.FieldByName('FATOR').AsString <> '' then
                                        Fator := Q_AUX2.FieldByName('FATOR').AsFloat
                                Else
                                        Fator := 1;
                           
                           IF Q_AUX.FieldByName('GENERICO').AsString <> 'S' then begin
                               qrCBarras.Close;
                               qrCBarras.Open;
                               qrCBarras.Append;
                               qrCBarrasMAT_ID.AsInteger := Q_AUX.FieldByName('MAT_ID').AsInteger;
                               qrCBarrasN_LOTE.AsString := Q_AUX.FieldByName('N_LOTE').AsString;
                               qrCBarrasVALIDADE.AsDateTime  := Q_AUX.FieldByName('VALID').AsDateTime;
                               qrCBarrasMARCA_ID.AsInteger := Q_AUX.FieldByName('MARCA_ID').AsInteger;
                               qrCBarrasFOR_CODI.AsString  := Q_AUX.FieldByName('FOR_CODI').AsString;
                               qrCBarrasQTDE.AsInteger := Q_AUX.FieldByName('QTDE').AsInteger * Q_AUX2.FieldByName('FATOR').AsInteger;
                               qrCBarrasREC_ID.AsInteger := Q_AUX.FieldByName('REC_ID').AsInteger;
                               qrCBarrasIMPRESSAO.AsString := 'N';
                               qrCBarrasQTDE_SEL.AsInteger := Q_AUX.FieldByName('QTDE').AsInteger;
                               qrCBarrasREC_NF.AsString := Q_AUX.FieldByName('NFIS').AsString;
                               qrCBarrasREC_DATA.AsDateTime := Q_AUX.FieldByName('DT_Entrada').AsDateTime;
                               qrCBarras.Post;
                           end;



                           IF Q_AUX.FieldByName('GENERICO').AsString <> 'S' then begin
                                SP_AJALM.ParamByName('@TD_ID').Value := TD_ID_NF; //1 representa nota fiscal de entrada.
                                SP_AJALM.ParamByName('@DOCTO').Value := Q_AUX.FIELDBYNAME('NFIS').AsString;
                                 //remover as letras do campo nlote
                                {N_lote := '';
                                for i := 0 to Length(Q_AUX.FIELDBYNAME('N_LOTE').AsString) do
                                begin
                                    if Q_AUX.FIELDBYNAME('N_LOTE').AsString[i] in ['0'..'9'] then
                                    N_lote := n_lote + Q_AUX.FIELDBYNAME('N_LOTE').AsString[i];
                                end; }


                                SP_AJALM.ParamByName('@N_LOTE').Value := Q_AUX.FIELDBYNAME('N_LOTE').AsString;
                                //SP_AJALM.ParamByName('@N_LOTE').Value := N_lote;

                                SQL :=  'SELECT         MATMARCA_CONVERSAO FATOR ' +
                                        'FROM           MATERIAL_MARCA ' +
                                        'WHERE          MATMARCA_ID = ' + Q_AUX.fieldByName('MATMARCA_ID').AsString;

                                Q_AUX2.SQL.CLEAR;
                                Q_AUX2.SQL.ADD(SQL);
                                Q_AUX2.OPEN;

                                If Q_AUX2.FieldByName('FATOR').AsString <> '' then
                                        Fator := Q_AUX2.FieldByName('FATOR').AsFloat
                                Else
                                        Fator := 1;

                                SP_AJALM.ParamByName('@QTDE').Value := Q_AUX.FIELDBYNAME('QTDE').AsFloat * Fator;

                                SP_AJALM.ParamByName('@MAT_ID').Value := Q_AUX.FIELDBYNAME('MAT_ID').AsString;
                                SP_AJALM.ParamByName('@FOR_CODI').Value := Q_AUX.FIELDBYNAME('FOR_CODI').AsString;
                                SP_AJALM.ParamByName('@MOT_ID').Value := Null;
                                SP_AJALM.ParamByName('@TIPO').Value := 'E';
                                SP_AJALM.ParamByName('@USUARIO').Value := StrUsuario;

                                SP_AJALM.ParamByName('@VALID').Value := FormatDateTime('DD-MM-YYYY',strToDate(Q_AUX.FIELDBYNAME('VALID').AsString));
                                SP_AJALM.ParamByName('@LOCAL_ID').Value := FReceb.Q_RECLocal_ID.AsString;
                                SP_AJALM.ParamByName('@MARCA_ID').Value := Q_AUX.FIELDBYNAME('MARCA_ID').AsString; //FReceb.Q_RECITMarca_ID.AsString;

                                SP_AJALM.ParamByName('@REC_ITEM_ID').Value :=  Q_AUX.FIELDBYNAME('REC_ITEM_ID').AsString; //FReceb.Q_RECITRec_Item_ID.AsString;
                                SP_AJALM.ParamByName('@DATAX').Value := Null;

                                If (Q_AUX.FieldByName('QTDE').ASFLOAT > 0.001) then
                                Begin

                                        SP_AJALM.ExecProc;
                                    //alterada posi��o de gera��o de pagamentos
                                     //   SP_GERA_CPAPAGA.ParamByName('@REC_ID').Value := Q_AUX.FIELDBYNAME('REC_ID').AsString;//FReceb.Q_RECRec_ID.AsString;
                                     //   SP_GERA_CPAPAGA.ExecProc;

                                        If SP_AJALM.ParamByName('@MSG').Value <> 'OK' then
                                                MessageDlg(SP_AJALM.ParamByName('@MSG').Value,
                                                mtInformation, [mbOk], 0)
                                        Else Begin
                                                FezAlgum := True;

                                                SQL :=  ' UPDATE         REC_LOTE ' +
                                                        ' SET            STATUS = ' + '''' + 'T' + '''' +
                                                        ' WHERE          REC_LOTE_ID = ' + Q_AUX.FieldByName('REC_LOTE_ID').AsString;


                                                 {Miguel: Custo M�dio - Cancelada essa trigger agora se usa a procedure}
                                                 qrCusto.Params[0].AsInteger :=  FReceb.Q_RECRec_ID.AsInteger;
                                                 qrCusto.ExecSQL;


                                                // Tem que executar um por um para ativar a Trigger
                                                // Em Rec_Lote que atualiza o .
                                                // 'WHERE          REC_ITEM_ID = ' + Q_AUX.FIELDBYNAME('REC_ITEM_ID').AsString;

                                                Q_AUX3.SQL.CLEAR;
                                                Q_AUX3.SQL.ADD(SQL);
                                                Q_AUX3.EXECSQL;

                                                //Vefifica se � Atendimento Parcial ou Total do item da Ordem de Compra.

                                                If Q_AUX.FieldByName('Qtde_Orig').AsFloat - Q_AUX.FieldByName('Qtde_OC').AsFloat < 0 then

                                                        Status := 'P'
                                                Else
                                                        Status := 'T';

                                                //Neste caso o registro em Rec_Item veio de uma
                                                //Ordem_Item. N�o atender a esta condi��o significa
                                                //que foi uma entrada manual.
                                                If Q_AUX.FIELDBYNAME('IORD_ID').AsString <> '' then
                                                Begin
                                                        SQL :=  ' UPDATE        ORDEM_COMPRAITEM ' +
                                                                ' SET           STATUS =   ' + '''' + Status + '''' + ',' +
                                                                '               QTDE_COMP_REC = CASE WHEN QTDE_COMP_REC IS NULL THEN 0 ELSE QTDE_COMP_REC END +' + Funcoes.Converte(FloatToStr(Q_AUX.FIELDBYNAME('QTDE').AsFloat),',','.') + ',' +
                                                                '               QTDE_REC      = CASE WHEN QTDE_REC IS NULL THEN 0 ELSE QTDE_REC END +' + Funcoes.Converte(FloatToStr(SP_AJALM.ParamByName('@QTDE').Value),',','.') +
                                                                ' WHERE         IORD_ID = ' + Q_AUX.FIELDBYNAME('IORD_ID').AsString;


                                                        Q_AUX3.SQL.CLEAR;
                                                        Q_AUX3.SQL.ADD(SQL);
                                                        Q_AUX3.EXECSQL;
                                                End;

                                                //Este SQL Ser� executado fora do loop.
                                                SQL2 := ' UPDATE        REC_NF ' +
                                                        ' SET           STATUS = ' + '''' + 'F' + '''' +
                                                        ' WHERE         REC_ID = ' + Q_AUX.FIELDBYNAME('REC_ID').AsString;


                                                //Gerar estoque aqui

                                        End;
                                End;
                           end;
                           Q_AUX.NEXT;
                        End;

                        // manda os vencimentos para CPAPAGA
                        //    SP_GERA_CPAPAGA.ParamByName('@REC_ID').Value := Q_AUX.FIELDBYNAME('REC_ID').AsString;//FReceb.Q_RECRec_ID.AsString;
                        //    SP_GERA_CPAPAGA.ExecProc;


                        If FezAlgum then
                        Begin
                                Q_AUX3.SQL.CLEAR;
                                Q_AUX3.SQL.ADD(SQL2);
                                Q_AUX3.EXECSQL;

                                StrChave := FReceb.Q_RECRec_ID.AsString;

                                FReceb.Q_REC.CLOSE;
                                FReceb.Q_REC.OPEN;
                                FReceb.Q_REC.Locate('REC_ID', StrChave,[]);

                                FReceb.Q_RECIT.CLOSE;
                                FReceb.Q_RECIT.OPEN;
                                Q_RLOT.CLOSE;
                                Q_RLOT.OPEN;




                                MessageDlg('Opera��o realizada com sucesso!',
                                mtInformation, [mbOk], 0);

                                if MessageBox(Self.Handle, 'Deseja emitir as etiquetas da nota fiscal?', 'Confirma��o', MB_YESNO) = 6 then begin
                                      frmImprimeEtiquetas := TfrmImprimeEtiquetas.Create(Self);
                                      frmImprimeEtiquetas.lbREC_ID.Caption := qrRECITRec_ID.AsString;
                                      frmImprimeEtiquetas.Button1.Click;
                                      frmImprimeEtiquetas.ShowModal;
                                end;

                                Close;
                        End;
                End;

                //baixa as ordens dos itens genericos
                WITH Q_AUX DO begin
                    close;
                    SQL.Clear;
                    sql.Add('exec OC_ITEM_GENERICO ' + qrRecitRec_ID.AsString);
                    ExecSQL;
                end;


                //Verifica se existe valor negativo nos itens da nota fiscal   - miguel
                qrCustoNegativo.close;
                qrCustoNegativo.Params[0].AsInteger := FReceb.Q_RECRec_ID.Value;
                qrCustoNegativo.Open;


                //ADICIONA OS VALORES DE CUSTO MEDIO E CUSTO DE REPOSI��O NO ESTOQUE
                {WITH Q_AUX DO begin
                    close;
                    SQL.Clear;
                    sql.Add('exec PRECOS_ESTOQUE ' + qrRecitRec_ID.AsString);
                    ExecSQL;
                end;}

                //PREENCHE A NOVA ROTINA DE GERACAO DE VALORES DE CUSTO MEDIO E REPOSICAO
                qrRecit.First;
                while not qrRecit.Eof DO begin
                    WITH Q_AUX DO begin
                        close;
                        SQL.Clear;
                        sql.Add('exec PR_CUSTO_MEDIO_ADD @ID = ' + qrRecitRec_Item_ID.AsString + ', @MAT_ID = ' + qrRecitMat_ID.AsString);
                        ExecSQL;
                    end;
                    qrRecit.NEXT;
                end;


                if qrCustoNegativoACHEI.Value > 0 then
                begin
                        MessageBox(Self.Handle, PChar('A entrada da nota gerou custo m�dio negativo' + #13 + 'Verificar informa��es!'), 'Erro', MB_OK + MB_ICONERROR)  ;
                end;


                //ENCERRA OS ITENS DE OC DE SALDO
              {   WITH Q_AUX DO begin
                    close;
                    SQL.Clear;
                    sql.Add('exec PR_RECEBIMENTO_GERA_NOVAS_ORDENS_COMPRA_SALDO ' + qrRecitRec_ID.AsString);
                    ExecSQL;
                end; }
                




End;

procedure TFRecebLote.GridYxCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
                If FReceb.Q_RECITStatus.AsString = 'A' then
                        AFont.Color := clBlue;
                If FReceb.Q_RECITStatus.AsString = 'P' then
                        AFont.Color := clRed;
                If FReceb.Q_RECITStatus.AsString = 'T' then
                        AFont.Color := clGreen;
                If Highlight then
                        AFont.Color := clWhite;
end;

procedure TFRecebLote.ChecaEnabled(DataSet: TDataSet);
begin
                If FReceb.Q_RECStatus.AsString = 'F' then
                Begin
                        SpVai.Enabled := False;
                        wwDBGrid1x.Enabled := False;
                        bt_IncluirX.Enabled := False;
                        speedButton3.Enabled := False;

                End Else Begin
                        SpVai.Enabled := True;
                        wwDBGrid1x.Enabled := True;
                End;
End;

procedure TFRecebLote.wwDBGrid1xCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
                If Q_RLOTStatus.AsString = 'A' then
                        AFont.Color := clBlue;
                If Q_RLOTStatus.AsString = 'P' then
                        AFont.Color := clRed;
                If Q_RLOTStatus.AsString = 'T' then
                        AFont.Color := clGreen;
end;

procedure TFRecebLote.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
        qrRECIT.CLOSE;
        qrRECIT.Parameters[0].Value := FReceb.Q_RECRec_ID.Value;
        qrRECIT.Open;

        If REC_LOTE= TRUE Then Begin
           Q_RLOTQtde.ReadOnly := true;
           Q_RLOTN_Lote.ReadOnly := true;
           spVai.Enabled:= FALSE;
           bt_IncluirX.Enabled := False;
           speedButton3.Enabled := False;

        End
        Else Begin
           spVai.Enabled:= TRUE;
           Q_RLOTQtde.ReadOnly:= FALSE;
           Q_RLOTN_Lote.ReadOnly := FALSE;
        End;
end;

procedure TFRecebLote.Q_RLOTAfterOpen(DataSet: TDataSet);
Var SQL:String;
    Qtde:Real;
begin
        If FReceb.Q_RECITRec_Item_ID.AsString <> '' Then
        Begin
                SQL :=  'SELECT          SUM(QTDE) QTDE ' +
                        'FROM            REC_LOTE ' +
                        'WHERE           REC_Item_ID = ' + FReceb.Q_RECITRec_Item_ID.AsString;

                Q_AUX.SQL.CLEAR;
                Q_AUX.SQL.ADD(SQL);
                Q_AUX.OPEN;

                Qtde := FReceb.Q_RECITQtde.AsFloat - Q_AUX.FIELDBYNAME('QTDE').AsFloat;

                SQL := 'SELECT CAST(' + Funcoes.Converte(FloatToStr(Qtde),',','.') + ' + 0.00 AS FLOAT) QTDE_SOB ';

                Q_RLOS.SQL.CLEAR;
                Q_RLOS.SQL.ADD(SQL);
                Q_RLOS.OPEN;

        End;
end;

procedure TFRecebLote.Q_RLOTAfterDelete(DataSet: TDataSet);
begin
   try
     begin
       Fmenu.Database1.ApplyUpdates([Q_RLOT]);
     end;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_RLOT.CLOSE;
   Q_RLOT.OPEN;

end;

procedure TFRecebLote.Q_RLOTBeforeDelete(DataSet: TDataSet);
begin
        if MessageDlg('Confirma Exclus�o ?',
        mtInformation, [mbYes, mbNo], 0) = mrNo then
        begin
                Abort;
        end;

end;

procedure TFRecebLote.Q_RLOTNewRecord(DataSet: TDataSet);
begin
        Q_RLOTRec_ID.AsString           := qrRECITRec_ID.AsString;
        Q_RLOTRec_Item_ID.AsString      := qrRECITRec_Item_ID.AsString;
        Q_RLOTUsuario.AsString          := StrUsuario;
        Q_RLOTStatus.AsString           := 'A'; //Aberto

end;

procedure TFRecebLote.SpeedButton7Click(Sender: TObject);
begin
        WinExec('calc.exe',sw_show);
end;

procedure TFRecebLote.Button1Click(Sender: TObject);
begin
    frmImprimeEtiquetas := TfrmImprimeEtiquetas.Create(Self);
    frmImprimeEtiquetas.lbREC_ID.Caption := qrRECITRec_ID.AsString;
    frmImprimeEtiquetas.Button1.Click;
    frmImprimeEtiquetas.ShowModal;
end;

end.

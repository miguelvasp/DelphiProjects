unit UfrmRequisicaoSimplificada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Db, ADODB, Buttons, wwdblook, DBTables, wwstorep,
  Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmRequisicaoSimplificada = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlLocal: TPanel;
    pnlCentro: TPanel;
    pnlCodigoBarras: TPanel;
    RadioGroup1: TRadioGroup;
    edtCodigo: TEdit;
    btnOk: TButton;
    SpeedButton1: TSpeedButton;
    qrRequisicao: TADOQuery;
    qrRequisicaoReq_ID: TAutoIncField;
    qrRequisicaoData: TDateTimeField;
    qrRequisicaoUsuario: TStringField;
    qrRequisicaoCC_ID: TIntegerField;
    qrRequisicaoData_Sist: TDateTimeField;
    qrRequisicaoLOCAL_ID: TIntegerField;
    qrRequisicaoLOCAL_DESTINO: TIntegerField;
    qrRequisicaoTIPO: TStringField;
    qrRequisicaoTIPO_REQUISICAO: TStringField;
    qrLocal: TADOQuery;
    qrCentroCusto: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    qrCentroCustoFinancSN: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    btnSelecionaCentro: TButton;
    qrBarras: TADOQuery;
    qrBarrasID: TAutoIncField;
    qrBarrasMAT_ID: TIntegerField;
    qrBarrasN_LOTE: TStringField;
    qrBarrasVALIDADE: TDateTimeField;
    qrBarrasMARCA_ID: TIntegerField;
    qrBarrasFOR_CODI: TStringField;
    qrBarrasQTDE: TIntegerField;
    qrBarrasREC_ID: TIntegerField;
    qrBarrasIMPRESSAO: TStringField;
    qrBarrasQTDE_SEL: TIntegerField;
    qrBarrasREC_NF: TStringField;
    qrBarrasREC_DATA: TDateTimeField;
    qrItens: TADOQuery;
    qrItensReq_Item_ID: TAutoIncField;
    qrItensReq_ID: TIntegerField;
    qrItensMat_ID: TIntegerField;
    qrItensMarca_ID: TIntegerField;
    qrItensUni_Sigla: TStringField;
    qrItensQtde: TFloatField;
    qrItensStatus: TStringField;
    qrItenstipoConsumo: TStringField;
    qrItensCUSTO: TFloatField;
    qrItensREPOSICAO: TFloatField;
    qrItensCONTROLA_GRUPO: TStringField;
    qrItensAUTORIZA: TStringField;
    qrItensAUTORIZA_MOTIVO: TStringField;
    qrItensQtdeConferencia: TFloatField;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisGRU_ID: TIntegerField;
    qrMateriaisUNI_ID: TIntegerField;
    qrMateriaisMAT_IPI: TFloatField;
    qrMateriaisMAT_CONTROLA: TStringField;
    qrMateriaisMAT_ESTMIN: TFloatField;
    qrMateriaisMAT_LOTEPED: TFloatField;
    qrMateriaisMAT_LOCACAO: TStringField;
    qrMateriaisCusto_Medio: TFloatField;
    qrMateriaisGENERICO: TStringField;
    qrMateriaisMAT_ATIVO: TStringField;
    qrMateriaisMAT_ESTMAX: TFloatField;
    qrMateriaisCONTROLA_GRUPO: TStringField;
    qrMateriaisCOD_BIONEXO: TStringField;
    qrMateriaisRelConsumo: TStringField;
    qrMateriaisCritico: TStringField;
    qrMateriaisMatLaboratorio: TStringField;
    qrMateriaisEAN: TStringField;
    qrMateriaisLocalArmazem: TStringField;
    qrMateriaisValorContrato: TFloatField;
    qrMateriaisUNI_ID_1: TAutoIncField;
    qrMateriaisUNI_SIGLA: TStringField;
    qrMateriaisUNI_DESC: TStringField;
    qrAux: TADOQuery;
    qrLote: TADOQuery;
    qrLoteRR_ID: TAutoIncField;
    qrLoteReq_Item_ID: TIntegerField;
    qrLoteMat_ID: TIntegerField;
    qrLoteN_Lote: TWideStringField;
    qrLoteValid: TDateTimeField;
    qrLoteMarca_ID: TIntegerField;
    qrLoteFor_Codi: TStringField;
    qrLoteLocal_ID: TIntegerField;
    qrLoteQtde: TFloatField;
    qrLoteUsuario: TStringField;
    qrLoteStatus: TStringField;
    qrLoteDevolucao: TFloatField;
    qrLoteAux: TFloatField;
    qrLoteDT_INICIO: TDateTimeField;
    qrLoteDT_FIM: TDateTimeField;
    qrLoteOBS: TStringField;
    qrLoteSEL: TStringField;
    qrLoteDT_APROVACAO: TDateTimeField;
    SP_AJALM: TwwStoredProc;
    qrGrid: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    qrGridMAT_DESC: TStringField;
    qrGridMARCA_DESC: TStringField;
    qrGridN_Lote: TWideStringField;
    qrGridValid: TDateTimeField;
    qrGridFor_Codi: TStringField;
    qrGridQtde: TFloatField;
    Panel4: TPanel;
    pnlRequisicao: TPanel;
    qrEstoque: TADOQuery;
    qrEstoqueQTDE: TFloatField;
    qrEstoqueMAT_ID: TIntegerField;
    qrEstoqueMAT_DESC: TStringField;
    qrEstoqueGRU_DESC: TStringField;
    qrEstoqueGRU_ID: TIntegerField;
    qrEstoqueUNI_ID: TIntegerField;
    qrEstoqueMARCA_DESC: TStringField;
    qrEstoqueUNI_SIGLA: TStringField;
    qrEstoqueDS_LOC: TStringField;
    qrEstoqueMARCA_ID: TIntegerField;
    qrEstoqueN_Lote: TWideStringField;
    qrEstoqueValid: TDateTimeField;
    qrEstoqueREPOSICAO: TFloatField;
    qrEstoqueEAN: TStringField;
    qrEstoqueFor_Codi: TStringField;
    qrMatCombo: TADOQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    cboMat: TwwDBLookupCombo;
    qrEstoqueMat: TADOQuery;
    qrEstoqueMatQTDE: TFloatField;
    qrEstoqueMatMAT_ID: TIntegerField;
    qrEstoqueMatMAT_DESC: TStringField;
    qrEstoqueMatGRU_DESC: TStringField;
    qrEstoqueMatGRU_ID: TIntegerField;
    qrEstoqueMatUNI_ID: TIntegerField;
    qrEstoqueMatMARCA_DESC: TStringField;
    qrEstoqueMatUNI_SIGLA: TStringField;
    qrEstoqueMatDS_LOC: TStringField;
    qrEstoqueMatMARCA_ID: TIntegerField;
    qrEstoqueMatN_Lote: TWideStringField;
    qrEstoqueMatValid: TDateTimeField;
    qrEstoqueMatREPOSICAO: TFloatField;
    qrEstoqueMatEAN: TStringField;
    qrEstoqueMatFor_Codi: TStringField;
    qrLocalizaEAN: TADOQuery;
    qrLocalizaEANMAT_ID: TAutoIncField;
    qrEstoqueId: TLargeintField;
    qrEstoqueCH: TIntegerField;
    qrEstoqueQtdeSolicitada: TIntegerField;
    Panel5: TPanel;
    Button1: TButton;
    qrEstoqueMatId: TLargeintField;
    qrEstoqueMatCH: TIntegerField;
    qrEstoqueMatQtdeSolicitada: TIntegerField;
    qrEstoqueMax: TADOQuery;
    qrEstoqueMaxIdMaterialArea: TAutoIncField;
    qrEstoqueMaxMAT_ID: TIntegerField;
    qrEstoqueMaxLocal_ID: TIntegerField;
    qrEstoqueMaxEstoqueMinimo: TFloatField;
    qrEstoqueMaxEstoqueMaximo: TFloatField;
    qrGridEstoqueMinimo: TFloatField;
    qrGridEstoqueMaximo: TFloatField;
    btnGetMaterial: TBitBtn;
    qrMatComboQTDE: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btnSelecionaCentroClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure LerEAN;
    procedure LerCodigoBarras;
    procedure BaixaEstoque;
    procedure Reload;
    procedure btnOkClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure LerCombo;
    procedure Button1Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequisicaoSimplificada: TfrmRequisicaoSimplificada;

implementation

uses UMenu, URelReq, ufrmSelecionaLoteEAN, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmRequisicaoSimplificada.FormShow(Sender: TObject);
begin
     qrLocal.close;
     qrLocal.Parameters[0].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
     qrLocal.Open;

     if qrLocalCONTROLA_ESTOQUE.AsString <> 'S' then begin
         ShowMessage('O local vinculado ao seu login não efetua controle de estoque!');
         Self.Close;
     end;

     pnlLocal.Caption := '     ' + qrLocalDescricao.AsString;

     qrCentroCusto.Close;
     qrCentroCusto.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
     qrCentroCusto.Open;

     qrCentroCusto.Last;

     qrMatCombo.Close;
     qrMatCombo.Parameters[0].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
     qrMatCombo.Open;

     if qrCentroCusto.RecordCount = 1 then begin
          btnSelecionaCentro.Click;
     end;

     if qrCentroCusto.RecordCount = 0 then begin
         ShowMessage('Não foram encontrados centros de custo vinculados ao seu login!');
         Self.Close;
     end;



end;

procedure TfrmRequisicaoSimplificada.btnSelecionaCentroClick(
  Sender: TObject);
begin
    qrRequisicao.Open;
    qrRequisicao.Append;
    qrRequisicaoData.Value := Now;
    qrRequisicaoUsuario.Value := FMenu.sqlUsuariosNome.Value;
    qrRequisicaoCC_ID.Value := qrCentroCustoCC_ID.Value;
    qrRequisicaoData_Sist.Value := Now;
    qrRequisicaoLOCAL_ID.Value := qrLocalLocal_ID.Value;
    qrRequisicao.Post;

    pnlCentro.Caption := '     ' + qrCentroCustoCC_Desc.Value;
    wwDBLookupCombo1.Visible := False;
    pnlCodigoBarras.Visible := True;

    Reload;
    btnSelecionaCentro.Visible := False;

    pnlRequisicao.Caption := '     ' + qrRequisicaoReq_ID.AsString;

end;

procedure TfrmRequisicaoSimplificada.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;

       btnOk.Click;

     end;
end;

procedure TfrmRequisicaoSimplificada.LerCodigoBarras;
begin
    qrBarras.Close;
    qrBarras.Parameters[0].Value := StrToInt(edtCodigo.Text);
    qrBarras.Open;

    if qrBarras.IsEmpty then begin
       ShowMessage('Material não encontrado');
    end
    else begin

        //////////////////////////////////////////////////////////
        //  controla o material
        qrEstoqueMax.Close;
        
        qrEstoqueMax.Parameters[0].Value := qrBarrasMAT_ID.AsInteger;
        qrEstoqueMax.Parameters[1].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
        qrEstoqueMax.Open;



        qrEstoqueMax.Last;
        if qrEstoqueMax.RecordCount = 0 then begin
            ShowMessage('Material não cadastrado para o local ao que seu login pertence');
            Abort;
        end;

    
        /////////////////////////////////////






        qrMateriais.Close;
        qrMateriais.Parameters[0].Value := qrBarrasMAT_ID.AsInteger;
        qrMateriais.Open;

        //Procura pelo material
        if qrItens.Locate('MAT_ID', qrBarrasMAT_ID.AsInteger, []) then begin
            qrItens.Edit;
            qrItensQtde.Value := qrItensQtde.Value + 1;
            qrItens.Post;
        end
        else begin
            qrItens.Append;
            qrItensReq_ID.Value := qrRequisicaoReq_ID.Value;
            qrItensMat_ID.value := qrBarrasMAT_ID.Value;
            qrItensMarca_ID.value := qrBarrasMARCA_ID.Value;
            qrItensUni_Sigla.value := qrMateriaisUNI_SIGLA.AsString;
            qrItensQtde.value := 1;
            qrItensStatus.value := 'F';
            qrItenstipoConsumo.value := 'C';
            qrItens.Post
        end;

        //Cadastra o lote
        qrLote.Append;
        qrLoteReq_Item_ID.value := qrItensReq_Item_ID.AsInteger;
        qrLoteMat_ID.value := qrBarrasMAT_ID.Value;
        qrLoteN_Lote.value := qrBarrasN_LOTE.Value;
        qrLoteValid.value := qrBarrasVALIDADE.Value;
        qrLoteMarca_ID.value := qrBarrasMARCA_ID.Value;
        qrLoteFor_Codi.value := qrBarrasFOR_CODI.Value;
        qrLoteLocal_ID.value := qrRequisicaoLOCAL_ID.AsInteger;
        qrLoteQtde.value := 1;
        qrLoteUsuario.value := FMenu.sqlUsuariosNome.Value;
        qrLoteStatus.value := 'F';
        qrLote.Post;

        BaixaEstoque;

        qrGrid.Close;
        qrGrid.Parameters[0].Value := qrRequisicaoReq_ID.AsInteger;
        qrGrid.Open;

        edtCodigo.Text := '';
        edtCodigo.SetFocus;

    end;
end;

procedure TfrmRequisicaoSimplificada.LerEAN;
var achei : Boolean;
ean, EANsemZero: string;
I : Integer;
begin

    achei := False;
    ean := '';
    for i := 0 to Length(Trim(edtCodigo.Text)) do
    begin
        if achei = False then begin
            if (Trim(edtCodigo.Text)[i] <> ' ') then begin
              if   (Trim(edtCodigo.Text)[i] <> #0)    then
                ean := ean + Trim(edtCodigo.Text)[i];
            end
            else begin
                achei := True;
            end;
        end;

    end;

    if copy(ean, 1,1 ) = '0' then
        EANsemZero := Copy(ean, 2, Length(ean))
    else
        EANsemZero := ean;

    qrLocalizaEAN.Close;
    qrLocalizaEAN.Parameters[0].Value := ean;
    qrLocalizaEAN.Parameters[1].Value := EANsemZero    ;
    qrLocalizaEAN.Parameters[2].Value := ean;
    qrLocalizaEAN.Open;

    if qrLocalizaEANMAT_ID.AsString = '' then begin
        ShowMessage('Material não localizado');
        Abort;
    end;
  //////////////////////////////////////////////////////////
  //  controla o material
  qrEstoqueMax.Close;
  qrEstoqueMax.Parameters[0].Value := qrLocalizaEANMAT_ID.AsInteger;
  qrEstoqueMax.Parameters[1].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
  qrEstoqueMax.Open;



  qrEstoqueMax.Last;
  if qrEstoqueMax.RecordCount = 0 then begin
      ShowMessage('Material não cadastrado para o local ao que seu login pertence');
      Abort;
  end;


  /////////////////////////////////////

   with qrAux do begin
       Close;
       sql.Clear;
       sql.Add('EXEC STP_ReqSimplificadaConsulta ' + FMenu.sqlUsuariosCH.AsString + ', ' + qrLocalizaEANMAT_ID.AsString + ', ' + qrRequisicaoLOCAL_ID.AsString);
       ExecSQL;
   end;
   qrEstoque.Close;
   qrEstoque.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
   qrEstoque.Open;
   qrEstoque.Last;
   qrEstoque.First;

   if qrEstoque.RecordCount = 0 then begin
        ShowMessage('Código EAN sem Estoque');
        edtCodigo.Text := '';
        edtCodigo.SetFocus;
        Abort;
   end
   else if qrEstoque.RecordCount > 0 then begin
        frmSelecionaLoteEAN := TfrmSelecionaLoteEAN.Create(Self);
        frmSelecionaLoteEAN.DataSource1.DataSet := qrEstoque;
        frmSelecionaLoteEAN.ShowModal;
   end ;


    qrMateriais.Close;
    qrMateriais.Parameters[0].Value := qrEstoqueMAT_ID.AsInteger;
    qrMateriais.Open;


    if qrEstoque.State in [dsedit] then
        qrEstoque.Post;


    qrEstoque.First;
    while not qrEstoque.Eof do begin
         if qrEstoqueQtdeSolicitada.AsInteger > 0 then begin
            //Procura pelo material
            if qrItens.Locate('MAT_ID', qrEstoqueMAT_ID.AsInteger, []) then begin
                qrItens.Edit;
                qrItensQtde.Value := qrItensQtde.Value + qrEstoqueQtdeSolicitada.AsInteger;
                qrItens.Post;
            end
            else begin
                qrItens.Append;
                qrItensReq_ID.Value := qrRequisicaoReq_ID.Value;
                qrItensMat_ID.value := qrEstoqueMAT_ID.Value;
                qrItensMarca_ID.value := qrEstoqueMARCA_ID.Value;
                qrItensUni_Sigla.value := qrEstoqueUNI_SIGLA.AsString;
                qrItensQtde.value := + qrEstoqueQtdeSolicitada.AsInteger;
                qrItensStatus.value := 'F';
                qrItenstipoConsumo.value := 'C';
                qrItens.Post
            end;

            //Cadastra o lote
            qrLote.Append;
            qrLoteReq_Item_ID.value := qrItensReq_Item_ID.AsInteger;
            qrLoteMat_ID.value := qrEstoqueMAT_ID.Value;
            qrLoteN_Lote.value := qrEstoqueN_Lote.Value;
            qrLoteValid.value := qrEstoqueValid.Value;
            qrLoteMarca_ID.value := qrEstoqueMARCA_ID.Value;
            qrLoteFor_Codi.value := qrEstoqueFor_Codi.Value;
            qrLoteLocal_ID.value := qrRequisicaoLOCAL_ID.AsInteger;
            qrLoteQtde.value := + qrEstoqueQtdeSolicitada.AsInteger;
            qrLoteUsuario.value := FMenu.sqlUsuariosNome.Value;
            qrLoteStatus.value := 'F';
            qrLote.Post;

            BaixaEstoque;

            qrGrid.Close;
            qrGrid.Parameters[0].Value := qrRequisicaoReq_ID.AsInteger;
            qrGrid.Open;

            edtCodigo.Text := '';
            edtCodigo.SetFocus;
        end;
        qrEstoque.Next;
    end;



    with qrAux do begin

        Close;
        sql.Clear;
        sql.Add('UPDATE I SET I.QTDE = L.QTDE FROM Req_Item I INNER JOIN  (SELECT Req_Item_ID, SUM(QTDE) QTDE FROM Req_Lote GROUP BY Req_Item_ID) L ON I.Req_Item_ID = l.Req_Item_ID WHERE I.Req_ID = ' + qrRequisicaoReq_ID.AsString)       ;
        ExecSQL;


    end;



end;

procedure TfrmRequisicaoSimplificada.BaixaEstoque;
begin

    SP_AJALM.ParamByName('@TD_ID').Value := 19;
    SP_AJALM.ParamByName('@DOCTO').Value := qrRequisicaoReq_ID.AsString;
    SP_AJALM.ParamByName('@N_LOTE').Value := qrLoteN_Lote.AsString;
    SP_AJALM.ParamByName('@QTDE').Value := qrLoteQtde.AsFloat;
    SP_AJALM.ParamByName('@MAT_ID').Value := qrLoteMat_ID.AsString;
    SP_AJALM.ParamByName('@FOR_CODI').Value := qrLoteFor_Codi.AsString;
    SP_AJALM.ParamByName('@MOT_ID').Value := Null;
    SP_AJALM.ParamByName('@TIPO').Value := 'B';
    SP_AJALM.ParamByName('@USUARIO').Value := FMenu.sqlUsuariosNome.AsString;
    SP_AJALM.ParamByName('@REC_ITEM_ID').Value := Null;
    SP_AJALM.ParamByName('@DATAX').Value := Null;
    SP_AJALM.ParamByName('@MARCA_ID').Value := qrLoteMarca_ID.AsString;
    SP_AJALM.ParamByName('@LOCAL_ID').Value := qrRequisicaoLOCAL_ID.Value; 
    SP_AJALM.ParamByName('@VALID').Value := formatdatetime('DD-MM-YYYY',strtodate(qrLoteValid.AsString)) ;
    SP_AJALM.ExecProc;

    If SP_AJALM.ParamByName('@MSG').value <> 'OK' then
       MessageDlg(SP_AJALM.ParamByName('@MSG').Value,mtWarning,[MbOk],0)
    else begin
      
    end;
end;

procedure TfrmRequisicaoSimplificada.Reload;
begin
    qrItens.close;
    qrItens.Parameters[0].Value := qrRequisicaoReq_ID.AsInteger;
    qrItens.Open;

    qrLote.Close;
    qrLote.Parameters[0].Value :=  qrRequisicaoReq_ID.AsInteger;
    qrLote.Open;
end;

procedure TfrmRequisicaoSimplificada.btnOkClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
          LerEAN;
  if RadioGroup1.ItemIndex = 1 then
          LerCodigoBarras;
  if RadioGroup1.ItemIndex = 2 then
          LerCombo;
end;

procedure TfrmRequisicaoSimplificada.SpeedButton1Click(Sender: TObject);
begin
        Application.CreateForm(TFRelReq,FRelReq);
        FRelReq.Q_Req.close;
        FRelReq.Q_Req.Params[0].AsInteger := qrRequisicaoReq_ID.AsInteger;
        FRelReq.Q_Req.Open;
        FRelReq.QR_REQ.Preview;
        FRelReq.Close;
end;

procedure TfrmRequisicaoSimplificada.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex < 2 then begin
     edtCodigo.Visible := True;
     cboMat.Visible := False;
     btnGetMaterial.Visible := False;
  end
  else begin
     edtCodigo.Visible := false;
     cboMat.Visible := true;
     btnGetMaterial.Visible := True; 
  end;
end;

procedure TfrmRequisicaoSimplificada.LerCombo;
var somaItens: Integer;
begin

  qrEstoqueMax.Close;
  qrEstoqueMax.Parameters[0].Value := StrToInt(cboMat.LookupValue);
  qrEstoqueMax.Parameters[1].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
  qrEstoqueMax.Open;



  qrEstoqueMax.Last;
  if qrEstoqueMax.RecordCount = 0 then begin
      ShowMessage('Material não cadastrado para o local ao que seu login pertence');
      Abort;
  end;




   with qrAux do begin
       Close;
       sql.Clear;
       sql.Add('EXEC STP_ReqSimplificadaConsulta ' + FMenu.sqlUsuariosCH.AsString + ', ' + cboMat.LookupValue + ', ' + qrRequisicaoLOCAL_ID.AsString);
       ExecSQL;
   end;

   qrEstoqueMat.Close;
   qrEstoqueMat.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
   qrEstoqueMat.Open;
   qrEstoqueMat.Last;
   qrEstoqueMat.First;

   if qrEstoqueMat.RecordCount = 0 then begin
        ShowMessage('Material sem Estoque');
        cboMat.Text := '';
        cboMat.SetFocus;
        Abort;
   end
   else if qrEstoqueMat.RecordCount > 0 then begin
        frmSelecionaLoteEAN := TfrmSelecionaLoteEAN.Create(Self);
        frmSelecionaLoteEAN.DataSource1.DataSet := qrEstoqueMat;
        frmSelecionaLoteEAN.ShowModal;
   end ;

   qrEstoqueMat.First;

    qrMateriais.Close;
    qrMateriais.Parameters[0].Value := qrEstoqueMatMAT_ID.AsInteger;
    qrMateriais.Open;

     if qrEstoqueMat.State in [dsedit] then
        qrEstoqueMat.Post;

    somaItens := 0;
    qrEstoqueMat.First;
    while not qrEstoqueMat.Eof do begin
        somaItens := somaItens + qrEstoqueMatQtdeSolicitada.AsInteger;
        qrEstoqueMat.Next;
    end;



    qrEstoqueMat.First;
    while not qrEstoqueMat.Eof do begin
          if   qrEstoqueMatQtdeSolicitada.AsInteger > 0 then begin
              if qrItens.Locate('MAT_ID', qrEstoqueMatMAT_ID.AsInteger, []) then begin
                  qrItens.Edit;
                  qrItensQtde.Value := qrItensQtde.Value + 1;
                  qrItens.Post;
              end
              else begin
                  qrItens.Append;
                  qrItensReq_ID.Value := qrRequisicaoReq_ID.Value;
                  qrItensMat_ID.value := qrEstoqueMatMAT_ID.Value;
                  qrItensMarca_ID.value := qrEstoqueMatMARCA_ID.Value;
                  qrItensUni_Sigla.value := qrEstoqueMatUNI_SIGLA.AsString;
                  qrItensQtde.value := qrEstoqueMatQtdeSolicitada.AsInteger;
                  qrItensStatus.value := 'F';
                  qrItenstipoConsumo.value := 'C';
                  qrItens.Post
              end;

              //Cadastra o lote
              qrLote.Append;
              qrLoteReq_Item_ID.value := qrItensReq_Item_ID.AsInteger;
              qrLoteMat_ID.value := qrEstoqueMatMAT_ID.Value;
              qrLoteN_Lote.value := qrEstoqueMatN_Lote.Value;
              qrLoteValid.value := qrEstoqueMatValid.Value;
              qrLoteMarca_ID.value := qrEstoqueMatMARCA_ID.Value;
              qrLoteFor_Codi.value := qrEstoqueMatFor_Codi.Value;
              qrLoteLocal_ID.value := qrRequisicaoLOCAL_ID.AsInteger;
              qrLoteQtde.value := qrEstoqueMatQtdeSolicitada.AsInteger;
              qrLoteUsuario.value := FMenu.sqlUsuariosNome.Value;
              qrLoteStatus.value := 'F';
              qrLote.Post;

              BaixaEstoque;

              qrGrid.Close;
              qrGrid.Parameters[0].Value := qrRequisicaoReq_ID.AsInteger;
              qrGrid.Open;

              cboMat.Text := '';
              cboMat.SetFocus;
          end;
          qrEstoqueMat.Next;
    end;


    with qrAux do begin

        Close;
        sql.Clear;
        sql.Add('UPDATE I SET I.QTDE = L.QTDE FROM Req_Item I INNER JOIN  (SELECT Req_Item_ID, SUM(QTDE) QTDE FROM Req_Lote GROUP BY Req_Item_ID) L ON I.Req_Item_ID = l.Req_Item_ID WHERE I.Req_ID = ' + qrRequisicaoReq_ID.AsString)       ;
        ExecSQL;


    end;

end;

procedure TfrmRequisicaoSimplificada.Button1Click(Sender: TObject);
begin
  try
  if qrRequisicaoReq_ID.AsString <> '' then begin
       with qrAux do begin
           close;
           SQL.Clear;
           sql.Add(
           ' exec GERA_VALORES_REQUISICAO ' + qrRequisicaoReq_ID.AsString
           ) ;
           ExecSQL;
       end;

       with qrAux do begin
           close;
           SQL.Clear;
           sql.Add(
           ' exec GERA_DESDOBRAMENTO_LOTE ' + qrRequisicaoReq_ID.AsString
           ) ;
           ExecSQL;
       end;
  end;
  Self.Close;
  except
       Self.Close;
  end;



end;

procedure TfrmRequisicaoSimplificada.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMat.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

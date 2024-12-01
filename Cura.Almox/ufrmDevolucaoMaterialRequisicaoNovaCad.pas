unit ufrmDevolucaoMaterialRequisicaoNovaCad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, Db, ADODB,
  Buttons;

type
  TfrmDevolucaoMaterialRequisicaoNovaCad = class(TForm)
    qrLocal: TADOQuery;
    qrLocalDescricao: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    Panel1: TPanel;
    Label12: TLabel;
    Label1: TLabel;
    cboMatPesq: TwwDBLookupCombo;
    edtLote: TEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrBuscaListagem: TADOQuery;
    qrBuscaListagemReq_ID: TAutoIncField;
    qrBuscaListagemData: TDateTimeField;
    qrBuscaListagemMAT_DESC: TStringField;
    qrBuscaListagemN_Lote: TWideStringField;
    qrBuscaListagemValid: TDateTimeField;
    qrBuscaListagemDescricao: TStringField;
    qrBuscaListagemDevolucao: TFloatField;
    qrBuscaListagemAux: TFloatField;
    qrBuscaListagemRR_ID: TAutoIncField;
    DataSource1: TDataSource;
    qrBuscaListagemQtde: TFloatField;
    Panel2: TPanel;
    Button3: TButton;
    STP_ATUAL_ESTOQUE: TADOStoredProc;
    qrBuscaListagemFor_Codi: TStringField;
    qrBuscaListagemMarca_id: TIntegerField;
    qrBuscaListagemMat_ID: TIntegerField;
    qrBuscaListagemtipoConsumo: TStringField;
    qrBuscaListagemLOCAL_DESTINO: TIntegerField;
    qrBuscaListagemLOCAL_ORIGEM: TIntegerField;
    qrAux: TADOQuery;
    qrEstoque: TADOQuery;
    qrEstoqueMAT_ID: TIntegerField;
    qrEstoqueN_Lote: TWideStringField;
    qrEstoqueQTDE: TFloatField;
    qrMaterial: TADOQuery;
    qrMaterialMAT_DESC: TStringField;
    qrMaterialMAT_ID: TAutoIncField;
    btnGetMaterial: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevolucaoMaterialRequisicaoNovaCad: TfrmDevolucaoMaterialRequisicaoNovaCad;

implementation

uses UMenu, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmDevolucaoMaterialRequisicaoNovaCad.Button1Click(
  Sender: TObject);
begin

 if cboMatPesq.Text = '' then begin
     ShowMessage('Informe o Material');
     Abort;
 end;

   with qrBuscaListagem do begin
       close;
        sql.Clear;
        sql.Add(
             ' SELECT RR_ID, R.Req_ID, R.Data, C.CodigoMaterial + '' '' + C.MAT_DESC AS MAT_DESC, A.N_Lote, A.Valid, L.Descricao, A.Devolucao, Aux, A.Qtde, For_Codi, A.Marca_id, A.Mat_ID, tipoConsumo, R.LOCAL_ID AS LOCAL_DESTINO, A.Local_ID AS LOCAL_ORIGEM '+
             ' FROM REQ_LOTE A   '+
             ' INNER JOIN REQ_ITEM B ON A.REQ_ITEM_ID = B.REQ_ITEM_ID   '+
             ' INNER JOIN MATERIAIS C ON A.MAT_ID = C.MAT_ID   '+
             ' INNER JOIN Req_Capa R ON B.Req_ID = R.Req_ID   '+
             ' INNER JOIN LOCAL L ON A.Local_ID = L.Local_ID  '+
             ' WHERE B.STATUS = ''F'' AND tipoConsumo = ''C'' '+
             ' and A.QTDE > case when A.DEVOLUCAO is null then 0 else A.DEVOLUCAO END  '+
             ' AND R.LOCAL_ID = ' + FMenu.sqlUsuariosLOCAL_ID.AsString
        );

        if cboMatPesq.Text <> '' then begin
            sql.Add(' AND C.MAT_ID = ' + cboMatPesq.LookupValue);
        end;



        if edtLote.Text <> '' then begin
            sql.Add(' and A.N_Lote like ' + QuotedStr('%' + edtLote.Text + '%'));
        end;


        sql.Add(' ORDER BY C.MAT_DESC ');
        Open;
   end;
end;

procedure TfrmDevolucaoMaterialRequisicaoNovaCad.Button3Click(
  Sender: TObject);
  var dev : Real;
begin

    IF qrBuscaListagem.State IN [DSEDIT] then
            qrBuscaListagem.Post;


     qrBuscaListagem.First;
     while not qrBuscaListagem.Eof do
     begin
         if qrBuscaListagemAux.AsString <> '' then begin
             if qrBuscaListagemAux.AsFloat > qrBuscaListagemQtde.AsFloat + qrBuscaListagemDevolucao.AsFloat then begin
                 ShowMessage('A quantidade a ser devolvida ultrapassa a quantidade disponivel');
                 Abort;
             end;

            { with qrEstoque do begin
                 Close;
                 Parameters[0].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
                 Parameters[1].Value := qrBuscaListagemMat_ID.AsInteger;
                 Parameters[2].Value := qrBuscaListagemN_Lote.AsString ;
                 Open;
             end;

             if qrEstoqueQTDE.AsFloat < qrBuscaListagemAux.AsFloat then begin
                 ShowMessage('ESTOQUE INSUFICIENTE PARA O MATERIAL ' + qrBuscaListagemMAT_DESC.AsString);
                 Abort;
             end;   }


         end;
         qrBuscaListagem.Next;
     end;


    if MessageBox(Self.Handle, 'Confirma devolução das quantidades digitadas?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
    begin
        Abort;
    end;


        try
         FMenu.ADOConnection.BeginTrans;

         qrBuscaListagem.First;
         while not qrBuscaListagem.Eof do
         begin
             if qrBuscaListagemAux.AsString <> '' then begin
                       //devolver para o estoque de origem
                       with STP_ATUAL_ESTOQUE do
                          begin
                            Parameters.ParamByName('@N_LOTE').Value   := qrBuscaListagemN_Lote.Value; //qryItensSelecionadosLOTE.Value;
                            Parameters.ParamByName('@QTDE').Value     := qrBuscaListagemAux.Value; //qryItensSelecionadosQTDE_SOL.Value;
                            Parameters.ParamByName('@MAT_ID').Value   := qrBuscaListagemMat_ID.Value;  //qryItensSelecionadosMAT_ID.Value;
                            Parameters.ParamByName('@FOR_CODI').Value := qrBuscaListagemFor_Codi.Value; //qryItensSelecionadosFOR_CODI.Value;
                            Parameters.ParamByName('@MOT_ID').Value :=   6;
                            Parameters.ParamByName('@TIPO').Value :=   'E';
                            Parameters.ParamByName('@USUARIO').Value :=   FMenu.sqlUsuariosNome.Value;
                            Parameters.ParamByName('@TD_ID').Value := 8;//devolução no tipo de documento
                            Parameters.ParamByName('@DOCTO').Value :=   qrBuscaListagemReq_ID.AsInteger;
                            Parameters.ParamByName('@REC_ITEM_ID').Value :=  Null;
                            Parameters.ParamByName('@DATAX').Value :=  null;
                            Parameters.ParamByName('@MARCA_ID').Value := qrBuscaListagemMarca_ID.Value;  //qryItensSelecionadosMARCA_ID.Value;
                            Parameters.ParamByName('@VALID').Value :=  qrBuscaListagemValid.Value; //qryItensSelecionadosVALIDADE.Value;
                            Parameters.ParamByName('@LOCAL_ID').Value :=  qrBuscaListagemLOCAL_ORIGEM.Value;
                            ExecProc;
                          end;


                          //da baixa no estoque atual
                         { with STP_ATUAL_ESTOQUE do
                          begin
                            Parameters.ParamByName('@N_LOTE').Value   := qrBuscaListagemN_Lote.Value; //qryItensSelecionadosLOTE.Value;
                            Parameters.ParamByName('@QTDE').Value     := qrBuscaListagemAux.Value; //qryItensSelecionadosQTDE_SOL.Value;
                            Parameters.ParamByName('@MAT_ID').Value   := qrBuscaListagemMAT_ID.Value;  //qryItensSelecionadosMAT_ID.Value;
                            Parameters.ParamByName('@FOR_CODI').Value := qrBuscaListagemFor_Codi.Value; //qryItensSelecionadosFOR_CODI.Value;
                            Parameters.ParamByName('@MOT_ID').Value :=   6;
                            Parameters.ParamByName('@TIPO').Value :=   'S';
                            Parameters.ParamByName('@USUARIO').Value :=   FMenu.sqlUsuariosNome.Value;
                            Parameters.ParamByName('@TD_ID').Value := 8;//devolução no tipo de documento
                            Parameters.ParamByName('@DOCTO').Value :=   qrBuscaListagemReq_ID.AsInteger;
                            Parameters.ParamByName('@REC_ITEM_ID').Value :=  Null;
                            Parameters.ParamByName('@DATAX').Value :=  null;
                            Parameters.ParamByName('@MARCA_ID').Value := qrBuscaListagemMarca_ID.Value;  //qryItensSelecionadosMARCA_ID.Value;
                            Parameters.ParamByName('@VALID').Value :=  qrBuscaListagemValid.Value; //qryItensSelecionadosVALIDADE.Value;
                            Parameters.ParamByName('@LOCAL_ID').Value :=  qrBuscaListagemLOCAL_DESTINO.AsInteger;
                            ExecProc;
                          end; }


                      qrBuscaListagem.Edit;
                      if qrBuscaListagemDevolucao.AsString = '' then
                          dev := 0
                      else
                          dev := qrBuscaListagemDevolucao.Value;
                      qrBuscaListagemDevolucao.Value := dev + qrBuscaListagemAux.Value;
                      qrBuscaListagem.Post;
             end;//end if aux

             

             Application.ProcessMessages;
             qrBuscaListagem.Next;
         end; //end while

         FMenu.ADOConnection.CommitTrans;
         Close;
    except
        on e : Exception do
        begin
             MessageBox(Self.Handle, pchar('Aconteceu um erro ao efetuar as operações solicitadas' + #13 + e.Message), 'Erro', MB_OK + MB_ICONERROR)  ;
             FMenu.ADOConnection.RollbackTrans;
        end;
    end;


end;

procedure TfrmDevolucaoMaterialRequisicaoNovaCad.FormShow(Sender: TObject);
begin
  qrMaterial.Close;
  qrMaterial.Open;
end;

procedure TfrmDevolucaoMaterialRequisicaoNovaCad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    with qrAux do begin
        Close;
        SQL.Clear;
        sql.Add(' UPDATE REQ_LOTE SET AUX = NULL WHERE AUX IS NOT NULL ');
        ExecSQL;
    end;
end;

procedure TfrmDevolucaoMaterialRequisicaoNovaCad.btnGetMaterialClick(
  Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMatPesq.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

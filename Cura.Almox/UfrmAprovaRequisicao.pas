unit UfrmAprovaRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, RzTabs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, ADODB,
  wwdblook, Provider, DBClient, RzButton, Mask;

type
  TfrmAprovaRequisicao = class(TForm)
    wwDBGrid1: TwwDBGrid;
    pnltools: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    pnlAprova: TPanel;
    Label1: TLabel;
    edtSenha: TEdit;
    wwDBGrid2: TwwDBGrid;
    qrSolicitacao: TADOQuery;
    qrSolicitacaoSOL_ID: TAutoIncField;
    qrSolicitacaoDATA: TDateTimeField;
    qrSolicitacaoCC_Desc: TStringField;
    qrSolicitacaoUSUARIO: TStringField;
    dsSolicitacao: TDataSource;
    qrItens: TADOQuery;
    qrItensITEM: TAutoIncField;
    qrItensMAT_ID: TIntegerField;
    qrItensQTDE_SOL: TFloatField;
    qrItensQTDE_ATENDIDA: TFloatField;
    qrItensSALDO: TFloatField;
    qrItensSTATUS: TStringField;
    qrItensESTOQUE: TFloatField;
    qrItensSEL: TStringField;
    qrItensMAT_DESC: TStringField;
    dsItens: TDataSource;
    qrAux: TADOQuery;
    qrMarcaEstoque: TADOQuery;
    qrMarcaEstoqueMARCA_ID: TAutoIncField;
    qrMarcaEstoqueMARCA_DESC: TStringField;
    qrMarcaEstoqueQTDE: TFloatField;
    RzPageControl2: TRzPageControl;
    TabSheet2: TRzTabSheet;
    wwDBGrid3: TwwDBGrid;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    qrEstoque: TADOQuery;
    cdsEStoque: TClientDataSet;
    dspEstoque: TDataSetProvider;
    qrEstoqueMARCA_ID: TAutoIncField;
    qrEstoqueMARCA_DESC: TStringField;
    qrEstoqueMat_ID: TIntegerField;
    qrEstoqueQTDE_ESTQ: TFloatField;
    qrEstoqueQTDE: TFloatField;
    cdsEStoqueMARCA_ID: TAutoIncField;
    cdsEStoqueMARCA_DESC: TStringField;
    cdsEStoqueMat_ID: TIntegerField;
    cdsEStoqueQTDE_ESTQ: TFloatField;
    cdsEStoqueQTDE: TFloatField;
    dsEStoque: TDataSource;
    STP_ESTOQUE: TADOStoredProc;
    qrBx: TADOQuery;
    qrBxITEM: TIntegerField;
    qrBxMARCA_ID: TIntegerField;
    qrBxQTDE: TFloatField;
    qrBxSOL_ID: TIntegerField;
    qrBxMAT_ID: TIntegerField;
    SpeedButton1: TSpeedButton;
    qrReqCapa: TADOQuery;
    qrSolicitacaoLOCAL_ID: TIntegerField;
    qrSolicitacaoDESCRICAO: TStringField;
    qrReqCapaReq_ID: TAutoIncField;
    qrReqCapaData: TDateTimeField;
    qrReqCapaUsuario: TStringField;
    qrReqCapaCC_ID: TIntegerField;
    qrReqCapaData_Sist: TDateTimeField;
    qrReqCapaLOCAL_ID: TIntegerField;
    qrSolicitacaoCC_ID: TIntegerField;
    qrItensUNI_SIGLA: TStringField;
    qrReqItem: TADOQuery;
    qrReqItemReq_Item_ID: TAutoIncField;
    qrReqItemReq_ID: TIntegerField;
    qrReqItemMat_ID: TIntegerField;
    qrReqItemMarca_ID: TIntegerField;
    qrReqItemUni_Sigla: TStringField;
    qrReqItemQtde: TFloatField;
    qrReqItemStatus: TStringField;
    qrReqItemtipoConsumo: TStringField;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    cdsItensSEL: TStringField;
    cdsItensMAT_DESC: TStringField;
    cdsItensQTDE_SOL: TFloatField;
    cdsItensUNI_SIGLA: TStringField;
    cdsItensSALDO: TFloatField;
    cdsItensESTOQUE: TFloatField;
    cdsItensITEM: TAutoIncField;
    cdsItensMAT_ID: TIntegerField;
    cdsItensQTDE_ATENDIDA: TFloatField;
    cdsItensSTATUS: TStringField;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    qrSolicitacaoTIPO: TStringField;
    qrReqCapaTIPO_REQUISICAO: TStringField;
    Panel2: TPanel;
    btnEstoque: TSpeedButton;
    btnGerar: TSpeedButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    qrSolicitacaoMOTIVO: TStringField;
    qrItensCRITICO: TStringField;
    cdsItensCRITICO: TStringField;
    qrReqCapaUsuarioSolicitacao: TStringField;
    qrSolicitacaoObservacao: TStringField;
    qrReqCapaObservacaoSolicitacao: TStringField;
    qrReqItemInformacaoAdicional: TStringField;
    qrItensObs: TStringField;
    cdsItensObs: TStringField;
    qrReqCapaTipoSolicitacao: TStringField;
    qrReqCapaMotivoSolicitacao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsSolicitacaoDataChange(Sender: TObject; Field: TField);
    procedure dsItensDataChange(Sender: TObject; Field: TField);
    procedure btnEstoqueClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure Buscar;
    procedure cdsItensSELChange(Sender: TField);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrSolicitacaoTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAprovaRequisicao: TfrmAprovaRequisicao;

implementation

uses UMenu, URequisicaoPesq, URequisicao, ufrmRelSaldosRequisicao;

{$R *.DFM}

procedure TfrmAprovaRequisicao.FormCreate(Sender: TObject);
begin
     MaskEdit1.Text := FormatDateTime('dd/mm/yyyy', Now);
     MaskEdit2.Text := FormatDateTime('dd/mm/yyyy', Now);
     buscar;
end;



procedure TfrmAprovaRequisicao.Buscar;
var sql : string;
begin



   IF FMenu.TP_REQUISICAO = 'A' then begin
       //SQL PARA ITENS APROVADOS
       Panel2.Visible := False;
       Self.Caption := 'Requisição de Materiais - Aprovação';
       pnltools.Height := 0;
       RzPageControl2.Visible := False;
       sql := 'SELECT S.SOL_ID  '+
              '        ,S.DATA  '+
              '        ,C.CC_Desc  '+
              '        ,S.USUARIO, S.LOCAL_ID , L.DESCRICAO  , s.CC_ID , s.tipo, s.MOTIVO, S.Observacao '+
              '  FROM SolMaterial S INNER JOIN CENTRO_CUSTO C  '+
              '  ON S.CC_ID = C.CC_ID LEFT OUTER JOIN LOCAL L ON S.LOCAL_ID = L.LOCAL_ID  '+
              ' WHERE S.CONCLUIDO = ''S'' and S.DT_APROVACAO IS NULL and ISNULL(S.CANCELADO, '''') <> ''S'' '   ;




   end
   else
   begin
       //SQL PARA ITENS APROVADOS
       pnlAprova.Height := 0;
       sql := 'SELECT S.SOL_ID  '+
              '        ,S.DATA  '+
              '        ,C.CC_Desc  '+
              '        ,S.USUARIO, S.LOCAL_ID , L.DESCRICAO  , s.CC_ID, s.tipo, S.MOTIVO, S.Observacao '+
              '  FROM SolMaterial S INNER JOIN CENTRO_CUSTO C  '+
              '  ON S.CC_ID = C.CC_ID LEFT OUTER JOIN LOCAL L ON S.LOCAL_ID = L.LOCAL_ID  '+
              'WHERE S.CONCLUIDO = ''S'' and  S.SOL_ID IN '+
              '(  '+
              '        SELECT SOL_ID '+
              '        FROM ITEM_SOLMATERIAL  '+
              '        WHERE SALDO > 0 '+
              ') AND S.DT_APROVACAO IS NOT NULL  '+  // AND CONCLUIDO = ''S''
              ' AND CONVERT(VARCHAR, S.DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))) +
              ' AND CONVERT(VARCHAR, S.DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))) ;

       IF  CheckBox1.Checked then
                sql := sql + 'AND SOL_ID NOT IN (SELECT SOL_ID FROM ITEM_SOLMATERIAL WHERE STATUS IN (''T'', ''P'') AND SOL_ID = S.SOL_ID)'
   end;

   qrSolicitacao.Close;
   qrSolicitacao.SQL.Clear;
   qrSolicitacao.SQL.Add(sql);
   qrSolicitacao.Open;

end;

procedure TfrmAprovaRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF FMenu.TP_REQUISICAO <> 'A' then begin

       if MessageBox(Self.Handle, PChar('As informações de estoque serão perdidas' + #13 + 'deseja continuar?'), 'Confirmação', MB_YESNO) = 7 then begin
           Action := caNone;
           Abort;
       end;

       with qrAux do begin
           Close;
           sql.Clear;
           SQL.Add('delete from BAIXA_SOLMATERIAL');
           ExecSQL;
       end;
  end;

  

   FMenu.TP_REQUISICAO := '';
   Action := caFree;
   frmAprovaRequisicao := nil;
end;

procedure TfrmAprovaRequisicao.dsSolicitacaoDataChange(Sender: TObject;
  Field: TField);
begin
  cdsItens.Close;
  if qrSolicitacao.Active then begin
      if qrSolicitacaoSOL_ID.AsString <> '' then begin
          btnGerar.Enabled := False;
          qrItens.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
          cdsItens.Open;
      end;
  end  ;



end;

procedure TfrmAprovaRequisicao.dsItensDataChange(Sender: TObject;
  Field: TField);
begin
   cdsEStoque.Close;
   if qrSolicitacao.Active then begin
       if  qrSolicitacaoSOL_ID.AsString <> '' then begin
             qrEstoque.Parameters[0].Value :=  qrSolicitacaoSOL_ID.AsInteger;
             qrEstoque.Parameters[1].Value :=  cdsItensMAT_ID.AsInteger;
             qrEstoque.Parameters[2].Value :=  FMenu.sqlUsuariosLOCAL_ID.AsInteger;
             cdsEStoque.Open;
             IF cdsEStoque.IsEmpty then
                wwDBGrid3.Visible := False
             else
                wwDBGrid3.Visible := True;
       end;
   end;

   TabSheet2.Caption := 'Estoque - ' + FMenu.qrLocaisDescricao.AsString;

   
end;

procedure TfrmAprovaRequisicao.btnEstoqueClick(Sender: TObject);
begin
//controla estoque
//procedure  no sql

//APAGAMOS OS REGISTOS DE BAIXA

if MessageBox(Self.Handle, PChar('Ao calcular o estoque, qualquer informação anterior será perdida.' +
                                #13 + 'Deseja continuar?'), 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then begin
                                    Abort;
                                end;



    WITH qrAux do begin
        CLOSE;
        SQL.Clear;
        SQL.Add('DELETE FROM BAIXA_SOLMATERIAL WHERE SOL_ID = '+ qrSolicitacaoSOL_ID.AsString );
        ExecSQL;
    end;

    cdsItens.First;
    WHILE not cdsItens.Eof DO begin
        STP_ESTOQUE.Parameters[0].Value := qrSolicitacaoSOL_ID.AsInteger;
        STP_ESTOQUE.Parameters[1].Value := cdsItensITEM.AsInteger;
        STP_ESTOQUE.Parameters[2].Value := cdsItensMAT_ID.AsInteger;
        STP_ESTOQUE.Parameters[3].Value := cdsItensQTDE_SOL.AsFloat;
        STP_ESTOQUE.Parameters[4].Value := cdsItensSALDO.AsFloat;
        STP_ESTOQUE.Parameters[5].Value := FMenu.sqlUsuariosLOCAL_ID.AsInteger;
        STP_ESTOQUE.ExecProc;

        //verifica se tem material p atender
        with qrAux do begin
            close;
            sql.Clear;
            sql.Add('select count(*) as achei from BAIXA_SOLMATERIAL where qtde > 0 and item = ' + cdsItensITEM.AsString);
            Open;
        end;

        if qrAux.FieldByName('Achei').AsInteger > 0 then begin
            with qrAux do begin
                Close;
                sql.Clear;
                sql.Add('update ITEM_SOLMATERIAL set sel = ''S'' where item = ' + cdsItensITEM.AsString);
                ExecSQL;
            end;
        end
        else begin
            with qrAux do begin
                Close;
                sql.Clear;
                sql.Add('update ITEM_SOLMATERIAL set sel = ''N'' where item = ' + cdsItensITEM.AsString);
                ExecSQL;
            end;
        end;



        cdsItens.Next;
    end;




        cdsItens.Close;
        cdsItens.Open;

        btnGerar.Enabled := True;

end;

procedure TfrmAprovaRequisicao.edtSenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
      if FMenu.sqlUsuariosSenha.AsString = edtSenha.Text then begin
          with qrAux do begin
              close;
              sql.Clear;
              sql.Add('update SolMaterial set aprovador = ' + QuotedStr(FMenu.sqlUsuariosNome.AsString));
              sql.Add(', DT_APROVACAO = getdate() ');
              sql.Add('where SOL_ID = ' + qrSolicitacaoSOL_ID.AsString );
              ExecSQL;
          end;
          qrSolicitacao.Close;
          qrSolicitacao.Open;
          edtSenha.Clear;
          edtSenha.SetFocus;

      end else begin
          MessageBox(Self.Handle, 'Senha incorreta!', 'Erro', MB_OK + MB_ICONERROR);
          edtSenha.Clear;
          edtSenha.SetFocus;
      end;
  end;
end;

procedure TfrmAprovaRequisicao.RzBitBtn1Click(Sender: TObject);
var qtde_sel : Double;
begin
  qtde_sel := 0;
  if cdsEStoque.State = dsedit then cdsEStoque.Post;
  cdsEStoque.First;
  while not cdsEStoque.Eof do begin

      qtde_sel := qtde_sel + cdsEStoqueQTDE.AsFloat;
      cdsEStoque.Next;
  end;

  if qtde_sel > cdsItensSALDO.Value then begin
      MessageBox(Self.Handle, 'Quantidade maior a que foi solicitada', 'Erro', MB_OK + MB_ICONWARNING);
      Abort;
  end;

  WITH qrAux do begin
      CLOSE;
      SQL.Clear;
      SQL.Add('DELETE FROM BAIXA_SOLMATERIAL WHERE SOL_ID = '+ qrSolicitacaoSOL_ID.AsString );
      sql.Add('and item = ' + cdsItensITEM.AsString);
      ExecSQL;
  end;

  qrBx.Close;
  qrBx.Open;
  cdsEStoque.First;
  while not cdsEStoque.Eof do begin
      if cdsEstoqueQTDE.AsFloat > 0 then begin
          qrBx.Append;
          qrBxITEM.Value := cdsItensITEM.AsInteger;
          qrBxMARCA_ID.Value := cdsEStoqueMARCA_ID.AsInteger;
          qrBxQTDE.Value := cdsEStoqueQTDE.AsFloat;
          qrBxSOL_ID.Value := qrSolicitacaoSOL_ID.AsInteger;
          qrBxMAT_ID.Value := cdsItensMAT_ID.AsInteger;
          qrBx.Post;
      end;
      cdsEStoque.Next;
  end;


  cdsEStoque.Close;
  cdsEStoque.Open;


end;

procedure TfrmAprovaRequisicao.SpeedButton1Click(Sender: TObject);
begin

if MessageBox(Self.Handle, PChar('Confirma o cancelamento de saldos?'), 'Confirmação', MB_YESNO + 32) = 6 then
begin
    with qrAux do begin
        Close;
        sql.Clear;
        SQL.Add('Update ITEM_SOLMATERIAL set saldo = 0, status = ''C''');
        sql.Add('where sol_id = ' + qrSolicitacaoSOL_ID.AsString);
        sql.Add('and saldo > 0');
        ExecSQL;
    end;
    qrSolicitacao.Close;
    qrSolicitacao.Open;
end;

end;

procedure TfrmAprovaRequisicao.btnGerarClick(Sender: TObject);
var qtde_Atend : Real;
    status : string;
begin
   if MessageBox(Self.Handle, 'Confirma geração da requisição de materiais?', 'Confirmação', 4+ 32) = 6 then begin

       FMenu.ADOConnection.BeginTrans;
       try

           //adicionamos a requisição
           qrReqCapa.Open;
           qrReqItem.Open;
           qrReqCapa.Append;
           qrReqCapaData.Value := Now;
           qrReqCapaUsuario.Value := FMenu.sqlUsuariosNome.Value;
           qrReqCapaCC_ID.Value := qrSolicitacaoCC_ID.Value;
           qrReqCapaData_Sist.Value := Now;
           qrReqCapaLOCAL_ID.Value := qrSolicitacaoLOCAL_ID.Value ;
           qrReqCapaTIPO_REQUISICAO.Value := qrSolicitacaoTIPO.Value;
           qrReqCapaUsuarioSolicitacao.Value := qrSolicitacaoUSUARIO.AsString;
           qrReqCapaObservacaoSolicitacao.AsString := qrSolicitacaoObservacao.AsString;
           qrReqCapaTipoSolicitacao.AsString := qrSolicitacaoTIPO.AsString;
           qrReqCapaMotivoSolicitacao.AsString := qrSolicitacaoMOTIVO.AsString;
           qrReqCapa.Post;


           //adicionamos os materiais
           cdsItens.First;
           while not cdsItens.Eof do begin
                if cdsItensSEL.AsString = 'S' then begin
                          qtde_Atend := 0;

                          cdsEStoque.First;
                          while not cdsEStoque.Eof do begin
                                  if cdsEStoqueQTDE.AsFloat > 0 then begin
                                      qrReqItem.Append;
                                      qrReqItemReq_ID.Value := qrReqCapaReq_ID.AsInteger;
                                      qrReqItemMat_ID.Value := cdsItensMAT_ID.Value;
                                      qrReqItemMarca_ID.Value := cdsEStoqueMARCA_ID.Value;
                                      qrReqItemUni_Sigla.Value := cdsItensUNI_SIGLA.Value;
                                      qrReqItemQtde.Value := cdsEStoqueQTDE.Value;
                                      qrReqItemStatus.Value := 'A';
                                      qrReqItemInformacaoAdicional.AsString := cdsItensObs.AsString;
                                      qrReqItem.Post;
                                      qtde_Atend := qtde_Atend + cdsEStoqueQTDE.Value;
                                  end;//end ifff
                                  cdsEStoque.Next;
                          end;//end while bx

                          if cdsItensQTDE_ATENDIDA.AsFloat + qtde_Atend = cdsItensQTDE_SOL.Value then
                                  status := 'T'
                          else
                                  status := 'P';

                          //verifica se algum item foi atendido
                          if qtde_Atend > 0 then begin
                              with qrAux do begin
                                  Close;
                                  sql.Clear;
                                  sql.Add(
                                     ' update ITEM_SOLMATERIAL set QTDE_ATENDIDA = ' + FloatToStr(cdsItensQTDE_ATENDIDA.AsFloat + qtde_Atend)+
                                     ' , saldo =  ' +FloatToStr(cdsItensQTDE_SOL.AsFloat - cdsItensQTDE_ATENDIDA.AsFloat - qtde_Atend) +
                                     ', status = ' + QuotedStr(status) +
                                     ', req_id = ' + qrReqCapaReq_ID.AsString +
                                     ' where item = ' + cdsItensITEM.AsString
                                  );
                                  ExecSQL;
                              end;
                          end;

                end; //end if sel
                cdsItens.Next;
           end;//end while itens
           FMenu.ADOConnection.CommitTrans;

           REQ_ID := qrReqCapaReq_ID.AsString;
           qrReqCapa.Close;
           qrReqItem.Close;
           Application.CreateForm(TFRequisicao, FRequisicao);
           FRequisicao.chkAltera.Checked := True;
           FRequisicao.ShowModal;
           FRequisicao.Release;

           qrSolicitacao.Close;
           qrSolicitacao.Open;
           cdsEStoque.Close;

       except
           on e : Exception do begin
                ShowMessage('Aconteceu um erro:' + e.Message);
                FMenu.ADOConnection.RollbackTrans;
           end;
       end;

   end;
end;

procedure TfrmAprovaRequisicao.cdsItensSELChange(Sender: TField);
var item : Integer;
begin
     with qrAux do begin
         Close;
         sql.Clear;
         sql.Add(
               'update ITEM_SOLMATERIAL set sel = ' + QuotedStr(cdsItensSEL.Value) +
               ' where item = ' + cdsItensITEM.AsString
         );
         ExecSQL;
     end;
     item := cdsItensITEM.Value;



        IF cdsItensSEL.Value = 'S' then begin
                  //verifica se tem material p atender
                  with qrAux do begin
                      close;
                      sql.Clear;
                      sql.Add('select count(*) as achei from BAIXA_SOLMATERIAL where qtde > 0 and item = ' + cdsItensITEM.AsString);
                      Open;
                  end;


                  if qrAux.FieldByName('Achei').AsInteger > 0 then begin
                      with qrAux do begin
                          Close;
                          sql.Clear;
                          sql.Add('update ITEM_SOLMATERIAL set sel = ''S'' where item = ' + cdsItensITEM.AsString);
                          ExecSQL;
                      end;
                  end
                  else begin
                      with qrAux do begin
                          Close;
                          sql.Clear;
                          sql.Add('update ITEM_SOLMATERIAL set sel = ''N'' where item = ' + cdsItensITEM.AsString);
                          ExecSQL;
                      end;
                  end;

        end;


     cdsItens.Close;
     cdsItens.Open;
     cdsItens.Locate('ITEM', item, []);

end;

procedure TfrmAprovaRequisicao.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    if cdsItensSEL.AsString = 'S' then begin
        ABrush.Color := $00FFDFBF;
    end;
    
    if Highlight then
        AFont.Color := clBlack
    else
        AFont.Color := clBlack;
end;

procedure TfrmAprovaRequisicao.CheckBox1Click(Sender: TObject);
begin
    Buscar;
end;

procedure TfrmAprovaRequisicao.BitBtn1Click(Sender: TObject);
begin

      frmRelSaldosRequisicao := TfrmRelSaldosRequisicao.Create(Self);
      frmRelSaldosRequisicao.qrBusca.SQL.Clear;
      frmRelSaldosRequisicao.qrBusca.SQL.add('SELECT TOP 1000           S.SOL_ID,           S.DATA,           S.USUARIO,           M.MAT_DESC,           I.QTDE_SOL,           I.SALDO,');
      frmRelSaldosRequisicao.qrBusca.SQL.add('I.STATUS, CC.CC_Desc, tipo   FROM SolMaterial S LEFT OUTER JOIN ITEM_SOLMATERIAL I   ON S.SOL_ID = I.SOL_ID LEFT OUTER JOIN MATERIAIS M    ON I.MAT_ID = M.MAT_ID INNER JOIN CENTRO_CUSTO CC   ON S.CC_ID = CC.CC_ID WHERE 1 = 1');
      frmRelSaldosRequisicao.qrBusca.SQL.add( ' and I.status in (''A'', ''P'') ORDER BY S.DATA ');
      frmRelSaldosRequisicao.qrBusca.Open;
      frmRelSaldosRequisicao.QuickRep1.Preview;
      frmRelSaldosRequisicao.Close;


end;

procedure TfrmAprovaRequisicao.qrSolicitacaoTIPOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   if Sender.Value = 'N' then
        Text := 'Normal'
   else if Sender.Value = 'U' then
        Text := 'Urgente'
   else if Sender.Value = 'E' then
        Text := 'Emergência';
end;

procedure TfrmAprovaRequisicao.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrSolicitacaoTIPO.Value = 'E' then
        ABrush.Color := clRed;
   if qrSolicitacaoTIPO.Value = 'U' then
        ABrush.Color := clRed;
   if Highlight then
        AFont.Color := clBlack
   else
        AFont.Color := clBlack;
end;

procedure TfrmAprovaRequisicao.Button1Click(Sender: TObject);
begin
  Buscar;
end;

end.

unit ufrmNotaDevolucaoCad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, wwSpeedButton, wwDBNavigator, wwclearpanel, wwdblook,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdbedit,
  Wwdotdot, Wwdbcomb, Provider, DBClient, DBTables, wwstorep;

type
  TfrmNotaDevolucaoCad = class(TForm)
    qrNota: TADOQuery;
    qrNotaIdNotaDevolucao: TAutoIncField;
    qrNotaNumero: TStringField;
    qrNotaSerie: TStringField;
    qrNotaFornecedor: TStringField;
    qrNotaIdStatusDevolucao: TIntegerField;
    dsNota: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qrMaterial: TADOQuery;
    qrMaterialMAT_DESC: TStringField;
    qrMaterialMAT_ID: TAutoIncField;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    pnlMateriais: TPanel;
    Label6: TLabel;
    cboMaterial: TwwDBLookupCombo;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    Label7: TLabel;
    btnEliminarMaterial: TButton;
    Label8: TLabel;
    wwDBGrid2: TwwDBGrid;
    btnSelecionarLotes: TButton;
    qrMarcas: TADOQuery;
    qrMarcasMARCA_ID: TAutoIncField;
    qrMarcasMARCA_DESC: TStringField;
    Label9: TLabel;
    cboMarca: TwwDBLookupCombo;
    edtQtde: TEdit;
    Label10: TLabel;
    edtCodigo: TEdit;
    qrItems: TADOQuery;
    qrItemsMAT_DESC: TStringField;
    qrItemsMARCA_DESC: TStringField;
    qrItemsQuantidade: TIntegerField;
    qrItemsQtdeLote: TIntegerField;
    qrItemsQtdeLoteBaixada: TIntegerField;
    dsItens: TDataSource;
    Button4: TButton;
    btnConfirmar: TButton;
    qrItemsIdNotaDevolucaoItem: TAutoIncField;
    qrItemAdd: TADOQuery;
    cboStatus: TwwDBComboBox;
    Label11: TLabel;
    qrItemAddIdNotaDevolucaoItem: TAutoIncField;
    qrItemAddIdNotaDevolucao: TIntegerField;
    qrItemAddMAT_ID: TIntegerField;
    qrItemAddMARCA_ID: TIntegerField;
    qrItemAddQuantidade: TIntegerField;
    qrNotaData: TDateTimeField;
    pnlLotes: TPanel;
    Panel3: TPanel;
    Button2: TButton;
    wwDBGrid3: TwwDBGrid;
    dsLotes: TDataSource;
    Button3: TButton;
    qrExec: TADOQuery;
    qrLotesSelecionados: TADOQuery;
    qrLotesSelecionadosIdNotaDevolucaoLote: TAutoIncField;
    qrLotesSelecionadosIdNotaDevolucaoItem: TIntegerField;
    qrLotesSelecionadosMAT_ID: TIntegerField;
    qrLotesSelecionadosMARCA_ID: TIntegerField;
    qrLotesSelecionadosLote: TStringField;
    qrLotesSelecionadosQtde: TIntegerField;
    qrLotesSelecionadosQtdeBaixada: TIntegerField;
    qrLotesSelecionadosFornecedor: TStringField;
    qrLotesSelecionadosValidade: TDateTimeField;
    qrItemsMat_id: TAutoIncField;
    qrItemsMARCA_ID: TAutoIncField;
    qrLotes: TADOQuery;
    qrLotesId: TAutoIncField;
    qrLotesIdNotaDevolucao: TIntegerField;
    qrLotesData: TDateTimeField;
    qrLotesQTDE: TFloatField;
    qrLotesMAT_ID: TIntegerField;
    qrLotesMAT_DESC: TStringField;
    qrLotesGRU_DESC: TStringField;
    qrLotesGRU_ID: TIntegerField;
    qrLotesUNI_ID: TIntegerField;
    qrLotesMARCA_DESC: TStringField;
    qrLotesUNI_SIGLA: TStringField;
    qrLotesLOCAL_ID: TIntegerField;
    qrLotesDS_LOC: TStringField;
    qrLotesMARCA_ID: TIntegerField;
    qrLotesN_Lote: TWideStringField;
    qrLotesValid: TDateTimeField;
    qrLotesREPOSICAO: TFloatField;
    qrLotesEAN: TStringField;
    qrLotesFor_Codi: TStringField;
    qrLotesLocalArmazem: TStringField;
    qrLotesDocto: TStringField;
    qrLotesQtdeSelecionada: TIntegerField;
    dsLotesSelecionados: TDataSource;
    qrVerificaEstoque: TADOQuery;
    qrVerificaEstoqueIdNotaDevolucaoLote: TAutoIncField;
    qrVerificaEstoqueMAT_ID: TIntegerField;
    qrVerificaEstoqueMARCA_ID: TIntegerField;
    qrVerificaEstoqueLote: TStringField;
    qrVerificaEstoqueValidade: TDateTimeField;
    qrVerificaEstoqueQtde: TIntegerField;
    qrVerificaEstoqueQtdeEstoque: TFloatField;
    qrVerificaEstoqueMAT_DESC: TStringField;
    SPAlmox: TADOStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure dsNotaDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnSelecionarLotesClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure qrLotesBeforePost(DataSet: TDataSet);
    procedure dsItensDataChange(Sender: TObject; Field: TField);
    procedure btnEliminarMaterialClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotaDevolucaoCad: TfrmNotaDevolucaoCad;

implementation

uses UMenu, ufrmNotaDevolucaoErroEstoque;

{$R *.DFM}

procedure TfrmNotaDevolucaoCad.FormCreate(Sender: TObject);
begin
  qrForn.Open;
  qrMaterial.Open;
  qrMarcas.Open;
end;

procedure TfrmNotaDevolucaoCad.dsNotaDataChange(Sender: TObject;
  Field: TField);
begin
  if qrNotaIdNotaDevolucao.AsString <> '' then begin
      qrItems.Close;
      qrItems.Parameters[0].Value :=  qrNotaIdNotaDevolucao.AsInteger;
      qrItems.Open;

      if qrNotaIdStatusDevolucao.AsInteger = 2 then begin
          pnlMateriais.Visible := False;
          btnSelecionarLotes.Visible := false;
          btnEliminarMaterial.Visible := False;
          btnConfirmar.Visible := false;
          Button4.Visible := False;
      end;

  end;
end;

procedure TfrmNotaDevolucaoCad.Button1Click(Sender: TObject);
begin
  try
    qrItemAdd.Open;
    qrItemAdd.Append;

    qrItemAddIdNotaDevolucao.Value := qrNotaIdNotaDevolucao.AsInteger;
    qrItemAddMAT_ID.Value := StrToInt(cboMaterial.LookupValue);
    qrItemAddMARCA_ID.Value := StrToInt(cboMarca.LookupValue);
    qrItemAddQuantidade.Value := StrToInt(edtQtde.Text);

    qrItemAdd.Post;
    qrItems.Close;
    qrItems.Parameters[0].Value :=  qrNotaIdNotaDevolucao.AsInteger;
    qrItems.Open;

    cboMaterial.Text := '';
    cboMarca.Text := '';
    edtQtde.Text := '';
    cboMaterial.SetFocus;

  except
     ShowMessage('Verifique as informações!');
  end;


end;

procedure TfrmNotaDevolucaoCad.FormShow(Sender: TObject);
begin
  qrNota.Parameters[0].Value := StrToInt(edtCodigo.Text);
  qrNota.Open;
end;

procedure TfrmNotaDevolucaoCad.Button4Click(Sender: TObject);
begin
  TRY
  qrNotaIdStatusDevolucao.Value := 1;
  qrNota.Post;
  edtCodigo.Text := qrNotaIdNotaDevolucao.AsString;
  EXCEPT
      ShowMessage('Verifique as informações, é provavel que já exista uma nota fiscal com o mesmo número para o fornecedor informado');
  end;
end;

procedure TfrmNotaDevolucaoCad.btnSelecionarLotesClick(Sender: TObject);
begin

   with qrExec do begin
       close;
       sql.Clear;
       SQL.Add(' delete from NotaDevolucaoTemp where IdNotaDevolucao = ' + qrNotaIdNotaDevolucao.AsString);
       ExecSQL;
   end;

   with qrExec do begin
       close;
       sql.Clear;
       sql.Add('INSERT INTO NotaDevolucaoTemp(IdNotaDevolucao,QTDE,MAT_ID,MAT_DESC,MARCA_DESC,UNI_SIGLA,DS_LOC,MARCA_ID,N_Lote,Valid,For_Codi,QtdeSelecionada, data, reposicao)');
       SQL.Add('SELECT  ' + qrNotaIdNotaDevolucao.AsString + ',QTDE,MAT_ID,MAT_DESC,MARCA_DESC,UNI_SIGLA,DS_LOC,MARCA_ID,N_Lote,Valid,For_Codi,0, data, reposicao FROM vwEstoque WHERE 1=1');
       sql.Add(' AND MAT_ID = ' + qrItemsMAT_ID.AsString);
       SQL.Add(' AND MARCA_ID = ' + qrItemsMARCA_ID.AsString);
       SQL.Add(' AND FOR_CODI = ' + QuotedStr(qrNotaFornecedor.AsString) );
       SQL.Add(' AND LOCAL_ID = 1');
       ExecSQL;
   end;

   with qrLotes do begin
       Close;
       sql.Clear;
       SQL.Add('SELECT * FROM NotaDevolucaoTemp where IdNotaDevolucao = ' + qrNotaIdNotaDevolucao.AsString);
       Open;

   end;

   pnlLotes.Left := 0;
   pnlLotes.Width := 985;
    pnlLotes.TOP := 72;
   pnlLotes.Visible := TRUE;
end;

procedure TfrmNotaDevolucaoCad.Button3Click(Sender: TObject);
begin
  qrLotes.Close;
  pnlLotes.Visible := False;
end;

procedure TfrmNotaDevolucaoCad.Button2Click(Sender: TObject);
VAR ID : Integer;
begin
   with qrExec do begin
       Close;
       sql.Clear;
       sql.Add('Delete from NotaDevolucaoLote where IdNotaDevolucaoItem = ' + qrItemsIdNotaDevolucaoItem.AsString);
       ExecSQL;
   end;

   qrLotesSelecionados.Close;
   qrLotesSelecionados.Parameters[0].Value := qrItemsIdNotaDevolucaoItem.AsInteger;
   qrLotesSelecionados.Open;

   qrLotes.First;
   while not qrLotes.Eof do begin

        if qrLotesQtdeSelecionada.AsInteger > 0 then begin


                qrLotesSelecionados.Append;

                qrLotesSelecionadosIdNotaDevolucaoItem.Value := qrItemsIdNotaDevolucaoItem.AsInteger;
                qrLotesSelecionadosMAT_ID.Value := qrLotesMAT_ID.AsInteger;
                qrLotesSelecionadosMARCA_ID.Value := qrLotesMARCA_ID.AsInteger;
                qrLotesSelecionadosFornecedor.Value := qrLotesFor_Codi.AsString;
                qrLotesSelecionadosLote.Value := qrLotesN_Lote.AsString;
                qrLotesSelecionadosValidade.Value := qrLotesValid.Value;
                qrLotesSelecionadosQtde.Value := qrLotesQtdeSelecionada.AsInteger;

                qrLotesSelecionados.Post;

        end;
        qrLotes.Next;
   end;
   qrLotes.Close;
   pnlLotes.Visible := False;

   ID := qrItemsIdNotaDevolucaoItem.AsInteger;
   qrItems.close;
   qrItems.Parameters[0].Value := qrNotaIdNotaDevolucao.AsInteger;
   qrItems.Open;
   qrItems.Locate('IdNotaDevolucaoItem', ID, []);

end;

procedure TfrmNotaDevolucaoCad.qrLotesBeforePost(DataSet: TDataSet);
begin
  if qrLotesQTDE.AsInteger < qrLotesQtdeSelecionada.AsInteger then begin
      ShowMessage('Quantitade superior a existente no estoque!');
      qrLotes.Cancel;
  end;
end;

procedure TfrmNotaDevolucaoCad.dsItensDataChange(Sender: TObject;
  Field: TField);
begin
   qrLotesSelecionados.Close;
   qrLotesSelecionados.Parameters[0].Value := qrItemsIdNotaDevolucaoItem.AsInteger;
   qrLotesSelecionados.Open;
end;

procedure TfrmNotaDevolucaoCad.btnEliminarMaterialClick(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Deseja eliminar o material?', 'Confirmação', MB_YESNO) = 7 then
        Abort;


 with qrExec do begin
       Close;
       sql.Clear;
       sql.Add('Delete from NotaDevolucaoLote where IdNotaDevolucaoItem = ' + qrItemsIdNotaDevolucaoItem.AsString);
       ExecSQL;
   end;

 with qrExec do begin
       Close;
       sql.Clear;
       sql.Add('Delete from NotaDevolucaoItem where IdNotaDevolucaoItem = ' + qrItemsIdNotaDevolucaoItem.AsString);
       ExecSQL;
   end;


   qrItems.close;
   qrItems.Parameters[0].Value := qrNotaIdNotaDevolucao.AsInteger;
   qrItems.Open;
end;

procedure TfrmNotaDevolucaoCad.btnConfirmarClick(Sender: TObject);
var ErroEstoque, ErroBaixa : Boolean;
begin

   if MessageBox(Self.Handle, 'Deseja confirmar a nota de devolução e dar baixa no estoque?', 'Confirmação', MB_YESNO) = 7 then
        Abort;


   qrVerificaEstoque.Close;
   qrVerificaEstoque.Parameters[0].Value := qrNotaIdNotaDevolucao.AsInteger;
   qrVerificaEstoque.Open;

   qrVerificaEstoque.First;
   while not qrVerificaEstoque.Eof  do begin

       if qrVerificaEstoqueQtdeEstoque.AsInteger < qrVerificaEstoqueQtde.AsInteger then
          ErroEstoque := True;

       qrVerificaEstoque.Next;
   end;


   if ErroEstoque = True then begin
      frmNotaDevolucaoErroEstoque := TfrmNotaDevolucaoErroEstoque.Create(Self);
      frmNotaDevolucaoErroEstoque.ShowModal;
   end
   else begin
         
        qrItems.First;
        while not qrItems.Eof do begin

            qrLotesSelecionados.First;
            while not qrLotesSelecionados.Eof do begin

                SPAlmox.Parameters.ParamByName('@N_LOTE').Value := qrLotesSelecionadosLote.AsString;
                SPAlmox.Parameters.ParamByName('@QTDE').Value := qrLotesSelecionadosQtde.AsInteger;
                SPAlmox.Parameters.ParamByName('@MAT_ID').Value := qrLotesSelecionadosMAT_ID.AsInteger;
                SPAlmox.Parameters.ParamByName('@FOR_CODI').Value := qrNotaFornecedor.AsString;
                SPAlmox.Parameters.ParamByName('@MOT_ID').Value := 6;
                SPAlmox.Parameters.ParamByName('@TIPO').Value := 'B';
                SPAlmox.Parameters.ParamByName('@USUARIO').Value := FMenu.sqlUsuariosNome.AsString;
                SPAlmox.Parameters.ParamByName('@TD_ID').Value := 8;
                SPAlmox.Parameters.ParamByName('@DOCTO').Value := qrNotaNumero.AsString;
                SPAlmox.Parameters.ParamByName('@REC_ITEM_ID').Value := null;
                SPAlmox.Parameters.ParamByName('@DATAX').Value := null;
                SPAlmox.Parameters.ParamByName('@MARCA_ID').Value := qrLotesSelecionadosMARCA_ID.AsInteger;
                SPAlmox.Parameters.ParamByName('@VALID').Value := formatdatetime('DD-MM-YYYY',strtodate(qrLotesSelecionadosValidade.AsString)) ;
                SPAlmox.Parameters.ParamByName('@LOCAL_ID').Value := 1;
                SPAlmox.Parameters.ParamByName('@OBS').Value := 'Devolução da nota fiscal ' + qrNotaNumero.AsString;

                SPAlmox.ExecProc;

                if  SPAlmox.Parameters.ParamByName('@MSG').Value = 'OK' then begin
                    qrLotesSelecionados.Edit;
                    qrLotesSelecionadosQtdeBaixada.AsInteger := qrLotesSelecionadosQtde.AsInteger;
                    qrLotesSelecionados.Post;
                end
                else begin
                    ErroBaixa := True;
                end;

                qrLotesSelecionados.Next;
            end;


            qrItems.Next;
        end;



        if ErroBaixa = true then begin
            ShowMessage('Não foi possível efetuar todas as baixas, verifique a listagem');
            qrItems.Close;
            qrItems.Parameters[0].Value := qrNotaIdNotaDevolucao.AsInteger;
            qrItems.Open;
        end
        else begin
            qrNota.Edit;
            qrNotaIdStatusDevolucao.AsInteger := 2;
            qrNota.Post;
        end;

   end;

end;

end.

unit UfrmDevolucaoRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzButton, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls;

type
  TfrmDevolucaoRequisicao = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    qrDevolucao: TADOQuery;
    DataSource1: TDataSource;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    qrAux: TADOQuery;
    STP_ATUAL_ESTOQUE: TADOStoredProc;
    qrDevolucaoRR_ID: TAutoIncField;
    qrDevolucaoReq_Item_ID: TIntegerField;
    qrDevolucaoMat_ID: TIntegerField;
    qrDevolucaoN_Lote: TWideStringField;
    qrDevolucaoValid: TDateTimeField;
    qrDevolucaoMarca_ID: TIntegerField;
    qrDevolucaoFor_Codi: TStringField;
    qrDevolucaoLocal_ID: TIntegerField;
    qrDevolucaoQtde: TFloatField;
    qrDevolucaoUsuario: TStringField;
    qrDevolucaoStatus: TStringField;
    qrDevolucaoMAT_DESC: TStringField;
    qrDevolucaoDevolucao: TFloatField;
    qrDevolucaoAux: TFloatField;
    qrDevolucaoMAT_ID_1: TAutoIncField;
    chkVerificacao: TCheckBox;
    qrDevolucaoDT_INICIO: TDateTimeField;
    qrDevolucaoDT_FIM: TDateTimeField;
    qrDevolucaoOBS: TStringField;
    qrDevolucaoSEL: TStringField;
    qrDevolucaoDT_APROVACAO: TDateTimeField;
    qrDevolucaotipoConsumo: TStringField;
    qrDevolucaoLOCAL_DESTINO: TIntegerField;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrDevolucaoBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevolucaoRequisicao: TfrmDevolucaoRequisicao;

implementation

uses UMenu, URequisicao;

{$R *.DFM}

procedure TfrmDevolucaoRequisicao.RzBitBtn1Click(Sender: TObject);
var dev : Real;
begin
   if MessageBox(Self.Handle, 'Confirma devolução das quantidades digitadas?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
    begin
        Abort;
    end;

    if qrDevolucao.State in [dsedit, dsInsert] then
        qrDevolucao.Post;



    chkVerificacao.Checked := False; //desativa a verificação do beforepost do qrdevolucao
    try
         FMenu.ADOConnection.BeginTrans;

         qrDevolucao.First;
         while not qrDevolucao.Eof do
         begin
             if qrDevolucaoAux.AsString <> '' then begin
                       //da entrada no estoque
                       with STP_ATUAL_ESTOQUE do
                          begin
                            Parameters.ParamByName('@N_LOTE').Value   := qrDevolucaoN_Lote.Value; //qryItensSelecionadosLOTE.Value;
                            Parameters.ParamByName('@QTDE').Value     := qrDevolucaoAux.Value; //qryItensSelecionadosQTDE_SOL.Value;
                            Parameters.ParamByName('@MAT_ID').Value   := qrDevolucaoMAT_ID.Value;  //qryItensSelecionadosMAT_ID.Value;
                            Parameters.ParamByName('@FOR_CODI').Value := qrDevolucaoFor_Codi.Value; //qryItensSelecionadosFOR_CODI.Value;
                            Parameters.ParamByName('@MOT_ID').Value :=   6;
                            Parameters.ParamByName('@TIPO').Value :=   'E';
                            Parameters.ParamByName('@USUARIO').Value :=   FMenu.sqlUsuariosNome.Value;
                            Parameters.ParamByName('@TD_ID').Value := 8;//devolução no tipo de documento
                            Parameters.ParamByName('@DOCTO').Value :=   FRequisicao.Q_REQYReq_ID.Value;
                            Parameters.ParamByName('@REC_ITEM_ID').Value :=  Null;
                            Parameters.ParamByName('@DATAX').Value :=  null;
                            Parameters.ParamByName('@MARCA_ID').Value := qrDevolucaoMarca_ID.Value;  //qryItensSelecionadosMARCA_ID.Value;
                            Parameters.ParamByName('@VALID').Value :=  qrDevolucaoValid.Value; //qryItensSelecionadosVALIDADE.Value;
                            Parameters.ParamByName('@LOCAL_ID').Value :=  FMenu.sqlUsuariosLOCAL_ID.Value;
                            ExecProc;
                          end;


                       if qrDevolucaotipoConsumo.AsString = 'T' then begin
                          with STP_ATUAL_ESTOQUE do
                          begin
                            Parameters.ParamByName('@N_LOTE').Value   := qrDevolucaoN_Lote.Value; //qryItensSelecionadosLOTE.Value;
                            Parameters.ParamByName('@QTDE').Value     := qrDevolucaoAux.Value; //qryItensSelecionadosQTDE_SOL.Value;
                            Parameters.ParamByName('@MAT_ID').Value   := qrDevolucaoMAT_ID.Value;  //qryItensSelecionadosMAT_ID.Value;
                            Parameters.ParamByName('@FOR_CODI').Value := qrDevolucaoFor_Codi.Value; //qryItensSelecionadosFOR_CODI.Value;
                            Parameters.ParamByName('@MOT_ID').Value :=   6;
                            Parameters.ParamByName('@TIPO').Value :=   'S';
                            Parameters.ParamByName('@USUARIO').Value :=   FMenu.sqlUsuariosNome.Value;
                            Parameters.ParamByName('@TD_ID').Value := 8;//devolução no tipo de documento
                            Parameters.ParamByName('@DOCTO').Value :=   FRequisicao.Q_REQYReq_ID.Value;
                            Parameters.ParamByName('@REC_ITEM_ID').Value :=  Null;
                            Parameters.ParamByName('@DATAX').Value :=  null;
                            Parameters.ParamByName('@MARCA_ID').Value := qrDevolucaoMarca_ID.Value;  //qryItensSelecionadosMARCA_ID.Value;
                            Parameters.ParamByName('@VALID').Value :=  qrDevolucaoValid.Value; //qryItensSelecionadosVALIDADE.Value;
                            Parameters.ParamByName('@LOCAL_ID').Value :=  qrDevolucaoLOCAL_DESTINO.AsInteger;
                            ExecProc;
                          end;
                       end;

                      qrDevolucao.Edit;
                      if qrDevolucaoDevolucao.AsString = '' then
                          dev := 0
                      else
                          dev := qrDevolucaoDevolucao.Value;
                      qrDevolucaoDevolucao.Value := dev + qrDevolucaoAux.Value;
                      qrDevolucao.Post;
             end;//end if aux

             

             Application.ProcessMessages;
             qrDevolucao.Next;
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

procedure TfrmDevolucaoRequisicao.RzBitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDevolucaoRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmDevolucaoRequisicao := nil;
end;

procedure TfrmDevolucaoRequisicao.qrDevolucaoBeforePost(DataSet: TDataSet);
begin

  IF chkVerificacao.Checked then begin    //efetua a verificação durante a digitação e nao na geração
          if qrDevolucaoAux.Value > (qrDevolucaoQtde.Value - qrDevolucaoDevolucao.Value ) then
          begin
              MessageBox(Self.Handle, 'Quantidade à devolver maior que a quantidade disponível!', 'Erro', MB_OK + MB_ICONERROR)  ;
              Abort;
          end;
  end;
end;
                          
procedure TfrmDevolucaoRequisicao.FormCreate(Sender: TObject);
begin

  chkVerificacao.Checked := True;

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.sql.Add('Update req_lote set aux = 0 where Req_Item_ID in (select Req_Item_ID from req_item where req_id = ' + FRequisicao.Q_REQYReq_ID.AsString + ')');
  qrAux.ExecSQL;

  qrDevolucao.Close;
  qrDevolucao.Parameters[0].Value :=  FRequisicao.Q_REQYReq_ID.AsInteger;
  qrDevolucao.Open;

end;

procedure TfrmDevolucaoRequisicao.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   IF qrDevolucaoQtde.Value > qrDevolucaoDevolucao.Value then
        wwDBGrid1.ReadOnly := False
   else
        wwDBGrid1.ReadOnly := True;
end;

end.

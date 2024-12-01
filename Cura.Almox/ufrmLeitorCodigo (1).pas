unit ufrmLeitorCodigo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Db, ADODB;

type
  TfrmLeitorCodigo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtCodigo: TEdit;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label2: TLabel;
    Panel3: TPanel;
    wwDBGrid2: TwwDBGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    qrMateriais: TADOQuery;
    qrLotes: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisQtde: TFloatField;
    qrMateriaisQTDE_SEL: TFloatField;
    ADOQuery1: TADOQuery;
    qrLotesRR_ID: TAutoIncField;
    qrLotesN_Lote: TWideStringField;
    qrLotesValid: TDateTimeField;
    qrLotesQtde: TFloatField;
    qrMateriaismat_id: TIntegerField;
    qrLotesMat_id: TIntegerField;
    Button3: TButton;
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
    qrMateriaisREQ_ITEM_ID: TAutoIncField;
    qrLotesReq_Item_ID: TIntegerField;
    qrLotesMarca_ID: TIntegerField;
    qrLotesFor_Codi: TStringField;
    qrLotesLocal_ID: TIntegerField;
    qrLotesUsuario: TStringField;
    qrLotesStatus: TStringField;
    qrLotesDevolucao: TFloatField;
    qrLotesAux: TFloatField;
    qrLotesDT_INICIO: TDateTimeField;
    qrLotesDT_FIM: TDateTimeField;
    qrLotesOBS: TStringField;
    qrMat: TADOQuery;
    qrMatMAT_ID: TAutoIncField;
    qrMatMAT_DESC: TStringField;
    qrLotesMAT_DESC: TStringField;
    lbCodigo: TLabel;
    qrAux: TADOQuery;
    edtQtde: TEdit;
    Label4: TLabel;
    lbExcecaoOK: TLabel;
    CheckBox1: TCheckBox;
    ADOStoredProc1: TADOStoredProc;
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeitorCodigo: TfrmLeitorCodigo;

implementation

uses UMenu, URequisicao, ufrmReqExcecao;

{$R *.DFM}

procedure TfrmLeitorCodigo.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var RR_ID : string;
begin
    if key = vk_return then begin
        qrBarras.Close;
        qrBarras.Parameters[0].Value := StrToInt(edtCodigo.Text);
        qrBarras.Open;








        if qrBarras.IsEmpty then begin
           ShowMessage('Material não encontrado');
        end
        else begin


           //cadastra o material na requisição
           if CheckBox1.Checked then begin
                ADOStoredProc1.Parameters[0].Value := qrBarrasID.AsInteger;
                ADOStoredProc1.Parameters[1].Value := FRequisicao.Q_REQYReq_ID.AsInteger;
                ADOStoredProc1.Parameters[2].Value := StrToFloat(edtQtde.Text);
                ADOStoredProc1.ExecProc;
                qrMateriais.Close;
                qrMateriais.Open;
           end;




           //verifica se o lote selecionado é o mais antigo do estoque
           //verifica se existe estoque
           with qrAux do begin
               close;
               sql.Clear;
               sql.Add(
                  '  select  N_Lote, Valid '+
                   ' from almox  '+
                   ' where mat_id = ' + qrBarrasMAT_ID.AsString +
                   'and Tipo = ''E'' '+
                   ' AND LOCAL_ID  = ' + FMenu.sqlUsuariosLOCAL_ID.AsString +
                   'and Qtde_Retirada is null order by valid'
               );
               Open;
           end;
           //se é diferente pergunta se deseja gerar uma exeção ou abortar
           if qrAux.FieldByName('N_Lote').AsString <> qrBarrasN_LOTE.AsString then begin
             if  Application.MessageBox(pchar('O lote selecionado ' + qrBarrasN_LOTE.AsString + ' não é o mais antigo, o lote ' +  qrAux.FieldByName('N_Lote').AsString + ' é o mais antigo do estoque ' +  #13#10 + 'Deseja usar este lote mesmo assim?'),
             'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then begin
                      
                       frmReqExcecao := TfrmReqExcecao.Create(Self);
                       frmReqExcecao.ShowModal;
                       //se o usuario cancelou aborta a entrada
                       if lbExcecaoOK.Caption <> 'OK' then Abort;
             end
             else
             begin

               edtQtde.Text := '1';
               edtCodigo.Text := '';
               edtCodigo.SetFocus;
               Abort;
             end;
           end;






            //verificamos se o codigo ja foi cadastrado
            with ADOQuery1 do begin
                close;
                sql.Clear;
                sql.Add(
                 ' SELECT RR_ID '+
                 ' FROM Req_Lote  '+
                 ' WHERE Req_Item_ID IN  '+
                 ' (SELECT Req_Item_ID FROM Req_Item WHERE Req_ID = '  + lbCodigo.Caption +  ')   '+
                 ' and mat_id = ' +  qrBarrasMAT_ID.AsString +
                 ' and  N_LOTE = ' + QuotedStr(qrBarrasN_LOTE.AsString)
                 );
                Open;
                RR_ID  := ADOQuery1.FieldByName('RR_ID').asstring;
            end;


            if ADOQuery1.IsEmpty = False then begin




                //verifica se a quantidade ja foi atendida
                if qrMateriais.Locate('MAT_ID', qrBarrasMAT_ID.AsInteger, []) then begin
                    if qrMateriaisQtde.AsFloat <= qrMateriaisQTDE_SEL.AsFloat then begin
                        ShowMessage('A quantidade solicitada já foi atendida');
                        edtCodigo.Text := '';
                        edtCodigo.SetFocus;
                        Abort;
                    end;
                end;

                //adiciona a quantidade informada
                with ADOQuery1 do begin
                    close;
                    sql.Clear;
                    sql.Add('update req_lote set Qtde = Qtde + ' +   edtQtde.Text + ' where RR_ID = ' + RR_ID);
                    ExecSQL;
                end;

                qrLotes.Close;
                qrLotes.Open;

            end else begin   //se nao encontrou cadastra ele
                if qrMateriais.Locate('MAT_ID', qrBarrasMAT_ID.AsInteger, []) then begin
                        qrLotes.Append;
                        qrLotesReq_Item_ID.Value := qrMateriaisREQ_ITEM_ID.Value;
                        qrLotesMat_id.AsInteger := qrBarrasMAT_ID.AsInteger;
                        qrLotesN_Lote.Value := qrBarrasN_LOTE.AsString;
                        qrLotesValid.Value := qrBarrasVALIDADE.Value;
                        qrLotesMarca_ID.Value := qrBarrasMARCA_ID.Value;
                        qrLotesFor_Codi.Value := qrBarrasFOR_CODI.Value;
                        qrLotesLocal_ID.Value := FMenu.sqlUsuariosLOCAL_ID.Value;
                        qrLotesQtde.Value := StrToFloat(edtQtde.Text);
                        qrLotesUsuario.Value := FMenu.sqlUsuariosNome.AsString;
                        qrLotesStatus.Value := 'S';
                        qrLotes.Post;
                end
                else begin
                        ShowMessage('Este material não foi solicitado!');
                end;
            end;
        end;
        edtCodigo.Text := '';
        edtCodigo.SetFocus;
        qrMateriais.Close;
        qrMateriais.Open;
        qrMateriais.Locate('MAT_ID', qrBarrasMAT_ID.AsInteger, []);
        edtQtde.Text := '1';
    end;
end;

procedure TfrmLeitorCodigo.FormCreate(Sender: TObject);
begin
  qrMat.Open;
end;

procedure TfrmLeitorCodigo.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrMateriaisQtde.AsFloat > qrMateriaisQTDE_SEL.AsFloat then begin
       ABrush.Color := clRed;
   end else begin
       ABrush.Color := clWindow;
   end;

   if Highlight then
        AFont.Color := clBlack
   else
        AFont.Color := clBlack;

end;

procedure TfrmLeitorCodigo.Button1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmLeitorCodigo.Button2Click(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Confirma o cancelamento? todas as informações serão perdidas', 'Confirmação', MB_YESNO ) = 6 then begin
           with ADOQuery1 do begin
                close;
                sql.Clear;
                sql.Add(
                 ' delete '+
                 ' FROM Req_Lote  '+
                 ' WHERE Req_Item_ID IN  '+
                 ' (SELECT Req_Item_ID FROM Req_Item WHERE Req_ID = '  + lbCodigo.Caption +  ')   '
                 );
                execSQl;
            end;
            Self.Close;
   end;
end;

end.

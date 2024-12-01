unit UfrmAddItemSol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, DBCtrls, ExtCtrls, RzPanel, wwdblook, Wwdbdlg,
  RzButton, JvExControls, JvComponent, JvEnterTab;

type
  TfrmAddItemSol = class(TForm)
    qrMatCadastro: TADOQuery;
    StringField1: TStringField;
    qrMatCadastroESTOQUE: TFloatField;
    AutoIncField1: TAutoIncField;
    qrMatCadastrouni_id: TIntegerField;
    RzGroupBox1: TRzGroupBox;
    DBText1: TDBText;
    RzGroupBox2: TRzGroupBox;
    CheckBox1: TCheckBox;
    RzGroupBox3: TRzGroupBox;
    edtQtde: TEdit;
    edtMat: TEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    lbItem: TLabel;
    qrUnidades: TADOQuery;
    qrUnidadesUNI_SIGLA: TStringField;
    qrUnidadesUNI_ID: TAutoIncField;
    qrAux: TADOQuery;
    wwDBLookupCombo1: TwwDBLookupCombo;
    JvEnterAsTab1: TJvEnterAsTab;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SaveRecord(Mat_id, Sol_id, Item_ID, Desc, Qtde, S_N, Tipo : String);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddItemSol: TfrmAddItemSol;

implementation

uses USolicitacao, UMenu;

{$R *.DFM}

procedure TfrmAddItemSol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmAddItemSol := nil;
end;

procedure TfrmAddItemSol.FormCreate(Sender: TObject);
begin
  qrMatCadastro.Open;
end;

procedure TfrmAddItemSol.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
      wwDBLookupCombo1.Visible := False;
      edtMat.Visible := True;
  end else begin
      edtMat.Visible := False;
      wwDBLookupCombo1.Visible := True;
  end;
end;



procedure TfrmAddItemSol.SaveRecord(Mat_id, Sol_id, Item_ID, Desc, Qtde,
  S_N, Tipo: String);
  VAR un : string;
  SQL : string;
begin
//procedure que salva o registro no banco de dados

//VERIFICA SE É COM CADASTRO
    //ADICIONA ITEM CADASTRADO
     qrMatCadastro.Locate('MAT_ID', Mat_id, []);
     UN := qrMatCadastrouni_id.AsString;

     IF (Tipo = 'I') and (S_N = 'N') then begin
       SQL := 'INSERT INTO ITEM_SOLICITACAO(SOL_ID, MAT_ID, QTDE, GENERICO, UNIDADE) VALUES(' +
              Sol_id + ',' + Mat_id + ',' + Qtde + ',' + QuotedStr(S_N) + ',' + UN +')';
     end;

    //ATUALIZA ITEM CADASTRADO
    IF (Tipo = 'U') and (S_N = 'N') then begin
      SQL := ' UPDATE ITEM_SOLICITACAO SET MAT_ID = ' + Mat_id + ', QTDE = ' + Qtde + ', UNIDADE = ' + UN +
             ' WHERE ITEM = ' + Item_ID ;
    end;

    //SEM CADASTRO
    //ADICIONA ITEM SEM CADASTRO
    IF (Tipo = 'I') and (S_N = 'S') then begin
        SQL := 'INSERT INTO ITEM_SOLICITACAO(SOL_ID, MAT_ID, QTDE, GENERICO, UNIDADE, MAT_DESC) VALUES(' +
              Sol_id + ',' + Mat_id + ',' + Qtde + ',' + QuotedStr(S_N) + ',' + UN + ',' + QuotedStr(Desc)+ ')';
    end;

    //ATUALIZA ITEM SEM CADASTRO
    IF (Tipo = 'U') and (S_N = 'S') then begin
        SQL := ' UPDATE ITEM_SOLICITACAO SET MAT_ID = ' + Mat_id + ', QTDE = ' + Qtde + ', UNIDADE = ' + UN +
               ', MAT_DESC = ' + QuotedStr(Desc ) +  ' WHERE ITEM = ' + Item_ID ;
    end;

    qrAux.CLOSE;
    qrAux.SQL.Clear;
    qrAux.SQL.Add(SQL);
    qrAux.ExecSQL;

    CLOSE;
end;

procedure TfrmAddItemSol.RzBitBtn1Click(Sender: TObject);
var
  SOL_ID, MAT_ID, ITEM_ID, DESC, QTDE, S_N, TIPO : string;
begin

  if edtQtde.Text = '' then begin
      ShowMessage('Informe a quantidade');
      Abort;
  end;

  if (CheckBox1.Checked) and (edtMat.Text = '') then begin
      ShowMessage('Informe a o material');
      Abort;
  end;
//
   SOL_ID := frmSolicitacao.qrSolicitacaoid.AsString;
   IF lbItem.Caption <> '0' then
        TIPO := 'U'
   else
        TIPO := 'I';
   IF CheckBox1.Checked then begin
       MAT_ID := FMenu.lbSemCadastro.Caption;
       DESC := edtMat.Text;
       QTDE := edtQtde.Text;
       S_N := 'S';
       ITEM_ID := lbItem.Caption;
   end
   else
   begin
       MAT_ID := wwDBLookupCombo1.LookupValue;
       QTDE := edtQtde.Text;
       S_N := 'N';
       ITEM_ID := lbItem.Caption;
   end;
   
   SaveRecord(MAT_ID, SOL_ID, ITEM_ID, DESC, QTDE, S_N, TIPO);

end;

procedure TfrmAddItemSol.FormShow(Sender: TObject);
begin
  IF wwDBLookupCombo1.Visible then
        wwDBLookupCombo1.SetFocus;
end;

procedure TfrmAddItemSol.RzBitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmAddItemSol.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then
Key:= #0;
end;

end.

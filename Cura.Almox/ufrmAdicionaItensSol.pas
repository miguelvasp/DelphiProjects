unit ufrmAdicionaItensSol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmAdicionaItensSol = class(TForm)
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Button1: TButton;
    qrGrupos: TADOQuery;
    qrGruposGRU_ID: TAutoIncField;
    qrGruposGRU_DESC: TStringField;
    wwDBGrid1: TwwDBGrid;
    Label2: TLabel;
    Button2: TButton;
    qrAux: TADOQuery;
    qrBusca: TADOQuery;
    qrBuscaCH: TIntegerField;
    qrBuscaMAT_ID: TIntegerField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaUNI_SIGLA: TStringField;
    qrBuscaQTDE: TFloatField;
    qrBuscaID: TLargeintField;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdicionaItensSol: TfrmAdicionaItensSol;

implementation

uses UMenu, UfrmSolicitacaoMateriais;

{$R *.DFM}

procedure TfrmAdicionaItensSol.FormCreate(Sender: TObject);
begin
  qrGrupos.Open;
end;

procedure TfrmAdicionaItensSol.Button1Click(Sender: TObject);
begin
    qrAux.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
    qrAux.Parameters[1].Value := StrToInt(wwDBLookupCombo1.LookupValue);
    qrAux.ExecSQL;

    qrBusca.Close;
    qrBusca.Parameters[0].Value := FMenu.sqlUsuariosCH.AsInteger;
    qrBusca.Open;
end;

procedure TfrmAdicionaItensSol.Button2Click(Sender: TObject);
begin



  if qrBusca.State = dsEdit then qrBusca.Post;

  if MessageBox(Self.Handle, 'Confirma a gera��o dos itens ?', 'Confirma��o', MB_YESNO) = 7 then
    abort;


  qrBusca.First;
  while not qrBusca.Eof do begin
     if qrBuscaQTDE.AsFloat > 0.00 then begin
       frmSolicitacaoMateriais.qrItens.Append;
       frmSolicitacaoMateriais.qrItensMAT_ID.Value := qrBuscaMAT_ID.Value;
       frmSolicitacaoMateriais.qrItensQTDE_SOL.Value := qrBuscaQTDE.AsFloat;
       frmSolicitacaoMateriais.qrItensQTDE_ATENDIDA.Value := 0.00;
       frmSolicitacaoMateriais.qrItensSOL_ID.Value := frmSolicitacaoMateriais.qrSolicitacaoSOL_ID.Value;
       frmSolicitacaoMateriais.qrItensSALDO.Value := qrBuscaQTDE.AsFloat;
       frmSolicitacaoMateriais.qrItensSTATUS.Value := 'A';
       frmSolicitacaoMateriais.qrItensUNI_SIGLA.Value := qrBuscaUNI_SIGLA.Value;
       frmSolicitacaoMateriais.qrItens.Post;
      end;
      qrBusca.Next;
  end;

  qrBusca.Close;
  ShowMessage('Materiais cadastrados com sucesso');


end;

end.

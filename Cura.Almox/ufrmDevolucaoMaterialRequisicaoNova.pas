unit ufrmDevolucaoMaterialRequisicaoNova;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook,
  Buttons;

type
  TfrmDevolucaoMaterialRequisicaoNova = class(TForm)
    Panel1: TPanel;
    qrMaterial: TADOQuery;
    qrMaterialMAT_DESC: TStringField;
    qrMaterialMAT_ID: TAutoIncField;
    qrLocal: TADOQuery;
    qrLocalDescricao: TStringField;
    qrLocalLocal_ID: TAutoIncField;
    Label12: TLabel;
    cboMatPesq: TwwDBLookupCombo;
    Label14: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label1: TLabel;
    edtLote: TEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    qrBuscaListagem: TADOQuery;
    Panel2: TPanel;
    Button2: TButton;
    DataSource1: TDataSource;
    btnGetMaterial: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevolucaoMaterialRequisicaoNova: TfrmDevolucaoMaterialRequisicaoNova;

implementation

uses UMenu, ufrmDevolucaoMaterialRequisicaoNovaCad, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmDevolucaoMaterialRequisicaoNova.FormCreate(Sender: TObject);
begin
   qrMaterial.Open;
   qrLocal.Open;
end;

procedure TfrmDevolucaoMaterialRequisicaoNova.Button1Click(
  Sender: TObject);
begin

   with qrBuscaListagem do begin
        close;
        sql.Clear;
        sql.Add(
             ' SELECT R.Req_ID, R.Data, C.CodigoMaterial + '' '' + C.MAT_DESC AS MAT_DESC, A.N_Lote, A.Valid, L.Descricao, A.Devolucao '+
             ' FROM REQ_LOTE A   '+
             ' INNER JOIN REQ_ITEM B ON A.REQ_ITEM_ID = B.REQ_ITEM_ID   '+
             ' INNER JOIN MATERIAIS C ON A.MAT_ID = C.MAT_ID   '+
             ' INNER JOIN Req_Capa R ON B.Req_ID = R.Req_ID   '+
             ' INNER JOIN LOCAL L ON A.Local_ID = L.Local_ID  '+
             ' WHERE B.STATUS = ''F'' '+
             ' and A.Devolucao IS NOT NULL  '
        );

        sql.Add('AND r.LOCAL_ID = ' + FMenu.sqlUsuariosLOCAL_ID.AsString);

        if cboMatPesq.Text <> '' then begin
            sql.Add(' AND C.MAT_ID = ' + cboMatPesq.LookupValue);
        end;

        IF cboLocal.Text <> '' then begin
            SQL.Add('AND L.LOCAL_ID = ' + cboLocal.LookupValue);
        end;

        if edtLote.Text <> '' then begin
            sql.Add(' and A.N_Lote like ' + QuotedStr('%' + edtLote.Text + '%'));
        end;


        sql.Add(' ORDER BY C.MAT_DESC ');
        Open;
   end;
end;

procedure TfrmDevolucaoMaterialRequisicaoNova.Button2Click(
  Sender: TObject);
begin
     frmDevolucaoMaterialRequisicaoNovaCad  := tfrmDevolucaoMaterialRequisicaoNovaCad.create(self);
     frmDevolucaoMaterialRequisicaoNovaCad.showmodal;
     Button1.Click;
end;

procedure TfrmDevolucaoMaterialRequisicaoNova.btnGetMaterialClick(
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

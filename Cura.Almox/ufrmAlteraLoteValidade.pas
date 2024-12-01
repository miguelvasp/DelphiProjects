unit ufrmAlteraLoteValidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, Buttons;

type
  TfrmAlteraLoteValidade = class(TForm)
    qrBusca: TADOQuery;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisMAT_ID: TAutoIncField;
    GroupBox1: TGroupBox;
    cboMateriais: TwwDBLookupCombo;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    qrBuscaAlmox_ID: TAutoIncField;
    qrBuscaAlmox_ID_Mestre: TIntegerField;
    qrBuscaFor_Codi: TStringField;
    qrBuscaMat_ID: TIntegerField;
    qrBuscaLocal_ID: TIntegerField;
    qrBuscaMarca_ID: TIntegerField;
    qrBuscaN_Lote: TWideStringField;
    qrBuscaValid: TDateTimeField;
    qrBuscaQtde: TFloatField;
    qrBuscaQtde_Retirada: TFloatField;
    qrBuscaQtde_Input: TFloatField;
    qrBuscaTipo: TStringField;
    qrBuscaMot_ID: TIntegerField;
    qrBuscaUni_ID: TIntegerField;
    qrBuscaUni_Sigla: TStringField;
    qrBuscaObs: TMemoField;
    qrBuscaData: TDateTimeField;
    qrBuscaUsuario: TWideStringField;
    qrBuscaTD_ID: TIntegerField;
    qrBuscaDocto: TStringField;
    qrBuscaRec_Item_ID: TIntegerField;
    qrBuscaCusto: TFloatField;
    qrBuscaREPOSICAO: TFloatField;
    qrBuscaValorConciliado: TStringField;
    qrLocal: TADOQuery;
    qrLocalDESCRICAO: TStringField;
    qrLocalLOCAL_ID: TAutoIncField;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    Label1: TLabel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    btnGetMaterial: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraLoteValidade: TfrmAlteraLoteValidade;

implementation

uses UMenu, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmAlteraLoteValidade.FormCreate(Sender: TObject);
begin
  qrMateriais.Open;
  qrLocal.Open;
end;

procedure TfrmAlteraLoteValidade.Button1Click(Sender: TObject);
begin
  qrBusca.Close;
  qrBusca.Parameters[0].Value := StrToInt(cboMateriais.LookupValue);
  qrBusca.Parameters[1].Value := StrToInt(cboLocal.LookupValue);
  qrBusca.Open;
end;

procedure TfrmAlteraLoteValidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if qrBusca.State in [dsEdit, dsInsert] then begin
       qrBusca.Post;
   end;
end;

procedure TfrmAlteraLoteValidade.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMateriais.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

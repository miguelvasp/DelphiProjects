unit UfrmCorrigeValoresRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, ADODB, wwdblook, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmCorrigeValoresRequisicao = class(TForm)
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisMAT_ID: TAutoIncField;
    Label3: TLabel;
    cboMateriais: TwwDBLookupCombo;
    Button1: TButton;
    qrBusca: TADOQuery;
    wwDBGrid1: TwwDBGrid;
    qrBuscaReq_Item_ID: TAutoIncField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaData: TDateTimeField;
    qrBuscaREPOSICAO: TFloatField;
    qrBuscaCUSTO: TFloatField;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrigeValoresRequisicao: TfrmCorrigeValoresRequisicao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmCorrigeValoresRequisicao.FormCreate(Sender: TObject);
begin
  qrMateriais.Open;
end;

procedure TfrmCorrigeValoresRequisicao.Button1Click(Sender: TObject);
begin
  try
   with qrBusca do begin
       Close;
       sql.Clear;
       sql.Add(
           ' SELECT '+
           '         I.Req_Item_ID, M.MAT_DESC, C.Data, I.REPOSICAO, I.CUSTO '+
           ' FROM Req_Item I '+
           ' INNER JOIN Req_Capa C ON I.Req_ID = C.Req_ID '+
           ' INNER JOIN MATERIAIS M ON I.Mat_ID = M.MAT_ID '+
           ' WHERE M.MAT_ID =  '+ cboMateriais.LookupValue +
           ' AND CONVERT(VARCHAR, C.Data, 112) >= ' + FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text)) +
           ' AND CONVERT(VARCHAR, C.Data, 112) <= ' + FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text)) +
           ' order by I.Req_Item_ID '

       );
       Open;
   end;
  except
     ShowMessage('Verifique os filtros');
  end;

end;

procedure TfrmCorrigeValoresRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qrBusca.State in [dsEDit] then
        qrBusca.Post;
end;

end.

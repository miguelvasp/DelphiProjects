unit UfrmConsultaValidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, Db, ADODB, wwdblook;

type
  TfrmConsultaValidade = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    qrBusca: TADOQuery;
    qrBuscaQTDE: TFloatField;
    qrBuscaMAT_ID: TAutoIncField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaUNI_SIGLA: TStringField;
    qrBuscaLOCAL: TStringField;
    qrBuscaCUSTO_MEDIO: TFloatField;
    qrBuscaVALID: TDateTimeField;
    Label2: TLabel;
    qrMateriais: TADOQuery;
    cboMaterial: TwwDBLookupCombo;
    qrGrupo: TADOQuery;
    cboGrupo: TwwDBLookupCombo;
    Label3: TLabel;
    qrGrupoGRU_ID: TAutoIncField;
    qrGrupoGRU_DESC: TStringField;
    qrMateriaisMat_id: TAutoIncField;
    qrMateriaismat_desc: TStringField;
    cboLocal: TwwDBLookupCombo;
    Label4: TLabel;
    qrBuscan_lote: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaValidade: TfrmConsultaValidade;

implementation

uses UMenu, UfrmRelconsultaValidade;

{$R *.DFM}

procedure TfrmConsultaValidade.BitBtn1Click(Sender: TObject);
var d : TDateTime;
begin
     try
         d := StrToDate(MaskEdit1.Text);
     except
         MessageBox(Self.Handle, 'Data inválida', 'Erro', MB_OK + MB_ICONERROR)  ;
         Abort;
     end;


     with qrBusca do
     begin
         Close;
         SQL.Clear;
         sql.Add
        ('SELECT	' +
        'SUM(CASE WHEN ALM.QTDE IS NULL THEN 0.0 ELSE ALM.QTDE END) QTDE, 		MAT.MAT_ID, ' +
        'MAT.MAT_DESC, ' +
        'UNI.UNI_SIGLA, ' +
        'LOC.DESCRICAO LOCAL, ' +
        'MAT.CUSTO_MEDIO, ALM.VALID, alm.n_lote ' +
        'FROM ' +
        'ALMOX		ALM, ' +
        'MATERIAIS	MAT INNER JOIN GRUPO_MATERIAL G ON MAT.GRU_ID = G.GRU_ID ' +
        'LEFT OUTER JOIN UNIDADES UNI ON MAT.UNI_ID = UNI.UNI_ID, ' +
        'LOCAL		LOC ' +
        'WHERE		' +
        'ALM.MAT_ID = MAT.MAT_ID ' +
        'AND		ALM.LOCAL_ID	= LOC.LOCAL_ID ' +
        'AND		ALM.TIPO = ''E''  ' +
        'AND		ALM.QTDE_RETIRADA IS NULL ' +
        'AND MAT.MAT_CONTROLA = ''S'' AND ALM.QTDE > 0 '+
        'AND CONVERT(CHAR(10), ALM.VALID, 112) <= ' +  QuotedStr(FormatDateTime('YYYYMMDD', D)));

        if cboMaterial.Text <> '' then
                SQL.Add(' and MAT.MAT_ID = ' + cboMaterial.LookupValue);

        if cboGrupo.Text <> '' then
                SQL.Add(' AND MAT.GRU_ID = ' + cboGrupo.LookupValue);

        if cboLocal.Text <> '' then
                sql.Add(' AND LOC.LOCAL_ID = ' + cboLocal.LookupValue);

                
        SQL.Add(' AND MAT.MAT_CONTROLA  = ''S'' ');
        SQL.Add(' AND MAT.MAT_ATIVO  = ''S'' ');

        SQL.Add(
        'GROUP BY ' +
        'MAT.MAT_ID, ' +
        'MAT.MAT_DESC, ' +
        'LOC.DESCRICAO, ' +
        'UNI.UNI_SIGLA, ' +
        'MAT.CUSTO_MEDIO, ALM.VALID, alm.n_lote ' +
        'ORDER BY MAT.MAT_DESC, ALM.VALID ' ) ;
         Open;
     end;
     

     BitBtn2.Enabled := True;

end;

procedure TfrmConsultaValidade.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('dd/MM/YYYY', date);
  qrMateriais.Open;
  qrGrupo.Open;
end;

procedure TfrmConsultaValidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmConsultaValidade := nil;
end;

procedure TfrmConsultaValidade.BitBtn2Click(Sender: TObject);
var f : string;
begin

  BitBtn1.Click;

  f := 'Validade dos materias até '+  MaskEdit1.Text;
  if cboMaterial.Text <> '' then
        f := f + ' Material: ' + cboMaterial.Text;
  if cboLocal.Text <> '' then
        f := f + ' Grupo: ' + cboGrupo.Text;

  if cboLocal.Text <> '' then
        f := f + ' Local: ' + cboLocal.Text;

  frmRelconsultaValidade := TfrmRelconsultaValidade.Create(Self);
  frmRelconsultaValidade.QRMemo1.Lines.Text := f;
  frmRelconsultaValidade.QuickRep1.Preview;
  frmRelconsultaValidade.Close;
end;

end.

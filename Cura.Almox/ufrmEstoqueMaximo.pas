unit ufrmEstoqueMaximo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, StdCtrls, Buttons, wwdblook, ExtCtrls, RzPanel,
  RzRadGrp, RzTabs, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmEstoqueMaximo = class(TForm)
    qrConsulta: TwwQuery;
    Q_FORNECEDOR: TwwQuery;
    Q_FORNECEDORFOR_RAZA: TStringField;
    Q_FORNECEDORFOR_CODI: TStringField;
    Q_GRUPO: TwwQuery;
    Q_GRUPOGRU_DESC: TStringField;
    Q_GRUPOGRU_ID: TAutoIncField;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MARCA: TwwQuery;
    Q_MARCAMARCA_DESC: TStringField;
    Q_MARCAMARCA_ID: TAutoIncField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzRadioGroup1: TRzRadioGroup;
    cboMarca: TwwDBLookupCombo;
    cboMaterial: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    cbofornecedor: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    qrConsultaQTDE: TFloatField;
    qrConsultaMAT_ID: TAutoIncField;
    qrConsultaMAT_DESC: TStringField;
    qrConsultaGRU_DESC: TStringField;
    qrConsultaUNI_DESC: TStringField;
    qrConsultaLOCAL_ID: TAutoIncField;
    qrConsultaDS_LOC: TStringField;
    qrConsultaMAT_ESTMAX: TFloatField;
    btnGetMaterial: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueMaximo: TfrmEstoqueMaximo;

implementation

uses UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmEstoqueMaximo.BitBtn1Click(Sender: TObject);
begin
   with qrConsulta do begin
       Close;
       sql.Clear;
       sql.Add(

            '  SELECT   '+
            '                  SUM(CASE WHEN ALM.QTDE IS NULL THEN 0.0 ELSE ALM.QTDE END) QTDE, '+
            '                  MAT.MAT_ID,'+
            '                  MAT.CodigoMaterial + '' '' + MAT.MAT_DESC AS MAT_DESC,'+
            '                  G.GRU_DESC, '+
            '                  U.UNI_DESC,  '+
            '                  LOC.LOCAL_ID, '+
            '                  LOC.DESCRICAO DS_LOC, '+
            '                  MAT.MAT_ESTMAX  '+
            '  FROM ALMOX ALM, MATERIAIS	MAT INNER JOIN GRUPO_MATERIAL G '+
            '  ON MAT.GRU_ID = G.GRU_ID    left outer join MATERIAL_FORNECEDOR MF  '+
            '  on MAT.MAT_ID = MF.MAT_ID LEFT OUTER JOIN UNIDADES U  '+
            '  ON MAT.UNI_ID = U.UNI_ID , LOCAL LOC '+
            '  WHERE ALM.MAT_ID = MAT.MAT_ID  '+
            '  AND     ALM.LOCAL_ID	= LOC.LOCAL_ID '+
            '  AND	ALM.TIPO = ''E'' AND ALM.QTDE_RETIRADA IS NULL '


       );


   if cboMaterial.Text <> '' then
        sql.add(' AND MAT.MAT_ID = ' + cboMaterial.LookupValue);

   IF cboMarca.Text <> '' then
        SQL.ADD(' AND ALM.MARCA_ID = ' + cboMarca.LookupValue);

   IF cboGrupo.Text <> '' then
        SQL.ADD(' AND MAT.GRU_ID = ' + cboGrupo.LookupValue);

   IF cbofornecedor.Text <> '' then
        SQL.ADD('  AND MF.FOR_CODI = ' + QuotedStr(cbofornecedor.LookupValue));

   IF  RzRadioGroup1.ItemIndex = 1 then BEGIN
        SQL.ADD(' AND qtde >= MAT.MAT_ESTMAX ');
        SQL.ADD(' AND (MAT.MAT_ESTMAX IS NOT NULL AND MAT.MAT_ESTMAX > 0) ');
   end;


   sql.add(
    'GROUP BY MAT.MAT_ID, CodigoMaterial, MAT.MAT_DESC,G.GRU_DESC ,LOC.LOCAL_ID,LOC.DESCRICAO, U.UNI_DESC  ,MAT.MAT_ESTMAX  ORDER BY MAT.MAT_DESC, LOC.DESCRICAO'

   );
   Open;
   end;
end;

procedure TfrmEstoqueMaximo.FormCreate(Sender: TObject);
begin
   Q_FORNECEDOR.Open;
        Q_MAT.Open;
        Q_GRUPO.Open;
        Q_MARCA.Open;
end;

procedure TfrmEstoqueMaximo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmEstoqueMaximo := nil;
end;

procedure TfrmEstoqueMaximo.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMaterial.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

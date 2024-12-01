unit UPesqMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ExtCtrls, Db, ADODB, StdCtrls, Buttons,
  wwdblook, Wwdbigrd, Wwdbgrid, ComObj;

type
  TfrmPesqMateriais = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    cboMaterial: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    qrMateriais: TADOQuery;
    Label1: TLabel;
    cboGrupo: TwwDBLookupCombo;
    Label2: TLabel;
    qrGrupo: TADOQuery;
    cboMarca: TwwDBLookupCombo;
    Label3: TLabel;
    qrMarcas: TADOQuery;
    qrDBGrid: TADOQuery;
    dtDBGrid: TDataSource;
    qrDBGridMAT_DESC: TStringField;
    qrDBGridGRU_DESC: TStringField;
    qrDBGridMARCA_DESC: TStringField;
    qrMateriaisMAT_ID: TAutoIncField;
    qrMateriaisMAT_DESC: TStringField;
    qrGrupoGRU_ID: TAutoIncField;
    qrGrupoGRU_DESC: TStringField;
    qrMarcasMARCA_ID: TAutoIncField;
    qrMarcasMARCA_DESC: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qrDBGridMAT_ID: TAutoIncField;
    Label4: TLabel;
    edtMaterial: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qrCodigosXML: TADOQuery;
    qrCodigosXMLMAT_DESC: TStringField;
    qrCodigosXMLCodigoFornecedor: TStringField;
    qrCodigosXMLFornecedor: TStringField;
    qrCodigosXMLEAN: TStringField;
    Label5: TLabel;
    edtCodigo: TEdit;
    qrDBGridCodigoMaterial: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cboMaterialEnter(Sender: TObject);
    procedure edtMaterialEnter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqMateriais: TfrmPesqMateriais;

implementation

uses UMenu, UMateriais, ufrmRelMateriais;

{$R *.DFM}

procedure TfrmPesqMateriais.BitBtn1Click(Sender: TObject);
var PESQUISA: string;
    material : string;
begin

  material := '%' + edtMaterial.Text + '%';


        with qrDBGrid do
        begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT CodigoMaterial, '+
                ' MATERIAIS.MAT_DESC,  MATERIAIS.MAT_ID, '+
        	' GRUPO_MATERIAL.GRU_DESC,'+
        	' MARCAS.MARCA_DESC'+
                ' FROM'+
        	' MATERIAIS LEFT JOIN'+
	        ' GRUPO_MATERIAL ON MATERIAIS.GRU_ID = GRUPO_MATERIAL.GRU_ID LEFT JOIN'+
        	' MATERIAL_MARCA ON MATERIAIS.MAT_ID = MATERIAL_MARCA.MAT_ID LEFT JOIN'+
	        ' MARCAS ON MATERIAL_MARCA.MARCA_ID = MARCAS.MARCA_ID'+
                ' WHERE 1 = 1 ');

                if edtCodigo.Text <> '' then
                        sql.Add(' AND CodigoMaterial = ' + edtCodigo.Text);

                if cboMaterial.Text <> '' then
                        SQL.Add('AND MATERIAIS.MAT_ID = '+ cboMaterial.LookupValue);

                if  edtMaterial.Text <> '' then
                        SQL.Add('AND MATERIAIS.MAT_DESC LIKE  '+ QuotedStr(material));

                        
                if cboGrupo.Text <> '' then
                        SQL.Add('AND MATERIAIS.GRU_ID = '+ cboGrupo.LookupValue);
                if cboMarca.Text <> '' then
                        SQL.Add('AND MATERIAL_MARCA.MARCA_ID = '+ cboMarca.LookupValue);

                SQL.Add('ORDER BY MATERIAIS.MAT_DESC');
                Open;
        end;
end;

procedure TfrmPesqMateriais.FormCreate(Sender: TObject);
begin
  qrMateriais.Open;
  qrGrupo.Open;
  qrMarcas.Open;
end;

procedure TfrmPesqMateriais.BitBtn2Click(Sender: TObject);
begin
        cboMaterial.LookupValue := '';
        cboGrupo.LookupValue := '';
        cboMarca.LookupValue := '';
end;

procedure TfrmPesqMateriais.BitBtn4Click(Sender: TObject);
begin
        if qrDBGridMAT_ID.AsString = '' then
        begin
                MessageBox(Self.Handle, 'Material não selecionado!', 'Erro', MB_OK + MB_ICONERROR)  ;
                Abort;
        end;

        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + qrDBGridMAT_ID.AsString);
        FMateriais.Q_MAT.Open;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TfrmPesqMateriais.BitBtn3Click(Sender: TObject);
begin
        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = 0');
        FMateriais.Q_MAT.Open;
        //FMateriais.Q_MAT.Append;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TfrmPesqMateriais.cboMaterialEnter(Sender: TObject);
begin
  edtMaterial.Clear;
end;

procedure TfrmPesqMateriais.edtMaterialEnter(Sender: TObject);
begin
  cboMaterial.Text := '';
end;

procedure TfrmPesqMateriais.BitBtn5Click(Sender: TObject);
begin
    frmRelMateriais := TfrmRelMateriais.Create(Self);
    frmRelMateriais.QR_MOTI.Preview;
end;

procedure TfrmPesqMateriais.BitBtn6Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

   linha := 1;
    qrCodigosXML.Close;
    qrCodigosXML.Open;

   Excel.Cells[Linha, 1] := 'Material';
   Excel.Cells[Linha, 2] := 'Código Fornecedor';
   Excel.Cells[Linha, 3] := 'Fornecedor';
   Excel.Cells[Linha, 4] := 'EAN';

   while not qrCodigosXML.Eof do begin
       linha := linha + 1;
       Excel.Cells[Linha, 1].NumberFormat := '@';
       Excel.Cells[Linha, 2].NumberFormat := '@';
       Excel.Cells[Linha, 3].NumberFormat := '@';
       Excel.Cells[Linha, 4].NumberFormat := '@';
       Excel.Cells[Linha, 1] :=  qrCodigosXMLMAT_DESC.AsString;
       Excel.Cells[Linha, 2] :=  qrCodigosXMLCodigoFornecedor.AsString;
       Excel.Cells[Linha, 3] :=  qrCodigosXMLFornecedor.AsString;
       Excel.Cells[Linha, 4] :=  qrCodigosXMLEAN.AsString;

       qrCodigosXML.Next;
   end;
  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

end.

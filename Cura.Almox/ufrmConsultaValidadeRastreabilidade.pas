unit ufrmConsultaValidadeRastreabilidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, StdCtrls, Buttons, Mask, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, ComObj,
  ExtCtrls;

type
  TfrmConsultaValidadeRastreabilidade = class(TForm)
    qrBusca: TADOQuery;
    qrMateriais: TADOQuery;
    qrMateriaismat_desc: TStringField;
    qrMateriaisMat_id: TAutoIncField;
    qrGrupo: TADOQuery;
    qrGrupoGRU_DESC: TStringField;
    qrGrupoGRU_ID: TAutoIncField;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cboMaterial: TwwDBLookupCombo;
    cboGrupo: TwwDBLookupCombo;
    cboLocal: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaReq_ID: TIntegerField;
    qrBuscaDT_INICIO: TDateTimeField;
    qrBuscaDT_FIM: TDateTimeField;
    qrBuscaN_Lote: TWideStringField;
    qrBuscaValid: TDateTimeField;
    qrBuscaOBS: TStringField;
    BitBtn3: TBitBtn;
    dsExcel: TDataSource;
    RadioGroup2: TRadioGroup;
    btnGetMaterial: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    PROCEDURE GERAEXCEL;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaValidadeRastreabilidade: TfrmConsultaValidadeRastreabilidade;

implementation

uses UfrmConsultaValidadeRastreabilidadeRep, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmConsultaValidadeRastreabilidade.BitBtn1Click(
  Sender: TObject);
begin
   qrBusca.Close;
   qrBusca.SQL.Clear;
   qrBusca.sql.Add('SELECT ');
    qrBusca.sql.Add('	CodigoMaterial + '' '' + MAT_DESC AS MAT_DESC, ');
    qrBusca.sql.Add('	I.Req_ID, ');
    qrBusca.sql.Add('	L.DT_INICIO, ');
    qrBusca.sql.Add('	L.DT_FIM, ');
    qrBusca.sql.Add('	L.N_Lote, ');
    qrBusca.sql.Add('	L.Valid, ');
    qrBusca.sql.Add('	L.OBS ');
    qrBusca.sql.Add('FROM MATERIAIS M  ');
    qrBusca.sql.Add('INNER JOIN Req_Lote_Consumo L ');
    qrBusca.sql.Add('ON M.MAT_ID = L.Mat_ID ');
    qrBusca.sql.Add('INNER JOIN Req_Item I ');
    qrBusca.sql.Add('ON L.Req_Item_ID = I.Req_Item_ID ');
    qrBusca.sql.Add('WHERE 1 = 1 ');

    if cboMaterial.Text <> '' then
        qrBusca.SQL.Add('AND M.MAT_ID = ' + cboMaterial.LookupValue);

    if cboGrupo.Text <> '' then
        qrBusca.SQL.Add('AND M.GRU_ID = ' + cboGrupo.LookupValue);

    if cboLocal.Text <> '' then
        qrBusca.SQL.Add('AND Local_ID = ' + cboLocal.LookupValue);

    IF MaskEdit1.Text <> '  /  /    ' then
        qrBusca.SQL.Add('AND CONVERT(VARCHAR, L.Valid, 112) <= ' + FormatDateTime('YYYMMDD', StrToDate(MaskEdit1.Text)));

    case RadioGroup2.ItemIndex of
            1 : qrBusca.SQL.Add('AND DT_INICIO IS NULL');
            2 : qrBusca.SQL.Add('AND DT_INICIO IS NOT NULL AND DT_FIM IS NULL');
            3 : qrBusca.SQL.Add('AND DT_FIM IS NOT NULL');
   end;


    qrBusca.Open;

    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;

end;

procedure TfrmConsultaValidadeRastreabilidade.GERAEXCEL;
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;

begin
      //  close;
        linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;
  Excel.cells[Linha, 8] := '';
      Excel.cells[Linha, 9] := '';
      Excel.cells[Linha, 10] := '';

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].Text;
           end;
      end;

      Excel.cells[Linha, 8] := '';
      Excel.cells[Linha, 9] := '';
      Excel.cells[Linha, 10] := '';

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;


end;

procedure TfrmConsultaValidadeRastreabilidade.BitBtn3Click(
  Sender: TObject);
begin
     GERAEXCEL;
end;

procedure TfrmConsultaValidadeRastreabilidade.BitBtn2Click(
  Sender: TObject);
begin
   frmConsultaValidadeRastreabilidadeRep := TfrmConsultaValidadeRastreabilidadeRep.Create(Self);
   frmConsultaValidadeRastreabilidadeRep.QuickRep1.Preview;
end;

procedure TfrmConsultaValidadeRastreabilidade.btnGetMaterialClick(
  Sender: TObject);
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

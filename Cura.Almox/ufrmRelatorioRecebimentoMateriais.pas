unit ufrmRelatorioRecebimentoMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, DBTables, Wwquery, Db, ADODB, Mask, ComObj, ComCtrls,
  ExtCtrls, RzPanel, RzRadGrp, Buttons;

type
  TfrmRelatorioRecebimentoMateriais = class(TForm)
    lbl6: TLabel;
    medt1: TMaskEdit;
    lbl7: TLabel;
    medt2: TMaskEdit;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    qrMaterial: TwwQuery;
    qrMaterialMat_desc: TStringField;
    qrMaterialMat_id: TAutoIncField;
    qrGrupoMat: TwwQuery;
    qrGrupoMatGRU_DESC: TStringField;
    qrGrupoMatGRU_ID: TAutoIncField;
    Label2: TLabel;
    cboGrupoMaterial: TwwDBLookupCombo;
    Label1: TLabel;
    cboMaterial: TwwDBLookupCombo;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    Button1: TButton;
    dsExcel: TDataSource;
    qrBusca: TADOQuery;
    ProgressBar1: TProgressBar;
    rzImobilizado: TRzRadioGroup;
    btnGetMaterial: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioRecebimentoMateriais: TfrmRelatorioRecebimentoMateriais;

implementation

uses UMenu, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmRelatorioRecebimentoMateriais.FormCreate(Sender: TObject);
begin
  qrLocal.Open;
  qrMaterial.Open;
  qrGrupoMat.Open;
end;

procedure TfrmRelatorioRecebimentoMateriais.Button1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin


  with qrBusca do begin
      Close;
      SQL.Clear;
      SQL.Add(
          '  SELECT DISTINCT '+
          '          NFIS, Dt_Emiss, Dt_Entrada, L.Descricao AS LOCAL, Vl_TotNF, FOR_RAZA, M.MAT_DESC AS MATERIAL, '+
          '          MR.MARCA_DESC AS MARCA, I.Qtde, Preco_Unit, Vl_Total, CONVERSAO '+
          '  FROM Rec_NF NF INNER JOIN CPAFORN F ON NF.FOR_CODI = F.FOR_CODI'+
          '  INNER JOIN Rec_Item I ON NF.Rec_ID = I.Rec_ID '+
          '  INNER JOIN LOCAL L ON NF.Local_ID = L.Local_ID '+
          '  INNER JOIN MATERIAIS M ON I.Mat_ID = M.MAT_ID '+
          '  INNER JOIN MARCAS MR ON I.Marca_ID = MR.MARCA_ID '+
          '  WHERE NF.STATUS <> ''A'' AND CONVERT(VARCHAR, NF.Dt_Entrada, 112) >=  '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDateTime(medt1.Text))) +
          '  AND CONVERT(VARCHAR, NF.Dt_Entrada, 112) <=  '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDateTime(medt2.Text)))
      );

      IF cboGrupoMaterial.Text <> '' then
        SQL.Add('AND M.GRU_ID = ' + cboGrupoMaterial.LookupValue);

      IF cboMaterial.Text <> '' then
        SQL.Add('AND M.MAT_ID = ' + cboMaterial.LookupValue);

      IF cboLocal.Text <> '' then
        SQL.Add('AND NF.LOCAL_ID = ' + cboLocal.LookupValue);

      if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');

      SQL.Add('ORDER BY NF.Dt_Entrada');

      Open;


  end;

  qrBusca.Last;
  ProgressBar1.Max := qrBusca.RecordCount;
  ProgressBar1.Position := 0;


  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

   linha := 1;


    dsExcel.DataSet := qrBusca;
    Excel.Cells[Linha, 1] := 'Nota Fiscal';
    Excel.Cells[Linha, 2] := 'Dt. Emissão';
    Excel.Cells[Linha, 3] := 'Dt. Entrada';
    Excel.Cells[Linha, 4] := 'Local';
    Excel.Cells[Linha, 5] := 'Total da Nota';
    Excel.Cells[Linha, 6] := 'Fornecedor';
    Excel.Cells[Linha, 7] := 'Material';
    Excel.Cells[Linha, 8] := 'Marca';
    Excel.Cells[Linha, 9] := 'Qtde.';
    Excel.Cells[Linha, 10] := 'Vl. Unitário';
    Excel.Cells[Linha, 11] := 'Total Item';
    Excel.Cells[Linha, 12] := 'Conversão';






  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      ProgressBar1.Position := ProgressBar1.Position + 1;
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
               Excel.Cells[Linha, i + 1] :=  Trim(dsExcel.DataSet.Fields[i].AsString) ;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;
  ProgressBar1.Position := 0;
  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;
end;

procedure TfrmRelatorioRecebimentoMateriais.btnGetMaterialClick(
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

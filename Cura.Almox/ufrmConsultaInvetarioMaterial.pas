unit ufrmConsultaInvetarioMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ADODB, Db, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  wwdblook, ExtCtrls, ComObj, Qrctrls, QuickRpt;

type
  TfrmConsultaInvetarioMaterial = class(TForm)
    qrGrupoMat: TwwQuery;
    qrGrupoMatGRU_DESC: TStringField;
    qrGrupoMatGRU_ID: TAutoIncField;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    Label2: TLabel;
    cboGrupoMaterial: TwwDBLookupCombo;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    Button1: TButton;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    ADOStoredProc1: TADOStoredProc;
    RadioGroup1: TRadioGroup;
    qrBusca: TADOQuery;
    CheckBox1: TCheckBox;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaINV: TIntegerField;
    qrBuscaDATA: TDateTimeField;
    dsExcel: TDataSource;
    Panel1: TPanel;
    Button3: TButton;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaInvetarioMaterial: TfrmConsultaInvetarioMaterial;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmConsultaInvetarioMaterial.FormCreate(Sender: TObject);
begin
  qrGrupoMat.Open;
  qrLocal.Open;
end;

procedure TfrmConsultaInvetarioMaterial.Button1Click(Sender: TObject);
begin
  qrBusca.Close;
  Panel1.Visible := True;
  Application.ProcessMessages;
  if cboLocal.Text = '' then begin
     ShowMessage('Informe o local');
     Abort;
  end;


  ADOStoredProc1.Parameters[0].Value := StrToInt(cboLocal.LookupValue);
  if cboGrupoMaterial.Text <> '' then
        ADOStoredProc1.Parameters[1].Value := StrToInt(cboGrupoMaterial.LookupValue)
  else
        ADOStoredProc1.Parameters[1].Value := 0;
  ADOStoredProc1.ExecProc;

  with qrBusca do begin
      close;
      sql.Clear;
      SQL.Add(
       ' SELECT  '+
       '         M.CodigoMaterial + '' '' + M.MAT_DESC AS MAT_DESC,   '+
       '         A.INV, '+
       '         A.DATA    '+
       ' FROM INVENTARIO_CONFERENCIA A INNER JOIN MATERIAIS M   '+
       ' ON A.MAT_ID = M.MAT_ID '  +
       ' where 1 = 1'
      );

      if CheckBox1.Checked then
         sql.Add(' and inv is null');
      sql.add(' and M.MAT_ID IN (');
      sql.add('   SELECT distinct  ');
      sql.add('           MAT.MAT_ID  ');
      sql.add('   FROM ALMOX ALM, MATERIAIS	MAT INNER JOIN GRUPO_MATERIAL G  ');
      sql.add('   ON MAT.GRU_ID = G.GRU_ID, LOCAL LOC   ');
      sql.add('   WHERE ALM.MAT_ID = MAT.MAT_ID  ');
      sql.add('   AND		ALM.LOCAL_ID	= LOC.LOCAL_ID ');
      sql.add('   AND	ALM.TIPO = ''E''  ');
      sql.add('   AND		ALM.QTDE_RETIRADA IS NULL ');
      sql.add('   and loc.local_id =    '   + cboLocal.LookupValue);


      case RadioGroup1.ItemIndex of
          0 : sqL.add(' ) order by M.MAT_DESC');
          1 : SQL.Add('ORDER BY INV');
          2 : SQL.Add('ORDER BY DATA');
      end;

      

      Open;
  end;
  Panel1.Visible := False;
  Button2.Enabled := True;

end;

procedure TfrmConsultaInvetarioMaterial.Button2Click(Sender: TObject);
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
           //  if dsExcel.DataSet.Fields[i].AsString <> '' then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
             if dsExcel.DataSet.Fields[i].AsString <> '' then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
             end;
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

procedure TfrmConsultaInvetarioMaterial.Button3Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.

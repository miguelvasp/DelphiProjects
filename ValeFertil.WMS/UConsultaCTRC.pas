unit UConsultaCTRC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, Db, Wwdatsrc, DBTables, Wwquery, ComObj;

type
  TFConsultaCTRC = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GRID1: TwwDBGrid;
    Q_CTRC: TwwQuery;
    DS_CTRC: TwwDataSource;
    Q_CTRCORD_DATA: TDateTimeField;
    Q_CTRCORD_CONH: TStringField;
    Q_CTRCORD_STATUS: TStringField;
    Q_CTRCCLIN_RAZA: TStringField;
    Q_CTRCCLIF_RAZA: TStringField;
    DBCB_CLI_PESS: TwwDBComboBox;
    Q_CTRCORD_NOTAS: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Q_CTRCORD_VLR_FRETE: TFloatField;
    Q_CTRCORD_VLR_OUTROS: TFloatField;
    Q_CTRCORD_VLR_ICMS: TFloatField;
    Q_CTRCORD_TOTALPREST: TFloatField;
    Q_CTRCCLIN_ID: TIntegerField;
    Q_CTRCOS_ID: TIntegerField;
    SpeedButton2: TSpeedButton;
    Q_CTRCFAT_NUM: TIntegerField;
    Q_CTRCORD_VLR_PEDAGIO: TFloatField;
    Q_CTRCORD_VLR_SECCAT: TFloatField;
    Q_CTRCORD_VLR_DESPACHO: TFloatField;
    Q_CTRCE_COMPLEMENTAR: TStringField;
    Q_CTRCORD_COMPLEMENTAR: TStringField;
    Q_CTRCTEM_COMPLEMENTAR: TStringField;
    Panel1: TPanel;
    Panel4: TPanel;
    Q_CTRCNFSE: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GRID1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    function EscreveNumero(valor : string) : Double;
    procedure GRID1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaCTRC: TFConsultaCTRC;
  PESQOCE : string ;
implementation
USES UFCONSULTACTRC , UConsOCE, URelManifestoConsulta;
{$R *.DFM}

procedure TFConsultaCTRC.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFConsultaCTRC.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

  IF REMETENTE <> '' then
     Label10.caption :=  FFConsultaCTRC.combo_cliente.text  ;
  IF FFConsultaCTRC.combo_cliente.text = '' then
     Label10.caption := 'Não Preenchido'    ;

  IF DESTINATARIO <> '' then
     Label7.caption :=  FFConsultaCTRC.combo_cliente_final.text  ;
  IF FFConsultaCTRC.combo_cliente_final.text = '' then
     Label7.caption := 'Não Preenchido'    ;

  IF CTRC <> '' then
     Label6.caption :=  FFConsultaCTRC.wwDBEdit1.text
  else
     Label6.caption :='Não Preenchido' ;

  IF NUMNF <> '' then
     Label2.caption :=  FFConsultaCTRC.wwDBEdit2.text
  else
     Label2.caption :='Não Preenchido' ;

  IF EMII <> 0.00 then
     Label12.caption :=  FFConsultaCTRC.DATA1.text
  else
     Label12.caption := 'Não Preenchido'       ;

  IF EMIF <> 0.00 then
     Label14.caption :=  FFConsultaCTRC.DATA2.text
  else
     Label14.caption := 'Não Preenchido' ;


    GRID1.Visible := true ;

    Q_CTRC.SQL.Clear;
    Q_CTRC.SQL.Add(
       ' SELECT distinct A.ORD_ID,  A.OS_ID, A.ORD_DATA,A.ORD_CONH,A.ORD_STATUS,A.ORD_NOTAS, '+
       ' B.CLIN_RAZA,C.CLIF_RAZA , A.ORD_VLR_FRETE, A.ORD_VLR_OUTROS, A.ORD_VLR_ICMS, '+
       ' A.ORD_TOTALPREST, A.CLIN_ID, E.FAT_NUM '+
       ' ,A.ORD_VLR_PEDAGIO, A.ORD_VLR_SECCAT, A.ORD_VLR_DESPACHO '+
       ' ,E_COMPLEMENTAR,(SELECT ORD_CONH FROM ORDEM_COLETA_ENTREGA WHERE ORD_ID = A.ORD_ID_COMPLEMENTAR) ORD_COMPLEMENTAR, TEM_COMPLEMENTAR, dbo.NFSEORD(ORD_ID, GEROU_NFSE) AS NFSE '+
       ' FROM ORDEM_COLETA_ENTREGA A LEFT OUTER JOIN FATURA E ON A.FAT_ID = E.FAT_ID  '+
       ' LEFT OUTER JOIN CLIENTENBF B ON A.CLIN_ID = B.CLIN_ID  '+
       ' LEFT OUTER JOIN CLIENTEFINAL C ON  A.CLIF_ID = C.CLIF_ID '+
       ' LEFT OUTER JOIN OS D  ON  A.OS_ID = D.OS_ID  WHERE 1 = 1 '
       );
    IF REMETENTE <> '' then
       Q_CTRC.SQL.ADD(' AND A.CLIN_ID = ' + '''' + REMETENTE    + '''');

    IF DESTINATARIO <> '' then
       Q_CTRC.SQL.ADD(' AND A.CLIF_ID = ' + '''' + DESTINATARIO + '''');

    IF CTRC <> '' then
       Q_CTRC.SQL.ADD(' AND A.ORD_CONH = ' + '''' + CTRC + '''');

    IF NUMNF <> '' then
       Q_CTRC.SQL.ADD(' AND A.ORD_NOTAS LIKE ' +  '''' + '%' + NUMNF + '%' + '''');

    if EMII <> 0.0 then
            Q_CTRC.SQL.ADD(' AND CONVERT(CHAR(10), A.ORD_DATA, 112) >= ' +''''+ formatdatetime('YYYYMMDD',EMII) + '''');
    if EMIF <> 0.0 then
            Q_CTRC.SQL.ADD(' AND CONVERT(CHAR(10), A.ORD_DATA, 112) <= ' +''''+ formatdatetime('YYYYMMDD',EMIF) + '''') ;
    if FFConsultaCTRC.rg1.ItemIndex = 1 then
                Q_CTRC.SQL.Add(' AND ORD_STATUS = ''E'' ');

    if FFConsultaCTRC.rg1.ItemIndex = 2 then
                Q_CTRC.SQL.Add(' AND ORD_STATUS = ''C'' ');

    if FFConsultaCTRC.rg1.ItemIndex = 3 then
                Q_CTRC.SQL.Add(' AND ISNULL(GEROU_NFSE, '''') = ''S'' ');

    if   FFConsultaCTRC.edtFatura.Text <> '' then
         Q_CTRC.SQL.ADD(' AND A.FAT_ID IN (SELECT FAT_ID FROM FATURA WHERE FAT_NUM = ' + FFConsultaCTRC.edtFatura.Text  + ')');

    Q_CTRC.SQL.ADD(' order by  A.ORD_CONH');
    Q_CTRC.open ;
end;

procedure TFConsultaCTRC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Q_CTRC.close  ;
      action:= cafree ;
end;

procedure TFConsultaCTRC.GRID1DblClick(Sender: TObject);
begin

     PESQOCE:= '*' ;
     application.createform(TFConsOCE , FConsOCE);
     FConsOCE.SHOWMODAL ;
     FConsOCE.RELEASE   ;
     FConsOCE.CLOSE     ;

end;

procedure TFConsultaCTRC.SpeedButton1Click(Sender: TObject);
begin
    frmRelManifestoConsulta := TfrmRelManifestoConsulta.Create(Self);

    with frmRelManifestoConsulta do
    begin
        QRLabel28.Caption := Label10.Caption;
        QRLabel26.Caption := Label7.Caption;
        QRLabel27.Caption := Label2.Caption;
        QRLabel25.Caption := Label6.Caption;
        QRLabel32.Caption := Label12.Caption;
        QRLabel33.Caption := Label14.Caption;
    end;


    frmRelManifestoConsulta.report.preview;
    frmRelManifestoConsulta.Close;
end;

procedure TFConsultaCTRC.SpeedButton2Click(Sender: TObject);
Const
  // SheetType
  XlChart = -4109;
  XlWorksheet = -4167;
  // WBATemplate
  XlWBATWorksheet = -4167;
  XlWBATChart = -4109;
  // Page Setup
  XlPortrait = 1;
  XlLandscape = 2;
  XlPaperA4 = 9;
  // Format Cells
  XlBottom = -4107;
  XlLeft = -4131;
  XlRight = -4152;
  XlTop = -4160;
  // Text Alignment
  XlHAlignCenter = -4108;
  XlVAlignCenter = -4108;
  // Cell Borders
  XlThick = 4;
  XlThin = 2;
Var
  objExcel,Sheet: OleVariant;
  linha : Integer;
  vlr : Double;
begin
     objExcel := CreateOleObject('Excel.Application');
   //
    objExcel.Workbooks.Add;
    objExcel.Workbooks[1].Sheets.Add;
    objExcel.Workbooks[1].WorkSheets[1].Name := 'Conhecimento de transporte';
    Sheet := objExcel.Workbooks[1].WorkSheets['Conhecimento de transporte'];

    linha := 1;

    Sheet.cells[linha,1] := 'N°';
    Sheet.cells[linha,2] := 'Emissão';
    Sheet.cells[linha,3] := 'Fatura';
    Sheet.cells[linha,4] := 'Remetente';
    Sheet.cells[linha,5] := 'Destinatário';
    Sheet.cells[linha,6] := 'NF';
    Sheet.cells[linha,7] := 'Frete';
    Sheet.cells[linha,8] := 'Sec/Cat';
    Sheet.cells[linha,9] := 'Despacho';
    Sheet.cells[linha,10] := 'Pedágio';
    Sheet.cells[linha,11] := 'Icms';
    Sheet.cells[linha,12] := 'Outros';
    Sheet.cells[linha,13] := 'Total';
    Sheet.cells[linha,14] := 'NFSE';



    Sheet.Range['A1'].ColumnWidth := 10;
    Sheet.Range['B1'].ColumnWidth := 12;
    Sheet.Range['C1'].ColumnWidth := 10;
    Sheet.Range['D1'].ColumnWidth := 42;
    Sheet.Range['E1'].ColumnWidth := 42;
    Sheet.Range['F1'].ColumnWidth := 13;
    Sheet.Range['G1'].ColumnWidth := 13;
    Sheet.Range['H1'].ColumnWidth := 13;
    Sheet.Range['I1'].ColumnWidth := 13;
    Sheet.Range['J1'].ColumnWidth := 13;
    Sheet.Range['K1'].ColumnWidth := 13;
    Sheet.Range['L1'].ColumnWidth := 13;
    Sheet.Range['M1'].ColumnWidth := 13;


    Q_CTRC.First;
    while not Q_CTRC.Eof do begin
        Inc(linha);
        vlr := 0;
        Sheet.cells[linha,1] :=  Q_CTRCORD_CONH.Value;
        //Sheet.cells[linha,2] := FormatDateTime('dd-mm-yyyy', Q_CTRCORD_DATA.Value);
        Sheet.cells[linha, 2] := FormatDateTime(' dd/mm/yyyy', Q_CTRCORD_DATA.Value);
        Sheet.Cells[Linha, 2].NumberFormat := 'm/d/yyyy';
        Sheet.cells[linha,3] := Q_CTRCFAT_NUM.Value;
        Sheet.cells[linha,4] := Q_CTRCCLIN_RAZA.Value ;
        Sheet.cells[linha,5] := Q_CTRCCLIF_RAZA.Value;
        Sheet.cells[linha,6] := Q_CTRCORD_NOTAS.Value;
        Sheet.cells[linha,6].NumberFormat := '@';
        Sheet.cells[linha,7] := Q_CTRCORD_VLR_FRETE.Value;
        Sheet.cells[linha,7].Style := 'Currency';


        Sheet.cells[linha,8] := EscreveNumero(Q_CTRCORD_VLR_SECCAT.AsString);
        Sheet.cells[linha,8].Style := 'Currency';
        Sheet.cells[linha,9] := EscreveNumero(Q_CTRCORD_VLR_DESPACHO.AsString);
        Sheet.cells[linha,9].Style := 'Currency';


        Sheet.cells[linha,10] := EscreveNumero(Q_CTRCORD_VLR_PEDAGIO.AsString);
        Sheet.cells[linha,10].Style := 'Currency';

        Sheet.cells[linha,11] := EscreveNumero(Q_CTRCORD_VLR_ICMS.AsString);
        Sheet.cells[linha,11].Style := 'Currency';

        vlr := Q_CTRCORD_VLR_OUTROS.Value - Q_CTRCORD_VLR_ICMS.Value -
                                 Q_CTRCORD_VLR_PEDAGIO.Value - Q_CTRCORD_VLR_DESPACHO.Value -
                                 Q_CTRCORD_VLR_SECCAT.Value;

        Sheet.cells[linha,12] := EscreveNumero(FloatToStr(vlr));
        Sheet.cells[linha,12].Style := 'Currency';

        Sheet.cells[linha,13] := Q_CTRCORD_TOTALPREST.Value;
        Sheet.cells[linha,13].Style := 'Currency';
        Sheet.cells[linha,14] := Q_CTRCNFSE.AsString;
        Application.ProcessMessages;
        Q_CTRC.Next;
    end;
    Sheet.Range['F1'].EntireColumn.AutoFit;
    objExcel.Visible := True;


end;

function TFConsultaCTRC.EscreveNumero(valor: string): Double;
var vlr : Double;
begin
  vlr := 0;
  if valor <> '' then begin
      vlr := StrToFloat( valor);
  end;

  if vlr < 0 then vlr := 0;

  Result := vlr;

end;

procedure TFConsultaCTRC.GRID1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Q_CTRCE_COMPLEMENTAR.Value = 'S' then begin
      ABrush.Color := $000080FF;
   end;

   if Q_CTRCTEM_COMPLEMENTAR.Value = 'S' then begin
       ABrush.Color := $0080FFFF;
   end;

   if Highlight then AFont.Color := clBlack else AFont.Color := clBlack;

end;

end.

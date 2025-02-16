unit UFConsultaOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbedit, wwdblook, StdCtrls, Mask, Buttons, ExtCtrls, Grids, Wwdbigrd,
  Wwdbgrid, Db, Wwdatsrc, DBTables, Wwquery, Wwdotdot, Wwdbcomb, ComObj;

type
  TFFConsultaOS = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    combo_cliente: TwwDBLookupCombo;
    dbos: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    Q_OS: TwwQuery;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    DS_OS: TwwDataSource;
    Q_CTT: TwwQuery;
    Q_CTTCTT_ID: TAutoIncField;
    Q_CTTCTT_NOME: TStringField;
    Q_CTTTOS_ID: TIntegerField;
    Q_CTTCLIN_ID: TIntegerField;
    Q_CTTPAR_ID: TIntegerField;
    Q_CTTCTT_TERCEIRO: TStringField;
    combo_contrato: TwwDBLookupCombo;
    DS_CTT: TwwDataSource;
    combo_concluido: TwwDBComboBox;
    Q_OSOS_ID: TAutoIncField;
    Q_OSCLIN_ID: TIntegerField;
    Q_OSCTT_ID: TIntegerField;
    Q_OSTOS_ID: TIntegerField;
    Q_OSOS_DATA: TDateTimeField;
    Q_OSOS_USUARIO: TIntegerField;
    Q_OSOS_GEROU: TStringField;
    Q_OSOS_CONCLUIDA: TStringField;
    Q_OSOS_FATURADA: TStringField;
    Q_OSOS_MARCADOR: TStringField;
    Q_OSCLIN_RAZA: TStringField;
    Q_OSCTT_NOME: TStringField;
    SBT_VISU: TSpeedButton;
    Label3: TLabel;
    Data1: TMaskEdit;
    Label6: TLabel;
    Data2: TMaskEdit;
    Panel4: TPanel;
    Label48: TLabel;
    rgConfirma: TRadioGroup;
    Q_OSNotas: TIntegerField;
    qrNotas: TwwQuery;
    qrNotasnotas: TIntegerField;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsExcel: TDataSource;
    procedure combo_clienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure combo_clienteChange(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_contratoEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure combo_contratoExit(Sender: TObject);
    procedure dbosEnter(Sender: TObject);
    procedure dbosExit(Sender: TObject);
    procedure combo_concluidoEnter(Sender: TObject);
    procedure combo_concluidoExit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Q_OSCalcFields(DataSet: TDataSet);
    procedure rgConfirmaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaOS: TFFConsultaOS;
os : string;
clinbf : string;
cont : string;
concl : string;
PALA : STRING;
PESQUISAOS1 : STRING;
OS_ID : STRING;
EMI : tdatetime ;
EMF : tdatetime ;

implementation
USES UOS, ufrmConsultaOSRel ;
{$R *.DFM}

procedure TFFConsultaOS.combo_clienteCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin

        Q_CTT.Sql.Clear ;
        Q_CTT.Sql.Add('SELECT CTT_ID,PAR_ID,CTT_NOME,TOS_ID,CLIN_ID,CTT_TERCEIRO from CONTRATO') ;
        Q_CTT.Sql.Add(' where CLIN_ID =' + Q_CLINBFCLIN_ID.ASSTRING ) ;
        Q_CTT.Sql.Add(' and TOS_ID <> ' + inttostr(1));
        Q_CTT.Open ;

end;

procedure TFFConsultaOS.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
Q_CLINBF.OPEN;
///Q_OS.OPEN;
Q_CTT.OPEN;
end;

procedure TFFConsultaOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Q_CLINBF.Close;
Q_OS.CLOSE;
Q_CTT.CLOSE;
ACTION := CAFREE;
end;

procedure TFFConsultaOS.SpeedButton3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFFConsultaOS.combo_clienteChange(Sender: TObject);
begin
  IF Combo_CLIENTE.text = '' then
  BEGIN
     COMBO_CONTRATO.ENABLED := FALSE;
     combo_contrato.Text  := '';
  END ELSE
     BEGIN
     COMBO_CONTRATO.ENABLED := TRUE;
     END;


end;

procedure TFFConsultaOS.combo_clienteEnter(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaOS.combo_contratoEnter(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaOS.combo_clienteExit(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaOS.combo_contratoExit(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaOS.dbosEnter(Sender: TObject);
begin
(Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaOS.dbosExit(Sender: TObject);
begin


(Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFFConsultaOS.combo_concluidoEnter(Sender: TObject);
begin
(Sender as TwwDBComboBox).Color := ClAqua;
end;

procedure TFFConsultaOS.combo_concluidoExit(Sender: TObject);
begin
(Sender as TwwDBComboBox).Color := ClWindow;
end;

procedure TFFConsultaOS.wwDBGrid1DblClick(Sender: TObject);
begin

     PESQUISAOS1 := '*' ;
     //OS_ID := Q_OS.FIELDBYNAME('OS_ID').ASSTRING;
     application.createform(TFOS , FOS);
     FOS.SHOWMODAL ;
     FOS.RELEASE ;
     FOS.CLOSE ;


end;

procedure TFFConsultaOS.SBT_VISUClick(Sender: TObject);
begin
IF COMBO_CLIENTE.TEXT <> '' THEN
CLINBF := COMBO_CLIENTE.LookupValue;

IF COMBO_CONTRATO.Text <> '' THEN
CONT := COMBO_CONTRATO.LookupValue;

if dbos.Text  <> '' then
os := dbos.Text;

IF COMBO_CONCLUIDO.Text <> '' THEN
  BEGIN
  CONCL := COMBO_CONCLUIDO.TEXT  ;
   IF CONCL = 'SIM' THEN
    PALA := 'S'
    ELSE
    PALA := 'N' ;

    IF CONCL = 'TODAS' THEN
        PALA := '' ;

END ;

  EMI :=  0.0 ;
  EMF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     EMI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     EMF  := strtodate(Data2.text );


Q_OS.SQL.CLEAR;
{Q_OS.SQL.ADD(' SELECT A.*, B.CLIN_RAZA, C.CTT_NOME ');
Q_OS.SQL.ADD(' FROM OS A, CLIENTENBF B,	CONTRATO C ');
Q_OS.SQL.ADD(' WHERE A.CLIN_ID = B.CLIN_ID ');
Q_OS.SQL.ADD(' AND A.CTT_ID = C.CTT_ID '); Comentada para adicionar referencia a Romaneios - Miguel}

Q_OS.SQL.ADD(' SELECT A.*, B.CLIN_RAZA, C.CTT_NOME ');
Q_OS.SQL.ADD('  FROM OS A left outer join Romaneio R on A.os_id = R.os_id, CLIENTENBF B, CONTRATO C ');
Q_OS.SQL.ADD(' WHERE A.CLIN_ID = B.CLIN_ID ');
Q_OS.SQL.ADD(' AND A.CTT_ID = C.CTT_ID ');
////Q_OS.SQL.ADD(' AND OS_ID in (select OS_ID from NF)') ;
Q_OS.SQL.ADD(' AND A.FAT_ID is null');

{Add filtro de confirmação do Romaneio}
    if rgConfirma.ItemIndex = 1 then
        Q_OS.sql.Add(' and R.ROM_CONFIRMA = ''S'' and A.Tos_id = 2') ;

    IF rgConfirma.ItemIndex = 2 then
        Q_OS.SQL.Add(' AND (R.ROM_CONFIRMA = ''N'' OR R.ROM_CONFIRMA IS NULL) and A.TOS_ID = 2');


IF OS <> '' THEN
Q_OS.SQL.ADD(' AND A.OS_ID = ' + '''' + OS + '''');

IF CLINBF <> '' THEN
Q_OS.SQL.ADD(' AND A.CLIN_ID = ' + '''' + CLINBF + '''');

IF CONT <> '' THEN
Q_OS.SQL.ADD(' AND A.CTT_ID = ' + '''' + CONT + '''');

IF COMBO_CONCLUIDO.Value = 'S' THEN
Q_OS.SQL.ADD(' AND A.OS_CONCLUIDA = ' + QuotedStr('S'));

IF COMBO_CONCLUIDO.Value = 'N' THEN
Q_OS.SQL.ADD(' AND A.OS_CONCLUIDA = ' + QuotedStr('N'));

if EMI <> 0.0 then
   Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',EMI) + '''') ;
if EMF <> 0.0 then
   Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',EMF) + '''') ;

if CheckBox1.Checked then
   Q_OS.SQL.ADD ( 'and (Select count(*)  from nf where os_id = A.OS_ID) > 0  ');


Q_OS.SQL.ADD(' order by A.OS_ID DESC');

   Q_OS.Open;


OS := '';
CLINBF := '';
CONT  := '';
CONCL := '';
PALA := '';

end;

procedure TFFConsultaOS.Data1Enter(Sender: TObject);
begin

    (Sender as TMasKEdit).Color := ClAqua;
end;

procedure TFFConsultaOS.Data2Enter(Sender: TObject);
begin

    (Sender as TMasKEdit).Color := ClAqua;
end;

procedure TFFConsultaOS.Data2Exit(Sender: TObject);
begin

    (Sender as TMasKEdit).Color := Clwindow;
end;

procedure TFFConsultaOS.Data1Exit(Sender: TObject);
begin
  
    (Sender as TMasKEdit).Color := Clwindow ;
end;

procedure TFFConsultaOS.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if  Q_OSOS_CONCLUIDA.asstring = 'S' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clWHITE;
              AFont.Color := clblack;
            End else begin
              ABrush.color := clWHITE;
              Afont.color := clblack;
            end ;
     End else begin
            AFont.color := $000080FF;
           if not highlight then   begin
              ABrush.color := $000080FF;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $000080FF;
              Afont.color := clblack;
            end ;

     end;

end;

procedure TFFConsultaOS.Q_OSCalcFields(DataSet: TDataSet);
begin
  qrNotas.close;
  qrNotas.Params[0].AsInteger := Q_OSOS_ID.Value;
  qrNotas.Open;

  Q_OSNotas.Value := qrNotasnotas.Value;
end;

procedure TFFConsultaOS.rgConfirmaClick(Sender: TObject);
begin
  if rgConfirma.ItemIndex = 2 then begin
        CheckBox1.Visible := True;
        CheckBox1.Checked := False;
  end
  else
  begin
        CheckBox1.Visible :=False ;
        CheckBox1.Checked := False;
  end;
end;

procedure TFFConsultaOS.BitBtn1Click(Sender: TObject);
begin
   frmConsultaOSRel := TfrmConsultaOSRel.Create(Self);
   frmConsultaOSRel.QuickRep1.Preview;
end;

procedure TFFConsultaOS.BitBtn2Click(Sender: TObject);

var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin
IF COMBO_CLIENTE.TEXT <> '' THEN
CLINBF := COMBO_CLIENTE.LookupValue;

IF COMBO_CONTRATO.Text <> '' THEN
CONT := COMBO_CONTRATO.LookupValue;

if dbos.Text  <> '' then
os := dbos.Text;

IF COMBO_CONCLUIDO.Text <> '' THEN
  BEGIN
  CONCL := COMBO_CONCLUIDO.TEXT  ;
   IF CONCL = 'SIM' THEN
    PALA := 'S'
    ELSE
    PALA := 'N' ;
   IF CONCL = 'TODAS' THEN
        PALA := '' ;
END ;

  EMI :=  0.0 ;
  EMF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     EMI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     EMF  := strtodate(Data2.text );


Q_OS.SQL.CLEAR;
{Q_OS.SQL.ADD(' SELECT A.*, B.CLIN_RAZA, C.CTT_NOME ');
Q_OS.SQL.ADD(' FROM OS A, CLIENTENBF B,	CONTRATO C ');
Q_OS.SQL.ADD(' WHERE A.CLIN_ID = B.CLIN_ID ');
Q_OS.SQL.ADD(' AND A.CTT_ID = C.CTT_ID '); Comentada para adicionar referencia a Romaneios - Miguel}

Q_OS.SQL.ADD(' SELECT A.*, B.CLIN_RAZA, C.CTT_NOME ');
Q_OS.SQL.ADD('  FROM OS A left outer join Romaneio R on A.os_id = R.os_id, CLIENTENBF B, CONTRATO C ');
Q_OS.SQL.ADD(' WHERE A.CLIN_ID = B.CLIN_ID ');
Q_OS.SQL.ADD(' AND A.CTT_ID = C.CTT_ID ');
////Q_OS.SQL.ADD(' AND OS_ID in (select OS_ID from NF)') ;
Q_OS.SQL.ADD(' AND A.FAT_ID is null');

{Add filtro de confirmação do Romaneio}
    if rgConfirma.ItemIndex = 1 then
        Q_OS.sql.Add(' and R.ROM_CONFIRMA = ''S'' and A.Tos_id = 2') ;

    IF rgConfirma.ItemIndex = 2 then
        Q_OS.SQL.Add(' AND (R.ROM_CONFIRMA = ''N'' OR R.ROM_CONFIRMA IS NULL) and A.TOS_ID = 2');


IF OS <> '' THEN
Q_OS.SQL.ADD(' AND A.OS_ID = ' + '''' + OS + '''');

IF CLINBF <> '' THEN
Q_OS.SQL.ADD(' AND A.CLIN_ID = ' + '''' + CLINBF + '''');

IF CONT <> '' THEN
Q_OS.SQL.ADD(' AND A.CTT_ID = ' + '''' + CONT + '''');

IF PALA <> '' THEN
Q_OS.SQL.ADD(' AND A.OS_CONCLUIDA = ' + '''' + PALA + '''');

if EMI <> 0.0 then
   Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',EMI) + '''') ;
if EMF <> 0.0 then
   Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',EMF) + '''') ;

if CheckBox1.Checked then
   Q_OS.SQL.ADD ( 'and (Select count(*)  from nf where os_id = A.OS_ID) > 0  ');


Q_OS.SQL.ADD(' order by A.OS_ID DESC');

   Q_OS.Open;
  


  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

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
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsString;
           end;
      end;

      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;



end;

end.

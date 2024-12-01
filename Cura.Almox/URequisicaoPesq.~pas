unit URequisicaoPesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Wwdotdot, Wwdbcomb, wwdblook, StdCtrls,
  Buttons, Mask, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ADODB, ComObj;

type
  TFRequisicaoPesq = class(TForm)
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    Panel3: TPanel;
    btIncluir: TSpeedButton;
    btOc: TSpeedButton;
    BtSol: TSpeedButton;
    Q_MAT: TwwQuery;
    Q_REQX: TwwQuery;
    DS_REQ: TwwDataSource;
    btPesq: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_REQXReq_ID: TAutoIncField;
    Q_REQXData: TDateTimeField;
    Q_REQXUsuario: TStringField;
    Q_REQXQtde: TFloatField;
    Q_REQXMAT_DESC: TStringField;
    Panel6: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Q_CC: TwwQuery;
    Q_CCCC_ID: TAutoIncField;
    Q_CCCC_Desc: TStringField;
    Q_REQXCC_DESC: TStringField;
    cboStatus: TwwDBComboBox;
    Label2: TLabel;
    qrLocal: TADOQuery;
    cboLocal: TwwDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    cboCusto: TwwDBLookupCombo;
    qrCusto: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    chkLibera: TCheckBox;
    Label1: TLabel;
    cboTipo: TwwDBComboBox;
    Q_REQXTIPO_REQUISICAO: TStringField;
    SpeedButton1: TSpeedButton;
    dsExcel: TDataSource;
    Q_REQXCC_ID: TIntegerField;
    Q_REQXMat_ID: TIntegerField;
    Q_REQXStatus: TStringField;
    Label9: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label10: TLabel;
    edtSol: TwwDBEdit;
    SpeedButton2: TSpeedButton;
    btnGetMaterial: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSolClick(Sender: TObject);
    procedure btOcClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btPesqClick(Sender: TObject);
    procedure wwDBLookupCombo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBComboBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBComboBox3CloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure btIncluirClick(Sender: TObject);
    procedure DBG_RAATDblClick(Sender: TObject);
    procedure wwDBEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);


    procedure MaskEdit3Enter(Sender: TObject);
    procedure MaskEdit4Enter(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure wwDBComboBox3Enter(Sender: TObject);
    procedure wwDBComboBox3Exit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cboStatusEnter(Sender: TObject);
    procedure cboStatusExit(Sender: TObject);
    procedure cboStatusChange(Sender: TObject);
    procedure Q_REQXTIPO_REQUISICAOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
  

var
  FRequisicaoPesq: TFRequisicaoPesq;

  DATaI  : string;
  DATaF  : string;
  DATAE :STRING;
  DATAEF: STRING ;
  CLIC : BOOLEAN;
  SQL_MERC : STRING;

  REQ_ID : STRING;



implementation

uses UReceb, UMateriais, URequisicao, UAjusAlm, UMenu, ufrmRelRequisicao,
  ufrmRequisicaoConferencia, UfrmBuscaMaterial;

{$R *.DFM}

procedure TFRequisicaoPesq.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

         qrCusto.Open;

        Q_MAT.open;

      //  Q_REQx.open;

      MaskEdit3.Text := FormatDateTime('dd/mm/yyyy', Date);
      MaskEdit4.Text := FormatDateTime('dd/mm/yyyy', Date);


end;

procedure TFRequisicaoPesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         Q_MAT.close;

         Q_REQx.close;
         Action := caFree;
end;

procedure TFRequisicaoPesq.BtSolClick(Sender: TObject);
begin
  IF Q_REQX.FieldByName('MAT_ID').AsString = '' then
        Abort;

        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + Q_REQX.FieldByName('MAT_ID').AsString);
        FMateriais.Q_MAT.SQL.ADD('GENERICO NOT IN (''S'') ');
        FMateriais.Q_MAT.SQL.ADD('AND MAT_ATIVO = ''S''    ');
        FMateriais.Q_MAT.Open;
        //FMateriais.Q_MAT.Append;
        FMateriais.ShowModal;
        FMateriais.Release;
end;

procedure TFRequisicaoPesq.btOcClick(Sender: TObject);
begin
        Application.CreateForm(TFAjustAlm, FAjustAlm);
        FAjustAlm.ShowModal;
        FAjustAlm.Release;
end;

procedure TFRequisicaoPesq.SpeedButton1Click(Sender: TObject);
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

procedure TFRequisicaoPesq.btPesqClick(Sender: TObject);
Var Sql: string;
begin
        SQL_MERC:='';

        SQL :=
        ' SELECT REQ.*, ' +
        '	 ITEM.*, ' +
        '	 MAT.* ' +
        ' FROM 	 REQ_CAPA REQ LEFT OUTER JOIN ' +
        '		REQ_ITEM ITEM ' +
        '			ON REQ.REQ_ID = ITEM.REQ_ID LEFT OUTER JOIN ' +
        '				MATERIAIS MAT ' +
        '					ON ITEM.MAT_ID = MAT.MAT_ID ' +
        ' WHERE 1 = 1 ';


     If wwDBEdit1.text <> '' then
        sql:= sql + ' AND   REQ.REQ_ID = ' + wwDBEdit1.Text;

     IF cboLocal.Text <> '' then
        SQL := Sql + ' AND LOCAL_ID = ' + cboLocal.LookupValue;

     if cboCusto.Text <> '' then
        Sql := Sql + ' and REQ.CC_ID = ' + cboCusto.LookupValue;

     if cboTipo.Text <> '' then
        Sql := Sql + 'and TIPO_REQUISICAO = ' + QuotedStr(Copy(cboTipo.Text, 1, 1));


      IF wwDBLookupCombo2.Text <> '' THEN
         SQL:= SQL + ' AND   ITEM.MAT_ID  = ' + wwDBLookupCombo2.LookupValue;


      If (MaskEdit3.TEXT <> '  /  /    ') and (MaskEdit4.TEXT <> '  /  /    ')then begin

          DATAI:= formatdatetime('YYYYMMDD',strtodate(MaskEdit3.text )) ;
          DATAF:= formatdatetime('YYYYMMDD',strtodate(MaskEdit4.text )) ;

          SQL:= SQL + ' AND    CONVERT(VARCHAR, REQ.DATA, 112) >= ' +   QuotedStr(DATAI);
          SQL:= SQL + ' AND    CONVERT(VARCHAR, REQ.DATA, 112) <= ' +   QuotedStr(DATAF);

          //  between 	  Convert(SMALLDATETIME,' + '''' +  DataI + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + DataF + '''' + ')';

      End;

      If (cboStatus.Value <> '') and (cboStatus.Text <> '') then
                SQL := SQL + ' AND  ITEM.STATUS = ''' + cboStatus.value + '''';


      if FMenu.sqlUsuariosLOCAL_ID.AsString <> '1' then
                Sql := SQL + ' AND LOCAL_ID = ' + FMenu.sqlUsuariosLOCAL_ID.AsString;

      if RadioGroup1.ItemIndex = 1 then
        Sql := SQL + ' and item.tipoconsumo = ''C'' ';

      if RadioGroup1.ItemIndex = 2 then
        Sql := SQL + ' and item.tipoconsumo = ''T'' ';


      if edtSol.Text <> '' then
        sql := Sql + ' AND REQ.REQ_ID IN (SELECT DISTINCT REQ_ID FROM ITEM_SOLMATERIAL WHERE SOL_ID = ' + edtSol.Text + ')' ;


      case RadioGroup2.ItemIndex of
          0 : SQL:= SQL + ' ORDER BY REQ.REQ_ID DESC' ;
          1 : SQL:= SQL + ' ORDER BY REQ.DATA DESC ' ;
          2 : SQL:= SQL + ' ORDER BY MAT_DESC ' ;
      end;








      SQL_MERC:= SQL;

      Q_REQX.CLOSE;
      Q_REQX.SQL.CLEAR;
      Q_REQX.SQL.ADD(SQL);
      Q_REQX.open;

end;

procedure TFRequisicaoPesq.wwDBLookupCombo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
           btPesq.Click
end;

procedure TFRequisicaoPesq.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        btPesqClick(self);
end;

procedure TFRequisicaoPesq.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
        btPesqClick(self);
end;

procedure TFRequisicaoPesq.wwDBLookupCombo2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
           btPesq.Click
end;

procedure TFRequisicaoPesq.wwDBComboBox3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
           btPesq.Click
end;

procedure TFRequisicaoPesq.wwDBComboBox3CloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
        btPesqClick(self);
end;

procedure TFRequisicaoPesq.btIncluirClick(Sender: TObject);
begin

         CLIC:= TRUE;
         REQ_ID:= '';

         Application.CreateForm(tFRequisicao, FRequisicao);
         FRequisicao.ShowModal;
         FRequisicao.Release;



end;

procedure TFRequisicaoPesq.DBG_RAATDblClick(Sender: TObject);
begin

        CLIC:= FALSE;

        REQ_ID := Q_REQXReq_ID.AsString;

        IF REQ_ID = '' then
                Abort;

        Application.CreateForm(TFRequisicao, FRequisicao);
        if chkLibera.Checked then
                FRequisicao.chkAltera.Checked := True
        else
                FRequisicao.chkAltera.Checked := False;
        FRequisicao.ShowModal;
        FRequisicao.Release;

        {Q_REQX.CLOSE;
        Q_REQX.OPEN;

        Q_REQX.Locate('REQ_ID', REQ_ID,[]); }

end;

procedure TFRequisicaoPesq.wwDBEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
           btPesq.Click
end;

procedure TFRequisicaoPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
     begin
       Key := #0;
       Perform(WM_Nextdlgctl,0,0);
    end else begin
       if (Key = #27 ) then close ;
    end ;
end;

procedure TFRequisicaoPesq.wwDBEdit1Enter(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clAqua;
end;

procedure TFRequisicaoPesq.wwDBEdit1Exit(Sender: TObject);
begin
        (sender as TwwDBEdit).Color := clWindow;
end;

procedure TFRequisicaoPesq.wwDBLookupCombo1Enter(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFRequisicaoPesq.wwDBLookupCombo1Exit(Sender: TObject);
begin
        (sender as TwwDBLookupCombo).Color := clWindow;
end;



procedure TFRequisicaoPesq.MaskEdit3Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRequisicaoPesq.MaskEdit4Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRequisicaoPesq.MaskEdit1Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRequisicaoPesq.MaskEdit2Enter(Sender: TObject);
begin
        (sender as TMaskEdit).color := clAqua;
end;

procedure TFRequisicaoPesq.MaskEdit3Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
end;

procedure TFRequisicaoPesq.MaskEdit4Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
        btPesqClick(self);

end;

procedure TFRequisicaoPesq.MaskEdit1Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
end;

procedure TFRequisicaoPesq.MaskEdit2Exit(Sender: TObject);
begin
        (sender as TMaskEdit).color := clWindow;
        btPesqClick(self);
end;

procedure TFRequisicaoPesq.wwDBComboBox3Enter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clAqua;
end;

procedure TFRequisicaoPesq.wwDBComboBox3Exit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).color := clWindow;
end;

procedure TFRequisicaoPesq.FormPaint(Sender: TObject);
begin
//         wwDBEdit1.SetFocus;
end;

procedure TFRequisicaoPesq.SpeedButton4Click(Sender: TObject);
var filtros : string;
begin
{    wwDBEdit1.Text:= '';
    cboStatus.Text := '';
    wwDBLookupCombo2.Text:= '';
    MaskEdit3.Text:= '';
    MaskEdit4.Text:= '';

    btPesqClick(self);         }

    filtros := 'Data de ' + MaskEdit3.Text + ' até ' + MaskEdit4.Text;
    if wwDBLookupCombo2.Text <> '' then filtros := filtros + ' Material ' + wwDBLookupCombo2.Text;
    if cboLocal.Text <> '' then filtros := filtros + ' Local '+ cboLocal.Text;
    if cboCusto.Text <> '' then filtros := filtros +  ' Centro de custo ' + cboCusto.Text;
    if cboStatus.Text <> '' then filtros := filtros + ' Status ' + cboStatus.Text;
    if cboTipo.Text <> '' then filtros := filtros + ' Tipo ' + cboTipo.Text;

    frmRelRequisicao := TfrmRelRequisicao.Create(Self);
    frmRelRequisicao.Filtros.Lines.Add(filtros);
    frmRelRequisicao.QuickRep1.Preview;
    frmRelRequisicao.Close;





end;

procedure TFRequisicaoPesq.FormShow(Sender: TObject);
begin
        wwDBEdit1.SetFocus
end;

procedure TFRequisicaoPesq.wwDBLookupCombo2Enter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clAqua;
end;

procedure TFRequisicaoPesq.wwDBLookupCombo2Exit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clWindow;
end;

procedure TFRequisicaoPesq.DBG_RAATCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If Q_REQX.FieldByName('STATUS').AsString = 'F' then
                AFont.Color := clGreen
        else If Q_REQX.FieldByName('STATUS').AsString = 'C' then
                AFont.Color := clRed
        Else
                AFont.Color := clBlue;

        If Highlight then
                AFont.Color := clWhite;

end;

procedure TFRequisicaoPesq.cboStatusEnter(Sender: TObject);
begin
        (Sender as TwwDBCombobox).Color := clAqua;
end;

procedure TFRequisicaoPesq.cboStatusExit(Sender: TObject);
begin
        (Sender as TwwDBCombobox).Color := clWindow;
end;

procedure TFRequisicaoPesq.cboStatusChange(Sender: TObject);
begin
        btPesq.Click;
end;

procedure TFRequisicaoPesq.Q_REQXTIPO_REQUISICAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = 'E' then Text := 'Emergência';
  if Sender.Value = 'U' then Text := 'Urgente';
  if Sender.Value = 'N' then Text := 'Normal';
end;

procedure TFRequisicaoPesq.SpeedButton2Click(Sender: TObject);
begin

    frmRequisicaoConferencia := TfrmRequisicaoConferencia.create(Self);
    frmRequisicaoConferencia.lbRequisicao.Caption := Q_REQXReq_ID.AsString;
    frmRequisicaoConferencia.showmodal;
end;

procedure TFRequisicaoPesq.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         wwDBLookupCombo2.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

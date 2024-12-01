unit USaldo_NF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, DBTables, Wwquery, Db,
  Wwdatsrc, Wwtable, Mask, wwdbedit, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, Buttons, DBCtrls, ComObj, ADODB, Wwdotdot,
  Wwdbcomb;

type
  TFSaldo_NF = class(TForm)
    DS_CLIENTENBF: TwwDataSource;
    DS_NF: TwwDataSource;
    DS_NF_ITENS: TwwDataSource;
    Q_CLIENTENBF: TwwQuery;
    Q_NF: TwwQuery;
    Q_NF_ITENSx: TwwQuery;
    Q_NF_ITENSxINF_ITEM: TIntegerField;
    Q_NF_ITENSxNFI_CODI: TIntegerField;
    Q_NF_ITENSxPRO_DESC: TStringField;
    Q_NF_ITENSxINF_QTDE: TFloatField;
    UPD_NF_ITENS: TUpdateSQL;
    Q_NF_ITENSxINF_CODI: TAutoIncField;
    SALDO: TwwDBEdit;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel1: TPanel;
    NFvvvvvv: TwwDBLookupCombo;
    CLIENTE: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Q_NF_ITENSxINF_QTDERETORNADA: TFloatField;
    Q_CLIENTENBFCLIN_ID: TAutoIncField;
    Q_CLIENTENBFCLIN_RAZA: TStringField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NF_ITENSxPRO_COD: TStringField;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RadioGroup2: TRadioGroup;
    Q_NF_ITENSxINF_QTDERETORNADASALDO: TFloatField;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label6: TLabel;
    qrAtualizaSaldo: TwwQuery;
    SpeedButton5: TSpeedButton;
    qrAux: TwwQuery;
    Panel6: TPanel;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    Q_NF_ITENSxSALDO: TFloatField;
    Q_NF_ITENS: TADOQuery;
    Q_NF_ITENSsaldo: TFloatField;
    Q_NF_ITENSINF_CODI: TAutoIncField;
    Q_NF_ITENSINF_ITEM: TIntegerField;
    Q_NF_ITENSNFI_CODI: TIntegerField;
    Q_NF_ITENSPRO_DESC: TStringField;
    Q_NF_ITENSPRO_COD: TStringField;
    Q_NF_ITENSINF_QTDE: TFloatField;
    Q_NF_ITENSINF_QTDERETORNADA: TFloatField;
    Q_NF_ITENSINF_QTDERETORNADASALDO: TFloatField;
    wwDBGrid2: TwwDBGrid;
    edtNF: TEdit;
    cboTipoNF: TwwDBComboBox;
    lbl1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLIENTEEnter(Sender: TObject);
    procedure NFvvvvvvEnter(Sender: TObject);
    procedure CLIENTEExit(Sender: TObject);
    procedure NFvvvvvvExit(Sender: TObject);
    procedure SALDOExit(Sender: TObject);
    procedure Q_NF_ITENSxBeforePost(DataSet: TDataSet);
    procedure SALDOEnter(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure Q_NF_ITENSxCalcFields(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_NF_ITENSxAfterPost(DataSet: TDataSet);
    procedure GRIDExit(Sender: TObject);
    procedure NFvvvvvvCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet;
      modified: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure SaldoNF;
    procedure SpeedButton5Click(Sender: TObject);
    procedure ProdutoNF;
    procedure ProdutosAgrupados;
    procedure DS_NFDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Q_NF_ITENSAfterPost(DataSet: TDataSet);
    procedure Q_NF_ITENSBeforePost(DataSet: TDataSet);
    procedure Q_NF_ITENSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSaldo_NF: TFSaldo_NF;
        QTDE : Double;
        SALD : Integer;
        SQL_NF_ITENS : String;
        CONTEUDO : Integer;
        NFI_CODI : integer;
        CLIN_ID : string;

implementation
Uses USenha, URelSaldoNotas, URelSaldoProdutos, URelSaldoNotasProdutos,
  UMenu;
{$R *.DFM}

procedure TFSaldo_NF.FormCreate(Sender: TObject);
begin
        Q_CLIENTENBF.Open;
        SQL_NF_ITENS :=('SELECT	INF_CODI,         '+
                        '	INF_ITEM,         '+
                        '	NFI_CODI,         '+
                        '	PRO_DESC,         '+
                        '       PRO_COD,          '+
                        '	INF_QTDE,         '+
                        '	INF_QTDERETORNADA, '+
                        '        INF_QTDERETORNADASALDO  '+
                        ' FROM  NF_ITENS          '+
                        ' WHERE NFI_CODI = 0      '+
                        ' ORDER BY INF_ITEM       ');
end;

procedure TFSaldo_NF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Q_CLIENTENBF.Close;
        Q_NF.Close;
        Q_NF_ITENS.Close;
end;

procedure TFSaldo_NF.CLIENTEEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clAqua;
       // Q_NF.Close;
      //  NF.Text :='';
      //  Q_NF_ITENS.Close;
      //  Q_NF_ITENS.Open;
end;

procedure TFSaldo_NF.NFvvvvvvEnter(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clAqua;
       // Q_NF.Open;
       // Q_NF_ITENS.Close;
      //  Q_NF_ITENS.SQL.Clear;
     //   Q_NF_ITENS.SQL.Add (SQL_NF_ITENS);
     //   Q_NF_ITENS.Open;
end;

procedure TFSaldo_NF.CLIENTEExit(Sender: TObject);
begin
        (Sender as TwwDBLookupCombo).Color := clWindow;
        
end;

procedure TFSaldo_NF.NFvvvvvvExit(Sender: TObject);
var
        NUM_NF   : Integer;
begin
        (Sender as TwwDBLookupCombo).Color := clWindow;
       // if NF.LookupValue  <> '' then
      //          NUM_NF := StrToInt(NF.LookupValue)
      //  else
     //           NUM_NF := 0;

        Q_NF_ITENS.SQL.Clear;
        Q_NF_ITENS.SQL.Add ('SELECT     INF_CODI,                          '+
                            '           INF_ITEM,                          '+
                            '    	NFI_CODI,                          '+
                            '    	PRO_DESC,                          '+
                            '           PRO_COD,                           '+
                            '    	INF_QTDE,                          '+
                            '    	INF_QTDERETORNADA,                  '+
                            '           INF_QTDERETORNADASALDO '+
                            '    FROM   NF_ITENS                           '+
                            '    WHERE  NFI_CODI = '+ IntToStr(NUM_NF) +'  '+
                            '    ORDER BY INF_ITEM                         ');
        Q_NF_ITENS.Open;

        CONTEUDO := Q_NF_ITENS.RecordCount;
end;

procedure TFSaldo_NF.SALDOExit(Sender: TObject);
begin
       try
        SALD := 0;
        QTDE := 0;
        QTDE := Q_NF_ITENSINF_QTDE.AsInteger;
        SALD := SALDO.Field.AsInteger;
        Q_NF_ITENS.Post;
        except
           ShowMessage('ERRO NO SALDO EXIT');
        end;
end;

procedure TFSaldo_NF.Q_NF_ITENSxBeforePost(DataSet: TDataSet);
begin
   TRY
        if (SALD >= 0) and (Q_NF_ITENS.State = dsEdit) and (SALD <= QTDE) then
           Begin
                Q_NF_ITENSINF_QTDERETORNADA.Value := {QTDE}Q_NF_ITENSINF_QTDE.asfloat - {SALD} Q_NF_ITENSINF_QTDERETORNADASALDO.asfloat;

                End
        Else
                Begin
                Messagebox(0,'Valor invalido!!!' + #13 + 'Digite Novamente...','Atenção...',(MB_ICONINFORMATION + MB_OK + 8192));
                SALDO.Text := '';
                Abort;
                end;


       Q_NF_ITENSINF_QTDERETORNADASALDO.asfloat :=
      (Q_NF_ITENSINF_QTDE.asfloat - Q_NF_ITENSINF_QTDERETORNADA.asfloat);
    except
        ShowMessage('ERRO NO BEFORE POST');
    end;

end;

procedure TFSaldo_NF.SALDOEnter(Sender: TObject);
begin
        Q_NF_ITENS.Edit;
end;

procedure TFSaldo_NF.GRIDEnter(Sender: TObject);
begin
        if CONTEUDO = 0 then
                Begin
                //GRID.Enabled := False;
                Q_NF_ITENS.Close;
                Q_NF_ITENS.Open;
                End;

        if CONTEUDO > 0 then
                Begin
                //GRID.Enabled := True;
              //  GRID.SetFocus;
                End;

       { with GRID do
                Begin
                Columns[0].ReadOnly := True;
                Columns[1].ReadOnly := True;
                Columns[2].ReadOnly := True;
                Columns[3].ReadOnly := True;
                Columns[4].ReadOnly := True;
                End;      }
end;

procedure TFSaldo_NF.Q_NF_ITENSxCalcFields(DataSet: TDataSet);
begin
{try
    Q_NF_ITENSSALDO.asfloat :=
   (Q_NF_ITENSINF_QTDE.AsInteger - Q_NF_ITENSINF_QTDERETORNADA.AsInteger);
except
    ShowMessage('ERRO CALC');
END  ;}

end;

procedure TFSaldo_NF.SpeedButton3Click(Sender: TObject);
begin
     Close;
end;

procedure TFSaldo_NF.Q_NF_ITENSxAfterPost(DataSet: TDataSet);
var StrITEM : string ;
    StrNF   : string ;
begin
{ TRY
    //  StrITEM := Q_NF_ITENSINF_ITEM.asstring ;
    //  StrNF := Q_NF_ITENSINF_CODI.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdate([Q_NF_ITENS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF_ITENS.close ;
   Q_NF_ITENS.Open ;
  // Q_NF_ITENS.locate('INF_CODI;INF_ITEM',vararrayof([StrNF,StrITEM]),[]);
 except
     ShowMessage('ERRO NO AFTER POST');
 end; }
end;

procedure TFSaldo_NF.GRIDExit(Sender: TObject);
begin
      //  Q_NF.Close;
      //  NF.Text :='';
    //    Q_NF_ITENS.Close;
      //  Q_NF_ITENS.SQL.Clear;
      //  Q_NF_ITENS.SQL.Add (SQL_NF_ITENS);
     //   Q_NF_ITENS.Open;
end;

procedure TFSaldo_NF.NFvvvvvvCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
var
        NUM_NF   : Integer;
begin
        (Sender as TwwDBLookupCombo).Color := clWindow;
      //  if NF.LookupValue  <> '' then
      //          NUM_NF := StrToInt(NF.LookupValue)
     //   else
     //           NUM_NF := 0;
      //
        Q_NF_ITENS.SQL.Clear;
        Q_NF_ITENS.SQL.Add (' SELECT    INF_CODI,                          '+
                            '           INF_ITEM,                          '+
                            '    	NFI_CODI,                          '+
                            '    	PRO_DESC,                          '+
                            '           PRO_COD,                           '+
                            '    	INF_QTDE,                          '+
                            '    	INF_QTDERETORNADA,                 '+
                            '           INF_QTDERETORNADASALDO             '+
                            '    FROM   NF_ITENS                           '+
                            '    WHERE  NFI_CODI = '+ IntToStr(NUM_NF) +'  '+
                            '    ORDER BY INF_ITEM                         ');

        qrAtualizaSaldo.Params[0].AsInteger := NUM_NF;
        qrAtualizaSaldo.ExecSQL;

        Q_NF_ITENS.Open;
        CONTEUDO := Q_NF_ITENS.RecordCount;
end;

procedure TFSaldo_NF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        SendMessage(Self.Handle,Wm_NextDlgCtl,0,0);
        End;
end;

procedure TFSaldo_NF.SpeedButton1Click(Sender: TObject);
begin
   panel2.visible := true;
   speedbutton1.enabled := false;
   speedbutton3.enabled := false;
   cliente.enabled := false;
//   nf.enabled := false;
//   grid.enabled := false;
   saldo.enabled := false;
end;

procedure TFSaldo_NF.SpeedButton4Click(Sender: TObject);
begin
   panel2.visible := false;
   speedbutton1.Enabled := true;
   speedbutton3.enabled := true;
   cliente.enabled := true;
//   nf.enabled := true;
//   grid.enabled := true;
   saldo.enabled := true;
end;

procedure TFSaldo_NF.SpeedButton2Click(Sender: TObject);
begin
   CLIN_ID := Q_CLIENTENBFCLIN_ID.AsString;
   if Q_NFNFI_CODI.AsInteger <> 0 then
        NFI_CODI := Q_NFNFI_CODI.AsInteger;
   
   if cliente.Text = '' then
   begin
        MessageDlg('Selecione um cliente.', mtInformation, [mbok], 0);
        abort;
   end;

   if RadioGroup1.ItemIndex = 0 then
   begin
        Application.CreateForm(TFRelSaldoNotas, FRelSaldoNotas);
        FRelSaldoNotas.RelSaldoNotas.Preview;
        FRelSaldoNotas.Close;
   end
   else
   begin
        if radiogroup2.itemindex = 0 then
        begin
                Application.CreateForm(TFRelSaldoNotasProdutos, FRelSaldoNotasProdutos);
                FRelSaldoNotasProdutos.RelSaldoNotasProdutos.Preview;
                FRelSaldoNotasProdutos.Close;
        end
        else
        begin
                Application.CreateForm(TFRelSaldoProdutos, FRelSaldoProdutos);
                FRelSaldoProdutos.RelSaldoProdutos.Preview;
                FRelSaldoProdutos.Close;
        end;
   end;
end;

procedure TFSaldo_NF.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.itemindex = 1 then
        RadioGroup2.visible := true
   else
        RadioGroup2.visible := false;
end;

procedure TFSaldo_NF.MaskEdit1Exit(Sender: TObject);
begin
  IF MaskEdit1.Text = '  /  /    ' then
  begin
     MessageBox(Self.Handle, 'É necessário informar os dois periodos da pesquisa!!!!', 'Erro', MB_OK + MB_ICONERROR);
     MaskEdit1.SetFocus;
     Abort;
  end;

  IF CLIENTE.Text <> '' then
  begin
        Q_NF.CLOSE;
        Q_NF.Params[0].AsInteger :=   Q_CLIENTENBFCLIN_ID.Value;
        Q_NF.Params[1].AsDateTime := StrToDateTime(MaskEdit1.Text);
        Q_NF.Params[2].AsDateTime := StrToDateTime(MaskEdit2.Text);
       // if CheckBox1.Checked then
      //         Q_NF.Params[3].AsInteger := 23
       // else
       //         Q_NF.Params[3].AsInteger := 2;
       Q_NF.Params[3].AsInteger := StrToInt(cboTipoNF.Value);
        Q_NF.Open;
  end;
end;

procedure TFSaldo_NF.MaskEdit2Exit(Sender: TObject);
begin
  IF MaskEdit2.Text = '  /  /    ' then
  begin
     MessageBox(Self.Handle, 'É necessário informar os dois periodos da pesquisa!!!!', 'Erro', MB_OK + MB_ICONERROR);
     MaskEdit2.SetFocus;
     Abort;
  end;
 // IF CLIENTE.Text <> '' then
 // begin
 //       Q_NF.CLOSE;
 //       Q_NF.Params[0].AsInteger :=   Q_CLIENTENBFCLIN_ID.Value;
  //      Q_NF.Params[1].AsDateTime := StrToDateTime(MaskEdit1.Text);
  //      Q_NF.Params[2].AsDateTime := StrToDateTime(MaskEdit2.Text);
  //      Q_NF.Open;
  //end;
end;

procedure TFSaldo_NF.SaldoNF;
var excel :variant;
    linha : Integer;
    puni : Real;
    saldo : Integer;
begin

  with qrAux do begin
      close;
      sql.Clear;
      sql.Add(
       '   SELECT '+
       '           A.NFI_CODI,  '+
       '           A.NFI_NUMERO, '+
       '           B.PRO_COD, '+
       '           B.PRO_DESC, '+
       '           B.INF_ITEM, '+
       '           B.INF_QTDE, '+
       '           B.INF_QTDERETORNADA, '+
       '           B.INF_PUNI '+
       '   FROM NF A INNER JOIN NF_ITENS B  '+
       '   ON A.NFI_CODI = B.NFI_CODI '               +
       ' where CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)))+
       ' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text)))+
       ' AND A.NFI_EMIT_CLI = ' + CLIENTE.LookupValue

      );
    //  if CheckBox1.Checked then
    //    sql.Add(' and a.tdoc_id = 23 ')
    //  else
        sql.Add(' and a.tdoc_id = ' + cboTipoNF.Value);
      sql.Add('order by a.nfi_numero');
      Open;
  end;

  IF qrAux.IsEmpty then begin
      ShowMessage('Não foram encontrados registros!');
      Abort;
  end;


  excel := CreateOleObject('excel.application');
  if not Excel.Application.Visible then
        Excel.Application.Visible := true;
  Excel.WorkBooks.Add;
  Excel.Cells[1,1] :=   'Saldo de notas por cliente: ' + CLIENTE.Text;
  excel.Range['A1:G1'].Mergecells := True;
  Excel.Cells[2,1] := 'NOTA';
  Excel.Cells[2,2] := 'ITEM';
  Excel.Cells[2,3] := 'CÓDIGO';
  Excel.Cells[2,4] := 'DESCRIÇÃO';
  Excel.Cells[2,5] := 'P. UNIT.'   ;
  Excel.Cells[2,6] := 'SALDO';
  Excel.Cells[2,7] := 'VLR. TOTAL';

  linha := 2;

  while not qrAux.Eof   DO begin
    Inc(linha);
      Excel.Cells[LINHA,1] := qrAux.FieldByName('NFI_NUMERO').AsString;
      Excel.Cells[LINHA,2] := qrAux.FieldByName('INF_ITEM').AsString;
      Excel.Cells[LINHA,3] := qrAux.FieldByName('PRO_COD').AsString;
      Excel.Cells[LINHA,4] := qrAux.FieldByName('PRO_DESC').AsString;
      puni :=  StrToFloat(FormatFloat('##0.00', qrAux.FieldByName('INF_PUNI').AsFloat));
      Excel.Cells[LINHA,5] := StrToFloat(FormatFloat('##0.00', qrAux.FieldByName('INF_PUNI').AsFloat));
      saldo :=  qrAux.FieldByName('INF_QTDE').AsInteger  -  qrAux.FieldByName('INF_QTDERETORNADA').AsInteger;
      Excel.Cells[LINHA,6] :=  saldo;
      Excel.Cells[LINHA,7] := StrToFloat(FormatFloat('##0.00', saldo * puni));
      qraux.next;
  end;
  Excel.Range['A:G'].EntireColumn.AutoFit;

end;

procedure TFSaldo_NF.SpeedButton5Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then begin
      SaldoNF;
  end
  else
  begin
      IF RadioGroup2.ItemIndex = 0 then
        ProdutoNF
      else
        ProdutosAgrupados;
  end;
end;

procedure TFSaldo_NF.ProdutoNF;
var excel :variant;
    linha : Integer;
    puni : Real;
    saldo : Real;
begin

  with qrAux do begin
      close;
      sql.Clear;
      sql.Add(
       '   SELECT '+
       '           A.NFI_CODI,  '+
       '           A.NFI_NUMERO, '+
       '           B.PRO_COD, '+
       '           B.PRO_DESC, '+
       '           B.INF_ITEM, '+
       '           B.INF_QTDE, '+
       '           B.INF_QTDERETORNADA, '+
       '           B.INF_PUNI '+
       '   FROM NF A INNER JOIN NF_ITENS B  '+
       '   ON A.NFI_CODI = B.NFI_CODI '               +
       ' where CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)))+
       ' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text)))+
       ' AND A.NFI_EMIT_CLI = ' + CLIENTE.LookupValue
      );
     // if CheckBox1.Checked then
     //   sql.Add(' and a.tdoc_id = 23 ')
     // else
        sql.Add(' and a.tdoc_id = ' + cboTipoNF.Value);
      sql.Add('order by a.nfi_numero');
      Open;
  end;

  IF qrAux.IsEmpty then begin
      ShowMessage('Não foram encontrados registros!');
      Abort;
  end;


  excel := CreateOleObject('excel.application');
  if not Excel.Application.Visible then
        Excel.Application.Visible := true;
  Excel.WorkBooks.Add;
  Excel.Cells[1,1] :=   'Saldo de Produtos por Nota Fiscal: ' + CLIENTE.Text;
  excel.Range['A1:G1'].Mergecells := True;
  Excel.Cells[2,1] := 'NOTA';
  Excel.Cells[2,2] := 'ITEM';
  Excel.Cells[2,3] := 'CÓDIGO';
  Excel.Cells[2,4] := 'DESCRIÇÃO';
  Excel.Cells[2,5] := 'QTDE'   ;
  Excel.Cells[2,6] := 'RETORNADA';
  Excel.Cells[2,7] := 'SALDO';

  linha := 2;

  while not qrAux.Eof   DO begin
    Inc(linha);
      Excel.Cells[LINHA,1] := qrAux.FieldByName('NFI_NUMERO').AsString;
      Excel.Cells[LINHA,2] := qrAux.FieldByName('INF_ITEM').AsString;
      Excel.Cells[LINHA,3] := qrAux.FieldByName('PRO_COD').AsString;
      Excel.Cells[LINHA,4] := qrAux.FieldByName('PRO_DESC').AsString;
      Excel.Cells[LINHA,5] := StrToFloat(FormatFloat('##0.00', qrAux.FieldByName('INF_QTDE').AsFloat));
      saldo :=  qrAux.FieldByName('INF_QTDE').AsFloat  -  qrAux.FieldByName('INF_QTDERETORNADA').AsFloat;
      Excel.Cells[LINHA,6] := StrToFloat(FormatFloat('##0.00', qrAux.FieldByName('INF_QTDERETORNADA').AsFloat));
      Excel.Cells[LINHA,7] := StrToFloat(FormatFloat('##0.00', saldo));
      qraux.next;
  end;

  Excel.Range['A:G'].EntireColumn.AutoFit;

end;

procedure TFSaldo_NF.ProdutosAgrupados;
var excel :variant;
    linha : Integer;
    puni : Real;
    saldo : Real;
begin

  with qrAux do begin
      close;
      sql.Clear;
      sql.Add(
       '   SELECT '+
       '           B.PRO_COD, '+
       '           B.PRO_DESC, '+
       '           SUM(B.INF_QTDE) INF_QTDE, '+
       '           SUM(B.INF_QTDERETORNADA) INF_QTDERETORNADA '+
       '   FROM NF A INNER JOIN NF_ITENS B  '+
       '   ON A.NFI_CODI = B.NFI_CODI '               +
       ' where CONVERT(CHAR(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)))+
       ' AND CONVERT(CHAR(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text)))+
       ' AND A.NFI_EMIT_CLI = ' + CLIENTE.LookupValue +
       ' AND A.TDOC_ID = 2 '     +
       ' GROUP BY B.PRO_COD, B.PRO_DESC ' +
       ' ORDER BY B.PRO_COD '
      );




      Open;
  end;

  IF qrAux.IsEmpty then begin
      ShowMessage('Não foram encontrados registros!');
      Abort;
  end;


  excel := CreateOleObject('excel.application');
  if not Excel.Application.Visible then
        Excel.Application.Visible := true;
  Excel.WorkBooks.Add;
  Excel.Cells[1,1] :=   'Saldo de Produtos: ' + CLIENTE.Text;
  excel.Range['A1:G1'].Mergecells := True;
  Excel.Cells[2,1] := 'CÓDIGO';
  Excel.Cells[2,2] := 'DESCRIÇÃO';
  Excel.Cells[2,3] := 'QTDE'   ;
  Excel.Cells[2,4] := 'RETORNADA';
  Excel.Cells[2,5] := 'SALDO';

  linha := 2;

  while not qrAux.Eof   DO begin

      Inc(linha);
      Excel.Cells[LINHA,1] := qrAux.FieldByName('PRO_COD').AsString;
      Excel.Cells[LINHA,2] := qrAux.FieldByName('PRO_DESC').AsString;
      Excel.Cells[LINHA,3] := StrToFloat(FormatFloat('##0.00', qrAux.FieldByName('INF_QTDE').AsFloat));
      saldo :=  qrAux.FieldByName('INF_QTDE').AsFloat  -  qrAux.FieldByName('INF_QTDERETORNADA').AsFloat;
      Excel.Cells[LINHA,4] := StrToFloat(FormatFloat('##0.00', qrAux.FieldByName('INF_QTDERETORNADA').AsFloat));
      Excel.Cells[LINHA,5] := StrToFloat(FormatFloat('##0.00', saldo));
      qraux.next;
  end;

  Excel.Range['A:E'].EntireColumn.AutoFit;

end;

procedure TFSaldo_NF.DS_NFDataChange(Sender: TObject; Field: TField);
var
        NUM_NF   : Integer;
begin
        


        NUM_NF := Q_NFNFI_CODI.AsInteger;
        if NUM_NF > 0 then begin
              Q_NF_ITENS.CLOSE;
              Q_NF_ITENS.SQL.Clear;
              Q_NF_ITENS.SQL.Add(
                  '  SELECT	INF_CODI, '+
                  '          INF_ITEM, '+
                  '          NFI_CODI, '+
                  '          PRO_DESC, '+
                  '          PRO_COD,  '+
                  '          INF_QTDE, '+
                  '          INF_QTDERETORNADA,'+
                  '                  INF_QTDERETORNADASALDO  '+
                  '  FROM    NF_ITENS  '+
                  '  WHERE   NFI_CODI = '+ IntToStr(Q_NFNFI_CODI.AsInteger) +
                  '  ORDER BY INF_ITEM '
              );


              qrAtualizaSaldo.Params[0].AsInteger := NUM_NF;
              qrAtualizaSaldo.ExecSQL;

              Q_NF_ITENS.Open;
              CONTEUDO := Q_NF_ITENS.RecordCount;
        end;
end;

procedure TFSaldo_NF.Button1Click(Sender: TObject);
VAR d1, d2 : TDateTime;
  i : Integer;
begin
         Q_NF_ITENS.Close;

         try
             d1 := StrToDate(MaskEdit1.Text);
             d2 := StrToDate(MaskEdit2.Text);
             i := StrToInt(CLIENTE.LookupValue);
         except
                ShowMessage('Informe todos os filtros!');
                Abort;
         end;

         if cboTipoNF.Text = '' then begin
             ShowMessage('Informe o tipo de nota fiscal de entrada');
             Abort;
         end;


        Q_NF.CLOSE;
        Q_NF.sql.Clear;
        Q_NF.sql.Add(

          '  SELECT 	NFI_CODI,  ' +
          '          NFI_EMIT_CLI,  ' +
          '          NFI_NUMERO ' +
          '  FROM	NF   '   +
          '  WHERE  NFI_EMIT_CLI = ' + CLIENTE.LookupValue+
          '  AND CONVERT(CHAR(10), NFI_DEMI, 112) >= ' + FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)) +
          '  AND CONVERT(CHAR(10), NFI_DEMI, 112) <= ' + FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))
        );

      //  if CheckBox1.Checked then
      //          Q_NF.SQL.Add('  AND	TDOC_ID = 23  ')
      //  else
      //          Q_NF.SQL.Add('  AND	TDOC_ID = 2  ');

        Q_NF.SQL.Add('  AND	TDOC_ID = ' + cboTipoNF.Value);
        if edtNF.Text <> '' then
                Q_NF.SQL.Add(' and nfi_numero = ' + QuotedStr(edtNF.Text) );

        Q_NF.sql.Add('  ORDER BY NFI_NUMERO  ');

        Q_NF.Open;
end;

procedure TFSaldo_NF.Q_NF_ITENSAfterPost(DataSet: TDataSet);
begin
              Q_NF_ITENS.CLOSE;
              Q_NF_ITENS.SQL.Clear;
              Q_NF_ITENS.SQL.Add(
                  '  SELECT	INF_CODI, '+
                  '          INF_ITEM, '+
                  '          NFI_CODI, '+
                  '          PRO_DESC, '+
                  '          PRO_COD,  '+
                  '          INF_QTDE, '+
                  '          INF_QTDERETORNADA,'+
                  '                  INF_QTDERETORNADASALDO  '+
                  '  FROM    NF_ITENS  '+
                  '  WHERE   NFI_CODI = '+ IntToStr(Q_NFNFI_CODI.AsInteger) +
                  '  ORDER BY INF_ITEM '
              );
              Q_NF_ITENS.Open;
end;

procedure TFSaldo_NF.Q_NF_ITENSBeforePost(DataSet: TDataSet);
begin
 {  TRY
        if (SALD >= 0) and (Q_NF_ITENS.State = dsEdit) and (SALD <= QTDE) then
           Begin
                Q_NF_ITENSINF_QTDERETORNADA.Value := Q_NF_ITENSINF_QTDE.asfloat -  Q_NF_ITENSINF_QTDERETORNADASALDO.asfloat;

                End
        Else
                Begin
                Messagebox(0,'Valor invalido!!!' + #13 + 'Digite Novamente...','Atenção...',(MB_ICONINFORMATION + MB_OK + 8192));
                SALDO.Text := '';
                Abort;
                end;
    except
        ShowMessage('ERRO NO BEFORE POST');
    end;

    }

    Q_NF_ITENSINF_QTDERETORNADASALDO.asfloat := ( StrToFloat(formatfloat('0.0000', Q_NF_ITENSINF_QTDE.asfloat))  - StrToFloat(formatfloat('0.0000', Q_NF_ITENSINF_QTDERETORNADA.asfloat)) );
end;

procedure TFSaldo_NF.Q_NF_ITENSCalcFields(DataSet: TDataSet);
begin
Q_NF_ITENSSALDO.asfloat := ( StrToFloat(formatfloat('0.0000', Q_NF_ITENSINF_QTDE.asfloat))  - StrToFloat(formatfloat('0.0000', Q_NF_ITENSINF_QTDERETORNADA.asfloat)) );
   //(Q_NF_ITENSINF_QTDE.AsInteger - Q_NF_ITENSINF_QTDERETORNADA.AsInteger);
end;

end.

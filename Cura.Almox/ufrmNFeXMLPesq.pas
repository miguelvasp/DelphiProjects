unit ufrmNFeXMLPesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Buttons, Mask,
  wwdblook, ComObj;

type
  TfrmNFeXMLPesq = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    btIncluir: TSpeedButton;
    btPesq: TSpeedButton;
    RadioGroup1: TRadioGroup;
    wwDBGrid1: TwwDBGrid;
    qrForn: TADOQuery;
    qrFornFOR_CODI: TStringField;
    qrBusca: TADOQuery;
    qrBuscaemi_xNome: TStringField;
    qrBuscaemi_CNPJ: TStringField;
    qrBuscaide_nNF: TIntegerField;
    qrBuscaide_dEmi: TDateTimeField;
    qrBuscaREC_ID: TIntegerField;
    DataSource1: TDataSource;
    Panel2: TPanel;
    qrFornFOR_CGC: TStringField;
    pnlErro: TPanel;
    Label4: TLabel;
    qrBuscaINFO_OK: TStringField;
    qrBuscaIDNFE: TAutoIncField;
    qrAux: TADOQuery;
    Panel3: TPanel;
    btnGerarRecebimento: TButton;
    Button2: TButton;
    pnlWait: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Button3: TButton;
    dsExcel: TDataSource;
    Label5: TLabel;
    edtOC: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btPesqClick(Sender: TObject);
    procedure ExecuteAndWait(const aCommando: string);
    procedure btIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnGerarRecebimentoClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFeXMLPesq: TfrmNFeXMLPesq;

implementation

uses UMenu, ufrmNFe, UfrmNFeGerarRecebimento, UReceb;

{$R *.DFM}

procedure TfrmNFeXMLPesq.FormCreate(Sender: TObject);
begin
   qrForn.Open;
end;

procedure TfrmNFeXMLPesq.btPesqClick(Sender: TObject);
begin
  with qrBusca do begin
      close;
      sql.Clear;
      SQL.Add(
          'SELECT IDNFE, emi_xNome, emi_CNPJ, ide_nNF, ide_dEmi, REC_ID, INFO_OK '+
          'FROM NFe '+
          'WHERE 1 = 1 '
      );

      if RadioGroup1.ItemIndex = 0 then begin
          IF wwDBLookupCombo1.Text <> '' then
                SQL.Add(' AND emi_CNPJ = ' + QuotedStr(qrFornFOR_CGC.AsString));

          IF MaskEdit1.Text <> '  /  /    '  then
                SQL.Add(' AND CONVERT(VARCHAR, IDE_DEMI, 112) >= ' + QuotedStr( FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))));

          IF MaskEdit2.Text <> '  /  /    '  then
                SQL.Add(' AND CONVERT(VARCHAR, IDE_DEMI, 112) <= ' + QuotedStr( FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))));

          sql.Add('ORDER BY emi_xNome, ide_nNF');
      end else begin

          sql.Add(' AND REC_ID IS NULL ')  ;
          SQL.Add(' ORDER BY IDNFE DESC ');
      end;
      Open;

  end;
end;

procedure TfrmNFeXMLPesq.ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, pchar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW,
    nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    ShowMessage('N�o foi poss�vel localizar o recurso de leitura XML!');
  end;

end;

procedure TfrmNFeXMLPesq.btIncluirClick(Sender: TObject);
var Leitorpath: string;
begin
     pnlWait.Visible := True;
     Leitorpath := ExtractFilePath(Application.ExeName) + 'LeitorXML\LeitorNFe.exe';
     ExecuteAndWait(Leitorpath);


     RadioGroup1.ItemIndex := 1;
     btPesq.Click;
     pnlWait.Visible := false;

end;

procedure TfrmNFeXMLPesq.FormShow(Sender: TObject);
begin
   RadioGroup1.ItemIndex := 1;
   btPesq.Click;
end;

procedure TfrmNFeXMLPesq.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if RadioGroup1.ItemIndex = 1 then begin
      if (qrBusca.RecordCount > 0) AND  (qrBuscaINFO_OK.AsString = '') then  begin
         pnlErro.Visible := True;
         Button2.Visible := True;
         btnGerarRecebimento.Enabled := False;
         
      end
      else begin
         pnlErro.Visible := False;
         Button2.Visible := False;
         btnGerarRecebimento.Enabled := True;
      end;
  end;
end;

procedure TfrmNFeXMLPesq.Button1Click(Sender: TObject);
begin
  frmNFe := TfrmNFe.CREATE(Self);
  frmNFe.qrNFe.CLOSE;
  frmNFe.qrNFe.Parameters[0].Value := qrBuscaIDNFE.AsInteger;
  frmNFe.qrNFe.Open;
  frmNFe.ShowModal;

  btPesq.Click;


end;

procedure TfrmNFeXMLPesq.Button2Click(Sender: TObject);
begin
      if edtOC.Text = '' then begin
          ShowMessage('Informe o numero da Ordem de Compras');
          edtOC.SetFocus;
          Abort;
      end;

      with qrAux do begin

          close;
          sql.Clear;
          sql.Add(
              '  SELECT F.FOR_CGC '+
              '  FROM Ordem_Compra O  '+
              '  INNER JOIN CPAFORN F ON O.FOR_CODI = F.FOR_CODI  '+
              '  WHERE O.ORD_ID =  '+  edtOC.Text
          );
          Open;
      end;

      if Trim(qrBuscaemi_CNPJ.AsString)  <> Trim(qrAux.FieldByName('FOR_CGC').AsString)  then begin
          ShowMessage('Fornecedor da NFe e da Ordem de Compra tem que ser o mesmo, verifique a Ordem de compras');
          Abort;
      end;



      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('exec STP_NFeProcessarDados @IdNFe = ' + qrBuscaIDNFE.AsString + ', @OrdemCompra = ' + edtOC.Text);
          ExecSQL;
      end;
      btPesq.Click;
end;

procedure TfrmNFeXMLPesq.btnGerarRecebimentoClick(Sender: TObject);
var Cond, Local, Filial, sql: string;
begin










  frmNFeGerarRecebimento := tfrmNFeGerarRecebimento.Create(Self);
  frmNFeGerarRecebimento.lbOk.Caption := '';
  frmNFeGerarRecebimento.ShowModal;

  if frmNFeGerarRecebimento.lbOk.Caption = 'ok' then begin
      Cond := frmNFeGerarRecebimento.cboCondicao.LookupValue;
      Local := frmNFeGerarRecebimento.cboLocal.LookupValue;
      Filial := frmNFeGerarRecebimento.cboFilial.LookupValue;

      
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('EXEC STP_NFeGeraRecebimento	@IdNFe = ' + qrBuscaIDNFE.AsString + ',	@Cond_Pgto_ID = ' + Cond + ', @LocalID = ' + Local + '  , @FIL_CODI =   ''' + Filial + '''') ;
          ExecSQL;
      end;

      with qrAux do begin
          Close;
          sql.clear;
          sql.add('SELECT * FROM NFE WHERE IDNFE = ' +  qrBuscaIDNFE.AsString) ;
          OPEN;
      end;

      if qrAux.FieldbyName('REC_ID').AsString <> '' then begin
      
         ConsIntRec_ID := qrAux.FieldbyName('REC_ID').AsString;
         Application.CreateForm(TFReceb, FReceb);
         FReceb.Q_REC.ParamS[0].AsInteger := StrToInt(ConsIntRec_ID);
         FReceb.ShowModal;
         FReceb.Release;

         qrBusca.Close;
         qrBusca.Open;

      end
      else
      begin
          ShowMessage('N�o foi poss�vel gerar o recebimento');
      end;
  end;

end;

procedure TfrmNFeXMLPesq.CheckBox1Click(Sender: TObject);
begin
        with qrAux do begin
            Close;
            SQL.Clear;
            if CheckBox1.Checked then
                SQL.Add('UPDATE CPAPARA SET DesConsideraMaterialBonificado = ' + QuotedStr('S'))
            else
                SQL.Add('UPDATE CPAPARA SET DesConsideraMaterialBonificado = ' + QuotedStr('N')) ;
            ExecSQL;
        end;

   
end;

procedure TfrmNFeXMLPesq.Button3Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;
  linha := 1;

  dsExcel.DataSet := qrBusca;

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

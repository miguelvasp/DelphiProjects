unit ufrmNFS_Conhecimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Mask, DBCtrls, StdCtrls, wwdblook, DBTables, Wwquery, ADODB, Grids,
  Wwdbigrd, Wwdbgrid, RzTabs, ExtCtrls, wwstorep, ComObj;

type
  TfrmNFS_Conhecimento = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    qrNFSO: TADOQuery;
    qrNFSONFSO_ID: TAutoIncField;
    qrNFSONFSO_DATA: TDateTimeField;
    qrNFSOCLIN_ID: TIntegerField;
    qrNFSOALIQ_ISS: TFloatField;
    qrNFSOVALOR_OE: TFloatField;
    qrNFSOVALOR_ISS: TFloatField;
    qrNFSOTOTAL: TFloatField;
    qrNFSOSTATUS: TStringField;
    qrNFSONFSO_NUMERO: TIntegerField;
    qrClienteNBF: TwwQuery;
    qrClienteNBFclin_nome: TStringField;
    qrClienteNBFclin_id: TAutoIncField;
    cboClienteRemetente: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Button4: TButton;
    qrItens: TADOQuery;
    qrItensORD_CONH: TStringField;
    qrItensCLIF_RAZA: TStringField;
    qrItensORD_NOTAS: TStringField;
    qrItensMANI_ID: TIntegerField;
    qrItensORD_QTDE_UV: TFloatField;
    qrItensORD_PESO_TOTAL: TFloatField;
    qrItensORD_VALORTOTAL: TFloatField;
    qrItensORD_PLACA: TStringField;
    qrItensORD_VLR_FRETE: TFloatField;
    qrItensVLR_ISS: TFloatField;
    qrItensVLR_NFS: TFloatField;
    DataSource2: TDataSource;
    qrAux: TADOQuery;
    Button1: TButton;
    Panel2: TPanel;
    Label8: TLabel;
    cboCondPgto: TwwDBLookupCombo;
    Button5: TButton;
    Button6: TButton;
    qrNFSOFAT_ID: TIntegerField;
    Q_COND: TwwQuery;
    Q_CONDDescricao: TStringField;
    Q_CONDNum_Parcelas: TFloatField;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDPagamento: TStringField;
    Q_CONDFora: TStringField;
    edtFatura: TEdit;
    Label9: TLabel;
    ADOStoredProc1: TADOStoredProc;
    Button7: TButton;
    qrItensORD_ID: TAutoIncField;
    qrItensORD_VLR_DESPACHO: TFloatField;
    qrItensORD_VLR_PEDAGIO: TFloatField;
    qrItensORD_VLR_SECCAT: TFloatField;
    qrItensORD_SEGURO: TFloatField;
    qrItensORD_TXENTREGA: TFloatField;
    qrItensOS: TIntegerField;
    qrAux2: TADOQuery;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure qrItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFS_Conhecimento: TfrmNFS_Conhecimento;

implementation

uses UMenu, ufrmNFS_ConhecimentoRel;

{$R *.DFM}

procedure TfrmNFS_Conhecimento.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
    qrItens.Close;
    qrItens.Parameters[0].Value := qrNFSONFSO_ID.AsInteger;
    qrItens.Open;

    //efetua os bloqueios
    if qrNFSOFAT_ID.AsString <> '' then begin
       Button2.Enabled := False;
       Button3.Enabled := True;
       Button4.Enabled := False;
       Button1.Enabled := False;
       DBEdit6.Enabled := False;

       with qrAux do begin
            close;
            sql.Clear;
            sql.Add('select fat_num from fatura where fat_id = ' + qrNFSOFAT_ID.AsString);
            Open;
       end;
       edtFatura.Text := qrAux.fieldByName('FAT_NUM').AsString;
    end
    else begin
        edtFatura.Text := '';
        Button2.Enabled := True;
       Button3.Enabled := True;
       Button4.Enabled := True;
       Button1.Enabled := True;
       DBEdit6.Enabled := True;
    end;





end;

procedure TfrmNFS_Conhecimento.Button4Click(Sender: TObject);
begin
  if qrNFSO.State = dsedit then
   qrNFSO.Post;
end;

procedure TfrmNFS_Conhecimento.Button2Click(Sender: TObject);
begin
    if Application.MessageBox('Deseja excluir a nota fiscal?' + #13#10 +
      'Após confirmar esta operação as alterações serão irreversiveis.',
      'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7 then
      Abort;


     qrItens.Close;
         qrAux.Close;
         qrAux.sql.Clear;
         qrAux.sql.Add(
              '  UPDATE ORDEM_COLETA_ENTREGA SET '+
              '  NFSO_SEL = NULL,  '+
              '  NFSO_ID = NULL, '+
              '  ALIQ_ISS = NULL, '+
              '  VLR_ISS = NULL,  '+
              '  VLR_NFS = NULL, '+
              '  ORD_STATUS = ''A''  '+
              '  WHERE NFSO_ID = '+ qrNFSONFSO_ID.AsString
         );
         qrAux.ExecSQL;


     qrNFSO.Delete;

     ShowMessage('Nota Fiscal Excluída do Sistema');

     //Self.Close;


end;

procedure TfrmNFS_Conhecimento.FormCreate(Sender: TObject);
begin
  qrClienteNBF.Open;
  Q_COND.Open;
end;

procedure TfrmNFS_Conhecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmNFS_Conhecimento := nil;
end;

procedure TfrmNFS_Conhecimento.Button1Click(Sender: TObject);
begin
   IF qrNFSONFSO_NUMERO.AsString = '' then
        BEGIN
            ShowMessage('Informe o número da nota fiscal de serviços');
            Abort;
        end;

   panel2.Visible := True;
end;

procedure TfrmNFS_Conhecimento.Button5Click(Sender: TObject);
begin

if cboCondPgto.Text = '' then begin
    ShowMessage('Informe a condição de pagamento');
    Abort;
end;

 if MessageBox(Self.Handle, 'Confirma a geração da fatura?', 'Confirmaçao', MB_YESNO + MB_ICONQUESTION) = 6 then
 begin
      try
      Begin
         ADOStoredProc1.Parameters.ParamByName('@VALORCHEIO').Value    :=  qrNFSOTOTAL.AsFloat ;
         ADOStoredProc1.Parameters.ParamByName('@CLIN_ID').Value       :=  StrToInt(cboClienteRemetente.LookupValue);
         ADOStoredProc1.Parameters.ParamByName('@COND_PGTO_ID').Value  :=  StrToInt(cboCondPgto.LookupValue);
         ADOStoredProc1.Parameters.ParamByName('@TIPO').Value  :=  '2';
         ADOStoredProc1.Parameters.ParamByName('@NFSO_ID').Value := qrNFSONFSO_ID.AsInteger;
         ADOStoredProc1.Execproc;
         MessageBox(Self.Handle, 'Geração efetuada com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION)  ;
         //CLOSE;

         qrNFSO.Close;
         qrNFSO.Open;
         Panel2.Visible := False;
         cboCondPgto.Text := '';

       End
      except
        ON E : Exception do
       begin
         MessageDlg('Geração de Fatura Transporte, com erro !' + #13 + E.Message ,mtInformation,[mbOk], 0);
          abort ;
       end;
      end;
 end;
end;

procedure TfrmNFS_Conhecimento.Button6Click(Sender: TObject);
begin
  cboCondPgto.Text := '';
   Panel2.Visible := False;
end;

procedure TfrmNFS_Conhecimento.Button3Click(Sender: TObject);
begin
  frmNFS_ConhecimentoRel := TfrmNFS_ConhecimentoRel.Create(Self);
  frmNFS_ConhecimentoRel.lbFiltros.Caption := 'Controle de Transporte - ' + cboClienteRemetente.Text + ' Nota fiscal de serviços: ' + qrNFSONFSO_NUMERO.AsString + ' Fatura: ' + edtFatura.Text;
  frmNFS_ConhecimentoRel.QuickRep1.Preview;
  frmNFS_ConhecimentoRel.Close;
end;

procedure TfrmNFS_Conhecimento.Button7Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
    qtde, peso, valor, frete, seccat, despacho, pedagio, entrega, seguro ,iss, total : Real;
begin

      linha := 1;
      frete := 0;
      iss := 0;
      total := 0;
      qtde := 0;
      peso := 0;
      valor := 0;
      seccat := 0;
      despacho := 0;
      pedagio := 0;
      entrega := 0;
      seguro := 0;

      excel := CreateOleObject('excel.application');
      Excel.WorkBooks.Add;

        //escrevemos os cabeçalhos
      for i := 0 to pred(qrItens.FieldCount) do begin
          Excel.Cells[Linha, i + 1] := qrItens.Fields[i].DisplayName;
      end;

        qrItens.First;
      while not qrItens.Eof do begin
      Inc(linha);
      for i := 0 to pred(qrItens.FieldCount) do begin
           //escreve valor inteiro
           if qrItens.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  qrItens.Fields[i].AsInteger
           //escreve valor decimal
           else if qrItens.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',qrItens.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if qrItens.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', qrItens.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  qrItens.Fields[i].AsString;
           end;
      end;

      //limpa o campo ord_id
     // Excel.Cells[Linha, 12] := '';
      //soma os totais
      frete := frete + qrItensORD_VLR_FRETE.AsFloat;
      iss := iss + qrItensVLR_ISS.AsFloat;
      total := total + qrItensVLR_NFS.AsFloat;
      qtde := qtde + qrItensORD_QTDE_UV.AsFloat;
      peso := peso + qrItensORD_PESO_TOTAL.AsFloat;
      valor := valor + qrItensORD_VALORTOTAL.AsFloat;
      seccat := seccat + qrItensORD_VLR_SECCAT.AsFloat;
      despacho := despacho + qrItensORD_VLR_DESPACHO.AsFloat;
      pedagio := pedagio + qrItensORD_VLR_PEDAGIO.AsFloat;
      entrega := entrega + qrItensORD_TXENTREGA.AsFloat;
      seguro := seguro + qrItensORD_SEGURO.AsFloat;

      qrItens.Next;
      Application.ProcessMessages;
  end;


  linha := linha + 1;
  Excel.Cells[Linha, 4] := 'Totais';
  Excel.Cells[Linha, 5] :=  StrToFloat(FormatFloat('##0.00', qtde));
  Excel.Cells[Linha, 6] :=  StrToFloat(FormatFloat('##0.00', peso));
  Excel.Cells[Linha, 7] :=  StrToFloat(FormatFloat('##0.00', valor));
  Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00', frete));
  Excel.Cells[Linha, 10] :=  StrToFloat(FormatFloat('##0.00', seccat));
  Excel.Cells[Linha, 11] :=  StrToFloat(FormatFloat('##0.00', despacho));
  Excel.Cells[Linha, 12] :=  StrToFloat(FormatFloat('##0.00', pedagio));
  Excel.Cells[Linha, 13] :=  StrToFloat(FormatFloat('##0.00', entrega));
  Excel.Cells[Linha, 14] :=  StrToFloat(FormatFloat('##0.00', seguro));
  Excel.Cells[Linha, 15] :=  StrToFloat(FormatFloat('##0.00',iss));
  Excel.Cells[Linha, 16] :=  StrToFloat(FormatFloat('##0.00',total));


  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;
end;

procedure TfrmNFS_Conhecimento.qrItensCalcFields(DataSet: TDataSet);
begin
    with qrAux2 do begin
        close;
        sql.Clear;
        sql.Add('select OS_ID from ordem_coleta_entrega where ord_id = ' + qrItensORD_ID.AsString);
        Open;
    end;
    qrItensOS.Value :=  qrAux2.fieldByName('OS_ID').AsInteger ;
end;

end.

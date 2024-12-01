unit ufrmNFS_ConhecimentoPrepara;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook,
  DBTables, Wwquery, Mask;

type
  TfrmNFS_ConhecimentoPrepara = class(TForm)
    Panel1: TPanel;
    qrClienteNBF: TwwQuery;
    qrClienteNBFclin_nome: TStringField;
    qrClienteNBFclin_id: TAutoIncField;
    cboClienteRemetente: TwwDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    edtAliq: TEdit;
    Label3: TLabel;
    edtOE: TEdit;
    Label4: TLabel;
    edtISS: TEdit;
    edtTotal: TEdit;
    Label5: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    qrItens: TADOQuery;
    qrItensNFSO_SEL: TStringField;
    qrItensOS_ID: TAutoIncField;
    qrItensORD_ID: TAutoIncField;
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
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    RadioGroup1: TRadioGroup;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    qrItensOS_CONCLUIDA: TStringField;
    Panel4: TPanel;
    Label48: TLabel;
    qrItensORD_VLR_DESPACHO: TFloatField;
    qrItensORD_VLR_PEDAGIO: TFloatField;
    qrItensORD_VLR_SECCAT: TFloatField;
    qrItensORD_SEGURO: TFloatField;
    qrItensORD_TXENTREGA: TFloatField;
    cboContrato: TwwDBLookupCombo;
    Label8: TLabel;
    qrContrato: TADOQuery;
    qrContratoCTT_ID: TAutoIncField;
    qrContratoPAR_ID: TIntegerField;
    qrContratoCTT_NOME: TStringField;
    qrContratoTOS_ID: TIntegerField;
    qrContratoCLIN_ID: TIntegerField;
    qrContratoCTT_TERCEIRO: TStringField;
    procedure qrItensNFSO_SELChange(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cboClienteRemetenteExit(Sender: TObject);
    procedure cboClienteRemetenteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFS_ConhecimentoPrepara: TfrmNFS_ConhecimentoPrepara;

implementation

uses UMenu, ufrmNFS_Conhecimento;

{$R *.DFM}

procedure TfrmNFS_ConhecimentoPrepara.qrItensNFSO_SELChange(
  Sender: TField);

VAR   ORD_ID : Integer;
      VLR_OE, VLR_ISS, VLR_TOTAL : Real;
begin
    //se a os nao esta concluida barra a seleção

  ORD_ID := qrItensORD_ID.ASINTEGER;
   WITH qrAux do begin
       Close;
       SQL.Clear;
       IF qrItensNFSO_SEL.AsString = 'S' then
          SQL.Add('UPDATE ORDEM_COLETA_ENTREGA SET NFSO_SEL = ''S'' WHERE ORD_ID = ' + qrItensORD_ID.AsString)
       else
          SQL.Add('UPDATE ORDEM_COLETA_ENTREGA SET NFSO_SEL = ''N'' WHERE ORD_ID = ' + qrItensORD_ID.AsString);
       ExecSQL;
   end;

   if qrItensOS_CONCLUIDA.AsString <> 'S' then begin
         ShowMessage('OS não concluida!');
         WITH qrAux do begin
             Close;
             SQL.Clear;
             SQL.Add('UPDATE ORDEM_COLETA_ENTREGA SET NFSO_SEL = ''N'' WHERE ORD_ID = ' + qrItensORD_ID.AsString);
             ExecSQL;
         end;
    end;


    qrItens.Close;
    qrItens.sql.Clear;
    qrItens.sql.Add(
          '  SELECT  '+
          '      B.NFSO_SEL,   '+
          '      D.OS_ID,'+
          '      B.ORD_ID,'+
          '          ORD_CONH,   '+
          '          C.CLIF_RAZA,'+
          '          B.ORD_NOTAS,  '+
          '          B.MANI_ID, '+
          '          B.ORD_QTDE_UV,  '+
          '          B.ORD_PESO_TOTAL, '+
          '          B.ORD_VALORTOTAL,'+
          '          B.ORD_PLACA,    '+
          '          B.ORD_VLR_FRETE,   '+
                     '	B.ORD_VLR_DESPACHO,   '+
	'  B.ORD_VLR_PEDAGIO,    '+
       '	B.ORD_VLR_SECCAT,    '+
       '	B.ORD_SEGURO, B.ORD_TXENTREGA, '+
          '          B.VLR_ISS,'+
          '          B.VLR_NFS, D.OS_CONCLUIDA  '+
          '  FROM ORDEM_COLETA_ENTREGA B INNER JOIN CLIENTEFINAL C   '+
          '  ON B.CLIF_ID = C.CLIF_ID INNER JOIN OS D  '+
          '  ON B.OS_ID = D.OS_ID  '+
          '  WHERE D.CLIN_ID = '+ cboClienteRemetente.LookupValue   +
          '  AND B.ORD_STATUS = ''A''  '

    );

       if MaskEdit1.Text <> '  /  /    ' then
       qrItens.sql.Add(' AND CONVERT(VARCHAR, D.OS_DATA, 112) >= ' +   QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

        if MaskEdit2.Text <> '  /  /    ' then
       qrItens.sql.Add(' AND CONVERT(VARCHAR, D.OS_DATA, 112) <= ' +   QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));

         if cboContrato.Text <> '' then
        qrItens.sql.add(' AND D.CTT_ID = ' + cboContrato.LookupValue);
        
    case RadioGroup1.ItemIndex of
        0 :  qrItens.sql.add('ORDER BY D.OS_ID');
        1 :  qrItens.sql.add('ORDER BY B.ORD_CONH');
    end;
    qrItens.Open;

    qrItens.Locate('ORD_ID', ORD_ID, []);


    //BUSCAMOS OS TOTAIS PARA MOSTRAR NA TELA

    with qrAux do begin
        close;
        sql.Clear;
        sql.Add(
          ' SELECT SUM(ORD_VLR_FRETE) VLR_OE ,  '+
          ' sum(ORD_VLR_DESPACHO) despacho, '+
	  ' sum(ORD_VLR_PEDAGIO) pedagio, '+
	  ' sum(ORD_VLR_SECCAT) seccat, '+
	  ' sum(ORD_SEGURO) seguro , SUM(ORD_TXENTREGA) ENTREGA '+
          ' FROM ORDEM_COLETA_ENTREGA WHERE NFSO_SEL = ''S'' '
        );
        Open;
    end;


    VLR_OE := qrAux.FieldByName('VLR_OE').AsFloat + qrAux.FieldByName('despacho').AsFloat + qrAux.FieldByName('pedagio').AsFloat +
              qrAux.FieldByName('seccat').AsFloat + qrAux.FieldByName('seguro').AsFloat + qrAux.FieldByName('ENTREGA').AsFloat;
   // VLR_ISS := (2.00 * VLR_OE) / 100.00;
    VLR_ISS := VLR_OE / ((100.00 - StrToFloat(edtAliq.Text))/100.00);
    VLR_ISS := VLR_ISS - VLR_OE;
    VLR_TOTAL := VLR_OE + VLR_ISS;

    edtOE.Text := FormatFloat('###,###,##0.00', VLR_OE);
    edtISS.Text :=FormatFloat('###,###,##0.00', VLR_ISS);
    edtTotal.Text :=FormatFloat('###,###,##0.00', VLR_TOTAL);



end;

procedure TfrmNFS_ConhecimentoPrepara.Button1Click(Sender: TObject);
begin

    with qrAux do begin
        close;
        sql.Clear;
        sql.Add(
          ' update ordem_coleta_entrega set NFSO_SEL = ''N'' where NFSO_SEL = ''S'' and CLIN_ID = ' + cboClienteRemetente.LookupValue
        );
        ExecSQL;
    end;

    qrItens.Close;
    qrItens.sql.Clear;
    qrItens.sql.Add(
          '  SELECT  '+
          '      B.NFSO_SEL,   '+
          '      D.OS_ID,'+
          '      B.ORD_ID,'+
          '          ORD_CONH,   '+
          '          C.CLIF_RAZA,'+
          '          B.ORD_NOTAS,  '+
          '          B.MANI_ID, '+
          '          B.ORD_QTDE_UV,  '+
          '          B.ORD_PESO_TOTAL, '+
          '          B.ORD_VALORTOTAL,'+
          '          B.ORD_PLACA,    '+
          '          B.ORD_VLR_FRETE,   '+
           '	B.ORD_VLR_DESPACHO,   '+
	'  B.ORD_VLR_PEDAGIO,    '+
       '	B.ORD_VLR_SECCAT,    '+
       '	B.ORD_SEGURO, B.ORD_TXENTREGA,  '+
          '          B.VLR_ISS,'+
          '          B.VLR_NFS, D.OS_CONCLUIDA  '+
          '  FROM ORDEM_COLETA_ENTREGA B INNER JOIN CLIENTEFINAL C   '+
          '  ON B.CLIF_ID = C.CLIF_ID INNER JOIN OS D  '+
          '  ON B.OS_ID = D.OS_ID  '+
          '  WHERE  D.CLIN_ID = '+ cboClienteRemetente.LookupValue   +
          '  AND B.ORD_STATUS = ''A''  '

    );


    if MaskEdit1.Text <> '  /  /    ' then
       qrItens.sql.Add(' AND CONVERT(VARCHAR, D.OS_DATA, 112) >= ' +   QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

        if MaskEdit2.Text <> '  /  /    ' then
       qrItens.sql.Add(' AND CONVERT(VARCHAR, D.OS_DATA, 112) <= ' +   QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));

    if cboContrato.Text <> '' then
        qrItens.sql.add(' AND D.CTT_ID = ' + cboContrato.LookupValue);


    case RadioGroup1.ItemIndex of
        0 :  qrItens.sql.add('ORDER BY D.OS_ID');
        1 :  qrItens.sql.add('ORDER BY B.ORD_CONH');
    end;
    qrItens.Open;
    cboClienteRemetente.Enabled := False;
end;

procedure TfrmNFS_ConhecimentoPrepara.FormCreate(Sender: TObject);
begin
  qrClienteNBF.Open;
  with qrAux do begin
      close;
      sql.Clear;
      sql.Add('select ALIQ_ISS_NFS_OE from parametro');
      Open;
  end;

  edtAliq.Text := FormatFloat('##0.00', qrAux.FieldByName('ALIQ_ISS_NFS_OE').AsFloat);


  MaskEdit1.Text := '01/02/2013';
  MaskEdit2.Text := DateTimeToStr(Now);

end;

procedure TfrmNFS_ConhecimentoPrepara.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmNFS_ConhecimentoPrepara := nil;
end;

procedure TfrmNFS_ConhecimentoPrepara.Button2Click(Sender: TObject);
begin
  if   MessageBox(Self.Handle,  'Confirma a geração da nota fiscal de serviços?', 'Confirmação', MB_YESNO) = 7 then
        Abort;

  ADOStoredProc1.Parameters.ParamByName('@CLIN_ID').Value := StrToInt(cboClienteRemetente.LookupValue);
  ADOStoredProc1.ExecProc;

  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add('select max(NFSO_ID) NOVO_ID FROM NFS_CONHECIMENTO');
      Open;
  end;

   frmNFS_Conhecimento := TfrmNFS_Conhecimento.Create(Self);
   frmNFS_Conhecimento.qrNFSO.Close;
   frmNFS_Conhecimento.qrNFSO.SQL.Clear;
   frmNFS_Conhecimento.qrNFSO.sql.Add('SELECT * FROM NFS_Conhecimento where NFSO_ID = ' + qrAux.FieldByName('NOVO_ID').AsString);
   frmNFS_Conhecimento.qrNFSO.Open;
   frmNFS_Conhecimento.ShowModal;


   Self.Close;

end;

procedure TfrmNFS_ConhecimentoPrepara.wwDBGrid1CalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
    if qrItensOS_CONCLUIDA.AsString <> 'S' then begin
         ABrush.Color := $000080FF;
    end
    else ABrush.Color := clWindow;

    AFont.Color := clBlack;

    if Highlight then AFont.Color := clBlack;
end;

procedure TfrmNFS_ConhecimentoPrepara.cboClienteRemetenteExit(
  Sender: TObject);
begin
    qrContrato.Close;
    qrContrato.Parameters[0].Value := strtoint(cboClienteRemetente.LookupValue);
    qrContrato.Open;
    cboContrato.Text := '';

end;

procedure TfrmNFS_ConhecimentoPrepara.cboClienteRemetenteCloseUp(
  Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
    qrContrato.Close;
    qrContrato.Parameters[0].Value := strtoint(cboClienteRemetente.LookupValue);
    qrContrato.Open;
    cboContrato.Text := '';
end;

end.

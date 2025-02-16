unit ufrmNFS_ConhecimentoBusca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, RzTabs, StdCtrls, Mask, wwdblook, Db,
  DBTables, Wwquery, ADODB, ExtCtrls, ComObj;

type
  TfrmNFS_ConhecimentoBusca = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    wwDBGrid1: TwwDBGrid;
    qrClienteNBF: TwwQuery;
    qrClienteNBFclin_nome: TStringField;
    qrClienteNBFclin_id: TAutoIncField;
    cboClienteRemetente: TwwDBLookupCombo;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtOS: TEdit;
    Label4: TLabel;
    edtNotaServico: TEdit;
    Label5: TLabel;
    NotaOE: TEdit;
    Label6: TLabel;
    EdtManifesto: TEdit;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    qrConsulta: TADOQuery;
    qrConsultaNFSO_ID: TAutoIncField;
    qrConsultaMANI_ID: TIntegerField;
    qrConsultaOS_ID: TIntegerField;
    qrConsultaNFSO_DATA: TDateTimeField;
    qrConsultaNFSO_NUMERO: TIntegerField;
    qrConsultaVALOR_ISS: TFloatField;
    qrConsultaTOTAL: TFloatField;
    DataSource1: TDataSource;
    qrConsultaCLIN_RAZA: TStringField;
    RadioGroup1: TRadioGroup;
    qrConsultaFAT_NUM: TIntegerField;
    qrConsultaORD_CONH: TStringField;
    edtOE: TEdit;
    Label8: TLabel;
    edtFatura: TEdit;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    qrConsultaDEST: TStringField;
    Button5: TButton;
    qrConsultaORD_VLR_FRETE: TFloatField;
    qrConsultaORD_VLR_DESPACHO: TFloatField;
    qrConsultaORD_VLR_PEDAGIO: TFloatField;
    qrConsultaORD_VLR_SECCAT: TFloatField;
    qrConsultaORD_SEGURO: TFloatField;
    qrConsultaORD_TXENTREGA: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFS_ConhecimentoBusca: TfrmNFS_ConhecimentoBusca;

implementation

uses UMenu, ufrmNFS_Conhecimento, ufrmNFS_ConhecimentoPrepara,
  ufrmNFS_ConhecimentoBuscaRel;

{$R *.DFM}

procedure TfrmNFS_ConhecimentoBusca.Button1Click(Sender: TObject);
begin
   with qrConsulta do begin
     Close;
     sql.Clear;
     SQL.Add(
      '  SELECT DISTINCT '+
      '          A.NFSO_ID,  '+
      '          B.MANI_ID, '+
      '          B.OS_ID,   '+
      '          A.NFSO_DATA,  '+
      '          A.NFSO_NUMERO,  '+
      '          b.VLR_ISS VALOR_ISS,  '+
       '	B.ORD_VLR_FRETE, '+
       '	B.ORD_VLR_DESPACHO, '+
       '	B.ORD_VLR_PEDAGIO, '+
       '	B.ORD_VLR_SECCAT, '+
       '	B.ORD_SEGURO, '+
       '	B.ORD_TXENTREGA, '  +
      '          B.VLR_NFS TOTAL,  '+
      '          C.CLIN_RAZA , F.FAT_NUM, B.ORD_CONH '+
      ' ,(SELECT CLIF_RAZA FROM CLIENTEFINAL WHERE CLIF_ID = B.CLIF_ID) DEST'+
      '  FROM NFS_Conhecimento A INNER JOIN ORDEM_COLETA_ENTREGA B   '+
      '  ON A.NFSO_ID = B.NFSO_ID INNER JOIN CLIENTENBF C  '+
      '  ON A.CLIN_ID = C.CLIN_ID LEFT OUTER JOIN FATURA F ON F.FAT_ID = A.FAT_ID   where 1 = 1 '
     );

     if cboClienteRemetente.Text <> '' then
        SQL.Add(' AND C.CLIN_ID = ' + cboClienteRemetente.LookupValue);

     IF MaskEdit1.Text <> '  /  /    ' then
        sql.Add(' and conver(varchar,A.NFSO_DATA, 112 ) >= ' +  QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text))));

     IF MaskEdit2.Text <> '  /  /    ' then
        sql.Add(' and conver(varchar,A.NFSO_DATA, 112 ) <= ' +  QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text))));

     if edtOS.Text <> '' then
        sql.Add(' and B.OS_ID = ' + edtOS.Text);

     if edtNotaServico.Text <>'' then
        sql.Add(' and A.NFSO_NUMERO = ' + edtNotaServico.Text);

     if NotaOE.Text <> '' then
        sql.Add(' and B.ORD_NOTAS LIKE ' + QuotedStr('%' + NotaOE.Text + '%'));

     IF EdtManifesto.Text <> '' then
        SQL.Add(' AND B.MANI_ID = ' + EdtManifesto.Text);

     if edtOE.Text <> '' then
        sql.Add(' and b.ord_conh = ' + QuotedStr(edtOE.Text));

     if edtFatura.Text <> '' then
        sql.Add(' and F.FAT_NUM = ' + edtFatura.Text);

     if CheckBox1.Checked then
        sql.Add(' and F.FAT_NUM IS NULL ');

     case RadioGroup1.ItemIndex of
        0 : sql.Add(' order by A.NFSO_NUMERO');
        1 : sql.Add(' order by c.clin_raza');
        2 : sql.Add(' order by B.OS_ID');
        3 : SQL.Add(' ORDER BY B.MANI_ID');
        4 : SQL.Add(' ORDER BY A.NFSO_DATA');
     end;

     Open;
   end;
end;

procedure TfrmNFS_ConhecimentoBusca.Button2Click(Sender: TObject);
begin

  if qrConsultaNFSO_ID.AsString <> '' then begin

   frmNFS_Conhecimento := TfrmNFS_Conhecimento.Create(Self);
   frmNFS_Conhecimento.qrNFSO.Close;
   frmNFS_Conhecimento.qrNFSO.SQL.Clear;
   frmNFS_Conhecimento.qrNFSO.sql.Add('SELECT * FROM NFS_Conhecimento where NFSO_ID = ' + qrConsultaNFSO_ID.AsString);
   frmNFS_Conhecimento.qrNFSO.Open;
   frmNFS_Conhecimento.ShowModal;
  end;
end;

procedure TfrmNFS_ConhecimentoBusca.Button3Click(Sender: TObject);
begin
   frmNFS_ConhecimentoPrepara := TfrmNFS_ConhecimentoPrepara.Create(Self);
   frmNFS_ConhecimentoPrepara.ShowModal;
end;

procedure TfrmNFS_ConhecimentoBusca.FormCreate(Sender: TObject);
begin
   qrClienteNBF.Open;
end;

procedure TfrmNFS_ConhecimentoBusca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmNFS_ConhecimentoBusca := nil;

end;

procedure TfrmNFS_ConhecimentoBusca.Button4Click(Sender: TObject);
begin
  frmNFS_ConhecimentoBuscaRel := TfrmNFS_ConhecimentoBuscaRel.create(Self);
  frmNFS_ConhecimentoBuscaRel.QuickRep1.Preview;
  frmNFS_ConhecimentoBuscaRel.Close;
end;

procedure TfrmNFS_ConhecimentoBusca.Button5Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
    frete, iss,  seccat, despacho, pedagio, entrega, seguro , total : Real;
begin
      linha := 1;
      frete := 0;
      iss := 0;
      total := 0;

      excel := CreateOleObject('excel.application');
      Excel.WorkBooks.Add;

        //escrevemos os cabeçalhos
      for i := 0 to pred(qrConsulta.FieldCount) do begin
          Excel.Cells[Linha, i + 1] := qrConsulta.Fields[i].DisplayName;
      end;

        qrConsulta.First;
      while not qrConsulta.Eof do begin
      Inc(linha);
      for i := 0 to pred(qrConsulta.FieldCount) do begin
           //escreve valor inteiro
           if qrConsulta.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  qrConsulta.Fields[i].AsInteger
           //escreve valor decimal
           else if qrConsulta.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',qrConsulta.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if qrConsulta.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', qrConsulta.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  qrConsulta.Fields[i].AsString;
           end;
      end;

      //soma os totais
      frete := frete + qrConsultaORD_VLR_FRETE.AsFloat;
      iss := iss + qrConsultaVALOR_ISS.AsFloat;
      total := total + qrConsultaTOTAL.AsFloat;
      seccat := seccat + qrConsultaORD_VLR_SECCAT.AsFloat;
      despacho := despacho + qrConsultaORD_VLR_DESPACHO.AsFloat;
      pedagio := pedagio + qrConsultaORD_VLR_PEDAGIO.AsFloat;
      entrega := entrega + qrConsultaORD_TXENTREGA.AsFloat;
      seguro := seguro + qrConsultaORD_SEGURO.AsFloat;

      qrConsulta.Next;
      Application.ProcessMessages;
  end;


  linha := linha + 1;
  Excel.Cells[Linha, 8] := 'Totais';
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

end;

end.

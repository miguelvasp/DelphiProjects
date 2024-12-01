unit frmTransacaoDiaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, wwdblook, Db, ADODB, Qrctrls, gtQrCtrls, gtQRXport_PDF,
  gtQRXport, gtQRXport_Doc, gtQRXport_Excel, QuickRpt, ExtCtrls, ComObj,
  ComCtrls;

type
  TFTransacaoDiaria = class(TForm)
    cboCliente: TwwDBLookupCombo;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    qrClin: TADOQuery;
    qrClinCLIN_ID: TAutoIncField;
    qrClinCLIN_RAZA: TStringField;
    qrClinCLIN_CGCCPF: TStringField;
    qrClinUF_SIGLA: TStringField;
    qrRel: TADOQuery;
    qrRelNF_RETORNO: TStringField;
    qrRelNF_DEMI: TDateTimeField;
    qrRelNF_SAIDA: TStringField;
    qrRelCFA_CODI: TStringField;
    qrRelPRO_COD: TStringField;
    qrRelPRO_DESC: TStringField;
    qrRelINF_QTDE: TFloatField;
    qrRelNFI_CODI_SIMB: TIntegerField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    gtQRLabel1: TgtQRLabel;
    gtQRSysData1: TgtQRSysData;
    gtQRExcelExport1: TgtQRExcelExport;
    gtQRPDFExport1: TgtQRPDFExport;
    lbCliente: TgtQRLabel;
    lbData: TgtQRLabel;
    QRBand2: TQRBand;
    gtQRDBText1: TgtQRDBText;
    gtQRLabel2: TgtQRLabel;
    gtQRLabel3: TgtQRLabel;
    gtQRLabel4: TgtQRLabel;
    gtQRLabel5: TgtQRLabel;
    gtQRLabel6: TgtQRLabel;
    gtQRLabel7: TgtQRLabel;
    gtQRLabel8: TgtQRLabel;
    gtQRLabel9: TgtQRLabel;
    gtQRDBText2: TgtQRDBText;
    gtQRDBText3: TgtQRDBText;
    gtQRDBText4: TgtQRDBText;
    gtQRDBText5: TgtQRDBText;
    gtQRDBText6: TgtQRDBText;
    gtQRDBText7: TgtQRDBText;
    gtQRDBText8: TgtQRDBText;
    gtQRShape1: TgtQRShape;
    gtQRShape2: TgtQRShape;
    qrRelINF_NFE: TStringField;
    edtNFE: TEdit;
    Label4: TLabel;
    edtNFNbf: TEdit;
    Label5: TLabel;
    qrAux: TADOQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ProgressBar1: TProgressBar;
    qrRelTOTAL_ITEM: TFloatField;
    qrRelTOTAL_ENTRADA: TFloatField;
    STP_GERANOTAS: TADOStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GeraExcel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransacaoDiaria: TFTransacaoDiaria;

implementation

uses UMenu;

{$R *.DFM}

procedure TFTransacaoDiaria.FormCreate(Sender: TObject);
begin
  qrClin.Open;
end;

procedure TFTransacaoDiaria.Button1Click(Sender: TObject);
VAR D1, D2 : TDateTime;
    clif_id : integer;
begin


  if cboCliente.Text = '' then
  begin
      ShowMessage('Informe o cliente');
      Abort;
  end;


  try
      D1 := StrToDate(MaskEdit1.Text);
      D2 := StrToDate(MaskEdit2.Text);

  except
      ShowMessage('Data inválida!');
      Abort;
  end;




  //buscamos o cliente final

  with qrAux do begin
      CLOSE;
      SQL.Clear;
      SQL.Add(
         ' SELECT '+
         '         F.CLIF_ID  '+
         ' FROM CLIENTEFINAL F   '+
         ' WHERE F.CLIF_CGCCPF = (  '+
         '         SELECT CLIN_CGCCPF FROM CLIENTENBF WHERE CLIN_ID =  ' + cboCliente.LookupValue +
         ' )'
      );
      Open;
  end;

  clif_id := qrAux.FieldByName('CLIF_ID').AsInteger;



  //EXECUTAMOS A PESQUISA
  if cboCliente.Text <> '' then
          STP_GERANOTAS.Parameters[0].Value := StrToInt(cboCliente.LookupValue)
  else
          STP_GERANOTAS.Parameters[0].Value := 0;

  STP_GERANOTAS.Parameters[1].Value := FormatDateTime('YYYYMMDD', D1);
  STP_GERANOTAS.Parameters[2].Value := FormatDateTime('YYYYMMDD', D2);
  if  edtNFNbf.Text <> '' then
        STP_GERANOTAS.Parameters[3].Value := edtNFNbf.Text
  else
        STP_GERANOTAS.Parameters[3].Value := '0';

  STP_GERANOTAS.Parameters[4].Value := FMenu.SqlUsuariosCH.AsInteger;
  STP_GERANOTAS.ExecProc;


   with qrRel do begin
      close;
      SQL.Clear;
  {    sql.Add(
        '  SELECT DISTINCT '+
        '      (SELECT top 1 NFI_NUMERO FROM NF WHERE NFI_CODI = A.NFI_CODI_SIMB) AS NF_RETORNO, '+
        '      (SELECT top 1 NFI_DEMI FROM NF WHERE NFI_CODI = A.NFI_CODI_SIMB) AS NF_DEMI, '
        );
      if CheckBox1.Checked then
        sql.Add(' '''' as NF_SAIDA, ')
      else
        SQL.Add(' A.NFI_NUMERO AS NF_SAIDA, ');

      SQL.Add(
        '          C.CFA_CODI, '+
        '          B.PRO_COD,  '+
        '          B.PRO_DESC, '+
        '          B.INF_QTDE, '+
        '          (SELECT NFI_NUMERO FROM NF WHERE NFI_CODI = B.INF_NFE) AS INF_NFE,  '+
        '          b.INF_QTDE * B.INF_PUNI AS TOTAL_ITEM , A.NFI_CODI_SIMB, '+
        '          (SELECT top 1 B.INF_QTDE * INF_PUNI FROM NF_ITENS WHERE NFI_CODI = B.INF_NFE AND PRO_ID = B.PRO_ID) as TOTAL_ENTRADA'+
        '  FROM NF A INNER JOIN NF_ITENS B ON A.NFI_CODI_SIMB = B.NFI_CODI '+
        '  INNER JOIN FATURAMENTO C ON  C.CFA_ID = (SELECT CFA_ID FROM NF WHERE NFI_CODI = A.NFI_CODI_SIMB) '+
        '  WHERE A.TDOC_ID = 1 '+
        '  AND A.NFI_CODI_SIMB IS NOT NULL '+
        '  AND (SELECT top 1 NFI_STATUS FROM NF WHERE NFI_CODI = A.NFI_CODI_SIMB) = ''E'' '
      );
      sql.Add('and A.NFI_EMIT_CLI = ' + cboCliente.LookupValue);
      sql.Add('and convert(char(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', D1)));
      sql.Add('and convert(char(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', D2)));



      if edtNFE.Text <> '' then begin
          sql.Add('and (SELECT top 1 NFI_NUMERO FROM NF WHERE NFI_CODI = B.INF_NFE) = ' + QuotedStr(edtNFE.Text) );
      end;

      if edtNFNbf.Text <> '' then begin
          sql.Add('and (SELECT top 1 NFI_NUMERO FROM NF WHERE NFI_CODI = A.NFI_CODI_SIMB) = ' + QuotedStr(edtNFNbf.Text));
      end;

      SQL.Add(
         ' UNION ALL '+
         ' SELECT DISTINCT  '+
         '         A.NFI_NUMERO,  '+
         '         A.NFI_DEMI,  '+
         '         '''',   '+
         '         F.CFA_CODI,  '+
         '         P.PRO_COD,  '+
         '         P.PRO_DESC,  '+
         '         INF_QTDE,  '+
         '         (SELECT top 1 NFI_NUMERO FROM NF WHERE NFI_CODI = B.INF_NFE),  '+
         '         b.INF_QTDE * B.INF_PUNI AS TOTAL_ITEM, A.NFI_CODI_SIMB,   '+
         '          (SELECT top 1 B.INF_QTDE * INF_PUNI FROM NF_ITENS WHERE NFI_CODI = B.INF_NFE AND PRO_ID = B.PRO_ID) as TOTAL_ENTRADA'+
         ' FROM NF A INNER JOIN NF_ITENS B   '+
         ' ON A.NFI_CODI = B.NFI_CODI INNER JOIN FATURAMENTO F    '+
         ' ON A.CFA_ID = F.CFA_ID INNER JOIN PRODUTO P  '+
         ' ON B.PRO_ID = P.PRO_ID  '+
         ' WHERE NFI_STATUS = ''E''     '+
         ' AND A.TDOC_ID = 3          '
      );
      sql.Add('and A.NFI_DEST_CLI = ' + IntToStr(clif_id));
      sql.Add('and convert(char(10), A.NFI_DEMI, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', D1)));
      sql.Add('and convert(char(10), A.NFI_DEMI, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', D2)));


      if edtNFE.Text <> '' then begin
          sql.Add('and (SELECT top 1 NFI_NUMERO FROM NF WHERE NFI_CODI = B.INF_NFE) = ' + QuotedStr(edtNFE.Text) );
      end;

      if edtNFNbf.Text <> '' then begin
          sql.Add('and A.NFI_NUMERO = ' + QuotedStr(edtNFNbf.Text));
      end;







      sql.Add('order by 1, 5')      ;  }

      SQL.Add('SELECT * FROM TRANSACAO_DIARIA WHERE CH = ' + FMenu.SqlUsuariosCH.AsString);

      Open;
   end;

   lbCliente.Caption := cboCliente.Text;
   lbData.Caption := 'Periódo de ' + MaskEdit1.Text + ' até ' + MaskEdit2.Text;
   if CheckBox2.Checked then
        GeraExcel
   else
        QuickRep1.Preview;

   
end;

procedure TFTransacaoDiaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=   caFree;
  FTransacaoDiaria := nil;
end;

procedure TFTransacaoDiaria.GeraExcel;
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //ESCREVE CABEÇALHO
  Excel.Cells[Linha, 1] :=  'NF RETORNO';
  Excel.Cells[Linha, 2] :=  'DATA EMISSÃO';
  Excel.Cells[Linha, 3] :=  'NF DE SAÍDA';
  Excel.Cells[Linha, 4] :=  'CFOP';
  Excel.Cells[Linha, 5] :=  'CÓDIGO';
  Excel.Cells[Linha, 6] :=  'DESCRIÇÃO';
  Excel.Cells[Linha, 7] :=  'QUANTIDADE';
  Excel.Cells[Linha, 8] :=  'NF ENTRADA';
  Excel.Cells[Linha, 9] :=  'VALOR' ;
  Excel.Cells[Linha, 10] :=  'VALOR ENTRADA' ;

  qrRel.Last;
  ProgressBar1.Max := qrRel.RecordCount;
  ProgressBar1.Visible := True;
  ProgressBar1.Position := 0;
  qrRel.First;
  while not qrRel.Eof do begin
      Inc(linha);
      ProgressBar1.Position := linha;

        Excel.Cells[Linha, 1] :=  qrRelNF_RETORNO.AsString;
        Excel.Cells[Linha, 2] :=  FormatDateTime(' dd/mm/yyyy', qrRelNF_DEMI.AsDateTime);
        Excel.Cells[Linha, 2].NumberFormat := 'm/d/yyyy';
        Excel.Cells[Linha, 3] :=  qrRelNF_SAIDA.AsString;
        Excel.Cells[Linha, 4] :=  qrRelCFA_CODI.AsString;
        Excel.Cells[Linha, 5] :=  qrRelPRO_COD.AsString;
        Excel.Cells[Linha, 5].NumberFormat := '@';
        Excel.Cells[Linha, 6] :=  qrRelPRO_DESC.AsString;
        Excel.Cells[Linha, 7] :=  StrToFloat(FormatFloat('##0.00', qrRelINF_QTDE.AsFloat));
        Excel.Cells[Linha, 8] :=  qrRelINF_NFE.AsString;
        Excel.Cells[Linha, 9] :=  StrToFloat(FormatFloat('##0.00',qrRelTOTAL_ITEM.AsFloat));
        Excel.Cells[Linha, 10] := StrToFloat(FormatFloat('##0.00',qrRelTOTAL_ENTRADA.AsFloat));

      qrRel.next;
      Application.ProcessMessages;
  end;


  ProgressBar1.Visible := False;
  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;


end;

end.

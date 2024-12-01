unit UfrmRelFreteCargil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzTabs, Db, Provider, DBClient, StdCtrls, ADODB, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, Buttons, Mask, ComObj, ComCtrls ;

type
  TfrmRelFreteCargil = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    qrClientes: TADOQuery;
    CheckBox1: TCheckBox;
    Button1: TButton;
    qrClientesCLIN_ID: TAutoIncField;
    qrClientesCLIN_NOME: TStringField;
    cdsClientes: TClientDataSet;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    cdsClientesCLIN_ID: TAutoIncField;
    cdsClientesCLIN_NOME: TStringField;
    qrClientesSEL: TStringField;
    cdsClientesSEL: TStringField;
    qrAux: TADOQuery;
    Label1: TLabel;
    edtConh: TEdit;
    edtIni: TMaskEdit;
    edtFim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNF: TEdit;
    Label5: TLabel;
    edtFat: TEdit;
    BitBtn1: TBitBtn;
    qrBusca: TADOQuery;
    qrBuscaCLIN_CGCCPF: TStringField;
    qrBuscaCLIF_NOME: TStringField;
    qrBuscaMUN_NOME: TStringField;
    qrBuscaUF_SIGLA: TStringField;
    qrBuscaORD_CONH: TStringField;
    qrBuscaORD_NOTAS: TStringField;
    qrBuscaORD_QTDE_UV: TFloatField;
    qrBuscaORD_PESO_TOTAL: TFloatField;
    qrBuscaORD_TOTALPREST: TFloatField;
    qrBuscaORD_VLR_ICMS: TFloatField;
    qrBuscaTRANS_RAZA: TStringField;
    ProgressBar1: TProgressBar;
    qrBuscaORD_DATA: TDateTimeField;
    procedure cdsClientesSELChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscaCliente;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFreteCargil: TfrmRelFreteCargil;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmRelFreteCargil.BuscaCliente;
begin
   cdsClientes.Close;
   qrClientes.SQL.Clear;
   qrClientes.SQL.Add(
    '  SELECT '+
    '          A.CLIN_ID, '+
    '          A.CLIN_NOME,  '+
    '          (   '+
    '          SELECT case WHEN C.CLIN_ID IS null THEN ''N'' ELSE ''S'' END FROM TB_RELFRETE_TEMP C '+
    '          WHERE C.CLIN_ID = A.CLIN_ID  '+
    '         AND CH = '+ FMenu.SqlUsuariosCH.AsString +
    '          ) as SEL '+
    '  FROM CLIENTENBF A   '
   );

   if CheckBox1.Checked then
        qrClientes.SQL.Add(
          ' where clin_id in (SELECT CLIN_ID FROM TB_RELFRETE_TEMP WHERE CH = ' + FMenu.SqlUsuariosCH.AsString +  ')'
        );
   qrClientes.SQL.Add('ORDER BY CLIN_NOME');
   cdsClientes.Open;
end;

procedure TfrmRelFreteCargil.cdsClientesSELChange(Sender: TField);
VAR CLIN_ID : Integer;
begin
  CLIN_ID := cdsClientesCLIN_ID.Value;

  with qrAux do begin
        Close;
        sql.Clear;

    IF cdsClientesSEL.AsString = 'S' then
        sql.Add(
        ' INSERT INTO TB_RELFRETE_TEMP VALUES(' +  FMenu.SqlUsuariosCH.AsString + ', ' + cdsClientesCLIN_ID.AsString +  ' )'
        )
    else
    SQL.Add(
        'DELETE FROM   TB_RELFRETE_TEMP '              +
        ' WHERE CH = ' + FMenu.SqlUsuariosCH.AsString +
        ' AND CLIN_ID = ' + cdsClientesCLIN_ID.AsString);

    ExecSQL;
  end   ;

  BuscaCliente;

  cdsClientes.Locate('CLIN_ID', CLIN_ID, []);
  
end;

procedure TfrmRelFreteCargil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelFreteCargil := nil;
end;

procedure TfrmRelFreteCargil.FormCreate(Sender: TObject);
begin
  with qrAux do begin
       close;
       sql.Clear;
       sql.Add('delete from TB_RELFRETE_TEMP where ch = ' + FMenu.SqlUsuariosCH.AsString);
       ExecSQL;
   end;
  BuscaCliente;
end;

procedure TfrmRelFreteCargil.CheckBox1Click(Sender: TObject);
begin
  BuscaCliente;
end;

procedure TfrmRelFreteCargil.Button1Click(Sender: TObject);
begin
   with qrAux do begin
       close;
       sql.Clear;
       sql.Add('delete from TB_RELFRETE_TEMP where ch = ' + FMenu.SqlUsuariosCH.AsString);
       ExecSQL;
   end;
   BuscaCliente;
end;

procedure TfrmRelFreteCargil.BitBtn1Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  with qrAux do begin
      close;
      SQL.Clear;
      SQL.Add(
       ' SELECT COUNT(*) AS ACHEI FROM  TB_RELFRETE_TEMP WHERE CH = ' + FMenu.SqlUsuariosCH.AsString
      );
      Open;
  end;


  with qrBusca do begin
        Close;
        sql.Clear;
        SQL.Add(
           ' SELECT DISTINCT '+
           '     B.CLIN_CGCCPF,  '+
           '         C.CLIF_NOME, '+
           '         D.MUN_NOME, '+
           '         D.UF_SIGLA, '+
           '         A.ORD_CONH, A.ORD_DATA,  '+
           '         A.ORD_NOTAS, '+
           '         A.ORD_QTDE_UV,'+
           '         a.ORD_PESO_TOTAL,'+
           '         A.ORD_TOTALPREST, '+
           '         A.ORD_VLR_ICMS,  '+
           '         t.TRANS_RAZA    '+
           ' FROM ORDEM_COLETA_ENTREGA A INNER JOIN CLIENTENBF B  '+
           ' ON A.CLIN_ID = B.CLIN_ID INNER JOIN CLIENTEFINAL C '+
           ' ON A.CLIF_ID = C.CLIF_ID inner join MUNICIPIO D '+
           ' ON A.MUN_ID_ENT = D.MUN_ID LEFT OUTER JOIN NF E '+
           ' ON A.ORD_ID = E.ORD_ID LEFT OUTER JOIN TRANSPORTADORA T '+
           ' ON A.TRANS_ID = T.TRANS_ID LEFT OUTER JOIN FATURA F  '+
           ' ON A.FAT_ID = F.FAT_ID '+
           ' where A.ORD_STATUS = ''E'' '
        );

        if edtConh.Text <> '' then sql.Add(' and A.ORD_CONH = ' + QuotedStr(edtConh.Text));
        if edtIni.Text <> '  /  /    ' then SQL.Add(' and convert(char(10), A.ORD_DATA, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtIni.Text))) );
        if edtFim.Text <> '  /  /    ' then SQL.Add(' and convert(char(10), A.ORD_DATA, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtFim.Text))) );

        if edtNF.Text <> '' then SQL.Add(' and E.NFI_NUMERO = ' + QuotedStr(edtNF.Text) );
        if edtFat.Text <> '' then sql.Add(' and F.FAT_NUM = ' + QuotedStr(edtFat.Text));


        IF qrAux.FieldByName('ACHEI').AsInteger > 0 then
                SQL.Add(' AND A.CLIN_ID IN (SELECT CLIN_ID FROM TB_RELFRETE_TEMP WHERE CH = ' + FMenu.SqlUsuariosCH.AsString +  ')');

        SQL.Add('ORDER BY A.ORD_CONH');
        Open;  

  end;



  //começamos a escrever o excel

  linha := 1;
  Excel.CELLS[LINHA, 1] := 'CNPJ Cargil';
  Excel.CELLS[LINHA, 2] := 'Destinatário';
  Excel.CELLS[LINHA, 3] := 'Cidade Destino';
  Excel.CELLS[LINHA, 4] := 'UF';
  Excel.CELLS[LINHA, 5] := 'N° CTRC';
  Excel.CELLS[LINHA, 6] := 'Nº NF Cargill';
  Excel.CELLS[LINHA, 7] := 'Data Faturamento Cargill';
  Excel.CELLS[LINHA, 8] := 'Qtde UV';
  Excel.CELLS[LINHA, 9] := 'Peso';
  Excel.CELLS[LINHA, 10] := 'Valor Total';
  Excel.CELLS[LINHA, 11] := 'Valor ICMS';
  Excel.CELLS[LINHA, 12] := 'Frete sem ICMS';
  Excel.CELLS[LINHA, 13] := 'Transportadora';

  qrBusca.Last;
  ProgressBar1.Max := qrBusca.RecordCount;

  qrBusca.First;
  while not qrBusca.Eof do begin
      linha := linha  + 1;
      Excel.Cells[Linha, 1].NumberFormat := '@';
      Excel.CELLS[LINHA, 1] := qrBuscaCLIN_CGCCPF.AsString;

      Excel.CELLS[LINHA, 2] := qrBuscaCLIF_NOME.AsString;
      Excel.CELLS[LINHA, 3] := qrBuscaMUN_NOME.AsString;
      Excel.CELLS[LINHA, 4] := qrBuscaUF_SIGLA.AsString ;
      Excel.Cells[Linha, 5].NumberFormat := '@';
      Excel.CELLS[LINHA, 5] := qrBuscaORD_CONH.AsString;
      Excel.Cells[Linha, 6].NumberFormat := '@';
      Excel.CELLS[LINHA, 6] := qrBuscaORD_NOTAS.AsString;
      Excel.CELLS[LINHA, 7] := FormatDateTime(' dd/mm/yyyy', qrBuscaORD_DATA.AsDateTime);
      Excel.Cells[Linha, 7].NumberFormat := 'm/d/yyyy';
      Excel.CELLS[LINHA, 8] := StrToFloat(FormatFloat('##0.00',qrBuscaORD_QTDE_UV.AsFloat));
      Excel.CELLS[LINHA, 9] := StrToFloat(FormatFloat('##0.00',qrBuscaORD_PESO_TOTAL.AsFloat));
      Excel.CELLS[LINHA, 10] := StrToFloat(FormatFloat('##0.00',qrBuscaORD_TOTALPREST.AsFloat));
      Excel.CELLS[LINHA, 11] := StrToFloat(FormatFloat('##0.00',qrBuscaORD_VLR_ICMS.AsFloat));
      Excel.CELLS[LINHA, 12] := StrToFloat(FormatFloat('##0.00',qrBuscaORD_TOTALPREST.AsFloat - qrBuscaORD_VLR_ICMS.AsFloat));
      Excel.CELLS[LINHA, 13] := 'N.B.F. Logística, Ass., Transp. e Serv. Ltda.';

      qrBusca.Next;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
  end;
  ProgressBar1.Position := 0;
    Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

end;

end.

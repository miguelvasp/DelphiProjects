unit ufrmEstoqueNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, DBTables, Wwquery, Wwdatsrc, wwdbedit,
  ExtCtrls, wwdblook, Mask, StdCtrls, Buttons, DBCtrls, JvComponent,
  JvDBGridExport, DBGrids, JvExDBGrids, JvDBGrid, ADODB, ComObj;

type
  TfrmEstoqueNF = class(TForm)
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Batch1: TMaskEdit;
    Batch2: TMaskEdit;
    Data2: TMaskEdit;
    Data1: TMaskEdit;
    cboProduto: TwwDBLookupCombo;
    cboCliente: TwwDBLookupCombo;
    cboArea: TwwDBLookupCombo;
    rdDescontinuado: TRadioGroup;
    cboTipo: TwwDBLookupCombo;
    edtLote: TwwDBEdit;
    rgAvaria: TRadioGroup;
    DS_PROD: TwwDataSource;
    Q_AREA: TwwQuery;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOMe: TStringField;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_TPROD: TwwQuery;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODCLIN_ID: TIntegerField;
    DS_CLINBF: TwwDataSource;
    BitBtn1: TBitBtn;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    qrBuscaESTQ_QTDE: TFloatField;
    qrBuscaESTQ_TAG: TIntegerField;
    qrBuscaPOS_COD: TStringField;
    qrBuscaAR_NOME: TStringField;
    qrBuscaPRO_COD: TStringField;
    qrBuscaPRO_DESC: TStringField;
    qrBuscaCLIN_RAZA: TStringField;
    qrBuscaESTQ_ID: TAutoIncField;
    qrBuscaAR_ID: TIntegerField;
    qrBuscaPOS_ID: TIntegerField;
    qrBuscaOS_ID_ORIG: TIntegerField;
    qrBuscaPRO_ID: TIntegerField;
    qrBuscaESTQ_QTDE_RETIRA: TFloatField;
    qrBuscaMANI_ID: TIntegerField;
    qrBuscaESTQ_PESO: TFloatField;
    qrBuscaOS_ID_DEST: TIntegerField;
    qrBuscaESTQ_DT_ENTRADA: TDateTimeField;
    qrBuscaESTQ_DT_SAIDA: TDateTimeField;
    qrBuscaROM_ID_ENT: TIntegerField;
    qrBuscaROM_ID_SAIDA: TIntegerField;
    qrBuscaROM_DTBATCH: TDateTimeField;
    qrBuscaROM_DTVENCTO: TDateTimeField;
    qrBuscaESTQ_LOTE: TStringField;
    qrBuscaUVEN_ID: TIntegerField;
    qrBuscaAR_ID_ANTERIOR: TIntegerField;
    qrBuscaPOS_ID_ANTERIOR: TIntegerField;
    qrBuscaESTQ_DT_ULMOV: TDateTimeField;
    qrBuscaPAR_ID: TIntegerField;
    qrBuscaGEROU_OPER_ROMSAIDA: TStringField;
    qrBuscaMARCADOR: TStringField;
    qrBuscaESTQ_ESCOLHEULOTE: TStringField;
    qrBuscaQTDE_GERAL: TFloatField;
    qrBuscaSTATUS: TStringField;
    qrBuscaNOTA: TStringField;
    qrBuscaDATANOTA: TDateTimeField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODTPRO_ID: TIntegerField;
    Q_PRODPRO_ORIGEM: TStringField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_PRODPRO_PESO: TFloatField;
    Q_PRODPRO_VOLUME: TFloatField;
    Q_PRODPRO_VOLUME_PALLET: TFloatField;
    Q_PRODPRO_ALTURA: TIntegerField;
    Q_PRODPRO_LASTRO: TIntegerField;
    Q_PRODPRO_VALIDDIAS: TIntegerField;
    Q_PRODMARCADOR: TStringField;
    Q_PRODPRO_PESO_LIQ: TFloatField;
    Q_PRODPRO_DESCONTINUA: TStringField;
    Q_PRODPRO_COMPR: TFloatField;
    Q_PRODPRO_LARG: TFloatField;
    Q_PRODPRO_ALT: TFloatField;
    Q_PRODPRO_REDUZICMS: TFloatField;
    Q_PRODPRO_ISENCAO: TStringField;
    Q_PRODPRO_ICMS: TFloatField;
    Q_PRODPRO_CST1: TStringField;
    Q_PRODPRO_CST2: TStringField;
    Q_PRODPRO_CST3: TStringField;
    Q_PRODPRO_CST4: TStringField;
    Q_PRODPRO_CST5: TStringField;
    Q_PRODPRO_CST6: TStringField;
    Q_PRODULTIMO_PRECO: TFloatField;
    Q_PRODEMBALAGEM: TStringField;
    Q_PRODTIPO_PRODUTO: TStringField;
    Q_PRODNCM: TStringField;
    Q_PRODESTOQUE: TFloatField;
    Q_PRODESTOQUE_2008: TFloatField;
    Q_PRODKIT: TStringField;
    Q_PRODINSUMO: TStringField;
    Q_PRODvalor_2008: TFloatField;
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DS_CLINBFDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueNF: TfrmEstoqueNF;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmEstoqueNF.SBT_VISUClick(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
    uex : real;
    saldox : string;
    saldo : string;
begin
  with qrBusca do begin
      close;
      sql.Clear;
      sql.Add(
        '  Select '+
        '          A.*,   '+
        '          B.POS_COD,   '+
        '          C.AR_NOME,   '+
        '          D.PRO_COD,   '+
        '          D.PRO_DESC,   '+
        '          E.CLIN_RAZA,   '+
        '          (SELECT TOP 1 NFI_NUMERO FROM NF WHERE OS_ID = A.OS_ID_ORIG AND TDOC_ID IN (2, 4)) AS NOTA,   '+
        '          (SELECT TOP 1 NFI_DEMI FROM NF WHERE OS_ID = A.OS_ID_ORIG AND TDOC_ID IN (2, 4)) AS DATANOTA   '+
        '  from   '+
        '  ESTOQUE A  LEFT OUTER JOIN AREA_POSICOES B   '+
        '  ON A.POS_ID = B.POS_ID,   '+
        '  AREA C , PRODUTO D, CLIENTENBF E   '+
        '  where A.PRO_ID = D.PRO_ID   '+
        '  and  D.CLIN_ID = E.CLIN_ID  '+
        '  and  A.AR_ID = C.AR_ID  '+
        '  and A.ESTQ_QTDE_RETIRA=0  '+
        '  and A.ESTQ_DT_ENTRADA is not null '
      );
      if cboArea.Text <> '' then
         sql.Add('and A.AR_ID = ' + cboArea.LookupValue);

      if cboCliente.Text <> '' then
         sql.Add(' AND D.CLIN_ID = ' + cboCliente.LookupValue);

      if cboProduto.Text <> '' then
         sql.Add(' and A.PRO_ID = ' + cboProduto.LookupValue);

      IF cboTipo.Text <> '' then
         sql.Add(' and D.TPRO_ID = ' + cboTipo.LookupValue);

      if Data1.Text <> '  /  /    ' then
         SQL.Add(' AND CONVERT(VARCHAR, A.ROM_DTVENCTO, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', STRTODATE(Data1.Text))));

      if Data2.Text <> '  /  /    ' then
         SQL.Add(' AND CONVERT(VARCHAR, A.ROM_DTVENCTO, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', STRTODATE(Data2.Text))));

      if Batch1.Text <> '  /  /    ' then
         SQL.Add(' AND CONVERT(VARCHAR, A.ROM_DTBATCH, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', STRTODATE(Batch1.Text))));

      if Batch2.Text <> '  /  /    ' then
         SQL.Add(' AND CONVERT(VARCHAR, A.ROM_DTBATCH, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', STRTODATE(Batch2.Text))));

      IF edtLote.Text <> '' then
         SQL.Add(' AND A.ESTQ_LOTE = ' + QuotedStr(edtLote.Text));

      if rdDescontinuado.ItemIndex = 0 then
         SQL.Add('  and D.PRO_DESCONTINUA = ''S'' ') ;

      if rdDescontinuado.ItemIndex = 1 then
         SQL.Add('  and D.PRO_DESCONTINUA = ''N'' ') ;

      CASE rgAvaria.ItemIndex of
                1 : SQL.ADD('AND A.AR_ID <> 73');
                2 : SQL.ADD('AND A.AR_ID = 73');
            end;
      Open;              
  end;

  if qrBusca.IsEmpty then begin
      ShowMessage('Nenhum registro encontrado');
      Abort;
  end;

    linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;
    Excel.Cells[Linha, 1]   := 'Cliente NBF';
    Excel.Cells[Linha, 2]   := 'Código Produto';
    Excel.Cells[Linha, 3]   := 'Descrição';
    Excel.Cells[Linha, 4]   := 'Área';
    Excel.Cells[Linha, 5]   := 'Posição';
    Excel.Cells[Linha, 6]   := 'TAG';
    Excel.Cells[Linha, 7]   := 'Qtde UV';
    Excel.Cells[Linha, 8]   := 'Pallets';
    Excel.Cells[Linha, 9]   := 'Qtde UE';
    Excel.Cells[Linha, 10]   := 'Batch';
    Excel.Cells[Linha, 11]   := 'Lote';
    Excel.Cells[Linha, 12]   := 'Vencimento';
    Excel.Cells[Linha, 13]   := 'Nota de Entrada';
    Excel.Cells[Linha, 14]   := 'Emissão';
    Excel.Cells[Linha, 15]   := 'OS';
    qrBusca.First;
    while not qrBusca.Eof do begin
        Inc(linha);
        Excel.Cells[Linha, 1]   := qrBuscaCLIN_RAZA.AsString;
        Excel.Cells[Linha, 2]   := qrBuscaPRO_COD.AsString;
        Excel.Cells[Linha, 3]   := qrBuscaPRO_DESC.AsString;
        Excel.Cells[Linha, 4]   := qrBuscaAR_NOME.Value;
        Excel.Cells[Linha, 5]   := qrBuscaPOS_COD.Value;
        Excel.Cells[Linha, 6]   := qrBuscaESTQ_TAG.AsString;
        Excel.Cells[Linha, 7]   := qrBuscaESTQ_QTDE.Value;
        //calcula pallet
        IF (qrBuscaPRO_ID.asstring <> '') then begin
          Q_PROD.locate('PRO_ID', qrBuscaPRO_ID.asstring,[]);
          If (qrBuscaESTQ_QTDE.asfloat =
              Q_PRODPRO_QTDE_PALLETUV.asfloat) then begin
              Excel.Cells[Linha, 8]  := '1' ;
              UEx := {INT}(qrBuscaESTQ_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat);
              Excel.Cells[Linha, 9] :=  FLOATTOSTR(UEx);
          end else begin
              Excel.Cells[Linha, 8] := '0' ;
              UEx := {INT}(qrBuscaESTQ_QTDE.asfloat/Q_PRODQTDE_UVUE.asfloat);
              SALDOx := formatfloat('0.000',(UEx * Q_PRODQTDE_UVUE.asfloat)) ;

              ///qrLabel16.caption :=  FLOATTOSTR(UE);
              IF  (SALDO =  formatfloat('0.000',(qrBuscaESTQ_QTDE.asfloat))) then
                Excel.Cells[Linha, 9] :=  formatfloat('0',(UEx))
              else
                Excel.Cells[Linha, 9] :=  floatTOSTR(int(UEx));
          end ;
      end ;

      {Alterado para adicionar os paletes q nao sejam avarias}
      if (qrBuscaAR_ID.Value <> 73) and (qrBuscaESTQ_QTDE.asfloat > 0) then
              Excel.Cells[Linha, 8]  := '1' ;


        Excel.Cells[Linha, 10]   :=  FormatDateTime('dd/MM/yyyy', qrBuscaROM_DTBATCH.AsDateTime) + '.';
        //Excel.Cells[Linha, 10].NumberFormat := 'd/m/yyyy';
        Excel.Cells[Linha, 11]   := qrBuscaESTQ_LOTE.Value;
        Excel.Cells[Linha, 12]   := FormatDateTime('dd/MM/yyyy', qrBuscaROM_DTVENCTO.AsDateTime) + '.';
        //Excel.Cells[Linha, 12].NumberFormat := 'd/m/yyyy';
        Excel.Cells[Linha, 13]   := qrBuscaNOTA.Value;
        if qrBuscaNOTA.Value <> '' then
        Excel.Cells[Linha, 14]   := FormatDateTime('dd/MM/yyyy', qrBuscaDATANOTA.AsDateTime) + '.' ;
        Excel.Cells[Linha, 15]   :=  qrBuscaOS_ID_ORIG.Value;
        qrBusca.Next;
    end;
    Excel.Range['A:Z'].EntireColumn.AutoFit;
    Excel.Application.Visible := true;

end;

procedure TfrmEstoqueNF.FormCreate(Sender: TObject);
begin
  Q_CLINBF.Open;
end;

procedure TfrmEstoqueNF.DS_CLINBFDataChange(Sender: TObject;
  Field: TField);
begin
  cboTipo.Enabled := True;
  cboProduto.Enabled := True;
  Q_PROD.close;
  Q_PROD.Open;
  Q_TPROD.Close;
  Q_TPROD.Open;
end;

end.

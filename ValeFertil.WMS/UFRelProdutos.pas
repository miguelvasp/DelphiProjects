unit UFRelProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdblook, Mask, StdCtrls, Buttons, Db, DBTables, Wwquery,
  Wwdatsrc, DBCtrls, ADODB, ComCtrls, ComObj;

type
  TFFRelProdutos = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    RadioGroup1: TRadioGroup;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODTPRO_ID: TIntegerField;
    Q_PRODPRO_ORIGEM: TStringField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_PESO: TFloatField;
    Q_PRODPRO_VOLUME: TFloatField;
    Q_PRODPRO_VOLUME_PALLET: TFloatField;
    Q_PRODPRO_ALTURA: TIntegerField;
    Q_PRODPRO_LASTRO: TIntegerField;
    Q_PRODPRO_VALIDDIAS: TAutoIncField;
    Q_PRODMARCADOR: TStringField;
    Q_PRODPRO_PESO_LIQ: TFloatField;
    Q_PRODPRO_DESCONTINUA: TStringField;
    Q_PRODPRO_COMPR: TFloatField;
    Q_PRODPRO_LARG: TFloatField;
    Q_PRODPRO_ALT: TFloatField;
    DS_PROD: TwwDataSource;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    DBText3: TDBText;
    Panel12: TPanel;
    qrProdutos: TADOQuery;
    qrProdutosPRO_DESC: TStringField;
    qrProdutosPRO_COD: TStringField;
    qrProdutosQTDE_UVUE: TFloatField;
    qrProdutosPRO_QTDE_PALLET: TIntegerField;
    qrProdutosPRO_QTDE_PALLETUV: TFloatField;
    qrProdutosPRO_PESO: TFloatField;
    qrProdutosPRO_VOLUME: TFloatField;
    qrProdutosPRO_VOLUME_PALLET: TFloatField;
    qrProdutosPRO_ALTURA: TIntegerField;
    qrProdutosPRO_LASTRO: TIntegerField;
    qrProdutosPRO_VALIDDIAS: TIntegerField;
    qrProdutosPRO_PESO_LIQ: TFloatField;
    qrProdutosPRO_DESCONTINUA: TStringField;
    qrProdutosPRO_COMPR: TFloatField;
    qrProdutosPRO_LARG: TFloatField;
    qrProdutosPRO_ALT: TFloatField;
    qrProdutosPRO_REDUZICMS: TFloatField;
    qrProdutosPRO_ISENCAO: TStringField;
    qrProdutosPRO_ICMS: TFloatField;
    qrProdutosPRO_CST1: TStringField;
    qrProdutosPRO_CST2: TStringField;
    qrProdutosPRO_CST3: TStringField;
    qrProdutosPRO_CST4: TStringField;
    qrProdutosPRO_CST5: TStringField;
    qrProdutosPRO_CST6: TStringField;
    qrProdutosEMBALAGEM: TStringField;
    qrProdutosTPRO_NOME: TStringField;
    qrProdutosUNIDADE_VENDA: TStringField;
    qrProdutosUNIDADE_EXPEDICAO: TStringField;
    qrProdutosCLIENTE_NBF: TStringField;
    SpeedButton1: TSpeedButton;
    dsExcel: TDataSource;
    ProgressBar1: TProgressBar;
    qrProdutosTIPO_ORIGEM: TStringField;
    qrProdutosTIPO_SEGURO: TStringField;
    qrProdutosPRO_ORIGEM: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure qrProdutosCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GerarExcelDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFRelProdutos: TFFRelProdutos;
  CLI    : String;
  PROD   : String;
implementation
uses USenha,Umenu, UAbTabelas, URelProdutos ;
{$R *.DFM}

procedure TFFRelProdutos.SpeedButton3Click(Sender: TObject);
begin
  close ;  
end;

procedure TFFRelProdutos.GerarExcelDataset;
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;


begin

  linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;

  dsExcel.DataSet.Last;
  ProgressBar1.Position := 0;
  ProgressBar1.Max :=  dsExcel.DataSet.RecordCount;

  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);

      ProgressBar1.Position := ProgressBar1.Position + 1;

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

  Excel.Range['A:AK'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

  ProgressBar1.Position := 0;


end;

procedure TFFRelProdutos.SBT_VISUClick(Sender: TObject);
begin
  if wwDBLookupCombo1.text <> '' then
       PROD := wwDBLookupCombo1.lookupvalue ;
  if wwDBLookupCombo4.text <> '' then
       CLI := wwDBLookupCombo4.lookupvalue ;

   Application.CreateForm(TFRelPRODUTOS,FRelPRODUTOS);
   FRelPRODUTOS.ROM.Preview;
   FRelPRODUTOS.Close;


  CLI := '' ;
  PROD := '' ;

end;

procedure TFFRelProdutos.FormCreate(Sender: TObject);
begin
  Q_CLINbf.open ;
  Q_prod.open ;
end;

procedure TFFRelProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_CLINbf.close ;
  Q_prod.close ;
  action := cafree ; 
end;

procedure TFFRelProdutos.wwDBLookupCombo4Exit(Sender: TObject);
begin
  IF wwDBLookupCombo4.text = ''  then begin
     wwDBLookupCombo1.enabled := false   ;
     DBText3.visible := false ;
  end   else begin
     wwDBLookupCombo1.enabled := true ;
     wwDBLookupCombo1.setfocus ;
      DBText3.visible := true ;
     end ;


 



  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFRelProdutos.wwDBLookupCombo4Enter(Sender: TObject);
begin
    (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelProdutos.wwDBLookupCombo1Enter(Sender: TObject);
begin

   IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;

  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelProdutos.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFRelProdutos.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;

end;

procedure TFFRelProdutos.qrProdutosCalcFields(DataSet: TDataSet);
begin
  qrProdutosCLIENTE_NBF.AsString := Q_CLINBFCLIN_RAZA.AsString;

  IF qrProdutosPRO_ORIGEM.AsString = '0' then qrProdutosTIPO_ORIGEM.AsString := 'Nacional';
  IF qrProdutosPRO_ORIGEM.AsString = '1' then qrProdutosTIPO_ORIGEM.AsString := 'Importado';
  IF qrProdutosPRO_ORIGEM.AsString = '2' then qrProdutosTIPO_ORIGEM.AsString := 'Importado adquirido no mercado Nacional';

  IF qrProdutosPRO_ISENCAO.AsString = '1' then qrProdutosTIPO_SEGURO.AsString := 'Sem Isenção';
  IF qrProdutosPRO_ISENCAO.AsString = '2' then qrProdutosTIPO_SEGURO.AsString := 'Averbado Anteriormente';
  IF qrProdutosPRO_ISENCAO.AsString = '3' then qrProdutosTIPO_SEGURO.AsString := 'Redespacho';
  IF qrProdutosPRO_ISENCAO.AsString = '4' then qrProdutosTIPO_SEGURO.AsString := 'Tráfego Mútuo';
  IF qrProdutosPRO_ISENCAO.AsString = '5' then qrProdutosTIPO_SEGURO.AsString := 'Seguro Proprio';
  IF qrProdutosPRO_ISENCAO.AsString = '6' then qrProdutosTIPO_SEGURO.AsString := 'Outras Isenções';
  IF qrProdutosPRO_ISENCAO.AsString = '7' then qrProdutosTIPO_SEGURO.AsString := 'Isenção RCFDC';




end;

procedure TFFRelProdutos.SpeedButton1Click(Sender: TObject);
begin
   if  wwDBLookupCombo4.Text = '' then begin
       ShowMessage('Selecione o cliente final');
       Abort;
   end;

   with qrProdutos do begin

       Close;
       SQL.clear;
       sql.Add(
           ' select  '+
           '         A.*,  '+
           '         B.TPRO_NOME,  '+
           '         (SELECT TOP 1 UVEN_NOME FROM UNIDVENDA WHERE UVEN_ID = A.UVEN_ID) UNIDADE_VENDA, '+
           '         (SELECT TOP 1 UVEN_NOME FROM UNIDVENDA WHERE UVEN_ID = A.UVEN_ID_EXP) UNIDADE_EXPEDICAO '+
           ' from PRODUTO A LEFT OUTER JOIN TPPRODUTO_CLINBF B '+
           ' ON A.TPRO_ID = B.TPRO_ID  '+
           ' where a.clin_id = ' + wwDBLookupCombo4.LookupValue
       );


       if wwDBLookupCombo1.Text <> '' then
        sql.Add(' and pro_id = ' + wwDBLookupCombo1.LookupValue );

       if RadioGroup1.ItemIndex = 0 then
        sql.Add(' and a.PRO_DESCONTINUA = ''S'' ')
       else
        sql.Add(' and a.PRO_DESCONTINUA = ''N'' ');

       sql.Add('order by A.PRO_COD' );

       Open;
   end;

   GerarExcelDataset;

end;

end.

unit UFRelFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, Db, DBTables, Wwquery,
  Wwdatsrc, ADODB, ComCtrls, ComObj;

type
  TFFRelFornecedores = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    Label1: TLabel;
    GroupBox6: TGroupBox;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label20: TLabel;
    RadioGroup2: TRadioGroup;
    Q_FORNE: TwwQuery;
    Q_FORNETRANS_ID: TAutoIncField;
    Q_FORNETRANS_RAZA: TStringField;
    qrFornecedores: TADOQuery;
    qrFornecedoresTRANS_ID: TAutoIncField;
    qrFornecedoresTRANS_FANTASIA: TStringField;
    qrFornecedoresTRANS_RAZA: TStringField;
    qrFornecedoresTRANS_CNPJ: TStringField;
    qrFornecedoresTRANS_INSCRICAO: TStringField;
    qrFornecedoresTRANS_ENDERECO: TStringField;
    qrFornecedoresTRANS_ENDERECO_COMPL: TStringField;
    qrFornecedoresTRANS_ENDERECO_BAIRRO: TStringField;
    qrFornecedoresTRANS_CEP: TStringField;
    qrFornecedoresUF_SIGLA: TStringField;
    qrFornecedoresTRANS_TEL: TStringField;
    qrFornecedoresTRANS_TEL2: TStringField;
    qrFornecedoresTRANS_FAX: TStringField;
    qrFornecedoresTRANS_EMAIL: TStringField;
    qrFornecedoresTRANS_CONTATO: TStringField;
    qrFornecedoresTRANS_PESSOA: TStringField;
    qrFornecedoresMUN_NOME: TStringField;
    Button1: TButton;
    dsExcel: TDataSource;
    ProgressBar1: TProgressBar;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure GerarExcelDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFRelFornecedores: TFFRelFornecedores;
  FORNECI   : String;
  FORNECF    : String;
  rTipo : integer ;
implementation
uses USenha,Umenu, UAbTabelas , URelFornecedores;
{$R *.DFM}

procedure TFFRelFornecedores.SpeedButton3Click(Sender: TObject);
begin
 close ;
end;

procedure TFFRelFornecedores.wwDBLookupCombo3Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelFornecedores.wwDBLookupCombo3Exit(Sender: TObject);
begin
 (Sender as TwwDBlookupcombo).Color := Clwindow ;
end;

procedure TFFRelFornecedores.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelFornecedores.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFRelFornecedores.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFRelFornecedores.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFRelFornecedores.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFRelFornecedores.Data1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFRelFornecedores.Data2Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFRelFornecedores.Data2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFRelFornecedores.MaskEdit1Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFRelFornecedores.MaskEdit1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFRelFornecedores.MaskEdit2Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFRelFornecedores.MaskEdit2Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFRelFornecedores.Edit1Enter(Sender: TObject);
begin
    (Sender as Tedit).Color := ClAqua;
end;

procedure TFFRelFornecedores.Edit1Exit(Sender: TObject);
begin
      (Sender as Tedit).Color := Clwindow;
end;

procedure TFFRelFornecedores.SBT_VISUClick(Sender: TObject);
begin

  if wwDBLookupCombo4.text <> '' then
      FORNECI := wwDBLookupCombo4.lookupvalue ;
 { if wwDBLookupCombo1.text <> '' then
      FORNECF := wwDBLookupCombo1.lookupvalue ;  }

  case radiogroup2.itemindex of
    0 : rTipo := 0 ;
    1 : rTipo := 1 ;
  end ;

  ///if RadioGroup1.itemindex = 0 then begin }
  {Application.Createform(TFRelVendPeriodo, FRelVendPeriodo);
  FRelVendPeriodo.VENDPERIODO.Preview ;
  FRelVendPeriodo.close ;
  FRelVendPeriodo.Release;   }
  ///end;
  Application.Createform(TFRelfornecedores, FRelfornecedores);
  FRelfornecedores.FORNE.Preview ;
  FRelfornecedores.close ;
  FRelfornecedores.Release  ;

  FORNECI := '' ;
  FORNECF := '' ;
end;

procedure TFFRelFornecedores.FormCreate(Sender: TObject);
begin
   Q_FORNE.open ;
end;

procedure TFFRelFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_FORNE.close ;
   action := cafree ;
end;


procedure TFFRelFornecedores.GerarExcelDataset;
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

procedure TFFRelFornecedores.Button1Click(Sender: TObject);
begin
   with qrFornecedores do begin
       close;
       sql.Clear;
       sql.Add(
         ' SELECT '+
         '   A.* ,  '+
         '   B.MUN_NOME    '+
         ' FROM TRANSPORTADORA A LEFT OUTER JOIN MUNICIPIO B  '+
         ' ON A.MUN_ID = B.MUN_ID   '
       );

       if wwDBLookupCombo4.Text <> '' then
          sql.Add(' where A.TRANS_ID = ' + wwDBLookupCombo4.LookupValue);

       SQL.Add('ORDER BY A.TRANS_RAZA');

       Open;
   end;

   GerarExcelDataset;


end;

end.

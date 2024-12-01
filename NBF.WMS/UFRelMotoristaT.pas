unit UFRelMotoristaT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, DBTables, Wwquery, Buttons, ExtCtrls, Grids,
  DBGrids, ADODB, ComCtrls, ComObj;

type
  TFRelMotoristaT = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Q_FORNE: TwwQuery;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Q_FORNETRANS_ID: TAutoIncField;
    Q_FORNETRANS_RAZA: TStringField;
    cbotrans: TwwDBLookupCombo;
    Q_FORNETRANS_FLAG: TStringField;
    SBT_VISU: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    qrMotorista: TwwQuery;
    DataSource1: TDataSource;
    dsTransportadora: TDataSource;
    qrMotoristaMOTORISTA: TStringField;
    qrMotoristaMUNICIPIO: TStringField;
    qrMotoristaMOT_ID: TAutoIncField;
    qrDelete: TwwQuery;
    SpeedButton2: TSpeedButton;
    qrMotExcel: TADOQuery;
    dsExcel: TDataSource;
    qrMotExcelTRANS_RAZA: TStringField;
    qrMotExcelMOT_NOME: TStringField;
    qrMotExcelMOT_ENDERECO: TStringField;
    qrMotExcelMOT_MUNICIPIO: TStringField;
    qrMotExcelMOT_CEP: TStringField;
    qrMotExcelUF_SIGLA: TStringField;
    qrMotExcelMOT_CPF: TStringField;
    qrMotExcelMOT_RG: TStringField;
    qrMotExcelMOT_DT_NASC: TDateTimeField;
    qrMotExcelMOT_RG_ORGAO: TStringField;
    qrMotExcelMOT_CNH: TStringField;
    qrMotExcelMOT_CNH_CATEG: TStringField;
    qrMotExcelMOT_CNH_VALID: TDateTimeField;
    qrMotExcelMOT_PAI: TStringField;
    qrMotExcelMOT_MAE: TStringField;
    qrMotExcelMOT_TEL_PESS: TStringField;
    qrMotExcelMOT_TEL_COM: TStringField;
    qrMotExcelMOT_PAMCARD: TStringField;
    qrMotExcelMOT_PAMCARD_VIG: TDateTimeField;
    qrMotExcelMOT_ENDERECO_COMPL: TStringField;
    qrMotExcelMOT_ENDERECO_BAIRRO: TStringField;
    qrMotExcelMOT_VEIC_PLACA: TStringField;
    qrMotExcelMOT_VEIC_CIDADE: TStringField;
    qrMotExcelMOT_VEIC_UF_SIGLA: TStringField;
    qrMotExcelMOT_VEIC_MARCA: TStringField;
    qrMotExcelMOT_VEIC_ANO: TStringField;
    qrMotExcelMOT_VEIC_MODELO: TStringField;
    qrMotExcelMOT_VEIC_COR: TStringField;
    qrMotExcelMOT_VEIC_CHASSI: TStringField;
    qrMotExcelMOT_CARRETA_PLACA: TStringField;
    qrMotExcelMOT_CARRETA_CIDADE: TStringField;
    qrMotExcelMOT_CARRETA_UF_SIGLA: TStringField;
    qrMotExcelMOT_CARRETA_MARCA: TStringField;
    qrMotExcelMOT_CARRETA_ANO: TStringField;
    qrMotExcelMOT_CARRETA_MODELO: TStringField;
    qrMotExcelMOT_CARRETA_COR: TStringField;
    qrMotExcelMOT_CARRETA_CHASSI: TStringField;
    qrMotExcelMOT_PAMC_NUM: TStringField;
    qrMotExcelMOT_NUMPIS: TStringField;
    qrMotExcelMOT_CARRETA_COMPR: TFloatField;
    qrMotExcelMOT_CARRETA_LARG: TFloatField;
    qrMotExcelMOT_CARRETA_ALT: TFloatField;
    qrMotExcelMOT_CARRETA_M3: TFloatField;
    qrMotExcelMOT_NEXTEL: TStringField;
    qrMotExcelMOT_EQUIP: TStringField;
    qrMotExcelRENAVAN: TStringField;
    qrMotExcelVEIC_NOME: TStringField;
    ProgressBar1: TProgressBar;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbotransExit(Sender: TObject);
    procedure cbotransEnter(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbotransCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GerarExcelDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMotoristaT: TFRelMotoristaT;
  CPR : STRING;
  CPR1 : STRING;

implementation
uses USenha,Umenu, UAbTabelas, URelNotaMotorista ;
{$R *.DFM}

procedure TFRelMotoristaT.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TFRelMotoristaT.FormCreate(Sender: TObject);
begin
Q_FORNE.open ;
end;

procedure TFRelMotoristaT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_FORNE.close ;
   action := cafree ;
end;

procedure TFRelMotoristaT.cbotransExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFRelMotoristaT.cbotransEnter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFRelMotoristaT.SBT_VISUClick(Sender: TObject);
begin

  CPR := cbotrans.lookupvalue;
  {     CPR1:= 'S'
  ELSE
       CPR1 := 'S';}

  begin
  Application.Createform(TFRelNotaMOTORISTA,FRelNotaMOTORISTA);
  FRelNotaMOTORISTA.NFMOTORISTA.Preview ;
  FRelNotaMOTORISTA.close ;
  FRelNotaMOTORISTA.Release;
  end;

  CPR := '';
end;

procedure TFRelMotoristaT.SpeedButton1Click(Sender: TObject);
begin
  if  MessageBox(Self.Handle, 'As alterações efetuadas não poderam ser revertidas. Deseja eliminar o cadastro do motorista selecionado??', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 6 then
  Begin
     qrDelete.close;
     qrDelete.Params[0].AsInteger := qrMotoristaMOT_ID.Value;
     qrDelete.ExecSQL;

     qrMotorista.Close;
     qrMotorista.Params[0].AsInteger := Q_FORNETRANS_ID.AsInteger;
     qrMotorista.Open;
  End;
end;

procedure TFRelMotoristaT.FormShow(Sender: TObject);
begin
    qrMotorista.close;
end;

procedure TFRelMotoristaT.cbotransCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    qrMotorista.Close;
    qrMotorista.Params[0].AsInteger := Q_FORNETRANS_ID.AsInteger;
    qrMotorista.Open;
end;


procedure TFRelMotoristaT.GerarExcelDataset;
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

  Excel.Range['A:AZ'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;

  ProgressBar1.Position := 0;


end;


procedure TFRelMotoristaT.SpeedButton2Click(Sender: TObject);
begin
    if cbotrans.Text <> '' then begin
        with qrMotExcel do begin
            close;
            sql.Clear;
            sql.Add(
               ' SELECT '+
               '   A.TRANS_RAZA, '+
               '   c.*,  '+
               '   v.VEIC_NOME  '+
               ' FROM TRANSPORTADORA A inner join TRANSPORTADORA_MOTORISTA C  '+
               ' on a.TRANS_ID = c.TRANS_ID left outer join TPVEICULO V   '+
               ' on c.VEIC_ID = v.VEIC_ID  ' +
               ' where A.TRANS_ID = ' + cbotrans.LookupValue +
               ' ORDER BY A.TRANS_RAZA, C.MOT_NOME '
            );
            Open;
        end;
    end else begin
        with qrMotExcel do begin
            close;
            sql.Clear;
            sql.Add(
               ' SELECT '+
               '   A.TRANS_RAZA, '+
               '   c.*,  '+
               '   v.VEIC_NOME  '+
               ' FROM TRANSPORTADORA A inner join TRANSPORTADORA_MOTORISTA C  '+
               ' on a.TRANS_ID = c.TRANS_ID left outer join TPVEICULO V   '+
               ' on c.VEIC_ID = v.VEIC_ID  '+
               ' ORDER BY A.TRANS_RAZA, C.MOT_NOME '
            );
            Open;
        end;
    end;
    GerarExcelDataset;


end;

end.

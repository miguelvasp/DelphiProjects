unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ADODB, StdCtrls;

type
  TForm2 = class(TForm)
    ADOQuery1: TADOQuery;
    ADOQuery1clin_id: TAutoIncField;
    ADOQuery1clin_raza: TStringField;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery2PRO_ID: TAutoIncField;
    ADOQuery2CLIN_ID: TIntegerField;
    ADOQuery2PRO_DESC: TStringField;
    ADOQuery2TPRO_ID: TIntegerField;
    ADOQuery2PRO_COD: TStringField;
    ADOQuery2PRO_ORIGEM: TStringField;
    ADOQuery2UVEN_ID: TIntegerField;
    ADOQuery2UVEN_ID_EXP: TIntegerField;
    ADOQuery2QTDE_UVUE: TFloatField;
    ADOQuery2PRO_QTDE_PALLET: TIntegerField;
    ADOQuery2PRO_QTDE_PALLETUV: TFloatField;
    ADOQuery2PRO_PESO: TFloatField;
    ADOQuery2PRO_VOLUME: TFloatField;
    ADOQuery2PRO_VOLUME_PALLET: TFloatField;
    ADOQuery2PRO_ALTURA: TIntegerField;
    ADOQuery2PRO_LASTRO: TIntegerField;
    ADOQuery2PRO_VALIDDIAS: TIntegerField;
    ADOQuery2MARCADOR: TStringField;
    ADOQuery2PRO_PESO_LIQ: TFloatField;
    ADOQuery2PRO_DESCONTINUA: TStringField;
    ADOQuery2PRO_COMPR: TFloatField;
    ADOQuery2PRO_LARG: TFloatField;
    ADOQuery2PRO_ALT: TFloatField;
    ADOQuery2PRO_REDUZICMS: TFloatField;
    ADOQuery2PRO_ISENCAO: TStringField;
    ADOQuery2PRO_ICMS: TFloatField;
    ADOQuery2PRO_CST1: TStringField;
    ADOQuery2PRO_CST2: TStringField;
    ADOQuery2PRO_CST3: TStringField;
    ADOQuery2PRO_CST4: TStringField;
    ADOQuery2PRO_CST5: TStringField;
    ADOQuery2PRO_CST6: TStringField;
    ADOQuery2ULTIMO_PRECO: TFloatField;
    ADOQuery2EMBALAGEM: TStringField;
    ADOQuery2TIPO_PRODUTO: TStringField;
    ADOQuery2NCM: TStringField;
    ADOQuery2ESTOQUE: TFloatField;
    ADOQuery2ESTOQUE_2008: TFloatField;
    wwDBGrid2: TwwDBGrid;
    DataSource2: TDataSource;
    Edit1: TEdit;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  ADOQuery2.CLOSE;
  ADOQuery2.Parameters[0].Value := ADOQuery1clin_id.AsInteger;
  ADOQuery2.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 ADOQuery1.Open;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
   WITH ADOQuery1 DO BEGIN
       CLOSE;
       SQL.Clear;
       SQL.Add('SELECT CLIN_ID, CLIN_RAZA FROM CLIENTENBF WHERE CLIN_RAZA LIKE ' + QuotedStr('%' + Edit1.Text + '%'));
       SQL.Add('ORDER BY CLIN_RAZA');
       Open;
   end;
end;

end.

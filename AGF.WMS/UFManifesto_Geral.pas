unit UFManifesto_Geral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, RzButton, Mask, StdCtrls, ExtCtrls, Db, ADODB,
  DBTables, Wwquery, Wwdatsrc, DBCtrls;

type
  TFManifesto_Geral = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrMani: TADOQuery;
    dsMani: TDataSource;
    qrManiMANI_ID: TAutoIncField;
    qrManiMANI_PESO: TFloatField;
    qrManiMANI_VOLUME: TFloatField;
    qrManiMANI_DATA: TDateTimeField;
    qrManiMANI_QTDEPALLET: TIntegerField;
    qrManiMANI_QTDEUV: TFloatField;
    Panel2: TPanel;
    DS_ESTQ: TwwDataSource;
    GRID: TwwDBGrid;
    Q_PROD: TwwQuery;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_AREAux: TwwQuery;
    Q_AREAuxAR_ID: TAutoIncField;
    Q_AREAuxAR_NOME: TStringField;
    Q_POS2: TwwQuery;
    Q_POS2POS_COD: TStringField;
    Q_POS2AR_ID: TIntegerField;
    Q_POS2POS_UTILIZADO: TStringField;
    Q_POS2POS_ID: TAutoIncField;
    Q_ESTQ: TwwQuery;
    Q_ESTQESTQ_TAG: TIntegerField;
    Q_ESTQESTQ_QTDE: TFloatField;
    Q_ESTQESTQ_QTDE_RETIRA: TFloatField;
    Q_ESTQPROcod: TStringField;
    Q_ESTQPROdesc: TStringField;
    Q_ESTQUVENdesc: TStringField;
    Q_ESTQAreaDESC: TStringField;
    Q_ESTQPOSdesc: TStringField;
    Q_ESTQESTQ_LOTE: TStringField;
    Q_ESTQROM_DTBATCH: TDateTimeField;
    Q_ESTQROM_DTVENCTO: TDateTimeField;
    Q_ESTQESTQ_ID: TAutoIncField;
    Q_ESTQAR_ID: TIntegerField;
    Q_ESTQPOS_ID: TIntegerField;
    Q_ESTQOS_ID_ORIG: TIntegerField;
    Q_ESTQPRO_ID: TIntegerField;
    Q_ESTQESTQ_PESO: TFloatField;
    Q_ESTQOS_ID_DEST: TIntegerField;
    Q_ESTQESTQ_DT_ENTRADA: TDateTimeField;
    Q_ESTQESTQ_DT_SAIDA: TDateTimeField;
    Q_ESTQESTQ_DT_ULMOV: TDateTimeField;
    Q_ESTQROM_ID_ENT: TIntegerField;
    Q_ESTQROM_ID_SAIDA: TIntegerField;
    Q_ESTQUVEN_ID: TIntegerField;
    Q_ESTQMANI_ID: TIntegerField;
    Q_ESTQAR_ID_ANTERIOR: TIntegerField;
    Q_ESTQPOS_ID_ANTERIOR: TIntegerField;
    Q_ESTQPAR_ID: TIntegerField;
    Q_UNIDVEND2: TwwQuery;
    Q_UNIDVEND2UVEN_ID: TAutoIncField;
    Q_UNIDVEND2UVEN_NOME: TStringField;
    qrManiNFS_GERAL: TStringField;
    Button1: TButton;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure dsManiDataChange(Sender: TObject; Field: TField);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManifesto_Geral: TFManifesto_Geral;
  est : Integer;

implementation

uses UMenu, UfrmRelManiGeral, UManifesto;

{$R *.DFM}

procedure TFManifesto_Geral.RzBitBtn1Click(Sender: TObject);
var d1, d2 : TDateTime;
begin
    try
        if MaskEdit1.Text <> '  /  /    ' then
                d1 := StrToDate(MaskEdit1.Text);
        if MaskEdit2.Text <> '  /  /    ' then
                d2 := StrToDate(MaskEdit2.Text);

    except
        ShowMessage('Data inválida');
        Abort;
    end;

    with qrMani do begin
        Close;
        sql.Clear;
        SQL.Add(
           ' SELECT '+
           ' MANI_ID, '+
           ' MANI_PESO,MANI_VOLUME  , '+
           ' MANI_DATA, '+
           ' MANI_QTDEPALLET, '+
           ' MANI_QTDEUV, NFS_GERAL    '+
           ' FROM MANIFESTO  '+
           ' WHERE MANI_ENT_COL = ''G''  '
        );

        if Edit1.Text <> '' then
                sql.Add('and mani_id = ' + Edit1.Text);

        if MaskEdit1.Text <> '  /  /    ' then
                sql.Add('and convert(char(10), mani_data, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', D1)));

        if MaskEdit2.Text <> '  /  /    ' then
                sql.Add('and convert(char(10), mani_data, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', D2)));

        SQL.Add('ORDER BY MANI_ID DESC');
        open;
    end;




end;

procedure TFManifesto_Geral.dsManiDataChange(Sender: TObject;
  Field: TField);
begin
  Q_ESTQ.Close;
  Q_ESTQ.Params[0].AsInteger := qrManiMANI_ID.Value;
  Q_ESTQ.Open;

  est := qrManiMANI_ID.Value;
end;

procedure TFManifesto_Geral.RzBitBtn2Click(Sender: TObject);
var tPages : Integer;
begin

  Q_ESTQ.close;
  Q_ESTQ.Params[0].AsInteger := est;
  Q_ESTQ.Open;


  frmRelManiGeral := TfrmRelManiGeral.Create(Self);
  frmRelManiGeral.ROM.Prepare; // Prepara o relatório
  tPages := frmRelManiGeral.ROM.QRPrinter.PageCount; // Informa a quantidade de páginas do relatório.
  frmRelManiGeral.lbTotalPAges.Caption := ':' +IntToStr(tPages);
  frmRelManiGeral.ROM.Preview;
  frmRelManiGeral.close;
end;

procedure TFManifesto_Geral.Button1Click(Sender: TObject);
begin
{NOVO_MANIFESTO := qrManiMANI_ID.Value;
FManifesto := TFManifesto.Create(Self);
FManifesto.Repaint;

FManifesto.SpeedButton1.Click; }
//FManifesto.Close;
end;

procedure TFManifesto_Geral.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

end;

end.

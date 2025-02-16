unit ufrmPesqBionexoDownload;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Wwquery, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask,
  wwdblook;

type
  TfrmPesqBionexoDownload = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    Button2: TButton;
    Button3: TButton;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATCOD_BIONEXO: TStringField;
    qrBuscabioId: TAutoIncField;
    qrBuscadata: TDateTimeField;
    qrBuscausuario: TStringField;
    qrBuscacod_bionexo: TStringField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaqtde: TFloatField;
    qrBuscapreco_unit: TFloatField;
    qrBuscapreco_total: TFloatField;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    qrBuscaSTATUSITEM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqBionexoDownload: TfrmPesqBionexoDownload;

implementation

uses UMenu, ufrmBionexoDownload;

{$R *.DFM}

procedure TfrmPesqBionexoDownload.FormCreate(Sender: TObject);
begin
  Q_MAT.Open;
  MaskEdit1.Text := DateToStr(Now);
  MaskEdit2.Text := DateToStr(Now);
end;

procedure TfrmPesqBionexoDownload.Button1Click(Sender: TObject);
begin
  with qrBusca do begin
      Close;
      sql.Clear;
      sql.Add(
              '  SELECT  '+
              '          A.bioId,  '+
              '          A.data,   '+
              '          A.usuario,   '+
              '          B.cod_bionexo,  '+
              '          C.MAT_DESC,  '+
              '          B.qtde,  '+
              '          B.preco_unit,  '+
              '          B.preco_total, B.STATUSITEM   '+
              '  FROM bionexoDownload A   '+

              ' INNER JOIN bionexoDownloadItens B  '+
              '  ON A.bioId = B.bioId  '+

              '  LEFT JOIN MATERIAIS C  '+
              '  ON B.cod_bionexo = C.COD_BIONEXO   '+

              '  LEFT JOIN pgtoBionexo D   '+
              '  ON B.pgtoBio_id = D.pgtoBio_id   '+

              '  LEFT JOIN CONDICAO_PAGTO E   '+
              '  ON D.pgtoBio_id = E.pgtoBio_id   '+
              ' where convert(varchar, A.data, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))) +
              ' and  convert(varchar, A.data, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text)))

      );

      if wwDBLookupCombo1.Text <> '' then
        SQL.Add(' and c.mat_id = ' + wwDBLookupCombo1.LookupValue);

      if ComboBox1.Text <> '' then
        sql.Add(' and B.STATUSITEM = ' + QuotedStr(ComboBox1.Text));

      sql.Add(' order by a.data desc');
      Open;

  end;
end;

procedure TfrmPesqBionexoDownload.Button2Click(Sender: TObject);
begin
    frmBionexoDownload := TfrmBionexoDownload.Create(Self);
    frmBionexoDownload.qrBionexo.Parameters[0].Value := 0;
    frmBionexoDownload.qrBionexo.Open;
    frmBionexoDownload.ShowModal;
end;

procedure TfrmPesqBionexoDownload.Button3Click(Sender: TObject);
begin
   if qrBusca.Active then begin
       if qrBusca.IsEmpty = False then begin
           frmBionexoDownload := TfrmBionexoDownload.Create(Self);
           frmBionexoDownload.qrBionexo.Parameters[0].Value := qrBuscabioId.AsInteger;
           frmBionexoDownload.qrBionexo.Open;
           frmBionexoDownload.ShowModal;
       end;
   end;
end;

procedure TfrmPesqBionexoDownload.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   IF qrBuscaSTATUSITEM.Value = 'Ordem de Compras' then begin
       ABrush.Color :=  clActiveCaption;
       AFont.Color := clBlack;
   end;



end;

end.

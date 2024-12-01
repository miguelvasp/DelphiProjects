unit ufrmPesqDivergencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmPesqDivergencia = class(TForm)
    wwDBGrid1: TwwDBGrid;
    qrBusca: TADOQuery;
    DataSource1: TDataSource;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    qrBuscaSolicitante: TStringField;
    qrBuscaLOCAL: TStringField;
    qrBuscaData: TDateTimeField;
    qrBuscaMaterial: TStringField;
    qrBuscastatus: TStringField;
    Button3: TButton;
    qrBuscadivid: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  frmPesqDivergencia: TfrmPesqDivergencia;

implementation

uses UMenu, ufrmDivergencia;

{$R *.DFM}

procedure TfrmPesqDivergencia.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := DateToStr(Date);
  MaskEdit2.Text := DateToStr(Date);
end;

procedure TfrmPesqDivergencia.Button1Click(Sender: TObject);
begin
   with qrBusca do begin
       close;
       sql.Clear;
       sql.Add(
         ' SELECT  A.divid, '+
         '         A.Solicitante,   '+
         '         A.LOCAL,  '+
         '         A.Data,   '+
         '         B.Material, a.status   '+
         ' FROM DIVERGENCIA A INNER JOIN DIVERGENCIAITEM B    '+
         ' ON A.divId = B.divId   '+
         ' where isnull(a.status, '''') <> ''''        '
       );

       SQL.Add(' and convert(varchar, data, 112) >= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit1.Text))));
       SQL.Add(' and convert(varchar, data, 112) <= ' + QuotedStr(FormatDateTime('yyyyMMdd', StrToDate(MaskEdit2.Text))));

       if Edit1.Text <> '' then
           sql.Add(' and local like ' + QuotedStr('%' + Edit1.Text + '%'));

       if Edit2.Text <> '' then
           sql.Add(' and material like ' + QuotedStr('%' + Edit2.Text + '%'));

        sql.Add('order by Data desc');

        Open;
   end;
end;

procedure TfrmPesqDivergencia.Button3Click(Sender: TObject);
begin
     if qrBusca.IsEmpty = False then begin
        frmDivergencia := TfrmDivergencia.Create(Self);
        frmDivergencia.qrDivergencia.Parameters[0].Value := qrBuscadivid.AsInteger;
        frmDivergencia.qrDivergencia.Open;
        frmDivergencia.WindowState := wsMaximized;
        frmDivergencia.ShowModal;
     end;
end;

procedure TfrmPesqDivergencia.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if qrBuscastatus.AsString = 'Em Aberto' then
        AFont.Color := clGreen
   else
        AFont.Color := clBlue;
end;

end.

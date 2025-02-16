unit ufrmConsultaLotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, wwdblook, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  DBCtrls;

type
  TfrmConsultaLotes = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    cboMateriais: TwwDBLookupCombo;
    edtValidade: TMaskEdit;
    edtLote: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtRequisicao: TEdit;
    Label4: TLabel;
    edtDe: TMaskEdit;
    edtAte: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cboCentroCusto: TwwDBLookupCombo;
    qrBusca: TADOQuery;
    qrBuscaReq_ID: TAutoIncField;
    qrBuscaData: TDateTimeField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaMARCA_DESC: TStringField;
    qrBuscaRR_ID: TAutoIncField;
    qrBuscaQtde: TFloatField;
    qrBuscaN_Lote: TWideStringField;
    qrBuscaValid: TDateTimeField;
    qrBuscaDT_INICIO: TDateTimeField;
    qrBuscaDT_FIM: TDateTimeField;
    qrBuscaOBS: TStringField;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qrCCPesq: TADOQuery;
    qrCCPesqCC_Desc: TStringField;
    qrCCPesqCC_ID: TAutoIncField;
    qrMatPesq: TADOQuery;
    qrMatPesqMAT_DESC: TStringField;
    qrMatPesqMAT_ID: TAutoIncField;
    RadioGroup1: TRadioGroup;
    qrLotes: TADOQuery;
    qrLotesRR_ID: TAutoIncField;
    qrLotesReq_Item_ID: TIntegerField;
    qrLotesMat_ID: TIntegerField;
    qrLotesN_Lote: TWideStringField;
    qrLotesValid: TDateTimeField;
    qrLotesMarca_ID: TIntegerField;
    qrLotesFor_Codi: TStringField;
    qrLotesLocal_ID: TIntegerField;
    qrLotesQtde: TFloatField;
    qrLotesUsuario: TStringField;
    qrLotesStatus: TStringField;
    qrLotesDevolucao: TFloatField;
    qrLotesAux: TFloatField;
    qrLotesDT_INICIO: TDateTimeField;
    qrLotesDT_FIM: TDateTimeField;
    qrLotesOBS: TStringField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    dsLotes: TDataSource;
    Button4: TButton;
    Button5: TButton;
    edtValidadeAte: TMaskEdit;
    Label18: TLabel;
    qrLotesSEL: TStringField;
    qrLotesDT_APROVACAO: TDateTimeField;
    qrLotesUSUARIO_INICIO: TStringField;
    qrLotesUSUARIO_FIM: TStringField;
    qrLotesFLAG_INICIO: TStringField;
    qrLotesFLAG_FIM: TStringField;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    RadioGroup2: TRadioGroup;
    edtLeitor: TEdit;
    Label21: TLabel;
    qrBarras: TADOQuery;
    qrBarrasID: TAutoIncField;
    qrBarrasMAT_ID: TIntegerField;
    qrBarrasN_LOTE: TStringField;
    qrBarrasVALIDADE: TDateTimeField;
    qrBarrasMARCA_ID: TIntegerField;
    qrBarrasFOR_CODI: TStringField;
    qrBarrasQTDE: TIntegerField;
    qrBarrasREC_ID: TIntegerField;
    qrBarrasIMPRESSAO: TStringField;
    qrBarrasQTDE_SEL: TIntegerField;
    qrBarrasREC_NF: TStringField;
    qrBarrasREC_DATA: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtLeitorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaLotes: TfrmConsultaLotes;

implementation

uses UMenu, ufrmRelConsultaLotes;

{$R *.DFM}

procedure TfrmConsultaLotes.FormCreate(Sender: TObject);
begin
   qrMatPesq.Open;
   qrCCPesq.Open;
end;

procedure TfrmConsultaLotes.Button1Click(Sender: TObject);
begin
    with qrBusca do begin
        close;
        sql.Clear;
        sql.Add(
            '  SELECT  '+
            '          A.Req_ID,'+
            '          A.Data,  '+
            '          D.MAT_DESC,'+
            '          E.MARCA_DESC,'+
            '          C.RR_ID, '+
            '          C.Qtde, '+
            '          C.N_Lote, '+
            '          C.Valid, '+
            '          C.DT_INICIO, '+
            '          C.DT_FIM, '+
            '          C.OBS  '+
            '  FROM Req_Capa A INNER JOIN Req_Item B '+
            '  ON A.Req_ID = B.Req_ID INNER JOIN Req_Lote_CONSUMO C'+
            '  ON B.Req_Item_ID = C.Req_Item_ID INNER JOIN MATERIAIS D '+
            '  ON C.Mat_ID = D.MAT_ID INNER JOIN MARCAS E '+
            '  ON C.Marca_ID = E.MARCA_ID '+
            ' where 1 = 1 '
        );


        if cboMateriais.Text <> '' then
                sql.Add(' and C.MAT_ID = ' + cboMateriais.LookupValue);

        if edtValidade.Text <> '  /  /    ' then
                sql.Add(' and convert(varchar, C.VALID, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtValidade.Text))));

        if edtValidadeAte.Text <> '  /  /    ' then
                sql.Add(' and convert(varchar, C.VALID, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtValidadeAte.Text))));

        IF edtLote.Text <> '' then
                SQL.Add(' AND C.N_LOTE = ' + QuotedStr(edtLote.Text));

        if edtRequisicao.Text <> '' then
                sql.Add(' and A.REQ_ID = ' + edtRequisicao.Text);

        if edtDe.Text <> '  /  /    ' then
                sql.Add(' and convert(varchar, A.Data, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtDe.Text))));

        if edtAte.Text <> '  /  /    ' then
                sql.Add(' and convert(varchar, A.Data, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(edtAte.Text))));

        IF cboCentroCusto.Text <> '' then
                SQL.Add(' AND A.CC_ID = ' + cboCentroCusto.LookupValue);

        case RadioGroup2.ItemIndex of
            1 : SQL.Add('AND DT_INICIO IS NULL');
            2 : SQL.Add('AND DT_INICIO IS NOT NULL AND DT_FIM IS NULL');
            3 : SQL.Add('AND DT_FIM IS NOT NULL');
        end;


        CASE RadioGroup1.ItemIndex of
           0 : SQL.Add('ORDER BY A.REQ_ID');
           1 : SQL.Add('ORDER BY A.Data');
           2 : SQL.Add('ORDER BY D.MAT_DESC');
           3 : SQL.Add('ORDER BY C.N_LOTE');
           4 : SQL.Add('ORDER BY C.VALID');
        end;

        Open;
    end;
end;

procedure TfrmConsultaLotes.Button2Click(Sender: TObject);
begin
    IF qrBuscaRR_ID.AsString <> '' then begin
         qrLotes.Close;
         qrLotes.Parameters[0].Value := qrBuscaRR_ID.AsInteger;
         qrLotes.Open;
         Panel2.Visible := True;
         Panel2.Align := alClient;
    end;
end;

procedure TfrmConsultaLotes.Button4Click(Sender: TObject);
var RR_ID : Integer;
begin

   //verificamos se a data de inicio e fim foram preenchidas e bloqueamos os campos
   if qrLotesDT_INICIO.AsString <> '' then begin
       qrLotesUSUARIO_INICIO.Value := FMenu.sqlUsuariosNome.Value;
       qrLotesFLAG_INICIO.Value := 'S';
   end;

   if qrLotesDT_FIM.AsString <> '' then begin
       qrLotesUSUARIO_FIM.Value := FMenu.sqlUsuariosNome.Value;
       qrLotesFLAG_FIM.Value := 'S';
   end;


   Panel2.Visible := False;
   if qrLotes.State = dsEdit then
      qrLotes.Post;

   RR_ID := qrBuscaRR_ID.AsInteger;
   Button1.Click;
   qrBusca.Locate('RR_ID', RR_ID, []);
end;

procedure TfrmConsultaLotes.Button5Click(Sender: TObject);
begin
    Panel2.Visible := False;
end;

procedure TfrmConsultaLotes.Button3Click(Sender: TObject);
begin
   frmRelConsultaLotes := TfrmRelConsultaLotes.Create(Self);
   frmRelConsultaLotes.QuickRep1.Preview;
   frmRelConsultaLotes.Close;
end;

procedure TfrmConsultaLotes.edtLeitorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = vk_return then begin
            qrBarras.Close;
            qrBarras.Parameters[0].Value := StrToInt(edtLeitor.Text);
            qrBarras.Open;

            if qrBarras.IsEmpty then begin
               ShowMessage('Material n�o encontrado');
            end
            else
            begin
                qrMatPesq.Locate('MAT_ID', qrBarrasMAT_ID.Value, []);
                cboMateriais.Text := qrMatPesqMAT_DESC.Value;
                cboMateriais.LookupValue := qrBarrasMAT_ID.AsString;
                edtLote.Text := qrBarrasN_LOTE.Value;
                Button1.Click;
            end;



        end;

end;

procedure TfrmConsultaLotes.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if qrBuscaDT_INICIO.AsString <> '' then begin
       DBEdit8.Enabled := False ;
  end
  else
       DBEdit8.Enabled := True;

  if qrBuscaDT_FIM.AsString <> '' then begin
       DBEdit9.Enabled := False;
  end
  else
  DBEdit9.Enabled := True;
end;

end.

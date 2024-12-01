unit ufrmRecebimentoMultimed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, ExtCtrls, Db, DBTables,
  Wwquery;

type
  TfrmRecebimentoMultimed = class(TForm)
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    MaskEdit3: TMaskEdit;
    rbGerado: TRadioButton;
    RadioButton1: TRadioButton;
    Panel2: TPanel;
    btnGerar: TButton;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Q_AUX: TwwQuery;
    UPD_NFAT: TUpdateSQL;
    ComboBox1: TComboBox;
    Label4: TLabel;
    wwDBGrid1: TwwDBGrid;
    Q_NFAT: TwwQuery;
    Q_NFATREC_CODI: TIntegerField;
    Q_NFATNUMERO_FATURAMENTO: TStringField;
    Q_NFATNOTA_FIS: TStringField;
    Q_NFATDATA_FATURAMENTO: TDateTimeField;
    Q_NFATVENCIMENTO: TDateTimeField;
    Q_NFATNOMECONVENIO: TStringField;
    Q_NFATCNPJ: TStringField;
    Q_NFATFINANC_VALOR: TFloatField;
    Q_NFATCLI_CODI: TIntegerField;
    Q_NFATId: TAutoIncField;
    Q_NFATSEL: TStringField;
    Q_NFATValorNF: TFloatField;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    lbTotal: TLabel;
    Q_NFATVALOR: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Q_NFATCalcFields(DataSet: TDataSet);
    procedure Q_NFATSELChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentoMultimed: TfrmRecebimentoMultimed;
  TOTAL : Real;
implementation

uses CPPMENU, ufrmRecebimentoMultimedRel, CPPRECE;

{$R *.DFM}

procedure TfrmRecebimentoMultimed.Button1Click(Sender: TObject);
begin
   TOTAL := 0; 


    with Q_NFAT DO BEGIN

        Close;
        sql.Clear;
        sql.Add('SELECT * '+
                '  FROM N_FAT_MULTIMED A '+
                '  where CONVERT(VARCHAR, DATA_FATURAMENTO, 112) >= '+ QuotedStr(FormatDateTime('yyyyMMdd', StrToDateTime(MaskEdit1.Text))) +
                '  AND CONVERT(VARCHAR, DATA_FATURAMENTO, 112) <= '+ QuotedStr(FormatDateTime('yyyyMMdd', StrToDateTime(MaskEdit2.Text))));
        if MaskEdit3.Text <> '' then
                SQL.Add(' AND NUMERO_FATURAMENTO = ' + QuotedStr(MaskEdit3.Text));

        if ComboBox1.Text <> '' then
                SQL.Add(' and NOMECONVENIO = ' + QuotedStr(ComboBox1.Text));

        if rbGerado.Checked then  begin
                SQL.Add(' AND REC_CODI > 0') ;
                btnGerar.Enabled := False;
        end
        else begin
                SQL.Add(' AND REC_CODI = 0');
                btnGerar.Enabled := True;
        end;
        SQL.Add('ORDER BY VENCIMENTO DESC');
        Open;

    end;
    lbTotal.Caption := 'TOTAL SELECIONADO R$ ' + FormatFloat('###,###,###,##0.00', TOTAL);
    TOTAL := 0;
end;

procedure TfrmRecebimentoMultimed.FormShow(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('dd/MM/yyyy', Now);
  MaskEdit2.Text := FormatDateTime('dd/MM/yyyy', Now);

  with Q_AUX do begin
      Close;
      sql.Clear;
      sql.Add('select distinct nomeconvenio from N_FAT_MULTIMED order by nomeconvenio ');
      Open;
  end;

  ComboBox1.Items.Clear;
  while not Q_AUX.Eof do begin
      ComboBox1.Items.Add(Q_AUX.FieldByName('nomeconvenio').AsString);
      Q_AUX.Next;
  end;

  with Q_AUX do begin
            sql.Clear;
            sql.Add('EXEC STP_GERA_RECEBIMENTO_MULTIMED 0');
            ExecSQL;
        end;

  with Q_AUX do begin
       close;
       sql.Clear;
       sql.Add('UPDATE N_FAT_MULTIMED SET SEL = ' + QuotedStr('N')); 
       ExecSQL;
   end;

end;

procedure TfrmRecebimentoMultimed.btnGerarClick(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Deseja gerar os recebimentos a partir dos valores na tela?', 'Confirmação', MB_YESNO) = 6 then begin
   Q_NFAT.First;

   while not Q_NFAT.Eof do begin
     IF Q_NFATSEL.Value = 'S' then begin
        with Q_AUX do begin
            sql.Clear;
            sql.Add('EXEC STP_GERA_RECEBIMENTO_MULTIMED ' + Q_NFATID.AsString);
            ExecSQL;
        end;
     end;
        Q_NFAT.Next;
   end;

   Button1.Click;

   Q_NFAT.First;

   while not Q_NFAT.Eof do begin
     try
       gs_rece := Q_NFATREC_CODI.AsString;
       if gs_rece <> '0' then begin
         Application.CreateForm(TFRecebimentos, FRecebimentos);
         FRecebimentos.chkSemMensagens.Checked := True;
         FRecebimentos.SpeedButton7.Click;
         FRecebimentos.Release ;
       end;
       Q_NFAT.Next;
     except end;
   end;


   end;
end;

procedure TfrmRecebimentoMultimed.Button2Click(Sender: TObject);
begin
    frmRecebimentoMultimedRel := TfrmRecebimentoMultimedRel.Create(Self);
    frmRecebimentoMultimedRel.QuickRep1.Preview;
end;

procedure TfrmRecebimentoMultimed.Q_NFATCalcFields(DataSet: TDataSet);
begin
   try
       Q_NFATValorNF.AsFloat := Q_NFATVALOR.Value;//StrToFloat(stringreplace(, '.', ',', [rfReplaceAll]) );
       if Q_NFATSEL.Value = 'S' then
        TOTAL := TOTAL + Q_NFATValorNF.AsFloat;

   except

   end;
end;

procedure TfrmRecebimentoMultimed.Q_NFATSELChange(Sender: TField);
var id : Integer;
begin

   if Q_NFATREC_CODI.AsInteger = 0 then begin
   id := Q_NFATId.AsInteger;
   TOTAL := 0;
   with Q_AUX do begin
       close;
       sql.Clear;
       sql.Add('UPDATE N_FAT_MULTIMED SET SEL = ' + QuotedStr(Q_NFATSEL.AsString));
       sql.Add('where id = ' + Q_NFATID.AsString);
       ExecSQL;
   end;

   Button1.Click;
   Q_NFAT.Locate('id', id, []);
   end;
end;

procedure TfrmRecebimentoMultimed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with Q_AUX do begin
       close;
       sql.Clear;
       sql.Add('UPDATE N_FAT_MULTIMED SET SEL = ' + QuotedStr('N'));
                 
       ExecSQL;
   end;
end;

procedure TfrmRecebimentoMultimed.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Q_NFATCLI_CODI.AsString = '' then begin
      ABrush.Color := clRed;
      AFont.Color := clWhite;
  end;
end;

procedure TfrmRecebimentoMultimed.CheckBox1Click(Sender: TObject);
var s : string;
begin
  if CheckBox1.Checked then
        S := 'S'
  ELSE
        S := 'N';

  with Q_AUX do begin
      Close;
      sql.Clear;

        SQL.Add('update N_FAT_MULTIMED set SEL = ' + QuotedStr(S));
        SQL.Add('WHERE ID IN ');

        sql.Add('(SELECT id '+
                '  FROM N_FAT_MULTIMED A '+
                '  where CONVERT(VARCHAR, DATA_FATURAMENTO, 112) >= '+ QuotedStr(FormatDateTime('yyyyMMdd', StrToDateTime(MaskEdit1.Text))) +
                '  AND CONVERT(VARCHAR, DATA_FATURAMENTO, 112) <= '+ QuotedStr(FormatDateTime('yyyyMMdd', StrToDateTime(MaskEdit2.Text))));
        if MaskEdit3.Text <> '' then
                SQL.Add(' AND NUMERO_FATURAMENTO = ' + QuotedStr(MaskEdit3.Text));

        if ComboBox1.Text <> '' then
                SQL.Add(' and NOMECONVENIO = ' + QuotedStr(ComboBox1.Text));

        if rbGerado.Checked then  begin
                SQL.Add(' AND REC_CODI > 0') ;
                btnGerar.Enabled := False;
        end
        else begin
                SQL.Add(' AND REC_CODI = 0');
        end;
        sql.Add(')');
        ExecSQL;
  end;

  Button1.Click;

end;

end.

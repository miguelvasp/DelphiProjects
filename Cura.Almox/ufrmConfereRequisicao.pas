unit ufrmConfereRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Db, ADODB, Qrctrls,
  QuickRpt;

type
  TfrmConfereRequisicao = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    wwDBGrid1: TwwDBGrid;
    Button2: TButton;
    qrBusca: TADOQuery;
    qrBuscaRR_ID: TAutoIncField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaN_Lote: TWideStringField;
    qrBuscaValid: TDateTimeField;
    qrBuscaQtde: TFloatField;
    qrBuscaSEL: TStringField;
    qrBuscaDT_APROVACAO: TDateTimeField;
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    Button3: TButton;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    lbRequisicao: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    edtSol: TEdit;
    Label2: TLabel;
    Button4: TButton;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure qrBuscaSELChange(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure edtSolChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfereRequisicao: TfrmConfereRequisicao;

implementation

uses UMenu, ufrmDivergencia;

{$R *.DFM}

procedure TfrmConfereRequisicao.Button1Click(Sender: TObject);
begin

   IF (Edit1.Text = '') and (edtSol.Text = '') then begin
       ShowMessage('Informe o n�mero da requisi��o');
       Abort;
   end;

    with qrBusca do begin
        Close;
        sql.Clear;
        sql.Add(
          '  SELECT REQ_ID,'+
          '          B.RR_ID,  '+
          '          M.MAT_DESC, '+
          '           B.N_Lote, '+
          '          B.Valid, '+
          '          B.Qtde,  '+
          '          B.SEL, '+
          '          B.DT_APROVACAO '+
          '  FROM Req_Item A INNER JOIN Req_Lote B  '+
          '  ON A.Req_Item_ID = B.Req_Item_ID INNER JOIN MATERIAIS M  '+
          '  ON A.Mat_ID = M.MAT_ID  '+
          ' where 1 = 1 '
        );

        if Edit1.Text <> '' then
                SQL.Add(' and A.REQ_ID =  ' + Edit1.Text);
        if edtSol.Text <> '' then begin
            sql.Add(' AND A.REQ_ID IN (SELECT DISTINCT REQ_ID FROM ITEM_SOLMATERIAL WHERE SOL_ID = ' + edtSol.Text + ')');
        end;

        if RadioGroup1.ItemIndex = 0 then
                SQL.Add(' and B.DT_APROVACAO IS NULL');

        IF RadioGroup1.ItemIndex = 1 then
                SQL.Add(' and b.dt_aprovacao is not null ');

        sql.Add('order by M.MAT_DESC');
        Open;

    end;
end;

procedure TfrmConfereRequisicao.qrBuscaSELChange(Sender: TField);
var A : string;
    RR_ID : Integer;
begin
    RR_ID := qrBuscaRR_ID.AsInteger;
    A := qrBuscaSEL.AsString;
    with qrAux do begin
        close;
        sql.Clear;
        sql.Add('update req_lote set SEL = ' + QuotedStr(A));
        SQL.Add('WHERE RR_ID = ' + qrBuscaRR_ID.AsString);
        ExecSQL;
    end;
    qrBusca.Close;
    qrBusca.Open;
    qrBusca.Locate('RR_ID', RR_ID, []);
end;

procedure TfrmConfereRequisicao.Button2Click(Sender: TObject);
begin
    IF MessageBox(Self.Handle, 'Confirma a opera��o?', 'Confirma��o', MB_YESNO) = 7 then Abort;


    qrBusca.First;
    while not qrBusca.Eof do begin

        if qrBuscaSEL.AsString = 'S' then begin
            with qrAux do begin
                Close;
                SQL.Clear;
                sql.Add('update req_lote set dt_aprovacao = getdate()');
                SQL.Add('where RR_ID = ' + qrBuscaRR_ID.AsString);
                ExecSQL;
            end;
        end;

        qrBusca.Next;
        Application.ProcessMessages;
    end;

    ShowMessage('Atualiza��o efetuada com sucesso!');
    qrBusca.Close;
    qrBusca.Open;

end;

procedure TfrmConfereRequisicao.Button3Click(Sender: TObject);
begin
    lbRequisicao.Caption := 'Requisi��o N�: ' + Edit1.Text;
    QuickRep1.Preview;
end;

procedure TfrmConfereRequisicao.Edit1Change(Sender: TObject);
begin
   edtSol.Text := '';
end;

procedure TfrmConfereRequisicao.edtSolChange(Sender: TObject);
begin
  Edit1.Text := '';
end;

procedure TfrmConfereRequisicao.Button4Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Deseja criar o aviso de diverg�ncia dos itens selecionados?', 'Confirma��o', MB_YESNO) = 7 then
        Abort;

   frmDivergencia := TfrmDivergencia.Create(Self);
   with frmDivergencia do begin
       qrDivergencia.Close;
       qrDivergencia.Parameters[0].Value := 0;
       qrDivergencia.Open;

       qrLocal.Close;
       qrLocal.Open;
       qrLocal.Locate('LOCAL_ID', FMenu.sqlUsuariosLOCAL_ID.AsInteger, []);

       qrDivergencia.Append;
       qrDivergenciaSolicitante.Value := FMenu.sqlUsuariosNOME_COMPLETO.AsString;
       qrDivergenciaData.Value := Date;
       qrDivergenciaLOCAL.Value :=  qrLocalDescricao.Value;
       qrDivergencia.Post;

       qrBusca.First;
       while not qrBusca.Eof do begin
          qrItens.Append;
          qrItensdivId.Value := qrDivergenciadivId.Value;
          qrItensMaterial.Value := qrBuscaMAT_DESC.Value;
          qrItensLote.Value := qrBuscaN_Lote.Value;
          qrItensValidade.Value := qrBuscaValid.Value;
          qrItensQtde.Value := qrBuscaQtde.Value;
          qrItens.Post;

       qrBusca.Next;
       End;

       ShowMessage('Por favor preencha o movito da diverg�ncia');


   end;
   frmDivergencia.Button1.Caption := 'Confirmar';
   frmDivergencia.wwDBGrid1.FixedCols := 4;
   frmDivergencia.wwDBGrid1.ReadOnly := False;
   frmDivergencia.WindowState := wsMaximized;
   frmDivergencia.ShowModal;

end;

end.

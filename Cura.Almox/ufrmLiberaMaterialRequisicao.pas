unit ufrmLiberaMaterialRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook;

type
  TfrmLiberaMaterialRequisicao = class(TForm)
    ADOQuery1: TADOQuery;
    ADOQuery1Req_ID: TAutoIncField;
    ADOQuery1Descricao: TStringField;
    ADOQuery1Data: TDateTimeField;
    ADOQuery1MAT_DESC: TStringField;
    ADOQuery1Qtde: TFloatField;
    ADOQuery1Req_Item_ID: TAutoIncField;
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    ADOQuery2: TADOQuery;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLiberaMaterialRequisicao: TfrmLiberaMaterialRequisicao;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmLiberaMaterialRequisicao.FormCreate(Sender: TObject);
begin
//   ADOQuery1.Open;
   qrLocal.Open;
end;

procedure TfrmLiberaMaterialRequisicao.Button1Click(Sender: TObject);
begin
   if Memo1.Lines.Text = '' then begin
       ShowMessage('Por favor informe a justificativa para libera��o');
       Abort;
   end;

   if Edit1.Text <> FMenu.sqlUsuariosSenha.AsString then begin
       ShowMessage('A senha para libera��o est� incorreta');
       Abort;
   end;

   with ADOQuery2 do begin
       Close;
       SQL.Clear;
       sql.Add(
            ' update req_item set AUTORIZA = ''S'', AUTORIZA_MOTIVO = ' + QuotedStr(Memo1.Lines.Text) +
            ' where req_item_id = ' + ADOQuery1Req_Item_ID.AsString
       );
       ExecSQL;
   end;

   Memo1.Lines.Clear;
   Edit1.Text := '';

   ADOQuery1.close;
   ADOQuery1.Open;


end;

procedure TfrmLiberaMaterialRequisicao.Button2Click(Sender: TObject);
begin
   with ADOQuery1 do begin
       close;
       sql.Clear;
       sql.Add(

     '   SELECT    '+
     '           C.Req_ID,   '+
     '           D.Descricao,  '+
     '           C.Data,   '+
     '           E.MAT_DESC,    '+
     '           A.Qtde,   '+
     '           A.Req_Item_ID   '+
     '   FROM Req_Item A INNER JOIN MATERIAIS B     '+
     '   ON A.Mat_ID = B.MAT_ID inner join Req_Capa c      '+
     '   on a.Req_ID = c.Req_ID INNER JOIN Local D    '+
     '   ON C.LOCAL_ID = D.Local_ID INNER JOIN MATERIAIS E   '+
     '   ON A.Mat_ID = E.MAT_ID    '+
     '   WHERE  B.CONTROLA_GRUPO = ''S''   '+
     '   AND ISNULL(A.AUTORIZA, '''') <> ''S''    '   +
     ' AND CONVERT(VARCHAR, C.DATA, 112) >=  ''20131211'' '
       );

      if cboLocal.Text <> '' then
        sql.Add(' AND C.LOCAL_ID = '+ cboLocal.LookupValue );


       sql.Add('   ORDER BY D.Descricao , C.Data   ') ;
       Open;
   end;
end;

end.

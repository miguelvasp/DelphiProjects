unit ufrmDivergencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Mask, DBCtrls, ExtCtrls;

type
  TfrmDivergencia = class(TForm)
    qrDivergencia: TADOQuery;
    qrDivergenciadivId: TAutoIncField;
    qrDivergenciaSolicitante: TStringField;
    qrDivergenciaData: TDateTimeField;
    qrDivergenciaLOCAL: TStringField;
    qrDivergenciaSTATUS: TStringField;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    qrItens: TADOQuery;
    qrItensitem: TAutoIncField;
    qrItensdivId: TIntegerField;
    qrItensMaterial: TStringField;
    qrItensLote: TStringField;
    qrItensValidade: TDateTimeField;
    qrItensQtde: TFloatField;
    qrItensMotivo: TStringField;
    DataSource2: TDataSource;
    Button1: TButton;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDivergencia: TfrmDivergencia;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmDivergencia.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if FMenu.sqlUsuariosNOME_COMPLETO.AsString = qrDivergenciaSolicitante.AsString then
        Panel2.Visible := True
  else
        Panel2.Visible := False;

  qrItens.Close;
  qrItens.Parameters[0].Value := qrDivergenciadivId.AsInteger;
  qrItens.Open;

  if qrDivergenciaSTATUS.Value = 'Encerrado' then
        Panel2.Visible := False;

end;

procedure TfrmDivergencia.Button1Click(Sender: TObject);
var erro : Boolean;
begin
   erro := False;
   if qrDivergenciaSTATUS.AsString = '' then begin
       qrItens.First;
       while not qrItens.Eof do begin
          if qrItensMotivo.AsString = '' then
                erro := True;
          qrItens.Next;
       end;
       if erro then
          ShowMessage('Informe o motivo de divergência de todos os itens')
       else begin
           if MessageBox(Self.Handle, 'Confirma o envio das divergências para os responsáveis?', 'confirmação', MB_YESNO) = 7 then
              Abort;

           qrDivergencia.Edit;
           qrDivergenciaSTATUS.Value := 'Em Aberto';
           qrDivergencia.Post;

           Self.Close;
       end;
   end;


   if (qrDivergenciaSTATUS.Value = 'Em Aberto') AND (Button1.Caption = 'Concluir') then begin
       if MessageBox(Self.Handle, 'Confirma que todos os itens com divergência foram solucionados?', 'confirmação', MB_YESNO) = 6 then begin
           qrDivergencia.Edit;
           qrDivergenciaSTATUS.Value := 'Encerrada';
           qrDivergencia.Post;
           Panel2.Visible := False;
       end;
   end;


end;

end.

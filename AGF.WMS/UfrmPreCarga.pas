unit UfrmPreCarga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzButton, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db, ADODB,
  RzPanel, DBCtrls;

type
  TfrmPreCarga = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    btnGeraMani: TRzBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    btnApagaNota: TRzBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    btnSeleciona: TRzBitBtn;
    qrHeader: TADOQuery;
    qrHeaderCARGA_ID: TAutoIncField;
    qrHeaderDESCRICAO: TStringField;
    qrHeaderDATA: TDateTimeField;
    qrHeaderCH: TIntegerField;
    qrHeaderSTATUS: TStringField;
    dsHeader: TDataSource;
    qrHeaderNOME: TStringField;
    GridNFE: TwwDBGrid;
    qrItens: TADOQuery;
    dsItens: TDataSource;
    qrItensPRE_ID: TAutoIncField;
    qrItensMARCADOR: TStringField;
    qrItensNFI_CODI: TIntegerField;
    qrItensNFI_NUMERO: TStringField;
    qrItensNFI_DEST_CLI: TIntegerField;
    qrItensNFI_DTENTREGA: TDateTimeField;
    qrItensMUN_ID: TIntegerField;
    qrItensCEP: TStringField;
    qrItensBAIRRO: TStringField;
    qrItensREG_ID: TIntegerField;
    qrItensPESO: TFloatField;
    qrItensVOLUME: TFloatField;
    qrItensQTDE: TFloatField;
    qrItensMANI_ORDEM: TIntegerField;
    qrItensNFI_TRANS: TStringField;
    qrItensSEMESTOQ: TStringField;
    qrItensCH: TIntegerField;
    qrItensCARGA_ID: TIntegerField;
    qrItensNFI_DEST_RAZA: TStringField;
    qrItensMUN_NOME: TStringField;
    qrItensREG_NOME: TStringField;
    qrItensCLIN_RAZA: TStringField;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    qrAux: TADOQuery;
    qrTotais: TADOQuery;
    qrTotaisCARGA_ID: TIntegerField;
    qrTotaisPESO: TFloatField;
    qrTotaisVOLUME: TFloatField;
    qrTotaisQTDE: TFloatField;
    qrTotaisPALLETS: TIntegerField;
    dsTotais: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    STP_MANIFESTA: TADOStoredProc;
    qrHeaderTRANSPORTADOR_NBF: TIntegerField;
    qrHeaderGERA_PARAMETRO: TIntegerField;
    RzBitBtn1: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsHeaderDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure GridNFECalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnSelecionaClick(Sender: TObject);
    procedure btnApagaNotaClick(Sender: TObject);
    procedure btnGeraManiClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreCarga: TfrmPreCarga;

implementation

uses UMenu, UGeraManifesto;

{$R *.DFM}

procedure TfrmPreCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //informa q esta sendo gerada uma precarga
  FMenu.chkPreCarga.Checked := False;

  Action := caFree;
  frmPreCarga := nil;
end;

procedure TfrmPreCarga.dsHeaderDataChange(Sender: TObject; Field: TField);
begin
  qrItens.Close;
  qrItens.Parameters[0].Value := qrHeaderCARGA_ID.Value;
  qrItens.Open;

  qrTotais.Close;
  qrTotais.Parameters[0].Value := qrHeaderCARGA_ID.Value;
  qrTotais.Open;

end;

procedure TfrmPreCarga.FormCreate(Sender: TObject);
begin
  qrHeader.Open;
  //informa q esta sendo gerada uma precarga
  FMenu.chkPreCarga.Checked := True;

end;

procedure TfrmPreCarga.GridNFECalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    if (qrItensSEMESTOQ.asstring <> 'S') then begin
       if not highlight then
            AFONT.COLOR:= CLBLACK ;
       if  highlight then
            AFONT.COLOR:= CLRED ;
       ABrush.color := $00D5FFFF;
    end else begin
       if not highlight then
            AFONT.COLOR:= CLBLACK ;
       if  highlight then
            AFONT.COLOR:= CLRED ;
     ABrush.color := $00A4D0D0
    end ;
end;

procedure TfrmPreCarga.btnSelecionaClick(Sender: TObject);
begin
  CARGA_ID := qrHeaderCARGA_ID.Value;
  Close;
end;

procedure TfrmPreCarga.btnApagaNotaClick(Sender: TObject);
begin
    if MessageBox(Self.Handle, 'Confirma a elimina��o da nota fiscal?', 'Confirma��o', MB_YESNO + MB_ICONQUESTION) = 6 then
    begin

        with qrAux do begin
             Close;
             sql.Clear;
             sql.Add('delete from PRECARGA_PROD WHERE NFI_CODI = ' + qrItensNFI_CODI.AsString);
             ExecSQL;
        end;

        with qrAux do begin
             Close;
             sql.Clear;
             sql.Add('delete from PRE_CARGA WHERE PRE_ID = ' + qrItensPRE_ID.AsString);
             ExecSQL;
        end;
        qrItens.Close;
        qrItens.Open;
        qrTotais.Close;
        qrTotais.Parameters[0].Value := qrHeaderCARGA_ID.Value;
        qrTotais.Open;
    end;
end;

procedure TfrmPreCarga.btnGeraManiClick(Sender: TObject);
begin

   TRANSPORTADOR_NBF := qrHeaderTRANSPORTADOR_NBF.Value;
   GERA_PARAMETRO := qrHeaderGERA_PARAMETRO.Value;
   GERA_CARGA_ID := qrHeaderCARGA_ID.Value;


   STP_MANIFESTA.Parameters[0].Value  := FMenu.SqlUsuariosCH.Value;
   STP_MANIFESTA.Parameters[1].Value := qrHeaderCARGA_ID.Value;
   STP_MANIFESTA.Prepared := True;
   STP_MANIFESTA.ExecProc;

   Application.Createform(TFGeraManifesto, FGeraManifesto);
   FGeraManifesto.RzBitBtn1.Enabled := False;
   FGeraManifesto.RzBitBtn2.Enabled := False;
   FGeraManifesto.BitBtn1.Click;
   FGeraManifesto.ShowModal;
   FGeraManifesto.Release;

   GERA_CARGA_ID := 0;

end;

procedure TfrmPreCarga.RzBitBtn1Click(Sender: TObject);
begin
  if MessageBox(Self.Handle, 'Deseja apagar a pr�-carga?', 'Confirma��o', MB_YESNO + MB_ICONQUESTION) = 6 then
   begin
        with qrAux do begin
             Close;
             sql.Clear;
             sql.Add('delete from PRECARGA_PROD WHERE CARGA_ID = ' + qrHeaderCARGA_ID.AsString);
             ExecSQL;
        end;

        with qrAux do begin
             Close;
             sql.Clear;
             sql.Add('delete from PRE_CARGA WHERE PRE_ID = ' + qrHeaderCARGA_ID.AsString);
             ExecSQL;
        end;


        with qrAux do begin
             Close;
             sql.Clear;
             sql.Add('delete from PRE_CARGA_HEADER WHERE CARGA_ID = '+ qrHeaderCARGA_ID.AsString);
             ExecSQL;
        end;

        qrHeader.Close;
        qrHeader.Open;

   end;
end;

end.


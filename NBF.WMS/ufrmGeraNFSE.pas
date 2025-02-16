unit ufrmGeraNFSE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, ADODB;

type
  TfrmGeraNFSE = class(TForm)
    lbl1: TLabel;
    wwDBGrid1: TwwDBGrid;
    btn1: TButton;
    btn2: TButton;
    qrygera: TADOQuery;
    qrygeraID: TAutoIncField;
    qrygeraORD_ID: TIntegerField;
    qrygeraDOCUMENTO: TStringField;
    qrygeraVALOR: TFloatField;
    qrygeraSTATUS: TStringField;
    ds1: TDataSource;
    qryApaga: TADOQuery;
    qrygeraItem: TStringField;
    qryConfig: TADOQuery;
    qryConfigid: TAutoIncField;
    qryConfigUF_ORIGEM: TStringField;
    qryConfigUF_DESTINO: TStringField;
    qryConfigFRETE: TStringField;
    qryConfigSEGURO: TStringField;
    qryConfigPEDAGIO: TStringField;
    qryConfigDESPACHO: TStringField;
    qryConfigDESCARGA: TStringField;
    lblOrdId: TLabel;
    sp1: TADOStoredProc;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraNFSE: TfrmGeraNFSE;

implementation

uses UMenu, UConsOCE;

{$R *.DFM}

procedure TfrmGeraNFSE.btn2Click(Sender: TObject);
begin
  qryApaga.Parameters[0].Value := StrToInt(lblOrdId.Caption);
  qryApaga.ExecSQL;
  Self.Close;
end;

procedure TfrmGeraNFSE.btn1Click(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Deseja emitir os documentos acima listados? Os dados da OE ser�o confirmados e n�o poder� mais alterar as informa��es.', 'Confirma��o', MB_YESNO) = 6 then begin
     with FConsOCE do begin
       cdsOCE.edit;
       {if qryConfigFRETE.Value <> 'CTe' then
          cdsOCEORD_VLR_FRETE.AsFloat := 0;

       if qryConfigDESPACHO.Value <> 'CTe' then
          cdsOCEORD_VLR_DESPACHO.asfloat := 0;

       if qryConfigPEDAGIO.Value <> 'CTe' then
          cdsOCEORD_VLR_PEDAGIO.asfloat := 0;

       if qryConfigSEGURO.Value <> 'CTe' then
          cdsOCEORD_SEGURO.asfloat := 0;

       if qryConfigDESCARGA.Value <> 'CTe' then
          cdsOCEORD_TXENTREGA.asfloat := 0;  }

       cdsOCEGEROU_NFSE.Value := 'S';
       cdsOCEORD_DATA.Value := Now;
       cdsOCE.Post;

       //BitBtn3.Click;
       btnGerarNFSE.Visible := False;

      end;



       //executa a nota 1
       sp1.Parameters[0].Value := StrToInt(lblOrdId.Caption);
       sp1.Parameters[1].Value := 'NFSE 1';
       sp1.ExecProc;

       //executa a nota 2
       sp1.Parameters[0].Value := StrToInt(lblOrdId.Caption);
       sp1.Parameters[1].Value := 'NFSE 2';
       sp1.ExecProc;

       //executa a nota 3
       sp1.Parameters[0].Value := StrToInt(lblOrdId.Caption);
       sp1.Parameters[1].Value := 'NFSE 3';
       sp1.ExecProc;

       FConsOCE.btnConfirmaValores.Click;

       ShowMessage('Dados gerados com sucesso!');
       Self.Close;
      

   end;

   //ap�s executar altera o valor do CTe



end;

end.

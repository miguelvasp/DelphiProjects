unit UNFRetornoSimb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdblook, StdCtrls, Mask, Buttons, DBTables, Db, Wwdatsrc,
  Wwquery, Grids, Wwdbigrd, Wwdbgrid, wwstorep, ComCtrls, Gauges, ADODB;

type
  TFNFRetornoSimb = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBGrid4: TwwDBGrid;
    Q_NF2: TwwQuery;
    Q_NF2NFI_DEMI: TDateTimeField;
    Q_NF2CLIF_RAZA: TStringField;
    Q_NF2NFI_DTENTREGA: TDateTimeField;
    Q_NF2NFI_NUMERO: TStringField;
    Q_NF2NFI_DEST_CLI: TIntegerField;
    Q_NF2NFI_CODI: TAutoIncField;
    DS_NF2: TwwDataSource;
    UPD_NF2: TUpdateSQL;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    Q_NF2NFI_MARCADOR_NFRS: TStringField;
    SpeedButton1: TSpeedButton;
    BitBtn3: TBitBtn;
    Q_NF2OS_Id: TIntegerField;
    Q_AUX: TwwQuery;
    RadioGroup1: TRadioGroup;
    STP_NFRS: TwwStoredProc;
    Q_NF2NFI_NFRS_REJEITADA: TStringField;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    wwDBGrid2: TwwDBGrid;
    Label2: TLabel;
    Q_NFRS: TwwQuery;
    Q_NFRSQTDE_NFS: TFloatField;
    Q_NFRSQTDE_NFE: TFloatField;
    Q_NFRSPRO_DESC: TStringField;
    DS_NFRS: TwwDataSource;
    Q_NFRSPRO_COD: TStringField;
    Q_NFRS2: TwwQuery;
    DS_NFRS2: TwwDataSource;
    Q_NFRS2PRO_Id: TIntegerField;
    Q_NFRS2NFI_NUMERO: TStringField;
    BitBtn1: TBitBtn;
    RadioGroup2: TRadioGroup;
    Q_NFRSPRO_ID: TIntegerField;
    Q_NFRS2NFI_DEMI: TDateTimeField;
    Q_NFRS2NFRS_REJEITADA: TStringField;
    Q_NFRS2QTDE_NFS: TFloatField;
    Label47: TLabel;
    Label48: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    STP_NF: TwwStoredProc;
    Q_CLINBFCLIN_CGCCPF: TStringField;
    Grid: TwwDBGrid;
    Animate1: TAnimate;
    Panel1: TPanel;
    Q_AUX2: TwwQuery;
    Q_CLINBFUF_SIGLA: TStringField;
    btNem: TBitBtn;
    BitBtn2: TBitBtn;
    qrAtualizaSaldo: TwwQuery;
    btnAtualizaSaldo: TButton;
    qrAux: TADOQuery;
    qrCliente: TADOQuery;
    qrNF: TADOQuery;
    qrNFNFI_CODI: TAutoIncField;
    qrNFNFI_NUMERO: TStringField;
    qrNFTDOC_ID: TIntegerField;
    qrNFNFI_EMIT_ORIG: TStringField;
    qrNFNFI_EMIT_CLI: TIntegerField;
    qrNFNFI_DEST_ORIG: TStringField;
    qrNFNFI_DEST_CLI: TIntegerField;
    qrNFNFI_DEST_NOME: TStringField;
    qrNFNFI_DEST_RAZA: TStringField;
    qrNFNFI_DEST_ENDERECO: TStringField;
    qrNFNFI_DEST_COMPL: TStringField;
    qrNFNFI_DEST_BAIRRO: TStringField;
    qrNFNFI_DEST_UF_SIGLA: TStringField;
    qrNFNFI_DEST_CEP: TStringField;
    qrNFNFI_DEST_TEL: TStringField;
    qrNFNFI_DEST_FAX: TStringField;
    qrNFNFI_DEST_CGC: TStringField;
    qrNFNFI_DEST_INSCRG: TStringField;
    qrNFNFI_DEST_INSCTRB: TStringField;
    qrNFNFI_DEST_PESS: TStringField;
    qrNFNFI_VDES: TFloatField;
    qrNFNFI_VFRE: TFloatField;
    qrNFNFI_VSEG: TFloatField;
    qrNFNFI_BIPI: TFloatField;
    qrNFNFI_VIPI: TFloatField;
    qrNFNFI_BICM: TFloatField;
    qrNFNFI_VICM: TFloatField;
    qrNFNFI_VMER: TFloatField;
    qrNFNFI_TOTA: TFloatField;
    qrNFNFI_DSAI: TDateTimeField;
    qrNFNFI_HSAI: TDateTimeField;
    qrNFNFI_TRAN: TStringField;
    qrNFNFI_PLAC: TStringField;
    qrNFNFI_UF_SIGLA: TStringField;
    qrNFNFI_MARC: TStringField;
    qrNFNFI_QTDE: TIntegerField;
    qrNFNFI_ESPE: TStringField;
    qrNFNFI_PLIQ: TFloatField;
    qrNFNFI_PBRU: TFloatField;
    qrNFNFI_VOL: TFloatField;
    qrNFNFI_TFRE: TStringField;
    qrNFNFI_DEMI: TDateTimeField;
    qrNFCFA_ID: TIntegerField;
    qrNFOS_ID: TIntegerField;
    qrNFMUN_ID: TIntegerField;
    qrNFNFI_MARCADOR: TStringField;
    qrNFNFI_DTENTREGA: TDateTimeField;
    qrNFMANI_ID: TIntegerField;
    qrNFMANI_ORDEM: TIntegerField;
    qrNFNFI_MOVESTQ: TStringField;
    qrNFNFI_TRANS: TStringField;
    qrNFTEXTO_LIVRE: TMemoField;
    qrNFNFI_DTENTREGA_FIM: TDateTimeField;
    qrNFNFI_ENTREGA: TStringField;
    qrNFNFI_COBRAR: TStringField;
    qrNFNFI_CLONE: TStringField;
    qrNFNFI_QTDEPALLET: TIntegerField;
    qrNFNFI_QTDEUV: TFloatField;
    qrNFTPRO_ID: TIntegerField;
    qrNFNFI_MARCADOR_NFRS: TStringField;
    qrNFNFI_NFRS_REJEITADA: TStringField;
    qrNFNFI_RETORNADA: TStringField;
    qrNFNFI_GEROUNFE: TStringField;
    qrNFNFI_REDESPACHO: TStringField;
    qrNFORD_ID: TIntegerField;
    qrNFTRANS_ID: TIntegerField;
    qrNFNFI_PRESTSERV: TStringField;
    qrNFNFI_FATURADA: TStringField;
    qrNFNFI_DISCRIM: TStringField;
    qrNFFAT_ID: TIntegerField;
    qrNFNFI_MARCAREEN: TStringField;
    qrNFNFI_STATUS: TStringField;
    qrNFNFI_MARCAIMP: TStringField;
    qrNFNFI_CODI_ORIGINOUNFRS: TIntegerField;
    qrNFNFI_LOAD: TStringField;
    qrNFNFI_SERIE: TStringField;
    qrNFNFI_MARCADOR_CROS: TStringField;
    qrNFNFI_EXCLUI_REEN: TStringField;
    qrNFNFI_MARCADOR_CTRCGEN: TStringField;
    qrNFNFI_GEROU_REENTREGA: TStringField;
    qrNFBLOQUEIO: TStringField;
    qrNFSEL: TStringField;
    qrNFCOD_EDI: TStringField;
    qrNFNFI_CODI_SIMB: TIntegerField;
    qrItensGeracao: TADOQuery;
    qrItensGeracaoPRO_ID: TIntegerField;
    qrItensGeracaoQTDE: TFloatField;
    qrItensGeracaoNFI_EMIT_CLI: TIntegerField;
    qrADDItem: TADOQuery;
    qrItensEntrada: TADOQuery;
    qrItensEntradaNFI_CODI: TIntegerField;
    qrItensEntradaINF_QTDE: TFloatField;
    qrItensEntradaINF_CODI: TAutoIncField;
    qrItensEntradaINF_PUNI: TFloatField;
    qrItensEntradaINF_QTDERETORNADA: TFloatField;
    qrADDItemINF_CODI: TAutoIncField;
    qrADDItemINF_ITEM: TIntegerField;
    qrADDItemNFI_CODI: TIntegerField;
    qrADDItemPRO_ID: TIntegerField;
    qrADDItemPRO_COD: TStringField;
    qrADDItemPRO_DESC: TStringField;
    qrADDItemINF_QTDE: TFloatField;
    qrADDItemINF_PUNI: TFloatField;
    qrADDItemINF_AIPI: TFloatField;
    qrADDItemINF_VIPI: TFloatField;
    qrADDItemINF_TOTA: TFloatField;
    qrADDItemINF_PESOLIQ: TFloatField;
    qrADDItemINF_PESO: TFloatField;
    qrADDItemINF_VOL: TFloatField;
    qrADDItemINF_AICM: TFloatField;
    qrADDItemINF_BICM: TFloatField;
    qrADDItemINF_VICM: TFloatField;
    qrADDItemUVEN_ID: TIntegerField;
    qrADDItemINF_QTDERETORNADA: TFloatField;
    qrADDItemINF_NFE: TIntegerField;
    qrADDItemINF_QTDERETORNADASALDO: TFloatField;
    qrADDItemESTQ_LOTE1: TStringField;
    qrADDItemESTQ_LOTE1_QTDE: TFloatField;
    qrADDItemESTQ_LOTE2: TStringField;
    qrADDItemESTQ_LOTE2_QTDE: TFloatField;
    qrADDItemINF_CST: TStringField;
    qrProduto: TADOQuery;
    qrProdutoPRO_ID: TAutoIncField;
    qrProdutoCLIN_ID: TIntegerField;
    qrProdutoPRO_DESC: TStringField;
    qrProdutoTPRO_ID: TIntegerField;
    qrProdutoPRO_COD: TStringField;
    qrProdutoPRO_ORIGEM: TStringField;
    qrProdutoUVEN_ID: TIntegerField;
    qrProdutoUVEN_ID_EXP: TIntegerField;
    qrProdutoQTDE_UVUE: TFloatField;
    qrProdutoPRO_QTDE_PALLET: TIntegerField;
    qrProdutoPRO_QTDE_PALLETUV: TFloatField;
    qrProdutoPRO_PESO: TFloatField;
    qrProdutoPRO_VOLUME: TFloatField;
    qrProdutoPRO_VOLUME_PALLET: TFloatField;
    qrProdutoPRO_ALTURA: TIntegerField;
    qrProdutoPRO_LASTRO: TIntegerField;
    qrProdutoPRO_VALIDDIAS: TIntegerField;
    qrProdutoMARCADOR: TStringField;
    qrProdutoPRO_PESO_LIQ: TFloatField;
    qrProdutoPRO_DESCONTINUA: TStringField;
    qrProdutoPRO_COMPR: TFloatField;
    qrProdutoPRO_LARG: TFloatField;
    qrProdutoPRO_ALT: TFloatField;
    qrProdutoPRO_REDUZICMS: TFloatField;
    qrProdutoPRO_ISENCAO: TStringField;
    qrProdutoPRO_ICMS: TFloatField;
    qrProdutoPRO_CST1: TStringField;
    qrProdutoPRO_CST2: TStringField;
    qrProdutoPRO_CST3: TStringField;
    qrProdutoPRO_CST4: TStringField;
    qrProdutoPRO_CST5: TStringField;
    qrProdutoPRO_CST6: TStringField;
    qrProdutoULTIMO_PRECO: TFloatField;
    qrItensEntradaNFI_NUMERO: TStringField;
    qrAux2: TADOQuery;
    qrVerificaQtde: TADOQuery;
    qrItensEntradaNFI_DEMI: TDateTimeField;
    qrClienteCLIF_ID: TAutoIncField;
    qrClienteCLIF_PESSOA: TStringField;
    qrClienteCLIF_RAZA: TStringField;
    qrClienteCLIF_NOME: TStringField;
    qrClienteCLIF_CGCCPF: TStringField;
    qrClienteCLIF_INSCRG: TStringField;
    qrClienteCLIF_ENDERECO: TStringField;
    qrClienteCLIF_ENDERECO_COMPL: TStringField;
    qrClienteCLIF_ENDERECO_BAIRRO: TStringField;
    qrClienteCLIF_MUNICIPIO: TStringField;
    qrClienteCLIF_MUNICIPIO2: TStringField;
    qrClienteUF_SIGLA: TStringField;
    qrClienteCLIF_CEP: TStringField;
    qrClienteCLIF_TEL1: TStringField;
    qrClienteCLIF_TEL2: TStringField;
    qrClienteCLIF_FAX: TStringField;
    qrClienteCLIF_EMAIL: TStringField;
    qrClienteCLIF_CONTATO: TStringField;
    qrClienteMUN_ID: TIntegerField;
    qrClienteCLIF_CARGAPALLET: TStringField;
    qrClienteCLIE_ENDERECO: TStringField;
    qrClienteCLIE_ENDERECO_COMPL: TStringField;
    qrClienteCLIE_ENDERECO_BAIRRO: TStringField;
    qrClienteCLIE_MUNICIPIO: TStringField;
    qrClienteCLIE_MUN_ID: TIntegerField;
    qrClienteCLIE_UF_SIGLA: TStringField;
    qrClienteCLIE_CEP: TStringField;
    qrClienteCLI_HORARIO: TStringField;
    qrClienteCLI_VL_DESCARGA: TFloatField;
    qrClienteCLI_OBS: TStringField;
    qrClienteCLI_UNCOBRACA: TStringField;
    qrClienteIBGE_ID: TIntegerField;
    qrParametros: TADOQuery;
    qrParametrosPAR_UF_SIGLA: TStringField;
    btn1: TButton;
    qryNFSimb: TADOQuery;
    qryNFSimbNFI_CODI: TIntegerField;
    qryNFSimbCH: TIntegerField;
    lblNotaId: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBGrid4CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Q_NF2NFI_MARCADOR_NFRSChange(Sender: TField);
    procedure Q_NF2AfterPost(DataSet: TDataSet);

    procedure GeraRetorno;
    procedure AddItem;
    procedure BitBtn2Click(Sender: TObject);
    procedure btNemClick(Sender: TObject);
    procedure btnAtualizaSaldoClick(Sender: TObject);
    function verificaQtde(Saida, Retorno: Real; NFI_Codi, Pro_id  : Integer) : Boolean;
    procedure btn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNFRetornoSimb: TFNFRetornoSimb;
  RETORNOSIMB : string ;
  qtde_Item_bx : Real;
  contador : Integer;
  implementation
uses USENHA,Umenu, UNF ; 

{$R *.DFM}

procedure TFNFRetornoSimb.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

function TFNFRetornoSimb.verificaQtde(Saida, Retorno: Real; NFI_Codi, Pro_id : Integer) : Boolean;
var Erro : Boolean;
TotalSaida :Real;
begin
    Erro := False;

    with qrVerificaQtde do begin
        Close;
        sql.Clear;
        sql.Add('SELECT SUM(INF_QTDE) AS QTD FROM NF_ITENS') ;
        sql.add('where nfi_codi = ' + IntToStr(NFI_Codi));
        sql.Add('and pro_id = ' + IntToStr(Pro_id));
        Open;
    end;

    TotalSaida := qrVerificaQtde.FieldByName('qtd').AsFloat + Retorno;

    if TotalSaida > Saida then
        Erro := True;



     Result := Erro;


end;
procedure TFNFRetornoSimb.GeraRetorno;
var
  notas : WideString;
  valor,  PesoLiq, PesoBru, Qtde, QtdeBx : Real;
  mes : string;
  CNPJ : string;
begin

  if FMenu.ADOConnection.Connected = False then
        FMenu.ADOConnection.Connected := True;

        
 // FMenu.ADOConnection.BeginTrans;

  try

  //buscamos as notas fiscais para colocar na obs
  with qrAux do begin
      close;
      sql.Clear;
      sql.Add(
       ' SELECT distinct B.NFI_NUMERO '                                      +
       ' from NFRS_PRODUTO A INNER JOIN NF B ON A.NFI_CODI_SAI = B.NFI_CODI ' +
       ' WHERE (CASE WHEN B.NFI_NFRS_REJEITADA IS NULL THEN '''' ELSE B.NFI_NFRS_REJEITADA END) <> ''*'' '
      );

      if lblNotaId.Caption <> '0' then
        sql.Add(' and B.NFI_CODI = ' + lblNotaId.Caption);

      Open;
  end;

  notas := '';
  while not qrAux.Eof do begin
      notas := notas + qrAux.FieldByName('NFI_NUMERO').AsString + '/';
      qrAux.Next;
  end;


  WITH qrAux DO begin
      CLOSE;
      SQL.Clear;
      SQL.Add(
        'SELECT CLIN_CGCCPF FROM CLIENTENBF WHERE CLIN_ID = ' + Q_CLINBFCLIN_ID.AsString
      );
      Open;
  end;

  CNPJ := '%' + qrAux.FIELDBYNAME('CLIN_CGCCPF').AsString ;

  //Adicionamos a nota fiscal de retorno simbolico
  qrCliente.Close;
  qrCliente.Parameters[0].Value := CNPJ;
  qrCliente.Open;

  qrNF.Close;
  qrNF.Open;
  qrNF.Append;

  with qrAux do begin
      close;
      sql.Clear;
      sql.Add('SELECT  ULT_NFPROV + 1 as ULT_NFPROV, CLIN_ID from PARAMETRO');
      Open;
  end;


  qrNFNFI_NUMERO.Value :=   qrAux.FieldByName('ULT_NFPROV').AsString + '-P';
  qrNFTDOC_ID.Value :=  14;
  qrNFNFI_EMIT_CLI.Value := qrAux.FieldByName('CLIN_ID').AsInteger;
  qrNFNFI_DEST_CLI.Value :=  qrClienteCLIF_ID.Value;
  qrNFNFI_DEST_RAZA.Value := qrClienteCLIF_RAZA.Value;
  qrNFNFI_DEST_ENDERECO.Value :=  qrClienteCLIF_ENDERECO.Value;
  qrNFNFI_DEST_COMPL.Value :=  qrClienteCLIF_ENDERECO_COMPL.Value;
  qrNFNFI_DEST_BAIRRO.Value := qrClienteCLIF_ENDERECO_BAIRRO.Value;
  qrNFNFI_DEST_UF_SIGLA.Value :=  qrClienteUF_SIGLA.Value;
  qrNFNFI_DEST_CEP.Value :=  qrClienteCLIF_CEP.Value;
  qrNFNFI_DEST_TEL.Value :=  qrClienteCLIF_TEL1.Value;
  qrNFNFI_DEST_FAX.Value :=  qrClienteCLIF_TEL2.Value;
  qrNFNFI_DEST_CGC.Value :=  qrClienteCLIF_CGCCPF.Value;
  qrNFNFI_DEST_INSCRG.Value := qrClienteCLIF_INSCRG.Value;
  qrNFNFI_DEST_INSCTRB.Value := '';
  qrNFNFI_DEST_PESS.Value := qrClienteCLIF_PESSOA.Value;
  qrNFNFI_VDES.Value :=  0;
  qrNFNFI_VFRE.Value :=  0;
  qrNFNFI_VSEG.Value :=  0;
  qrNFNFI_BIPI.Value :=  0;
  qrNFNFI_VIPI.Value :=  0;
  qrNFNFI_BICM.Value :=  0;
  qrNFNFI_VICM.Value :=  0;
  qrNFNFI_VMER.Value :=  0;
  qrNFNFI_TOTA.Value :=  0;
  qrNFNFI_PLIQ.Value :=  0;
  qrNFNFI_PBRU.Value :=  0;
  qrNFNFI_DEMI.Value :=  Now;
  qrNFNFI_TFRE.Value := '2' ;



//COMENTADA LINHA Q FIXA EM SP
//  IF qrClienteUF_SIGLA.Value = 'SP' then
  IF qrClienteUF_SIGLA.Value = qrParametrosPAR_UF_SIGLA.AsString then
     qrNFCFA_ID.Value := 598
  else
     qrNFCFA_ID.Value := 816;
  qrNFMUN_ID.Value :=  qrClienteMUN_ID.Value;
  qrNFNFI_TRANS.Value :=  'N';
  qrNFNFI_CLONE.Value :=  'N';
  qrNFNFI_COBRAR.Value := 'N';
  qrNFNFI_SERIE.Value := '2';//NOTA ELETRONICA
  qrNFNFI_RETORNADA.Value := 'N';
  qrNFNFI_MOVESTQ.Value := 'N';
  qrNFNFI_DISCRIM.Value := notas;
  qrNFNFI_STATUS.Value := 'A';

  qrNF.Post;


  //atualizamos o contador de notas provisorias nos parametros

  with qrAux do begin
      close;
      sql.Clear;
      sql.Add('update PARAMETRO SET  ULT_NFPROV = ULT_NFPROV + 1');
      ExecSQL;
  end;

  contador := 0;
  //adicionamos os itens
  qrItensGeracao.Close;
  qrItensGeracao.sql.Clear;
  qrItensGeracao.sql.Add(
    '  SELECT A.PRO_ID,SUM(a.QTDE_NFS) AS QTDE,B.NFI_EMIT_CLI FROM '+
    '  NFRS_PRODUTO A,NF B (NOLOCK) where '+
    '  (CASE WHEN B.NFI_NFRS_REJEITADA IS NULL THEN '''' ELSE B.NFI_NFRS_REJEITADA END)  = ''''  '+
    '  and A.NFI_CODI_SAI = B.NFI_CODI    ' );
   if lblNotaId.Caption <> '0' then
        qrItensGeracao.sql.Add(' and B.NFI_CODI = ' + lblNotaId.Caption);

  qrItensGeracao.sql.Add(
    ' group by a.PRO_ID,B.NFI_EMIT_CLI   '+
    ' order by A.PRO_ID ');

  qrItensGeracao.Open;
  while not qrItensGeracao.Eof do begin

                //buscamos notas de entrada
                qrItensEntrada.Close;
                qrItensEntrada.Parameters[0].Value := qrItensGeracaoPRO_ID.Value;
                qrItensEntrada.Open;

                Qtde := qrItensGeracaoQTDE.Value;

                while not qrItensEntrada.Eof do begin
                        QtdeBx := qrItensEntradaINF_QTDE.Value - qrItensEntradaINF_QTDERETORNADA.Value;
                        if Qtde > 0 then begin


                              //verifica se a quantidade em nf entrada atende a solicitada para retorno
                              if QtdeBx >= Qtde then
                                  qtde_Item_bx := Qtde
                              else
                                  qtde_Item_bx := QtdeBx;

                              Qtde := Qtde - qtde_Item_bx;
                              AddItem;
                              with qrAux2 do begin
                                      Close;
                                      sql.Clear;
                                      sql.Add(

                                      ' UPDATE NF_ITENS SET INF_QTDERETORNADA = ' + StringReplace(FloatToStr(qtde_Item_bx), ',', '.', [rfReplaceAll]) + ' + INF_QTDERETORNADA '  +
                                      ' WHERE INF_CODI = ' + qrItensEntradaINF_CODI.AsString +
                                      ' AND PRO_ID = ' + qrItensGeracaoPRO_ID.AsString
                                      );
                                      ExecSQL;
                              end;
                        end;//end inf qtde > 0
                        qrItensEntrada.Next;
                end; //end while itens entrada
      qrItensGeracao.next;
  end; //end while qritensgeracao

  //GERAMOS OS TOTAIS DA NOTA FISCAL

  WITH qrAux do begin
      close;
      sql.Clear;
      SQL.Add('SELECT SUM(INF_QTDE) AS QTD, SUM(INF_QTDE * INF_PUNI) AS TOTAL, ');
      SQL.Add('SUM(INF_PESO) AS PBRU, SUM(INF_PESOLIQ) AS PLIQ FROM NF_ITENS');
      SQL.Add('WHERE NFI_CODI = ' + qrNFNFI_CODI.AsString);
      Open;
  end;

  qrNF.Edit;
  qrNFNFI_VMER.Value := qrAux.FieldByName('TOTAL').AsFloat;
  qrNFNFI_TOTA.Value := qrAux.FieldByName('TOTAL').AsFloat;
  qrNFNFI_QTDEUV.Value :=  qrAux.FieldByName('QTD').AsInteger;
  qrNFNFI_PLIQ.Value :=  qrAux.FieldByName('PLIQ').AsFloat;
  qrNFNFI_PBRU.Value :=  qrAux.FieldByName('PBRU').AsFloat;
  qrNF.Post;



  with qrAux do begin
      close;
      sql.Clear;
      sql.Add(
       ' SELECT distinct B.NFI_CODI '                                      +
       ' from NFRS_PRODUTO A INNER JOIN NF B ON A.NFI_CODI_SAI = B.NFI_CODI ' +
       ' WHERE (CASE WHEN B.NFI_NFRS_REJEITADA IS NULL THEN '''' ELSE B.NFI_NFRS_REJEITADA END) <> ''*'' '
      );
      Open;
  end;

  //ADICIONAMOS O NUMERO DA NF DE RETORNO NAS NOTAS DE SAIDA 
  WHILE NOT qrAux.Eof do begin
      with qrAux2 do begin
            close;
            sql.Clear;
            sql.Add('UPDATE NF SET NFI_CODI_SIMB = ' + qrNFNFI_CODI.AsString );
            SQL.Add(', NFI_RETORNADA = ''S''  WHERE NFI_CODI = ' + qrAux.FieldByName('NFI_CODI').AsString);
            ExecSQL;
      end;
      qrAux.Next;
  end;
  //verificamos as qtdes
  qrItensGeracao.First;
  while not qrItensGeracao.Eof do begin
        with qrAux do begin
            close;
            sql.Clear;
            sql.Add('SELECT PRO_COD, SUM(INF_QTDE) AS QTD FROM NF_ITENS WHERE NFI_CODI = ' + qrNFNFI_CODI.AsString);
            SQL.Add('AND PRO_ID = ' + qrItensGeracaoPRO_ID.AsString);
            SQL.Add('GROUP BY PRO_COD' );
            Open;
        end;
        mes := '';
        mes := 'Erro: Produto: '+qraux.fieldByName('PRO_COD').AsString + ', quantidade em notas de sa�da: ' + qrItensGeracaoQTDE.AsString;
        mes := mes + ' quantidade gerada: ' +  qrAux.FieldByName('qtd').AsString ;

        IF qrItensGeracaoQTDE.AsInteger <> qrAux.FieldByName('qtd').AsInteger then begin
            ShowMessage(mes);
            //FMenu.ADOConnection.RollbackTrans;
            Abort;
        end;
        qrItensGeracao.Next;
  end;




  //fechamos os datasets?
  qrAux.close;
  qrAux2.Close;
  qrCliente.close;
  qrItensEntrada.close;
  qrNF.close;
  qrItensGeracao.close;
  qrADDItem.close;
  qrProduto.Close;



  BitBtn1.Enabled := False;

  




  //FMenu.ADOConnection.CommitTrans;
  if lblNotaId.Caption = '0' then
      ShowMessage('Retorno Simbolico gerado com sucesso!!');


   except
     on e : Exception do
     begin
       ShowMessage('Aconteceu um erro: ' + e.Message);
      // FMenu.ADOConnection.RollbackTrans;
     end
   end;



end;





procedure TFNFRetornoSimb.AddItem;
begin
    if qrADDItem.Active = False then begin
        qrADDItem.Open;
    end;

    qrProduto.Close;
    qrProduto.Parameters[0].Value := qrItensGeracaoPRO_ID.Value;
    qrProduto.Open;

    Inc(contador);
    qrADDItem.Append;
    qrADDItemNFI_CODI.Value :=  qrNFNFI_CODI.Value;
    qrADDItemPRO_ID.Value :=   qrItensGeracaoPRO_ID.Value;
    qrADDItemPRO_COD.Value :=  qrProdutoPRO_COD.Value;
    qrADDItemPRO_DESC.Value :=  Copy(qrProdutoPRO_DESC.Value, 1, 40) + '  NFE ' + qrItensEntradaNFI_NUMERO.Value;
    qrADDItemINF_QTDE.Value :=  qtde_Item_bx;
    qrADDItemINF_NFE.Value :=   qrItensEntradaNFI_CODI.Value;
    qrADDItemINF_PUNI.Value :=  qrItensEntradaINF_PUNI.Value;
    qrADDItemINF_TOTA.Value :=  qtde_Item_bx * qrItensEntradaINF_PUNI.Value;
    qrADDItemINF_PESOLIQ.Value :=  qrProdutoPRO_PESO_LIQ.Value;
    qrADDItemINF_PESO.Value :=   qrProdutoPRO_PESO.Value;
    qrADDItemUVEN_ID.Value :=  qrProdutoUVEN_ID.Value;
    qrADDItemINF_ITEM.Value :=  contador;
    qrADDItemINF_CST.Value :=  '';
    qrADDItem.post;

end;



procedure TFNFRetornoSimb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_NF2.close ;
  Q_CLINBF.close ;
  Q_NFRS.close;
  Q_NFRS2.close ;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE FROM  NFRS_PRODUTO');
  Q_aux.ExecSql;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE FROM NFRS_DEFINITIVA');
  Q_aux.ExecSql;

  action := cafree ;
end;

procedure TFNFRetornoSimb.SpeedButton1Click(Sender: TObject);
var
  VENCI : Tdatetime ;
begin
    VENCI :=  0.0 ;

    
    if MaskEdit1.text <> '  /  /    ' then
      VENCI  := strtodate(MaskEdit1.text );

   IF (wwDBLookupCombo4.text = '')  then begin
       MessageDlg('Cliente NBF � campo de preenchimento obrigat�rio !',mtWarning,[mbok],0);
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   {IF  (VENCI = 0.0)  then begin
       MessageDlg('Per�odo Inicial � campo de preenchimento obrigat�rio !',mtWarning,[mbok],0);
       MaskEdit1.setfocus ;
       abort ;
   end ;}

   btnAtualizaSaldo.Click;

   Q_NF2.close ;
   Q_NFRS.close ;
   Q_NFRS2.close ;
   BitBtn1.enabled := false ;

   Q_aux.close;
   Q_aux.Sql.Clear;
   Q_aux.Sql.Add(' UPDATE NF SET NFI_MARCADOR_NFRS = '  + '''' + '' + '''' + ',' );
   Q_aux.Sql.Add(' NFI_NFRS_REJEITADA = '  + '''' + '' + ''''  );
   Q_aux.ExecSql;



    Q_AUX.close;
    Q_AUX.Sql.Clear;
    Q_AUX.Sql.Add('SELECT D.NFI_CODI from OS B,CLIENTEFINAL C,NF D ' );
    Q_AUX.Sql.Add('where  D.TDOC_ID = ' + inttostr(1));
    Q_AUX.Sql.Add('and   B.TOS_ID <> ' + inttostr(5));
    Q_AUX.Sql.Add('and   D.NFI_DEST_CLI = C.CLIF_ID ');
    Q_AUX.Sql.Add('and   B.OS_ID = D.Os_ID ');
    Q_AUX.Sql.Add('and   C.CLIF_CGCCPF <> ' + '''' + Q_CLINBFCLIN_CGCCPF.asstring + '''');


    If wwDBLookupCombo4.text <> '' then
       Q_AUX.Sql.Add(' and B.CLIN_ID = ' + wwDBLookupCombo4.lookupvalue) ;

    IF  (MaskEdit1.text <> '  /  /    ') then begin
        if strtodate(MaskEdit1.text) <> 0.0 then
           Q_AUX.SQL.ADD ( 'and convert(Char(10),D.NFI_DEMI,112) >= ' +''''+ formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text)) + '''') ;
    end ;

    IF  (MaskEdit2.text <> '  /  /    ') then begin
        if strtodate(MaskEdit2.text) <> 0.0 then
           Q_AUX.SQL.ADD ( 'and convert(Char(10),D.NFI_DEMI,112) <= ' +''''+ formatdatetime('YYYYMMDD',strtodate(MaskEdit2.text)) + '''') ;
    end ;
    Q_AUX.Sql.Add('and   B.OS_ID = D.OS_ID') ;
    Q_AUX.Sql.Add('and  D.NFI_RETORNADA <>  ' + '''' + 'S' + '''' ) ;
    Q_AUX.open;



    Q_AUX.First;
    while not Q_AUX.eof do begin

        Q_AUX2.close;
        Q_AUX2.Sql.Clear;
        Q_AUX2.Sql.Add('update NF set NFI_MARCADOR_NFRS = ' + ''''+ '*' + '''');
        Q_AUX2.Sql.Add('WHERE  NFI_CODI = ' + Q_AUX.fieldbyname('NFI_CODI').asstring);
        Q_AUX2.ExecSql;

      Q_AUX.next ;
    end ;


    Q_NF2.close ;
    Q_NF2.Sql.Clear ;
    Q_NF2.Sql.Add('SELECT A.NFI_DEMI,A.NFI_DTENTREGA,A.NFI_CODI,A.NFI_DEST_CLI,A.NFI_NUMERO,');
    Q_NF2.Sql.Add('A.NFI_MARCADOR_NFRS,A.OS_ID,A.NFI_NFRS_REJEITADA,C.CLIF_RAZA ');
    Q_NF2.Sql.Add(' FROM  NF A,OS B,CLIENTEFINAL C where  ');
    Q_NF2.Sql.Add(' A.OS_ID = B.OS_ID ');
    Q_NF2.Sql.Add(' and A.TDOC_ID = ' + inttostr(1)  );
    Q_NF2.Sql.Add(' and B.TOS_ID <> ' + inttostr(5)  );
    Q_NF2.Sql.Add(' and A.NFI_DEST_CLI = C.CLIF_ID   ');
    Q_NF2.Sql.Add(' and A.NFI_MARCADOR_NFRS = ' + '''' + '*' + '''' );
    Q_NF2.Sql.Add(' and A.NFI_RETORNADA <> ' + '''' + 'S' + '''' );
    Q_NF2.Sql.Add(' and C.CLIF_CGCCPF <> ' + '''' + Q_CLINBFCLIN_CGCCPF.asstring + '''');
    if lblNotaId.Caption <> '0' then
        Q_NF2.sql.Add(' AND A.NFI_CODI = ' + lblNotaId.Caption);

    Q_NF2.Sql.Add(' order by A.NFI_DEMI ');
    Q_NF2.open ;




    IF Q_NF2.recordcount = 0 then begin
       MessageDlg('N�o existe Nota Fiscal de Sa�da para os filtros escolhidos!  ',mtWarning,[mbok],0);
       wwDBLookupCombo4.setfocus ;
       abort ;
    end ;

    BitBtn3.enabled := true ;

end;

procedure TFNFRetornoSimb.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   RETORNOSIMB := '' ;
   Q_CLINBF.open ;

   qrParametros.Open;
   Q_aux.close;
   Q_aux.Sql.Clear;
   Q_aux.Sql.Add(' UPDATE NF SET NFI_MARCADOR_NFRS = '  + '''' + '' + '''' + ',' );
   Q_aux.Sql.Add(' NFI_NFRS_REJEITADA = '  + '''' + '' + ''''  );
   Q_aux.ExecSql;
end;

procedure TFNFRetornoSimb.RadioGroup1Click(Sender: TObject);
begin
        Q_NF2.close ;
        Q_NF2.Sql.Clear ;
        Q_NF2.Sql.Add('SELECT A.NFI_DEMI,A.NFI_DTENTREGA,A.NFI_CODI,A.NFI_DEST_CLI,A.NFI_NUMERO,');
        Q_NF2.Sql.Add('A.NFI_MARCADOR_NFRS,A.OS_ID,A.NFI_NFRS_REJEITADA,C.CLIF_RAZA ');
        Q_NF2.Sql.Add(' FROM  NF A,OS B,CLIENTEFINAL C where  ');
        Q_NF2.Sql.Add(' A.OS_ID = B.OS_ID ');
        Q_NF2.Sql.Add(' and A.NFI_DEST_CLI = C.CLIF_ID   ');
        Q_NF2.Sql.Add(' and A.NFI_MARCADOR_NFRS = ' + '''' + '*' + '''' );
        Q_NF2.Sql.Add(' and A.NFI_RETORNADA <> ' + '''' + 'S' + '''' );
        Q_NF2.Sql.Add(' and C.CLIF_CGCCPF <> ' + '''' + Q_CLINBFCLIN_CGCCPF.asstring + '''');
        IF RadioGroup1.itemindex = 0 then
           Q_NF2.SQL.ADD('order by A.NFI_DEMI  ');    
        IF RadioGroup1.itemindex = 1 then
           Q_NF2.SQL.ADD('order by A.NFI_NUMERO ');
        IF RadioGroup1.itemindex = 2 then
           Q_NF2.SQL.ADD('order by B.OS_ID ');
        IF RadioGroup1.itemindex = 3 then
           Q_NF2.SQL.ADD('order by C.CLIF_RAZA');
        Q_NF2.open ;

end;

procedure TFNFRetornoSimb.BitBtn3Click(Sender: TObject);
begin

    {Q_aux.close;
    Q_aux.Sql.Clear;
    Q_aux.Sql.Add(' UPDATE NF_ITENS Set INF_QTDERETORNADA = ' + inttostr(0) );
    Q_aux.ExecSql;  }


    Q_aux.close;
    Q_aux.Sql.Clear;
    Q_aux.Sql.Add(' UPDATE NF SET  NFI_NFRS_REJEITADA = '  + '''' + '' + ''''  );
    Q_aux.ExecSql;
        try
          Begin
             STP_NFRS.ParamByName('@GERA_NFRS').Value   := 'N' ;
             STP_NFRS.Execproc;
          End
        except
           begin
             MessageDlg('Checagem de Notas Fiscais de Sa�da, com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;

        Q_NF2.close ;
        Q_NF2.open  ;

        Q_NFRS.open;
        Q_NFRS2.open ;


         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add(' select count(*) as qtde  from NF ') ;
         Q_AUX.Sql.Add(' where ') ;
         Q_AUX.Sql.Add(' NFI_MARCADOR_NFRS = ' + '''' + '*' + '''' );
         Q_AUX.Sql.Add(' and NFI_NFRS_REJEITADA = '  +  '''' + '' + ''''  );
         Q_AUX.Sql.Add(' and NFI_RETORNADA = '  +  '''' + 'N' + ''''  );
         Q_AUX.open;

         IF (Q_AUX.fieldbyname('qtde').asinteger = 0)  then begin
             MessageDlg('Todas as Notas Fiscais de Sa�da foram rejeitadas! ',mtWarning,[mbok],0);
             abort ;
         end ;


        BitBtn1.enabled := true ;
        BitBtn3.enabled := false ;
        btn1.Enabled := True;
        animate1.visible := false ;
        panel1.visible := false ;
end;

procedure TFNFRetornoSimb.wwDBGrid4CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Q_NF2NFI_NFRS_REJEITADA.asstring = '*' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := cLRED;
              AFont.Color := clblack;
            End else begin
              ABrush.color := cLRED;
              Afont.color := clblack;
            end ;
     End ;

end;

procedure TFNFRetornoSimb.wwDBGrid4DblClick(Sender: TObject);
{var
  NFI : string ;  }
begin
    {NFI :=  Q_NF2NFI_CODI.asstring ;

    IF Q_NF2NFI_MARCADOR_NFRS.asstring = ''  then begin
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' UPDATE NF Set NFI_MARCADOR_NFRS = ' + '''' + '*' + '''' );
       Q_aux.Sql.Add(' where NFI_CODI = ' +  NFI ) ;
       Q_aux.ExecSql;
    end else begin
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' UPDATE NF Set NFI_MARCADOR_NFRS = ' + '''' + '' + '''' );
       Q_aux.Sql.Add(' where NFI_CODI = ' +  NFI ) ;
       Q_aux.ExecSql;
    end ;

    Q_NF2.close;
    Q_NF2.open ;
    Q_NF2.locate('NFI_CODI',NFI,[]); [[[}

    RETORNOSIMB :=  '*' ;
    Application.Createform(TFnf, Fnf);
    Fnf.ShowModal;
    Fnf.Release  ;


end;

procedure TFNFRetornoSimb.RadioGroup2Click(Sender: TObject);
begin
        Q_NFRS.close ;
        Q_NFRS.Sql.Clear ;
        Q_NFRS.Sql.Add('SELECT A.PRO_ID,A.QTDE_NFe,');
        Q_NFRS.Sql.Add('SUM(A.QTDE_NFS) as QTDE_NFS,B.PRO_DESC,B.PRO_COD');
        Q_NFRS.Sql.Add('FROM NFRS_PRODUTO A,PRODUTO B WHERE A.PRO_ID = B.PRO_ID');
        Q_NFRS.Sql.Add('and  A.NFRS_REJEITADA = ' + '''' + '*' + '''');
        //Q_NFRS.Sql.Add('and  QTDE_NFE < QTDE_NFS');
        Q_NFRS.Sql.Add('group by   B.PRO_DESC,B.PRO_COD,A.PRO_ID,A.QTDE_NFe');
        IF RadioGroup2.itemindex = 0 then
           Q_NFRS.SQL.ADD('order by B.PRO_DESC');
        IF RadioGroup2.itemindex = 1 then
           Q_NFRS.SQL.ADD('order by B.PRO_COD ');
        Q_NFRS.open ;








end;

procedure TFNFRetornoSimb.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

     if Q_NFRS2NFRS_REJEITADA.asstring  = '*' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := cLRED;
              AFont.Color := clblack;
            End else begin
              ABrush.color := cLRED;
              Afont.color := clblack;
            end ;
     End ;

end;

procedure TFNFRetornoSimb.BitBtn3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    PANEL1.visible := true ;
    PANEL1.caption := 'Aguarde...efetuando checagem com NFE !'  ;
    PANEL1.width := 401 ;
    animate1.visible := true ;
    animate1.top := 265 ;
    animate1.left := 256 ;
    PANEL1.top := 144 ;
    PANEL1.left := 199 ;
end;

procedure TFNFRetornoSimb.BitBtn3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  animate1.visible := false ;
  panel1.visible := false ;
end;

procedure TFNFRetornoSimb.BitBtn1Click(Sender: TObject);
begin
        if MessageDlg('Confirma Gera��o da Nota Fiscal de Retorno Simb�lico ?'
         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin


         GeraRetorno;

         Abort;

         //daqui pra baixo esta com erro, desconsiderar - Miguel




         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add(' Select CLIN_ID from  PARAMETRO ') ;
         Q_AUX.open ;


        try
        Begin
             STP_NFRS.ParamByName('@GERA_NFRS').Value  := 'S' ;
             STP_NFRS.ParamByName('@CLIN_ID2').Value   := Q_AUX.fieldbyname('CLIN_ID').asinteger ;
             STP_NFRS.ParamByName('@CNPJ').Value   := Q_CLINBFCLIN_CGCCPF.asstring ;
             STP_NFRS.Execproc;
          End
        except
           begin
             MessageDlg('Gera��o da Nota Fiscal de Retorno Simb�lico, com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
         end;


           Q_aux.close;
           Q_aux.Sql.Clear;
           Q_aux.Sql.Add(' Select NFI_CODI from  NF ' );
           Q_aux.Sql.Add(' where TDOC_ID = 14 ' );
           Q_AUX.Sql.Add(' and  NFI_TOTa = 0');
           Q_aux.open ;

           Q_AUX.first ;
           While not Q_aux.eof do begin

                    try
                    Begin
                       STP_NF.ParamByName('@NF').Value    :=  q_aux.FIELDBYNAME('NFI_CODI').asinteger ;

                       //COMENTADA LINHA Q FIXA EM SP

                       //IF Q_CLINBFUF_SIGLA.asstring <> 'SP' then
                       IF Q_CLINBFUF_SIGLA.asstring <> qrParametrosPAR_UF_SIGLA.AsString then
                         STP_NF.ParamByName('@CFO').Value       := 816
                       else
                         STP_NF.ParamByName('@CFO').Value       := 598 ;

                       STP_NF.ParamByName('@CLIN_ID').Value    := Q_CLINBFCLIN_ID.asinteger ;
                       STP_NF.ParamByName('@GERATPROD').Value    := 'N' ;
                       STP_NF.Execproc;
                    End
                  except
                    begin
                       MessageDlg('Gera��o do C�lculo da Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
                       abort  ;
                    end;
                  end;


                Q_AUX.next ;
           end ;

            MessageDlg(' Nota Fiscal de Retorno Simb�lico foi gerada com sucesso !',mtInformation,[mbOk], 0);

        end ;




end;

procedure TFNFRetornoSimb.BitBtn1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    PANEL1.visible := true ;
    PANEL1.caption := 'Aguarde...Gerando Nota Fiscal de Retorno Simb�lico !'   ;
    PANEL1.width := 500 ;
    animate1.visible := true ;
    animate1.top := 265 ;
    animate1.left := 256 ;
    PANEL1.top := 144 ;
    PANEL1.left := 170 ;
end;

procedure TFNFRetornoSimb.BitBtn1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  animate1.visible := false ;
  panel1.visible := false ;
end;

procedure TFNFRetornoSimb.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFNFRetornoSimb.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFNFRetornoSimb.MaskEdit1Enter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFNFRetornoSimb.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := Clwindow;
end;

procedure TFNFRetornoSimb.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFNFRetornoSimb.MaskEdit2Exit(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFNFRetornoSimb.GridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
     if Q_NF2NFI_NFRS_REJEITADA.asstring = '*' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := cLRED;
              AFont.Color := clblack;
            End else begin
              ABrush.color := cLRED;
              Afont.color := clblack;
            end ;
     End ;
end;

procedure TFNFRetornoSimb.Q_NF2NFI_MARCADOR_NFRSChange(Sender: TField);
var
  NFI : string ;
begin
    nFI :=  Q_NF2NFI_CODI.asstring ;

    IF Q_NF2NFI_MARCADOR_NFRS.asstring = ''  then begin
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' UPDATE NF Set NFI_MARCADOR_NFRS = ' + '''' + '' + '''' );
       Q_aux.Sql.Add(' where NFI_CODI = ' +  NFI ) ;
       Q_aux.ExecSql;
    end else begin
       Q_aux.close;
       Q_aux.Sql.Clear;
       Q_aux.Sql.Add(' UPDATE NF Set NFI_MARCADOR_NFRS = ' + '''' + '*' + '''' );
       Q_aux.Sql.Add(' where NFI_CODI = ' +  NFI ) ;
       Q_aux.ExecSql;
    end ;   

   { Q_NF2.close;
    Q_NF2.open ;
    Q_NF2.locate('NFI_CODI',NFI,[]);   }

end;

procedure TFNFRetornoSimb.Q_NF2AfterPost(DataSet: TDataSet);
var
StrNOMECTTT : string ;
begin
   StrNOMECTTT := Q_NF2NFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF2])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
  /// Q_NF2.close ;
  /// Q_NF2.Open  ;

 ////  Q_NF2.locate('NFI_CODI',StrNOMECTTT,[]);


end;

procedure TFNFRetornoSimb.BitBtn2Click(Sender: TObject);
begin
    Q_NF2.open ;    {}
    Q_NF2.first ;
    Q_NF2.edit ;
    while not Q_NF2.eof do begin
            Q_NF2.edit ;
            Q_NF2NFI_MARCADOR_NFRS.asstring := '*' ;

       Q_NF2.next ;
     end ;

end;

procedure TFNFRetornoSimb.btNemClick(Sender: TObject);
begin
    Q_NF2.open ;    {}
    Q_NF2.first ;
    while not Q_NF2.eof do begin
            Q_NF2.edit ;
            Q_NF2NFI_MARCADOR_NFRS.asstring := '' ;

       Q_NF2.next ;
     end ;

end;

procedure TFNFRetornoSimb.btnAtualizaSaldoClick(Sender: TObject);
var i  : Integer;
begin
  qrAtualizaSaldo.Params[0].AsString := formatdatetime('YYYYMMDD',strtodate(MaskEdit1.text));
  qrAtualizaSaldo.Params[1].AsString := formatdatetime('YYYYMMDD',strtodate(MaskEdit2.text));
  qrAtualizaSaldo.ExecSQL;
end;

procedure TFNFRetornoSimb.btn1Click(Sender: TObject);
begin
     if MessageDlg('Confirma Gera��o das de Retorno Simb�lico para as notas n�o rejeitadas?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin
        //LIMPA A SELE��O

        //SALVAMOS NA LISTA TEMPORARIA
        qrAux.Close;
        qrAux.sql.Clear;
        qrAux.SQL.Add('delete from NFSIMB WHERE CH = '  + FMenu.SqlUsuariosCH.AsString);
        qrAux.ExecSQL;

        qryNFSimb.Close;
        qryNFSimb.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
        qryNFSimb.Open;
        Q_NF2.First;
        WHILE NOT Q_NF2.Eof DO begin
            if  Q_NF2NFI_MARCADOR_NFRS.AsString = '*' then begin
                qryNFSimb.Append;
                qryNFSimbNFI_CODI.AsInteger := Q_NF2NFI_CODI.AsInteger;
                qryNFSimbCH.AsInteger := FMenu.SqlUsuariosCH.AsInteger;
                qryNFSimb.post;
            end;

            Q_NF2.Next;
        end;

        Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' UPDATE NF SET NFI_MARCADOR_NFRS = '  + '''' + '' + '''' + ',' );
         Q_aux.Sql.Add(' NFI_NFRS_REJEITADA = '  + '''' + '' + ''''  );
         Q_aux.ExecSql;


        //Come�a a execu��o
        qryNFSimb.Close;
        qryNFSimb.Parameters[0].Value := FMenu.SqlUsuariosCH.AsInteger;
        qryNFSimb.Open;
        qryNFSimb.First;
        while not qryNFSimb.Eof do begin
            lblNotaId.Caption := qryNFSimbNFI_CODI.AsString;
            Application.ProcessMessages;
            //pesquisa
           // SpeedButton1.Click;
          //  Sleep(1000);
            Application.ProcessMessages;
            //Consulta estoque
           // BitBtn3.Click;
            Sleep(1000);
            Application.ProcessMessages;
            //efetua a gera��o da nota
            GeraRetorno;
            Sleep(1000);
            Application.ProcessMessages;
            qryNFSimb.Next;
        end;

        qrAux.Close;
        qrAux.sql.Clear;
        qrAux.SQL.Add('delete from NFSIMB WHERE CH = '  + FMenu.SqlUsuariosCH.AsString);
        qrAux.ExecSQL;
        lblNotaId.Caption := '0';
        ShowMessage('Notas geradas com sucesso.');
        btn1.Enabled := false;



       { Q_NF2.first ;
        Q_NF2.edit ;
        while not Q_NF2.eof do begin
                Q_NF2.edit ;
                Q_NF2NFI_MARCADOR_NFRS.asstring := '' ;
           Q_NF2.next ;
         end ;


        Q_NF2.First;
        while not Q_NF2.Eof do begin
            if Q_NF2NFI_NFRS_REJEITADA.asstring = '' then begin
                Q_NF2.Edit;
                Q_NF2NFI_MARCADOR_NFRS.Value := '*';
                Q_NF2.Post;

                try
                Begin
                  STP_NFRS.ParamByName('@GERA_NFRS').Value   := 'N' ;
                  STP_NFRS.Execproc;
                End
                except
                begin
                  MessageDlg('Checagem de Notas Fiscais de Sa�da, com erro !',mtInformation,[mbOk], 0);
                  abort  ;
                end;
                end;

                Q_AUX.close;
                Q_AUX.Sql.Clear;
                Q_AUX.Sql.Add(' select count(*) as qtde  from NF ') ;
                Q_AUX.Sql.Add(' where ') ;
                Q_AUX.Sql.Add(' NFI_MARCADOR_NFRS = ' + '''' + '*' + '''' );
                Q_AUX.Sql.Add(' and NFI_NFRS_REJEITADA = '  +  '''' + '' + ''''  );
                Q_AUX.Sql.Add(' and NFI_RETORNADA = '  +  '''' + 'N' + ''''  );
                Q_AUX.open;

                IF (Q_AUX.fieldbyname('qtde').asinteger > 0)  then begin



                      Q_AUX.close;
                      Q_AUX.Sql.Clear;
                      Q_AUX.Sql.Add(' Select CLIN_ID from  PARAMETRO ') ;
                      Q_AUX.open ;


                      try
                      Begin
                          STP_NFRS.ParamByName('@GERA_NFRS').Value  := 'S' ;
                          STP_NFRS.ParamByName('@CLIN_ID2').Value   := Q_AUX.fieldbyname('CLIN_ID').asinteger ;
                          STP_NFRS.ParamByName('@CNPJ').Value   := Q_CLINBFCLIN_CGCCPF.asstring ;
                          STP_NFRS.Execproc;
                      End
                      except
                        begin
                          MessageDlg('Gera��o da Nota Fiscal de Retorno Simb�lico, com erro !',mtInformation,[mbOk], 0);
                          abort  ;
                        end;
                      end;



                end ;
                Q_NF2.Edit;
                Q_NF2NFI_MARCADOR_NFRS.Value := '';
                Q_NF2.Post;
            end; //if Q_NF2NFI_NFRS_REJEITADA.asstring = '' then begin
            Q_NF2.Next;
        end;

           //efetua o calculo dos valores das notas fiscais
           Q_aux.close;
           Q_aux.Sql.Clear;
           Q_aux.Sql.Add(' Select NFI_CODI from  NF ' );
           Q_aux.Sql.Add(' where TDOC_ID = 14 ' );
           Q_AUX.Sql.Add(' and  NFI_TOTa = 0');
           Q_aux.open ;

           Q_AUX.first ;
           While not Q_aux.eof do begin

                    try
                    Begin
                       STP_NF.ParamByName('@NF').Value    :=  q_aux.FIELDBYNAME('NFI_CODI').asinteger ;

                       //COMENTADA LINHA Q FIXA EM SP

                       //IF Q_CLINBFUF_SIGLA.asstring <> 'SP' then
                       IF Q_CLINBFUF_SIGLA.asstring <> qrParametrosPAR_UF_SIGLA.AsString then
                         STP_NF.ParamByName('@CFO').Value       := 816
                       else
                         STP_NF.ParamByName('@CFO').Value       := 598 ;

                       STP_NF.ParamByName('@CLIN_ID').Value    := Q_CLINBFCLIN_ID.asinteger ;
                       STP_NF.ParamByName('@GERATPROD').Value    := 'N' ;
                       STP_NF.Execproc;
                    End
                  except
                    begin
                       MessageDlg('Gera��o do C�lculo da Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
                       abort  ;
                    end;
                  end;


                Q_AUX.next ;
           end ;


           ShowMessage('Notas geradas com sucesso!');
           SpeedButton1.Click;

               }

     end;
end;

end.


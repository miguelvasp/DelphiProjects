unit U_ChBor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, StdCtrls, Buttons, wwdblook, Mask,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, ComCtrls, Tabnotbk,
  wwdbedit, Wwdotdot, Wwdbcomb, ADODB;

type
  TFChBor = class(TForm)
    Panel2: TPanel;
    Tbn_ChqBor: TTabbedNotebook;
    Panel1: TPanel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    wwDBGrid1: TwwDBGrid;
    Q_ITEM: TwwQuery;
    DS_ITEM: TwwDataSource;
    UPD_ITEM: TUpdateSQL;
    Q_ITEMNumeroCp: TIntegerField;
    Q_ITEMFlag: TStringField;
    Q_ITEMDocumento: TStringField;
    Q_ITEMRazao: TStringField;
    Q_ITEMAbater: TFloatField;
    Q_ITEMDescAcresc: TFloatField;
    Q_ITEMValorLiquido: TFloatField;
    Q_ITEMVencimento: TDateTimeField;
    Q_ITEMBancoConta: TStringField;
    Panel4: TPanel;
    Panel5: TPanel;
    wwDBGrid2: TwwDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DBEdit5: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Q_Det: TwwQuery;
    DS_Det: TwwDataSource;
    UPD_Det: TUpdateSQL;
    Q_DetNumeroCp: TIntegerField;
    Q_DetSequencia: TIntegerField;
    Q_DetCodDescAcres: TStringField;
    Q_DetData: TDateTimeField;
    Q_DetDescAcresc: TFloatField;
    Q_DetHistorico: TStringField;
    Q_PAGA: TwwQuery;
    Q_PAGANumero: TIntegerField;
    Q_PAGADocumento: TStringField;
    Q_PAGAFornecedor: TStringField;
    Q_PAGARazao: TStringField;
    Q_PAGAContaGerencial: TStringField;
    Q_PAGAValorTitulo: TFloatField;
    Q_PAGADescAcresc: TFloatField;
    Q_PAGAValorLiquido: TFloatField;
    Q_PAGAVencimento: TDateTimeField;
    Q_PAGABancoConta: TStringField;
    Q_PAGAEmissao: TDateTimeField;
    Q_PAGAMoeda: TStringField;
    Q_PAGADataMoeda: TDateTimeField;
    Q_PAGAMoedaOriginal: TStringField;
    Q_PAGADataMoedaOriginal: TDateTimeField;
    Q_PAGAValorOriginal: TFloatField;
    Q_PAGAVencimentoPrevisto: TDateTimeField;
    Q_PAGAHistorico: TStringField;
    Q_PAGAFlag: TStringField;
    Q_PAGASituacao: TStringField;
    Q_PAGASaldo: TFloatField;
    Q_PAGAFilial: TStringField;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_DIFE: TwwQuery;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    Q_AUXI: TwwQuery;
    Q_ICHQ: TwwQuery;
    Q_ICHQNumero: TIntegerField;
    Q_ICHQNumeroCP: TIntegerField;
    Q_ICHQValor: TFloatField;
    Q_ICHQSaldo: TFloatField;
    Q_ICHQData: TDateTimeField;
    Q_ICHQTipo: TStringField;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    DS_FORN: TwwDataSource;
    SpeedButton1: TSpeedButton;
    SBT_REFR: TSpeedButton;
    Fonte: TDBNavigator;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBLC_REC_RAZA: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    Q_ICHQValorDescAcres: TFloatField;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    btSelTodos: TSpeedButton;
    spNem: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DS_CHQ: TwwDataSource;
    Q_CHQ: TwwQuery;
    Q_AUXI2: TwwQuery;
    Q_CHQNumero: TIntegerField;
    Q_CHQChequeNumero: TStringField;
    Q_CHQDataEmissao: TDateTimeField;
    Q_CHQFavorecido: TStringField;
    Q_CHQNome: TStringField;
    Q_CHQValor: TFloatField;
    Q_CHQBanco: TStringField;
    Q_CHQTipo: TStringField;
    Q_CHQEmitido: TStringField;
    Q_CHQMarcador: TStringField;
    SpeedButton6: TSpeedButton;
    btApaga: TSpeedButton;
    Panel10: TPanel;
    Label10: TLabel;
    ZERA_S: TBitBtn;
    ORDE_S: TBitBtn;
    Q_FUNC: TwwQuery;
    Label7: TLabel;
    DBLC_FORN: TwwDBLookupCombo;
    Q_AUXI3: TwwQuery;
    Q_AUXI4: TwwQuery;
    MARCA_S: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    UPD_CHQ: TUpdateSQL;
    sp_Atual: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Q_SQL: TwwQuery;
    cboSt: TwwDBComboBox;
    cboTP: TwwDBComboBox;
    Q_CHQFavorecido_Calc: TStringField;
    Q_FORNG: TwwQuery;
    Q_FORNGFOR_CODI: TStringField;
    Q_FORNGCONTA: TStringField;
    Q_CHQFB_ID_BancoCred: TIntegerField;
    Q_FB: TwwQuery;
    Q_CHQNumeroBC: TStringField;
    Q_CHQAgenBC: TStringField;
    Q_CHQContaBC: TStringField;
    Q_CHQBancoCred: TStringField;
    Q_FBCONTAX: TStringField;
    Q_FBNUMERO: TIntegerField;
    Q_FBBAN_AGEN: TStringField;
    Q_FBBAN_CONTA: TStringField;
    Q_FBFB_ID: TAutoIncField;
    cboBancCre: TwwDBLookupCombo;
    Q_FBI: TwwQuery;
    Grid: TwwDBGrid;
    Q_FBICONTAX: TStringField;
    Q_FBINUMERO: TIntegerField;
    Q_FBIBAN_AGEN: TStringField;
    Q_FBIBAN_CONTA: TStringField;
    Q_FBIFB_ID: TAutoIncField;
    Q_PAGABAN_AGEN: TStringField;
    Q_PAGABAN_CONTA: TStringField;
    Q_PAGAFB_ID: TAutoIncField;
    Q_PAGANUMBANC: TIntegerField;
    Q_CHQTP_PAG: TStringField;
    cboTitCheq: TwwDBComboBox;
    cboTrans: TwwDBComboBox;
    Q_PAGATp_Pag: TStringField;
    Q_CHQTP_TRANS: TStringField;
    Q_CHQNUMEROCP: TIntegerField;
    ckCP: TCheckBox;
    Q_BANCban_pe: TStringField;
    qrAuxiliar: TwwQuery;
    pnl1: TPanel;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAtualizar: TSpeedButton;
    Q_ITEMClienteOk: TIntegerField;
    QR_CLIENTE: TwwQuery;
    QR_CLIENTECliente: TIntegerField;
    qrTitulo: TwwQuery;
    qrTituloBarras: TStringField;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    rdS: TRadioButton;
    rdC: TRadioButton;
    rdB: TRadioButton;
    BitBtn7: TBitBtn;
    Q_CHQPgtoOK: TIntegerField;
    qrAux2: TwwQuery;
    qrAux2for_cgc: TStringField;
    chkEmpresa: TCheckBox;
    Q_BANCBAN_CODEMPR: TStringField;
    qrParams: TwwQuery;
    qrParamsRestringe_pag_empresa: TStringField;
    Label3: TLabel;
    Q_CHQVENCIMENTO: TDateTimeField;
    CPATPAG: TADOQuery;
    CPATPAGNumeroCp: TIntegerField;
    CPATPAGFlag: TStringField;
    CPATPAGDocumento: TStringField;
    CPATPAGRazao: TStringField;
    CPATPAGAbater: TFloatField;
    CPATPAGDescAcresc: TFloatField;
    CPATPAGValorLiquido: TFloatField;
    CPATPAGVencimento: TDateTimeField;
    CPATPAGBancoConta: TStringField;
    CPATPAGTipo: TStringField;

    procedure Tbn_ChqBorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_DetAfterDelete(DataSet: TDataSet);
    procedure Q_DetAfterPost(DataSet: TDataSet);
    procedure Q_DetBeforeDelete(DataSet: TDataSet);
    procedure Q_ITEMAfterDelete(DataSet: TDataSet);
    procedure Q_ITEMAfterPost(DataSet: TDataSet);
    procedure Q_ITEMBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_DetNewRecord(DataSet: TDataSet);
    procedure Q_DetBeforePost(DataSet: TDataSet);
    procedure GeraItens(Sender: TObject);
    procedure GeraCheque(Sender: TObject;Tipo:String);
    procedure Tbn_ChqBorChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Q_ITEMBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Q_CHQAfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btSelTodosClick(Sender: TObject);
    procedure spNemClick(Sender: TObject);
    procedure btApagaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ORDE_SClick(Sender: TObject);
    procedure ZERA_SClick(Sender: TObject);
    procedure MARCA_SClick(Sender: TObject);
    procedure wwDBGrid1ColExit(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure Q_CHQBeforePost(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure rdSClick(Sender: TObject);
    procedure sp_AtualClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Q_CHQCalcFields(DataSet: TDataSet);
    procedure Q_CHQAfterScroll(DataSet: TDataSet);
    procedure Grid4Enter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure Q_CHQFB_ID_BancoCredChange(Sender: TField);
    procedure Q_CHQBancoCredChange(Sender: TField);
    function  ReplaceAspa(Txt:String):String;
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure Q_ITEMCalcFields(DataSet: TDataSet);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChBor: TFChBor;
  T : TextFile;
  LField :TField;
  Ignora :Boolean;
  Tp:String;
  Fez, GERA_SIS, ErroPagEscritural, PagamentoEscritural  : BOOLEAN;

implementation

uses CPPMENU, U_FUNCOES, UEmissChqCp, UGeraPagFor, UEmissCheque2;

{$R *.DFM}


function  TFChBor.ReplaceAspa(Txt:String):String;
var Pox:Integer;
    TxCor:String;
Begin
        Pox := Pos('''',Txt);
        If Pox > 0 then
                TxCor := Copy(Txt,1,Pox) + '''''''' + Copy(Txt,Pox+1,Length(Txt)-Pox + 1)
        Else
                TxCor := Txt;
                
        ReplaceAspa := TxCor;
End;

procedure TFChBor.GeraItens(Sender: TObject);
var SQL, StrAnd : string ;

begin
   Q_AUXI.Close ;
   Q_AUXI.sql.clear ;
   Q_AUXI.SQL.Add('Delete from cpadtpa ') ;
   Q_AUXI.execsql ;

   Q_ITem.close;
   Q_ITEM.sql.clear ;
   Q_ITEM.SQL.Add('Delete from cpatpag ') ;
   Q_ITEM.execsql ;
   Q_ITEM.Close ;

   Q_PAGA.close ;
   Q_PAGA.SQL.clear ;

   SQL :=
        ' SELECT	P.*, ' +
        '		FB.BAN_AGEN, ' +
        '		FB.BAN_CONTA, ' +
        '		FB.FB_ID, ' +
        '		BAN.NUMERO NUMBANC ' +
        ' FROM		CPAPAGA P LEFT OUTER JOIN ' +
        '			FORNECEDOR_BANCO FB ON ' +
        '			P.FORNECEDOR = FB.FOR_CODI AND FB.PADRAOSN = ''S''' +
        '			LEFT OUTER JOIN  ' +
        '				BANCOS BAN ON ' +
        '       				BAN.BAN_ID = FB.BAN_ID ';

   Q_PAGA.SQL.ADD(SQL);

   Q_PAGA.SQL.ADD('where P.Saldo <> 0');

   if MaskEdit1.text <> '  /  /    ' then
        Q_PAGA.SQL.ADD(  'and CONVERT(CHAR(10),P.Vencimento, 112) >= ' + '''' + FormatDateTime('YYYYMMDD',strtodate(MaskEdit1.text) ) + '''' );

   if MaskEdit2.text <> '  /  /    ' then
        Q_PAGA.SQL.ADD(  'and CONVERT(CHAR(10),P.Vencimento, 112) <= ' + '''' + FormatDateTime('YYYYMMDD',strtodate(MaskEdit2.text) ) + '''' );

   if DBLC_FORN.Text <> '' then
        Q_PAGA.SQL.Add(' and P.Fornecedor = ' +'''' +Q_FORNFOR_CODI.AsString +'''');

   if ckCP.Checked then
        Q_PAGA.SQL.ADD(' AND P.FLAG_FLUXO = ' + '''' + 'S' + '''' );

   if chkEmpresa.Checked then
        Q_PAGA.SQL.ADD(' AND p.Filial = '+ QuotedStr(Q_BANCBAN_CODEMPR.Value));

   //Evita que sejam incluídos itens que estão sendo programados em SisPag.
   Q_PAGA.SQL.Add(' AND         P.NUMERO NOT IN  ( ' +
                  ' SELECT      CI.NUMEROCP ' +
                  ' FROM	CPAICHE CI, ' +
                  '		CPACHEQ CP ' +
                  ' WHERE	CI.NUMERO = CP.NUMERO ' +
                  ' AND		CP.EMITIDO = ''N''' + ')');

   //Q_PAGA.SQL.ADD( ' order by P.numero');

   Q_PAGA.sql.Add('order by P.Vencimento, P.Fornecedor');

   Q_PAGA.open ;

   IF Q_PAGA.recordcount = 0 then
   begin
        MessageDlg('Não existem pagamentos nessas condições ! ', mtInformation,[mbOk], 0);
        TbN_ChqBor.PageIndex := 0;
        abort;
   end ;

   CPATPAG.CLOSE;
   CPATPAG.OPEN;
   while not Q_PAGA.eof do
   begin
       { Q_ITEM.close ;
        Q_ITEM.sql.clear;
        Q_ITEM.SQL.Add('insert into CPATPAG ') ;
        Q_ITEM.SQL.Add('(NumeroCp, ');
        Q_ITEM.SQL.Add(' Flag,  ') ;
        Q_ITEM.SQL.Add(' Documento, ') ;
        Q_ITEM.SQL.Add(' Razao, ') ;
        Q_ITEM.SQL.Add(' Abater, ') ;
        Q_ITEM.SQL.Add(' ValorLiquido, ') ;
        Q_ITEM.SQL.Add(' Vencimento) ') ;
        Q_ITEM.SQL.ADD(' values ( ') ;
        Q_ITEM.SQL.ADD( Q_PAGANumero.asstring + ',') ;
        Q_ITEM.SQL.ADD(''''+  '1'+ ''''+ ',') ;
        Q_ITEM.SQL.ADD( '''' + Q_PAGADocumento.asstring + ''''+ ',') ;
        Q_ITEM.SQL.ADD( '''' + Q_PAGARazao.asstring + '''' + ',');
        Q_ITEM.SQL.ADD(  Funcoes.Converte(floattostr(Q_PAGASaldo.asfloat) ,',','.') + ',');
        Q_ITEM.SQL.ADD(  Funcoes.Converte(floattostr(Q_PAGASaldo.asfloat) ,',','.') + ',');
        Q_ITEM.SQL.ADD( '''' + FormatDateTime('YYYY-MM-DD',Q_PAGAVencimento.asdatetime ) + '''' + ')')   ;

        Q_ITEM.execsql; }

        CPATPAG.Append;
        CPATPAGNumeroCp.Value :=  Q_PAGANumero.AsInteger;
        CPATPAGFlag.Value := '1';
        CPATPAGDocumento.Value := Q_PAGADocumento.AsString;
        CPATPAGRazao.Value := Q_PAGARazao.AsString;
        CPATPAGAbater.Value := Q_PAGASaldo.AsFloat;
        CPATPAGValorLiquido.Value := Q_PAGASaldo.AsFloat;
        CPATPAGVencimento.Value := Q_PAGAVencimento.AsDateTime;
        CPATPAG.Post;

        Q_PAGA.next ;
   end;
   Q_PAGA.close;

   Q_ITEM.close ;
   Q_ITEM.sql.clear ;
   Q_ITEM.SQL.Add('Select * from CPATPAG order by vencimento, razao') ;
   Q_ITEM.open;

   Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' Select SUM(ValorLiquido) as TOT FROM CPATPAG' );
   Q_auxi.sql.Add(' where  FLAG <> ' + '''' + '0' + '''' ) ;
   Q_Auxi.open;

   Label10.caption := formatfloat('###,###,##0.00',Q_auxi.fieldbyname('TOT').asfloat) ;

   TbN_ChqBor.PageIndex := 1;
end ;

procedure TFChBor.Tbn_ChqBorClick(Sender: TObject);
begin
   if (Q_ITEM.State = dsInsert) or (Q_ITEM.State = dsEdit) then
         Q_ITEM.post ;

   IF Q_ITEM.active =  true  then  begin
        IF (Q_ITEM.recordcount = 0) then begin
           TbN_ChqBor.PageIndex := 0;
           abort;
        end ;
     end else  TbN_ChqBor.PageIndex := 0;

   if (TbN_ChqBor.PageIndex = 1) or (TbN_ChqBor.PageIndex = 0) and (Q_ITEMNumeroCp.asstring <> '') then  begin
      Q_auxi.close;
      Q_auxi.sql.Clear;
      Q_auxi.sql.Add(' Select SUM(ValorLiquido) as TOT FROM CPATPAG' );
      Q_auxi.sql.Add(' where FLAG <> ' + '''' + '0' + '''' ) ;
      Q_Auxi.open;

      Label10.caption := formatfloat('###,###,##0.00',Q_auxi.fieldbyname('TOT').asfloat) ;

      if (Q_DET.State = dsInsert) or (Q_DET.State = dsEdit) then
          Q_DET.post ;

       Q_AUXI.Close ;
       Q_AUXI.sql.clear ;
       Q_AUXI.SQL.Add('SELECT SUM(DescAcresc) as DESCONTO from CPADTPA  ') ;
       Q_AUXI.SQL.Add('where NumeroCp = ' + Q_ITEMNumeroCp.asstring ) ;
       Q_AUXI.open  ;

       IF  Q_AUXI.fieldbyname('DESCONTO').asfloat <> 0 then begin
           IF  ((Q_ITEMAbater.asfloat + Q_AUXI.fieldbyname('DESCONTO').asfloat) <>
                (Q_ITEMAbater.asfloat + Q_ITEMDescAcresc.asfloat))   then begin
                MessageDlg('Valor Total do detalhamento não bate com o valor do Desconto ',mtInformation,[mbOk], 0);
                TbN_ChqBor.PageIndex := 2;
                abort ;
           end ;
        end else begin
           Q_AUXI.Close ;
           Q_AUXI.sql.clear ;
           Q_AUXI.SQL.Add('SELECT ValorTitulo from CPAPAGA  ') ;
           Q_AUXI.SQL.Add('where Numero = ' + Q_ITEMNumeroCp.asstring ) ;
           Q_AUXI.open  ;

           Q_ITEM.Edit ;
           Q_ITEMDescAcresc.asfloat := 0 ;
           Q_ITEMValorLiquido.asfloat :=  Q_AUXI.fieldbyname('ValorTitulo').asfloat  ;
           Q_ITEMAbater.asfloat :=   Q_AUXI.fieldbyname('ValorTitulo').asfloat ;
           Q_ITEM.post;
        end ;
      Fonte.DataSource := DS_Item ;
    end ;

   if TbN_ChqBor.PageIndex = 2 then begin
      if Q_ITEMDescAcresc.ASFLOAT = 0 then  begin
        MessageDlg( 'Desconto/Acréscimo igual a zero.', mtInformation, [mbOk], 0);
        TbN_ChqBor.PageIndex := 1;
        ABORT ;
      END ;
      Q_DET.open;
      Fonte.DataSource := DS_Det  ;
   end ;
end;

procedure TFChBor.FormCreate(Sender: TObject);
begin
  ErroPagEscritural := False;
 Fez := False;
 Q_AUXI.Close ;
 Q_AUXI.sql.clear ;
 Q_AUXI.SQL.Add('Delete from cpadtpa ') ;
 Q_AUXI.execsql ;

 Q_AUXI.close;
 Q_AUXI.sql.clear ;
 Q_AUXI.SQL.Add('Delete from cpatpag ') ;
 Q_AUXI.execsql ;

 Q_ITEM.close ;
 Q_ITEM.open ;

 Q_ITEM.open ;

 Q_DET.open ;
 Q_DIFE.open ;
 Q_BANC.Open ;
 Q_FORN.Open;

 Q_FB.OPEN;
 Q_FBI.OPEN;

 Q_FORNG.Open;
 TbN_ChqBor.PageIndex := 0;
end;

procedure TFChBor.Q_DetAfterDelete(DataSet: TDataSet);
begin
     try
    FMenu.DATABASE1.ApplyUpdates([Q_Det]);
  except
    Q_Det.RevertRecord;
  end;
end;

procedure TFChBor.Q_DetAfterPost(DataSet: TDataSet);
var SCodigo : string ;
    Scodigo1 : string ;
begin
    sCodigo  := DBEdit1.text ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Det]);
  end;
  except
    begin

      Q_Det.RevertRecord;
    end;
  end;
  Q_Det.Close;
  Q_Det.Open;
  Q_Det.locate('NumeroCP',sCodigo, [loPartialKey]);
end;

procedure TFChBor.Q_DetBeforeDelete(DataSet: TDataSet);
begin
      if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;
end;

procedure TFChBor.Q_ITEMAfterDelete(DataSet: TDataSet);
begin
     try
    FMenu.DATABASE1.ApplyUpdates([Q_Item]);
  except
    Q_Item.RevertRecord;
  end;
end;

procedure TFChBor.Q_ITEMAfterPost(DataSet: TDataSet);
var
  NUMCP : string ;
begin
   NUMCP :=  Q_ITEMNumeroCp.asstring ;
   try
        begin
                FMenu.DATABASE1.ApplyUpdates([Q_Item]);
        end;
   except
        begin
                Q_Item.RevertRecord;
        end;
   end;

   Ignora := True;
    //****************MIGUEL***************************
   {comentada por miguel para evitar o refresh em tela desnecessário}
   //Q_Item.Close;
   //Q_Item.Open;
   //Q_Item.locate('NumeroCp',NUMCP,[]);
   Ignora := False;

   Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' Select SUM(ValorLiquido) as TOT FROM CPATPAG' );
   Q_auxi.sql.Add(' where  FLAG <> ' + '''' + '0' + '''' ) ;
   Q_Auxi.open;

   Label10.caption := formatfloat('###,###,##0.00',Q_auxi.fieldbyname('TOT').asfloat) ;
end;

procedure TFChBor.Q_ITEMBeforeDelete(DataSet: TDataSet);
begin
   if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
        Abort;
end;

procedure TFChBor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_ITEM.close ;
  Q_DET.close ;
  Q_DIFE.close ;
  Q_FORN.Close;
  Q_BANC.close ;
  Q_FB.CLOSE;
  Q_FBI.CLOSE;
  Q_FORNG.close;
  action := cafree ;
end;

procedure TFChBor.Q_DetNewRecord(DataSet: TDataSet);
begin
   Q_DetNumeroCp.AsInteger := Q_ItemNumeroCp.AsInteger;
   Q_DetDescAcresc.ASFLOAT := Q_ItemDescAcresc.ASFLOAT;
end;

procedure TFChBor.Q_DetBeforePost(DataSet: TDataSet);
   var iMySinal : Integer;
begin
  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1;

   if (DS_Det.State in [dsInsert,dsEdit]) then
     Q_DetDescAcresc.Value := ABS(Q_DetDescAcresc.Value) * iMySinal;


   if Q_DetDescAcresc.Value = 0 then
   begin
     MessageDlg('Valor tem que ser informado.',mtInformation,[mbOk], 0);
     DBEdit4.SetFocus;
   end;

end;

procedure TFChBor.Tbn_ChqBorChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
  var rValor    : real;
var sMensagem : string[ 150 ];

begin
 if newtab = 1 then
 begin
        MARCA_S.Visible := true;
        ZERA_S.Visible := true;
        ORDE_S.Visible := true;
 end
 else
 begin
        MARCA_S.Visible := false;
        ZERA_S.Visible := false;
        ORDE_S.Visible := false;
 end;

end;


procedure TFChBor.GeraCheque(Sender: TObject; Tipo:String);
var StrAnd : string ;
    Obj_Consulta:TwwQuery;
    sCodigo : string ;
    sNUMCHQ : Integer ;
    StrFlag : String ;
    iCodigo : Integer ;
    StrCodForn : String ;
    StrRazao   : String ;

    VARNOVA : integer;
    VARVELHA : integer;

    FB_ID, NumBanc : String;
    
begin
  Q_PAGA.open ;
  Obj_Consulta:=TwwQuery.Create(Self);
  Obj_Consulta.DataBaseName:='Financeiro';
  Obj_Consulta.SessionName:='Sec_BaseFin';
  Obj_Consulta.Sql.Add('SELECT CASE WHEN MAX(Numero) IS NULL THEN 0 ELSE MAX(NUMERO) END As Novo_Codi FROM CPACHEQ');
  Obj_Consulta.Open;
  sCodigo := Obj_Consulta.FieldbyName('Novo_Codi').AsString;

  Obj_Consulta.Close;
  Obj_Consulta.Destroy;

  if (Q_ITEM.State = dsInsert) or (Q_ITEM.State = dsEdit) then
         Q_ITEM.post ;





   {/************** miguel *************/}
   {
        Este pedaço da rotina vai gerar a numeração que representa ao codigo do cheque chequenumero
        ela deve ser diferente para cada tipo de acontecimento
        - Cheque
        -Pagamento Escritural
        -Baix autoática em lote
        pesquisa feita pelo tipo de documento
   }

   {Busca do número do cheque}
   if Tp = 'C' then
   begin
        Q_AUXI2.close ;
        Q_AUXI2.SQL.clear ;
        Q_AUXI2.SQL.Add('Select BAN_UCHE  from CPABANC ');
        Q_AUXI2.SQL.Add(' where BAN_CODI = '  + '''' + Q_BANCBAN_CODI.asstring + '''') ;
        Q_AUXI2.Open ;

        IF Q_AUXI2.fieldbyname('BAN_UCHE').ASSTRING <> '' THEN
           sNUMCHQ := Q_AUXI2.fieldbyname('BAN_UCHE').asinteger
        ELSE
           sNUMCHQ := 0;
   end
   else
   begin
        Q_AUXI2.close ;
        Q_AUXI2.SQL.clear ;
        Q_AUXI2.SQL.Add('Select max(convert(int,chequenumero)) as numero  from CPACHEQ ');
        Q_AUXI2.SQL.Add(' where TIPO = ' + QuotedStr(Tp)) ;
        Q_AUXI2.Open ;
        IF Q_AUXI2.fieldbyname('NUMERO').ASSTRING <> '' THEN
           sNUMCHQ := Q_AUXI2.fieldbyname('NUMERO').asinteger
        ELSE
           sNUMCHQ := 0;
   end;


   {/************** end ****************/}











  {   Comentada por miguel porque abre desnecessariamente o dataset
  Q_ITEM.close ;
  Q_ITEM.sql.clear ;
  Q_ITEM.SQL.Add('Select * from CPATPAG order by FLAG desc, vencimento ') ;
  Q_ITEM.open;     }


  Q_ITEM.first;

  while not Q_ITEM.eof do begin
     Q_PAGA.locate('numero',Q_ITEMNumeroCp.asstring,[]);
     StrCodForn := Q_PagaFornecedor.asstring ;//replaceaspa
     StrRazao   := Q_ITEmRazao.asstring ; //replaceaspa

    { if (Q_ITEMClienteOk.Value = 0) and (PagamentoEscritural = True) then
     begin
         Q_ITEM.Edit;
         Q_ITEMflag.asstring := '0';
         //Q_ITEM.Post;
     end;   }

     if (Q_ITEMflag.asstring <> '0') then begin
       VARNOVA :=  Q_ITEMflag.asinteger ;
       StrFlag :=  Q_ITEMflag.asstring  ;
       IF (VARVELHA <> VARNOVA) or
          (Q_ITEMflag.asstring = '1') then begin

                   sNUMCHQ := sNUMCHQ + 1;

                  { If Tipo = 'S' then //SisPag
                        sNUMCHQ := 0;  }

                   VARVELHA := VARNOVA ;

                   Q_AUXI.SQL.clear  ;
                   Q_AUXI.SQL.ADD(' insert into CPACHEQ  ') ;
                   ////Q_AUXI.SQL.ADD('(Numero, ');

                   //Aqui vai inserir o banco padrão do fornecedor, se houver.

                   If Q_PAGAFB_ID.AsString <> '' then
                        FB_ID := Q_PAGAFB_ID.AsString
                   Else
                        FB_ID := 'Null';

                   If Q_PAGANUMBANC.AsString <> '' then
                        NumBanc := Q_PAGANUMBANC.AsString
                   Else
                        NumBanc := 'Null'; 

                   Q_AUXI.SQL.ADD(' (VENCIMENTO, ChequeNumero, ') ;
                   Q_AUXI.SQL.ADD(' Favorecido, ');
                   Q_AUXI.SQL.ADD(' Nome,       ');
                   Q_AUXI.SQL.ADD(' Valor,      ');
                   Q_AUXI.SQL.ADD(' Banco,      ');
                   Q_AUXI.SQL.ADD(' Tipo,       ');
                   Q_AUXI.SQL.ADD(' Emitido, ' );
                   Q_AUXI.SQL.ADD(' NumeroCP, ' );
                   //NOVOS
                   Q_AUXI.SQL.ADD(' FB_ID_BANCOCRED, ' );
                   Q_AUXI.SQL.ADD(' NumeroBC, ' );
                   Q_AUXI.SQL.ADD(' AGENBC, ' );
                   Q_AUXI.SQL.ADD(' CONTABC, ' );
                   Q_AUXI.SQL.ADD(' TP_PAG, ');
                   Q_AUXI.SQL.ADD(' TP_TRANS ) ');

                   //FIM NOVOS
                   Q_AUXI.SQL.ADD(' values (' ) ;
                   Q_AUXI.SQL.Add(QuotedStr(FormatDateTime('YYYYMMDD', Q_ITEMVencimento.AsDateTime) )+ ', ');
                   Q_AUXI.SQL.ADD(quotedstr(inttostr(sNUMCHQ)) + ',');
                   Q_AUXI.SQL.ADD('''' + StrCodForn + ''''+ ',' );
                   Q_AUXI.SQL.ADD('''' + StrRazao + '''' + ',' );
                   Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMValorLiquido.asfloat) ,',','.') + ',');
                   Q_AUXI.SQL.ADD('''' + Q_BANCBAN_CODI.asstring + '''' + ',' ) ;
                   Q_AUXI.SQL.ADD('''' +  Tipo + ''''  + ',' ) ;
                   Q_AUXI.SQL.ADD('''' +  'N' + ''''  + ',') ;
                   Q_AUXI.SQL.ADD(Q_ITEMNumeroCP.AsString + ',');
                   //NOVOS
                   Q_AUXI.SQL.ADD(FB_ID + ',');
                   Q_AUXI.SQL.ADD(NUMBANC + ',' );
                   Q_AUXI.SQL.ADD('''' + Q_PAGABAN_AGEN.AsString + '''' + ',');
                   Q_AUXI.SQL.ADD('''' + Q_PAGABAN_CONTA.AsString + '''' + ',' );

                   //Se estiver preenchido 'C'heque, coloca 'C', se estiver com 'T' ou vazio,
                   // coloca 'T', de título.
                   If Q_PAGATP_PAG.AsString = 'C' then
                           Q_AUXI.SQL.ADD('''' + 'C' + '''' + ',' )
                   Else
                           Q_AUXI.SQL.ADD('''' + 'T' + '''' + ',' );

                   //Tipo de transação, depois poderá ser escolhido na mão
                   If NumBanc = '341' then
                   Begin
                        If Q_PAGATP_PAG.Asstring = 'C' then
                                Q_AUXI.SQL.ADD('''' + '1' + '''' + ')' )  // Transferencia de CC p/ CC dentro do Itaú
                        Else
                                Q_AUXI.SQL.ADD('''' + '30' + '''' + ')' ) // Pagto. de Tít. em Cobrança no Itaú
                   End Else Begin
                        If Q_PAGATP_PAG.Asstring = 'C' then
                        Begin
                                If Q_ITEMValorLiquido.asfloat < 5000.0 then
                                        Q_AUXI.SQL.ADD('''' + '3' + '''' + ')' )  // DOC TERCEIROS
                                Else
                                        Q_AUXI.SQL.ADD('''' + '41' + '''' + ')' )  // TED TERCEIROS
                        End Else Begin
                                Q_AUXI.SQL.ADD('''' + '31' + '''' + ')' )  // Pagto. de Tít. em Cobrança em Outros Bancos
                        End;
                   End;

                   {
                   AssignFile(T,'SQL.TXT');
                   Rewrite(T);
                   WriteLn(T,Q_AUXI.SQL.TEXT);
                   CloseFile(T);
                   }
                   
                   Q_AUXI.EXECSQL ;

       end else begin
                   Q_AUXI2.close ;
                   Q_AUXI2.SQL.clear ;
                   Q_AUXI2.SQL.Add('select  FLAG,RAZAO from CPATPAG ') ;
                   Q_AUXI2.SQL.Add(' where FLAG = '  + StrFlag) ;
                   Q_AUXI2.SQL.Add('GROUP BY FLAG,RAZAO ') ;
                   Q_AUXI2.Open ;


                  Q_AUXI.Sql.clear;
                  Q_AUXI.SQL.ADD('update CPACHEQ set Valor = Valor  + '  + Funcoes.Converte(floattostr(Q_ITEMValorLiquido.asfloat) ,',','.'));

                  IF Q_AUXI2.recordcount > 1 then  begin
                     Q_AUXI.SQL.ADD( ',' + ' Favorecido = '  + '''' +  Q_BANCBAN_NOME.asstring  + '''') ;
                     Q_AUXI.SQL.ADD( ',' + ' Nome = ' +'''' +'Diversos títulos' +'''');
                     Q_AUXI.SQL.ADD('where  ChequeNumero = ' + inttostr(sNUMCHQ));
                     Q_AUXI.SQL.ADD('and   BANCO = '  + '''' +  Q_BANCBAN_CODI.asstring  + '''') ;
                   end else begin
                      Q_AUXI.SQL.ADD('where  ChequeNumero = ' + inttostr(sNUMCHQ));
                      Q_AUXI.SQL.ADD('and   BANCO = '  + '''' +  Q_BANCBAN_CODI.asstring  + '''') ;
                   end ;

                  Q_AUXI.EXECSQL ;

       end ;

       Q_AUXI2.close ;
       Q_AUXI2.SQL.clear ;
       Q_AUXI2.SQL.Add('select  MAX(NUMERO) NUMERO from CPACHEQ ') ;
       Q_AUXI2.SQL.ADD('WHERE   BANCO = '  + '''' +  Q_BANCBAN_CODI.asstring  + '''') ;
       Q_AUXI2.Open ;

       Q_AUXI.close ;
       Q_AUXI.SQL.clear;
       Q_AUXI.SQL.Add(' insert into CPAICHE ') ;
       Q_AUXI.SQL.Add('(Numero, ');
       Q_AUXI.SQL.Add(' NumeroCP,  ') ;
       Q_AUXI.SQL.Add(' Valor, ') ;
       Q_AUXI.SQL.Add(' ValorDescAcres, ') ;
       Q_AUXI.SQL.Add(' Saldo, ') ;
       Q_AUXI.SQL.Add(' Data, ') ;
       Q_AUXI.SQL.Add(' Emitido, ') ;
       Q_AUXI.SQL.Add(' Tipo) ' ) ;
       Q_AUXI.SQL.ADD(' values ( ') ;
       Q_AUXI.SQL.ADD(Q_AUXI2.fieldbyname('NUMERO').asstring  + ', ') ;
       Q_AUXI.SQL.ADD( Q_ITEMNumeroCp.asstring + ',') ;

       Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMValorLiquido.asfloat) ,',','.') + ',');
       Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMDescAcresc.asfloat) ,',','.') + ',');
       Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMAbater.asfloat) ,',','.') + ',');

       Q_AUXI.SQL.ADD( '''' + FormatDateTime('MM/DD/YYYY',date) + ''''+ ',' );
       Q_AUXI.SQL.ADD( ''''+  'N' + '''' + ',') ;
       Q_AUXI.SQL.ADD( ''''+  Tipo + ''''+ ')') ;

       Q_AUXI.EXECSQL ;


       while not Q_DET.eof do begin
           Q_AUXI.close ;
           Q_AUXI.SQL.clear;
           Q_AUXI.SQL.Add(' insert into CPADCHE  ') ;
           Q_AUXI.SQL.ADD(' (Numero, ') ;
           Q_AUXI.SQL.ADD(' NumeroCP, ') ;
           Q_AUXI.SQL.ADD(' CodDescAcres, ');
           Q_AUXI.SQL.ADD(' Data,      ') ;
           Q_AUXI.SQL.ADD(' Valor, ') ;
           Q_AUXI.SQL.ADD(' Historico ) ')  ;
           Q_AUXI.SQL.ADD(' values ( ') ;
           Q_AUXI.SQL.ADD(Q_AUXI2.fieldbyname('NUMERO').asstring  + ', ') ;
           Q_AUXI.SQL.ADD(  Q_DETNumeroCP.asstring + ',' ) ;
           Q_AUXI.SQL.ADD('''' + Q_DETCodDescAcres.asstring + '''' + ',' ) ;
           Q_AUXI.SQL.ADD('''' + FormatDateTime('MM/DD/YYYY',date) + ''''+ ',' );
           Q_AUXI.SQL.ADD(Funcoes.Converte(floattostr(Q_DETDescAcresc.AsFloat),',','.') + ',' ) ;
           Q_AUXI.SQL.ADD('''' + Q_DETHistorico.asstring + '''' + ')' ) ;

           Q_AUXI.EXEcSQL ;
           Q_AUXI.close ;

           Q_DET.next ;
        end;
     end ;

     Q_ITEM.next ;
  end ;

  Q_CHQ.Close;
  Q_CHQ.open ;

  Panel3.visible := true ;
  Panel3.BringToFront;

  If Tp = 'S' then
        rdS.Checked := True
  Else  If Tp = 'C' then
        rdC.Checked := True
  Else  If Tp = 'B' then
        rdB.Checked := True ;

  Panel3.TOP := 53;
  Panel3.LEFT := 0;

end ;



procedure TFChBor.SpeedButton1Click(Sender: TObject);
begin

 If Tbn_ChqBor.PageIndex = 2 then
         Tbn_ChqBor.PageIndex := 1
 Else if Panel3.Visible then Begin
        speedbutton6.Click;
        close ;
 End Else
        close;

end;

procedure TFChBor.FormPaint(Sender: TObject);
begin
  /////TbN_ChqBor.PageIndex := 0;
end;

procedure TFChBor.BitBtn2Click(Sender: TObject);
begin
  IF DBLC_REC_RAZA.text = '' then begin
     MessageDlg('Banco não foi preenchido ! ', mtInformation,[mbOk], 0);
     DBLC_REC_RAZA.setfocus ;
     abort;
  end ;

  GeraItens(self) ;


  
end;

procedure TFChBor.Q_ITEMBeforePost(DataSet: TDataSet);
begin
    Q_ITEMValorLiquido.asfloat := Q_ITEMAbater.asfloat + Q_ITEMDescAcresc.asfloat ;
end;

procedure TFChBor.BitBtn1Click(Sender: TObject);

begin
   if Q_ITEM.State in [dsInsert, dsEdit] then
      Q_ITEM.Post;

   If Sender = BitBtn1 then
   Begin
        //Tp := 'C' //Cheque
        rdC.Checked := True;
        rdSClick(Sender);
        SpeedButton9.Enabled := True;
        PagamentoEscritural := False;
   End Else If (Sender = BitBtn5) or (Sender = BitBtn7) then
   Begin
        //Tp := 'S'; //SisPag
        //Transforma todos os pagamentos em 1 vs 1, pq em SisPag é linha a linha, sem agrupamento.

        If (Sender = BitBtn5) then
        begin
           rdS.Checked := True;
           rdSClick(Sender);
           SpeedButton4.Enabled := True;
        end
        else  if  (Sender = BitBtn7) then
        begin
           rdB.Checked := True;
           rdSClick(Sender);
        end;
//        Zera_S.Click;
//        Marca_S.Click;

       sp_Atual.Enabled := True;


       if Q_ITEM.State in [dsInsert,dsEdit] then
            Q_ITEM.Post;

        { if ErroPagEscritural = True then
         MessageBox(Self.Handle,
         pchar('Os fornecedores marcados em vermelho não estão habilitados para efetuar o Pagamento Escritural, os mesmos não serão tomados em conta!' + #13+'MOTIVO: INFORMAÇÕES INCOMPLETAS.'), 'Informação do Sistema!!!!',
         MB_OK + MB_ICONEXCLAMATION);  }

         PagamentoEscritural := True;

       //EM SISPAG NÁO TEM JUNÇAO DE TITULOS, ASSIM MARCA COM 1 TODOS QUE FOREM DIFERENTES DE 1
       with Q_FUNC do
       Begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE CPATPAG SET Flag = 1 WHERE FLAG <> 0 ');
            ExecSQL;
       end;
       Q_ITEM.Close;
       Q_ITEM.Open;
   End;

   Q_AUXI.SQL.Clear;
   Q_AUXI.SQL.Add(' UPDATE CPATPAG SET TIPO = ' + '''' + TP + '''' + ' WHERE TIPO IS NULL');
   Q_AUXI.ExecSQL;

   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   Q_AUXI.SQL.Clear;
   Q_AUXI.SQL.Add(' SELECT * FROM CPATPAG WHERE FLAG > 0');
   Q_AUXI.SQL.Add(' AND    TIPO = ' + '''' + TP + '''');
   Q_AUXI.Open;

   if Q_AUXI.RecordCount = 0 then
   begin
        MessageDlg('Não foram selecionados itens para geração!', mtInformation,
        [mbok],0);
        abort;
   end;


   if Sender = BitBtn7 then
      rdB.Checked := True;


   if MessageDlg( 'Confirma geração dos itens selecionados? ', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        GeraCheque(Self, Tp) ;

   PagamentoEscritural := False;
end;

procedure TFChBor.Q_CHQAfterPost(DataSet: TDataSet);
var SCodigo : string ;
begin
   sCodigo  := Q_CHQNumero.asstring ;
   try
        begin
                FMenu.DATABASE1.ApplyUpdates([Q_CHQ]);
        end;
        except
        begin
                Q_CHQ.RevertRecord;
        end;
   end;
   Q_CHQ.Close;
   Q_CHQ.Open;
   Q_CHQ.locate('Numero',sCodigo, [loPartialKey]);


end;

procedure TFChBor.BitBtn3Click(Sender: TObject);
begin
  Q_CHQ.open ;

  Panel3.visible := true ;
  Panel3.BringToFront;
  SBT_REFR.Enabled := false;
  Panel3.TOP := 39;
  Panel3.LEFT := 0;
  Fonte.Enabled := false;
end;

procedure TFChBor.SpeedButton6Click(Sender: TObject);
var SQL:String;
begin

     If (Q_CHQ.State = dsEdit) or (Q_CHQ.State = dsInsert) then
        Q_CHQ.POST;

     {
     //Só apaga tudo se for cheque, se for sispag deixa em aberto.
     If Tp = 'C' then
     Begin

         Q_AUXI.Close;
         Q_AUXI.SQL.Clear;
         Q_AUXI.SQL.Add('SELECT * FROM CPACHEQ WHERE DATAEMISSAO IS NULL AND TIPO = ' + '''' + 'C' + '''');
         Q_AUXI.Open;

         if (Q_AUXI.recordcount > 0) and (MessageDlg('Os cheques não emitidos serão perdidos. Deseja realmente sair?',
         mtconfirmation,[mbyes,mbno],0) = mrno) then
            abort
         else
         begin
            Q_AUXI.Close;
            Q_AUXI.SQL.Clear;
            Q_AUXI.SQL.Add('DELETE CPADCHE WHERE NUMERO IN (SELECT NUMERO FROM CPACHEQ WHERE DATAEMISSAO IS NULL AND TIPO = ' + '''' + 'C' + '''' + ')');
            Q_AUXI.ExecSQL;

            Q_AUXI2.Close;
            Q_AUXI2.SQL.Clear;
            Q_AUXI2.SQL.Add('SELECT * FROM CPAICHE WHERE NUMERO IN (SELECT NUMERO FROM CPACHEQ WHERE DATAEMISSAO IS NULL AND TIPO = ' + '''' + 'C' + '''' + ')');
            Q_AUXI2.Open ;

            While not (Q_auxi2.eof) do
            begin
                Q_AUXI.SQL.Clear;
                Q_AUXI.SQL.Add('DELETE FROM CPAIDPA WHERE NUMERO = ' +Q_AUXI2.fieldbyname('NUMEROCP').asstring);
                Q_AUXI.ExecSQL;

                Q_AUXI.Close;
                Q_AUXI.SQL.Clear;
                Q_AUXI.SQL.Add('DELETE CPAICHE WHERE NUMEROCP = ' +Q_AUXI2.fieldbyname('NUMEROCP').asstring) ;
                Q_AUXI.ExecSQL;

                Q_AUXI2.next ;
            end ;

            Q_AUXI.Close;
            Q_AUXI.SQL.Clear;
            Q_AUXI.SQL.Add('DELETE FROM CPACHEQ WHERE DATAEMISSAO IS NULL AND TIPO = ' + '''' + 'C' + '''');
            Q_AUXI.ExecSQL;

         end;
     End;
     }

     Q_AUXI.SQL.Clear;
     Q_AUXI.SQL.Add('SELECT * FROM CPACHEQ WHERE DATAEMISSAO IS NULL AND TIPO = ' + '''' + 'C' + '''');
     Q_AUXI.Open;

     if (Q_AUXI.recordcount > 0) and (MessageDlg('Os cheques não emitidos serão perdidos. Deseja realmente sair?',
     mtconfirmation,[mbyes,mbno],0) = mrno) then
        abort
     else
     begin

             rdC.Checked := True;
             btSelTodos.Click;
             btApaga.Click;


             Panel3.visible := false ;
             Panel3.SendToBack;
             Fonte.enabled := true;
             SBT_REFR.Enabled := true;

              //Volta ao SQL Original de Q_CHQ, que pode gter sido mudado por ter sido chamado
              //a partir da tela principal, que determina que o SQL seja apenas para SisPag.
             rdC.Checked := True;
             rdSClick(Sender);

             Q_CHQ.close ;
             Q_ITEM.close ;
             TbN_ChqBor.PageIndex := 0;
     End;
     SpeedButton9.Enabled := False;
     SpeedButton4.Enabled := False;
     sp_Atual.Enabled := False;
end;

procedure TFChBor.btSelTodosClick(Sender: TObject);
begin
     If (Q_CHQ.State = dsEdit) or (Q_CHQ.State = dsInsert) then
       Q_CHQ.POST;


     Q_auxi.close;
     Q_auxi.sql.Clear;
     Q_auxi.sql.Add(' Update    CPACHEQ set MARCADOR = ' + '''' + '*' + ''' WHERE Dataemissao is null ' );
     Q_auxi.sql.Add(' AND       TIPO = ' + '''' + Tp + '''' );
     Q_Auxi.ExecSql;

     Q_CHQ.close;
     Q_CHQ.open ;
end;

procedure TFChBor.spNemClick(Sender: TObject);
begin

    If (Q_CHQ.State = dsEdit) or (Q_CHQ.State = dsInsert) then
        Q_CHQ.POST;

     Q_auxi.close;
     Q_auxi.sql.Clear;
     Q_auxi.sql.Add(' Update    CPACHEQ set MARCADOR = ' + '''' + '' + ''' WHERE Dataemissao is null ' );
     Q_auxi.sql.Add(' AND       TIPO = ' + '''' + Tp + '''' );
     Q_Auxi.ExecSql;

     Q_CHQ.close;
     Q_CHQ.open ;
end;

procedure TFChBor.btApagaClick(Sender: TObject);
var
x : integer;
banco : string;
begin
    if (Q_CHQ.State = dsInsert) or (Q_CHQ.State = dsEdit) then
        Q_CHQ.post ;

    {ANDRE -> Manter a numeração sequêncial dos cheques neste banco quando
    um cheque for excluído.}
    Q_AUXI4.SQL.Clear;
    Q_AUXI4.SQL.Add(' SELECT MIN(CHEQUENUMERO) AS MENOR, BANCO FROM CPACHEQ ');
    Q_AUXI4.SQL.Add(' WHERE MARCADOR = ' +'''' +'*' +'''');
    Q_AUXI4.SQL.Add(' AND TIPO = ' + '''' + Tp + '''');
    Q_AUXI4.SQL.Add('GROUP BY BANCO');

    Q_AUXI4.Open;

    If not Q_AUXI4.EOF then
    Begin
            x := Q_AUXI4.fieldbyname('MENOR').asinteger;
            banco := Q_AUXI4.fieldbyname('BANCO').asstring;

          Q_CHQ.first ;
          While not (Q_CHQ.eof)do
          begin
              IF (Q_CHQMarcador.asstring = '*') then
              begin

                   Q_AUXI.Close;
                   Q_AUXI.SQL.Clear;
                   Q_AUXI.SQL.Add('DELETE CPADCHE WHERE NUMERO = ' + Q_CHQNumero.asstring );
                   Q_AUXI.ExecSQL;

                   Q_AUXI2.Close;
                   Q_AUXI2.SQL.Clear;
                   Q_AUXI2.SQL.Add('SELECT * FROM CPAICHE WHERE NUMERO = ' + Q_CHQNumero.asstring );
                   Q_AUXI2.Open ;

                   Q_auxi2.first ;
                   While not (Q_auxi2.eof) do
                   begin
                      Q_AUXI.SQL.Clear;
                      Q_AUXI.SQL.Add('DELETE FROM CPAIDPA WHERE NUMERO = ' +Q_AUXI2.fieldbyname('NUMEROCP').asstring);
                      Q_AUXI.ExecSQL;

                      Q_AUXI.Close;
                      Q_AUXI.SQL.Clear;
                      Q_AUXI.SQL.Add('DELETE CPAICHE WHERE NUMEROICHE = ' +Q_AUXI2.fieldbyname('NUMEROICHE').asstring) ;
                      Q_AUXI.ExecSQL;

                      Q_AUXI2.next ;
                  end ;
              end ;
              Q_CHQ.next ;
          end ;

          Q_AUXI.Close;
          Q_AUXI.SQL.Clear;
          Q_AUXI.SQL.Add('DELETE CPACHEQ WHERE MARCADOR = ' + '''' + '*' + '''' );
          Q_AUXI.ExecSQL;

          while not Q_AUXI4.Eof do
          begin
              banco := Q_AUXI4.fieldbyname('BANCO').asstring;

              Q_AUXI2.SQL.Clear;
              Q_AUXI2.SQL.Add('SELECT * FROM CPACHEQ WHERE BANCO LIKE ');
              Q_AUXI2.SQL.Add('''' +banco +'''' +' AND ');
              Q_AUXI2.SQL.Add('CHEQUENUMERO > ' +Q_AUXI4.fieldbyname('MENOR').asstring);
              Q_AUXI2.SQL.Add(' ORDER BY CHEQUENUMERO');
              Q_AUXI2.Open;

              while not Q_AUXI2.eof do
              begin
                      Q_AUXI3.SQL.Clear;
                      Q_AUXI3.SQL.Add('UPDATE CPACHEQ SET CHEQUENUMERO = ' +inttostr(x));
                      Q_AUXI3.SQL.Add('WHERE NUMERO = ' +Q_AUXI2.fieldbyname('NUMERO').asstring);
                      Q_AUXI3.ExecSql;

                      x := x + 1;

                      Q_AUXI2.Next;
              end;
              Q_AUXI4.Next;
          end;
          {ANDRE -> Fim!!!!}

    End;

    Q_CHQ.close;
    Q_CHQ.open ;
    Q_CHQ.first ;
end;

procedure TFChBor.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
        key := #0;
        perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFChBor.SpeedButton9Click(Sender: TObject);
begin

   if (Q_CHQ.State = dsInsert) or (Q_CHQ.State = dsEdit) then
        Q_CHQ.post ;

   Q_AUXI.SQL.CLear;
   Q_AUXI.SQL.Add('SELECT COUNT(*) AS NUM FROM CPACHEQ WHERE DataEmissao IS NULL ');
   Q_AUXI.SQL.Add(' AND TIPO = ' + '''' + 'C' + '''');
   Q_AUXI.SQL.Add('GROUP BY CHEQUENUMERO');
   Q_AUXI.Open;

   while not Q_AUXI.eof do
   begin
        if Q_AUXI.fieldbyname('NUM').value > 1 then
        begin
                MessageDlg('Há cheques com números iguais.', mtError,[mbok],0);
                abort;
        end;
        Q_AUXI.Next;
   end;

   Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' SELECT COUNT(*) as QT FROM CPACHEQ ');
   Q_auxi.sql.Add(' where MARCADOR = ' + '''' + '*' + '''');
   Q_auxi.sql.Add(' AND   TIPO =  ' + '''' + 'C' + '''');
   Q_Auxi.open;

   IF  Q_Auxi.fieldbyname('QT').asinteger  = 0 then begin
        MessageDlg('Não foi escolhido nenhum item ! ', mtInformation,[mbOk], 0);
        abort;
   end ;

   Application.Createform(TFEmissaoCOPIA, FEmissaoCOPIA);
   FEmissaoCOPIA.QR_CPDECHEQUE.Preview;
   FEmissaoCOPIA.close ;
   FEmissaoCOPIA.Release;

  { Application.CreateForm(TfrmEmissCheque2,frmEmissCheque2);
   frmEmissCheque2.QR_CPDECHEQUE.Preview;
   frmEmissCheque2.Close;        }
   

   Q_CHQ.close ;
   Q_CHQ.open ;
end;

procedure TFChBor.ORDE_SClick(Sender: TObject);
begin
   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   With Q_ITEM do
   Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CPATPAG ORDER BY FLAG DESC, vencimento ');
        Open;
   end;
end;

procedure TFChBor.ZERA_SClick(Sender: TObject);
begin
   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   with Q_FUNC do
   Begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CPATPAG SET Flag = 0');
        ExecSQL;
   end;
   Q_ITEM.Close;
   Q_ITEM.Open;
end;

procedure TFChBor.MARCA_SClick(Sender: TObject);
begin
   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   with Q_FUNC do
   Begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CPATPAG SET Flag = 1  ');
        ExecSQL;
   end;
   Q_ITEM.Close;
   Q_ITEM.Open;
end;

procedure TFChBor.wwDBGrid1ColExit(Sender: TObject);
begin
   if wwDBGrid1.selectedfield = Q_ITEMDescAcresc then
   begin
        IF (Q_ITEMDescAcresc.value <> 0) and (Q_ITEM.state in [dsEdit,dsInsert]) then
        begin
                Q_ITEM.Post;
                Q_DET.open;
                Fonte.DataSource := DS_Det;
                TbN_ChqBor.PageIndex := 2;
        end;
   end;
end;

procedure TFChBor.wwDBGrid1Exit(Sender: TObject);
begin
    if wwDBGrid1.selectedfield = Q_ITEMDescAcresc then
    begin
            IF (Q_ITEMDescAcresc.value <> 0) and (Q_ITEM.state in [dsEdit,dsInsert]) then
            begin
                    Q_ITEM.Post;
                    Q_DET.open;
                    Fonte.DataSource := DS_Det;
                    TbN_ChqBor.PageIndex := 2;
            end;
    end;
end;

procedure TFChBor.Q_CHQBeforePost(DataSet: TDataSet);
begin
    If Q_CHQ.State = dsInsert then
    Begin
        IF (Q_CHQCHEQUENUMERO.AsString <> '')  and
           (Q_CHQBANCO.AsString <> '') then
        Begin
            Q_AUXI.SQL.Clear;
            Q_AUXI.SQL.Add('SELECT COUNT(*) AS QTDE FROM CPACHEQ WHERE ');
            Q_AUXI.SQL.Add('CHEQUENUMERO = ' +Q_CHQCHEQUENUMERO.AsString);
            Q_AUXI.SQL.Add('AND BANCO = ' + '''' + Q_CHQBANCO.AsString + '''');
            Q_AUXI.Open;

            if Q_AUXI.fieldbyname('QTDE').value > 0 then
            begin
                    MessageDlg('Já existe um cheque neste banco com este número.',
                    mtError, [mbok], 0);
                    Q_CHQ.Cancel;
            end;
        End;
    End;
end;

procedure TFChBor.SBT_REFRClick(Sender: TObject);
begin
        Q_ITEM.Close;
        Q_ITEM.Open;
        Q_CHQ.Close;
        Q_CHQ.Open;
        Q_FB.CLOSE;
        Q_FB.OPEN;
        Q_FBI.CLOSE;
        Q_FBI.OPEN;
end;

procedure TFChBor.BitBtn6Click(Sender: TObject);
var SQL:String;
begin
if  DBLC_REC_RAZA.Text = '' then
begin
     MessageBox(Self.Handle, 'É necessário selecionar uma conta bancaria!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
end;
        Panel3.Visible := True;
        Panel3.BringToFront;
        Panel3.Left := 0;
        Panel3.Top := 53;
        Tp := 'S';
        rdS.Checked := True;
        rdSClick(Sender);
        spNem.Click;
end;

procedure TFChBor.rdSClick(Sender: TObject);
var SQL:String;
begin
     SpeedButton9.Enabled := False;
     SpeedButton4.Enabled := False;
     sp_Atual.Enabled := False;

        SQL :=
        'SELECT 	NUMERO, ' +
        '	        CHEQUENUMERO,' +
        '	        DATAEMISSAO, ' +
        '	        FAVORECIDO,' +
        '	        NOME,' +
        '	        VALOR,' +
        '	        BANCO,' +
        '	        TIPO,' +
        '	        EMITIDO,' +
        '	        MARCADOR,' +
	'               FB_ID_BancoCred,' +
        '       	NUMEROBC,' +
        '       	AGENBC,' +
        '         	CONTABC,' +
        '               TP_PAG, ' +
        '       	TP_TRANS, ' +
        '               NUMEROCP, vencimento ' + 
        ' FROM 	        CPACHEQ' +
        ' WHERE         DATAEMISSAO IS NULL';

        If rdS.Checked then
        Begin
                SQL := SQL + ' AND           TIPO = ' + '''' + 'S' + '''';
                Tp := 'S';
                sp_Atual.Enabled := true;
                SpeedButton4.Enabled := True;
        End
        Else if rdC.Checked then
        Begin
                SQL := SQL + ' AND           TIPO = ' + '''' + 'C' + '''';
                Tp := 'C';
                //sp_Atual.Visible := false;
                SpeedButton9.Enabled := True;
        End
        Else if rdB.Checked then
        Begin
                SQL := SQL + ' AND           TIPO = ' + '''' + 'B' + '''';
                Tp := 'B';
                sp_Atual.Enabled := True;
        End;

        IF MaskEdit1.Text <> '  /  /    ' then
        sql := SQL + ' AND convert(char(10), vencimento, 112) >= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit1.Text)));
        IF MaskEdit2.Text <> '  /  /    ' then
        sql := SQL + ' AND convert(char(10), vencimento, 112) <= ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(MaskEdit2.Text)));


        SQL := SQL +
        ' ORDER BY' +
        ' TP_PAG, TP_TRANS, TIPO, BANCO, CHEQUENUMERO ';

        Q_CHQ.SQL.CLEAR;
        Q_CHQ.SQL.ADD(SQL);
        Q_CHQ.Open;

end;

procedure TFChBor.sp_AtualClick(Sender: TObject);
Var SQL:String; Entrou : Boolean;
begin
        If (Q_CHQ.State = dsEdit) or (Q_CHQ.State = dsInsert) then
            Q_CHQ.POST;

        Entrou := false;

        If MessageDlg('Deseja realmente executar atualização de registros de pagamentos? Isto gerará as baixas correspondentes.',
        mtconfirmation,[mbyes,mbno],0) = mrYes then
        Begin

              SQL :=  ' SELECT CP.NUMERO, CP.BANCO FROM CPACHEQ  CP WHERE CP.MARCADOR = ' + '''' + '*' + '''' +
                      ' AND    CP.TIPO = ' + '''' + Tp + ''''; {+
                        AND    EMITIDO = ' + '''' + 'G' + '''';}
                      //G Significa que já houve ao menos uma geração de arquivo de Sispag
                      //Para o item do cheque.

              Q_AUXI.SQL.CLEAR;
              Q_AUXI.SQL.ADD(SQL);
              Q_AUXI.OPEN;





         //miguel
         //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
         IF FMenu.CONCILIACAO(Q_AUXI.FieldByName('BANCO').AsString, Date) then
         begin
            MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                    'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
            Abort;
         end;

         //////////////////////////////////////////////////////////////////////////////////////////////////////////










              While not Q_AUXI.EOF Do
              Begin
                      Entrou := True;

                          SQL := ' UPDATE CPACHEQ SET EMITIDO = ' + '''' + 'S' + '''' + ',' +
                                                    ' DATAEMISSAO = ' + '''' + FORMATDATETIME('MM/DD/YYYY',NOW) + ''''  + ',' +
                                                    ' MARCADOR = NULL ' +
                                 ' WHERE  NUMERO = ' + Q_AUXI.FieldByName('NUMERO').AsString;

                          Q_SQL.SQL.CLEAR;
                          Q_SQL.SQL.ADD(SQL);
                          Q_SQL.EXECSQL;




                      //Atualizamos as baixas como baixa total

                     { with qrAuxiliar do
                      begin
                          Close;
                          sql.Clear;
                          sql.Add('Update CPAIPAG SET TIPOBAIXA = ''T'' WHERE NUMERO = ' + Q_AUXI.FieldByName('NUMERO').AsString ) ;
                          ExecSQL;
                      end;  }

                      Q_AUXI.Next;
              End;
              If Entrou then
                      MessageDlg('Execução realizada com sucesso!',
                      mtInformation,[mbOk],0)
              Else
                      MessageDlg('Não foram encnotrados registros nas condições especificadas!',
                      mtInformation,[mbOk],0)

        End;

        Q_CHQ.Close;
        Q_CHQ.Open;

end;

procedure TFChBor.SpeedButton4Click(Sender: TObject);
VAR SQL: STRING;
    QT : STRING;
    PGTOERRO : Boolean;
begin
      Q_CHQ.First;
      WHILE not Q_CHQ.Eof DO
      BEGIN
          IF Q_CHQPgtoOK.Value = 0 then
             PGTOERRO := True;
          Q_CHQ.Next;
      end;

      IF PGTOERRO = True then
      begin
         MessageBox(Self.Handle,
         pchar('Existem pagamentos com informações incompletas para a geração do pagamento escritural' + #13+
         'Verifique os pagamentos em vermelho'+#13+'Possíveis erros:'+#13+
         ' - Falta do número do titulo do pagamento'+#13+
         ' - Falta de informações bancárias no cadastro de fornecedores.'), 'Erro na geração de pagamentos',
         MB_ok + MB_ICONERROR);
         Abort;
      end;

      if (Q_BANCban_pe.AsString = '') or (Q_BANCban_pe.AsString = '0') then
      begin
         MessageBox(Self.Handle, 'A conta selecionada não está relacionada a um padrão de geração do pagamento escritural!', 'Erro', MB_OK + MB_ICONERROR);
         Abort;
      end;

      If (Q_CHQ.State = dsEdit) or (Q_CHQ.State = dsInsert) then
        Q_CHQ.POST;


      SQL:=  ' SELECT COUNT(MARCADOR) AS MARCADOR FROM CPACHEQ WHERE MARCADOR = ' + '''' + '*' + '''';

      Q_AUXI.SQL.CLEAR;
      Q_AUXI.SQL.ADD(SQL);
      Q_AUXI.OPEN;


      IF Q_AUXI.FieldByName('MARCADOR').asstring = '0' THEN BEGIN
         MessageDlg('Não foram selecionados registros para a geração do arquivo SISPAG !',
         mtInformation,[mbOk],0);
         abort;
      end
      else begin
           Qt := Q_AUXI.FieldByName('MARCADOR').asstring;

           SQL := ' SELECT       COUNT(1) QT '+
                  ' FROM         CPACHEQ ' +
                  ' WHERE        MARCADOR = ' + '''' + '*' + '''' +
                  ' AND          TP_PAG = ' + '''' + 'C' + '''' +
                  ' AND          (FB_ID_BANCOCRED IS NULL  ' +
                  '              OR NUMEROBC IS NULL ' +
                  '              OR AGENBC IS NULL ' +
                  '              OR CONTABC IS NULL ) ';

           Q_AUXI.SQL.CLEAR;
           Q_AUXI.SQL.ADD(SQL);
           Q_AUXI.OPEN;

           If Q_AUXI.FieldByName('QT').AsInteger >  0 then
           Begin
                MessageDlg('Existe(m) ' + Q_AUXI.FieldByName('QT').AsString + ' registro(s) selecionado(s) para geração com dados de Conta de Crédito incompleto(s), favor preencher.' ,
                mtInformation,[mbOk],0);
           End Else if MessageDlg(' Serão efetuados ' + QT + ' pagamentos. Deseja realmente prosseguir ? ',
                mtconfirmation,[mbyes,mbno],0) = mrYes then
           Begin
                Application.Createform(TFGeraPagFor, FGeraPagFor);
                FGeraPagFor.ShowModal;
                FGeraPagFor.Release;
          end;
     end;
end;

procedure TFChBor.Q_CHQCalcFields(DataSet: TDataSet);
var barras : string;
begin
        IF Q_CHQFavorecido.AsString = '' then
                Q_CHQFavorecido_Calc.AsString := Q_CHQNome.AsString
        Else
                Q_CHQFavorecido_Calc.AsString := Q_CHQFavorecido.AsString;


 //********* MIGUEL ****************
 //VERIFICA SE OS PAGAMENTOS ESTAO OK PARA PGTO ESCRITURAL
 if rdS.Checked then
 begin
  QR_CLIENTE.close;
  QR_CLIENTE.Params[0].AsString := Q_CHQNome.Value;
  QR_CLIENTE.Open;

  if QR_CLIENTECliente.Value =  0 then
  begin
     qrTitulo.close;
     qrTitulo.Params[0].AsInteger := Q_CHQNumeroCp.AsInteger;
     qrTitulo.Open;

     barras := qrTituloBarras.AsString;
     if (barras = '')  then
     begin
         Q_CHQPgtoOK.Value := 0;
         ErroPagEscritural := True;
     end
     else
        Q_CHQPgtoOK.Value := 1;
  end
  else
     Q_CHQPgtoOK.Value := QR_CLIENTECliente.Value;

  qrAux2.close;
  qrAux2.Params[0].AsString :=  Q_CHQNome.Value;
  qrAux2.Open;

  if qrAux2for_cgc.AsString <> '' then
  begin
       if Length(qrAux2for_cgc.AsString) = 14 then
       begin
             if not (FMenu.CGC(qrAux2for_cgc.Value)) then
                Q_CHQPgtoOK.Value := 0;
       end
       else if  Length(qrAux2for_cgc.AsString) = 11 then
       begin
             if not (FMenu.CPF(qrAux2for_cgc.Value)) then
                Q_CHQPgtoOK.Value := 0;
       end
       else
           Q_CHQPgtoOK.Value := 0;
  end;

      
 end;







end;

procedure TFChBor.Q_CHQAfterScroll(DataSet: TDataSet);
begin
        Q_FB.CLOSE;
        Q_FB.OPEN;
end;

procedure TFChBor.Grid4Enter(Sender: TObject);
begin
        Fonte.DataSource := DS_CHQ;
end;

procedure TFChBor.GridExit(Sender: TObject);
begin
        If (Q_CHQ.State = dsEdit) or (Q_CHQ.State = dsInsert) then
                Q_CHQ.POST;
end;

procedure TFChBor.Q_CHQFB_ID_BancoCredChange(Sender: TField);
begin
        If Q_CHQFB_ID_BancoCred.AsString <> '' then
        Begin
                Q_FBI.locate('FB_ID',Q_CHQFB_ID_BancoCred.AsString,[]);
                Q_CHQAgenBC.AsString := Q_FBIBAN_AGEN.AsString;
                Q_CHQContaBC.AsString := Q_FBIBAN_CONTA.AsString;
                Q_CHQNumeroBC.AsString := Q_FBINUMERO.AsString;
        End Else Begin
                Q_CHQAgenBC.AsString := '';
                Q_CHQContaBC.AsString := '';
                Q_CHQNumeroBC.AsString := '';
        End;
end;

procedure TFChBor.Q_CHQBancoCredChange(Sender: TField);
begin
        If not Fez then
        Begin
            Fez := True;
            If Copy(Q_CHQNumeroBc.AsString,1,3) = '341' then
            Begin
                    If Q_CHQTP_PAG.Asstring = 'C' then
                            Q_CHQTP_TRANS.AsString := '1'  // Transferencia de CC p/ CC dentro do Itaú
                    Else
                            Q_CHQTP_TRANS.AsString := '30' // Pagto. de Tít. em Cobrança no Itaú

            End Else Begin
                    If Q_CHQTP_PAG.Asstring = 'C' then
                            If Q_ITEMValorLiquido.asfloat < 5000.0 then
                                    Q_CHQTP_TRANS.AsString := '3'  // DOC TERCEIROS
                            Else
                                    Q_CHQTP_TRANS.AsString := '41' // TED TERCEIROS
                    Else Begin
                            Q_CHQTP_TRANS.AsString := '31' // Pagto. de Tít. em Cobrança em Outros Bancos
                    End;
            End;
            Fez := false;
        End;


end;

procedure TFChBor.btnAddClick(Sender: TObject);
begin
  Fonte.BtnClick(nbInsert);
end;

procedure TFChBor.btnAtualizarClick(Sender: TObject);
begin
  Fonte.BtnClick(nbRefresh);
end;

procedure TFChBor.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFChBor.btnDeleteClick(Sender: TObject);
begin
   Fonte.BtnClick(nbDelete);
end;

procedure TFChBor.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFChBor.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFChBor.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFChBor.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  Fonte.BtnClick(nbPost);
end;

procedure TFChBor.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

procedure TFChBor.Q_ITEMCalcFields(DataSet: TDataSet);
var barras : string;
begin
{
  QR_CLIENTE.close;
  QR_CLIENTE.Params[0].AsString := Q_ITEMRazao.Value;
  QR_CLIENTE.Open;

  if QR_CLIENTECliente.Value =  0 then
  begin
     qrTitulo.close;
     qrTitulo.Params[0].AsInteger := Q_ITEMNumeroCp.AsInteger;
     qrTitulo.Open;

     barras := qrTituloBarras.AsString;

     if (barras = '')  then
     begin
         Q_ITEMClienteOk.Value := 0;
         ErroPagEscritural := True;
     end
     else
        Q_ITEMClienteOk.Value := 1;
  end
  else
     Q_ITEMClienteOk.Value := QR_CLIENTECliente.Value;
}
      
end;

procedure TFChBor.GridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  //miguel - verifica os pagamentos para sispag
  if rdS.Checked then
  begin
     if Q_CHQPgtoOK.Value = 0 then
         ABrush.Color := clRed;
  end;
end;

procedure TFChBor.FormShow(Sender: TObject);
begin
  {qrParams.Close;
  qrParams.Open;
  if qrParamsRestringe_pag_empresa.AsString = 'S' then
        chkEmpresa.Checked := True
  else
        chkEmpresa.Checked := False;  }
end;

end.

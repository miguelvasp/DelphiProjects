unit USisPag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, StdCtrls, Buttons, wwdblook, Mask,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, ComCtrls, Tabnotbk;

type
  TFSispag = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
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
    Label43: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    wwDBGrid3: TwwDBGrid;
    wwDBGrid2IButton: TwwIButton;
    DS_CHQ: TwwDataSource;
    UPD_CHQ: TUpdateSQL;
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
    SpeedButton2: TSpeedButton;
    Panel10: TPanel;
    Label9: TLabel;
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
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ORDE_SClick(Sender: TObject);
    procedure ZERA_SClick(Sender: TObject);
    procedure MARCA_SClick(Sender: TObject);
    procedure wwDBGrid1ColExit(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure Q_CHQBeforePost(DataSet: TDataSet);
    procedure wwDBGrid1CellChanged(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSispag: TFSispag;
  T : TextFile;
  LField :TField;
  Ignora :Boolean;

implementation

uses CPPMENU, U_FUNCOES, UEmissChqCp;

{$R *.DFM}

procedure TFSispag.GeraItens(Sender: TObject);
var StrAnd : string ;
begin
   Q_AUXI.Close ;
   Q_AUXI.sql.clear ;
   Q_AUXI.SQL.Add('Delete from cpadtpa where tipo = ' + '''' + 'S' + '''') ;
   Q_AUXI.execsql ;

   Q_ITem.close;
   Q_ITEM.sql.clear ;
   Q_ITEM.SQL.Add('Delete from cpatpag where tipo = ' + '''' + 'S' + '''') ;
   Q_ITEM.execsql ;
   Q_ITEM.Close ;

   Q_PAGA.close ;
   Q_PAGA.SQL.clear ;
   Q_PAGA.SQL.ADD('Select * from CPAPAGA ');
   Q_PAGA.SQL.ADD('where Saldo <> 0');

   if MaskEdit1.text <> '  /  /    ' then
        Q_PAGA.SQL.ADD(  'and Vencimento >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(MaskEdit1.text) ) + '''' );

   if MaskEdit2.text <> '  /  /    ' then
        Q_PAGA.SQL.ADD(  'and Vencimento <= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(MaskEdit2.text) ) + '''' );

   if DBLC_FORN.Text <> '' then
        Q_PAGA.SQL.Add(' and Fornecedor = ' +'''' +Q_FORNFOR_CODI.AsString +'''');

   ///if DBLC_REC_RAZA.text <> '' then
   ///Q_PAGA.SQL.ADD(  'and BancoConta =  ' + '''' + Q_BANCBAN_CODI.asstring + '''') ;
   Q_PAGA.SQL.ADD( ' order by numero');
   Q_PAGA.open ;

   IF Q_PAGA.recordcount = 0 then
   begin
        MessageDlg('Não existe Pagamento nessas condições ! ', mtInformation,[mbOk], 0);
        TbN_ChqBor.PageIndex := 0;
        abort;
   end ;

   while not Q_PAGA.eof do
   begin
        Q_ITEM.close ;
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
        Q_ITEM.SQL.ADD( '''' + FormatDateTime('MM/DD/YYYY',Q_PAGAVencimento.asdatetime ) + '''' + ')')   ;

        Q_ITEM.execsql;
        Q_PAGA.next ;
   end;
   Q_PAGA.close;

   Q_ITEM.close ;
   Q_ITEM.sql.clear ;
   Q_ITEM.SQL.Add('Select * from CPATPAG ') ;
   Q_ITEM.open;
   //  Panel3.visible := true ;

   Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' Select SUM(ValorLiquido) as TOT FROM CPATPAG' );
   Q_auxi.sql.Add(' where  FLAG <> ' + '''' + '0' + '''' ) ;
   Q_Auxi.open;

   Label10.caption := formatfloat('###,###,##0.00',Q_auxi.fieldbyname('TOT').asfloat) ;

   TbN_ChqBor.PageIndex := 1;
end ;

procedure TFSispag.Tbn_ChqBorClick(Sender: TObject);
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

procedure TFSispag.FormCreate(Sender: TObject);
begin
 Q_AUXI.Close ;
 Q_AUXI.sql.clear ;
 Q_AUXI.SQL.Add('Delete from cpadtpa ') ;
 Q_AUXI.execsql ;

// LField := Q_ITEMAbater;

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

   TbN_ChqBor.PageIndex := 0;
end;

procedure TFSispag.Q_DetAfterDelete(DataSet: TDataSet);
begin
     try
    FMenu.DATABASE1.ApplyUpdates([Q_Det]);
  except
    Q_Det.RevertRecord;
  end;
end;

procedure TFSispag.Q_DetAfterPost(DataSet: TDataSet);
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
  Q_Det.locate('Numerocp',sCodigo, [loPartialKey]);
end;

procedure TFSispag.Q_DetBeforeDelete(DataSet: TDataSet);
begin
      if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;
end;

procedure TFSispag.Q_ITEMAfterDelete(DataSet: TDataSet);
begin
     try
    FMenu.DATABASE1.ApplyUpdates([Q_Item]);
  except
    Q_Item.RevertRecord;
  end;
end;

procedure TFSispag.Q_ITEMAfterPost(DataSet: TDataSet);
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
   Q_Item.Close;
   Q_Item.Open;
   Q_Item.locate('NumeroCp',NUMCP,[]);
//   wwDBGrid1.SelectedField := LField;
   Ignora := False;

   Q_auxi.close;
   Q_auxi.sql.Clear;
   Q_auxi.sql.Add(' Select SUM(ValorLiquido) as TOT FROM CPATPAG' );
   Q_auxi.sql.Add(' where  FLAG <> ' + '''' + '0' + '''' ) ;
   Q_Auxi.open;

   Label10.caption := formatfloat('###,###,##0.00',Q_auxi.fieldbyname('TOT').asfloat) ;

end;

procedure TFSispag.Q_ITEMBeforeDelete(DataSet: TDataSet);
begin
   if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
        Abort;
end;

procedure TFSispag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ///if MessageDlg( 'Confirma geração dos Cheques selecionados ? ', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
    //// GeraCheque(Self) ;
  Q_ITEM.close ;
  Q_DET.close ;
  Q_DIFE.close ;
  Q_FORN.Close;
  Q_BANC.close ;
  action := cafree ;
end;

procedure TFSispag.Q_DetNewRecord(DataSet: TDataSet);
begin
   Q_DetNumeroCp.AsInteger := Q_ItemNumeroCp.AsInteger;
   Q_DetDescAcresc.ASFLOAT := Q_ItemDescAcresc.ASFLOAT;
end;

procedure TFSispag.Q_DetBeforePost(DataSet: TDataSet);
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





procedure TFSispag.Tbn_ChqBorChange(Sender: TObject; NewTab: Integer;
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
 { if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    AllowChange := false;
  end;    }

  

  {if (AllowChange) then
    case NewTab of
      1 : Fonte.DataSource := DS_Item;
      2 : Fonte.DataSource := DS_Det;
    end;   }

  if (TBN_ChqBor.PageIndex = 1) and (NewTab = 0) then begin
     ///if MessageDlg( 'Confirma geração dos Cheques selecionados ? ', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
       //// GeraCheque(Self) ;
  end;

  ////if (TBN_ChqBor.PageIndex = 0) and (NewTab = 1 ) then GeraItens(self) ;

  {if NewTab <> 1 then begin
    if AllowChange then
      if TBN_ChqBor.PageIndex = 1 then
      begin
        rValor := 0;
        with Q_AUXI do
        begin
          Close;
          SQL.Clear;
          SQL.Add( 'SELECT SUM(DESCACRESC) as NOVO FROM CPADTPA WHERE NumeroCP ='+Q_ITEMNumeroCP.Asstring  );
          Open;
          rValor := Q_AUXI.fieldbyname('NOVO').AsFloat;
        end;
        if Q_ITEMDescAcresc.Value <> rValor then
        begin
          sMensagem := 'Valor do Desconto/Acréscimo não confere com o Detalhamento.';
          sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
          sMensagem := sMensagem + FloatToStr( rValor );
          if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
          begin
            Fonte.DataSource := DS_ITEM;
            Fonte.BtnClick( nbEdit );
            Q_ITEMDescAcresc.Value := StrToFloat(FormatFloat('#######0.0000',rValor));
            Fonte.BtnClick( nbPost );
            case NewTab of
              0 : Fonte.DataSource := DS_ITEM;
              1: Fonte.DataSource := DS_Det;
            end;
          end
          else
          begin
            AllowChange := False;
            Fonte.DataSource := DS_Det;
          end;
        end;
      end
  end;  }
end;


procedure TFSispag.GeraCheque(Sender: TObject; Tipo:String);
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

  {If sCodigo = '' then
     sCodigo := '0';
  Try
     iCodigo:=StrToInt(sCodigo);
     sCodigo:=IntToStr(iCodigo);
  Except
     sCodigo :='';
  End;    }
  if (Q_ITEM.State = dsInsert) or (Q_ITEM.State = dsEdit) then
         Q_ITEM.post ;

  Q_AUXI2.close ;
  Q_AUXI2.SQL.clear ;
  Q_AUXI2.SQL.Add('Select BAN_UCHE  from CPABANC ');
  Q_AUXI2.SQL.Add(' where BAN_CODI = '  + '''' + Q_BANCBAN_CODI.asstring + '''') ;
  Q_AUXI2.Open ;

  sNUMCHQ := Q_AUXI2.fieldbyname('BAN_UCHE').asinteger ;

  Q_ITEM.close ;
  Q_ITEM.sql.clear ;
  Q_ITEM.SQL.Add('Select * from CPATPAG order by FLAG') ;
  Q_ITEM.open;
  Q_ITEM.first;
  
  while not Q_ITEM.eof do begin
     Q_PAGA.locate('numero',Q_ITEMNumeroCp.asstring,[]);
     StrCodForn := Q_PagaFornecedor.asstring ;
     StrRazao   := Q_ITEmRazao.asstring ;

     if Q_ITEMflag.asstring <> '0' then begin

       VARNOVA :=  Q_ITEMflag.asinteger ;
       StrFlag :=  Q_ITEMflag.asstring  ;
       IF (VARVELHA <> VARNOVA) or
          (Q_ITEMflag.asstring = '1') then begin

                   sNUMCHQ := sNUMCHQ + 1;
                   VARVELHA := VARNOVA ;

                   Q_AUXI.SQL.clear  ;
                   Q_AUXI.SQL.ADD(' insert into CPACHEQ  ') ;
                   ////Q_AUXI.SQL.ADD('(Numero, ');
                   Q_AUXI.SQL.ADD(' (ChequeNumero, ') ;
                   Q_AUXI.SQL.ADD(' Favorecido, ');
                   Q_AUXI.SQL.ADD(' Nome,       ');
                   Q_AUXI.SQL.ADD(' Valor,      ');
                   Q_AUXI.SQL.ADD(' Banco,      ');
                   Q_AUXI.SQL.ADD(' Tipo,       ');
                   Q_AUXI.SQL.ADD(' Emitido) ' );
                   Q_AUXI.SQL.ADD(' values (' ) ;
                   ////Q_AUXI.SQL.ADD( scodigo + ',') ;
                   Q_AUXI.SQL.ADD( inttostr(sNUMCHQ) + ',');
                   Q_AUXI.SQL.ADD('''' + StrCodForn + ''''+ ',' );
                   Q_AUXI.SQL.ADD('''' + StrRazao + '''' + ',' );
                   Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMValorLiquido.asfloat) ,',','.') + ',');
                   Q_AUXI.SQL.ADD('''' + Q_BANCBAN_CODI.asstring + '''' + ',' ) ;
                   Q_AUXI.SQL.ADD('''' +  Tipo + ''''  + ',' ) ;
                   Q_AUXI.SQL.ADD('''' +  'N' + ''''  + ')') ;
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
       Q_AUXI2.SQL.Add('select  NUMERO from CPACHEQ ') ;
       Q_AUXI2.SQL.ADD('where   ChequeNumero = ' + inttostr(sNUMCHQ));
       Q_AUXI2.SQL.ADD('and     BANCO = '  + '''' +  Q_BANCBAN_CODI.asstring  + '''') ;
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
       Q_AUXI.SQL.Add(' Tipo) ' ) ;
       Q_AUXI.SQL.ADD(' values ( ') ;
       Q_AUXI.SQL.ADD(Q_AUXI2.fieldbyname('NUMERO').asstring  + ', ') ;
       Q_AUXI.SQL.ADD( Q_ITEMNumeroCp.asstring + ',') ;
       ///Q_AUXI.SQL.ADD( Q_ITEMValorLiquido.asstring + ', ') ;
       ///Q_AUXI.SQL.ADD( Q_ITEMDescAcresc.asstring + ', ') ;
       ///Q_AUXI.SQL.ADD( Q_ITEMAbater.asstring + ', ') ;

       Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMValorLiquido.asfloat) ,',','.') + ',');
       Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMDescAcresc.asfloat) ,',','.') + ',');
       Q_AUXI.SQL.ADD(  Funcoes.Converte(floattostr(Q_ITEMAbater.asfloat) ,',','.') + ',');

       Q_AUXI.SQL.ADD( '''' + FormatDateTime('MM/DD/YYYY',date) + ''''+ ',' );
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

{ANDRE  Q_auxi.close;
  Q_auxi.sql.Clear;
  Q_auxi.sql.Add(' Update CPABANC set BAN_UCHE = ' + inttostr(sNUMCHQ) );
  Q_auxi.sql.Add(' where  BAN_CODI = ' + '''' + Q_BANCBAN_CODI.asstring + '''' ) ;
  Q_Auxi.ExecSql;}

  Q_CHQ.Close;
  Q_CHQ.open ;

  Panel3.visible := true ;
  Panel3.BringToFront;
  Panel3.TOP := 39;
  Panel3.LEFT := 0
//Q_ICHQ.close ;
end ;



procedure TFSispag.SpeedButton1Click(Sender: TObject);
begin
 if Panel3.Visible then
        speedbutton6.Click;
 close ;
end;

procedure TFSispag.FormPaint(Sender: TObject);
begin
  /////TbN_ChqBor.PageIndex := 0;
end;

procedure TFSispag.BitBtn2Click(Sender: TObject);
begin
  IF DBLC_REC_RAZA.text = '' then begin
     MessageDlg('Banco não foi preenchido ! ', mtInformation,[mbOk], 0);
     DBLC_REC_RAZA.setfocus ;
     abort;
  end ;

  GeraItens(self) ;
end;

procedure TFSispag.Q_ITEMBeforePost(DataSet: TDataSet);
begin
    Q_ITEMValorLiquido.asfloat := Q_ITEMAbater.asfloat + Q_ITEMDescAcresc.asfloat ;
    ////Q_ITEMAbater.asfloat :=  Q_ITEMAbater.asfloat +  Q_ITEMDescAcresc.asfloat ;
end;

procedure TFSispag.BitBtn1Click(Sender: TObject);
var Tp:String;
begin

   If Sender = BitBtn1 then
        Tp := 'C' //Cheque
   Else If Sender = BitBtn5 then
        Tp := 'S'; //SisPag

   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   Q_AUXI.SQL.Clear;
   Q_AUXI.SQL.Add('SELECT * FROM CPATPAG WHERE FLAG > 0');
   Q_AUXI.Open;

   if Q_AUXI.RecordCount = 0 then
   begin
        MessageDlg('Não foram selecionados cheques para geração!', mtInformation,
        [mbok],0);
        abort;
   end;

   if MessageDlg( 'Confirma geração dos cheques selecionados? ', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        GeraCheque(Self, Tp) ;
end;

procedure TFSispag.Q_CHQAfterPost(DataSet: TDataSet);
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

procedure TFSispag.BitBtn3Click(Sender: TObject);
begin
  Q_CHQ.open ;

  Panel3.visible := true ;
  Panel3.BringToFront;
  SBT_REFR.Enabled := false;
  Panel3.TOP := 39;
  Panel3.LEFT := 0;
  Fonte.Enabled := false;
end;

procedure TFSispag.SpeedButton6Click(Sender: TObject);
begin
     Q_AUXI.Close;
     Q_AUXI.SQL.Clear;
     Q_AUXI.SQL.Add('SELECT * FROM CPACHEQ WHERE DATAEMISSAO IS NULL');
     Q_AUXI.Open;

     if (Q_AUXI.recordcount > 0) and (MessageDlg('Os cheques não emitidos serão perdidos. Deseja realmente sair?',
     mtconfirmation,[mbyes,mbno],0) = mrno) then
        abort
     else
     begin
        Q_AUXI.Close;
        Q_AUXI.SQL.Clear;
        Q_AUXI.SQL.Add('DELETE CPADCHE WHERE NUMERO IN (SELECT NUMERO FROM CPACHEQ WHERE DATAEMISSAO IS NULL)');
        Q_AUXI.ExecSQL;

        Q_AUXI2.Close;
        Q_AUXI2.SQL.Clear;
        Q_AUXI2.SQL.Add('SELECT * FROM CPAICHE WHERE NUMERO IN (SELECT NUMERO FROM CPACHEQ WHERE DATAEMISSAO IS NULL)');
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
        Q_AUXI.SQL.Add('DELETE FROM CPACHEQ WHERE DATAEMISSAO IS NULL');
        Q_AUXI.ExecSQL;

     end;

     Panel3.visible := false ;
     Panel3.SendToBack;
     Fonte.enabled := true;                                
     SBT_REFR.Enabled := true;
     Q_CHQ.close ;
     Q_ITEM.close ;
     TbN_ChqBor.PageIndex := 0;
end;

procedure TFSispag.SpeedButton7Click(Sender: TObject);
begin
     Q_auxi.close;
     Q_auxi.sql.Clear;
     Q_auxi.sql.Add(' Update CPACHEQ set MARCADOR = ' + '''' + '*' + ''' WHERE Dataemissao is null ');
     Q_Auxi.ExecSql;

     Q_CHQ.close;
     Q_CHQ.open ;
end;

procedure TFSispag.SpeedButton8Click(Sender: TObject);
begin
     Q_auxi.close;
     Q_auxi.sql.Clear;
     Q_auxi.sql.Add(' Update CPACHEQ set MARCADOR = ' + '''' + '' + ''' WHERE Dataemissao is null ' );
     Q_Auxi.ExecSql;

     Q_CHQ.close;
     Q_CHQ.open ;
end;

procedure TFSispag.SpeedButton2Click(Sender: TObject);
var
x : integer;
banco : string;
begin
    if (Q_CHQ.State = dsInsert) or (Q_CHQ.State = dsEdit) then
        Q_CHQ.post ;

    {ANDRE -> Manter a numeração sequêncial dos cheques neste banco quando
    um cheque for excluído.}
    Q_AUXI4.SQL.Clear;
    Q_AUXI4.SQL.Add('SELECT MIN(CHEQUENUMERO) AS MENOR, BANCO FROM CPACHEQ ');
    Q_AUXI4.SQL.Add('WHERE MARCADOR = ' +'''' +'*' +'''' +'GROUP BY BANCO');
    Q_AUXI4.Open;

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
                Q_AUXI.SQL.Add('DELETE CPAICHE WHERE NUMEROCP = ' +Q_AUXI2.fieldbyname('NUMEROCP').asstring) ;
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

    Q_CHQ.close;
    Q_CHQ.open ;
    Q_CHQ.first ;
end;

procedure TFSispag.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
        key := #0;
        perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFSispag.SpeedButton9Click(Sender: TObject);
begin
   if (Q_CHQ.State = dsInsert) or (Q_CHQ.State = dsEdit) then
        Q_CHQ.post ;

   Q_AUXI.SQL.CLear;
   Q_AUXI.SQL.Add('SELECT COUNT(*) AS NUM FROM CPACHEQ WHERE DataEmissao IS NULL ');
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
   Q_Auxi.open;

   IF  Q_Auxi.fieldbyname('QT').asinteger  = 0 then begin
        MessageDlg('Não foi escolhido nenhum cheque ! ', mtInformation,[mbOk], 0);
        abort;
   end ;

    //Q_CHQ.first ;
    ///While not (Q_CHQ.eof)  do begin
        //IF (Q_CHQMarcador.asstring = '*')  then begin
          { Q_auxi.close;
           Q_auxi.sql.Clear;
           Q_auxi.sql.Add(' UPDATE CPACHEQ SET DataEmissao = ' + '''' + FormatDateTime('mm/dd/yyyy',NOW) + '''' ) ;
           Q_Auxi.ExecSql; }
        //end ;


         {Q_auxi.close;
         Q_auxi.sql.Clear;
         Q_auxi.sql.Add('SELECT NUMEROCP FROM CPAICHE') ;
         Q_auxi.sql.Add('where NUMERO = '  + Q_CHQNumero.asstring );
         Q_Auxi.open;

         Q_Auxi.first ;
         While not (Q_Auxi.eof)  do begin

               Q_auxi2.close;
               Q_auxi2.sql.Clear;
               Q_auxi2.sql.Add(' UPDATE CPAIPAG SET Documento = ' + '''' + Q_CHQChequeNumero.asstring + '''' ) ;
               Q_auxi2.sql.Add(' where Numero = ' +  Q_Auxi.fieldbyname('NUMEROCP').asstring);
               Q_Auxi2.ExecSql;

             Q_Auxi.next ;
         end ; }

        //Q_CHQ.next ;
    ///end ;

   Application.Createform(TFEmissaoCOPIA, FEmissaoCOPIA);
   FEmissaoCOPIA.QR_CPDECHEQUE.Preview;
   FEmissaoCOPIA.close ;
   FEmissaoCOPIA.Release;

   Q_CHQ.close ;
   Q_CHQ.open ;
end;

procedure TFSispag.ORDE_SClick(Sender: TObject);
begin
   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   With Q_ITEM do
   Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CPATPAG ORDER BY FLAG DESC');
        Open;
   end;
end;

procedure TFSispag.ZERA_SClick(Sender: TObject);
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

procedure TFSispag.MARCA_SClick(Sender: TObject);
begin
   if Q_ITEM.State in [dsInsert,dsEdit] then
        Q_ITEM.Post;

   with Q_FUNC do
   Begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CPATPAG SET Flag = 1');
        ExecSQL;
   end;
   Q_ITEM.Close;
   Q_ITEM.Open;
end;

procedure TFSispag.wwDBGrid1ColExit(Sender: TObject);
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

procedure TFSispag.wwDBGrid1Exit(Sender: TObject);
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

procedure TFSispag.Q_CHQBeforePost(DataSet: TDataSet);
begin
    Q_AUXI.SQL.Clear;
    Q_AUXI.SQL.Add('SELECT COUNT(*) AS QTDE FROM CPACHEQ WHERE ');
    Q_AUXI.SQL.Add('CHEQUENUMERO = ' +Q_CHQCHEQUENUMERO.AsString);
    Q_AUXI.SQL.Add('AND BANCO = ' +Q_CHQBANCO.AsString);
    Q_AUXI.Open;

    if Q_AUXI.fieldbyname('QTDE').value > 0 then
    begin
            MessageDlg('Já existe um cheque neste banco com este número.',
            mtError, [mbok], 0);
            Q_CHQ.Cancel;
    end;
end;

procedure TFSispag.wwDBGrid1CellChanged(Sender: TObject);
begin
//        If not Ignora then
//                LField := wwDBGRid1.SelectedField;
end;

procedure TFSispag.SBT_REFRClick(Sender: TObject);
begin
        Q_ITEM.Close;
        Q_ITEM.Open;
end;

end.

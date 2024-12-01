 unit LotePagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, wwstorep, Wwquery, Wwdatsrc, DBCtrls, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Tabnotbk, wwdblook, StdCtrls, Mask,
  Buttons, wwdbedit;

type
  TFLotePagamento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Fonte: TDBNavigator;
    Panel3: TPanel;
    LBL_STATUS: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label33: TLabel;
    Label11: TLabel;
    NumLote: TDBEdit;
    Historico: TDBEdit;
    Data: TDBEdit;
    BancoConta: TwwDBLookupCombo;
    Valor: TDBEdit;
    TN2: TTabbedNotebook;
    Label38: TLabel;
    Label40: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBLC_IDR_DIFE: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    DBE_IDR_VALO: TDBEdit;
    upd_LotePaga: TUpdateSQL;
    DS_LotePaga: TwwDataSource;
    q_LotePaga: TwwQuery;
    q_ItemLotePaga: TwwQuery;
    ds_ItemLotePaga: TwwDataSource;
    upd_ItemLotePag: TUpdateSQL;
    upd_DescLotePaga: TUpdateSQL;
    q_DescLotePaga: TwwQuery;
    ds_DescLotePaga: TwwDataSource;
    STP_GERAMOVI: TwwStoredProc;
    ds_Banc: TwwDataSource;
    DS_CPAPAGA: TwwDataSource;
    Q_CPAPAGA: TwwQuery;
    Q_AUXI: TwwQuery;
    Q_AUXICOLUMN1: TFloatField;
    q_LotePagaSequencia: TAutoIncField;
    q_LotePagaNumLote: TStringField;
    q_LotePagaData: TDateTimeField;
    q_LotePagaBancoConta: TStringField;
    q_LotePagaValor: TFloatField;
    q_LotePagaHistorico: TStringField;
    q_ItemLotePagaTitulo: TStringField;
    q_ItemLotePagaSeqLotePaga: TIntegerField;
    q_ItemLotePagaValorPago: TFloatField;
    q_ItemLotePagaValorDescAcresc: TFloatField;
    Q_CPAPAGADocumento: TStringField;
    Q_CPAPAGAFornecedor: TStringField;
    Q_CPAPAGAVencimento: TDateTimeField;
    Q_CPAPAGASaldo: TFloatField;
    q_ItemLotePagaVencimento: TDateTimeField;
    q_DescLotePagaSequencia: TAutoIncField;
    q_DescLotePagaTitulo: TStringField;
    q_DescLotePagaDescAcresc: TStringField;
    q_DescLotePagaValor: TFloatField;
    q_DescLotePagaSeqLotePaga: TIntegerField;
    SBT_REFR: TSpeedButton;
    q_DescLotePagaDescricao: TStringField;
    Q_AUX2: TwwQuery;
    q_ItemLotePagaSequencia: TAutoIncField;
    Q_DIFE: TwwQuery;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_AGEN: TStringField;
    Q_BANCBAN_NAGE: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Q_BANCBAN_SALD: TFloatField;
    Q_BANCBAN_NLAN: TFloatField;
    Q_BANCBAN_LCHE: TStringField;
    Q_BANCBAN_UCHE: TStringField;
    Q_BANCBAN_SALDT: TFloatField;
    Q_BANCBAN_DATAT: TDateTimeField;
    Q_BANCBAN_CARTAGECC: TStringField;
    Q_BANCBAN_CODEMPR: TStringField;
    q_ItemLotePagaFornecedor: TStringField;
    Q_CPAPAGANumero: TIntegerField;
    q_ItemLotePagaNumeroCp: TStringField;
    Favorecido: TDBEdit;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    q_LotePagaFavorecidos: TStringField;
    Panel5: TPanel;
    Label10: TLabel;
    wwDBGrid2: TwwDBGrid;
    lk_Titulo: TwwDBLookupCombo;
    Label20: TLabel;
    Saldo: TLabel;
    wwDBEdit1: TwwDBEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure q_LotePagaAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure q_LotePagaAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure q_ItemLotePagaAfterDelete(DataSet: TDataSet);
    procedure q_ItemLotePagaAfterPost(DataSet: TDataSet);
    procedure FonteBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure TN2Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure q_ItemLotePagaNewRecord(DataSet: TDataSet);
    procedure q_DescLotePagaNewRecord(DataSet: TDataSet);
    procedure q_DescLotePagaAfterDelete(DataSet: TDataSet);
    procedure q_DescLotePagaAfterPost(DataSet: TDataSet);
    procedure q_ItemLotePagaBeforeDelete(DataSet: TDataSet);
    procedure q_LotePagaBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure lk_TituloCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure q_DescLotePagaBeforePost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure TN2Click(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure lk_TituloExit(Sender: TObject);
    procedure DBLC_IDR_DIFEExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
    procedure q_ItemLotePagaBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Numerotitulo : string ;

  end;

var
  FLotePagamento: TFLotePagamento;
   NUMEROLOTE : STRING ;
implementation
uses CPPMENU, Unt_Splash1 ,Pagamentos, RelRec, RelLotePagto, UEMISSCHQCP , U_FIL_EMICHEQUE ;
{$R *.DFM}

procedure TFLotePagamento.SBT_SAIRClick(Sender: TObject);
begin
   Close;
end;

procedure TFLotePagamento.q_LotePagaAfterPost(DataSet: TDataSet);
var  sCodigo : String ;
begin
  SCodigo := q_LotePaga.FieldByName('NumLote').AsString;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_LotePaga]);
  end;
  except
    begin
      Q_LotePaga.RevertRecord;
    end;
  end;
  Q_LotePaga.Close;
  Q_LotePaga.Open;
  Q_LotePaga.locate('NumLote',sCodigo,[]);
  saldo.caption := '0' ;
  if Q_LotePagaSequencia.asstring <> '' then begin
     Q_AUXI.close;
     Q_AUXI.Sql.clear ;
     Q_AUXI.Sql.Add('select SUM(ValorPago+ValorDescAcresc) from ItemLotePaga where SeqLotePaga = '+ Q_LotePagaSequencia.asstring ) ;
     Q_AUXI.Open ;
     Saldo.caption := formatfloat('###,###,##0.00',Q_AUXICOLUMN1.asfloat - Q_LotePagaValor.asfloat );
     Q_AUXI.close ;
  end ;

end;

procedure TFLotePagamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_DIFE.close ;
  Q_BANC.Close;
  q_LotePaga.Close;
  q_ItemLotePaga.Close;
  q_DescLotePaga.Close;
  Q_CPAPAGA.close ;
  Action := caFree;

end;

procedure TFLotePagamento.FormShow(Sender: TObject);
begin
  lbl_Status.Caption := '';
  NumLote.SetFocus;
end;

procedure TFLotePagamento.q_LotePagaAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_LotePaga]);
  except
    Q_LotePaga.RevertRecord;
  end;

end;

procedure TFLotePagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;

end;

procedure TFLotePagamento.q_ItemLotePagaAfterDelete(DataSet: TDataSet);
begin

  try
    FMenu.DATABASE1.ApplyUpdates([Q_ItemLotePaga]);
  except
    Q_ItemLotePaga.RevertRecord;
  end;


end;

procedure TFLotePagamento.q_ItemLotePagaAfterPost(DataSet: TDataSet);
var SCodigo : string ;
    sValor : real ;
begin
  sCodigo      := q_ItemLotePaga.FieldByNAme('Titulo').AsString ;
  Numerotitulo := q_ItemLotePaga.FieldByNAme('Titulo').AsString ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_ItemLotePaga]);
  end;
  except
    begin
      Q_ItemLotePaga.RevertRecord;
    end;
  end;
  Q_ItemLotePaga.close ;
  Q_ItemLotePaga.Open  ;
  Q_ItemLotePaga.locate('Titulo;SeqLotePaga', vararrayof([sCodigo,Q_LotePagaSequencia.asstring ]), []);
  saldo.caption := '0.00' ;
  if Q_LotePagaSequencia.asstring <> '' then begin
     Q_AUXI.close;
     Q_AUXi.Sql.Clear ;
     Q_AUXI.Sql.Add('select SUM(ValorPago+ValorDescAcresc) from ItemLotePaga where SeqLotePaga = '+ Q_LotePagaSequencia.asstring ) ;
     Q_AUXI.Open ;
     Saldo.caption := formatfloat('###,###,##0.00',Q_AUXICOLUMN1.asfloat - Q_LotePagaValor.asfloat );
     Q_AUXI.close ;
  end ;
  if (wwDBEdit1.text <> '') and  (wwDBEdit1.text <> '0') and (wwDBEdit1.text <> '0,00')  and (wwDBEdit1.text <> '0.00') then begin
      TN2.pageindex := 1 ;
      if Q_DescLotePaga.eof then  begin
         Q_DescLotePaga.insert ;
      end ;
  end ;

//  if q_ItemLotePagaValorDescAcresc.asstring <> '' then
//     TN2.pageindex := 1 ;


end;

procedure TFLotePagamento.FonteBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbdelete] then  begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
       Abort;
  end;

end;

procedure TFLotePagamento.TN2Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var rValor : real ;
    DescValor : real ;
    smensagem : string ;
begin
  if (Q_DescLotePaga.state = dsedit) or (Q_DescLotePaga.state = dsinsert )  then Q_DescLotePaga.post ;

  if NewTab <> 1 then
  begin
    FLotePagamento.keyPreview := false ;
    if AllowChange then begin
      rValor := Q_ItemLotePagaValorDescAcresc.asfloat;
      with Q_AUXI do
      begin
        Close;
        SQL.Clear;
        SQL.Add( 'SELECT SUM(Valor) FROM DescLotePaga WHERE Titulo = '+ ''''+ Q_ItemLotePagaTitulo.AsString+ '''' );
        Open;
        DescValor := Q_AUXICOLUMN1.AsFloat;
      end;

      if rValor <> DescValor then
      begin
        sMensagem := 'Valor do Desconto/Acréscimo não confere !';
        sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
        sMensagem := sMensagem + Formatfloat('###,###,##0.00', DescValor );
        if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          Fonte.DataSource := DS_ItemLotePaga;
          Fonte.BtnClick( nbEdit );
          Q_ItemLotePagaValorDescAcresc.asfloat := DescValor ;
          Fonte.BtnClick( nbPost );
          case NewTab of
            0 : Fonte.DataSource := DS_ItemLotePaga ;
            1 : Fonte.DataSource := DS_DescLotePaga ;
          end;
        end else begin
          AllowChange := False;
          Fonte.DataSource := DS_DescLotePaga;
        end;
      end;
    end ;
  end else begin
     Q_ItemLotePaga.locate('Titulo', NumeroTitulo, []);
     Fonte.DataSource := DS_DescLotePaga ;
     FLotePagamento.keyPreview := true ;
  end ;


end;

procedure TFLotePagamento.q_ItemLotePagaNewRecord(DataSet: TDataSet);
begin

  Q_ItemLotePagaSeqLotePaga.asinteger   := Q_LotePagaSequencia.asinteger ;
  Q_ItemLotePagaValorDescAcresc.asfloat := 0;

end;

procedure TFLotePagamento.q_DescLotePagaNewRecord(DataSet: TDataSet);
begin
  Q_DescLotePagaTitulo.asstring       := Q_ItemLotePagaTitulo.asstring ;
  Q_DescLotePagaSeqLotePaga.asinteger := Q_ItemLotePagaSeqLotePaga.asinteger ;

end;

procedure TFLotePagamento.q_DescLotePagaAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_DescLotePaga]);
  except
    Q_DescLotePaga.RevertRecord;
  end;
end;

procedure TFLotePagamento.q_DescLotePagaAfterPost(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_DescLotePaga]);
  except
    Q_DescLotePaga.RevertRecord;
  end;

  Q_DescLotePaga.CLOSE ;
  Q_DescLotePaga.Open ;

end;

procedure TFLotePagamento.q_ItemLotePagaBeforeDelete(DataSet: TDataSet);
begin
  while not Q_DescLotePaga.eof do Q_DescLotePaga.delete ;
end;

procedure TFLotePagamento.q_LotePagaBeforeDelete(DataSet: TDataSet);
begin
  while not Q_DescLotePaga.eof do Q_DescLotePaga.delete ;
  while not Q_ItemLotePaga.eof do Q_ITemLotePaga.delete ;

end;

procedure TFLotePagamento.SpeedButton2Click(Sender: TObject);
begin
   if (Q_LotePaga.state = dsedit) or (Q_LotePaga.state = dsinsert) then Q_LotePaga.post ;

   if SpeedButton2.caption = 'Retorna' then begin
      FLotePagamento.keyPreview := true ;
      Panel4.enabled := true;
      TN2.enabled := false ;
      fonte.datasource := ds_LotePaga ;
      fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbDelete,nbEdit,nbPost,nbCancel] ;
      SpeedButton2.caption := 'Detalhes' ;
   end else begin

      Panel4.enabled := false ;
      TN2.enabled := true ;
      fonte.datasource := ds_ItemLotePaga ;
      fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel];
      FLotePagamento.keyPreview := false ;
      wwDBGrid2.setfocus ;
      SpeedButton2.caption := 'Retorna' ;
   end ;
end;

procedure TFLotePagamento.SpeedButton3Click(Sender: TObject);
var Saldo : real ;
    NumeroLote : String ;
    Valor : real ;
begin
  // verifica saldo
  if Q_LotePagaSequencia.asstring <> '' then begin
     Q_AUXI.close;
     Q_AUXI.Sql.clear ;
     Q_AUXI.Sql.Add('select ROUND(SUM(ValorPago+ValorDescAcresc),2) from ItemLotePaga where SeqLotePaga = '+ Q_LotePAGASequencia.asstring ) ;
     Q_AUXI.Open ;
     Valor := strtofloat(formatfloat('0.00',Q_LotePagaValor.asfloat));
     Saldo := Q_AUXICOLUMN1.asfloat - Valor ;
     Q_AUXI.close ;

     if Saldo <> 0 then begin
        MessageDlg('Existe diferença entre os valores informados !',mterror,[mbOk], 0);
        abort ;
     end ;

//  Impressão do Relatório de Lote de Pagamentos - Conferência
     Application.CreateForm(TLstLotePagto, LstLotePagto);
     LstLotePagto.Lst_LotePagto.Print ;
     LstLotePagto.close ;
     LstLotePagto.Release;
//  Fim da Impressão do Relatório de Lote de Pagamentos - Conferência

     NumeroLote := Q_LotePagaNumLote.asstring ;
     q_LotePaga.Close;
     q_ItemLotePaga.Close;
     q_DescLotePaga.Close;
     Lbl_Status.caption := 'Aguarde : Atualizando dados .... ';
     lbl_Status.refresh ;
    try
     begin
          STP_GERAMOVI.ParamByName( '@NumLote' ).Value := NumeroLote ;
          STP_GERAMOVI.ExecProc;
     end;
     except
       begin
         MessageDlg('Problemas na Atualização dos dados !',mterror,[mbOk], 0);
         Lbl_Status.caption := '';
         lbl_Status.refresh ;
         q_LotePaga.Open;
         q_ItemLotePaga.Open;
         q_DescLotePaga.Open ;
         abort ;
       end;
     end;
     MessageDlg('Atualização efetuada com sucesso !',mtinformation,[mbOk], 0);
     q_LotePaga.open ;
     q_ItemLotePaga.Open ;
     q_DescLotePaga.Open ;

     FLotePagamento.keyPreview := true ;
     Panel4.enabled := true;
     Panel1.enabled := true;
     TN2.enabled := false ;
     fonte.datasource := ds_LotePaga ;
     fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbDelete,nbEdit,nbPost,nbCancel] ;
     NumLote.setfocus ;
  end ;

end;

procedure TFLotePagamento.lk_TituloCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   if Q_ItemLotePaga.state = dsinsert then
      Q_ItemLotePagaValorPago.asfloat := Q_CPAPAGASaldo.Asfloat ;

end;

procedure TFLotePagamento.FonteClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbPost] then  begin
    if Fonte.DataSource = DS_ItemLotePaga then  begin
       if (Q_ItemLotePagaValorDescAcresc.Value <> 0) then
          TN2.PageIndex := 1
    end ;
  end ;

end;

procedure TFLotePagamento.q_DescLotePagaBeforePost(DataSet: TDataSet);
var iMySinal : Integer;
begin
  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1;

  if (DS_DescLotePaga.State in [dsInsert,dsEdit]) then
    Q_DescLotePagaValor.Value := abs(Q_DescLotePagaValor.Value) * iMySinal;


end;

procedure TFLotePagamento.FormPaint(Sender: TObject);
begin
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 6;
             Dfm_Splash1.Show;
             Dfm_Splash1.RePaint;
             Self.Repaint;
             Try
                Begin
                    Dfm_Splash1.Gauge1.Progress := 1;
                    Q_DIFE.Open ;
                    Dfm_Splash1.Gauge1.Progress := 2;
                    Q_Banc.open ;
                    Dfm_Splash1.Gauge1.Progress := 3;
                    Q_LotePaga.open ;
                    Dfm_Splash1.Gauge1.Progress := 4;
                    Q_ItemLotePaga.Open ;
                    Dfm_Splash1.Gauge1.Progress := 5;
                    Q_DescLotePaga.Open ;
                    Dfm_Splash1.Gauge1.Progress := 6;
                    Q_CPAPAGA.Open ;
                    saldo.caption := '0' ;
                    if Q_LotePagaSequencia.asstring <> '' then begin
                       Q_AUXI.close;
                       Q_AUXI.Sql.clear ;
                       Q_AUXI.Sql.Add('select SUM(ValorPago+ValorDescAcresc) from ItemLotePaga where SeqLotePaga = '+ Q_LotePagaSequencia.asstring ) ;
                       Q_AUXI.Open ;
                       Saldo.caption := formatfloat('###,###,##0.00',Q_AUXICOLUMN1.asfloat - Q_LotePagaValor.asfloat );
                       Q_AUXI.close ;
                    end ;
                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             Dfm_Splash1.Close;
             Dfm_Splash1.Release;
             If Self.Tag = 2 Then Self.Close;
        End;



end;

procedure TFLotePagamento.TN2Click(Sender: TObject);
begin
  if TN2.pageindex = 1 then begin
     fonte.datasource := ds_DescLotePaga ;
     Q_DescLotePaga.first ;
  end else begin
      Fonte.datasource := ds_ItemLotePaga ;
      Q_ItemLotePaga.insert ;
  end ;

end;

procedure TFLotePagamento.wwDBEdit1Exit(Sender: TObject);
begin
   Q_ItemLotePaga.post ;
   if (q_ItemLotePagaValorDescAcresc.asstring <> '') and (q_ItemLotePagaValorDescAcresc.asstring <> '0' ) then
     TN2.pageindex := 1 ;


end;

procedure TFLotePagamento.lk_TituloExit(Sender: TObject);
begin
  if lk_titulo.text = '' then begin
     MessageDlg('Titulo não informado !',mterror,[mbOk], 0);
//     lk_Titulo.setfocus ;
     abort ;
  end ;
  Q_AUX2.close;
  Q_AUX2.Sql.clear ;
  Q_AUX2.Sql.Add('select count(*) as XVALOR from ItemLotePaga where SeqLotePaga = '+ Q_LotePagaSequencia.asstring ) ;
  Q_AUX2.Sql.Add(' and Titulo = ' + '''' + q_ItemLotePaga.FieldByNAme('Titulo').AsString + '''' ) ;
  if ( Q_ItemLotePaga.state = dsedit ) then
     Q_AUX2.Sql.Add(' and Sequencia <> ' + Q_ItemLotePagaSequencia.asstring  ) ;
  Q_AUX2.Open ;
  if Q_AUX2.fieldbyname('XVALOR').asinteger <> 0 then begin
     MessageDlg('Titulo já cadastrado !',mterror,[mbOk], 0);
     Q_AUX2.Close;
     lk_Titulo.setfocus ;
     abort ;
  end ;
  Q_AUX2.Close ;

  lk_titulo.text := Q_CPAPAGADocumento.asstring ;
end;

procedure TFLotePagamento.DBLC_IDR_DIFEExit(Sender: TObject);
begin
   DBLC_IDR_DIFE.text := Q_DIFEDIF_DESC.asstring ;
end;

procedure TFLotePagamento.SpeedButton4Click(Sender: TObject);
begin
   gs_Paga := '0';
   Application.CreateForm(TFPagamentos, FPagamentos);
   FPagamentos.ShowModal ;
   FPagamentos.Release ;
   Q_CPAPAGA.Close ;
   Q_CPAPAGA.Open ;

   gs_Paga := '' ;
end;

procedure TFLotePagamento.SBT_REFRClick(Sender: TObject);
begin
  Q_CPAPAGA.Close ;
  Q_CPAPAGA.Open ;
end;

procedure TFLotePagamento.q_ItemLotePagaBeforePost(DataSet: TDataSet);
begin
  if lk_titulo.text = '' then begin
     MessageDlg('Titulo não informado !',mterror,[mbOk], 0);
     lk_Titulo.setfocus ;
     abort ;
  end ;
  Q_AUX2.close;
  Q_AUX2.Sql.clear ;
  Q_AUX2.Sql.Add('select count(*) as XVALOR from ItemLotePaga where SeqLotePaga = '+ Q_LotePagaSequencia.asstring ) ;
  Q_AUX2.Sql.Add(' and Titulo = ' + '''' + q_ItemLotePaga.FieldByNAme('Titulo').AsString + '''' ) ;
  if ( Q_ItemLotePaga.state = dsedit ) then
     Q_AUX2.Sql.Add(' and Sequencia <> ' + Q_ItemLotePagaSequencia.asstring  ) ;
  Q_AUX2.Open ;
  if Q_AUX2.fieldbyname('XVALOR').asinteger <> 0 then begin
     MessageDlg('Titulo já cadastrado !',mterror,[mbOk], 0);
     Q_AUX2.Close;
     lk_Titulo.setfocus ;
     abort ;
  end ;
  Q_AUX2.Close ;

end;
                                                         
procedure TFLotePagamento.SpeedButton1Click(Sender: TObject);

begin
     NUMEROLOTE := NUMLOTE.Text ;
      Application.CreateForm(TFEmissaoCopia,FEmissaoCopia);
      FEmissaoCopia.QR_CPDECHEQUE.Preview;
      FEmissaoCopia.Close;
end;


procedure TFLotePagamento.SpeedButton5Click(Sender: TObject);
begin
      Application.CreateForm(TFORM2,FORM2);
      FORM2.ShowModal ;
      FORM2.RELEASE;
     // FORM2.Close;
end;

procedure TFLotePagamento.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.

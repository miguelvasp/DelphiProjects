unit LoteRecebimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Tabnotbk,
  Wwdotdot, Wwdbcomb, wwdblook, Wwtable, Wwqbe, wwstorep;

type
  TFLoteRecebimento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    upd_LoteRec: TUpdateSQL;
    ds_LoteRec: TwwDataSource;
    q_LoteRec: TwwQuery;
    ds_Banc: TwwDataSource;
    upd_ItemLoteRec: TUpdateSQL;
    q_ItemLoteRec: TwwQuery;
    ds_ItemLoteRec: TwwDataSource;
    q_LoteRecSequencia: TAutoIncField;
    q_LoteRecNumLote: TStringField;
    q_LoteRecData: TDateTimeField;
    q_LoteRecBancoConta: TStringField;
    q_LoteRecValor: TFloatField;
    q_CPARECE: TwwQuery;
    ds_CPARECE: TwwDataSource;
    q_CPARECEREC_NFIS: TStringField;
    ds_DescLoteRec: TwwDataSource;
    q_DescLoteRec: TwwQuery;
    upd_DescLoteRec: TUpdateSQL;
    TN2: TTabbedNotebook;
    Label20: TLabel;
    lk_Titulo: TwwDBLookupCombo;
    Label38: TLabel;
    Label40: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBLC_IDR_DIFE: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    DBE_IDR_VALO: TDBEdit;
    q_ItemLoteRecTitulo: TStringField;
    q_ItemLoteRecSeqLoteRec: TIntegerField;
    q_ItemLoteRecValorPago: TFloatField;
    q_ItemLoteRecValorDescAcresc: TFloatField;
    q_CPARECEREC_VENC: TDateTimeField;
    q_CPARECEREC_RAZA: TStringField;
    q_ItemLoteRecCliente: TStringField;
    q_ItemLoteRecVencimento: TDateTimeField;
    q_DescLoteRecSequencia: TAutoIncField;
    q_DescLoteRecTitulo: TStringField;
    q_DescLoteRecDescAcresc: TStringField;
    q_DescLoteRecValor: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Q_AUXI: TwwQuery;
    Q_AUXICOLUMN1: TFloatField;
    Saldo: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    NumLote: TDBEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Data: TDBEdit;
    Label33: TLabel;
    BancoConta: TwwDBLookupCombo;
    Label11: TLabel;
    Valor: TDBEdit;
    SpeedButton2: TSpeedButton;
    q_LoteRecHistorico: TStringField;
    wwDBGrid2: TwwDBGrid;
    STP_ATUARECE: TwwStoredProc;
    q_CPARECEREC_SALD: TFloatField;
    Label10: TLabel;
    q_DescLoteRecSeqLoteRec: TIntegerField;
    wwDBEdit1: TwwDBEdit;
    q_ItemLoteRecSequencia: TAutoIncField;
    q_DescLoteRecDescricao: TStringField;
    Q_AUX2: TwwQuery;
    SBT_REFR: TSpeedButton;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_DIFE: TwwQuery;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    Q_PARA: TwwQuery;
    Q_PARApar_acrescimo: TStringField;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    q_ItemLoteRecNumeroCR: TIntegerField;
    q_CPARECEREC_CODI: TIntegerField;
    STP_GERAMOVI: TwwStoredProc;
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
    q_ItemLoteRecCartorio: TStringField;
    wwDBEdit2: TwwDBEdit;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure q_LoteRecAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure q_LoteRecAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure q_ItemLoteRecAfterDelete(DataSet: TDataSet);
    procedure q_ItemLoteRecAfterPost(DataSet: TDataSet);
    procedure FonteBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure TN2Click(Sender: TObject);
    procedure q_ItemLoteRecNewRecord(DataSet: TDataSet);
    procedure q_DescLoteRecNewRecord(DataSet: TDataSet);
    procedure q_DescLoteRecAfterDelete(DataSet: TDataSet);
    procedure q_DescLoteRecAfterPost(DataSet: TDataSet);
    procedure TN2Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure q_ItemLoteRecBeforeDelete(DataSet: TDataSet);
    procedure q_LoteRecBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure lk_TituloCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure q_DescLoteRecBeforePost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure BancoContaExit(Sender: TObject);
    procedure lk_TituloExit(Sender: TObject);
    procedure DBLC_IDR_DIFEExit(Sender: TObject);
    procedure q_ItemLoteRecBeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SBT_REFRClick(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    StrBanco : string ;
    NumeroTitulo : string ;
    StrVerifica : string[1] ;
  end;

var
  FLoteRecebimento: TFLoteRecebimento;
implementation

uses CPPMENU, Unt_Splash1, CPPRECE, RelLoteReceb  ;

{$R *.DFM}

procedure TFLoteRecebimento.SBT_SAIRClick(Sender: TObject);
begin
   Close;
end;

procedure TFLoteRecebimento.q_LoteRecAfterPost(DataSet: TDataSet);
var  sCodigo : String ;
begin
  SCodigo      := q_LoteRec.FieldByName('NumLote').AsString;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_LoteRec]);
  end;
  except
    begin
      Q_LoteRec.RevertRecord;
    end;
  end;
  Q_LoteRec.Close;
  Q_LoteRec.Open;
  Q_LoteRec.locate('NumLote',sCodigo,[]);
  saldo.caption := '0' ;
  if Q_LoteRecSequencia.asstring <> '' then begin
     Q_AUXI.close;
     Q_AUXI.Sql.clear ;
     Q_AUXI.Sql.Add('select SUM(ValorPago+ValorDescAcresc) from ItemLoteRec where SeqLoteRec = '+ Q_LoteRecSequencia.asstring ) ;
     Q_AUXI.Open ;
     Saldo.caption := formatfloat('###,###,##0.00',(Q_AUXICOLUMN1.asfloat) - Q_LoteRecValor.asfloat );
     Q_AUXI.close ;
  end ;
end;

procedure TFLoteRecebimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_DIFE.close ;
  Q_BANC.Close;
  q_LoteRec.Close;
  q_ItemLoteRec.Close;
  q_DescLoteRec.Close;
  Q_CPARECE.close ;
  Action := caFree;
end;

procedure TFLoteRecebimento.FormShow(Sender: TObject);
begin
  lbl_Status.Caption := '';
  NumLote.SetFocus;
end;

procedure TFLoteRecebimento.q_LoteRecAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_LoteRec]);
  except
    Q_LoteRec.RevertRecord;
  end;
end;

procedure TFLoteRecebimento.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;

end;

procedure TFLoteRecebimento.q_ItemLoteRecAfterDelete(DataSet: TDataSet);
begin

  try
    FMenu.DATABASE1.ApplyUpdates([Q_ItemLoteRec]);
  except
    Q_ItemLoteRec.RevertRecord;
  end;

end;

procedure TFLoteRecebimento.q_ItemLoteRecAfterPost(DataSet: TDataSet);
var SCodigo : string ;
    sValor : real ;
begin
  sCodigo      := q_ItemLoteRec.FieldByNAme('Titulo').AsString ;
  NumeroTitulo := q_ItemLoteRec.FieldByNAme('Titulo').AsString ;
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_ItemLoteRec]);
  end;
  except
    begin
      Q_ItemLoteRec.RevertRecord;
    end;
  end;

  Q_ItemLoteRec.close ;
  Q_ItemLoteRec.Open  ;
  Q_ItemLoteRec.locate('Titulo;SeqLoteRec', vararrayof([sCodigo,Q_LoterecSequencia.asstring ]), []);
  saldo.caption := '0.00' ;
  if Q_LoteRecSequencia.asstring <> '' then begin
     Q_AUXI.close;
     Q_AUXI.Sql.clear ;
     Q_AUXI.Sql.Add('select SUM(ValorPago+ValorDescAcresc) from ItemLoteRec where SeqLoteRec = '+ Q_LoteRecSequencia.asstring ) ;
     Q_AUXI.Open ;
     Saldo.caption := formatfloat('###,###,##0.00',(Q_AUXICOLUMN1.asfloat) - Q_LoteRecValor.asfloat );
     Q_AUXI.close ;
  end ;
  if (wwDBEdit1.text <> '') and  (wwDBEdit1.text <> '0') and (wwDBEdit1.text <> '0,00')  and (wwDBEdit1.text <> '0.00') then begin
      TN2.pageindex := 1 ;
      if Q_DescLoteRec.eof then  begin
         Q_DescLoteRec.insert ;
      end ;
    wwDBGrid2.keyOptions := [dgEnterToTab] ;
  end else begin
    wwDBGrid2.keyOptions := [dgEnterToTab,dgAllowInsert] ;
  end ;
end;


procedure TFLoteRecebimento.FonteBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbdelete] then  begin
    if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
       Abort;
  end;
end;

procedure TFLoteRecebimento.TN2Click(Sender: TObject);
begin
  if TN2.pageindex = 1 then begin
     fonte.datasource := ds_DescLoteRec    ;
     Q_DescLoteRec.first ;
  end else begin
     Fonte.datasource := ds_ItemLoteRec ;
     Q_ItemLoteRec.insert ;
     wwDBGrid2.setfocus ;
  end ;
end;

procedure TFLoteRecebimento.q_ItemLoteRecNewRecord(DataSet: TDataSet);
begin
  Q_ItemLoteRecSeqLoteRec.asinteger    := Q_LoteRecSequencia.asinteger ;
  Q_ItemLoteRecValorDescAcresc.asfloat := 0;
end;

procedure TFLoteRecebimento.q_DescLoteRecNewRecord(DataSet: TDataSet);
begin
  Q_DescLoteRecTitulo.asstring      := Q_ItemLoteRecTitulo.asstring ;
  Q_DescLoteRecSeqLoteRec.asinteger := Q_ItemLoteRecSeqLoteRec.asinteger ;
  Q_DescLoteRecDescAcresc.asstring  := Q_PARAPar_Acrescimo.asstring ;
//Q_DescLoteRecValor.asfloat        := Q_ItemLoteRecValorDescAcresc.asfloat - XSaldo ;

end;

procedure TFLoteRecebimento.q_DescLoteRecAfterDelete(DataSet: TDataSet);
begin

  try
    FMenu.DATABASE1.ApplyUpdates([Q_DescLoteRec]);
  except
    Q_DescLoteRec.RevertRecord;
  end;

end;

procedure TFLoteRecebimento.q_DescLoteRecAfterPost(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_DescLoteRec]);
  except
    Q_DescLoteRec.RevertRecord;
  end;

  Q_DescLoteRec.CLOSE ;
  Q_DescLoteRec.Open ;

end;



procedure TFLoteRecebimento.TN2Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var rValor : real ;
    DescValor : real ;
    smensagem : string ;
begin
  if (Q_DescLoteRec.state = dsinsert ) or (Q_DescLoteRec.state = dsedit ) then
     Q_DescLoteRec.post ;
  if NewTab <> 1 then
  begin
    FLoteRecebimento.keyPreview := false ;
    if AllowChange then begin
      rValor := Q_ItemLoteRecValorDescAcresc.asfloat;
      with Q_AUXI do
      begin
        Close;
        SQL.Clear;
        SQL.Add( 'SELECT SUM(Valor) FROM DescLoteRec WHERE Titulo = '+ ''''+ Q_ItemLoteRecTitulo.AsString+ '''' );
        Open;
        DescValor := Q_AUXICOLUMN1.AsFloat;
      end;

      if rValor <> DescValor then
      begin
        sMensagem := 'Valor do Desconto/Acréscimo não confere !';
        sMensagem := sMensagem + ' Alterar o valor do Desconto/Acréscimo para ';
        sMensagem := sMensagem + FormatFloat('###,###,##0.00', DescValor );
        if MessageDlg( '' + sMensagem + '', mtInformation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          Fonte.DataSource := DS_ItemLoteRec;
          Fonte.BtnClick( nbEdit );
          Q_ItemLoteRecValorDescAcresc.asfloat := DescValor ;
          Fonte.BtnClick( nbPost );
          case NewTab of
            0 : Fonte.DataSource := DS_ItemLoteRec;
            1 : Fonte.DataSource := DS_DescLoteRec;
          end;
        end else begin
          AllowChange := False;
          Fonte.DataSource := DS_DescLoteRec;
        end;
      end;
    end ;
  end else begin
     Q_ItemLoteRec.locate('Titulo', NumeroTitulo, []);
     Fonte.DataSource := DS_DescLoteRec;
     FLoteRecebimento.keyPreview := true ;
  end ;

end;


procedure TFLoteRecebimento.q_ItemLoteRecBeforeDelete(DataSet: TDataSet);
begin
  while not Q_DescLoteRec.eof do Q_DescLoteRec.delete ;
end;

procedure TFLoteRecebimento.q_LoteRecBeforeDelete(DataSet: TDataSet);
begin
  while not Q_DescLoteRec.eof do Q_DescLoteRec.delete ;
  while not Q_ItemLoteRec.eof do Q_ITemLoteRec.delete ;
end;

procedure TFLoteRecebimento.SpeedButton1Click(Sender: TObject);
begin
//   FLoteRecebimento.keyPreview := false ;
//   SpeedButton2.enabled := true ;
//   SpeedButton1.enabled := false ;
//   TN2.enabled := true ;
//   fonte.datasource := ds_ItemLoteRec ;
//   fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel];
//   wwDBGrid2.setfocus ;
end;



procedure TFLoteRecebimento.SpeedButton2Click(Sender: TObject);
begin
   if SpeedButton2.Caption = 'Retorna' then begin
      FLoteRecebimento.keyPreview := true ;
      Panel4.enabled := true;
      TN2.enabled := false ;
      fonte.datasource := ds_LoteRec ;
      fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbDelete,nbEdit,nbPost,nbCancel] ;
      SpeedButton2.Caption := 'Detalhes' ;
      Panel4.enabled := true ;
  end else begin
       Panel4.enabled := false ;
       FLoteRecebimento.keyPreview := false ;
       TN2.enabled := true ;
       fonte.datasource := ds_ItemLoteRec ;
       fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel];
       wwDBGrid2.setfocus ;
       SpeedButton2.Caption := 'Retorna';
  end ;
end;

procedure TFLoteRecebimento.SpeedButton3Click(Sender: TObject);
var Saldo : real ;
    NumeroLote : String ;
    Valor : real ;
begin
  // verifica saldo
  if Q_LoteRecSequencia.asstring <> '' then begin
     Q_AUXI.close;
     Q_AUXI.Sql.clear ;
     Q_AUXI.Sql.Add('select round(SUM(ValorPago+ValorDescAcresc),2) from ItemLoteRec where SeqLoteRec = '+ Q_LoteRecSequencia.asstring ) ;
     Q_AUXI.Open ;
     Valor := strtofloat(formatfloat('0.00',Q_LoteRecValor.asfloat));
     Saldo := (Q_AUXICOLUMN1.asfloat) - Valor ;
     Q_AUXI.close ;

     if Saldo <> 0 then begin
        MessageDlg('Existe diferença entre os valores informados !',mterror,[mbOk], 0);
        abort ;
     end ;


//  Impressão do Relatório de Lote de Recebimentos - Conferência
     Application.CreateForm(TLstLoteReceb, LstLoteReceb);
     LstLoteReceb.Lst_LoteReceb.Print ;
     LstLoteReceb.close ;
     LstLoteReceb.Release;
//  Fim da Impressão do Relatório de Lote de recebimentos - Conferência

     NumeroLote := Q_LoteRecNumLote.asstring ;
     Lbl_Status.caption := 'Aguarde : Atualizando dados .... ';
     lbl_Status.refresh ;
     Q_ItemLoteRec.first ;
     while not Q_ItemLoteRec.Eof do begin
         try
         begin
              STP_ATUARECE.ParamByName('@NumLote' ).Value := NumeroLote ;
              STP_ATUARECE.ParamByName('@TITULO' ).Value := Q_ItemLoteRecTitulo.asstring ;
              STP_ATUARECE.ParamByName('@ValorPago' ).Value := Q_ItemLoteRecValorPago.asfloat ;
              STP_ATUARECE.ParamByName('@ValorDescAcresc' ).Value := Q_ITemLoteRecValorDescAcresc.asfloat ;
              STP_ATUARECE.ParamByName('@SeqLoteRec' ).Value := Q_ItemLoteRecSeqLoteRec.asinteger ;
              STP_ATUARECE.ParamByName('@Data' ).Value := Q_LoteRecData.asdatetime ;
              STP_ATUARECE.ParamByName('@BancoConta' ).Value := Q_LoteRecBancoConta.asstring ;
              STP_ATUARECE.ParamByName('@Valor' ).Value := Q_LoteRecValor.asfloat  ;
              STP_ATUARECE.ParamByName('@Historico' ).Value := Q_LoteRecHistorico.asstring ;
              STP_ATUARECE.ParamByName('@NumRece' ).Value := Q_ItemLoteRecNumeroCr.asinteger ;
              STP_ATUARECE.ParamByName('@Cartorio' ).Value := Q_ItemLoteRecCartorio.asstring ;
              STP_ATUARECE.ExecProc;
         end;
         except
           begin
             MessageDlg('Problemas na Atualização dos dados !',mterror,[mbOk], 0);
             Lbl_Status.caption := '';
             lbl_Status.refresh ;
             Panel4.enabled := true;
             Panel1.enabled := true;
             q_LoteRec.Open;
             q_ItemLoteRec.Open;
             q_DescLoteRec.Open ;
             abort ;
           end;
         end;
         Q_ItemLoteRec.next ;
     end ;
     try
     begin
        STP_GERAMOVI.ParamByName('@NumLote' ).Value := NumeroLote ;
        STP_GERAMOVI.ParamByName('@Data' ).Value := Q_LoteRecData.asdatetime ;
        STP_GERAMOVI.ParamByName('@BancoConta' ).Value := Q_LoteRecBancoConta.asstring ;
        STP_GERAMOVI.ParamByName('@Valor' ).Value := Q_LoteRecValor.asfloat  ;
        STP_GERAMOVI.ParamByName('@Historico' ).Value := Q_LoteRecHistorico.asstring ;
        STP_GERAMOVI.ExecProc;
     end ;
     except
        begin
           MessageDlg('Problemas na Atualização dos dados !',mterror,[mbOk], 0);
           Lbl_Status.caption := '';
           lbl_Status.refresh ;
           Panel4.enabled := true;
           Panel1.enabled := true;
           q_LoteRec.Open;
           q_ItemLoteRec.Open;
           q_DescLoteRec.Open ;
           abort ;
         end;
     end; 

     MessageDlg('Atualização efetuada com sucesso !',mtinformation,[mbOk], 0);
     q_LoteRec.Close;
     q_ItemLoteRec.Close;
     q_DescLoteRec.Close;
     q_LoteRec.open ;
     q_ItemLoteRec.Open;
     q_DescLoteRec.OPen ;

//     SpeedButton2.enabled := false ;
//     SpeedButton1enabled := true  ;
     FLoteRecebimento.keyPreview := true ;
     Panel4.enabled := true;
     Panel1.enabled := true;
     TN2.enabled := false ;
     fonte.datasource := ds_LoteRec ;
     fonte.visiblebuttons := [nbFirst,nbPrior,nbNext,nbLast,nbDelete,nbEdit,nbPost,nbCancel];
     NumLote.setfocus ;
  end ;
end;

procedure TFLoteRecebimento.lk_TituloCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   if Q_ItemLoteRec.state = dsinsert then begin
      Q_ItemLoteRecValorPago.asfloat := Q_CPARECEREC_SALD.Asfloat ;
      Q_ItemLoteRecNumeroCr.asinteger   := Q_CPARECEREC_CODI.asinteger ;
   end ;
end;

procedure TFLoteRecebimento.FonteClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbPost] then  begin
    if Fonte.DataSource = DS_ItemLoteRec then  begin
       if (Q_ItemLoteRecValorDescAcresc.Value <> 0) then
          TN2.PageIndex := 1
    end ;

  end ;
//  if (Button in [nbinsert]) and (Fonte.Datasource = ds_itemLoteRec) then  begin
//     lk_Titulo.setfocus ;
//  end ;
end;

procedure TFLoteRecebimento.q_DescLoteRecBeforePost(DataSet: TDataSet);
var iMySinal : Integer;
begin
  if Q_DIFEDIF_SINAL.Value = '+' then
    iMySinal := 1
  else
    iMySinal := -1;

  if (DS_DescLoteRec.State in [dsInsert,dsEdit]) then
    Q_DescLoteRecValor.Value := abs(Q_DescLoteRecValor.Value) * iMySinal;

end;

procedure TFLoteRecebimento.FormPaint(Sender: TObject);
begin
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
             Dfm_Splash1.Gauge1.MaxValue := 7;
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
                    Q_CPARECE.Open ;

                    Dfm_Splash1.Gauge1.Progress := 4;
                    Q_LoteRec.open ;

                    Dfm_Splash1.Gauge1.Progress := 5;
                    Q_ItemLoteRec.Open ;

                    Dfm_Splash1.Gauge1.Progress := 6;
                    Q_DescLoteRec.Open ;

                    Dfm_Splash1.Gauge1.Progress := 7;
                    Q_PARA.Open ;

                    saldo.caption := '0' ;
                    if Q_LoteRecSequencia.asstring <> '' then begin
                       Q_AUXI.close;
                       Q_AUXI.Sql.clear ;
                       Q_AUXI.Sql.Add('select SUM(ValorPago+ValorDescAcresc) from ItemLoteRec where SeqLoteRec = '+ Q_LoteRecSequencia.asstring ) ;
                       Q_AUXI.Open ;
                       Saldo.caption := formatfloat('###,###,##0.00',(Q_AUXICOLUMN1.asfloat) - Q_LoteRecValor.asfloat );
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
procedure TFLoteRecebimento.wwDBEdit1Exit(Sender: TObject);
begin

  if ((Q_ItemLoteRec.state = dsedit) or (Q_ItemLoteRec.state = dsinsert) )
     then Q_ItemLoterEC.post ;
  if (Q_ITEMLOTERECValorDescAcresc.asfloat <> 0) then
     TN2.pageindex := 1 ;

end;

procedure TFLoteRecebimento.BancoContaExit(Sender: TObject);
begin
  BancoConta.text := Q_BANCBAN_CODI.asstring ;
end;

procedure TFLoteRecebimento.lk_TituloExit(Sender: TObject);
begin
//  if lk_titulo.text = '' then begin
//     MessageDlg('Titulo não Informado !',mterror,[mbOk], 0);
//     lk_Titulo.setfocus ;
//     abort ;
//  end ;
   if (Q_ItemLoteRec.state = dsedit )  or (Q_ItemLoteRec.state = dsinsert ) then begin
      Q_AUX2.close;
      Q_AUX2.Sql.clear ;
      Q_AUX2.Sql.Add('select count(*) as XVALOR from ItemLoteRec where SeqLoteRec = '+ Q_LoteRecSequencia.asstring ) ;
      Q_AUX2.Sql.Add(' and Titulo = ' + '''' + q_ItemLoteRec.FieldByNAme('Titulo').AsString + '''' ) ;
      if ( Q_ItemLoteRec.state = dsedit ) then
         Q_AUX2.Sql.Add(' and Sequencia <> ' + Q_ItemLoteRecSequencia.asstring  ) ;
      Q_AUX2.Open ;
      if Q_AUX2.fieldbyname('XVALOR').asfloat <> 0 then begin
         Q_AUX2.close ;
         MessageDlg('Titulo já cadastrado !',mterror,[mbOk], 0);
         lk_Titulo.setfocus ;
         abort ;
      end ;
      Q_AUX2.close ;
      lk_titulo.text := q_CPARECEREC_NFIS.asstring ;
      Q_ItemLoteRecNumeroCr.asinteger   := Q_CPARECEREC_CODI.asinteger ;
   end ;
end;

procedure TFLoteRecebimento.DBLC_IDR_DIFEExit(Sender: TObject);
begin
    if (Q_DescLoteRec.State = dsedit) or (Q_DescLoteRec.State = dsinsert ) then begin
       Q_DescLoteRecDescAcresc.asstring := Q_DIFEDIF_CODI.asstring ;
    end ;
    DBLC_IDR_DIFE.text := Q_DIFEDIF_DESC.asstring ;    
end;

procedure TFLoteRecebimento.q_ItemLoteRecBeforePost(DataSet: TDataSet);
begin
  if lk_titulo.text = '' then begin
     MessageDlg('Titulo não informado !',mterror,[mbOk], 0);
     lk_Titulo.setfocus ;
     abort ;
  end ;
  Q_AUX2.close;
  Q_AUX2.Sql.clear ;
  Q_AUX2.Sql.Add('select count(*) as XVALOR from ItemLoteRec where SeqLoteRec = '+ Q_LoteRecSequencia.asstring ) ;
  Q_AUX2.Sql.Add(' and Titulo = ' + '''' + q_ItemLoteRec.FieldByNAme('Titulo').AsString + '''' ) ;
  if ( Q_ItemLoteRec.state = dsedit ) then
     Q_AUX2.Sql.Add(' and Sequencia <> ' + Q_ItemLoteRecSequencia.asstring  ) ;
  Q_AUX2.Open ;
  if Q_AUX2.fieldbyname('XVALOR').asinteger <> 0 then begin
     MessageDlg('Titulo já cadastrado !',mterror,[mbOk], 0);
     Q_AUX2.Close;
     lk_Titulo.setfocus ;
     abort ;
  end ;
  Q_AUX2.Close ;

end;

procedure TFLoteRecebimento.SpeedButton4Click(Sender: TObject);
begin
   gs_rece := '0' ;
   Application.CreateForm(TFRecebimentos, FRecebimentos);
   FRecebimentos.ShowModal ;
   FRecebimentos.Release ;
  Q_CPARECE.Close ;
  Q_CPARECE.Open ;

end;

procedure TFLoteRecebimento.SBT_REFRClick(Sender: TObject);
begin
  Q_CPARECE.Close ;
  Q_CPARECE.Open ;
end;

procedure TFLoteRecebimento.wwDBEdit2Exit(Sender: TObject);
begin
    if (q_ItemLoteRec.state = dsinsert ) then begin
         if q_ItemLoteRecNumeroCR.asstring <> '' then begin
             if q_ItemLoteRecValorPago.asfloat <> Q_CPARECEREC_SALD.Asfloat then begin
                MessageDlg('Valor do Titulo errado !',mterror,[mbOk], 0);

                q_ItemLoteRecValorDescAcresc.value :=  Q_ItemLoteRecValorPago.asfloat -
                                                         Q_CPARECEREC_SALD.Asfloat ;

                Q_ItemLoteRecValorPago.value       := Q_CPARECEREC_SALD.Asfloat  ;
             end ;
         end ;
      end ; 
end;

procedure TFLoteRecebimento.FormActivate(Sender: TObject);
begin
        CENTRO(Self,False);
end;

end.


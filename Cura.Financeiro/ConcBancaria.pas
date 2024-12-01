unit ConcBancaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, DBTables, Wwquery, Buttons,
  DBCtrls, wwdblook, StdCtrls, Mask, ExtCtrls, wwdbedit, Wwdotdot, Wwdbcomb,
  wwstorep, RzPanel, RzRadGrp;

type
  TFConcBancaria = class(TForm)
    Q_BANC: TwwQuery;
    Q_MOVI: TwwQuery;
    DS_MOVI: TwwDataSource;
    Q_MOVIMOV_BANC: TStringField;
    Q_MOVIMOV_DATA: TDateTimeField;
    Q_MOVIMOV_SINAL: TStringField;
    Q_MOVIMOV_DCTO: TStringField;
    Q_MOVIMOV_LANC: TIntegerField;
    Q_MOVIMOV_CODI: TAutoIncField;
    Q_MOVIMOV_DESC: TStringField;
    Q_MOVIMOV_HIST: TStringField;
    Q_MOVIMOV_VALOR: TFloatField;
    Q_MOVIMOV_CONT: TStringField;
    Q_MOVIMOV_FILI: TStringField;
    Q_MOVIMOV_ORIG: TStringField;
    Q_MOVIMOV_SEQU: TIntegerField;
    Q_MOVISinal: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Panel3: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBComboBox2: TwwDBComboBox;
    Fonte: TDBNavigator;
    DBText1: TDBText;
    DS_BANC: TwwDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SBT_SAIR: TSpeedButton;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_DATA: TDateTimeField;
    Q_BANCBAN_SALD: TFloatField;
    STP_GRAVSALD: TwwStoredProc;
    UPD_MOVI: TUpdateSQL;
    Q_PARA: TQuery;
    Q_PARAFilialPaga: TStringField;
    Q_PARACta_GerencialPaga: TStringField;
    STP_CALCSALD: TwwStoredProc;
    Q_CONT: TwwQuery;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_CODI: TStringField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_MOVIDescConta: TStringField;
    Q_MOVIMOV_CHEQ: TStringField;
    MaskEdit2: TMaskEdit;
    Label8: TLabel;
    STP_CALCSALD1: TwwStoredProc;
    Label7: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Q_CONTDS: TStringField;
    qrConciliacao: TwwQuery;
    qrUpdateConta: TwwQuery;
    Q_MOVICONCILIADO: TStringField;
    RzRadioGroup1: TRzRadioGroup;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_MOVIAfterPost(DataSet: TDataSet);
    procedure Q_MOVIAfterDelete(DataSet: TDataSet);
    procedure Q_MOVINewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConcBancaria: TFConcBancaria;

implementation
uses cppmenu, Unt_Splash1 ;
{$R *.DFM}

procedure TFConcBancaria.SBT_SAIRClick(Sender: TObject);
begin
  close ;
end;

procedure TFConcBancaria.BitBtn1Click(Sender: TObject);
var dDataRef : tdatetime ;
    ddatareff : tdatetime;
    sFinal : string;
begin
   if wwDBLookupCombo3.text = '' then begin
      MessageDlg('Informe o Banco/Conta !',mterror,[mbOk], 0);
      abort ;
   end ;

  // if MessageDlg('Confirma Geração da Movimentação Bancária ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
  //    abort ;

   dDataRef := 0.0 ;
   ddatareff := 0.0;
   sfinal := '';

   if MaskEdit1.text  <> '  /  /    ' then
      dDataRef := strtodate(Maskedit1.text)
   else dDataref := Q_BANCBAN_DATA.asdatetime ;

   if MaskEdit2.text  <> '  /  /    ' then  begin
      dDataReff := strtodate(Maskedit2.text);
      sFinal    := FormatDateTime('MM/DD/YYYY',ddatareff);
   end;

   try
   begin
     if sfinal = ''           then begin
        STP_CALCSALD1.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD1.ParamByName('@DataRef').Value := dDataRef  ;
        STP_CALCSALD1.ExecProc;
      end else begin
        STP_CALCSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD.ParamByName('@DataRef').Value := dDataRef  ;
        STP_CALCSALD.ParamByName('@Final').Value := trim(sFinal) ;
        STP_CALCSALD.ExecProc;
     end;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
//   Panel1.Enabled := false ;
   if sfinal = ''           then begin
      Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD1.ParamByName('@SaldoAnt').Value );
      Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD1.ParamByName('@SaldoFinal').Value );
    end else begin
      Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoAnt').Value );
      Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoFinal').Value );
   end;

   Q_MOVI.Close ;
   Q_MOVI.Sql.Clear ;
   Q_MOVI.Sql.Add('select * from cpamovi ' ) ;
   Q_MOVI.Sql.Add(' where Convert(char(08),MOV_DATA,112) >= ' ) ;
   Q_MOVI.Sql.Add('''' + formatdatetime('YYYYMMDD',ddataref) + '''' ) ;
   if sfinal <> '' then begin
      Q_MOVI.Sql.Add(' and Convert(char(08),MOV_DATA,112) <= ' ) ;
      Q_MOVI.Sql.Add('''' + formatdatetime('YYYYMMDD',ddatareff) + '''' ) ;
   end;
   Q_MOVI.Sql.Add(' and MOV_BANC = ' + '''' + Q_BANCBAN_CODI.asstring + '''' ) ;

   if RzRadioGroup1.ItemIndex = 1 then
      Q_MOVI.Sql.Add(' and CONCILIADO = ''S'' ')
   else if RzRadioGroup1.ItemIndex = 2 then
      Q_MOVI.Sql.Add(' and (CONCILIADO = ''N''  OR CONCILIADO IS NULL  )');


   Q_MOVI.Sql.Add(' order by mov_data, Mov_dcto desc' ) ;

   Q_MOVI.Open ;
   Q_PARA.Open ;
   FConcBancaria.keyPreview := false ;
end;

procedure TFConcBancaria.BitBtn2Click(Sender: TObject);
var ddatareff : tdatetime;
begin

   if MaskEdit2.text  = '  /  /    ' then  begin
      MessageDlg('Data Final inválida...',mterror,[mbOk], 0);
      abort ;
     end else begin
      dDataReff := strtodate(Maskedit2.text);
   end;

   if wwDBLookupCombo3.text = '' then begin
      MessageDlg('Informe o Banco/Conta !',mterror,[mbOk], 0);
      abort ;
   end ;



   
   {
   Comentado por Miguel para nova rotina de bloqueio de registros conciliados
   try
   begin
     STP_GRAVSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
     STP_GRAVSALD.ParamByName('@dataref').Value   := ddatareff ;
     STP_GRAVSALD.ExecProc;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
   MessageDlg('Atualização efetuada com sucesso !',mtinformation,[mbOk], 0);
   Label5.caption := '0.00';
   Label6.caption := '0.00';
   wwDBLookupCombo3.text := '' ;

   }



   if MessageBox(Self.Handle, PChar('Confirma conciliação bancária para as seguintes informações:' +
                                #13#13 + 'Conta Bancária: ' + wwDBLookupCombo3.Text +
                                #13 + 'Data de conciliação: ' + MaskEdit2.Text), 'Confirmação', MB_YESNO + MB_ICONQUESTION) = 7  then
   Abort;


   //efetuamos a conciliação bancária dos itens
   qrConciliacao.Params[0].AsString := wwDBLookupCombo3.LookupValue;
   qrConciliacao.Params[1].AsString := FormatDateTime('YYYYMMDD', ddatareff);
   qrConciliacao.ExecSQL;

   //atualizamos a data de última conciliação no cadastro de contas bancárias
   qrUpdateConta.Params[0].AsString := FormatDateTime('YYYYMMDD', ddatareff);
   qrUpdateConta.Params[1].AsString := wwDBLookupCombo3.LookupValue;
   qrUpdateConta.ExecSQL;


   FConcBancaria.keyPreview := true  ;
   Q_MOVI.close ;
end;

procedure TFConcBancaria.FormPaint(Sender: TObject);
begin
   If Self.Tag = 0 Then
      Begin
        Self.Tag := 1;
        Application.CreateForm(TDfm_Splash1, Dfm_Splash1);
        Dfm_Splash1.Gauge1.MaxValue := 2;
        Dfm_Splash1.Show;
        Dfm_Splash1.RePaint;
        Self.Repaint;
      Try
        Begin
          Dfm_Splash1.Gauge1.Progress := 1;
          Q_BANC.Open ;
          Dfm_Splash1.Gauge1.Progress := 2;
          Q_CONT.Open ;
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

procedure TFConcBancaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_MOVI.close ;
   Q_BANC.Close ;
   Q_PARA.Close ;
end;

procedure TFConcBancaria.Q_MOVIAfterPost(DataSet: TDataSet);
var dDataRef : tdatetime ;
    ddatareff : tdatetime;
    sfinal : string;
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_MOVI]);
  end;
  except
    begin
      Q_MOVI.RevertRecord;
    end;
  end;
  Q_MOVI.Close;
  dDataRef := 0.0 ;
  ddatareff := 0.0;
  sfinal := '';

  if MaskEdit1.text  <> '  /  /    ' then
      dDataRef := strtodate(Maskedit1.text)
   else dDataref := Q_BANCBAN_DATA.asdatetime ;

   if MaskEdit2.text  <> '  /  /    ' then  begin
      dDataReff := strtodate(Maskedit2.text);
      sFinal    := FormatDateTime('MM/DD/YYYY',ddatareff);
   end;

{  try
   begin
     STP_CALCSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
     STP_CALCSALD.ParamByName('@DataRef').Value := dDataRef  ;
     STP_CALCSALD.ParamByName('@Final').Value := trim(sFinal) ;
     STP_CALCSALD.ExecProc;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
  end;
  Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoAnt').Value );
  Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoFinal').Value );}


  try
   begin
     if sfinal = ''           then begin
        STP_CALCSALD1.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD1.ParamByName('@DataRef').Value := dDataRef  ;
        STP_CALCSALD1.ExecProc;
      end else begin
        STP_CALCSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD.ParamByName('@DataRef').Value := dDataRef  ;
        STP_CALCSALD.ParamByName('@Final').Value := trim(sFinal) ;
        STP_CALCSALD.ExecProc;
     end;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
//   Panel1.Enabled := false ;
   if sfinal = ''           then begin
      Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD1.ParamByName('@SaldoAnt').Value );
      Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD1.ParamByName('@SaldoFinal').Value );
    end else begin
      Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoAnt').Value );
      Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoFinal').Value );
   end;

  Q_MOVI.Open;
  Q_MOVI.last ;
end;

procedure TFConcBancaria.Q_MOVIAfterDelete(DataSet: TDataSet);
var dDataRef : tdatetime ;
    ddatareff : tdatetime ;
    sfinal : string ;
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_MOVI]);
  end;
  except
    begin
      Q_MOVI.RevertRecord;
    end;
  end;
   dDataRef := 0.0 ;
   ddatareff := 0.0;
   sfinal := '';

   if MaskEdit1.text  <> '  /  /    ' then
      dDataRef := strtodate(Maskedit1.text)
   else dDataref := Q_BANCBAN_DATA.asdatetime ;


  if MaskEdit2.text  <> '  /  /    ' then  begin
     dDataReff := strtodate(Maskedit2.text);
     sFinal    := FormatDateTime('MM/DD/YYYY',ddatareff);
  end;

{  try
   begin
     STP_CALCSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
     STP_CALCSALD.ParamByName('@DataRef').Value := dDataRef  ;
     STP_CALCSALD.ParamByName('@Final').Value := trim(sFinal)  ;
     STP_CALCSALD.ExecProc;
   end;
  except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
  end;
//   Panel1.Enabled := false ;
  Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoAnt').Value );
  Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoFinal').Value );}

  try
   begin
     if sfinal = ''           then begin
        STP_CALCSALD1.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD1.ParamByName('@DataRef').Value := dDataRef  ;
        STP_CALCSALD1.ExecProc;
      end else begin
        STP_CALCSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD.ParamByName('@DataRef').Value := dDataRef  ;
        STP_CALCSALD.ParamByName('@Final').Value := trim(sFinal) ;
        STP_CALCSALD.ExecProc;
     end;
   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
//   Panel1.Enabled := false ;
   if sfinal = ''           then begin
      Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD1.ParamByName('@SaldoAnt').Value );
      Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD1.ParamByName('@SaldoFinal').Value );
    end else begin
      Label5.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoAnt').Value );
      Label6.caption := formatfloat('###,###,##0.00',STP_CALCSALD.ParamByName('@SaldoFinal').Value );
   end;


end;

procedure TFConcBancaria.Q_MOVINewRecord(DataSet: TDataSet);
begin
  Q_MOVIMOV_BANC.asstring := Q_BANCBAN_CODI.asstring ;
  Q_MOVIMOV_ORIG.asstring := '0';
  Q_MOVIMOV_SEQU.asstring := '1';
  Q_MOVIMOV_FILI.asstring := Q_PARAFilialPaga.asstring  ;
//  Q_MOVIMOV_CONT.asstring := Q_PARACta_GerencialPaga.asstring ;
end;

procedure TFConcBancaria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;

end;

procedure TFConcBancaria.wwDBLookupCombo3Enter(Sender: TObject);
begin
  Q_MOVI.close ;
  if wwDBLookupCombo3.text <> '' then DBText1.visible := true
  else DBText1.visible := false ;
end;

procedure TFConcBancaria.MaskEdit1Enter(Sender: TObject);
begin
  Q_MOVI.Close ;
end;

procedure TFConcBancaria.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFConcBancaria.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Q_MOVICONCILIADO.Value = 'S' then
        ABrush.Color := clSilver;
   if Highlight then
        AFont.Color := clBlue
   else
        AFont.Color := clBlue;
end;

end.

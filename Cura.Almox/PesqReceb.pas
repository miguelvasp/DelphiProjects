unit PesqReceb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbigrd, Grids, Wwdbgrid, Db, Wwdatsrc, DBTables, Wwquery, StdCtrls,
  Mask, wwdblook, Buttons, ExtCtrls;

type
  TFpesqReceb = class(TForm)
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Label5: TLabel;
    Memo2: TMemo;
    DBLC_REC_RAZA: TwwDBLookupCombo;
    DBLC_REC_CGER1: TwwDBLookupCombo;
    DBLC_REC_CGER2: TwwDBLookupCombo;
    ME_REC_VENC1: TMaskEdit;
    ME_REC_VENC2: TMaskEdit;
    REC_SITU: TComboBox;
    CB_ORDE: TComboBox;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Edit1: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    T_CONT: TwwQuery;
    T_CONTCON_DESC: TStringField;
    T_CONTCON_CODI: TStringField;
    T_CONTCON_ENSA: TStringField;
    T_CONTCON_OPER: TStringField;
    T_CONTCON_FLOA: TFloatField;
    T_CONTCON_FLUX: TStringField;
    T_CONTCON_CTCO: TStringField;
    Q_RECE: TwwQuery;
    Q_RECEREC_RAZA: TStringField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEREC_BANC: TStringField;
    Q_AUXI: TwwQuery;
    DS_RECE: TwwDataSource;
    Q_RECCLI: TwwQuery;
    Q_RECCLICLI_RAZA: TStringField;
    Q_RECCLICLI_CODI: TAutoIncField;
    Q_BANC: TwwQuery;
    Q_BANCLCO_BANC: TStringField;
    Q_BANCLCO_CODI: TStringField;
    DS_BANC: TwwDataSource;
    DS_FILI: TwwDataSource;
    Q_FILI: TwwQuery;
    Q_FILIFIL_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    Panel1: TPanel;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    q_NumBanc: TwwQuery;
    q_NumBancREC_nban: TStringField;
    Label8: TLabel;
    ME_REC1: TMaskEdit;
    Label10: TLabel;
    ME_REC2: TMaskEdit;
    Q_VAL_REC: TwwQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    Q_RECEValorReceber: TFloatField;
    Q_RECEREC_CODI: TIntegerField;
    Label11: TLabel;
    Label19: TLabel;
    Q_AUXI2: TwwQuery;
    bt_Tod: TSpeedButton;
    bt_Nem: TSpeedButton;
    Q_RECEFLAG_FLUXO: TStringField;
    U_REC: TUpdateSQL;
    SBT_SairA: TSpeedButton;
    DBG_CLIE: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label20: TLabel;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    T_CONTDS: TStringField;
    ck_Sim: TCheckBox;
    ck_Nao: TCheckBox;
    qrEmpAux: TwwQuery;
    qrEmpAuxachei: TIntegerField;
    Label3: TLabel;
    edtValor1: TEdit;
    Label21: TLabel;
    edtValor2: TEdit;
    chkLancamentoCaixa: TCheckBox;
    Label22: TLabel;
    edtEmissaoIni: TMaskEdit;
    Label23: TLabel;
    edtEmissaoFim: TMaskEdit;
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure CB_ORDEEnter(Sender: TObject);
    procedure CB_ORDEExit(Sender: TObject);
    procedure DBLC_REC_RAZAEnter(Sender: TObject);
    procedure DBLC_REC_RAZAExit(Sender: TObject);
    procedure DBLC_REC_CGER1Enter(Sender: TObject);
    procedure DBLC_REC_CGER1Exit(Sender: TObject);
    procedure DBLC_REC_CGER2Enter(Sender: TObject);
    procedure DBLC_REC_CGER2Exit(Sender: TObject);
    procedure REC_SITUEnter(Sender: TObject);
    procedure REC_SITUExit(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure DB_NumBancEnter(Sender: TObject);
    procedure DB_NumBancExit(Sender: TObject);
    procedure ME_REC_VENC1Enter(Sender: TObject);
    procedure ME_REC_VENC1Exit(Sender: TObject);
    procedure ME_REC_VENC2Enter(Sender: TObject);
    procedure ME_REC_VENC2Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBG_CLIEXCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure bt_TodClick(Sender: TObject);
    procedure Q_RECEFLAG_FLUXOChange(Sender: TField);
    procedure bt_NemClick(Sender: TObject);
    procedure ck_SimClick(Sender: TObject);
    procedure DBG_CLIECalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SBT_SairAClick(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure edtValor1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpesqReceb: TFpesqReceb;
  controle : boolean;
  posic : integer;
  sPost : Boolean;
  T : TextFile;

implementation
uses CPPRECE, Cppmenu,URelFluxoCaixa, UEMITENF ;

{$R *.DFM}

procedure TFpesqReceb.SBT_PESQClick(Sender: TObject);
VAR   DATAFX: STRING;
      Rec_Codi :String;
begin
  DATAFX:= '';
  Rec_Codi := Q_RECEREC_CODI.AsString;
  Q_RECE.close;
  Q_RECE.SQL.clear ;
  Q_RECE.SQL.add('SELECT CASE (SELECT COUNT(*) FROM CPAIREC WHERE IRE_CODI = CPARECE.REC_CODI) ');
  Q_RECE.SQL.Add('WHEN 0 THEN 0 ELSE (SELECT SUM(IRE_VTOT) FROM CPAIREC WHERE IRE_CODI = CPARECE.REC_CODI) ');
  Q_RECE.SQL.Add('END as ValorReceber, '+
                 '              REC_RAZA, '+
                 '              REC_CODI, '+
                 '              REC_NFIS, '+
                 '              REC_VENC, '+
                 '              REC_VLIQ, '+
                 '              REC_SALD, '+
                 '              REC_HIST, '+
                 '              REC_BANC,  '+
                 '              FLAG_FLUXO ' +
                 ' FROM CPARECE (NOLOCK)  ');

  Q_AUXI.close ;
  Q_AUXI.SQL.clear ;
  Q_AUXI.SQL.add('SELECT SUM(REC_VLIQ) AS XVALOR, SUM(REC_SALD) AS XSALDO '+
                'FROM CPARECE');

  Q_AUXI2.SQL.Clear;
  Q_AUXI2.SQL.Add('SELECT SUM(IRE_VTOT) AS RECEBIDO FROM CPAIREC WHERE IRE_CODI IN ');
  Q_AUXI2.SQL.Add('(SELECT REC_CODI FROM CPARECE ');

  if REC_SITU.itemindex = 0 then
  begin
        Q_RECE.SQL.Add(' Where (REC_CODI IN (SELECT IRE_CODI FROM CPAIREC) or REC_SALD = 0)');
        Q_AUXI.SQL.Add(' Where (REC_CODI IN (SELECT IRE_CODI FROM CPAIREC) or REC_SALD = 0)');
        Q_AUXI2.SQL.Add(' Where (REC_CODI IN (SELECT IRE_CODI FROM CPAIREC) or REC_SALD = 0)');
  end
  else
  begin
        Q_AUXI.SQL.Add(' Where REC_SALD > 0 ');
        Q_AUXI2.SQL.Add(' Where REC_SALD > 0 ');
        Q_RECE.SQL.Add(' Where REC_SALD > 0 ');
  end;

  if ME_REC1.Text <> '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC1.text)) +'''' +')');
        Q_AUXI.SQL.Add('AND REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_AUXI.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC1.text)) +'''' +')');
        Q_AUXI2.SQL.Add('AND REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_AUXI2.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC1.text)) +'''' +')');
  end;

  if ME_REC2.Text <> '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_RECE.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC2.text)) +'''' +')');
        Q_AUXI.SQL.Add('AND REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_AUXI.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC2.text)) +'''' +')');
        Q_AUXI2.SQL.Add('AND REC_CODI IN (SELECT IRE_CODI FROM CPAIREC WHERE ');
        Q_AUXI2.SQL.Add('CONVERT(CHAR(10),IRE_DATA,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC2.text)) +'''' +')');
  end;

  if Edit2.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_CODI = ' + Edit2.text ) ;
        Q_AUXI.SQL.Add(' AND REC_CODI = ' + Edit2.text ) ;
        Q_AUXI2.SQL.Add(' AND REC_CODI = ' + Edit2.text ) ;
  end;

  if DBLC_REC_RAZA.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_RAZA = ' + '''' + DBLC_REC_RAZA.text + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_RAZA = ' + '''' + DBLC_REC_RAZA.text + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_RAZA = ' + '''' + DBLC_REC_RAZA.text + '''' ) ;
  end;



  if ME_REC_VENC1.Text <>  '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
  end;

  if ME_REC_VENC2.Text <>  '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
  end;

  if edtEmissaoIni.Text <>  '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),REC_EMIS,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(edtEmissaoIni.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),REC_EMIS,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(edtEmissaoIni.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),REC_EMIS,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(edtEmissaoIni.text)) +'''');
  end;

    if edtEmissaoFim.Text <>  '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),REC_EMIS,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(edtEmissaoFim.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),REC_EMIS,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(edtEmissaoFim.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),REC_EMIS,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(edtEmissaoFim.text)) +'''');
  end;


  if DBLC_REC_CGER1.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_CGER >= ' + '''' + DBLC_REC_CGER1.LookupValue + '''');
        Q_AUXI.SQL.Add(' AND REC_CGER >= ' + '''' + DBLC_REC_CGER1.LookupValue + '''');
        Q_AUXI2.SQL.Add(' AND REC_CGER >= ' + '''' + DBLC_REC_CGER1.LookupValue + '''');
  end;

  if DBLC_REC_CGER2.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_CGER <= ' + '''' + DBLC_REC_CGER2.LookupValue + '''');
        Q_AUXI.SQL.Add(' AND REC_CGER <= ' + '''' + DBLC_REC_CGER2.LookupValue + '''');
        Q_AUXI2.SQL.Add(' AND REC_CGER <= ' + '''' + DBLC_REC_CGER2.LookupValue + '''');
  end;

  if wwDBLookupCombo3.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_BANC = ' + '''' + wwDBLookupCombo3.LookupValue + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_BANC = ' + '''' + wwDBLookupCombo3.LookupValue + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_BANC = ' + '''' + wwDBLookupCombo3.LookupValue + '''' ) ;
  end;

   if wwDBLookupCombo2.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_fili = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_fili = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_fili = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
  end;


  if edit1.text <> ''  then
  begin
        Q_RECE.SQL.Add(' AND REC_NFIS = '+ ''''+ Edit1.text + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_NFIS = '+ ''''+ Edit1.text + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_NFIS = '+ ''''+ Edit1.text + '''' ) ;
  end;

  if chkLancamentoCaixa.Checked  then
  begin
        Q_RECE.SQL.Add(' AND IdLancamentoCaixa is not null ' ) ;
        Q_AUXI.SQL.Add(' AND IdLancamentoCaixa is not null ' ) ;
        Q_AUXI2.SQL.Add(' AND IdLancamentoCaixa is not null ' ) ;
  end;


  if edtValor1.text <> ''  then
  begin
        Q_RECE.SQL.Add(' AND REC_VLIQ >= ' + StringReplace(edtValor1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])  + ' AND REC_VLIQ <= ' + StringReplace(edtValor2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])) ;
        Q_AUXI.SQL.Add(' AND REC_VLIQ >= ' + StringReplace(edtValor1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])  + ' AND REC_VLIQ <= ' + StringReplace(edtValor2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])) ;
        Q_AUXI2.SQL.Add(' AND REC_VLIQ >= ' + StringReplace(edtValor1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])  + ' AND REC_VLIQ <= ' + StringReplace(edtValor2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])) ;
  end;




  {  if DB_NumBanc.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_NBAN = ' + '''' + DB_NumBanc.text + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_NBAN = ' + '''' + DB_NumBanc.text + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_NBAN = ' + '''' + DB_NumBanc.text + '''' ) ;
  end;
}

  If not ck_Sim.checked then
  Begin
     Q_RECE.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
     Q_AUXI.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
     Q_AUXI2.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
  End;

  If not ck_Nao.checked then
  Begin
     Q_RECE.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
     Q_AUXI.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
     Q_AUXI2.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
  End;


  //filtros para o fluxo de caixa, quando sao pesquisadas mais de 2 empresas
   if FMenu.chkFluxoAberto.Checked then begin
       qrEmpAux.Close;
       qrEmpAux.Params[0].AsInteger := FMenu.sqlUsuariosCH.Value;
       qrEmpAux.Open;

       if qrEmpAuxachei.Value > 0 then begin
            Q_RECE.SQL.Add(' AND REC_fili in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
            Q_AUXI.SQL.Add(' AND REC_fili in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
            Q_AUXI2.SQL.Add(' AND REC_fili in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
       end;
   end;








  If Fil_SQL <> '' then
  Begin
     Q_RECE.SQL.Add(Fil_SQL) ;
     Q_AUXI.SQL.Add(Fil_SQL) ;
     Q_AUXI2.SQL.Add(Fil_SQL) ;
  End;

  case CB_ORDE.itemindex of
        1:Q_RECE.Sql.Add(' order by REC_RAZA,REC_VENC desc');
        2:Q_RECE.Sql.Add(' order by REC_VENC desc, REC_RAZA, REC_NFIS');
        3:Q_RECE.Sql.Add(' order by REC_NFIS');
        4:Q_RECE.SQL.Add('ORDER BY REC_VLIQ');
        else
          Q_RECE.Sql.Add(' order by REC_CODI');
  end;

  Q_RECE.Open;
  Q_AUXI.Open;
  Q_AUXI2.SQL.Add(')');
  Q_AUXI2.Open;
  label1.caption := formatfloat('###,###,###,##0.00',Q_AUXI.fieldbyname('XSALDO').asfloat) ;
  label2.caption := formatfloat('###,###,###,##0.00',Q_AUXI.fieldbyname('XVALOR').asfloat) ;
  label19.caption := formatfloat('###,###,###,##0.00',Q_AUXI2.fieldbyname('RECEBIDO').asfloat) ;
  Q_AUXI.close ;
  Q_AUXI2.Close;

  {
  //----------------------------
  AssignFile(T,'SQL.SQL');
  Rewrite(T);
  WriteLn(T,Q_RECE.SQL.TEXT);
  CloseFile(T);
  //----------------------------
  }

  If Rec_Codi <> '' Then
        Q_RECE.Locate('REC_CODI',Rec_Codi,[]);

end;

procedure TFpesqReceb.SBT_SAIRClick(Sender: TObject);
begin
  close ;
  Fil_DataI := '';
  Fil_DataF := '';
  Fil_Conta := '';
  Fil_Stat  := '';
  Fil_SQL   := '';
end;

procedure TFpesqReceb.SpeedButton2Click(Sender: TObject);
begin
   gs_rece := '0' ;
   Application.CreateForm(TFRecebimentos, FRecebimentos);
   FRecebimentos.ShowModal ;
   FRecebimentos.Release ;
end;

procedure TFpesqReceb.SpeedButton1Click(Sender: TObject);
begin
   If DBG_CLIE.SelectedField <> Q_RECEFlag_Fluxo then
   Begin
           gs_rece := Q_RECEREC_CODI.asstring ;
           controle := true;
           Application.CreateForm(TFRecebimentos, FRecebimentos);
           FRecebimentos.ShowModal ;
           FRecebimentos.Release ;

           SBT_PESQ.Click;

           Q_RECE.Locate('REC_CODI',posic,[]);
   End;

end;

procedure TFpesqReceb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_NumBanc.close ;
  controle := false;
  Q_BANC.close;
  Q_FILI.close;
  T_CONT.Close;
  Q_RECCLI.close ;
  Q_EMP.Close;
  Action := caFree;

end;

procedure TFpesqReceb.FormCreate(Sender: TObject);
begin
  Q_BANC.Open ;
  Q_NumBanc.Open ;
  Q_FILI.Open ;
  Q_RECE.Open;
  T_CONT.Open ;
  Q_RECCLI.Open ;
  Q_EMP.Open;
  REC_SITU.itemindex := 1 ;
  CB_ORDE.itemindex := 2 ;
  sPost := True;

  If Fil_DataI <> '' then
  Begin
        SBT_SairA.Visible := True;

        ME_REC_VENC1.Text := Fil_DataI;
        If Fil_DataF <> '' then
                ME_REC_VENC2.Text := Fil_DataF;

        If Fil_Conta <> '' then
        Begin
                DBLC_REC_CGER1.LookupValue := Fil_Conta;
                DBLC_REC_CGER2.LookupValue := Fil_Conta2;
                T_CONT.Locate('CON_CODI',Fil_Conta,[]);
                DBLC_REC_CGER1.Text := T_CONTCON_DESC.AsString;
                DBLC_REC_CGER1.Text := T_CONTCON_DESC.AsString;
        End;

        If Fil_Stat <> '' then
                If Fil_Stat = 'A' then
                        Rec_Situ.ItemIndex := 1
                Else Begin
                        Rec_Situ.ItemIndex := 0;
                End;

        if Empresa <> '' then
           wwDBLookupCombo2.LookupValue := Empresa;

        SBT_PESQ.Click
  End;

end;

procedure TFpesqReceb.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;

end;

procedure TFpesqReceb.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFpesqReceb.CB_ORDEEnter(Sender: TObject);
begin
   (Sender as TComboBox).Color := ClAqua;
end;

procedure TFpesqReceb.CB_ORDEExit(Sender: TObject);
begin
   (Sender as TComboBox).Color := Clwindow;
end;

procedure TFpesqReceb.DBLC_REC_RAZAEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFpesqReceb.DBLC_REC_RAZAExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFpesqReceb.DBLC_REC_CGER1Enter(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFpesqReceb.DBLC_REC_CGER1Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFpesqReceb.DBLC_REC_CGER2Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFpesqReceb.DBLC_REC_CGER2Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFpesqReceb.REC_SITUEnter(Sender: TObject);
begin
   (Sender as TComboBOX).Color := ClAqua;
end;

procedure TFpesqReceb.REC_SITUExit(Sender: TObject);
begin
    (Sender as TComboBOX).Color := Clwindow ;
end;

procedure TFpesqReceb.wwDBLookupCombo3Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFpesqReceb.wwDBLookupCombo3Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFpesqReceb.DB_NumBancEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFpesqReceb.DB_NumBancExit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFpesqReceb.ME_REC_VENC1Enter(Sender: TObject);
begin
   (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFpesqReceb.ME_REC_VENC1Exit(Sender: TObject);
begin
   (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFpesqReceb.ME_REC_VENC2Enter(Sender: TObject);
begin
     (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFpesqReceb.ME_REC_VENC2Exit(Sender: TObject);
begin
      (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFpesqReceb.Edit1Enter(Sender: TObject);
begin
  (Sender as TEdit).Color := Claqua ;
end;

procedure TFpesqReceb.Edit1Exit(Sender: TObject);
begin
   (Sender as TEdit).Color := Clwindow  ;
end;

procedure TFpesqReceb.Edit2Enter(Sender: TObject);
begin
  (Sender as TEdit).Color := Claqua ;
end;

procedure TFpesqReceb.Edit2Exit(Sender: TObject);
begin
  (Sender as TEdit).Color := Clwindow  ;
end;

procedure TFpesqReceb.SpeedButton5Click(Sender: TObject);
begin
{   Edit4.text := '';
   Panel4.visible := false;
   Panel1.enabled := true;
   Panel3.enabled := true;}
end;

procedure TFpesqReceb.SpeedButton4Click(Sender: TObject);
{var
parcelas : integer;
i : integer;
numdoc : string;
data : tdatetime;
datas : string;
auxs : string;
auxi : integer;
virano : boolean;
codi : integer;
F : TextFile;}
begin
{   if (edit4.Text = '') or (maskedit1.Text = '  /  /  ') then
   begin
        MessageDlg('Preencha todos os campos', mtInformation, [mbok], 0);
        abort;
   end;

   parcelas := strtoint(edit4.text);
   data := strtodate(Maskedit1.text);
   datas := formatdatetime('DD/MM/YYYY',data);
   virano := false;

   for I := 2 to parcelas do
   begin
        numdoc := Q_RECEREC_NFIS.AsString +' ' +inttostr(i) +'/' +inttostr(parcelas);

        if i > 2 then
        begin
                data := strtodate(datas);
                if (copy(formatdatetime('MM/DD/YYYY',data),0,2) = '01') and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) > 28) then
                        datas := '28/'
                else
                if (strtoint(copy(formatdatetime('MM/DD/YYYY',data),0,2)) in [3,5,7,8,10]) and
                   (strtoint(copy(formatdatetime('DD/MM/YYYY',data),0,2)) = 31 ) then
                        datas := '30/'
                else
                        datas := copy(formatdatetime('DD/MM/YYYY',data),0,3);

                auxs := copy(formatdatetime('MM/DD/YYYY',data),0,2);
                auxi := strtoint(auxs) + 1;
                if auxi = 13 then
                begin
                        auxi := 1;
                        virano := true;
                end;
                auxs := inttostr(auxi);

                if length(auxs) = 1 then
                        datas := datas + '0' +auxs +'/'
                else
                        datas := datas +auxs +'/';

                auxs := copy(formatdatetime('YYYYMMDD',data),0,4);
                if virano then
                        auxi := strtoint(auxs) + 1
                else
                        auxi := strtoint(auxs);
                datas := datas + inttostr(auxi);
        end;

        Q_AUXI.SQL.Clear;
        Q_AUXI.SQL.Add('SELECT MAX(REC_CODI) AS CODIGO FROM CPARECE');
        Q_AUXI.Open;

        codi := Q_AUXI.fieldbyname('CODIGO').asinteger + 1;

        Q_AUXI.SQL.Clear;
        Q_AUXI.SQL.Add('INSERT INTO CPARECE (REC_CODI, REC_CLIE, REC_NFIS, REC_DEVE, ');
        Q_AUXI.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, REC_VENC, ');
        Q_AUXI.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
        Q_AUXI.SQL.Add('REC_VORI, REC_VPRE, REC_HIST, REC_SALD, REC_SITU, REC_FILI, REC_NBAN, ');
        Q_AUXI.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA) ');
        Q_AUXI.SQL.Add('SELECT ' +inttostr(codi) +', REC_CLIE, ' +'''' +numdoc +'''' +', REC_DEVE, ');
        Q_AUXI.SQL.Add('REC_RAZA, REC_CGER, REC_VALO, REC_DESC, REC_VLIQ, CONVERT(SMALLDATETIME,' +'''' +datas +'''' +',103), ');
        Q_AUXI.SQL.Add('REC_BANC, REC_VPAG, REC_EMIS, REC_MOED, REC_DCON, REC_MORI, REC_DCOR, ');
        Q_AUXI.SQL.Add('REC_VORI, REC_VPRE, REC_HIST, REC_VLIQ, ' +'''' +'A' +'''' +', REC_FILI, REC_NBAN, ');
        Q_AUXI.SQL.Add('REC_CONF, REC_VEND, REC_REPR, ETIQUETA FROM CPARECE ');
        Q_AUXI.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');

        Q_AUXI.ExecSQL;

   end;
   Q_AUXI.SQL.Clear;
   Q_AUXI.SQL.Add('UPDATE CPARECE SET REC_NFIS = ');
   Q_AUXI.SQL.Add('''' +Q_RECEREC_NFIS.asstring +' 1/' +edit4.text +'''');
   Q_AUXI.SQL.Add('WHERE REC_CODI = ' +'''' +Q_RECEREC_CODI.asstring +'''');
   Q_AUXI.ExecSQL;
   MessageDlg('Repeti��o efetuada com sucesso!', mtInformation, [mbok], 0);
   Q_RECE.Close;
   Q_RECE.Open;
   Q_RECE.Locate('REC_NFIS',numdoc,[]);
   Panel3.enabled := true;
   Panel1.enabled := true;
   Panel4.visible := false;}
end;

procedure TFpesqReceb.DBG_CLIEXCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If Q_RECEFlag_Fluxo.AsString = 'S' then
        Begin
                Abrush.Color := $00DBFFCE
        End Else Begin
                Abrush.Color := $00A4D1FF
        End;

        If Highlight then
                AFont.Color := clBlue
        else
                Afont.Color := clBlack

end;

procedure TFpesqReceb.bt_TodClick(Sender: TObject);
var REC_CODI:String;
begin
        If not Q_RECE.Eof then
        Begin

                if MessageDlg('Confirma todos os t�tulos para o Fluxo de Caixa?',
                    mtInformation, [mbYes, mbNo], 0) = mrYes then
                Begin

                        REC_CODI := Q_RECEREC_CODI.AsString;
                        Q_RECE.First;

                        sPost := False;

                        While not Q_RECE.Eof Do
                        Begin
                                If Q_RECE.State <> dsEdit then
                                        Q_RECE.Edit;

                                Q_RECEFlag_Fluxo.AsString := 'S';
                                Q_RECE.Next;
                        End;

                        sPost := True;

                        FMenu.DATABASE1.ApplyUpdates([Q_RECE]);

                        SBT_Pesq.Click;
                        
                        If REC_CODI <> '' then
                                Q_RECE.Locate('REC_CODI', REC_CODI, []);
                End;
        End;
end;

procedure TFpesqReceb.Q_RECEFLAG_FLUXOChange(Sender: TField);
begin
        If sPost then
                FMenu.DATABASE1.ApplyUpdates([Q_RECE]);

end;

procedure TFpesqReceb.bt_NemClick(Sender: TObject);
var REC_CODI:String;
begin
        If not Q_RECE.Eof then
        Begin

                if MessageDlg('Confirma todos os t�tulos para o Fluxo de Caixa?',
                    mtInformation, [mbYes, mbNo], 0) = mrYes then
                Begin

                        REC_CODI := Q_RECEREC_CODI.AsString;
                        Q_RECE.First;

                        sPost := False;

                        While not Q_RECE.Eof Do
                        Begin
                                If Q_RECE.State <> dsEdit then
                                        Q_RECE.Edit;

                                Q_RECEFlag_Fluxo.AsString := 'N';
                                Q_RECE.Next;
                        End;

                        sPost := True;

                        FMenu.DATABASE1.ApplyUpdates([Q_RECE]);

                        SBT_Pesq.Click;
                        
                        If REC_CODI <> '' then
                                Q_RECE.Locate('REC_CODI', REC_CODI, []);
                End;
        End;
end;

procedure TFpesqReceb.ck_SimClick(Sender: TObject);
begin
        SBT_PESQ.Click;
end;

procedure TFpesqReceb.DBG_CLIECalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If Q_RECEFlag_Fluxo.AsString = 'S' then
        Begin
                Abrush.Color := $00DBFFCE
        End Else Begin
                Abrush.Color := $00A4D1FF
        End;

        If Highlight then
                AFont.Color := clBlue
        else
                Afont.Color := clBlack

end;

procedure TFpesqReceb.SBT_SairAClick(Sender: TObject);
begin

        Var_Atual := True;
        Fil_DataI := '';
        Fil_DataF := '';
        Fil_Conta := '';
        Fil_Stat  := '';
        Fil_SQL   := '';
        Close;
        
end;

procedure TFpesqReceb.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFpesqReceb.wwDBLookupCombo2Enter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFpesqReceb.edtValor1Change(Sender: TObject);
begin
    edtValor2.Text := edtValor1.Text;
end;

end.




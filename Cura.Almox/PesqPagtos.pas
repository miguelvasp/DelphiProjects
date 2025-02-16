unit PesqPagtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Db, Wwdatsrc, DBTables, Wwquery, DBCtrls, StdCtrls, Mask,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook;

type
  TFPesqPagtos = class(TForm)
    Q_BANC: TwwQuery;
    DS_BANC: TwwDataSource;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_FILI: TwwQuery;
    Q_CONT: TwwQuery;
    DS_FILI: TwwDataSource;
    DS_CONT: TwwDataSource;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    Q_FILIFIL_DESC: TStringField;
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Memo1: TMemo;
    DBLC_REC_CGER1: TwwDBLookupCombo;
    DBLC_REC_CGER2: TwwDBLookupCombo;
    ME_REC_VENC1: TMaskEdit;
    ME_REC_VENC2: TMaskEdit;
    PAG_SITU: TComboBox;
    CB_ORDE: TComboBox;
    Label9: TLabel;
    DS_PPagtos: TwwDataSource;
    Q_PPagtos: TwwQuery;
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Q_PPagtosNumero: TIntegerField;
    Q_PPagtosDocumento: TStringField;
    Q_PPagtosFornecedor: TStringField;
    Q_PPagtosContaGerencial: TStringField;
    Q_PPagtosValorTitulo: TFloatField;
    Q_PPagtosDescAcresc: TFloatField;
    Q_PPagtosValorLiquido: TFloatField;
    Q_PPagtosVencimento: TDateTimeField;
    Q_PPagtosBancoConta: TStringField;
    Q_PPagtosEmissao: TDateTimeField;
    Q_PPagtosMoeda: TStringField;
    Q_PPagtosDataMoeda: TDateTimeField;
    Q_PPagtosMoedaOriginal: TStringField;
    Q_PPagtosDataMoedaOriginal: TDateTimeField;
    Q_PPagtosValorOriginal: TFloatField;
    Q_PPagtosVencimentoPrevisto: TDateTimeField;
    Q_PPagtosHistorico: TStringField;
    Q_PPagtosFlag: TStringField;
    Q_PPagtosSituacao: TStringField;
    Q_PPagtosSaldo: TFloatField;
    Q_PPagtosFilial: TStringField;
    Q_AUXI: TwwQuery;
    Q_AUXIXSALDO: TFloatField;
    Q_AUXIXVALOR: TFloatField;
    Q_PagForn: TwwQuery;
    DS_PAGFORN: TwwDataSource;
    wwDBGrid1IButton: TwwIButton;
    SpeedButton2: TSpeedButton;
    Q_PagFornFOR_CODI: TStringField;
    Q_PagFornFOR_RAZA: TStringField;
    Label6: TLabel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    q_doctos: TwwQuery;
    q_doctosdocumento: TStringField;
    Q_PPagtosRazao: TStringField;
    Q_PPagtosValorPago: TFloatField;
    Label8: TLabel;
    ME_PAG1: TMaskEdit;
    Label10: TLabel;
    ME_PAG2: TMaskEdit;
    Q_VAL_PAG: TwwQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    Label11: TLabel;
    Label19: TLabel;
    Q_AUXI2: TwwQuery;
    Q_AUXI2pago: TFloatField;
    wwDB_DOCTOs: TEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Q_PPagtosFlag_Fluxo: TStringField;
    U_PPagtos: TUpdateSQL;
    ck_Sim: TCheckBox;
    ck_Nao: TCheckBox;
    SBT_SairA: TSpeedButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label20: TLabel;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    Label21: TLabel;
    txForn: TEdit;
    Q_CONTDS: TStringField;
    qrEmpAux: TwwQuery;
    qrEmpAuxachei: TIntegerField;
    Label22: TLabel;
    edtVAlor1: TEdit;
    edtValor2: TEdit;
    Label23: TLabel;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_PESQClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CB_ORDEEnter(Sender: TObject);
    procedure CB_ORDEExit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure ME_REC_VENC1Enter(Sender: TObject);
    procedure ME_REC_VENC1Exit(Sender: TObject);
    procedure ME_REC_VENC2Enter(Sender: TObject);
    procedure ME_REC_VENC2Exit(Sender: TObject);
    procedure DBLC_REC_CGER1Enter(Sender: TObject);
    procedure DBLC_REC_CGER1Exit(Sender: TObject);
    procedure DBLC_REC_CGER2Enter(Sender: TObject);
    procedure DBLC_REC_CGER2Exit(Sender: TObject);
    procedure PAG_SITUEnter(Sender: TObject);
    procedure PAG_SITUExit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDB_DoctosEnter(Sender: TObject);
    procedure wwDB_DoctosExit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Q_PPagtosFlag_FluxoChange(Sender: TField);
    procedure ck_SimClick(Sender: TObject);
    procedure ck_NaoClick(Sender: TObject);
    procedure SBT_SairAClick(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure edtVAlor1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqPagtos: TFPesqPagtos; sPost:Boolean;
  T:TextFile;

implementation
USES CPPMENU, Pagamentos, URelFluxoCaixa;

{$R *.DFM}




procedure TFPesqPagtos.SBT_SAIRClick(Sender: TObject);
begin
        Fil_DataI := '';
        Fil_DataF := '';
        Fil_Conta := '';
        Fil_Stat  := '';
        Fil_SQL   := '';
        close ;
end;

procedure TFPesqPagtos.FormCreate(Sender: TObject);
begin
  Q_PAGFORN.Open;
  Q_CONT.Open;
  Q_FILI.Open;
  Q_Doctos.Open;
  Q_BANC.Open;
  Q_EMP.Open;
  PAG_SITU.itemindex := 1 ;
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
                Q_CONT.Locate('CON_CODI',Fil_Conta,[]);
                DBLC_REC_CGER1.Text := Q_CONTds.AsString;
                DBLC_REC_CGER1.Text := Q_CONTds.AsString;
        End;

        If Fil_Stat <> '' then
                If Fil_Stat = 'A' then
                        Pag_Situ.ItemIndex := 1
                Else
                        Pag_Situ.ItemIndex := 0;

        if Empresa <> '' then
           wwDBLookupCombo2.LookupValue := Empresa;

        SBT_PESQ.Click
  End;
  

end;

procedure TFPesqPagtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_PAGFORN.Close;
  Q_CONT.Close;
  Q_Doctos.Close;
  Q_FILI.Close;
  Q_BANC.Close;
  Q_EMP.close;
  action:=cafree;
end;

procedure TFPesqPagtos.SBT_PESQClick(Sender: TObject);
VAR   DATAFX: STRING;
      Numero:String;
begin
      DATAFX:= '';
      Numero := Q_PPagtosNumero.AsString;
  // Filtro OK

  Q_PPagtos.close ;
  Q_PPagtos.SQL.clear ;
  Q_PPagtos.SQL.Add('SELECT *, (SELECT CASE (SELECT COUNT(*) FROM CPAIPAG WHERE NUMERO = CPAPAGA.NUMERO) ');
  Q_PPAGTOS.SQL.Add('WHEN 0 THEN 0 ELSE (SELECT SUM(VALORPAGO) FROM CPAIPAG WHERE NUMERO = CPAPAGA.NUMERO) ');
  Q_PPAGTOS.SQL.Add('END) as ValorPago From CPAPAGA ') ;

  Q_AUXI.close ;
  Q_AUXI.SQL.clear ;
  Q_AUXI.SQL.add(' SELECT       SUM(SALDO) as XSALDO,      '+
                 '              SUM(ValorLiquido) as XVALOR '+
                 ' FROM CPAPAGA ') ;

  Q_AUXI2.close ;
  Q_AUXI2.SQL.clear ;
  Q_AUXI2.SQL.add(' SELECT       SUM(VALORPAGO) as PAGO      '+
                 ' FROM CPAIPAG WHERE NUMERO IN (SELECT NUMERO FROM CPAPAGA ') ;

  //?>?
  if PAG_SITU.itemindex =  0 then
  begin
     Q_PPagtos.SQL.Add(' where (NUMERO IN (SELECT NUMERO FROM CPAIPAG) or saldo = 0)');
     Q_AUXI.SQL.Add(' where (NUMERO IN (SELECT NUMERO FROM CPAIPAG) or saldo = 0)');
     Q_AUXI2.SQL.Add(' where (NUMERO IN (SELECT NUMERO FROM CPAIPAG) or saldo = 0 )');
  end
  else
  begin
     Q_PPagtos.SQL.Add(' where ROUND(Saldo, 0) > 0 ');
     Q_AUXI.SQL.Add(' where ROUND(Saldo, 0) > 0 ');
     Q_AUXI2.SQL.Add(' where ROUND(Saldo, 0) > 0 ');
  end;

  if ME_PAG1.Text <> '  /  /    ' then
  begin
        Q_PPagtos.SQL.Add('AND NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_PPagtos.SQL.Add('CONVERT(CHAR(10),DATA,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_PAG1.text)) +'''' +')');
        Q_AUXI.SQL.Add('AND NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_AUXI.SQL.Add('CONVERT(CHAR(10),DATA,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_PAG1.text)) +'''' +')');
        Q_AUXI2.SQL.Add('AND NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_AUXI2.SQL.Add('CONVERT(CHAR(10),DATA,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_PAG1.text)) +'''' +')');
  end;

  if ME_PAG2.Text <> '  /  /    '  then
  begin
        Q_PPagtos.SQL.Add('AND NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_PPagtos.SQL.Add('CONVERT(CHAR(10),DATA,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_PAG2.text)) +'''' +')');
        Q_AUXI.SQL.Add('AND NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_AUXI.SQL.Add('CONVERT(CHAR(10),DATA,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_PAG2.text)) +'''' +')');
        Q_AUXI2.SQL.Add('AND NUMERO IN (SELECT NUMERO FROM CPAIPAG WHERE ');
        Q_AUXI2.SQL.Add('CONVERT(CHAR(10),DATA,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_PAG2.text)) +'''' +')');
  end;

  {if wwDBLookupCombo1.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and Razao = ' + '''' + Q_PagFornFOR_RAZA.asstring + '''' ) ;
     Q_AUXI.SQL.Add(' and Razao = ' + '''' + Q_PagFornFOR_RAZA.asstring + '''' ) ;
     Q_AUXI2.SQL.Add(' and Razao = ' + '''' + Q_PagFornFOR_RAZA.asstring + '''' ) ;
  end;  }

    if wwDBLookupCombo1.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and Fornecedor = ' + '''' + wwDBLookupCombo1.LookupValue + '''' ) ;
     Q_AUXI.SQL.Add(' and Fornecedor = ' + '''' + wwDBLookupCombo1.LookupValue + '''' ) ;
     Q_AUXI2.SQL.Add(' and Fornecedor = ' + '''' + wwDBLookupCombo1.LookupValue + '''' ) ;
  end;

  if ME_REC_VENC1.Text <> '  /  /    ' then
  begin
        Q_PPagtos.SQL.Add('AND CONVERT(CHAR(10),VENCIMENTO,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),VENCIMENTO,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10), VENCIMENTO,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
  end;

  if ME_REC_VENC2.Text <> '  /  /    '  then  begin
        Q_PPagtos.SQL.Add('AND CONVERT(CHAR(10),VENCIMENTO,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),VENCIMENTO,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),VENCIMENTO,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
  end;

  if DBLC_REC_CGER1.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and ContaGerencial >= ' + '''' + DBLC_REC_CGER1.LookupValue  + '''');
     Q_AUXI.SQL.Add(' and ContaGerencial >= ' + '''' + DBLC_REC_CGER1.LookupValue  + '''');
     Q_AUXI2.SQL.Add(' and ContaGerencial >= ' + '''' + DBLC_REC_CGER1.LookupValue  + '''');
  end;

  if DBLC_REC_CGER2.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and ContaGerencial <= ' + '''' + DBLC_REC_CGER2.LookupValue  + '''');
     Q_AUXI.SQL.Add(' and ContaGerencial <= ' + '''' + DBLC_REC_CGER2.LookupValue  + '''');
     Q_AUXI2.SQL.Add(' and ContaGerencial <= ' + '''' + DBLC_REC_CGER2.LookupValue  + '''');
  end;

  if edtValor1.text <> ''  then
  begin
        Q_PPagtos.SQL.Add(' AND ValorTitulo >= ' + StringReplace(edtValor1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])  + ' AND ValorTitulo <= ' + StringReplace(edtValor2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])) ;
        Q_AUXI.SQL.Add(' AND ValorTitulo >= ' + StringReplace(edtValor1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])  + ' AND ValorTitulo <= ' + StringReplace(edtValor2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])) ;
        Q_AUXI2.SQL.Add(' AND ValorTitulo >= ' + StringReplace(edtValor1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])  + ' AND ValorTitulo <= ' + StringReplace(edtValor2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase])) ;
  end;




  if wwDBLookupCombo4.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and BancoConta = ' + '''' + wwDBLookupCombo4.LookupValue  + '''' ) ;
     Q_AUXI.SQL.Add(' and BancoConta = ' + '''' + wwDBLookupCombo4.LookupValue  + '''' ) ;
     Q_AUXI2.SQL.Add(' and BancoConta = ' + '''' + wwDBLookupCombo4.LookupValue  + '''' ) ;
  end;

  if wwDB_Doctos.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and Documento = ' + '''' + wwDB_Doctos.text  + '''' ) ;
     Q_AUXI.SQL.Add(' and Documento = ' + '''' + wwDB_Doctos.text  + '''' ) ;
     Q_AUXI2.SQL.Add(' and Documento = ' + '''' + wwDB_Doctos.text  + '''' ) ;
  end;

  if (edit2.text <> '') AND (Edit1.Text = '') then
  begin
     Q_PPagtos.SQL.Add(' and Numero = ' +   Edit2.text ) ;
     Q_AUXI.SQL.Add(' and Numero = ' +   Edit2.text ) ;
     Q_AUXI2.SQL.Add(' and Numero = ' +   Edit2.text ) ;
  end
  else if (edit2.text <> '') AND (Edit1.Text <> '') then
  begin
     Q_PPagtos.SQL.Add(' and Numero >= ' +   Edit2.text ) ;
     Q_AUXI.SQL.Add(' and Numero >= ' +   Edit2.text ) ;
     Q_AUXI2.SQL.Add(' and Numero >= ' +   Edit2.text ) ;
  end     ;

  if edit1.text <> '' then
  begin
     Q_PPagtos.SQL.Add(' and Numero <= ' +   Edit1.text ) ;
     Q_AUXI.SQL.Add(' and Numero <= ' +   Edit1.text ) ;
     Q_AUXI2.SQL.Add(' and Numero <= ' +   Edit1.text ) ;
  end;


  if wwDBLookupCombo2.text  <> '' then
  begin
     Q_PPagtos.SQL.Add(' and filial = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
     Q_AUXI.SQL.Add(' and filial = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
     Q_AUXI2.SQL.Add(' and filial = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
  end;

  if txForn.Text <> '' then
  Begin
     Q_PPagtos.SQL.Add(' and RAZAO LIKE   ' + '''' + '%' + txForn.Text + '%' +  '''' ) ;
     Q_AUXI.SQL.Add(' and RAZAO LIKE   ' + '''' + '%' + txForn.Text + '%' +  ''''  ) ;
     Q_AUXI2.SQL.Add(' and RAZAO LIKE   ' + '''' + '%' + txForn.Text + '%' +  '''' ) ;
  End;


  If not ck_Sim.checked then
  Begin
     Q_PPagtos.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
     Q_AUXI.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
     Q_AUXI2.SQL.Add(' and ((Flag_Fluxo <> ' + '''' + 'S' + '''' + ') Or (Flag_Fluxo is Null))') ;
  End;

  If not ck_Nao.checked then
  Begin
     Q_PPagtos.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
     Q_AUXI.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
     Q_AUXI2.SQL.Add(' and Flag_Fluxo = ' + '''' + 'S' + '''') ;
  End;



  //filtros para o fluxo de caixa, quando sao pesquisadas mais de 2 empresas
   if FMenu.chkFluxoAberto.Checked then begin
       qrEmpAux.Close;
       qrEmpAux.Params[0].AsInteger := FMenu.sqlUsuariosCH.Value;
       qrEmpAux.Open;

       if qrEmpAuxachei.Value > 0 then begin
             Q_PPagtos.SQL.Add(' and filial in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
             Q_AUXI.SQL.Add(' and filial in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
             Q_AUXI2.SQL.Add(' and filial in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
       end;
   end;











  If Fil_SQL <> '' then
  Begin
     Q_PPagtos.SQL.Add(Fil_SQL) ;
     Q_AUXI.SQL.Add(Fil_SQL) ;
     Q_AUXI2.SQL.Add(Fil_SQL) ;
  End;

  case CB_ORDE.itemindex of
        1:Q_PPagtos.Sql.Add(' order by Razao, Vencimento desc');
        2:Q_PPagtos.Sql.Add(' order by Vencimento desc, razao, documento');
        3:Q_PPagtos.Sql.Add(' order by Documento');
        4:Q_PPagtos.Sql.Add(' order by ValorTitulo');
  else
        Q_PPagtos.Sql.Add(' order by Numero') ;
  end;
  Q_PPagtos.open;

  Q_AUXI.open;
  Q_AUXI2.SQL.ADD(')');
  Q_AUXI2.Open;
  label2.caption := formatfloat('###,###,###,##0.00',Q_AUXI.fieldbyname('XSALDO').asfloat) ;
  label5.caption := formatfloat('###,###,###,##0.00',Q_AUXI.fieldbyname('XVALOR').asfloat) ;
  label19.caption := formatfloat('###,###,###,##0.00',Q_AUXI2.fieldbyname('PAGO').asfloat) ;
  Q_AUXI.close ;
  Q_AUXI2.close ;

  If (Numero <> '') and (not Q_PPagtos.Eof) then
        Q_PPagtos.Locate ('Numero',Numero,[]);

  {
  AssignFile(T,'sql.txt');
  ReWrite(T);
  WriteLn(T,Q_PPAGTOS.SQL.TEXT);
  CloseFile(T);
  }


end;

procedure TFPesqPagtos.SpeedButton2Click(Sender: TObject);
begin
   gs_Paga := Q_PPagtosNumero.asstring ;
   Application.CreateForm(TFPagamentos, FPagamentos);
   FPagamentos.ShowModal ;
   FPagamentos.Release ;
   gs_Paga := '' ;
   Q_PPAGTOS.close ;
   Q_PPAGTOS.open;
end;

procedure TFPesqPagtos.wwDBGrid1DblClick(Sender: TObject);
begin
   If wwDBGrid1.SelectedField <> Q_PPagtosFlag_Fluxo then
   Begin
       gs_Paga := Q_PPagtosNumero.asstring ;
       Application.CreateForm(TFPagamentos, FPagamentos);
       FPagamentos.ShowModal ;
       FPagamentos.Release ;
       SBT_Pesq.Click;
   End;
end;

procedure TFPesqPagtos.SpeedButton3Click(Sender: TObject);
begin

   gs_Paga := '0' ;
   Application.CreateForm(TFPagamentos, FPagamentos);
   FPagamentos.ShowModal;
   FPagamentos.Release;

end;

procedure TFPesqPagtos.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFPesqPagtos.CB_ORDEEnter(Sender: TObject);
begin
  (Sender as TComboBox).Color := ClAqua;
end;

procedure TFPesqPagtos.CB_ORDEExit(Sender: TObject);
begin
   (Sender as TComboBox).Color := Clwindow;
end;

procedure TFPesqPagtos.wwDBLookupCombo1Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesqPagtos.wwDBLookupCombo1Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesqPagtos.ME_REC_VENC1Enter(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesqPagtos.ME_REC_VENC1Exit(Sender: TObject);
begin
    (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesqPagtos.ME_REC_VENC2Enter(Sender: TObject);
begin
      (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesqPagtos.ME_REC_VENC2Exit(Sender: TObject);
begin
   (Sender as TMaskEdit).Color := Clwindow ;
end;

procedure TFPesqPagtos.DBLC_REC_CGER1Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua ;
end;

procedure TFPesqPagtos.DBLC_REC_CGER1Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesqPagtos.DBLC_REC_CGER2Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFPesqPagtos.DBLC_REC_CGER2Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesqPagtos.PAG_SITUEnter(Sender: TObject);
begin
  (Sender as TComboBOX).Color := Claqua ;
end;

procedure TFPesqPagtos.PAG_SITUExit(Sender: TObject);
begin
  (Sender as TComboBOX).Color := Clwindow ;
end;

procedure TFPesqPagtos.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFPesqPagtos.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesqPagtos.wwDB_DoctosEnter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Claqua  ;
end;

procedure TFPesqPagtos.wwDB_DoctosExit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFPesqPagtos.Edit2Enter(Sender: TObject);
begin
   (Sender as TEDIT).Color := Claqua  ;
end;

procedure TFPesqPagtos.Edit2Exit(Sender: TObject);
begin
   (Sender as TEDIT).Color := Clwindow  ;
end;

procedure TFPesqPagtos.Edit1Enter(Sender: TObject);
begin
   (Sender as TEDIT).Color := Claqua  ;
end;

procedure TFPesqPagtos.Edit1Exit(Sender: TObject);
begin
   (Sender as TEDIT).Color := Clwindow   ;
end;

procedure TFPesqPagtos.SpeedButton4Click(Sender: TObject);
var Numero:String;
begin
        If not Q_PPagtos.Eof then
        Begin

                if MessageDlg('Confirma todos os t�tulos para o Fluxo de Caixa?',
                    mtInformation, [mbYes, mbNo], 0) = mrYes then
                Begin

                        Numero := Q_PPagtosNumero.AsString;
                        Q_PPagtos.First;

                        sPost := False;

                        While not Q_PPagtos.Eof Do
                        Begin
                                If Q_PPagtos.State <> dsEdit then
                                        Q_PPagtos.Edit;

                                Q_PPagtosFlag_Fluxo.AsString := 'S';
                                Q_PPagtos.Next;
                        End;

                        sPost := True;

                        FMenu.DATABASE1.ApplyUpdates([Q_PPagtos]);

                        SBT_Pesq.Click;
                        
                        If Numero <> '' then
                                Q_PPagtos.Locate('Numero', Numero, []);
                End;
        End;
end;


procedure TFPesqPagtos.SpeedButton5Click(Sender: TObject);
var Numero:String;
begin
        If not Q_PPagtos.Eof then
        Begin

                if MessageDlg('Confirma a sa�da de todos os t�tulos do Fluxo de Caixa?',
                    mtInformation, [mbYes, mbNo], 0) = mrYes then
                Begin

                        Numero := Q_PPagtosNumero.AsString;
                        Q_PPagtos.First;

                        sPost := False;

                        While not Q_PPagtos.Eof Do
                        Begin
                                If Q_PPagtos.State <> dsEdit then
                                        Q_PPagtos.Edit;

                                Q_PPagtosFlag_Fluxo.AsString := 'N';
                                Q_PPagtos.Next;
                        End;

                        sPost := True;

                        FMenu.DATABASE1.ApplyUpdates([Q_PPagtos]);

                        SBT_Pesq.Click;

                        If Numero <> '' then
                                Q_PPagtos.Locate('Numero', Numero, []);
                End;
        End;
end;

procedure TFPesqPagtos.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
        If Q_PPagtosFlag_Fluxo.AsString = 'S' then
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

procedure TFPesqPagtos.Q_PPagtosFlag_FluxoChange(Sender: TField);
begin
        If sPost then
                FMenu.DATABASE1.ApplyUpdates([Q_PPagtos]);
end;

procedure TFPesqPagtos.ck_SimClick(Sender: TObject);
begin
        SBT_PESQ.Click;
end;

procedure TFPesqPagtos.ck_NaoClick(Sender: TObject);
begin
        SBT_PESQ.Click;
end;

procedure TFPesqPagtos.SBT_SairAClick(Sender: TObject);
begin
        Var_Atual := True;
        Fil_DataI := '';
        Fil_DataF := '';
        Fil_Conta := '';
        Fil_Stat  := '';
        Fil_SQL   := '';
        
        Close;
end;

procedure TFPesqPagtos.wwDBLookupCombo2Enter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFPesqPagtos.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFPesqPagtos.edtVAlor1Change(Sender: TObject);
begin
   edtValor2.Text := edtVAlor1.Text;
end;

end.


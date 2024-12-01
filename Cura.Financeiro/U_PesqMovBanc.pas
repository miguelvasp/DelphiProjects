unit U_PesqMovBanc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, Mask, Buttons, ExtCtrls, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFPesqMovBanc = class(TForm)
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    ME_REC_VENC1: TMaskEdit;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    DS_BANC: TwwDataSource;
    Q_MOVBANC: TwwQuery;
    DS_movbanc: TwwDataSource;
    Q_MOVBANCMOV_BANC: TStringField;
    Q_MOVBANCMOV_DATA: TDateTimeField;
    Q_MOVBANCMOV_SINAL: TStringField;
    Q_MOVBANCMOV_LANC: TIntegerField;
    Q_MOVBANCMOV_CODI: TIntegerField;
    Q_MOVBANCMOV_DESC: TStringField;
    Q_MOVBANCMOV_VALOR: TFloatField;
    Q_MOVBANCMOV_CONT: TStringField;
    Q_MOVBANCMOV_FILI: TStringField;
    Q_MOVBANCMOV_ORIG: TStringField;
    Q_MOVBANCMOV_SEQU: TIntegerField;
    Edit1: TEdit;
    Q_MOVBANCCON_CODI: TStringField;
    Q_MOVBANCCON_DESC: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_MOVBANCFIL_CODI: TStringField;
    Q_MOVBANCFIL_DESC: TStringField;
    DBCB_DIF_SINAL: TwwDBComboBox;
    SBT_SELE: TSpeedButton;
    wwDBGrid1IButton: TwwIButton;
    Q_MOVBANCMOV_HIST: TStringField;
    Label15: TLabel;
    ME_REC_VENC2: TMaskEdit;
    Q_MOVBANCMOV_DCTO: TStringField;
    SpeedButton3: TSpeedButton;
    Q_CONT: TwwQuery;
    Q_CONTDS: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_CONTCON_CODI: TStringField;
    Label16: TLabel;
    DBLC_REC_CGER1: TwwDBLookupCombo;
    Label17: TLabel;
    DBLC_REC_CGER2: TwwDBLookupCombo;
    Label1: TLabel;
    cboEmpresa: TwwDBLookupCombo;
    qrEmpresa: TwwQuery;
    qrEmpresaFIL_DESC: TStringField;
    qrEmpresaFIL_CODI: TStringField;
    Q_MOVBANCCONCILIADO: TStringField;
    Label2: TLabel;
    qrEmpAux: TwwQuery;
    qrEmpAuxachei: TIntegerField;
    qrDebitos: TwwQuery;
    qrCreditos: TwwQuery;
    Panel2: TPanel;
    lbTotais: TLabel;
    procedure SBT_PESQClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_SELEClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqMovBanc: TFPesqMovBanc;
  GS_MBAN :  string   ;
implementation
uses CPPMENU, MovBancaria, URelFluxoCaixa ;
{$R *.DFM}



procedure TFPesqMovBanc.SBT_PESQClick(Sender: TObject);
VAR DATA2 : TDateTime;
begin


  Q_MOVBANC.close ;
  Q_MOVBANC.SQL.clear ;
  Q_MOVBANC.SQL.add('Select A.*,B.CON_CODI,B.CON_DESC,C.FIL_CODI,C.FIL_DESC from  CPAMOVI A,CPACONT B,CPAFILI C ')  ;
  Q_MOVBANC.SQL.add('where A.MOV_CONT = B.CON_CODI and A.MOV_FILI = C.FIL_CODI ') ;

  //querys com totais
  qrDebitos.close ;
  qrDebitos.SQL.clear ;
  qrDebitos.SQL.add('Select SUM(A.MOV_VALOR) AS DEBITOS from  CPAMOVI A,CPACONT B,CPAFILI C ')  ;
  qrDebitos.SQL.add('where A.MOV_CONT = B.CON_CODI and A.MOV_FILI = C.FIL_CODI AND A.MOV_SINAL = ''-'' ') ;

  qrCreditos.close ;
  qrCreditos.SQL.clear ;
  qrCreditos.SQL.add('Select SUM(A.MOV_VALOR) AS CREDITOS from  CPAMOVI A,CPACONT B,CPAFILI C ')  ;
  qrCreditos.SQL.add('where A.MOV_CONT = B.CON_CODI and A.MOV_FILI = C.FIL_CODI AND A.MOV_SINAL = ''+'' ') ;




  if cboEmpresa.Text <> '' then  BEGIN
     Q_MOVBANC.SQL.Add(' AND MOV_FILI = ' + QuotedStr(cboEmpresa.LookupValue));
     qrDebitos.SQL.Add(' AND MOV_FILI = ' + QuotedStr(cboEmpresa.LookupValue));
     qrCreditos.SQL.Add(' AND MOV_FILI = ' + QuotedStr(cboEmpresa.LookupValue));
  end;

  //filtros para o fluxo de caixa, quando sao pesquisadas mais de 2 empresas
   if FMenu.chkFluxoAberto.Checked then begin
       qrEmpAux.Close;
       qrEmpAux.Params[0].AsInteger := FMenu.sqlUsuariosCH.Value;
       qrEmpAux.Open;

       if qrEmpAuxachei.Value > 0 then begin
          Q_MOVBANC.SQL.Add(' AND MOV_FILI in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
          qrDebitos.SQL.Add(' AND MOV_FILI in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
          qrCreditos.SQL.Add(' AND MOV_FILI in (SELECT FIL_CODI FROM EMP_TEMP WHERE SEL = ''*'' AND USUARIO = '  + FMenu.sqlUsuariosCH.AsString + ')');
       end;
   end;



  if Edit1.text  <> '' then begin
     Q_MOVBANC.SQL.Add(' and A.MOV_CODI  = ' +  Edit1.text  ) ;
     qrDebitos.SQL.Add(' and A.MOV_CODI  = ' +  Edit1.text  ) ;
     qrCreditos.SQL.Add(' and A.MOV_CODI  = ' +  Edit1.text  ) ;
  end;

  if wwDBLookupCombo1.lookupvalue  <> '' then  begin
     Q_MOVBANC.SQL.Add(' and A.MOV_BANC  = ' + '''' + wwDBLookupCombo1.LookupValue  + '''');
     qrDebitos.SQL.Add(' and A.MOV_BANC  = ' + '''' + wwDBLookupCombo1.LookupValue  + '''');
     qrCreditos.SQL.Add(' and A.MOV_BANC  = ' + '''' + wwDBLookupCombo1.LookupValue  + '''');
  end;


  if ME_REC_VENC1.text <> '  /  /    ' then   begin
     Q_MOVBANC.SQL.ADD( ' and A.MOV_DATA >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(ME_REC_VENC1.text) ) + '''' );
     qrDebitos.SQL.ADD( ' and A.MOV_DATA >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(ME_REC_VENC1.text) ) + '''' );
     qrCreditos.SQL.ADD( ' and A.MOV_DATA >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(ME_REC_VENC1.text) ) + '''' );
  end;



  if ME_REC_VENC2.text <> '  /  /    ' then
  begin

  
    //ADICIONADA VARIAVEL DATA2 PARA ADD 1 DIA PARA A CONSULTA ****************MIGUEL****************


     DATA2 := strtodate(ME_REC_VENC2.text);
     Q_MOVBANC.SQL.ADD( ' and A.MOV_DATA < ' + '''' + FormatDateTime('MM/DD/YYYY', DATA2 + 1 ) + '''' );
     qrDebitos.SQL.ADD( ' and A.MOV_DATA < ' + '''' + FormatDateTime('MM/DD/YYYY', DATA2 + 1 ) + '''' );
     qrCreditos.SQL.ADD( ' and A.MOV_DATA < ' + '''' + FormatDateTime('MM/DD/YYYY', DATA2 + 1 ) + '''' );



  end;

  IF Fil_SQL = '' then
  begin
      IF DBLC_REC_CGER1.Text <> '' then  begin
         Q_MOVBANC.SQL.ADD( ' and A.MOV_CONT >= ' + QuotedStr(DBLC_REC_CGER1.LookupValue));
         qrDebitos.SQL.ADD( ' and A.MOV_CONT >= ' + QuotedStr(DBLC_REC_CGER1.LookupValue));
         qrCreditos.SQL.ADD( ' and A.MOV_CONT >= ' + QuotedStr(DBLC_REC_CGER1.LookupValue));
      end;

      IF DBLC_REC_CGER2.Text <> '' then begin
         Q_MOVBANC.SQL.ADD( ' and A.MOV_CONT <= ' + QuotedStr(DBLC_REC_CGER2.LookupValue));
         qrDebitos.SQL.ADD( ' and A.MOV_CONT <= ' + QuotedStr(DBLC_REC_CGER2.LookupValue));
         qrCreditos.SQL.ADD( ' and A.MOV_CONT <= ' + QuotedStr(DBLC_REC_CGER2.LookupValue));
      end;
  end
  else
  begin
     Q_MOVBANC.SQL.ADD(Fil_SQL);
  end;



  Q_MOVBANC.SQL.add(' order by A.MOV_BANC, A.MOV_DATA DESC, A.MOV_DCTO  ') ;
  Q_MOVBANC.open ;
  qrCreditos.Open;
  qrDebitos.OPEN;

  
    if qrCreditos.FieldByName('CREDITOS').AsString = '' then
          lbTotais.Caption := 'Total de Créditos: R$ 0,00    '
    else
          lbTotais.Caption := 'Total de Créditos: R$ ' + FormatFloat('###,###,##0.00', qrCreditos.FIELDBYNAME('CREDITOS').AsFloat);

        if qrDebitos.FieldByName('DEBITOS').AsString = '' then
          lbTotais.Caption := lbTotais.Caption +  '    Total de Débitos:  R$ 0,00'
    else
          lbTotais.Caption := lbTotais.Caption +  '    Total de Débitos:  R$ ' + FormatFloat('###,###,##0.00', qrDebitos.FIELDBYNAME('DEBITOS').AsFloat);

end;

procedure TFPesqMovBanc.SpeedButton1Click(Sender: TObject);
begin
   close ; 
end;

procedure TFPesqMovBanc.FormCreate(Sender: TObject);
begin
   Q_BANC.open ;
   Q_CONT.Open;
   qrEmpresa.Open;

        //PREENCHE A CONTA GERENCIAL
        If Fil_Conta <> '' then
        Begin
                DBLC_REC_CGER1.LookupValue := Fil_Conta;
                DBLC_REC_CGER2.LookupValue := Fil_Conta2;
                Q_CONT.Locate('CON_CODI',Fil_Conta,[]);
                DBLC_REC_CGER1.Text := Q_CONTds.AsString;
                DBLC_REC_CGER1.Text := Q_CONTds.AsString;
        End;

        if Empresa <> '' then
                cboEmpresa.LookupValue := Empresa;

        IF Fil_DataI <> '' then
        begin
            ME_REC_VENC1.Text := Fil_DataI;
            ME_REC_VENC2.Text := Fil_DataF;
            SBT_PESQ.Click;
        end;

end;

procedure TFPesqMovBanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Fil_SQL := '';
Fil_Conta  := '';
Fil_Conta2  := '';
Fil_DataI   := '';
Fil_DataF   := '';


   Q_MOVBANC.close ;
   Q_BANC.close ;
   action := cafree ;  
end;

procedure TFPesqMovBanc.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;



procedure TFPesqMovBanc.SBT_SELEClick(Sender: TObject);
begin
  IF Q_MOVBANCMOV_CODI.AsString <> '' then
  begin
      gs_MBAN  := Q_MOVBANCMOV_CODI.AsString ;
      FMovBanc := TFMovBanc.Create(Self);
      FMovBanc.ShowModal;
      FMovBanc.Release;
      SBT_PESQ.Click;
  end;
end;

procedure TFPesqMovBanc.wwDBGrid1DblClick(Sender: TObject);
begin
  IF Q_MOVBANCMOV_CODI.AsString <> '' then
  begin
      gs_MBAN  := Q_MOVBANCMOV_CODI.AsString ;
      FMovBanc := TFMovBanc.Create(Self);
      FMovBanc.ShowModal;
      FMovBanc.Release;
      SBT_PESQ.Click;
  end;

end;



procedure TFPesqMovBanc.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFPesqMovBanc.SpeedButton3Click(Sender: TObject);
begin
  GS_MBAN := '0';
  FMovBanc := TFMovBanc.Create(Self);
  FMovBanc.ShowModal;
  FMovBanc.Release;
  SBT_PESQ.Click;
end;

procedure TFPesqMovBanc.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Q_MOVBANCCONCILIADO.Value = 'S' then
   begin
       ABrush.Color := $003399FF;
   end;
end;

end.

unit Uemitenf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, StdCtrls, Wwdbigrd, Grids, Wwdbgrid,
  Mask, wwdblook, Buttons, ExtCtrls, Wwtable;

type
  TFEMITENF = class(TForm)
    Panel3: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Memo2: TMemo;
    DBLC_REC_RAZA: TwwDBLookupCombo;
    DBLC_REC_CGER1: TwwDBLookupCombo;
    ME_REC_VENC1: TMaskEdit;
    ME_REC_VENC2: TMaskEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Panel1: TPanel;
    DBG_CLIE: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    GroupBox1: TGroupBox;
    ck_Sim: TCheckBox;
    ck_Nao: TCheckBox;
    DS_RECE: TwwDataSource;
    Q_BANC: TwwQuery;
    Q_BANCLCO_BANC: TStringField;
    Q_BANCLCO_CODI: TStringField;
    DS_FILI: TwwDataSource;
    Q_FILI: TwwQuery;
    Q_FILIFIL_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    Q_RECE: TwwQuery;
    Q_RECEREC_CODI: TIntegerField;
    Q_RECEREC_RAZA: TStringField;
    Q_RECEFLAG_FLUXO: TStringField;
    Q_RECEREC_NFIS: TStringField;
    Q_RECEREC_VENC: TDateTimeField;
    Q_RECEREC_VLIQ: TFloatField;
    Q_RECEValorReceber: TFloatField;
    Q_RECEREC_SALD: TFloatField;
    Q_RECEREC_HIST: TStringField;
    Q_RECEREC_BANC: TStringField;
    DS_BANC: TwwDataSource;
    U_REC: TUpdateSQL;
    Q_AUXI2: TwwQuery;
    Q_AUXI: TwwQuery;
    Q_VAL_REC: TwwQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    Q_RECCLI: TwwQuery;
    Q_RECCLICLI_RAZA: TStringField;
    Q_RECCLICLI_CODI: TAutoIncField;
    q_NumBanc: TwwQuery;
    q_NumBancREC_nban: TStringField;
    Q_EMP: TwwQuery;
    Q_EMPFIL_DESC: TStringField;
    Q_EMPFIL_CODI: TStringField;
    T_CONT: TwwQuery;
    T_CONTDS: TStringField;
    T_CONTCON_DESC: TStringField;
    T_CONTCON_CODI: TStringField;
    T_CONTCON_ENSA: TStringField;
    T_CONTCON_OPER: TStringField;
    T_CONTCON_FLOA: TFloatField;
    T_CONTCON_FLUX: TStringField;
    T_CONTCON_CTCO: TStringField;
    Label12: TLabel;
    CB_ORDE: TComboBox;
    Label7: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Q_RECEEMITENF: TStringField;
    bt_Nem: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Q_RECErec_valo: TFloatField;
    Q_RECErec_desc: TFloatField;
    SpeedButton2: TSpeedButton;
    Q_aux: TwwQuery;
    CheckBox1: TCheckBox;
    Q_aux1: TwwQuery;
    Q_aux2: TwwQuery;
    Q_AUX3: TwwQuery;
    Q_RECEEMITIDASN: TStringField;
    Q_PARA: TwwQuery;
    Q_PARAPAR_CHAV: TStringField;
    Q_PARAPAR_MOED: TStringField;
    Q_PARAPAR_SALD: TFloatField;
    Q_PARAPAR_DATA: TDateTimeField;
    Q_PARACtaGerencialOrig: TStringField;
    Q_PARACtaGerencialDest: TStringField;
    Q_PARAFilialOrigem: TStringField;
    Q_PARAFilialDestino: TStringField;
    Q_PARACta_GerencialPaga: TStringField;
    Q_PARAFilialPaga: TStringField;
    Q_PARACta_GerencialRece: TStringField;
    Q_PARAFilialRece: TStringField;
    Q_PARAPAR_MOVI: TStringField;
    Q_PARAPAR_DOLAR: TStringField;
    Q_PARAPAR_Acrescimo: TStringField;
    Q_PARAEmp_Nome: TStringField;
    Q_PARAPar_impnf: TStringField;
    T_ACEN: TwwQuery;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure DBG_CLIEDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_NemClick(Sender: TObject);
    procedure DBG_CLIECalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Q_RECEEMITENFChange(Sender: TField);
    procedure ck_SimClick(Sender: TObject);
    procedure ck_NaoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    function MUDALETR(LETRA: string): string;    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEMITENF: TFEMITENF;
  controle : boolean;
  posic : integer;
  sPost : Boolean;
  T : TextFile;

implementation
uses cppmenu, Unt_senha, CPPRECE,Fextenso;

{$R *.DFM}

procedure TFEMITENF.SBT_PESQClick(Sender: TObject);
VAR   DATAFX: STRING;
      Rec_Codi :String;
begin
IF CHECKBOX1.CHECKED = TRUE THEN BEGIN
   SPEEDBUTTON1.ENABLED := FALSE;
   BT_NEM.ENABLED := FALSE;
   SPEEDBUTTON2.ENABLED := FALSE;
END
ELSE BEGIN
   SPEEDBUTTON1.ENABLED := TRUE;
   BT_NEM.ENABLED := TRUE;
   SPEEDBUTTON2.ENABLED := TRUE;
END;

if wwdblookupcombo2.text = '' then begin
   showmessage('Favor informar " Empresa " para execução da pesquisa !');
end
else begin
  DATAFX:= '';
  Rec_Codi := Q_RECEREC_CODI.AsString;

  Q_RECE.close;
  Q_RECE.SQL.clear;
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
                 '              FLAG_FLUXO, ' +
                 '              emitenf, ' +
                 '              emitidasn, ' +
                 '              rec_valo,'+
                 '              rec_desc, ' +
                 '              rec_vliq ' +
                 ' FROM CPARECE (NOLOCK)  ');

  Q_AUXI.close ;
  Q_AUXI.SQL.clear ;
  Q_AUXI.SQL.add('SELECT SUM(REC_VLIQ) AS XVALOR, SUM(REC_SALD) AS XSALDO '+
                'FROM CPARECE');

  Q_AUXI2.SQL.Clear;
  Q_AUXI2.SQL.Add('SELECT SUM(IRE_VTOT) AS RECEBIDO FROM CPAIREC WHERE IRE_CODI IN ');
  Q_AUXI2.SQL.Add('(SELECT REC_CODI FROM CPARECE ');

  Q_AUXI.SQL.Add(' Where REC_codi > -1 ');
  Q_AUXI2.SQL.Add(' Where REC_codi > -1 ');
  Q_RECE.SQL.Add(' Where REC_codi > -1 ');

  if DBLC_REC_RAZA.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_RAZA = ' + '''' + DBLC_REC_RAZA.text + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_RAZA = ' + '''' + DBLC_REC_RAZA.text + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_RAZA = ' + '''' + DBLC_REC_RAZA.text + '''' ) ;
  end;



  if ME_REC_VENC1.Text <>  '  /  /    ' then
  begin
        Q_RECE.SQL.Add(' AND CONVERT(CHAR(10),REC_VENC,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) >= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC1.text)) +'''');
  end;

  if ME_REC_VENC2.Text <>  '  /  /    ' then
  begin
        Q_RECE.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
        Q_AUXI.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
        Q_AUXI2.SQL.Add('AND CONVERT(CHAR(10),REC_VENC,112) <= ' +'''' +formatdatetime('YYYYMMDD',strtodate(ME_REC_VENC2.text)) +'''');
  end;

  if DBLC_REC_CGER1.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_CGER >= ' + '''' + DBLC_REC_CGER1.LookupValue + '''');
        Q_AUXI.SQL.Add(' AND REC_CGER >= ' + '''' + DBLC_REC_CGER1.LookupValue + '''');
        Q_AUXI2.SQL.Add(' AND REC_CGER >= ' + '''' + DBLC_REC_CGER1.LookupValue + '''');
  end;

   if wwDBLookupCombo2.text <> '' then
  begin
        Q_RECE.SQL.Add(' AND REC_fili = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
        Q_AUXI.SQL.Add(' AND REC_fili = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
        Q_AUXI2.SQL.Add(' AND REC_fili = ' + '''' + wwDBLookupCombo2.LookupValue + '''' ) ;
  end;


  If not ck_sim.checked then
  Begin
     Q_RECE.SQL.Add(' and ((emitenf <> ' + '''' + 'S' + '''' + ') Or (emitenf is Null))') ;
     Q_AUXI.SQL.Add(' and ((emitenf <> ' + '''' + 'S' + '''' + ') Or (emitenf is Null))') ;
     Q_AUXI2.SQL.Add(' and ((emitenf <> ' + '''' + 'S' + '''' + ') Or (emitenf is Null))') ;
  End;

  If not ck_nao.checked then
  Begin
     Q_RECE.SQL.Add(' and emitenf = ' + '''' + 'S' + '''') ;
     Q_AUXI.SQL.Add(' and emitenf = ' + '''' + 'S' + '''') ;
     Q_AUXI2.SQL.Add(' and emitenf = ' + '''' + 'S' + '''') ;
  End;

  If checkbox1.checked = true then
  Begin
     Q_RECE.SQL.Add(' and emitidasn = ' + '''' + 'S' + '''' );
     Q_AUXI.SQL.Add(' and emitidasn = ' + '''' + 'S' + '''' );
     Q_AUXI2.SQL.Add(' and emitidasn = ' + '''' + 'S' + '''' );
  End
  else begin
     Q_RECE.SQL.Add(' and ((emitidasn <> ' + '''' + 'S' + '''' + ') Or (emitidasn is Null))');
     Q_AUXI.SQL.Add(' and ((emitidasn <> ' + '''' + 'S' + '''' + ') Or (emitidasn is Null))');
     Q_AUXI2.SQL.Add(' and ((emitidasn <> ' + '''' + 'S' + '''' + ') Or (emitidasn is Null))');
  end;

{  If Fil_SQL <> '' then
  Begin
     Q_RECE.SQL.Add(Fil_SQL) ;
     Q_AUXI.SQL.Add(Fil_SQL) ;
     Q_AUXI2.SQL.Add(Fil_SQL) ;
  End;}

  case CB_ORDE.itemindex of
        1:Q_RECE.Sql.Add(' order by REC_RAZA,REC_VENC');
        2:Q_RECE.Sql.Add(' order by REC_VENC');
        3:Q_RECE.Sql.Add(' order by REC_NFIS');
        else
          Q_RECE.Sql.Add(' order by REC_CODI');
  end;

  Q_RECE.Open ;
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
end;

procedure TFEMITENF.FormCreate(Sender: TObject);
begin
  Q_BANC.Open ;
  Q_NumBanc.Open ;
  Q_FILI.Open ;
  Q_RECE.Open;
  T_CONT.Open ;
  Q_RECCLI.Open ;
  Q_EMP.Open;
  CB_ORDE.itemindex := 2 ;
  sPost := True;

  {If Fil_DataI <> '' then
  Begin
        SBT_SairA.Visible := True;

        ME_REC_VENC1.Text := Fil_DataI;
        If Fil_DataF <> '' then
                ME_REC_VENC2.Text := Fil_DataF;

        If Fil_Conta <> '' then
        Begin
                DBLC_REC_CGER1.LookupValue := Fil_Conta;
                DBLC_REC_CGER2.LookupValue := Fil_Conta;
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

        SBT_PESQ.Click
  End;}

end;

procedure TFEMITENF.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFEMITENF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;

end;

procedure TFEMITENF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_NumBanc.close ;
{  controle := false;}
  Q_BANC.close;
  Q_FILI.close;
  T_CONT.Close;
  Q_RECCLI.close ;
  Q_EMP.Close;
  Action := caFree;
end;

procedure TFEMITENF.SBT_SAIRClick(Sender: TObject);
begin
  CLOSE;
{  Fil_DataI := '';
  Fil_DataF := '';
  Fil_Conta := '';
  Fil_Stat  := '';
  Fil_SQL   := '';}

end;

procedure TFEMITENF.DBG_CLIEDblClick(Sender: TObject);
begin
   If DBG_CLIE.SelectedField <> Q_RECEemitenf then
   Begin
           gs_rece := Q_RECEREC_CODI.asstring ;
           controle := true;
           Application.CreateForm(TFRecebimentos, FRecebimentos);
           FRecebimentos.ShowModal ;
           FRecebimentos.Release ;

           SBT_PESQ.Click;

           Q_RECE.Locate('REC_CODI',posic,[]);
   end;
end;

procedure TFEMITENF.SpeedButton1Click(Sender: TObject);
var REC_CODI:String;
begin
        If not Q_RECE.Eof then
        Begin

                if MessageDlg('Confirma marcação para emissão de todas as notas ?',
                    mtInformation, [mbYes, mbNo], 0) = mrYes then
                Begin

                        REC_CODI := Q_RECEREC_CODI.AsString;
                        Q_RECE.First;
                        sPost := False;

                        While not Q_RECE.Eof Do
                        Begin
                                If Q_RECE.State <> dsEdit then
                                        Q_RECE.Edit;

                                Q_RECEemitenf.AsString := 'S';
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

procedure TFEMITENF.bt_NemClick(Sender: TObject);
var REC_CODI:String;
begin
        If not Q_RECE.Eof then
        Begin

                if MessageDlg('Confirma marcação para não emissão das notas fiscais ?',
                    mtInformation, [mbYes, mbNo], 0) = mrYes then
                Begin

                        REC_CODI := Q_RECEREC_CODI.AsString;
                        Q_RECE.First;

                        sPost := False;

                        While not Q_RECE.Eof Do
                        Begin
                                If Q_RECE.State <> dsEdit then
                                        Q_RECE.Edit;

                                Q_RECEemitenf.AsString := 'N';
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

procedure TFEMITENF.DBG_CLIECalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
        If Q_RECEEMITIDASN.AsString = 'S' then Begin
           Abrush.Color := CLWHITE
        End
        Else Begin
            If Q_RECEEMITENF.AsString = 'S' then Begin
               Abrush.Color := clyellow;
            End
            Else Begin
                 Abrush.Color := clinfobk;
            End;
        END;

        If Highlight then
                AFont.Color := clBlue
        else
                Afont.Color := clBlack

end;

procedure TFEMITENF.Q_RECEEMITENFChange(Sender: TField);
begin
        If sPost then
                FMenu.DATABASE1.ApplyUpdates([Q_RECE]);
end;

procedure TFEMITENF.ck_SimClick(Sender: TObject);
begin
        sbt_pesqclick(self)
end;

procedure TFEMITENF.ck_NaoClick(Sender: TObject);
begin
        sbt_pesqclick(self)
end;

procedure TFEMITENF.SpeedButton2Click(Sender: TObject);
Const Brancos = '                                                                                                                                                              ' ;
const RESTVAL = '********************************************************************************************************************************************';
  var
  sql,sql1,SQL2,SQL3,caminho: string;
  myfile  : TextFile;
  maxi,rece :integer;
  strextenso:string[146];
  Strstring :string;
begin
  {T_ACEN.Open;}
  q_para.open;
  caminho := q_parapar_impnf.asstring;
  sql := '';
  sql := 'select emp.fil_natopera nat, '+
         '       emp.fil_descserv serv,'+
         '       max(emp.fil_ultimanf) maxi,'+
         '       rec.rec_valo valor,'+
         '       rec.rec_venc venci,'+
         '       rec.rec_codi,'+
         '       rec.rec_hist hist,'+
         '       rec.emitenf, '+
         '       rec.emitidasn, '+
         '       cli.cli_raza raza,'+
         '       cli.cli_fend ende,'+
         '       cli.cli_fmun mun,'+
         '       cli.cli_cgc cgc,'+
         '       cli.cli_fest uf, '+
         '       cli.cli_pess '+
         'from cpafili emp,'+
         'cparece rec,'+
         'cpaclie cli '+
         'where rec.rec_clie = cli.cli_codi '+
         '      and emp.fil_codi = '+wwdblookupcombo2.LookupValue+
         '      and rec.emitenf = ''S'' '+
         '      AND REC.EMITIDASN IS NULL '+
         '      group by emp.fil_natopera,'+
         '         emp.fil_descserv,'+
         '         rec.rec_valo,'+
         '         rec.rec_venc,'+
         '         rec.rec_hist,'+
         '         rec.emitenf, '+
         '         rec.emitidasn, '+
         '         rec.rec_codi,'+
         '         cli.cli_raza,'+
         '         cli.cli_fend,'+
         '         cli.cli_fmun,'+
         '         cli.cli_cgc,'+
         '         cli.cli_fest, '+
         '         cli.cli_pess ';
  q_aux.close;
  q_aux.sql.clear;
  q_aux.sql.add(sql);
  q_aux.open;


  maxi := q_aux.fieldbyname('maxi').value + 1;
  while not Q_aux.Eof = true do begin
        rece := q_aux.fieldbyname('rec_codi').value;
        ///Assignfile(F,'LPT1');
        ///Assignfile(F,'\\elisangela\EpsonFX-2180');
//        Assignfile(myfile,'NFiscal.txt');
        AssignFile(myFile,caminho);
        rewrite(myfile);
        WriteLn(myFile);
        WriteLn(myFile,copy(Brancos,1,68) + inttostr(maxi));
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile,copy(Brancos,1,56) + q_aux.fieldbyname('nat').asstring);
        WriteLn(myFile,copy(Brancos,1,56) + q_aux.fieldbyname('serv').asstring);
        WriteLn(myFile,copy(Brancos,1,56) + formatdatetime('DD', Q_AUX.fieldbyname('venci').asdatetime) +
               '   '+ formatdatetime('MM', Q_AUX.fieldbyname('venci').asdatetime) +
               '    '+ formatdatetime('YYYY', Q_AUX.fieldbyname('venci').asdatetime));
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile,copy(Brancos,1,20) + formatfloat('###,###,##0.00',q_aux.fieldbyname('valor').asfloat) +
               '         '+inttostr(maxi)+'          '+datetostr(date));
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);

        WriteLn(myFile,copy(Brancos,1,20) + q_aux.fieldbyname('raza').asstring);
        WriteLn(myFile,copy(Brancos,1,20) + q_aux.fieldbyname('ende').asstring);
        WriteLn(myFile,copy(Brancos,1,20) + q_aux.fieldbyname('mun').asstring+
               '                          '+ q_aux.fieldbyname('uf').asstring);

{        if q_aux.fieldbyname('cli_pess').asstring = 'J' then begin
           q_aux.fieldbyname('cgc').editmask := '##.###.###/####-##';
        end
        else begin
           q_aux.fieldbyname('cgc').editmask := '###.###.###-##';
        end;               }
        WriteLn(myFile,copy(Brancos,1,20) + q_aux.fieldbyname('cgc').asstring);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);

        StrExtenso := NumeroParaExtenso(Q_AUX.fieldbyname('valor').asfloat) ;
        StrExtenso := trim(Strextenso) + RESTVAL;
        StrExtenso := uppercase(StrExtenso);
        StrString := copy(Brancos,1,15) + copy(StrExtenso,1,83);

        WriteLn(myFile,strstring);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile,copy(Brancos,1,15) + {MUDALETR}(q_aux.fieldbyname('hist').asstring));
        WriteLn(myFile,copy(Brancos,1,65) + formatfloat('###,###,##0.00',q_aux.fieldbyname('valor').asfloat));
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        sql1 := '';
        sql1 := 'select a.dre_valo valor, '+
                '       a.dre_hist historico, '+
                '       b.dif_aliq aliquota '+
                'from cpadrec a, cpadife b '+
                'where a.dre_rece = '+inttostr(rece)+
                '      and a.dre_dife = b.dif_codi ';
        q_aux1.close;
        q_aux1.sql.clear;
        q_aux1.sql.add(sql1);
        q_aux1.open;
        q_aux1.first;

        while not q_aux1.eof do begin
                  Writeln(myFile,copy(Brancos,1,20) + q_aux1.fieldbyname('historico').asstring +
                           '  '+ formatfloat('###,###,##0.00',q_aux1.fieldbyname('aliquota').value)+
                           '       '+formatfloat('###,###,##0.00',q_aux1.fieldbyname('valor').asfloat));
                  q_aux1.Next;
        end;
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile);
        WriteLn(myFile,copy(Brancos,1,65) + formatfloat('###,###,##0.00',q_aux.fieldbyname('valor').asfloat));
        CloseFile(myFile);
        Reset(myFile);
        sql2 := 'update cparece set rec_nfis = '+inttostr(maxi)+','+'EMITIDASN = ''S'' '+
                ','+'rec_emis = '+''''+FormatDateTime('MM/DD/YYYY',(DATE))+''''+
                ' where rec_codi = '+q_aux.fieldbyname('rec_codi').asstring;
        q_aux2.Close;
        q_aux2.SQL.clear;
        q_aux2.SQL.add(sql2);
        q_aux2.execsql;
        maxi := maxi + 1;


        q_aux.next;
  end;
  sql := 'update cpafili set fil_ultimanf = '+inttostr(maxi - 1)+
         ' where fil_codi = '+wwdblookupcombo2.LookupValue;
  q_aux.Close;
  q_aux.SQL.clear;
  q_aux.SQL.add(sql);
  q_aux.execsql;

  q_para.close;
  q_aux.close;
  q_aux1.close;
  q_aux2.close;
  q_aux3.close;
  {T_ACEN.CLOSE;}

  Q_RECE.CLOSE;
  Q_AUXI.CLOSE;
  Q_AUXI2.CLOSE;
  Q_RECE.OPEN;
  Q_AUXI2.OPEN;
  Q_AUXI.OPEN;

end;

procedure TFEMITENF.CheckBox1Click(Sender: TObject);
begin
        SBT_PESQCLICK(SELF);
end;


function TFEMITENF.MUDALETR(LETRA: string): string;
var
  NOVALETRA         : string;
  s                 : string;
  M_DataLEN, i      : Integer;
begin
{  NOVALETRA := '';
  M_DataLEN := Length(LETRA);
  for i := 1 to M_DataLEN do
  begin
    if T_Acen.FindKey([Ord(LETRA[i])]) then
    if T_Acen.locate('ace_casc',,[]) then
      s := T_Acen.FieldByName('ACE_NOVO').AsString
    else
      s := LETRA[i];
    NOVALETRA := NOVALETRA + s;
  end;
  Result := NOVALETRA;}
end;


end.

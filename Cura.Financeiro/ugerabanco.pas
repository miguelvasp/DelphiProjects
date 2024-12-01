unit UGeraBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, StdCtrls, Buttons, ExtCtrls, Mask, wwdblook,
  Gauges, Wwtable, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, DBGrids, ComCtrls;

type
  TFGeraBanco = class(TForm)
    Panel1: TPanel;
    Q_LCOB: TwwQuery;
    Q_LCOBLCO_CODI: TStringField;
    Q_LCOBLCO_BANC: TStringField;
    Q_LCOBBANC_CODI: TStringField;
    Q_LCOBLco_Floating: TIntegerField;
    Q_LCOBLco_FluxoCaixa: TStringField;
    Q_BANC: TwwQuery;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_CARTAGECC: TStringField;
    Q_BANCBAN_CODEMPR: TStringField;
    Q_FATU: TwwQuery;
    Q_FATUFat_Nume: TIntegerField;
    Q_FATUFat_Letr: TStringField;
    Q_FATUFat_Cod: TIntegerField;
    Q_FATUFat_DataEmiss: TDateTimeField;
    Q_FATUFat_Cliente: TStringField;
    Q_FATUFat_EndCob: TStringField;
    Q_FATUFat_Valor: TFloatField;
    Q_FATUFat_Vencto: TDateTimeField;
    Q_FATUFat_NumBanco: TStringField;
    Q_FATUFat_Bloqueto: TStringField;
    Q_FATUFat_EmissBloqueto: TDateTimeField;
    Q_FATUFat_LocCob: TStringField;
    Q_FATUCLI_CODI: TIntegerField;
    Q_FATUQuebra: TStringField;
    Q_FATUCLI_CEND: TStringField;
    Q_FATUCLI_CMUN: TStringField;
    Q_FATUCLI_CEST: TStringField;
    Q_FATUCLI_CCEP: TStringField;
    Q_FATUCLI_CGC: TStringField;
    Q_PARA: TwwQuery;
    Q_EMPR: TwwQuery;
    Q_EMPREmp_razao: TStringField;
    Q_PARALocalBradesco: TStringField;
    Q_PARALocalBrasil: TStringField;
    Q_PARAPar_juros: TFloatField;
    Q_PARARemessaBradesco: TIntegerField;
    Q_PARARemessaBrasil: TIntegerField;
    Q_EMPREmp_CGC: TStringField;
    Q_AUX: TwwQuery;
    Q_AUXCOLUMN1: TIntegerField;
    Q_FATUCLI_PESS: TStringField;
    SaveDialog1: TSaveDialog;
    T_Acen: TwwTable;
    T_AcenACE_CASC: TIntegerField;
    T_AcenACE_DESC: TStringField;
    T_AcenACE_NOVO: TStringField;
    qrParamentros: TwwQuery;
    Q_BANCBAN_AGEN: TStringField;
    lbl1: TLabel;
    qrCPARECE: TwwQuery;
    qrCliente: TwwQuery;
    qrCPARECEREC_NFIS: TStringField;
    qrCPARECEREC_VENC: TDateTimeField;
    qrCPARECEREC_VALO: TFloatField;
    qrCPARECEREC_EMIS: TDateTimeField;
    qrCPARECErec_clie: TIntegerField;
    qrClienteCLI_RAZA: TStringField;
    qrClienteCLI_CGC: TStringField;
    qrClienteCLI_FCEP: TStringField;
    qrClienteCLI_FEND: TStringField;
    qrClienteCLI_FMUN: TStringField;
    qrClienteCLI_FEST: TStringField;
    wwQuery1: TwwQuery;
    wwQuery1SIST_ID: TAutoIncField;
    wwQuery1CNPJ: TStringField;
    wwQuery1BAN_CODI: TStringField;
    wwQuery1BAN_NOME: TStringField;
    wwQuery1BAN_AGEN: TStringField;
    wwQuery1BAN_CON: TStringField;
    wwQuery1BAN_DAC: TStringField;
    wwQuery1RAZAO: TStringField;
    wwQuery1ENDERECO: TStringField;
    wwQuery1NUMERO: TIntegerField;
    wwQuery1END_COMPL: TStringField;
    wwQuery1CIDADE: TStringField;
    wwQuery1CEP: TStringField;
    wwQuery1ESTADO: TStringField;
    Panel2: TPanel;
    SBT_SELE: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label10: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label4: TLabel;
    MaskEdit5: TMaskEdit;
    Label6: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label7: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label8: TLabel;
    SBT_PESQ: TSpeedButton;
    pnlProgress: TPanel;
    Label5: TLabel;
    Gauge1: TGauge;
    GroupBox2: TGroupBox;
    btnPesquisar: TSpeedButton;
    dsCPARECE: TDataSource;
    qrCPARECEREC_CGER: TStringField;
    CB_ORDE: TComboBox;
    qrCPARECEREC_GER_CNAB: TStringField;
    chkMarcados: TCheckBox;
    chkSemMarcar: TCheckBox;
    qrCPACLIE: TwwQuery;
    qrCPACLIECLI_CODI: TAutoIncField;
    qrCPACLIECLI_RAZA: TStringField;
    wwDBGrid1: TwwDBGrid;
    UCPARECE: TUpdateSQL;
    qrCPARECEREC_CODI: TIntegerField;
    qrCPARECECliente: TStringField;
    chkGerados: TCheckBox;
    qrCPARECEREC_DT_GER_CNAB: TDateTimeField;
    qrCGerencial: TwwQuery;
    qrCGerencialCON_CODI: TStringField;
    qrCGerencialCON_DESC: TStringField;
    qrEmp: TwwQuery;
    qrEmpfil_codi: TStringField;
    qrEmpfil_desc: TStringField;
    Label9: TLabel;
    mskVenc01: TMaskEdit;
    Label11: TLabel;
    mskVenc02: TMaskEdit;
    qrUpdatePortador: TwwQuery;
    Label12: TLabel;
    qrUpdateEmissao: TwwQuery;
    Panel3: TPanel;
    qrTotal: TwwQuery;
    GroupBox3: TGroupBox;
    lbTotal: TLabel;
    mskGerIni: TMaskEdit;
    mskGerFim: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Label15: TLabel;
    ProgressBar1: TProgressBar;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Q_AUX2: TwwQuery;
    procedure SBT_SELEClick(Sender: TObject);
    procedure GeraBradesco(Sender: TObject);
    procedure GeraBrasil(Sender: TObject);
    Procedure GeraItau;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure qrCPARECEAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qrCPARECEREC_GER_CNABChange(Sender: TField);
  private
    procedure GerarTotal;
  public
    { Public declarations }
  end;

var
  FGeraBanco: TFGeraBanco;
  conta, BANCO : string;
implementation
uses U_Funcoes,cppmenu ; // Unt_BaseDados ;
{$R *.DFM}


procedure TFGeraBanco.SBT_SELEClick(Sender: TObject);
var Num_banco , i, size : Integer;
    campo : string;
    achei : Boolean;

begin
  if qrCPARECE.State in [dsEdit, dsInsert] then
     qrCPARECE.Post;

     chkMarcados.Checked := true;
     chkSemMarcar.Checked := False;
     chkGerados.Checked := False;


   if (MaskEdit1.text = '  /  /  ') or (MaskEdit2.text = '  /  /  ') then begin
       MessageDlg('Informe Período de Emissão !',mtInformation,[mbOk], 0);
       MaskEdit1.setfocus ;
       abort ;
   end ;

   if wwDBLookupCombo1.text = '' then    begin
      MessageDlg('Informe Local de Cobrança !',mtInformation,[mbOk], 0);
      wwDBLookupCombo1.setfocus ;
      abort ;
   end ;
   if Q_LCOBBANC_CODI.asstring = '' then  begin
      MessageDlg('Local de Cobrança não possui Banco Associado !',mtInformation,[mbOk], 0);
      wwDBLookupCombo1.setfocus ;
      abort;
   end;
   Q_BANC.Close;
   Q_BANC.Sql.Clear;
   Q_BANC.Sql.Add('select * from CPABANC where BAN_CODI =' + '''' + TRIM(Q_LCOBBANC_CODI.asstring)  + '''' ) ;
   Q_BANC.Open;

   if Q_BANCBAN_CARTAGECC.asstring = '' then begin
      MessageDlg('Não existe informação de Carteira/Agência/Conta Corrente no Banco !',mtInformation,[mbOk], 0);
      wwDBLookupCombo1.setfocus;
      abort;
   end ;
   btnPesquisar.Click;
  SaveDialog1.FileName := '';
  SaveDialog1.Execute;
  if SaveDialog1.FileName = '' then
  begin
     MessageBox(Self.Handle, 'Nenhum arquivo de destino informado!!!', 'Erro', MB_OK + MB_ICONERROR);
     Abort;
  end;

   //subtrai o numero da conta e numero do banco do codigo do portador
   //*******miguel ******************
   achei := False;
   conta := '';
   banco := '';
   campo := Q_LCOBBANC_CODI.AsString;
   size := Length(campo);
   for i := 1 to size do
   begin
     if  achei = false then
     begin
       if campo[i] <> '/' then
       banco := banco + campo[i];
       if campo[i] = '/' then
        achei := True
     end;
     if achei = true then
       if (campo[i] <> ' ') then
         if (campo[i] <> '/') then
           if (campo[i] <> '-') then
             conta := conta + campo[i];
     lbl1.Caption := conta;
   end;


   Num_banco := StrToInt(Trim(banco));
   if Num_banco = 341 then
   BEGIN
   GeraItau;
   ABORT;
   END;             

   Q_FATU.close;
   Q_FATU.Sql.Clear ;
   Q_FATU.Sql.Add('select A.* ,B.CLI_CEND,B.CLI_CMUN ,B.CLI_CEST ,B.CLI_CCEP,B.CLI_CGC,B.CLI_PESS ' ) ;
   Q_FATU.Sql.Add('from Fatura A, CPACLIE B ' ) ;
   Q_FATU.Sql.Add('where A.CLI_CODI = B.CLI_CODI ' ) ;
   Q_FATU.Sql.Add( ' and A.Fat_DataEmiss >= ' + '''' + formatdatetime('MM/DD/YYYY',strtodate(Maskedit1.text)) + '''' ) ;
   Q_FATU.Sql.Add( ' and A.Fat_DataEmiss <= ' + '''' + formatdatetime('MM/DD/YYYY',strtodate(Maskedit2.text)) + '''' ) ;
   Q_FATU.Sql.Add('  and A.Fat_LocCob = ' + '''' + wwDBLookupCombo1.lookupvalue + '''' ) ;
   Q_FATU.Sql.Add(' order by Quebra ' ) ;
   Q_FATU.Open ;

   if Q_FATU.eof then begin
      MessageDlg('Não há dados que atendam a estas condições !',mtInformation,[mbOk], 0);
      wwDBLookupCombo1.setfocus ;
      abort ;
   end ;
   Q_PARA.Open ;
   Q_EMPR.open ;
   T_Acen.open;
   if wwDBLookupCombo1.lookupvalue = Q_PARALocalBradesco.asstring then GeraBradesco(self);
   if wwDBLookupCombo1.lookupvalue = Q_PARALocalBrasil.asstring   then GeraBrasil(self);



   Q_PARA.Close ;
   Q_EMPR.Close ;
   T_Acen.CLOSE ;
   MessageDlg('Geração Efetuada com sucesso ! !', mtInformation, [mbOK], 0);
   Gauge1.visible := false ;
   Label5.visible := false ;
   panel4.visible := false;
   close ;
end;

procedure TFGeraBanco.GeraBradesco(Sender: TObject);
CONST  BRANCOS = '                                                                                                    ' ; // 100 brancos
       ZEROS   = '000000000000000000000000000000' ; // 30 zeros
var   Gerabanco : TextFile;
      Strtexto  : string ;
      NumeroRemessa : string ;
      Sequencia     : integer ;
      Contador  : Integer ;
      NumeCgc   : String ;
      StrNome   : string ;

begin
   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_Aux.Sql.Add('select count(*) ' );
   Q_Aux.Sql.Add('from Fatura A, CPACLIE B ' ) ;
   Q_Aux.Sql.Add('where A.CLI_CODI = B.CLI_CODI ' ) ;
   Q_Aux.Sql.Add( ' and A.Fat_DataEmiss >= ' + '''' + formatdatetime('MM/DD/YYYY',strtodate(Maskedit1.text)) + '''' ) ;
   Q_Aux.Sql.Add( ' and A.Fat_DataEmiss <= ' + '''' + formatdatetime('MM/DD/YYYY',strtodate(Maskedit2.text)) + '''' ) ;
   Q_Aux.Sql.Add('  and A.Fat_LocCob = ' + '''' + wwDBLookupCombo1.lookupvalue + '''' ) ;
   Q_Aux.Open ;

   Gauge1.MaxValue := Q_AUXCOLUMN1.asinteger ;
   Gauge1.visible := true ;
   Label5.visible := true ;
   Contador := 0 ;


  Assignfile(GeraBanco,SBT_PESQ.caption);
  Rewrite(GeraBanco);
  NumeroRemessa := copy(ZEROS,1,7-length(trim(inttostr(Q_PARARemessaBradesco.asinteger+1))))+trim(inttostr(Q_PARARemessaBradesco.asinteger+1))  ;
  Sequencia := 1 ;
  // Gera Header
  StrTexto := '0'+'1'+'REMESSA'+'01'+'COBRANCA       '+FUNCOES.MUDALETR(Q_BANCBAN_CODEMPR.asstring) ;
  StrTexto := StrTexto + FUNCOES.MUDALETR(copy(Q_EMPREMP_Razao.asstring,1,30)) + '237'+ 'BRADESCO       '  ;
  Strtexto := StrTexto + formatdatetime('DDMMYY',now)+copy(BRANCOS,1,8) +'MX';
  StrTexto := StrTexto + NumeroRemessa ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + copy(BRANCOS ,1,77) ;
  StrTexto := StrTexto + copy(ZEROS,1,6-length(trim(inttostr(Sequencia))))+trim(inttostr(Sequencia))  ;
  Writeln(GeraBanco,StrTexto);
  // gera Detalhes
  while not Q_FATU.eof do begin
      inc(Sequencia);
      inc(Contador) ;
      NumeCgc  := inttostr(strtoint(copy(Q_EMPREmp_CGC.asstring,1,5)))+ trim(copy(Q_EMPREmp_CGC.asstring,6,12)) ;
      StrTexto := '1'+'02' ;
//      StrTexto := StrTexto + copy(ZEROS,1,14-length(copy(trim(Q_EMPREmp_CGC.asstring ),1,14))) + copy(trim(Q_EMPREmp_CGC.asstring),1,14) ;
      StrTexto := StrTexto + copy(ZEROS,1,14-length(trim(NumeCgc))) + trim(NumeCgc) ;
      StrTexto := StrTexto + FUNCOES.MUDALETR(Q_BANCBAN_CARTAGECC.asstring) ;
      StrTexto := StrTexto + copy(BRANCOS,1,25) ;
      StrTexto := StrTexto + copy(ZEROS,1,8) ;
      StrTexto := StrTexto + copy(ZEROS,1,12) ;
      StrTexto := StrTexto + copy(ZEROS,1,10) ;
      StrTexto := StrTexto + copy(BRANCOS,1,15) ;
      StrTexto := StrTexto + '9';
      StrTexto := StrTexto + '01';
      StrTexto := StrTexto + '000'+ copy(trim(Q_FATUQuebra.asstring),1,7)+copy(BRANCOS,1,7-length(trim(Q_FATUQuebra.asstring))) ;
      Strtexto := StrTexto + formatdatetime('DDMMYY',Q_FATUFat_Vencto.asdatetime);
      StrTexto := StrTexto + formatfloat('0000000000000',Q_FATUFat_Valor.asfloat*100) ;
      Strtexto := StrTexto + '000' ;
      Strtexto := StrTexto + '00000'+ '01'+ 'N' ;
      Strtexto := StrTexto + formatdatetime('DDMMYY',Q_FATUFat_DataEmiss.asdatetime);
      Strtexto := StrTexto + copy(ZEROS,1,2-length(trim(Maskedit3.text))) + trim(Maskedit3.text) ;
      Strtexto := StrTexto + copy(ZEROS,1,2-length(trim(Maskedit4.text))) + trim(Maskedit4.text) ;
      StrTexto := StrTexto + formatfloat('0000000000000', ((Q_FATUFat_Valor.asfloat*(Q_PARAPAR_JUROS.asfloat/100) )/30)* 100 ) ;
      StrTexto := StrTexto + '000000' ;
      StrTexto := StrTexto + '0000000000000' ;
      StrTexto := StrTexto + '0000000000000' ;
      StrTexto := StrTexto + '0000000000000' ;
      if Q_FATUCLI_PESS.asstring = 'J' then StrTexto  := StrTexto  + '02'
      else StrTexto  := StrTexto  + '01' ;
      NumeCgc  := inttostr(strtoint(copy(Q_FATUCLI_CGC.asstring,1,5)))+ trim(copy(Q_FATUCLI_CGC.asstring,6,12)) ;
      StrTexto := StrTexto + copy(ZEROS,1,14-length(trim(NumeCgc))) + trim(NumeCgc) ;
      StrNome  := trim(FUNCOES.MUDALETR(Q_FATUFat_Cliente.asstring));
      StrNome  := copy(StrNome,1,40) + copy(Brancos,1,40-length(copy(StrNome,1,40))) ;
      StrTexto := StrTexto + StrNome ;
      StrNome  := trim(FUNCOES.MUDALETR(Q_FATUCLI_CEND.asstring));
      StrNome  := copy(StrNome,1,40) + copy(Brancos,1,40-length(copy(StrNome,1,40))) ;
      StrTexto := StrTexto + StrNome ;
      StrTexto := StrTexto + copy(BRANCOS,1,12) ;
      StrTexto := StrTexto + Q_FATUCLI_CCEP.asstring ;
      StrTexto := StrTexto + FUNCOES.MUDALETR(copy(trim(Maskedit5.text),1,60)+ Copy(BRANCOS,1,60-length(copy(trim(MaskEdit5.text),1,60)))) ;
      StrTexto := StrTexto + copy(ZEROS,1,6-length(trim(inttostr(Sequencia))))+trim(inttostr(Sequencia))  ;
      Writeln(GeraBanco,StrTexto);
      Gauge1.Progress := StrToInt(FloatToStr(Contador));
      Gauge1.refresh ;
      Q_FATU.next ;
  end ;
  // Gera Trailer
  inc(sequencia) ;
  StrTexto := '9' ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + copy(BRANCOS ,1,93) ;
  StrTexto := StrTexto + copy(ZEROS,1,6-length(trim(inttostr(Sequencia))))+trim(inttostr(Sequencia))  ;
  Writeln(GeraBanco,StrTexto);
  Closefile(GeraBanco) ;
  Q_AUX.Close ;
  Q_Aux.Sql.Clear ;
  Q_AUX.Sql.Add(' update Siapara set RemessaBradesco = RemessaBradesco + 1 ' );
  Q_AUX.ExecSql ;
  Q_AUX.Close ;
end ;

procedure TFGeraBanco.GeraBrasil(Sender: TObject);
CONST  BRANCOS = '                                                                                                    ' ; // 100 brancos
       ZEROS   = '000000000000000000000000000000' ; // 30 zeros
var   Gerabanco : TextFile;
      Strtexto  : string ;
      NumeroRemessa : string ;
      Sequencia     : integer ;
      Contador  : Integer ;
      NumeCgc   : String ;
      StrNome   : string ;

begin
   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_Aux.Sql.Add('select count(*) ' );
   Q_Aux.Sql.Add('from Fatura A, CPACLIE B ' ) ;
   Q_Aux.Sql.Add('where A.CLI_CODI = B.CLI_CODI ' ) ;
   Q_Aux.Sql.Add( ' and A.Fat_DataEmiss >= ' + '''' + formatdatetime('MM/DD/YYYY',strtodate(Maskedit1.text)) + '''' ) ;
   Q_Aux.Sql.Add( ' and A.Fat_DataEmiss <= ' + '''' + formatdatetime('MM/DD/YYYY',strtodate(Maskedit2.text)) + '''' ) ;
   Q_Aux.Sql.Add('  and A.Fat_LocCob = ' + '''' + wwDBLookupCombo1.lookupvalue + '''' ) ;
   Q_Aux.Open ;

   Gauge1.MaxValue := Q_AUXCOLUMN1.asinteger ;
   Gauge1.visible := true ;
   Label5.visible := true ;
   Contador := 0 ;


  Assignfile(GeraBanco,SBT_PESQ.caption);
  Rewrite(GeraBanco);
  NumeroRemessa := copy(ZEROS,1,7-length(trim(inttostr(Q_PARARemessaBrasil.asinteger+1))))+trim(inttostr(Q_PARARemessaBrasil.asinteger+1))  ;
  Sequencia := 1 ;                                                     
  // Gera Header
//  StrTexto := '0'+'1'+'REMESSA'+'01'+'COBRANCA'+copy(BRANCOS,1,17)+'0384'+
  StrTexto := '0'+'1'+'REMESSA'+'01'+'COBRANCA       '+FUNCOES.MUDALETR(Q_BANCBAN_CODEMPR.asstring) ;
  StrTexto := StrTexto + FUNCOES.MUDALETR(copy(Q_EMPREMP_Razao.asstring,1,30)) + '001'+ 'BANCO DO BRASIL'  ;
  Strtexto := StrTexto + formatdatetime('DDMMYY',now);
  StrTexto := StrTexto + NumeroRemessa ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + copy(BRANCOS ,1,87) ;
  StrTexto := StrTexto + copy(ZEROS,1,6-length(trim(inttostr(Sequencia))))+trim(inttostr(Sequencia))  ;
  Writeln(GeraBanco,StrTexto);
  // gera Detalhes
  while not Q_FATU.eof do begin
      inc(Sequencia);
      inc(Contador) ;
      NumeCgc  := inttostr(strtoint(copy(Q_EMPREmp_CGC.asstring,1,5)))+ trim(copy(Q_EMPREmp_CGC.asstring,6,12)) ;
      StrTexto := '1'+'02' ;
      StrTexto := StrTexto + copy(ZEROS,1,14-length(trim(NumeCgc))) + trim(NumeCgc) ;
      StrTexto := StrTexto + FUNCOES.MUDALETR(Q_BANCBAN_CARTAGECC.asstring) ;
      StrTexto := StrTexto + copy(BRANCOS,1,25) ;
      StrTexto := StrTexto + copy(ZEROS,1,16) ;
      StrTexto := StrTexto + copy(BRANCOS,1,4) ;
      StrTexto := StrTexto + 'AI ' ;
      StrTexto := StrTexto + '019';
      StrTexto := StrTexto + '0000000000000';
      StrTexto := StrTexto + copy(BRANCOS,1,5) ;
      StrTexto := StrTexto + '1101';
      StrTexto := StrTexto + copy(trim(Q_FATUQuebra.asstring),1,7)+copy(BRANCOS,1,7-length(trim(Q_FATUQuebra.asstring))) + copy(BRANCOS,1,3) ;
      Strtexto := StrTexto + formatdatetime('DDMMYY',Q_FATUFat_Vencto.asdatetime);
      StrTexto := StrTexto + formatfloat('0000000000000',Q_FATUFat_Valor.asfloat*100) ;
      Strtexto := StrTexto + '001' ;
      Strtexto := StrTexto + '00000'+ '01'+ 'N' ;
      Strtexto := StrTexto + formatdatetime('DDMMYY',Q_FATUFat_DataEmiss.asdatetime);
      Strtexto := StrTexto + copy(ZEROS,1,2-length(trim(Maskedit3.text))) + trim(Maskedit3.text) ;
      Strtexto := StrTexto + copy(ZEROS,1,2-length(trim(Maskedit4.text))) + trim(Maskedit4.text) ;
      StrTexto := StrTexto + formatfloat('0000000000000', ((Q_FATUFat_Valor.asfloat*(Q_PARAPAR_JUROS.asfloat/100) )/30)* 100 ) ;
      StrTexto := StrTexto + '000000' ; // copy(BRANCOS,1,6) ;
      StrTexto := StrTexto + '0000000000000' ;
      StrTexto := StrTexto + '0000000000000' ;
      StrTexto := StrTexto + '0000000000000' ;
      if Q_FATUCLI_PESS.asstring = 'J' then StrTexto  := StrTexto  + '02'
      else StrTexto  := StrTexto  + '01' ;
      NumeCgc  := inttostr(strtoint(copy(Q_FATUCLI_CGC.asstring,1,5)))+ trim(copy(Q_FATUCLI_CGC.asstring,6,12)) ;
      StrTexto := StrTexto + copy(ZEROS,1,14-length(trim(NumeCgc))) + trim(NumeCgc) ;
      StrNome  := trim(FUNCOES.MUDALETR(Q_FATUFat_Cliente.asstring));
      StrNome  := copy(StrNome,1,40) + copy(Brancos,1,40-length(copy(StrNome,1,40))) ;
      StrTexto := StrTexto + StrNome ;
      StrNome  := trim(FUNCOES.MUDALETR(Q_FATUCLI_CEND.asstring));
      StrNome  := copy(StrNome,1,37) + copy(Brancos,1,37-length(copy(StrNome,1,37))) ;
      StrTexto := StrTexto + StrNome ;
      StrTexto := StrTexto + copy(BRANCOS,1,15) ;
      StrTexto := StrTexto + Q_FATUCLI_CCEP.asstring ;
      StrNome  := trim(FUNCOES.MUDALETR(Q_FATUCLI_CMUN.asstring));
      StrNome  := copy(StrNome,1,15) + copy(Brancos,1,15-length(copy(StrNome,1,15))) ;
      StrTexto := StrTexto + StrNome ;
      StrTexto := StrTExto + Q_FATUCLI_CEST.asstring;
      StrTexto := StrTexto + FUNCOES.MUDALETR(copy(trim(Maskedit5.text),1,40)+ Copy(BRANCOS,1,40-length(copy(trim(MaskEdit5.text),1,40)))) ;
      StrTexto := StrTexto + copy(BRANCOS,1,3) ;
      StrTexto := StrTexto + copy(ZEROS,1,6-length(trim(inttostr(Sequencia))))+trim(inttostr(Sequencia))  ;
      Writeln(GeraBanco,StrTexto);
      Gauge1.Progress := StrToInt(FloatToStr(Contador));
      Gauge1.refresh ;
      Q_FATU.next ;
  end ;
  // Gera Trailer
  inc(sequencia) ;
  StrTexto := '9' ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + BRANCOS ;
  StrTexto := StrTexto + copy(BRANCOS ,1,93) ;
  StrTexto := StrTexto + copy(ZEROS,1,6-length(trim(inttostr(Sequencia))))+trim(inttostr(Sequencia))  ;
  Writeln(GeraBanco,StrTexto);
  Closefile(GeraBanco) ;
  Q_AUX.Close ;
  Q_Aux.Sql.Clear ;
  Q_AUX.Sql.Add(' update Siapara set RemessaBrasil = RemessaBrasil + 1 ' );
  Q_AUX.ExecSql ;
  Q_AUX.Close ;

end ;


procedure TFGeraBanco.FormClose(Sender: TObject; var Action: TCloseAction);
var i : Integer;
begin
   for i := 0 to pred(ComponentCount) do
   begin
       if Components[i] is TwwQuery then
           TwwQuery(Components[i]).Active := False;
   end;
   action := cafree;

end;

procedure TFGeraBanco.FormCreate(Sender: TObject);
begin
   Q_LCOB.Open ;
   qrCGerencial.OPEN;
   qrEmp.OPEN;
end;

procedure TFGeraBanco.SpeedButton1Click(Sender: TObject);
begin
  close ;
end;

procedure TFGeraBanco.SBT_PESQClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
     SBT_PESQ.caption := SaveDialog1.FileName ;
     SBT_SELE.Enabled := True;

end;

procedure TFGeraBanco.GeraItau;
const
  Brancos = '                                                                                                         ';
  Zeros = '0000000000000000000000000000000000000000000000000000000';

Var
   Digito : string;
   i : Integer;
   A : TStringList;
   Aux, Linha : string;
   Agencia : string;
   conta : string;
   EMPRESA : string;
   N_Sequencial : Double;
begin

   try

   {qrCPARECE.CLOSE;
   qrCPARECE.Params[0].AsDateTime :=  StrToDate(MaskEdit1.Text);
   qrCPARECE.Params[1].AsDateTime :=  StrToDate(MaskEdit2.Text) + 1;
   qrCPARECE.Params[2].AsString := Q_LCOBLCO_CODI.Value;
   qrCPARECE.open;}

   pnlProgress.Visible := True;
   Label5.Visible := True;
//   Gauge1.Visible := True;
   panel4.visible := true;
   Application.ProcessMessages;
   wwQuery1.OPEN;


     N_Sequencial := 1;
     a := TStringList.Create;
     Linha := '01REMESSA01COBRANCA       '; //tipo do registro

     //****************REGISTRO HEADER

     qrParamentros.CLOSE;
     qrParamentros.Params[0].AsString := Q_LCOBBANC_CODI.Value;
     qrParamentros.OPEN;
     //verifica se a agencia tem 4 digitos
     Aux := qrParamentros.FIELDBYNAME('BAN_AGEN').AsString;
     if Length(aux) <> 4 then
     Aux := Copy(Zeros,1,4-Length(aux))+Aux;
     Linha := Linha + Aux +'00';





     //*************VERIFICAR COM RUBENS O NÚMERO DA CONTA DO BANCO
     linha := linha + lbl1.Caption;


     // 8 CAMPOS EM BRANCO
     Linha := LINHA + '        ';

     //NOME DA EMPRESA
     EMPRESA := wwQuery1RAZAO.Value;
     AUX := '';
     IF LENGTH(EMPRESA) < 30 THEN
     BEGIN
         FOR I := 1 TO 30 - LENGTH(EMPRESA) DO
           AUX :=  AUX + ' ';
         EMPRESA := EMPRESA + AUX;
     END;

     LINHA := LINHA + EMPRESA;

     //CODIGO DO BANCO ITAU   (3)
     LINHA := LINHA + '341';


     //NOME DO BANCO (15)
     LINHA := Linha + 'BANCO ITAU SA  ';

     //DATA DA GERAÇÃO (6)
     LINHA := LINHA + FormatDateTime('DDMMYY', Date);

     //BRANCOS (294)
     Aux := '';
     FOR I := 1 TO 294 DO
       Aux := Aux + ' ';

     Linha := LINHA + Aux;


     //NUMERO SEQUENCIAL
     Linha := LINHA + FormatFloat('000000',N_Sequencial);

     A.Add(LINHA);



     //***********************REGISTRO DETALHE*************************
     qrCPARECE.Last;
//     gauge1.Progress := 0;
     progressbar1.position := 0;
     progressbar1.Max := qrCPARECE.RecordCount;
     qrCPARECE.First;


         while not qrCPARECE.Eof Do
         begin
           If qrCPARECEREC_GER_CNAB.AsString = 'S' then
           begin
           //  if qrCPARECEREC_DT_GER_CNAB.AsString = '' then
          //   begin
//            Gauge1.Progress := Gauge1.Progress + 1;
               progressbar1.position := progressbar1.position + 1;
               Application.ProcessMessages;
               LINHA := EmptyStr;

               //TIPO DE REGISTRO
               LINHA := LINHA + '1';

               //CODIGO DE INSCRIÇÃO
               LINHA := Linha + '00';

               //NUMERO DE INSCRIÇÃO (CNPJ/CPF)  (14)
               Linha := LINHA + '00000000000000';

               //verifica se a agencia tem 4 digitos
               Aux := qrParamentros.FIELDBYNAME('BAN_AGEN').AsString;
               if Length(aux) <> 4 then
               Aux := Copy(Zeros,1,4-Length(aux))+Aux;


               Linha := Linha + Aux +'00';

               //**********************VERIFICAR CONTA E DIGITO DE VALIDAÇÃO COM RUBENS

               i := Pos('/', Q_LCOBBANC_CODI.Value);
               conta := Copy(Q_LCOBBANC_CODI.Value,i+1,5) ;
               i := Pos('-', Q_LCOBBANC_CODI.Value);
               Digito := Copy(Q_LCOBBANC_CODI.Value,i+1,1) ;



               linha := linha + conta + Digito;

               // BRANCOS (4)
               Linha := LINHA + '    ';

               //INSTRUÇÃO ALEGAÇÃO (4)
               Linha := LINHA + '    ';   //******VERIFICAR COM RUBENS***********

               //identificação do titulo da empresa (25)
               Aux := '';
               for i := 1 to 25 do
               Aux :=  Aux + ' ';

               linha := linha + Aux;

               //Identificação do titulo no banco
               linha  := Linha + '00000000';


               //quantidade de moeda, preechido com zeros para real
                //************numero da carteira, verificar com Rubens
              // linha := linha + '112';
               linha := linha + '0000000000000112';






              //Identificação da operação no banco
               Aux := '';
               for i := 1 to 21 do
               Aux :=  Aux + ' ';

               linha := linha + Aux;



               // ***********Código da Carteira, verificar valor do campo com Rubens
               linha := Linha + 'I';



               //codigo de ocorrência - Remessa
               Linha := Linha + '01';


               //  N° do documento de cobrança (duplicata , nf)  (10)
               Aux := qrCPARECEREC_NFIS.Value;
               if Length(aux) < 10 then
                 for i := 1 to 10 - Length(aux) do
               Aux := Aux + ' ';
               Linha := Linha + Aux;



               //data de vencimento do titulo

               Linha := linha + FormatDateTime('DDMMYY',qrCPARECEREC_VENC.Value);



               //vALOR DO tÍTULO

               Linha := Linha + FormatFloat('0000000000000',qrCPARECEREC_VALO.Value);



               //numero do banco
               linha  := linha + '341';


               //agencia onde o titulo sera cobrado, conforme nota 9, colocar 5 zeros
               linha := Linha + '00000';


              //Especie do titulo  - Colocado valor de duplicata Mercanti - 01
              linha := Linha + '01';



              //identificação de titulo aceito ou nao: A=sim N=Não
              linha := Linha + 'N';

              //data de emissão do titulo
              linha := Linha + FormatDateTime('DDMMYY',qrCPARECEREC_EMIS.Value);


              //instrução de cobrança 1
              linha := Linha + '  ';


               //instrução de cobrança 2
              linha := Linha + '  ';



              //valor de juros por dia
              //*******************ver copm rubens *****************************
              linha := linha + '0000000000000';


              //************data do Desconto******VERIFICAR COM RUBENS
              linha := Linha + '      ';

              //valor do desconto
              linha := Linha + '0000000000000';

              //valor do IOF
              linha := Linha + '0000000000000';

              //abatimento
              linha := Linha + '0000000000000';

              //codigo de inscrição
              linha := linha + '02';

              qrCliente.close;
              qrCliente.Params[0].AsInteger := qrCPARECErec_clie.Value;
              qrCliente.Open;

              //CNPJ Cliente
              Aux :=  Copy(qrClienteCLI_CGC.Value, 1,14);
              if Length(aux) <  14 then
              Aux :=  '0'+AUX;
              Linha := linha + Aux;

              //nome do cliente
              Aux := qrClienteCLI_RAZA.Value;
              if  Length(Aux) >= 30 then
                Aux := Copy(Aux,1,30)
              else if Length(Aux) < 30 then
              begin
                 for i := 1 to 30 - Length(aux) do
                 aux :=  Aux + ' ';
              end;
               Linha := linha + Aux;

              //brancos
              aux := '';
              for i := 1 to 10 do
              Aux := Aux + ' ' ;
              Linha := linha + Aux;

              //endereço do cliente
              Aux := Copy(qrClienteCLI_FEND.Value,1,40);

              if Length(Aux) < 40 then
              begin
                 for i := 1 to 40 - Length(aux) do
                 aux :=  Aux + ' ';
              end;
               Linha := linha + Aux;


               //bairro
              aux := '';
              for i := 1 to 12 do
              Aux := Aux + ' ' ;
              Linha := linha + Aux;

              //cep
              aux:=  qrClienteCLI_FCEP.AsString;
              if length(aux) < 8 then
               for i := 1 to 8 - length(aux) do
               aux := '0'+aux;
               linha := linha + Aux;


              //cidade
               Aux := qrClienteCLI_FMUN.Value;
              if  Length(Aux) >= 15 then
                Aux := Copy(Aux,1,15)
              else if Length(Aux) < 15 then
              begin
                 for i := 1 to 15 - Length(aux) do
                 aux :=  Aux + ' ';
              end;
               Linha := linha + Aux;


               //UF
               linha := linha + qrClienteCLI_FEST.Value;

              //brancos
              aux := '';
              for i := 1 to 34 do
              Aux := Aux + ' ' ;
              Linha := linha + Aux;
              //data de moura
              Linha := linha + '      ';


              //prazo
              Linha := linha + '00 ';

              N_Sequencial := N_Sequencial + 1;
              linha := linha + FormatFloat('000000',N_Sequencial);

                  a.Add(linha);
                 with qrUpdatePortador do
                 begin
                     Close;
                     Params[0].AsString := wwDBLookupCombo1.LookupValue;
                     Params[1].AsInteger := qrCPARECEREC_CODI.AsInteger;
                     ExecSQL;
                 end;
                 with qrUpdateEmissao do
                 begin
                     Close;
                     Params[0].AsString := FormatDateTime('YYYYMMDD',Date);
                     Params[1].AsInteger := qrCPARECEREC_CODI.AsInteger;
                     ExecSQL;
                 end;

             //  end;// ifdt_geração
            end; // end if flag
           qrCPARECE.Next;

         end; //end while qrCPAREE







     //******************* REGISTRO TRAILES*************
     Linha  := '';
     Linha := '9';

      //brancos
      aux := '';
      for i := 1 to 393 do
      Aux := Aux + ' ' ;
      Linha := linha + Aux;

      N_Sequencial := N_Sequencial + 1;
      linha := linha + FormatFloat('000000',N_Sequencial);
      A.Add(linha);





       pnlProgress.Visible := False;
       Label5.Visible := False;
       Gauge1.Visible := False;


      //*******GERA ARQUIVO*******
      Panel4.Visible := False;

      A.SaveToFile(SaveDialog1.FileName);
      MessageBox(Self.Handle, 'Geração efetuada com sucesso!', 'Informação de Sistema', MB_OK + MB_ICONINFORMATION);

   except
    on e : Exception do
    begin
     MessageBox(Self.Handle, pchar('Aconteceu um erro ao gerar o arquivo!  ' + e.Message), 'Erro', MB_OK + MB_ICONERROR);
     FreeAndNil(A);
    end;


   end;

end;

procedure TFGeraBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   begin
       Key := #0;
       Perform(WM_NEXTDLGCTL,0,0);
   end;
end;

procedure TFGeraBanco.btnPesquisarClick(Sender: TObject);
VAR Dia : TDate;
    Marcado, SemMarcar : string;

begin
   {Miguel}
   with qrCPARECE do
   begin
       close;
       SQL.Clear;
       sql.Add(' SELECT   ' +
               '    REC_CODI, REC_CLIE, '+
               '     REC_NFIS, '+
               '     REC_VENC, '+
               '     REC_VALO, '+
               '     REC_EMIS, '+
               '     REC_CGER, '+
               '     REC_GER_CNAB, REC_DT_GER_CNAB '+
               ' FROM '+
               '     CPARECE WHERE 1 = 1');


          IF MaskEdit1.Text <> '  /  /    ' then
          begin
             Dia := StrToDate(MaskEdit1.Text);
             SQL.Add( ' AND REC_EMIS >= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 00:00:00',Dia)));
          end;

          IF MaskEdit2.Text <> '  /  /    ' then
          begin
             Dia := StrToDate(MaskEdit2.Text);
             SQL.Add( ' AND REC_EMIS <= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 23:59:59',Dia)));
          end;





            if mskVenc01.Text <>  '  /  /    ' then
            begin
               Dia := StrToDate(mskVenc01.Text);
               SQL.Add( ' AND REC_VENC >= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 00:00:00',Dia)));
            end;

            if mskVenc02.Text <>  '  /  /    ' then
            begin
               Dia := StrToDate(mskVenc02.Text);
               SQL.Add( ' AND REC_VENC <= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 23:59:59',Dia)));
            end;


        //REC_DT_GER_CNAB
            if mskGerIni.Text <> '  /  /    ' then
            begin
               Dia := StrToDate(mskGerIni.Text);
               SQL.Add( ' AND REC_DT_GER_CNAB >= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 00:00:00',Dia)));
            end;

            if mskGerFim.Text <> '  /  /    ' then
            begin
               Dia := StrToDate(mskGerFim.Text);
               SQL.Add( ' AND REC_DT_GER_CNAB <= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 23:59:59',Dia)));
            end;

      if wwDBLookupCombo3.Text <> '' then
         SQL.Add(' and rec_cger = ' + QuotedStr(wwDBLookupCombo3.LookupValue));

      if wwDBLookupCombo4.Text <> '' then
        SQL.Add(' and rec_fili = ' + QuotedStr(wwDBLookupCombo4.LookupValue));

      if chkGerados.Checked = False then
      begin
            if chkMarcados.Checked then
              SQL.Add(' and (rec_ger_cnab = ' + QuotedStr('S'))
            else
              SQL.Add(' and (rec_ger_cnab = ' + QuotedStr(''));



            if chkSemMarcar.Checked then
            begin
                   SQL.Add(' or rec_ger_cnab = ' + QuotedStr('N')) ;
                   SQL.Add(' or rec_ger_cnab is null )')
            end
            else
                   SQL.Add(' or rec_ger_cnab = ' + QuotedStr('')+ ')') ;
      end;



      if chkGerados.Checked then
        SQL.Add(' and rec_dt_ger_cnab is not null')
      else
        SQL.Add(' and rec_dt_ger_cnab is null')   ;


        case CB_ORDE.itemindex of
              1:Sql.Add(' order by REC_RAZA,REC_VENC');
              2:Sql.Add(' order by REC_VENC');
              3:Sql.Add(' order by REC_NFIS');
              else
                Sql.Add(' order by REC_CODI');
        end;

        Open;
   end;


  GerarTotal;



SBT_SELE.Enabled := True;

SpeedButton3.Enabled := True;
SpeedButton4.Enabled := True;

end;

procedure TFGeraBanco.qrCPARECEAfterPost(DataSet: TDataSet);
begin

  qrCPARECE.ApplyUpdates;
  GerarTotal;

end;

procedure TFGeraBanco.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

        If qrCPARECEREC_GER_CNAB.AsString = 'S' then
        Begin
                Abrush.Color := $00DBFFCE
        End Else Begin
                Abrush.Color := $00A4D1FF
        End;

        if qrCPARECEREC_DT_GER_CNAB.AsString <> '' then
             Abrush.Color := clWhite;

        If Highlight then
                AFont.Color := clBlue
        else
                Afont.Color := clBlack

end;

procedure TFGeraBanco.wwDBLookupCombo3Exit(Sender: TObject);
begin
  {if  wwDBLookupCombo3.Text <> '' then
  wwDBLookupCombo3.Text := qrCGerencialCON_DESC.Text;  }
end;

procedure TFGeraBanco.wwDBLookupCombo4Exit(Sender: TObject);
begin
//  wwDBLookupCombo4.Text := qrEmpfil_desc.Text;
end;

procedure TFGeraBanco.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  Label12.Caption := wwDBLookupCombo1.LookupValue;
  btnPesquisar.Click;
end;

procedure TFGeraBanco.wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  btnPesquisar.Click;
end;

procedure TFGeraBanco.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   btnPesquisar.Click;
end;

procedure TFGeraBanco.GerarTotal;
var dia : tdatetime;
begin
  //********totais****************
   with qrTotal do
   begin
       close;
       SQL.Clear;
       sql.Add(' SELECT   ' +
               '     sum(REC_VALO) as total'+
               ' FROM '+
               '     CPARECE WHERE 1 = 1');

       SQL.Add(' and rec_ger_cnab = ' + QuotedStr('S')) ;

          IF MaskEdit1.Text <> '  /  /    ' then
          begin
             Dia := StrToDate(MaskEdit1.Text);
             SQL.Add( ' AND REC_EMIS >= ' + QuotedStr(FormatDateTime('YYYYMMDD',Dia)));
          end;

          IF MaskEdit2.Text <> '  /  /    ' then
          begin
             Dia := StrToDate(MaskEdit2.Text);
             SQL.Add( ' AND REC_EMIS <= ' + QuotedStr(FormatDateTime('YYYYMMDD',Dia)));
          end;





            if mskVenc01.Text <>  '  /  /    ' then
            begin
               Dia := StrToDate(mskVenc01.Text);
               SQL.Add( ' AND REC_VENC >= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 00:00:00',Dia)));
            end;

            if mskVenc02.Text <>  '  /  /    ' then
            begin
               Dia := StrToDate(mskVenc02.Text);
               SQL.Add( ' AND REC_VENC <= ' + QuotedStr(FormatDateTime('YYYYMMDD'+' 23:59:59',Dia)));
            end;





      if wwDBLookupCombo3.Text <> '' then
         SQL.Add(' and rec_cger = ' + QuotedStr(wwDBLookupCombo3.LookupValue));

      if wwDBLookupCombo4.Text <> '' then
        SQL.Add(' and rec_fili = ' + QuotedStr(wwDBLookupCombo4.LookupValue));

//      if chkGerados.Checked = False then
//      begin
//            if chkMarcados.Checked then
//              SQL.Add(' and (rec_ger_cnab = ' + QuotedStr('S'))
//            else
//              SQL.Add(' and (rec_ger_cnab = ' + QuotedStr(''));
//
//
//
//            if chkSemMarcar.Checked then
//            begin
//                   SQL.Add(' or rec_ger_cnab = ' + QuotedStr('N')) ;
//                   SQL.Add(' or rec_ger_cnab is null )')
//            end
//            else
//                   SQL.Add(' or rec_ger_cnab = ' + QuotedStr('')+ ')') ;
//      end;



      if chkGerados.Checked then
        SQL.Add(' and rec_dt_ger_cnab is not null')
      else
        SQL.Add(' and rec_dt_ger_cnab is null')   ;


        Open;
        if qrTotal.FieldByName('Total').AsString <> '' then
        begin
            lbTotal.Caption :=  FormatFloat('###,###,##0.00', qrTotal.FieldByName('Total').AsFloat)
        end
        else
            lbTotal.Caption := '0,00';
   end;

end;

procedure TFGeraBanco.SpeedButton2Click(Sender: TObject);
var sql:string;
begin
    if wwdblookupcombo1.text = '' then begin
       showmessage('Favor informar Portador !!!');
       wwdblookupcombo1.setfocus;
    end
    else begin
        qrcparece.first;
        wwdbgrid1.Visible := false;
        Panel4.visible := true;
        progressbar1.Position := 0;
        progressbar1.Max := qrCPARECE.RecordCount;
        while not qrcparece.eof do begin
              application.ProcessMessages;
              progressbar1.position := progressbar1.position + 1;
              if qrcparecerec_ger_cnab.asstring = 'S' then begin
                 sql := 'update cparece set rec_banc = '+QuotedStr(wwdblookupcombo1.lookupvalue)+
                        ', REC_DT_GER_CNAB = '+ QuotedStr(FormatDateTime('YYYYMMDD',Date)) +'  where rec_codi = '+qrcparecerec_codi.asstring;
                 q_aux.close;
                 q_aux.sql.clear;
                 q_aux.sql.add(sql);
                 q_aux.execsql;
              end;
              qrcparece.next;
        end;
        panel4.Visible := false;
        wwdbgrid1.Visible := true;
        MessageBox(Self.Handle, 'Solicitação efetuada com sucesso!', 'Informação de Sistema', MB_OK + MB_ICONINFORMATION);
        qrcparece.first;
    end;

end;

procedure TFGeraBanco.wwDBGrid1DblClick(Sender: TObject);
var posicao:Integer;
begin
   
end;

procedure TFGeraBanco.SpeedButton3Click(Sender: TObject);
VAR
   SQL1 : string;
   P1,P2 : Integer;
begin
  SQL1 := '';
   P1 := POS('WHERE',UpperCase(qrCPARECE.SQL.Text));
   SQL1 := COPY(UpperCase(qrCPARECE.SQL.Text), P1, Length(qrCPARECE.SQL.Text));
   P2 := POS('ORDER', SQL1);
   SQL1 := Copy(SQL1,1,P2-1);
   with Q_AUX2 DO
   BEGIN
       Close;
       SQL.Clear;
       SQL.Add('UPDATE CPARECE SET REC_GER_CNAB = ''S''  '+SQL1);
       ExecSQL
   end;

   btnPesquisar.Click;
end;

procedure TFGeraBanco.SpeedButton4Click(Sender: TObject);
VAR
   SQL1 : string;
   P1,P2 : Integer;
begin
   SQL1 := '';
   P1 := POS('WHERE',UpperCase(qrCPARECE.SQL.Text));
   SQL1 := COPY(UpperCase(qrCPARECE.SQL.Text), P1, Length(qrCPARECE.SQL.Text));
   P2 := POS('ORDER', SQL1);
   SQL1 := Copy(SQL1,1,P2-1);
   with Q_AUX2 DO
   BEGIN
       Close;
       SQL.Clear;
       SQL.Add('UPDATE CPARECE SET REC_GER_CNAB = ''N''  '+SQL1);
       ExecSQL
   end;
   btnPesquisar.Click;
end;

procedure TFGeraBanco.qrCPARECEREC_GER_CNABChange(Sender: TField);
begin
  if qrCPARECE.State in [dsEdit, dsInsert] then
     qrCPARECE.Post;
end;

end.

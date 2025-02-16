unit UFatura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Db,
  Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwtable,
  ADODB;

type
  TFFatura = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel3: TPanel;
    DBG_INFI: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    Q_FAT: TwwQuery;
    DS_FAT: TwwDataSource;
    Q_IFAT: TwwQuery;
    Q_FATFAT_ID: TAutoIncField;
    Q_FATFAT_NUM: TIntegerField;
    Q_FATCOND_PGTO_ID: TIntegerField;
    Q_FATCLIN_ID: TIntegerField;
    Q_FATFAT_VALOR: TFloatField;
    Q_FATFAT_EMISSAO: TDateTimeField;
    Q_FATdescricao: TStringField;
    Q_FATCLIN_RAZA: TStringField;
    Q_IFATIFAT_ID: TAutoIncField;
    Q_IFATFAT_ID: TIntegerField;
    Q_IFATIFAT_VCTO: TDateTimeField;
    Q_IFATIFAT_VALOR: TFloatField;
    Q_IFATIFAT_GEROU: TStringField;
    DS_IFAT: TwwDataSource;
    DBCB_CLI_PESS: TwwDBComboBox;
    GroupBox1: TGroupBox;
    Label35: TLabel;
    Data1: TMaskEdit;
    Label6: TLabel;
    Data2: TMaskEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    SBT_PESQ: TSpeedButton;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit3: TwwDBEdit;
    SBT_VISU: TSpeedButton;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_FATFAT_TIPO: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    Q_AUX: TwwQuery;
    Q_AUX2: TwwQuery;
    T_IMPR: TwwTable;
    T_IMPRNUM1: TIntegerField;
    T_IMPRVALOR1: TFloatField;
    T_IMPRNUM2: TIntegerField;
    T_IMPRVALOR2: TFloatField;
    T_IMPRNUM3: TIntegerField;
    T_IMPRVALOR3: TFloatField;
    T_IMPRNUM4: TIntegerField;
    T_IMPRVALOR4: TFloatField;
    T_IMPRSALTAPAGINA: TStringField;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_CLINBFCLIN_PESSOA: TStringField;
    Q_CLINBFCLIN_NOME: TStringField;
    Q_CLINBFCLIN_CGCCPF: TStringField;
    Q_CLINBFCLIN_INSCRG: TStringField;
    Q_CLINBFCLIN_ENDERECO: TStringField;
    Q_CLINBFCLIN_ENDERECO_COMPL: TStringField;
    Q_CLINBFCLIN_ENDERECO_BAIRRO: TStringField;
    Q_CLINBFCLIN_MUNICIPIO: TStringField;
    Q_CLINBFUF_SIGLA: TStringField;
    Q_CLINBFCLIN_CEP: TStringField;
    Q_CLINBFCLIN_TEL1: TStringField;
    Q_CLINBFCLIN_TEL2: TStringField;
    Q_CLINBFCLIN_FAX: TStringField;
    Q_CLINBFCLIN_EMAIL: TStringField;
    Q_CLINBFCON_CODI: TStringField;
    Q_CLINBFCLIN_CONTRATO: TStringField;
    Q_CLINBFCLIN_UTIL_COD: TStringField;
    Q_CLINBFMUN_ID: TIntegerField;
    Q_CLINBFCLIN_WEB: TStringField;
    Q_CLINBFCLIN_ENDC: TStringField;
    Q_CLINBFCLIN_END_COMPLC: TStringField;
    Q_CLINBFCLIN_END_BAIRC: TStringField;
    Q_CLINBFCLIN_MUNICC: TStringField;
    Q_CLINBFUF_SIGLAC: TStringField;
    Q_CLINBFCLIN_CEPC: TStringField;
    Q_CLINBFCLIN_TELC: TStringField;
    Q_CLINBFCLIN_FAXC: TStringField;
    Q_CLINBFCLIN_EMAILC: TStringField;
    Q_CLINBFMUN_IDC: TIntegerField;
    Q_PAR: TwwQuery;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARPAR_CNPJ: TStringField;
    Q_PARPAR_INSC: TStringField;
    Q_PARPAR_ENDERECO: TStringField;
    Q_PARPAR_ENDERECO_COMPL: TStringField;
    Q_PARPAR_ENDERECO_BAIRRO: TStringField;
    Q_PARPAR_UF_SIGLA: TStringField;
    Q_PARPAR_CEP: TStringField;
    Q_PARPAR_TEL: TStringField;
    Q_PARPAR_FAX: TStringField;
    Q_PARPAR_EMAIL: TStringField;
    Q_PARAR_ID: TIntegerField;
    Q_PARMUN_ID: TIntegerField;
    Q_PARAR_ID_OPER: TIntegerField;
    Q_PARULT_TAG: TIntegerField;
    Q_PARPALLET_M2: TFloatField;
    Q_PARCO_SER_ID: TIntegerField;
    Q_PAREN_SER_ID: TIntegerField;
    Q_PARFLAGTELA: TStringField;
    Q_PARFLAGTELA2: TStringField;
    Q_PARFLAGTELA3: TStringField;
    Q_PARCLIN_ID: TIntegerField;
    Q_PARVERSAO: TStringField;
    Q_PARFLAGTELA_USUARIO: TStringField;
    Q_PARFLAGTELA_DATA: TDateTimeField;
    Q_PARFLAGTELA2_USUARIO: TStringField;
    Q_PARFLAGTELA2_DATA: TDateTimeField;
    Q_PARPORTA: TIntegerField;
    Q_PARHOST: TStringField;
    Q_PARCAMINHO: TStringField;
    Q_PARULT_FATURA: TIntegerField;
    Q_PARULT_NF: TIntegerField;
    Q_PARULT_CONH: TIntegerField;
    Q_PARAR_ID_AVARIA: TIntegerField;
    Q_PARULT_MINUTA: TIntegerField;
    Q_PARULT_NFPROV: TIntegerField;
    Q_PARULT_CONHPROV: TIntegerField;
    Q_PARULT_MINUTAPROV: TIntegerField;
    Q_PARCAMINHO_MATRICIAL: TStringField;
    Q_PARCAMINHO_MATRICIAL_FATURA: TStringField;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Q_AUX1: TwwQuery;
    SpeedButton5: TSpeedButton;
    Q_CLINBFCLIN_DESCONTO: TFloatField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_DESCONTO: TFloatField;
    qrBuscaOS: TADOQuery;
    qrBuscaOSOS_ID: TAutoIncField;
    STP_CORRIGE_OCE: TADOStoredProc;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit3Enter(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_PESQClick(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    function MUDALETR(LETRA: string): string;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBEdit4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    function GeraDesconto(valor: Double): Double;
    procedure DBG_INFICalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FFatura: TFFatura;
   DATAI : tdatetime ;
   DATAF : tdatetime ;
   CANCFATU : STRING ;
implementation
uses FExtenso,URelConhFAT, URelFaturas, UMenu, USenha ;
{$R *.DFM}

procedure TFFatura.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFFatura.wwDBEdit2Enter(Sender: TObject);
begin
  (Sender as twwDBEdit).Color := ClAqua;
end;

procedure TFFatura.wwDBEdit2Exit(Sender: TObject);
begin
  (Sender as twwDBEdit).Color := Clwindow ;
end;

procedure TFFatura.wwDBEdit3Enter(Sender: TObject);
begin
   (Sender as twwDBEdit).Color := ClAqua;
end;

procedure TFFatura.wwDBEdit3Exit(Sender: TObject);
begin
  (Sender as twwDBEdit).Color := Clwindow ;
end;

procedure TFFatura.wwDBEdit1Enter(Sender: TObject);
begin
  (Sender as twwDBEdit).Color := ClAqua;
end;

procedure TFFatura.wwDBEdit1Exit(Sender: TObject);
begin
  (Sender as twwDBEdit).Color := Clwindow ;
end;

procedure TFFatura.Data1Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFatura.Data1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFatura.Data2Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFatura.Data2Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFatura.wwDBLookupCombo1Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFFatura.wwDBLookupCombo1Exit(Sender: TObject);
begin
    (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFFatura.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
    Q_CLINBF.open ;
    T_ACEN.open ;
   // Q_FAT.open ;
  /// Q_IFAT.open ;
    Q_PAR.open ;

    if FMenu.SqlUsuariosNOME.Value = 'SA' then
        CheckBox1.Visible:= True;
end;

procedure TFFatura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Q_CLINBF.close ;
    Q_FAT.close ;
    Q_IFAT.close ;
    T_ACEN.close ;
    Q_PAR.close ; 
    action := cafree  ;
end;

procedure TFFatura.SBT_PESQClick(Sender: TObject);
begin
  DATAI :=  0.0 ;
  DATAF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );

        Q_FAT.SQL.clear ;
        Q_FAT.SQL.ADD('SELECT   A.*,B.descricao,C.CLIN_RAZA  FROM  ');
        Q_FAT.SQL.ADD('FATURA A,CONDICAO_PAGTO B,CLIENTENBF C    Where ');
        Q_FAT.SQL.ADD('A.COND_PGTO_ID = B.COND_PGTO_ID  ');
        Q_FAT.SQL.ADD('and   A.CLIN_ID = C.CLIN_ID ');

        if wwDBLookupCombo1.text <> '' then
           Q_FAT.SQL.ADD ( 'and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
        IF wwDBEdit1.text <> '' then
           Q_FAT.SQL.ADD ( 'and A.FAT_NUM =   ' + wwDBEdit1.text)   ;
        if DATAI <> 0.0 then
           Q_FAT.SQL.ADD ( 'and convert(Char(10),A.FAT_EMISSAO,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
           Q_FAT.SQL.ADD ( 'and convert(Char(10),A.FAT_EMISSAO,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
           Q_FAT.Open ;
           Q_IFAT.open;
end;

procedure TFFatura.SBT_VISUClick(Sender: TObject);
Const Brancos = '                                                                                                                                                              ' ;
const RESTVAL = '********************************************************************************************************************************************';
var Strextenso : string[146] ;
    STRSTRING : string ;
    F         :  TextFile ;
    CONTLINHA : integer ;
    CONTLINHA2 : integer ;
    TOTLINHA : integer ;
    TOTLINHA3 : integer ;
    CONTA : integer ;
    ORD_CONHX : Real;


///posicionar o formulario continuo na pos. 9
begin
         If MessageDlg('Confirma a Impress�o da(s) Fatura(s)?',MtConfirmation,[MbYes,
            MbNo],0)=MrNO Then abort ;

        ///;
        ///Assignfile(F,'\\elisangela\EpsonFX-2180');
        //Assignfile(F,'c:\nbf\NF.txt');

         if CheckBox1.Checked then
            Assignfile(F,'c:\atelier\fatura.txt')
         else
            Assignfile(F,Q_PARCAMINHO_MATRICIAL_FATURA.asstring);
         Rewrite(F);



         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add(' SELECT A.*,B.IFAT_VCTO,B.IFAT_VALOR,B.IFAT_NUM ') ;
         Q_AUX.Sql.Add(' from FATURA A,FATURA_ITENS B') ;
         Q_AUX.Sql.Add(' where   A.FAT_Id = B.FAT_ID ');

         IF wwDBEdit2.text <> '' then
            Q_AUX.Sql.Add(' and A.FAT_NUM >= ' + wwDBEdit2.text);
         IF wwDBEdit3.text <> '' then
            Q_AUX.Sql.Add(' and A.FAT_NUM <= ' + wwDBEdit3.text);

         if wwDBLookupCombo1.text <> '' then
            Q_AUX.SQL.ADD ( 'and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
         IF wwDBEdit1.text <> '' then
            Q_AUX.SQL.ADD ( 'and A.FAT_NUM =   ' + wwDBEdit1.text)   ;
         if DATAI <> 0.0 then
            Q_AUX.SQL.ADD ( 'and convert(Char(10),A.FAT_EMISSAO,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
         if DATAF <> 0.0 then
            Q_AUX.SQL.ADD ( 'and convert(Char(10),A.FAT_EMISSAO,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

            
         Q_AUX.open ;



         while not Q_AUX.eof do begin
             Q_CLINBF.locate('CLIN_ID',Q_AUX.fieldbyname('CLIN_ID').asstring ,[])    ;


             IF (Q_AUX.fieldbyname('FAT_TIPO').asstring = '0') or (Q_AUX.fieldbyname('FAT_TIPO').asstring = '2') then begin
                 Writeln(F,'',#27#50);
                 Writeln(F,'',#27#50);
                 //Writeln(F,'',#27#50);


                 Q_AUX2.close;
                 Q_AUX2.Sql.Clear;
                 Q_AUX2.Sql.Add('Select A.* from ORDEM_COLETA_ENTREGA A,OS B') ;
                 Q_AUX2.Sql.Add('where  A.OS_ID = B.OS_ID');
                 Q_AUX2.Sql.Add('and    A.FAT_ID =       ' +  Q_AUX.fieldbyname('FAT_ID').asstring);
                 Q_AUX2.Sql.Add('and    A.ORD_STATUS = ' + '''' + 'E' + '''' ) ;
                 Q_AUX2.Sql.Add('order by A.ORD_CONH' ) ;
                 Q_AUX2.open;




                 T_IMPR.active := false ;
                 T_IMPR.emptytable ;
                 T_IMPR.open ;
                 CONTA := 1 ;
                 while not Q_AUX2.eof do begin
                   ORD_CONHX := StrToFloat(StringReplace(Q_AUX2.fieldbyname('ORD_CONH').AsString, '-P', '', [RFReplaceAll]));
                       IF CONTA = 1 then begin
                           T_IMPR.append ;
                           //T_IMPRNUM1.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('ORD_CONH').asfloat) ;
                           T_IMPRNUM1.asstring      := formatfloat('000000',ORD_CONHX) ;

                           //T_IMPRVALOR1.asstring := Q_AUX2.fieldbyname('ORD_TOTALPREST').asstring ;
                           //miguel
                           T_IMPRVALOR1.asstring := FormatFloat('##0.00', Q_AUX2.fieldbyname('ORD_TOTALPREST').AsFloat);
                           T_IMPRSALTAPAGINA.asstring := 'S' ;
                           T_IMPR.post ;
                       end   ;
                       IF CONTA = 2 then begin
                           T_IMPR.edit ;
                           //T_IMPRNUM2.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('ORD_CONH').asfloat) ;
                           T_IMPRNUM2.asstring      := formatfloat('000000',ORD_CONHX) ;


                           //T_IMPRVALOR2.asstring := Q_AUX2.fieldbyname('ORD_TOTALPREST').asstring ;
                           T_IMPRVALOR2.asstring := FormatFloat('##0.00', Q_AUX2.fieldbyname('ORD_TOTALPREST').AsFloat);
                           T_IMPRSALTAPAGINA.asstring := 'S' ;
                           T_IMPR.post ;
                       end   ;
                       IF CONTA = 3 then begin
                           T_IMPR.edit ;
                          // T_IMPRNUM3.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('ORD_CONH').asfloat) ;
                          T_IMPRNUM3.asstring      := formatfloat('000000',ORD_CONHX) ;


                           //T_IMPRVALOR3.asstring := Q_AUX2.fieldbyname('ORD_TOTALPREST').asstring ;
                           T_IMPRVALOR3.asstring := FormatFloat('##0.00', Q_AUX2.fieldbyname('ORD_TOTALPREST').AsFloat);
                           T_IMPRSALTAPAGINA.asstring := 'S' ;
                           T_IMPR.post ;
                       end   ;
                       IF CONTA = 4 then begin
                           T_IMPR.edit ;
                           //T_IMPRNUM4.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('ORD_CONH').asfloat) ;
                           T_IMPRNUM4.asstring      := formatfloat('000000', ORD_CONHX) ;
                           //T_IMPRVALOR4.asstring := Q_AUX2.fieldbyname('ORD_TOTALPREST').asstring ;
                           T_IMPRVALOR4.asstring := FormatFloat('##0.00', Q_AUX2.fieldbyname('ORD_TOTALPREST').AsFloat);
                           T_IMPRSALTAPAGINA.asstring := 'S' ;
                           T_IMPR.post ;

                           CONTA := 0 ;
                       end   ;
                       CONTA := CONTA + 1 ;
                    Q_AUX2.next ;
                 end;

                 T_IMPR.close;
                 T_IMPR.open ;

                 IF T_IMPR.recordcount <= 24 then begin

                     CONTLINHA := 0 ;
                     while not T_IMPR.eof do begin
                         CONTLINHA := CONTLINHA + 1 ;
                         StrString :=  copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM1.asfloat) +
                                       copy(Brancos,1,15{11}) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR1.asfloat)]) +
                                       copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM2.asfloat) +
                                       copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR2.asfloat)]) +
                                       copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM3.asfloat) +
                                       copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR3.asfloat)]) +
                                       copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM4.asfloat) +
                                       copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR4.asfloat)]) ;

                         IF T_IMPRSALTAPAGINA.asstring = 'S' then begin
                            StrString := MUDALETR(StrString ) ;
                            writeln(F,StrString,#27#50);
                         end else writeln(F,'') ;
                         T_IMPR.next ;
                     end;
                     T_IMPR.close ;


                 end else begin
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      writeln(F,'') ;
                      StrString := copy(Brancos,1,44)  + '*** CONFORME DEMONSTRATIVO EM ANEXO ***' ;
                      writeln(F,StrString,#27#50);
                      CONTLINHA := 12 ;

                 end ;




                 CONTLINHA2 := 24 ;
                 TOTLINHA := CONTLINHA2 - CONTLINHA ;
                 if TOTLINHA <> 0 then begin
                     TOTLINHA3 := 0 ;
                     while not (TOTLINHA3 = TOTLINHA ) do begin
                           TOTLINHA3 := TOTLINHA3 + 1 ;
                           writeln(F,'') ;
                     end ;
                 end;

                 writeln(F,'') ;

                //miguel StrString := copy(Brancos,1,{111}129) + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('FAT_VALOR').asfloat)]) ;
                 StrString := copy(Brancos,1,{111}129) + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('FAT_VALOR').asfloat)]) ;
                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);


                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 //writeln(F,'') ;
                 //writeln(F,'') ;
                 //writeln(F,'') ;

                 //writeln(F,'') ;
                 //writeln(F,'') ;

                 StrString := copy(Brancos,1,{98}114) + formatdatetime('DD', Q_AUX.fieldbyname('FAT_EMISSAO').asdatetime) +
                              copy(Brancos,1,{6}9) + formatdatetime('MM', Q_AUX.fieldbyname('FAT_EMISSAO').asdatetime) +
                              copy(Brancos,1,{6}7) + formatdatetime('YYYY', Q_AUX.fieldbyname('FAT_EMISSAO').asdatetime);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 writeln(F,'') ;
                 ///writeln(F,'') ;
                 ///writeln(F,'') ;


                 //writeln(F,'') ;



                 StrString := copy(Brancos,1,28) + Q_AUX.fieldbyname('IFAT_NUM').asstring +
                              copy(Brancos,1,{14}23) + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('IFAT_VALOR').asfloat)]) +
                              copy(Brancos,1,{5}7) + Q_AUX.fieldbyname('IFAT_NUM').asstring +
                              copy(Brancos,1,{8}10) + formatdatetime('DD/MM/YYYY', Q_AUX.fieldbyname('IFAT_VCTO').asdatetime);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 ///writeln(F,'',#27#50);

                 ///writeln(F,'',#27#50);


                 ///writeln(F,'',#27#50);
                /// writeln(F,'',#27#50);
                /// writeln(F,'') ;

                 StrString :=  copy(Brancos,1,{42}49) + Trim(Q_CLINBFCLIN_RAZA.asstring) +
                               copy(BRANCOS,1,50  - length (Trim(Q_CLINBFCLIN_RAZA.asstring))) ;

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 //writeln(F,'') ;

                 StrString :=  copy(Brancos,1,{42}49) + Trim(Q_CLINBFCLIN_ENDERECO.asstring) +
                               copy(BRANCOS,1,30  - length (Trim(Q_CLINBFCLIN_ENDERECO.asstring))) +
                               copy(Brancos,1,2) + Trim(Q_CLINBFCLIN_ENDERECO_COMPL.asstring) +
                               copy(BRANCOS,1,20  - length (Trim(Q_CLINBFCLIN_ENDERECO_COMPL.asstring)))  +
                               copy(Brancos,1,17) + copy(Trim(Q_CLINBFCLIN_CEP.asstring),1,5) + '-' +
                               copy(Trim(Q_CLINBFCLIN_CEP.asstring),6,3) ;


                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);


                 Q_AUX2.close ;
                 Q_AUX2.Sql.Clear ;
                 Q_AUX2.Sql.Add(' Select MUN_NOME from MUNICIPIO ') ;
                 Q_AUX2.Sql.Add(' where MUN_ID = ' + Q_CLINBFMUN_ID.asstring );
                 Q_AUX2.Open ;

                 StrString := copy(Brancos,1,49) + Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring) +
                           copy(BRANCOS,1,40  - length (Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring))) +
                           copy(Brancos,1,16) + Trim(Q_CLINBFUF_SIGLA.asstring);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 StrString := copy(Brancos,1,49) + Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring) +
                           copy(BRANCOS,1,40  - length (Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring))) ;

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 Q_CLINBFCLIN_CGCCPF.EditMask := '99.999.999/9999-99;0;_' ;
                 StrString := copy(Brancos,1,49) + Trim(Q_CLINBFCLIN_CGCCPF.DisplayText) +
                              copy(BRANCOS,1,15-length (Trim(Q_CLINBFCLIN_CGCCPF.DisplayText))) +
                              copy(Brancos,1,29) + Trim(Q_CLINBFCLIN_INSCRG.DisplayText);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);
                 writeln(F,'',#27#50) ;


                 writeln(F,'',#27#50) ;
                 ///writeln(F,'',#27#50) ;
                 //writeln(F,'',#27#50) ;



                 StrExtenso := NumeroParaExtenso(Q_AUX.fieldbyname('IFAT_VALOR').asfloat) ;
                 StrExtenso := trim(Strextenso) + RESTVAL ;
                 StrExtenso := uppercase(StrExtenso) ;
                 StrString := copy(Brancos,1,42) + copy(StrExtenso,1,83)   ;

                 StrString := MUDALETR(StrString )  ;
                 writeln(F,StrString,#27#50);

                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);


             end else if (Q_AUX.fieldbyname('FAT_TIPO').asstring = '1') or (Q_AUX.fieldbyname('FAT_TIPO').asstring = '3') then begin
                 Writeln(F,'',#27#48);
                 Writeln(F,'',#27#48);
                 Writeln(F,'',#27#48);


                 Q_AUX2.close;
                 Q_AUX2.Sql.Clear;
                 Q_AUX2.Sql.Add('Select * from NF') ;
                 Q_AUX2.Sql.Add('where FAT_ID='+Q_AUX.fieldbyname('FAT_ID').asstring);
                 Q_AUX2.Sql.Add('ORDER BY NFI_NUMERO');
                 Q_AUX2.open;


                 T_IMPR.active := false ;
                 T_IMPR.emptytable ;
                 T_IMPR.open ;
                 CONTA := 1 ;
                 while not Q_AUX2.eof do begin
                       IF CONTA = 1 then begin
                           T_IMPR.append ;
                           T_IMPRNUM1.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('NFI_NUMERO').asfloat) ;
                           T_IMPRVALOR1.asstring    := Q_AUX2.fieldbyname('NFI_TOTA').asstring ;
                           T_IMPRSALTAPAGINA.asstring := 'S' ;
                           T_IMPR.post ;
                       end   ;
                      IF CONTA = 2 then begin
                           T_IMPR.edit ;
                           T_IMPRNUM2.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('NFI_NUMERO').asfloat) ;
                           T_IMPRVALOR2.asstring := Q_AUX2.fieldbyname('NFI_TOTA').asstring ;
                           T_IMPRSALTAPAGINA.asstring := 'N' ;
                           T_IMPR.post ;
                       end   ;
                       IF CONTA = 3 then begin
                           T_IMPR.edit ;
                           T_IMPRNUM3.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('NFI_NUMERO').asfloat) ;
                           T_IMPRVALOR3.asstring := Q_AUX2.fieldbyname('NFI_TOTA').asstring ;
                           T_IMPRSALTAPAGINA.asstring := 'N' ;
                           T_IMPR.post ;
                       end   ;
                       IF CONTA = 4 then begin
                           T_IMPR.edit ;
                           T_IMPRNUM4.asstring      := formatfloat('000000',Q_AUX2.fieldbyname('NFI_NUMERO').asfloat) ;
                           T_IMPRVALOR4.asstring := Q_AUX2.fieldbyname('NFI_TOTA').asstring ;
                           T_IMPRSALTAPAGINA.asstring := 'S' ;
                           T_IMPR.post ;

                           CONTA := 0 ;
                       end   ;
                       CONTA := CONTA + 1 ;
                    Q_AUX2.next ;
                 end;

                 T_IMPR.close;
                 T_IMPR.open ;

                CONTLINHA := 0 ;
                 while not T_IMPR.eof do begin
                     CONTLINHA := CONTLINHA + 1 ;
                     StrString :=  copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM1.asfloat) +
                                   copy(Brancos,1,11) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR1.asfloat)]) +
                                   copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM2.asfloat) +
                                   copy(Brancos,1,11) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR2.asfloat)]) +
                                   copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM3.asfloat) +
                                   copy(Brancos,1,11) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR3.asfloat)]) +
                                   copy(Brancos,1,3) + FormatFloat('000000',T_IMPRNUM4.asfloat) +
                                   copy(Brancos,1,11) + Format('%10s',[FormatFloat('########,##0.00',T_IMPRVALOR4.asfloat)]) ;

                   //  IF T_IMPRSALTAPAGINA.asstring = 'S' then begin
                        StrString := MUDALETR(StrString ) ;
                        writeln(F,StrString,#27#48);
                   //  end else writeln(F,'',#27#48);

                     T_IMPR.next ;
                end;
                T_IMPR.close ;

                 CONTLINHA2 := 32 ;
                 TOTLINHA := CONTLINHA2 - CONTLINHA ;
                 if TOTLINHA <> 0 then begin
                     TOTLINHA3 := 0 ;
                     while not (TOTLINHA3 = TOTLINHA ) do begin
                           TOTLINHA3 := TOTLINHA3 + 1 ;
                           writeln(F,'',#27#48);
                     end ;
                 end;

                 writeln(F,'',#27#48);

                 StrString := copy(Brancos,1,111) + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('FAT_VALOR').asfloat)]) ;

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#48);


                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 //writeln(F,'') ;
                 //writeln(F,'') ;

                 StrString := copy(Brancos,1,98) + formatdatetime('DD', Q_AUX.fieldbyname('FAT_EMISSAO').asdatetime) +
                              copy(Brancos,1,6) + formatdatetime('MM', Q_AUX.fieldbyname('FAT_EMISSAO').asdatetime) +
                              copy(Brancos,1,6) + formatdatetime('YYYY', Q_AUX.fieldbyname('FAT_EMISSAO').asdatetime);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#48);

                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 //writeln(F,'') ;



               StrString := copy(Brancos,1,28) + Q_AUX.fieldbyname('IFAT_NUM').asstring +
                              copy(Brancos,1,14) + Format('%10s',[FormatFloat('########,##0.00',Q_AUX.fieldbyname('IFAT_VALOR').asfloat)]) +
                              copy(Brancos,1,5) + Q_AUX.fieldbyname('IFAT_NUM').asstring +
                              copy(Brancos,1,8) + formatdatetime('DD/MM/YYYY', Q_AUX.fieldbyname('IFAT_VCTO').asdatetime);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#48);

                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#50);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 ///writeln(F,'',#27#50);
                 ///writeln(F,'',#27#50);
                 ///writeln(F,'') ;

                 StrString :=  copy(Brancos,1,42) + Trim(Q_CLINBFCLIN_RAZA.asstring) +
                               copy(BRANCOS,1,50  - length (Trim(Q_CLINBFCLIN_RAZA.asstring))) ;

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 //writeln(F,'') ;

                 StrString :=  copy(Brancos,1,42) + Trim(Q_CLINBFCLIN_ENDERECO.asstring) +
                               copy(BRANCOS,1,30  - length (Trim(Q_CLINBFCLIN_ENDERECO.asstring))) +
                               copy(Brancos,1,2) + Trim(Q_CLINBFCLIN_ENDERECO_COMPL.asstring) +
                               copy(BRANCOS,1,20  - length (Trim(Q_CLINBFCLIN_ENDERECO_COMPL.asstring)))  +
                               copy(Brancos,1,9) + copy(Trim(Q_CLINBFCLIN_CEP.asstring),1,5) + '-' +
                               copy(Trim(Q_CLINBFCLIN_CEP.asstring),6,3) ;


                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);


                 Q_AUX2.close ;
                 Q_AUX2.Sql.Clear ;
                 Q_AUX2.Sql.Add(' Select MUN_NOME from MUNICIPIO ') ;
                 Q_AUX2.Sql.Add(' where MUN_ID = ' + Q_CLINBFMUN_ID.asstring );
                 Q_AUX2.Open ;

                 StrString := copy(Brancos,1,42) + Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring) +
                           copy(BRANCOS,1,40  - length (Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring))) +
                           copy(Brancos,1,10) + Trim(Q_CLINBFUF_SIGLA.asstring);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 StrString := copy(Brancos,1,42) + Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring) +
                           copy(BRANCOS,1,40  - length (Trim(Q_AUX2.fieldbyname('MUN_NOME').asstring))) ;

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);

                 Q_CLINBFCLIN_CGCCPF.EditMask := '99.999.999/9999-99;0;_' ;
                 StrString := copy(Brancos,1,42) + Trim(Q_CLINBFCLIN_CGCCPF.DisplayText) +
                              copy(BRANCOS,1,15-length (Trim(Q_CLINBFCLIN_CGCCPF.DisplayText))) +
                              copy(Brancos,1,25) + Trim(Q_CLINBFCLIN_INSCRG.DisplayText);

                 StrString := MUDALETR(StrString ) ;
                 writeln(F,StrString,#27#50);
                 writeln(F,'',#27#50) ;


                 StrExtenso := NumeroParaExtenso(Q_AUX.fieldbyname('iFAT_VALOR').asfloat) ;
                 StrExtenso := trim(Strextenso) + RESTVAL ;
                 StrExtenso := uppercase(StrExtenso) ;
                 StrString := copy(Brancos,1,36) + copy(StrExtenso,1,83)   ;

                 StrString := MUDALETR(StrString )  ;
                 writeln(F,StrString,#27#50);

                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
                 writeln(F,'',#27#48);
             end ;
             Q_AUX.next ;
         end ;
         closefile(f) ;




end;

function TFFatura.MUDALETR(LETRA: string): string;
var
  NOVALETRA         : string;
  s                 : string;
  M_DataLEN, i      : Integer;
begin
  NOVALETRA := '';
  M_DataLEN := Length(LETRA);
  for i := 1 to M_DataLEN do
  begin
    if T_Acen.FindKey([Ord(LETRA[i])]) then
      s := T_Acen.FieldByName('ACE_NOVO').AsString
    else
      s := LETRA[i];
    NOVALETRA := NOVALETRA + s;
  end;
  Result := NOVALETRA;
end;


procedure TFFatura.SpeedButton1Click(Sender: TObject);
begin
   Panel1.visible := true ;
   Panel1.left := 0 ;
   panel3.visible := false ;
   wwdbedit4.setfocus;
   Label3.caption := 'Relat�rio de Conhecimentos por Fatura'  ;

end;

procedure TFFatura.SpeedButton2Click(Sender: TObject);
begin
   Panel1.visible := false ;
   panel3.visible := true  ;

   CANCFATU := '' ;
end;

procedure TFFatura.BitBtn1Click(Sender: TObject);
begin
   IF   CANCFATU = '' then begin

       IF ((wwdbedit4.text <> '') or
           (wwdbedit5.text <> '')) then begin

            IF (strtoint(wwdbedit4.text) >  strtoint(wwdbedit5.text)) then begin
               MessageDlg('N� da Fatura inicial � maior do que a final !',mtWarning,[mbok],0);
               wwdbedit4.setfocus;
               abort;
            end ;

           //efetuamos a verifica��o dos valores dos conhecimentos da tabela OEC_AUX
           qrBuscaOS.Close;
           qrBuscaOS.Parameters[0].Value := StrToInt(wwDBEdit4.Text);
           qrBuscaOS.Parameters[1].Value := StrToInt(wwDBEdit5.Text);
           qrBuscaOS.Open;

           while not qrBuscaOS.Eof do
           begin
                STP_CORRIGE_OCE.Parameters[0].Value := qrBuscaOSOS_ID.Value;
                STP_CORRIGE_OCE.ExecProc;
                qrBuscaOS.Next;
           end;
           qrBuscaOS.CLOSE;
           
           Application.CreateForm(TFRelConhFAT,FRelConhFAT);
           FRelConhFAT.ESTOQ.Preview;
           FRelConhFAT.Close;

       end else begin
           MessageDlg('Escolha um n�mero de Fatura!',mtWarning,[mbok],0);
           wwdbedit4.setfocus;
       end ;
   end else begin
        If MessageDlg('Confirma o Cancelamento da(s) Fatura(s)  ?',MtConfirmation,[MbYes,
        MbNo],0)=MrNO Then abort ; 


        IF ((wwdbedit4.text <> '') and
            (wwdbedit5.text <> '')) then begin

            IF (strtoint(wwdbedit4.text) >  strtoint(wwdbedit5.text)) then begin
               MessageDlg('N� da Fatura inicial � maior do que a final !',mtWarning,[mbok],0);
               wwdbedit4.setfocus;
               abort;
            end ;

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('SELECT * FROM fatura');
             Q_AUX.Sql.Add('where FAT_ID is not null');
             IF wwDBEdit4.text <> '' then
                Q_AUX.SQL.add('and  FAT_NUM  >= ' + '''' + wwDBEdit4.text + '''') ;

             IF wwDBEdit5.text <> '' then
                Q_AUX.SQL.add('and  FAT_NUM  <= ' + '''' + wwDBEdit5.text + '''') ;
             Q_AUX.Sql.Add('order by FAT_ID');
             Q_AUX.open;

             //criamos transa��o para evitar erros
             try
                   FSenha.Dtb_BaseDados.StartTransaction;
                   Q_AUX.first ;
                   while not Q_AUX.eof do begin

                       Q_AUX1.close;
                       Q_AUX1.Sql.Clear;
                       Q_AUX1.Sql.Add('UPDATE OS set FAT_ID = null');
                       Q_AUX1.SQL.add('where  FAT_ID  = ' + Q_AUX.fieldbyname('FAT_ID').asstring);
                       Q_AUX1.ExecSql;

                       Q_AUX1.close;
                       Q_AUX1.Sql.Clear;
                       Q_AUX1.Sql.Add('DELETE FROM fatura_ITENS');
                       Q_AUX1.SQL.add('where  FAT_ID  = ' + Q_AUX.fieldbyname('FAT_ID').asstring);
                       Q_AUX1.ExecSql;

                        //CAN
                       Q_AUX1.Close;
                       Q_AUX1.SQL.Clear;
                       Q_AUX1.SQL.Add('EXEC NFSO_CANCELA_FATURA ' + Q_AUX.fieldbyname('FAT_ID').asstring);
                       Q_AUX1.ExecSQL;

                       //atualiza OE dsvinculando da fatura
                       Q_AUX1.close;
                       Q_AUX1.Sql.Clear;
                       Q_AUX1.Sql.Add('update ordem_coleta_entrega set fat_id = null ');
                       Q_AUX1.SQL.add('where  FAT_id  = ' + Q_AUX.fieldbyname('FAT_ID').asstring);
                       Q_AUX1.ExecSql;

                       //apaga vincula��o fatura - os
                       Q_AUX1.close;
                       Q_AUX1.Sql.Clear;
                       Q_AUX1.Sql.Add('DELETE FROM OS_FAT');
                       Q_AUX1.SQL.add('where  FAT_id  = ' + Q_AUX.fieldbyname('FAT_ID').asstring);
                       Q_AUX1.ExecSql;


                       




                       Q_AUX.next ;
                   end ;

                   Q_AUX1.close;
                   Q_AUX1.Sql.Clear;
                   Q_AUX1.Sql.Add('DELETE FROM fatura');
                   Q_AUX1.SQL.add('where  FAT_NUM  >= ' + '''' + wwDBEdit4.text + '''') ;
                   Q_AUX1.SQL.add('and    FAT_NUM  <= ' + '''' + wwDBEdit5.text + '''') ;
                   Q_AUX1.ExecSql;


                   MessageDlg('Fatura(s) cancelada(s) com sucesso !',mtWarning,[mbok],0);
                   Panel1.visible := false ;
                   panel3.visible := true  ;
                   CANCFATU := '' ;
                   FSenha.Dtb_BaseDados.Commit
             except
                 on e : Exception do
                 begin
                     FSenha.Dtb_BaseDados.Rollback;
                     MessageBox(Self.Handle, PChar('Aconteceu um erro ao efetuar sua solicita��o:' +
                                                   #13 + e.message + #13 +
                                                   'Nenhum altera��o foi efetuada!'),
                                                   'Erro', mb_ok + MB_ICONWARNING);
                 end;
             end;

             Q_FAT.close;
             Q_FAT.open ;
       end else begin
           MessageDlg('Preencha os dois campos(de...at�) com o N� da Fatura !',mtWarning,[mbok],0);
           wwdbedit4.setfocus;
       end ;

   end ;


end;

procedure TFFatura.SpeedButton4Click(Sender: TObject);
begin
   CANCFATU := 'S' ;
   Panel1.visible := true ;
   Panel1.left := 0 ;
   panel3.visible := false ;
   wwdbedit4.setfocus;
   Label3.caption := 'Cancelamento de Fatura(s)'  ;

end;

procedure TFFatura.wwDBEdit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  wwDBEdit5.text := wwDBEdit4.text ; 
end;

procedure TFFatura.SpeedButton5Click(Sender: TObject);
begin
           Application.CreateForm(TFRelFaturas,FRelFaturas);
           FRelFaturas.ConsNF.Preview;
           FRelFaturas.Close;
end;

function TFFatura.GeraDesconto(valor: Double): Double;
var novovalor, desconto : Double;
begin

   Q_CLIN.close;
   Q_CLIN.Params[0].AsInteger := Q_CLINBFCLIN_ID.AsInteger;
   Q_CLIN.Open;

   novoValor := valor;

   if (Q_CLINCLIN_DESCONTO.AsString <> '') then
   begin
        if  Q_CLINCLIN_DESCONTO.AsFloat > 0 then
        begin
            Desconto := Q_CLINCLIN_DESCONTO.Value;
            novoValor := valor - ( (valor * Desconto) / 100 );
        end
        else
            novoValor := valor;
   end;
   Result := novoValor;
end;

procedure TFFatura.DBG_INFICalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if (Q_FATFAT_TIPO.Value = '2') or (Q_FATFAT_TIPO.Value = '3') then  begin
       ABrush.Color := $00A6FFFF;
       AFont.Color:= clBlue;
   end;
end;

end.

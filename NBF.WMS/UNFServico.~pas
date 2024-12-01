unit UNFServico;

// where
///CLIN_ID = :NFI_DEST_CLI


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwdblook, Mask, wwdbedit, DBCtrls, Db,
  DBTables, Wwdbigrd, Grids, Wwdbgrid, Wwdatsrc, Wwquery, wwstorep, Wwtable;

type
  TFNFServico = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBE_NFI_CODI: TwwDBEdit;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText8: TDBText;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Panel5: TPanel;
    DBText16: TDBText;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit13: TwwDBEdit;
    Panel7: TPanel;
    Label40: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    DBText4: TDBText;
    Q_NF: TwwQuery;
    DS_NF: TwwDataSource;
    DBNavigator1: TDBNavigator;
    DBG_RAAT: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFTDOC_ID: TIntegerField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_TOTA: TFloatField;
    Q_NFNFI_PRESTSERV: TStringField;
    Q_NFNFI_DISCRIM: TStringField;
    UPD_NF: TUpdateSQL;
    Q_NFNFI_EMIT_ORIG: TStringField;
    Q_NFNFI_DEST_ORIG: TStringField;
    Q_NFNFI_DEST_CLI: TIntegerField;
    Q_NFNFI_DEST_NOME: TStringField;
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_DEST_ENDERECO: TStringField;
    Q_NFNFI_DEST_COMPL: TStringField;
    Q_NFNFI_DEST_BAIRRO: TStringField;
    Q_NFNFI_DEST_UF_SIGLA: TStringField;
    Q_NFNFI_DEST_CEP: TStringField;
    Q_NFNFI_DEST_TEL: TStringField;
    Q_NFNFI_DEST_FAX: TStringField;
    Q_NFNFI_DEST_CGC: TStringField;
    Q_NFNFI_DEST_INSCRG: TStringField;
    Q_NFNFI_DEST_INSCTRB: TStringField;
    Q_NFNFI_DEST_PESS: TStringField;
    Q_NFNFI_VDES: TFloatField;
    Q_NFNFI_VFRE: TFloatField;
    Q_NFNFI_VSEG: TFloatField;
    Q_NFNFI_BIPI: TFloatField;
    Q_NFNFI_VIPI: TFloatField;
    Q_NFNFI_BICM: TFloatField;
    Q_NFNFI_VICM: TFloatField;
    Q_NFNFI_VMER: TFloatField;
    Q_NFNFI_DSAI: TDateTimeField;
    Q_NFNFI_HSAI: TDateTimeField;
    Q_NFNFI_TRAN: TStringField;
    Q_NFNFI_PLAC: TStringField;
    Q_NFNFI_UF_SIGLA: TStringField;
    Q_NFNFI_MARC: TStringField;
    Q_NFNFI_QTDE: TIntegerField;
    Q_NFNFI_ESPE: TStringField;
    Q_NFNFI_PLIQ: TFloatField;
    Q_NFNFI_PBRU: TFloatField;
    Q_NFNFI_VOL: TFloatField;
    Q_NFNFI_TFRE: TStringField;
    Q_NFNFI_DEMI: TDateTimeField;
    Q_NFCFA_ID: TIntegerField;
    Q_NFOS_ID: TIntegerField;
    Q_NFMUN_ID: TIntegerField;
    Q_NFNFI_MARCADOR: TStringField;
    Q_NFNFI_DTENTREGA: TDateTimeField;
    Q_NFMANI_ID: TIntegerField;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_MOVESTQ: TStringField;
    Q_NFNFI_TRANS: TStringField;
    Q_NFTEXTO_LIVRE: TMemoField;
    Q_NFNFI_DTENTREGA_FIM: TDateTimeField;
    Q_NFNFI_ENTREGA: TStringField;
    Q_NFNFI_COBRAR: TStringField;
    Q_NFNFI_CLONE: TStringField;
    Q_NFNFI_QTDEPALLET: TIntegerField;
    Q_NFNFI_QTDEUV: TFloatField;
    Q_NFTPRO_ID: TIntegerField;
    Q_NFNFI_MARCADOR_NFRS: TStringField;
    Q_NFNFI_NFRS_REJEITADA: TStringField;
    Q_NFNFI_RETORNADA: TStringField;
    Q_NFNFI_GEROUNFE: TStringField;
    Q_NFNFI_REDESPACHO: TStringField;
    Q_NFORD_ID: TIntegerField;
    Q_NFTRANS_ID: TIntegerField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_NFCLINraza: TStringField;
    Q_AUX: TwwQuery;
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
    Q_PARPALLET_M2: TFloatField;
    Q_PARULT_TAG: TIntegerField;
    Q_PARCO_SER_ID: TIntegerField;
    Q_PAREN_SER_ID: TIntegerField;
    Q_PARCLIN_ID: TIntegerField;
    Q_PARFLAGTELA: TStringField;
    Q_PARFLAGTELA2: TStringField;
    Q_PARFLAGTELA3: TStringField;
    Q_PARVERSAO: TStringField;
    Q_PARFLAGTELA_USUARIO: TStringField;
    Q_PARFLAGTELA_DATA: TDateTimeField;
    Q_PARFLAGTELA2_USUARIO: TStringField;
    Q_PARFLAGTELA2_DATA: TDateTimeField;
    Q_PARPORTA: TIntegerField;
    Q_PARHOST: TStringField;
    Q_PARCAMINHO: TStringField;
    Q_CLIN2: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    Q_NFEmitDESC: TStringField;
    Panel4: TPanel;
    Panel6: TPanel;
    Label6: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Q_COND: TwwQuery;
    Q_CONDDescricao: TStringField;
    Q_CONDNum_Parcelas: TFloatField;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDPagamento: TStringField;
    Q_CONDFora: TStringField;
    STP_GERAFATURA: TwwStoredProc;
    Q_NFFAT_ID: TIntegerField;
    SpeedButton1: TSpeedButton;
    T_ACEN: TwwTable;
    T_ACENACE_CASC: TIntegerField;
    T_ACENACE_DESC: TStringField;
    T_ACENACE_NOVO: TStringField;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
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
    Q_CTT: TwwQuery;
    Q_CTTMIN_M2: TFloatField;
    Q_AUX2: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_NFAfterPost(DataSet: TDataSet);
    procedure Q_NFAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBEdit13Enter(Sender: TObject);
    procedure wwDBEdit13Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBEdit2Enter(Sender: TObject);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure wwDBEdit1Enter(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure Q_NFNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DS_NFDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    function  MUDALETR(LETRA: string): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNFServico: TFNFServico;

implementation
uses USenha,UFaturamento ;

{$R *.DFM}
procedure TFNFServico.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFNFServico.Q_NFAfterPost(DataSet: TDataSet);
var
   STRNF : string ; {121212}
begin
   STRNF := Q_NFNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF.close ;
   Q_NF.Open ;

   if STRNF = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(NFI_CODI) as Numero from NF ' ) ;
     Q_AUX.open ;
     STRNF := Q_AUX.fieldbyname('Numero').asstring ;
   end  ;
     Q_NF.locate('NFI_CODI',STRNF,[])    ;

end ;
procedure TFNFServico.Q_NFAfterDelete(DataSet: TDataSet);
var
  STRNF : string ; {121212}
begin
   STRNF := Q_NFNFI_CODI.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NF])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
   Q_NF.close ;
   Q_NF.Open ;

   If (StrNF <> '') then begin
       Q_NF.close ;
       Q_NF.Open ;
       Q_NF.locate('NFI_CODI',StrNF,[]);
   end ;
end;

procedure TFNFServico.FormCreate(Sender: TObject);
begin
  Q_NF.open ;
  Q_CLIN.open ;
  Q_PAR.open ;
  Q_CLIN2.open ;
  Q_CTT.open ;

  IF GERAFATURA = 'S' then  Q_NF.insert ; 

  Q_COND.open ;
  T_ACEN.open ;
  Q_CLINBF.open ;





end;

procedure TFNFServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   {Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add(' update NF SET NFI_FATURADA = ' + Q_NFNFI_CODI.asstring);
   Q_AUX.Sql.Add(' where OS_ID in(SELECT A.OS_ID FROM OS_CALCULO A,OS B,SERVICO C ');
   Q_AUX.Sql.Add(' WHERE A.OS_ID = B.OS_ID  ');
   Q_AUX.Sql.Add(' and   A.SER_ID = C.SER_ID  ');
   Q_AUX.Sql.Add(' and   C.SER_COMPOSICAO = ' + '''' + 'N' + '''');
   Q_AUX.Sql.Add(' and   B.OS_MARCADOR    = ' + '''' + '*' + '''' +')');
   Q_AUX.ExecSql; }


  Q_NF.close    ;
  Q_CLIN.close  ;
  Q_PAR.close   ;
  Q_CLIN2.close ;
  Q_COND.close  ;
  Q_CLINBF.close ;
  Q_CTT.close ; 
  GERAFATURA := '' ;
  action := cafree ;
end;

procedure TFNFServico.wwDBEdit13Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFServico.wwDBEdit13Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFServico.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFNFServico.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFNFServico.wwDBEdit2Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFServico.wwDBEdit2Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFServico.wwDBEdit1Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Claqua ;
end;

procedure TFNFServico.wwDBEdit1Exit(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := Clwindow  ;
end;

procedure TFNFServico.Q_NFNewRecord(DataSet: TDataSet);
var

   TOTALNOVO : real ;
begin
     Q_NFNFI_DEST_CLI.asstring := FFaturamento.Q_CLINCLIN_id.asstring ;
     Q_NFNFI_DEMI.asdatetime :=  NOW     ;
     Q_NFNFI_EMIT_CLI.ASSTRING := Q_PARCLIN_ID.ASSTRING ;
     ///Q_NFNFI_FATURADA.asstring := 'N' ;
     //////Q_NFOS_ID.asstring := Q_OSOS_ID.ASSTRING ;

     Q_AUX2.close;
     Q_AUX2.Sql.Clear;
     Q_AUX2.Sql.Add('Select SUM(A.CALC_TOTAL) as PARCIAL from os_CALCULO A,OS_ESPECIFICACOES B,OS C  ') ;
     Q_AUX2.Sql.Add('where B.UCOB_ID = ' + inttostr(3) );
     Q_AUX2.Sql.Add('and   A.OS_ESPEC_ID = B.OS_ESPEC_ID  ') ;
     Q_AUX2.Sql.Add('and   C.OS_ID = A.OS_ID  ') ;
     Q_AUX2.Sql.Add('and   C.OS_MARCADOR = ' + '''' + '*' + '''' ) ;
     Q_AUX2.open ;

     TOTALNOVO := 0 ;
     IF Q_CTTMIN_M2.asfloat > 0 then begin
         IF Q_AUX2.fieldbyname('PARCIAL').asfloat <  Q_CTTMIN_M2.asfloat then
            TOTALNOVO := (Q_CTTMIN_M2.asfloat - Q_AUX2.fieldbyname('PARCIAL').asfloat );

     end ;

     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add('SELECT SUM(ROUND(A.CALC_TOTAL,2)) as TOTNOTA FROM OS_CALCULO A,OS B,SERVICO C ');
     Q_AUX.Sql.Add('WHERE  A.OS_ID = B.OS_ID  ');
     Q_AUX.Sql.Add('and    A.SER_ID = C.SER_ID  ');
     Q_AUX.Sql.Add('and    C.SER_COMPOSICAO = ' + '''' + 'N' + '''');
     Q_AUX.Sql.Add('and    B.OS_MARCADOR    = ' + '''' + '*' + '''') ;
     Q_AUX.open ;

     Q_NFNFI_TOTA.asfloat   :=  (Q_AUX.fieldbyname('TOTNOTA').asfloat + TOTALNOVO) ;
     Q_NFCFA_ID.asinteger    :=   561;
     Q_NFTDOC_ID.asinteger   :=   16 ;
end;

procedure TFNFServico.BitBtn3Click(Sender: TObject);
begin
        Panel3.enabled  :=  false ;
        Panel2.enabled  :=  false ;
        
        Panel4.visible := true  ;
        Panel4.left := 151;
        Panel4.top  := 89;
        wwDBLookupCombo3.setfocus ;


        
end;

procedure TFNFServico.DS_NFDataChange(Sender: TObject; Field: TField);
begin
   IF Q_NFFAT_ID.asstring =  '' then
      Bitbtn3.enabled := true
    else
      Bitbtn3.enabled := false ;

end;

procedure TFNFServico.BitBtn1Click(Sender: TObject);
begin
   Panel4.visible := false  ;
    Panel3.enabled  :=  true ;
    Panel2.enabled  :=  true ;

end;

procedure TFNFServico.BitBtn2Click(Sender: TObject);
begin
    If  wwDBLookupCombo3.text = '' then begin
        MessageDlg('Condição de Pagto. deve ser preenchida !',mtWarning,[mbok],0);
        wwDBLookupCombo3.SetFocus;
        Abort;
    end ;


    if MessageDlg('Confirma geração da Fatura Armazém  ?  '
                             ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

       Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('Update OS Set NFI_CODI = ' + Q_NFNFI_CODI.asstring);
       Q_AUX.Sql.Add('Where  OS_MARCADOR = ' + '''' + '*' + '''');
       Q_AUX.ExecSql;

        try
        Begin
           STP_GERAFATURA.ParamByName('@VALORCHEIO').Value    :=  Q_NFNFI_TOTA.asfloat ;
           STP_GERAFATURA.ParamByName('@CLIN_ID').Value       :=  Q_NFNFI_DEST_CLI.asinteger ;
           STP_GERAFATURA.ParamByName('@COND_PGTO_ID').Value  :=  Q_CONDCond_Pgto_ID.asinteger ;
           //STP_GERAFATURA.ParamByName('@OS_ID').Value  :=  FFaturamento.Q_OSOS_ID.asinteger ;
           STP_GERAFATURA.ParamByName('@TIPO').Value     :=  inttostr(FFaturamento.RadioGroup1.itemindex) ;
           STP_GERAFATURA.Execproc  ;

        End
       except
         begin
           MessageDlg('Geração de Fatura Armazém, com erro !',mtInformation,[mbOk], 0);
           abort  ;
         end;
       end;


        MessageDlg('Fatura Armazém foi gerada com sucesso !',mtInformation,[mbOk], 0);

    end ;
    Panel4.visible  := false  ;
    Panel3.enabled  :=  true ;
    Panel2.enabled  :=  true ;

    Q_AUX.close ;
    Q_AUX.Sql.Clear ;
    Q_AUX.Sql.Add(' update OS SET OS_MARCADOR = ' + '''' + '' + '''');
    Q_AUX.ExecSql;


end;

procedure TFNFServico.SpeedButton1Click(Sender: TObject);
Const Brancos = '                                                                                                                                                              ' ;
var Strextenso : string[146] ;
    STRSTRING : string ;
    F         :  TextFile ;
    CONTLINHA : integer ;
    CONTLINHA2 : integer ;
    TOTLINHA : integer ;
    TOTLINHA3 : integer ;
    CONTA : integer ;
///posicionar o formulario continuo na pos. 9
begin
         If MessageDlg('Confirma a Impressão ?',MtConfirmation,[MbYes,
            MbNo],0)=MrNO Then abort ;

         Assignfile(F,'LPT1');
         //Assignfile(F,'NF.txt');
         Rewrite(F);


         Writeln(F,'',#27#50);
         Writeln(F,'',#27#50);
         Writeln(F,'',#27#50);
       /// Writeln(F,'',#27#48);
       ///  Writeln(F,'',#27#48);
       ///  Writeln(F,'',#27#48);

         StrString := copy(Brancos,1,105) + FormatFloat('000000',Q_NFNFI_NUMERO.asfloat) ;

         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#49);
         //writeln(F,'',#27#48);
         //writeln(F,'',#27#48);


         StrString := copy(Brancos,1,89) + 'SERVIÇOS' ;
         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#48);

         StrString := copy(Brancos,1,91) + Q_NFNFI_PRESTSERV.asstring ;
         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);


         StrString := copy(Brancos,1,83) + formatdatetime('DD', Q_NFNFI_DEMI.asdatetime) +
                      copy(Brancos,1,6) + formatdatetime('mmmm', Q_NFNFI_DEMI.asdatetime) +
                      copy(Brancos,1,15) + formatdatetime('YY', Q_NFNFI_DEMI.asdatetime);
         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);

         StrString := copy(Brancos,1,20) + Q_NFCLINraza.asstring ;
         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);

         StrString :=  copy(Brancos,1,20) + Trim(Q_CLINBFCLIN_ENDERECO.asstring) +
                       copy(BRANCOS,1,30  - length (Trim(Q_CLINBFCLIN_ENDERECO.asstring))) +
                       copy(Brancos,1,2) + Trim(Q_CLINBFCLIN_ENDERECO_COMPL.asstring) +
                       copy(BRANCOS,1,20  - length (Trim(Q_CLINBFCLIN_ENDERECO_COMPL.asstring)))  ;

         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);


         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add(' Select MUN_NOME from MUNICIPIO ') ;
         Q_AUX.Sql.Add(' where MUN_ID =' + Q_CLINBFMUN_ID.asstring );
         Q_AUX.Open ;

         Q_CLINBFCLIN_CGCCPF.EditMask := '99.999.999/9999-99;0;_' ;
         StrString := copy(Brancos,1,20) + Trim(Q_AUX.fieldbyname('MUN_NOME').asstring) +
                   copy(BRANCOS,1,40  - length (Trim(Q_AUX.fieldbyname('MUN_NOME').asstring))) +
                   copy(Brancos,1,6) + Trim(Q_CLINBFUF_SIGLA.asstring)+
                   copy(Brancos,1,22) + Trim(Q_CLINBFCLIN_CGCCPF.DisplayText) +
                   copy(BRANCOS,1,15-length (Trim(Q_CLINBFCLIN_CGCCPF.DisplayText)));

         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);

         StrString :=  copy(Brancos,1,90) + Trim(Q_CLINBFCLIN_INSCRG.DisplayText);

         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);



         StrString :=  copy(Brancos,1,15) + '0000000001' +
                       copy(Brancos,1,2) + copy(Q_NFNFI_DISCRIM.asstring,1,55) +
                       copy(BRANCOS,1,55 - length (Trim(Q_NFNFI_DISCRIM.asstring))) +

                       copy(Brancos,1,4) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_TOTA.asfloat)]) +
                       copy(Brancos,1,15) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_TOTA.asfloat)]) ;


         StrString := MUDALETR(StrString ) ;
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
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);
         writeln(F,'',#27#50);

         StrString := copy(Brancos,1,111) + Format('%10s',[FormatFloat('########,##0.00',Q_NFNFI_TOTA.asfloat)]) ;

         StrString := MUDALETR(StrString ) ;
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
         writeln(F,'',#27#49);
         writeln(F,'',#27#49);
         writeln(F,'',#27#49);
         writeln(F,'',#27#49);

         StrString := copy(Brancos,1,9) + FormatFloat('000000',Q_NFNFI_NUMERO.asfloat) ;

         StrString := MUDALETR(StrString ) ;
         writeln(F,StrString,#27#50);

         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         writeln(F,'',#27#48);
         //writeln(F,'',#27#48);
         //writeln(F,'',#27#48);



         closefile(f) ;


end;


function TFNFServico.MUDALETR(LETRA: string): string;
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

end.

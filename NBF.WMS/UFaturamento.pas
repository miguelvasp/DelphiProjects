unit UFaturamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  Mask, Db, Wwdatsrc, DBTables, Wwquery, wwstorep, wwdbedit, Wwdotdot,
  Wwdbcomb, jpeg, RzButton ;

type
  TFFaturamento = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label35: TLabel;
    Data1: TMaskEdit;
    Data2: TMaskEdit;
    Label6: TLabel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DBG_INFI: TwwDBGrid;
    Q_OS: TwwQuery;
    Q_OSOS_DATA: TDateTimeField;
    Q_OSOS_ID: TAutoIncField;
    Q_OSCLIN_ID: TIntegerField;
    Q_OSCTT_ID: TIntegerField;
    Q_OSTOS_ID: TIntegerField;
    Q_OSCTT_NOME: TStringField;
    Q_OSCLIN_RAZA: TStringField;
    DS_OS: TwwDataSource;
    Q_CTT2: TwwQuery;
    Q_CTT2CTT_ID: TAutoIncField;
    Q_CTT2CTT_NOME: TStringField;
    Q_CLIN: TwwQuery;
    Q_CLINCLIN_RAZA: TStringField;
    Q_CLINCLIN_ID: TAutoIncField;
    Q_CLINCLIN_UTIL_COD: TStringField;
    Q_CLINCLIN_PESSOA: TStringField;
    Q_CLINCLIN_NOME: TStringField;
    Q_CLINCLIN_CGCCPF: TStringField;
    Q_CLINCLIN_INSCRG: TStringField;
    Q_CLINCLIN_ENDERECO: TStringField;
    Q_CLINCLIN_ENDERECO_COMPL: TStringField;
    Q_CLINCLIN_ENDERECO_BAIRRO: TStringField;
    Q_CLINCLIN_MUNICIPIO: TStringField;
    Q_CLINUF_SIGLA: TStringField;
    Q_CLINCLIN_CEP: TStringField;
    Q_CLINCLIN_TEL1: TStringField;
    Q_CLINCLIN_TEL2: TStringField;
    Q_CLINCLIN_FAX: TStringField;
    Q_CLINCLIN_EMAIL: TStringField;
    Q_CLINCON_CODI: TStringField;
    Q_CLINCLIN_CONTRATO: TStringField;
    Q_CLINMUN_ID: TIntegerField;
    UPD_OS: TUpdateSQL;
    Q_OSOS_MARCADOR: TStringField;
    SBT_PESQ: TSpeedButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Panel4: TPanel;
    Label48: TLabel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Q_AUX: TwwQuery;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Q_COND: TwwQuery;
    Q_CONDDescricao: TStringField;
    Q_CONDNum_Parcelas: TFloatField;
    Q_CONDCond_Pgto_ID: TAutoIncField;
    Q_CONDPagamento: TStringField;
    Q_CONDFora: TStringField;
    Q_OSOS_CONCLUIDA: TStringField;
    Q_ARMAZ: TwwQuery;
    Q_ARMAZCOLUMN1: TFloatField;
    Q_ARMAZOS_ID: TAutoIncField;
    Q_ARMAZOS_DATA: TDateTimeField;
    Q_ARMAZTSER_NOME: TStringField;
    DS_ARMAZ: TwwDataSource;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label5: TLabel;
    wwDBGrid3: TwwDBGrid;
    Panel10: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    STP_GERAFATURA: TwwStoredProc;
    Q_OS2: TwwQuery;
    Q_OS2OS_ID: TAutoIncField;
    Q_OS2CLIN_ID: TIntegerField;
    Q_OS2CTT_ID: TIntegerField;
    Q_OS2TOS_ID: TIntegerField;
    Q_OS2OS_DATA: TDateTimeField;
    Q_OS2OS_USUARIO: TIntegerField;
    Q_OS2OS_GEROU: TStringField;
    Q_OS2OS_CONCLUIDA: TStringField;
    Q_OS2OS_FATURADA: TStringField;
    Q_OS2OS_MARCADOR: TStringField;
    Q_OSTPCARGA: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    Q_CLINCLIN_TIPOSALDO: TStringField;
    Q_CLINCLIN_DESCONTO: TFloatField;
    qrCalc: TwwQuery;
    qrCalcOS_ID: TAutoIncField;
    qrExec: TwwQuery;
    wwStoredProc1: TwwStoredProc;
    wwQuery1: TwwQuery;
    pnlAguarde: TPanel;
    Image1: TImage;
    qrverificaConhecimento: TwwQuery;
    qrverificaConhecimentoACHEI: TIntegerField;
    RzBitBtn1: TRzBitBtn;
    Panel8: TPanel;
    SpeedButton4: TSpeedButton;
    chkConhecimentos: TCheckBox;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_OSAfterPost(DataSet: TDataSet);
    procedure DBG_INFICalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_PESQClick(Sender: TObject);
    procedure DBG_INFIDblClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure DS_OSDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DS_ARMAZDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    function Geradesconto(valor : Double) : Double;
    procedure VerificaValorConhecimentos;
    procedure Q_OSOS_MARCADORChange(Sender: TField);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
      
var
  FFaturamento: TFFaturamento;
   PESQUISAOCE : string ;
   DATAI : tdatetime ;
   DATAF : tdatetime ;
   GERAFATURA : string ;
   VEM_DA_OS : String ; 
implementation
uses USenha,Umenu, UAbTabelas, UNFServico, UConsOCE ,URelConhFat,
  UfrmSelConhecimentos;
{$R *.DFM}

procedure TFFaturamento.SpeedButton3Click(Sender: TObject);
begin
      close;
end;

procedure TFFaturamento.Q_OSAfterPost(DataSet: TDataSet);
var
   STROS : string ;
begin
   STROS := Q_OSOS_ID.asstring ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_OS])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   Q_OS.close ;
   Q_OS.Open ;

   {if STROS = '' then begin
     Q_AUX.close ;
     Q_AUX.Sql.Clear ;
     Q_AUX.Sql.Add( ' select max(OS_ID) as Numero from PEDIDO ' ) ;
     Q_AUX.open ;
     STROS := Q_AUX.fieldbyname('Numero').asstring ;
   end;  }

   Q_OS.locate('OS_ID',STROS,[])    ;
   Q_OS.edit;
end ;
procedure TFFaturamento.DBG_INFICalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   {if Q_OSOS_MARCADOR.asstring = '*' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := claqua;
              AFont.Color := clblack;
           End else begin
              ABrush.color := claqua;
              Afont.color := clblack;
           end ;
     End;}


    if  Q_OS.fieldbyname('OS_CONCLUIDA').asstring = 'S' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := clWHITE;
              AFont.Color := clblack;
            End else begin
              ABrush.color := clWHITE;
              Afont.color := clblack;
            end ;
     End else begin
            AFont.color := $000080FF;
           if not highlight then   begin
              ABrush.color := $000080FF;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $000080FF;
              Afont.color := clblack;
            end ;

     end;



end;

procedure TFFaturamento.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   //Q_OS.open ;
   Q_CTT2.open ;
   Q_CLIN.open ;


   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add(' update OS SET OS_MARCADOR = ' + '''' + '' + '''');
   Q_AUX.ExecSql;

   Q_COND.open ;
   GERAFATURA := '' ; 
end;

procedure TFFaturamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_OS.close ;
   Q_CTT2.close ;
   Q_CLIN.close ;
   Q_COND.close  ;

   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add(' update OS SET OS_MARCADOR = ' + '''' + '' + '''');
   Q_AUX.ExecSql;


end;

procedure TFFaturamento.SBT_PESQClick(Sender: TObject);
begin
  {IF wwDBLookupCombo1.text = '' then begin
     MessageDlg('Cliente NBF deve ser preenchido !',mtWarning,[mbok],0);
     wwDBLookupCombo1.SetFocus;
     Abort;
  end;    }


  if wwDBLookupCombo1.LookupValue = '' then
  begin
      MessageBox(Self.Handle, 'Informe o Cliente!', 'Informação', MB_OK);
      wwDBLookupCombo1.SetFocus;
      Abort;
  end;

  if (Data1.Text = '  /  /    ') or (Data2.Text = '  /  /    ') then
  begin
      MessageBox(Self.Handle, 'Informe o período de pesquisa!', 'Informação', MB_OK);
      Abort;
  end;










   Q_AUX.close ;
   Q_AUX.Sql.Clear ;
   Q_AUX.Sql.Add(' update OS SET OS_MARCADOR = ' + '''' + '' + '''');
   Q_AUX.ExecSql;

  DATAI :=  0.0 ;
  DATAF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );


     IF RadioGroup1.itemindex = 0 then begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.*,B.CLIN_RAZA from OS A,CLIENTENBF B where');
        //Q_OS.SQL.ADD('A.OS_FATURADA = '+ '''' + 'N' + '''');

        //COMENTADA POR MIGUEL
        //Q_OS.SQL.ADD('A.FAT_ID = null ');

        //ADD CONDIÇÃO DE FATURA NA OE - MIGUEL FAT_OS
        Q_OS.SQL.ADD(' OS_ID in(Select OS_ID from ORDEM_COLETA_ENTREGA WHERE FAT_ID IS NULL AND ORD_STATUS <> ''C'' )');
        Q_OS.SQL.ADD('and A.CLIN_ID = B.CLIN_ID');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD ( 'and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;




        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By B.CLIN_RAZA')   ;
           Q_OS.Open ;
     end else begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.TPCARGa,A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        Q_OS.SQL.ADD('from   OS A,NF B,OS_SERVICO C,SERVICO D,CLIENTENBF E,CONTRATO F') ;
        Q_OS.SQL.ADD('WHERE  A.OS_ID = B.OS_ID');
        Q_OS.SQL.ADD('and    C.OS_ID = A.OS_ID');
        Q_OS.SQL.ADD('and    C.SER_ID = D.SER_ID');
        ///Q_OS.SQL.ADD('and    B.NFI_FATURADA   = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.NFI_CODI  = null');
        Q_OS.SQL.ADD('and    D.SER_COMPOSICAO = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.CLIN_Id = E.CLIN_ID');
        Q_OS.SQL.ADD('and    A.CTT_ID = F.CTT_ID  ');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD  ('and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
         Q_OS.SQL.ADD  ('group by A.TPCARGa,A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By E.CLIN_RAZA')   ;
           Q_OS.Open ;
     end ;


end;

procedure TFFaturamento.DBG_INFIDblClick(Sender: TObject);
begin

    if Q_OS.fieldbyname('OS_CONCLUIDA').asstring <> 'S' then begin
        MessageDlg('OS não confirmada... não pode ser faturada !',mtWarning,[mbok],0);
        DBG_INFI.SetFocus;
        Abort;
    end ;


    IF RadioGroup1.itemindex =  0 then begin
        IF  DBG_INFI.Selectedfield = Q_OSOS_ID  then begin
             {PESQUISAOCE := '*' ;

             application.createform(TFConsOCE , FConsOCE);
             FConsOCE.SHOWMODAL ;
             FConsOCE.RELEASE   ;
             FConsOCE.CLOSE     ; }
         end ;
    end else begin
        IF  DBG_INFI.Selectedfield = Q_OSOS_ID  then begin
            Panel7.visible := true ;
            Panel7.Left := 6;
            Panel7.top  := 5;
            Q_ARMAZ.SQL.clear ;
            Q_ARMAZ.SQL.ADD('select SUM(B.CALC_TOTAL),A.OS_ID,A.OS_DATA,D.TSER_NOME');
            Q_ARMAZ.SQL.ADD('from   OS A,OS_CALCULO B,SERVICO C,TPSERVICO D ');
            Q_ARMAZ.SQL.ADD('WHERE  B.OS_ID = A.OS_ID     ');
            Q_ARMAZ.SQL.ADD('and    B.SER_ID = C.SER_ID   ');
            Q_ARMAZ.SQL.ADD('and    C.TSER_ID = D.TSER_ID ');
            Q_ARMAZ.SQL.ADD('and    C.SER_COMPOSICAO =  ' + '''' + 'N' + '''');
            Q_ARMAZ.SQL.ADD('and    B.OS_Id = ' + Q_OSOS_ID.asstring );
            Q_ARMAZ.SQL.ADD('group by A.OS_ID,A.OS_DATA,D.TSER_NOME ');
            Q_ARMAZ.open ;
            Label5.caption := Q_ARMAZOS_ID.asstring ;
        end ;
    end ;



end;

procedure TFFaturamento.RadioGroup2Click(Sender: TObject);
begin
  DATAI :=  0.0 ;
  DATAF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );

     IF RadioGroup1.itemindex = 0 then begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.*,B.CLIN_RAZA from OS A,CLIENTENBF B where');
        //Q_OS.SQL.ADD('A.OS_FATURADA = '+ '''' + 'N' + '''');
        Q_OS.SQL.ADD('A.FAT_ID = null');
        Q_OS.SQL.ADD('and OS_ID in(Select OS_ID from ORDEM_COLETA_ENTREGA)');
        Q_OS.SQL.ADD('and A.CLIN_ID = B.CLIN_ID');

        if DATAI <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD ( 'and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By B.CLIN_RAZA')   ;
           Q_OS.Open ;
     end else begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.TPCARGa,A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        Q_OS.SQL.ADD('from   OS A,NF B,OS_SERVICO C,SERVICO D,CLIENTENBF E,CONTRATO F') ;
        Q_OS.SQL.ADD('WHERE  A.OS_ID = B.OS_ID  ');
        Q_OS.SQL.ADD('and    C.OS_ID = A.OS_ID  ');
        Q_OS.SQL.ADD('and    C.SER_ID = D.SER_ID');
        //Q_OS.SQL.ADD('and    B.NFI_FATURADA   = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.NFI_CODI  = null');
        Q_OS.SQL.ADD('and    D.SER_COMPOSICAO = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.CLIN_Id = E.CLIN_ID');
        Q_OS.SQL.ADD('and    A.CTT_ID = F.CTT_ID  ');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD  ('and A.CLIN_ID = ' + wwDBLookupCombo1.lookupvalue ) ;
         Q_OS.SQL.ADD  ('group by A.TPCARGa,A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By E.CLIN_RAZA')   ;
           Q_OS.Open ;
     end ;

end;

procedure TFFaturamento.DS_OSDataChange(Sender: TObject; Field: TField);
begin
     IF Q_OS.recordcount = 0 then begin
       SpeedButton1.enabled := false   ;
       SpeedButton4.enabled := false ;
       ///SpeedButton1.caption := 'Faturar';
     end else begin
       SpeedButton1.enabled := true ;
       SpeedButton4.enabled := true ;
       ///SpeedButton1.caption := 'NF de Serviço';
     end ;

     IF RadioGroup1.itemindex =0 then
         SpeedButton1.caption := 'Faturar'
       else
         SpeedButton1.caption := 'NF de Serviço';

end;

procedure TFFaturamento.SpeedButton1Click(Sender: TObject);
begin

        //MIGUEL - VERIFICA OS VALORES GUARDADOS E VALORES NA OE

          //  wwStoredProc1.Prepare;
          //  wwStoredProc1.ExecProc;

         VerificaValorConhecimentos;

        //////////////////////////////////////miguel

    

    If (Q_OS.state = dsedit   ) or
       (Q_OS.state = dsinsert ) then Q_OS.post ;


    If  wwDBLookupCombo1.text = '' then begin
        MessageDlg('Cliente NBF deve ser escolhido !',mtWarning,[mbok],0);
        wwDBLookupCombo1.SetFocus;
        Q_OS.close ;
        Abort;
    end ;


    If RadioGroup1.itemindex = 0 then begin
        Q_AUX.close;
        Q_AUX.Sql.Clear;
        Q_AUX.Sql.Add(' Select count(*) as xvalor from  OS ') ;
        Q_AUX.Sql.Add(' where OS_MARCADOR = ' + '''' + '*' + '''') ;
        //Q_AUX.Sql.Add(' and  OS_FATURADA = ' + '''' + 'N' + '''');
        //Q_AUX.Sql.Add(' and  FAT_ID IS null');
        Q_AUX.Sql.Add(' and OS_ID in(Select OS_ID from ORDEM_COLETA_ENTREGA where fat_id is null and sel = ''*'')');
        Q_AUX.open ;
        If Q_AUX.fieldbyname('XVALOR').asinteger = 0 then begin
             MessageDlg('Não foi escolhida nenhuma OS para geração de Fatura Transporte !',mtWarning,[mbok],0);
             DBG_INFI.SetFocus;
             Abort;
        end ;


        Panel3.enabled  :=  false ;
        Panel2.enabled  :=  false ;

        Panel5.visible := true  ;
        Panel5.left := 151;
        Panel5.top  := 89;
        wwDBLookupCombo3.setfocus ;


    end else begin
        Q_AUX.close;
        Q_AUX.Sql.Clear;
        Q_AUX.Sql.Add(' Select count(*) as xvalor from  OS A,NF B,OS_SERVICO C,SERVICO D ') ;
        Q_AUX.Sql.Add(' where  A.OS_MARCADOR = ' + '''' + '*' + '''') ;
        Q_AUX.Sql.Add(' and    A.OS_ID  = B.OS_ID ');
        Q_AUX.SQL.ADD(' and    C.SER_ID = D.SER_ID');
        Q_AUX.SQL.ADD(' and    D.SER_COMPOSICAO = ' + '''' + 'N' + '''');
        //Q_AUX.Sql.Add(' and    B.NFI_FATURADA   = ' + '''' + 'N' + '''');
        Q_AUX.SQL.ADD('and    A.NFI_CODI  = null');
        Q_AUX.open ;

        If Q_AUX.fieldbyname('XVALOR').asinteger = 0 then begin
            MessageDlg('Não foi escolhida nenhuma OS para geração de NF de Serviços !',mtWarning,[mbok],0);
            DBG_INFI.SetFocus;
            Abort;
        end ;

        if MessageDlg('Confirma geração da NF de Serviço ?  '
                             ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

                GERAFATURA := 'S' ;
                application.createform(TFNFServico , FNFServico);
                FNFServico.SHOWMODAL ;
                FNFServico.RELEASE ;
                FNFServico.CLOSE ;
                Q_OS.close  ;

        end ;
    end ;

   {Panel3.enabled  :=  false ;
    Panel2.enabled  :=  false ;
    Panel5.visible := true  ;
    Panel5.left := 151;
    Panel5.top  := 89;
    wwDBLookupCombo3.setfocus ;    }




end;

procedure TFFaturamento.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
     RzBitBtn1.Visible := True
  else
     RzBitBtn1.Visible := False;   

  DATAI :=  0.0 ;
  DATAF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );


    IF RadioGroup1.itemindex = 0 then begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.*,B.CLIN_RAZA from OS A,CLIENTENBF B where');
       //Q_OS.SQL.ADD('A.OS_FATURADA = '+ '''' + 'N' + '''');
        Q_OS.SQL.ADD('A.FAT_ID = null');
        Q_OS.SQL.ADD('and OS_ID in(Select OS_ID from ORDEM_COLETA_ENTREGA)');
        Q_OS.SQL.ADD('and A.CLIN_ID = B.CLIN_ID');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD ( 'and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;
        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;
        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By B.CLIN_RAZA')   ;
           Q_OS.Open ;

     end else begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.TPCARGa,A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        Q_OS.SQL.ADD('from   OS A,NF B,OS_SERVICO C,SERVICO D,CLIENTENBF E,CONTRATO F') ;
        Q_OS.SQL.ADD('WHERE  A.OS_ID = B.OS_ID');
        Q_OS.SQL.ADD('and    C.OS_ID = A.OS_ID');
        Q_OS.SQL.ADD('and    C.SER_ID = D.SER_ID');
        //Q_OS.SQL.ADD('and    B.NFI_FATURADA   = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.NFI_CODI  = null');
        Q_OS.SQL.ADD('and    D.SER_COMPOSICAO = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.CLIN_Id = E.CLIN_ID');
        Q_OS.SQL.ADD('and    A.CTT_ID = F.CTT_ID  ');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD  ('and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
         Q_OS.SQL.ADD  ('group by A.TPCARGa,A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By E.CLIN_RAZA')   ;
           Q_OS.Open ;
     end ;


end;

procedure TFFaturamento.BitBtn2Click(Sender: TObject);
var ValorFaturar : Double;
begin
    If  wwDBLookupCombo3.text = '' then begin
        MessageDlg('Condição de Pagto. deve ser preenchida !',mtWarning,[mbok],0);
        wwDBLookupCombo3.SetFocus;
        Abort;
    end ;


    if MessageDlg('Confirma geração da Fatura Transporte  ?  '
                             ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin


        //Q_OS2.open ;
        //While not Q_OS2.eof do begin

        //MIGUEL - VERIFICA OS VALORES GUARDADOS E VALORES NA OE
        //qrCalc.Close;
       // qrCalc.Open;
        //qrCalc.First;
        //while not qrCalc.Eof do
        //begin
         //   qrExec.Params[0].AsInteger := qrCalcOS_ID.Value;
           // qrExec.ExecSQL;

        //    qrCalc.Next;
       // end;

        //////////////////////////////////////miguel




              Q_AUX.close;
              Q_AUX.Sql.Clear;
              Q_AUX.Sql.Add(' Select SUM(ORD_TOTALPREST) as TOTAL from ORDEM_COLETA_ENTREGA A,OS b') ;
              Q_AUX.Sql.Add(' where  B.OS_MARCADOR = ' + '''' + '*' + '''') ;
              ///Q_AUX.Sql.Add(' and    B.OS_FATURADA = ' + '''' + 'N' + '''');

              //miguel fat - os
              //Q_AUX.Sql.Add(' and    B.FAT_ID = null');
              Q_AUX.Sql.Add(' and    B.OS_ID  = A.OS_ID');
              Q_AUX.Sql.Add(' and    A.ORD_STATUS  = ' + '''' + 'E' + '''');

              //FATURA OS_FAT MIGUEL
              Q_AUX.Sql.Add(' AND A.FAT_ID IS NULL AND A.SEL = ''*'' ');
              Q_AUX.open ;


              if Q_AUX.fieldbyname('TOTAL').AsFloat = 0 then begin
                 MessageDlg('Valor  !',mtWarning,[mbok],0);
                 Abort;
              end;

              try
              Begin
                 ValorFaturar := Geradesconto(Q_AUX.fieldbyname('TOTAL').asfloat) ;
                 STP_GERAFATURA.ParamByName('@VALORCHEIO').Value    :=  ValorFaturar ;
                 STP_GERAFATURA.ParamByName('@CLIN_ID').Value       :=  Q_OSCLIN_ID.asinteger ;
                 STP_GERAFATURA.ParamByName('@COND_PGTO_ID').Value  :=  Q_CONDCond_Pgto_ID.asinteger ;
                 ////STP_GERAFATURA.ParamByName('@OS_ID').Value  := Q_OS2OS_ID.asinteger ;
                 STP_GERAFATURA.ParamByName('@TIPO').Value  :=  inttostr(RadioGroup1.itemindex) ;
                 STP_GERAFATURA.Execproc;
               End
              except
               begin
                 MessageDlg('Geração de Fatura Transporte, com erro !',mtInformation,[mbOk], 0);
                  abort ;
               end;
              end;


            //Q_OS2.next ;
        //end ;
        //Q_OS2.close ;

            MessageDlg('Fatura Transporte foi gerada com sucesso !',mtInformation,[mbOk], 0);


    end ;
    Panel5.visible  := false  ;
    Panel3.enabled  :=  true ;
    Panel2.enabled  :=  true ;

    Q_AUX.close ;
    Q_AUX.Sql.Clear ;
    Q_AUX.Sql.Add(' update OS SET OS_MARCADOR = ' + '''' + '' + '''');
    Q_AUX.ExecSql;

       q_os.CLOSE ;
end;

procedure TFFaturamento.BitBtn1Click(Sender: TObject);
begin
    Panel5.visible := false  ;
    Panel3.enabled  :=  true ;
    Panel2.enabled  :=  true ;



end;

procedure TFFaturamento.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 { DATAI :=  0.0 ;
  DATAF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     DATAI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     DATAF  := strtodate(Data2.text );


    IF RadioGroup1.itemindex = 0 then begin
        Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.*,B.CLIN_RAZA from OS A,CLIENTENBF B where');
        Q_OS.SQL.ADD('A.OS_FATURADA = '+ '''' + 'N' + '''');
        Q_OS.SQL.ADD('and OS_ID in(Select OS_ID from ORDEM_COLETA_ENTREGA)');
        Q_OS.SQL.ADD('and A.CLIN_ID = B.CLIN_ID');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD ( 'and convert(Char(10),A.OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD ( 'and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By B.CLIN_RAZA')   ;
           Q_OS.Open ;
     end else begin
       Q_OS.SQL.clear ;
        Q_OS.SQL.ADD('select A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');
        Q_OS.SQL.ADD('from   OS A,NF B,OS_SERVICO C,SERVICO D,CLIENTENBF E,CONTRATO F') ;
        Q_OS.SQL.ADD('WHERE  A.OS_ID = B.OS_ID');
        Q_OS.SQL.ADD('and    C.OS_ID = A.OS_ID');
        Q_OS.SQL.ADD('and    C.SER_ID = D.SER_ID');
        Q_OS.SQL.ADD('and    B.NFI_FATURADA   = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    D.SER_COMPOSICAO = ' + '''' + 'N' + '''');
        Q_OS.SQL.ADD('and    A.CLIN_Id = E.CLIN_ID');
        Q_OS.SQL.ADD('and    A.CTT_ID = F.CTT_ID  ');
        if DATAI <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
        if DATAF <> 0.0 then
               Q_OS.SQL.ADD  ('and convert(Char(10),OS_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;
        if wwDBLookupCombo1.text <> '' then
               Q_OS.SQL.ADD  ('and A.CLIN_ID =   ' + wwDBLookupCombo1.lookupvalue ) ;
         Q_OS.SQL.ADD  ('group by A.OS_ID,A.OS_MARCADOR,A.OS_DATA,A.CLIN_ID,A.TOS_ID,A.OS_CONCLUIDA,E.CLIN_RAZA,F.CTT_NOME,F.CTT_ID');

        IF RadioGroup2.itemindex = 0 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_ID')   ;

        IF RadioGroup2.itemindex = 1 then
           Q_OS.SQL.ADD ( 'ORDER By A.OS_DATA desc')   ;

        IF RadioGroup2.itemindex = 2 then
           Q_OS.SQL.ADD ( 'ORDER By E.CLIN_RAZA')   ;
           Q_OS.Open ;
     end ;  }

end;

procedure TFFaturamento.SpeedButton2Click(Sender: TObject);
begin
   Q_ARMAZ.close ;  
   Panel7.visible := false;
end;

procedure TFFaturamento.DS_ARMAZDataChange(Sender: TObject; Field: TField);
var
   TOT1 : string ;
   TOT2 : real ;
begin
    Q_AUX.SQL.clear ;
    Q_AUX.SQL.ADD('select SUM(  ROUND(B.CALC_TOTAL,2)   ) as TOT');
    Q_AUX.SQL.ADD('from   OS A,OS_CALCULO B,SERVICO C,TPSERVICO D ');
    Q_AUX.SQL.ADD('WHERE  B.OS_ID = A.OS_ID     ');
    Q_AUX.SQL.ADD('and    B.SER_ID = C.SER_ID   ');
    Q_AUX.SQL.ADD('and    C.TSER_ID = D.TSER_ID ');
    Q_AUX.SQL.ADD('and    C.SER_COMPOSICAO =  ' + '''' + 'N' + '''');
    Q_AUX.SQL.ADD('and    B.OS_Id = ' + Q_OSOS_ID.asstring );
    Q_AUX.open ;

    //TOT2 :=  Q_AUX.fieldbyname('TOT').asfloat ;
    //TOT1 :=  formatfloat('0.00',(TOT2));

    Label47.caption := formatfloat('###,###,##0.00',Q_AUX.fieldbyname('TOT').asfloat) ;

end;

procedure TFFaturamento.SpeedButton4Click(Sender: TObject);
begin
        //MIGUEL - VERIFICA OS VALORES GUARDADOS E VALORES NA OE

          //  wwStoredProc1.Prepare;
         //   wwStoredProc1.ExecProc;

        VerificaValorConhecimentos;

        //////////////////////////////////////miguel



    If (Q_OS.state = dsedit   ) or
       (Q_OS.state = dsinsert ) then Q_OS.post ;

        Q_AUX.close;
        Q_AUX.Sql.Clear;
        Q_AUX.Sql.Add(' Select count(*) as xvalor from  OS ') ;
        Q_AUX.Sql.Add(' where OS_MARCADOR = ' + '''' + '*' + '''') ;
        //MIGUEL FAT_OS
        //Q_AUX.Sql.Add(' and  FAT_ID IS null');
        Q_AUX.Sql.Add(' and OS_ID in(Select OS_ID from ORDEM_COLETA_ENTREGA WHERE FAT_ID IS NULL )');
        Q_AUX.open ;

        If Q_AUX.fieldbyname('XVALOR').asinteger = 0 then begin
             MessageDlg('Não foi escolhida nenhuma OS para geração da Prévia !',mtWarning,[mbok],0);
             DBG_INFI.SetFocus;
             Abort;
        end ;

       VEM_DA_OS := 'S' ;
       Application.CreateForm(TFRelConhFAT,FRelConhFAT);
       FRelConhFAT.ESTOQ.Preview;
       FRelConhFAT.Close;
       VEM_DA_OS := '' ;

end;

function TFFaturamento.Geradesconto(valor: Double): Double;
var novoValor : Double; Desconto : Double;
cliente : string;
begin
  Q_CLIN.Locate('CLIN_ID', wwDBLookupCombo1.LookupValue, []);
   cliente := Q_CLINCLIN_RAZA.Value;

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

procedure TFFaturamento.VerificaValorConhecimentos;
begin
//

        pnlAguarde.Visible := True;
        Application.ProcessMessages;



        Q_OS.First;
        while not Q_OS.Eof do
        begin
          if Q_OSOS_MARCADOR.AsString = '*' then begin
              qrExec.Params[0].AsInteger := Q_OSOS_ID.Value;
              qrExec.ExecSQL;
          end;
            Q_OS.Next;
            Application.ProcessMessages;
        end;


        pnlAguarde.Visible := False;
        Application.ProcessMessages;


end;

procedure TFFaturamento.Q_OSOS_MARCADORChange(Sender: TField);
begin

   //PROCEDIMENTO QUE EVITA O FATURAMENTO DA OS TENDO CONHECIMENTOS EM ABERTO
   //O Q LEVA A TRANSFERIR O CONHECIMENTO PARA OUTRA OS

  { if Q_OSOS_MARCADOR.Value = '*' then begin
       qrverificaConhecimento.Close;
       qrverificaConhecimento.Params[0].AsInteger := Q_OSOS_ID.AsInteger;
       qrverificaConhecimento.Open;

       IF qrverificaConhecimentoACHEI.Value > 0 then begin
            MessageBox(Self.Handle, 'Esta OS possui conhecimentos a serem emitidos!', 'Erro', MB_OK + MB_ICONERROR)  ;
            Q_OSOS_MARCADOR.Value := '';
       end;
   end; }


   //MARCAMOS TODOS OS CONHECIMENTOS PARA SEREM FATURADOS - MIGUEL FAT_OS
   WITH Q_AUX do begin
       CLOSE;
       SQL.Clear;
       SQL.Add('UPDATE ORDEM_COLETA_ENTREGA SET SEL = ' + QuotedStr(Q_OSOS_MARCADOR.Value) );
       SQL.Add('WHERE OS_ID = ' + Q_OSOS_ID.AsString);
       SQL.Add('AND ORD_STATUS = ''E'' ');
       ExecSQL;
   end;

end;

procedure TFFaturamento.RzBitBtn1Click(Sender: TObject);
begin
  IF Q_OSOS_ID.AsString = '' then
        Abort;

  IF Q_OS.fieldbyname('OS_CONCLUIDA').asstring <> 'S' then
        ABORT;

  frmSelConhecimentos := TfrmSelConhecimentos.Create(Self);
  WITH frmSelConhecimentos do begin
      cdsOCE.CLOSE;
      qrOCE.Parameters[0].Value := Q_OSOS_ID.Value;
      cdsOCE.Open;
  end;

  frmSelConhecimentos.ShowModal;

end;                                           

end.

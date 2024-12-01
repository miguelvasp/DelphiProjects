unit UNFArmazem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdblook, StdCtrls, Mask, Buttons, DBTables, Db, Wwdatsrc,
  Wwquery, Grids, Wwdbigrd, Wwdbgrid, wwstorep, ComCtrls, Gauges, DBCtrls,
  wwdbedit;

type
  TFNFArmazem = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBGrid4: TwwDBGrid;
    UPD_NFA: TUpdateSQL;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    BitBtn3: TBitBtn;
    Q_AUX: TwwQuery;
    Q_NFA: TwwQuery;
    DS_NFA: TwwDataSource;
    BitBtn1: TBitBtn;
    Animate1: TAnimate;
    Panel1: TPanel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Label4: TLabel;
    DS_CTT: TwwDataSource;
    Q_CTT: TwwQuery;
    Q_CTTCTT_NOME: TStringField;
    Q_CTTCTT_ID: TAutoIncField;
    Q_CTTTOS_ID: TIntegerField;
    Q_CTTCLIN_ID: TIntegerField;
    Q_CTTCTT_TERCEIRO: TStringField;
    Q_CTTPAR_ID: TIntegerField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_PESO: TFloatField;
    Q_PRODPRO_VOLUME: TFloatField;
    Q_PRODPRO_VOLUME_PALLET: TFloatField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODCLIN_ID: TIntegerField;
    Q_PRODTPRO_ID: TIntegerField;
    Q_PRODUVEN_ID: TIntegerField;
    Q_PRODPRO_PESO_LIQ: TFloatField;
    DS_PROD: TwwDataSource;
    DBLC_INF_PROD: TwwDBLookupCombo;
    DBNavigator1: TDBNavigator;
    Q_NFANFA_ID: TAutoIncField;
    Q_NFAPRO_ID: TIntegerField;
    Q_NFAQTDE_NFA: TFloatField;
    Q_NFAQTDE_NFE: TFloatField;
    Q_NFAREJEITADA: TStringField;
    Q_NFASALDO: TFloatField;
    Q_NFAPRECOUNIT: TFloatField;
    Q_NFAPRO_COD: TStringField;
    Q_NFAPRO_DESC: TStringField;
    Q_NFANFA_ITEM: TIntegerField;
    Q_AUX2: TwwQuery;
    Q_NFACH: TIntegerField;
    STP_NFA: TwwStoredProc;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    STP_TPDO_TPOS_OS: TwwStoredProc;
    STP_NF: TwwStoredProc;
    Q_CLINBFUF_SIGLA: TStringField;
    RadioGroup1: TRadioGroup;
    Q_CLINBFCLIN_CGCCPF: TStringField;
    Q_AUX3: TwwQuery;
    Label1: TLabel;
    wwDBEdit4: TwwDBEdit;
    BitBtn6: TBitBtn;
    qrAtualizaSaldo: TwwQuery;
    qrParams: TwwQuery;
    qrParamsPAR_UF_SIGLA: TStringField;
    Q_NFAQTDE_ESTOQUE: TFloatField;
    Label2: TLabel;
    edtOBS: TEdit;
    Button1: TButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBGrid4CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo6Exit(Sender: TObject);
    procedure wwDBLookupCombo6Enter(Sender: TObject);
    procedure Q_NFAAfterPost(DataSet: TDataSet);
    procedure Q_NFAAfterDelete(DataSet: TDataSet);
    procedure DBLC_INF_PRODExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_NFANewRecord(DataSet: TDataSet);
    procedure wwDBGrid4Enter(Sender: TObject);
    procedure Q_NFABeforePost(DataSet: TDataSet);
    procedure DS_NFADataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBEdit4Enter(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNFArmazem: TFNFArmazem;
  RETORNOSIMB : string ;
  DELET : string ;
  OUTRA_OS : string ; 
  implementation
uses USENHA,Umenu, UNF,U_FUNCOES, frmSelecionaProdutoNFArmazem ;

{$R *.DFM}

procedure TFNFArmazem.SpeedButton3Click(Sender: TObject);
begin
  close ; 
end;

procedure TFNFArmazem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' DELETE FROM NFA_PRODUTO');
  Q_aux.Sql.Add(' WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
  Q_aux.ExecSql;

  Q_CLINBF.close ;
  Q_CTT.close ;
  Q_PROD.close ;
  Q_NFA.close  ;

  {Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE FROM  NFRS_PRODUTO');
  Q_aux.ExecSql;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE FROM NFRS_DEFINITIVA');
  Q_aux.ExecSql;      }


  action := cafree ;
end;

procedure TFNFArmazem.BitBtn3Click(Sender: TObject);
begin   
    {Q_aux.close;
    Q_aux.Sql.Clear;
    Q_aux.Sql.Add(' UPDATE NF SET  NFI_NFRS_REJEITADA = '  + '''' + '' + ''''  );
    Q_aux.ExecSql; }

     if  ((Q_NFA.State = dsEdit) or
          (Q_NFA.State = dsInsert))  then Q_NFA.post ;

      IF RadioGroup1.itemindex = -1 then begin
         MessageDlg('Transportador NBF é campo de preenchimento obrigatório !',mtInformation,[mbOk], 0);
         RadioGroup1.setfocus ;
         abort ;
      end ;


      Q_aux.close;
      Q_aux.Sql.Clear;
      Q_aux.Sql.Add(' SELECT CLIF_ID,UF_SIGLA from clientefinal');
      Q_aux.Sql.Add(' WHERE CLIF_CGCCPF = ' + '''' + Q_CLINBFCLIN_CGCCPF.asstring + '''' );
      Q_aux.open ;


      IF Q_AUX.fieldbyname('CLIF_ID').asstring = '' then begin
         MessageDlg('Não existe Cliente Final cadastrado com o CNPJ: ' + Q_CLINBFCLIN_CGCCPF.asstring ,mtInformation,[mbOk], 0);
         abort ;
      end ;

      /////
      Q_aux3.close;
      Q_aux3.Sql.Clear;
      Q_aux3.Sql.Add('SELECT b.*  FROM NFA_PRODUTO A,PRODUTO B') ;
      Q_aux3.Sql.Add('WHERE A.PRO_ID = B.PRO_ID') ;
      Q_aux3.Sql.Add('and B.PRO_REDUZICMS > ' + inttostr(0)) ;
      Q_aux3.open ;

           If Q_aux3.recordcount > 0 then begin

              Q_aux2.close;
              Q_aux2.Sql.Clear;
              Q_aux2.Sql.Add('SELECT * FROM FATURAMENTO') ;
              Q_aux2.Sql.Add('WHERE CFA_RICM = ' + Funcoes.Converte(floattostr(Q_AUX3.fieldbyname('PRO_REDUZICMS').asfloat) ,',','.')  ) ;
              Q_aux2.Sql.Add('and   TDOC_ID = ' + inttostr(3)) ;

              IF Q_AUX.fieldbyname('UF_SIGLA').asstring <> 'SP' then
                 Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '6906' + '''' )
              else
                 Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '5906' + '''' ) ;
              Q_aux2.open ;

           end else begin
              Q_aux2.close;
              Q_aux2.Sql.Clear;
              Q_aux2.Sql.Add('SELECT * FROM FATURAMENTO') ;
              Q_aux2.Sql.Add('WHERE CFA_RICM = ' + inttostr(0));
              Q_aux2.Sql.Add('and  TDOC_ID = ' + inttostr(3)) ;

              IF Q_AUX.fieldbyname('UF_SIGLA').asstring <> 'SP' then
                 Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '6906' + '''' )
               else
                 Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '5906' + '''' ) ;
              Q_aux2.open ;
           end ;
            ////



        try
          Begin
             STP_NFA.ParamByName('@GERA_NFRS').Value   := 'N' ;

             IF wwDBEdit4.Text <> '' then
                STP_NFA.ParamByName('@NFE').Value   :=  wwDBEdit4.Text
             else
                STP_NFA.ParamByName('@NFE').Value   :=  'VAZIO';

             STP_NFA.ParamByName('@CH').Value   := FMenu.SqlUsuariosCH.asinteger ;
             STP_NFA.ParamByName('@DEST_CLI').Value   := Q_AUX.fieldbyname('CLIF_ID').asinteger ;

             IF RadioGroup1.itemindex = 0 then
                STP_NFA.ParamByName('@NFI_TRANS').Value   := 'S'
              else
                STP_NFA.ParamByName('@NFI_TRANS').Value   := 'N'   ;

             IF OUTRA_OS = 'S' then
                STP_NFA.ParamByName('@OUTRA_OS').Value   := 'S'
             else
                STP_NFA.ParamByName('@OUTRA_OS').Value   := 'N'   ;

            STP_NFA.ParamByName('@CFA_ID').Value   := Q_AUX2.fieldbyname('CFA_ID').asinteger ;
            STP_NFA.ParamByName('@CLIN3_ID').Value   := Q_CLINBFCLIN_ID.asinteger ;
            STP_NFA.ParamByName('@CTT_ID').Value   := Q_CTTCTT_ID.asinteger ;
            STP_NFA.ParamByName('@OBS').Value := '';
            STP_NFA.Execproc;

          End
        except
           begin
             MessageDlg('Checagem de (Produtos X  NFE), com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;



         Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add(' select count(*) as qtde  from NFA_PRODUTO ') ;
         Q_AUX.Sql.Add(' where ') ;
         Q_AUX.Sql.Add(' REJEITADA = '  +  '''' + '' + ''''  );
         Q_AUX.Sql.Add(' and CH = '  +  FMenu.SqlUsuariosCH.asstring );
         Q_AUX.open;

         IF (Q_AUX.fieldbyname('qtde').asinteger = 0)  then begin
             MessageDlg('Todos Produtos foram rejeitados! ',mtWarning,[mbok],0);
             abort ;
         end ;

        Q_NFA.close ;
        Q_NFA.open ;

        
        BitBtn1.enabled := true ;
        BitBtn3.enabled := false ;

        animate1.visible := false ;
        panel1.visible := false ;

        //wwDBGrid4.options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,
       ///dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]  ;


end;

procedure TFNFArmazem.wwDBGrid4CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Q_NFAREJEITADA.asstring = '*' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := cLRED;
              AFont.Color := clblack;
            End else begin
              ABrush.color := cLRED;
              Afont.color := clblack;
            end ;
     End ;

end;

procedure TFNFArmazem.BitBtn3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   { PANEL1.visible := true ;
    PANEL1.caption := 'Aguarde...efetuando checagem com NFE !'  ;
    PANEL1.width := 401 ;
    animate1.visible := true ;
    animate1.top := 265 ;
    animate1.left := 256 ;
    PANEL1.top := 144 ;
    PANEL1.left := 199 ; }
end;

procedure TFNFArmazem.BitBtn3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 { animate1.visible := false ;
  panel1.visible := false ;  }
end;

procedure TFNFArmazem.BitBtn1Click(Sender: TObject);
begin
      IF RadioGroup1.itemindex = -1 then begin
         MessageDlg('Transportador NBF é campo de preenchimento obrigatório !',mtInformation,[mbOk], 0);
         RadioGroup1.setfocus ;
         abort ;
      end ;

       IF (wwDBLookupCombo4.text = '')  then begin
           MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo4.setfocus ;
           abort ;
       end ;

       IF (wwDBLookupCombo6.text = '')  then begin
           MessageDlg('Contrato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
           wwDBLookupCombo6.setfocus ;
           abort ;
       end ;



      if MessageDlg('Os itens que estão em vermelho, não serão incluídos ! Confirma Geração da Nota Fiscal de Armazém ?  '
         ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin
       try
          Begin

            STP_NFA.ParamByName('@GERA_NFRS').Value   := 'S' ;

            qrParams.Open;
            IF wwDBEdit4.Text <> '' then
               STP_NFA.ParamByName('@NFE').Value   :=  wwDBEdit4.Text
            else
               STP_NFA.ParamByName('@NFE').Value   :=  'VAZIO';

            STP_NFA.ParamByName('@CH').Value   := FMenu.SqlUsuariosCH.asinteger ;

            Q_aux.close;
            Q_aux.Sql.Clear;
            Q_aux.Sql.Add(' SELECT CLIF_ID,UF_SIGLA from clientefinal');
            Q_aux.Sql.Add(' WHERE CLIF_CGCCPF = ' + '''' + Q_CLINBFCLIN_CGCCPF.asstring + '''' );
            Q_aux.open ;

            STP_NFA.ParamByName('@DEST_CLI').Value   := Q_AUX.fieldbyname('CLIF_ID').asinteger ;

            IF RadioGroup1.itemindex = 0 then
                STP_NFA.ParamByName('@NFI_TRANS').Value   := 'S'
              else
                STP_NFA.ParamByName('@NFI_TRANS').Value   := 'N'   ;

            IF OUTRA_OS = 'S' then
                STP_NFA.ParamByName('@OUTRA_OS').Value   := 'S'
            else
                STP_NFA.ParamByName('@OUTRA_OS').Value   := 'N';


            /////
            Q_aux3.close;
            Q_aux3.Sql.Clear;
            Q_aux3.Sql.Add('SELECT b.*  FROM NFA_PRODUTO A,PRODUTO B') ;
            Q_aux3.Sql.Add('WHERE A.PRO_ID = B.PRO_ID') ;
            //Q_aux3.Sql.Add('and B.PRO_REDUZICMS > ' + inttostr(0)) ;
            Q_aux3.open ;

                 If Q_aux3.recordcount > 0 then begin

                    Q_aux2.close;
                    Q_aux2.Sql.Clear;
                    Q_aux2.Sql.Add('SELECT * FROM FATURAMENTO') ;
                   //Q_aux2.Sql.Add('WHERE CFA_RICM = ' + Funcoes.Converte(floattostr(Q_AUX3.fieldbyname('PRO_REDUZICMS').asfloat) ,',','.')  ) ;
                   // Q_aux2.Sql.Add('and   TDOC_ID = ' + inttostr(3)) ;
                    Q_aux2.Sql.Add('WHERE TDOC_ID = ' + inttostr(3)) ;
                    //IF Q_AUX.fieldbyname('UF_SIGLA').asstring <> 'SP' then
                    IF Q_AUX.fieldbyname('UF_SIGLA').asstring <> qrParamsPAR_UF_SIGLA.AsString then
                       Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '6906' + '''' )
                    else
                       Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '5906' + '''' ) ;
                    Q_aux2.open ;

                 end else begin
                    Q_aux2.close;
                    Q_aux2.Sql.Clear;
                    Q_aux2.Sql.Add('SELECT * FROM FATURAMENTO') ;
                    //Q_aux2.Sql.Add('WHERE CFA_RICM = 0 ');
                    //Q_aux2.Sql.Add('and  TDOC_ID = ' + inttostr(3)) ;
                    Q_aux2.Sql.Add('WHERE  TDOC_ID = ' + inttostr(3)) ;
                    //IF Q_AUX.fieldbyname('UF_SIGLA').asstring <> 'SP' then
                    IF Q_AUX.fieldbyname('UF_SIGLA').asstring <> qrParamsPAR_UF_SIGLA.AsString then
                       Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '6906' + '''' )
                     else
                       Q_aux2.Sql.Add('and   CFA_CODI = ' + '''' + '5906' + '''' ) ;
                    Q_aux2.open ;
                 end ;
            ////


            STP_NFA.ParamByName('@CFA_ID').Value   := Q_AUX2.fieldbyname('CFA_ID').asinteger ;
            STP_NFA.ParamByName('@CLIN3_ID').Value   := Q_CLINBFCLIN_ID.asinteger ;
            STP_NFA.ParamByName('@CTT_ID').Value   := Q_CTTCTT_ID.asinteger ;
            STP_NFA.ParamByName('@OBS').Value := edtOBS.Text;
            STP_NFA.Execproc;


            IF  STP_NFA.ParamByName('@OSNOVA').asstring <> '' then begin
                STP_TPDO_TPOS_OS.ParamByName('@PROCEDENCIA').Value :=  'OS' ;
                STP_TPDO_TPOS_OS.ParamByName('@TOS').Value    :=   6 ;
                STP_TPDO_TPOS_OS.ParamByName('@OS').Value    :=  STP_NFA.ParamByName('@OSNOVA').Value ;
                STP_TPDO_TPOS_OS.ParamByName('@ADMITE').Value    := Q_CTTCTT_TERCEIRO.asstring ;
                STP_TPDO_TPOS_OS.Execproc;
            end  ;




           { STP_NF.ParamByName('@NF').Value    :=  STP_NFA.ParamByName('@NFI_CODINOVO').Value ;
            STP_NF.ParamByName('@CFO').Value       := Q_AUX2.fieldbyname('CFA_ID').asinteger ;
            STP_NF.ParamByName('@CLIN_ID').Value    := Q_CLINBFCLIN_ID.asinteger ;
            STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
            STP_NF.Execproc; }

          End
        except
          ON E : Exception do
           begin
             MessageDlg('Geração da Nota Fiscal de Armazém, com erro !' +#13 + E.Message,mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;

         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add('SELECT NFI_CODI from NF  ' ) ;
         Q_AUX.Sql.Add('WHERE TDOC_ID  = ' + inttostr(3) ) ;
         Q_AUX.Sql.Add('AND   NFI_TOTA = ' + inttostr(0) ) ;
         Q_AUX.open  ;

         while not Q_AUX.eof do begin
            STP_NF.ParamByName('@NF').Value    :=  Q_AUX.fieldbyname('NFI_CODI').asinteger ;
            STP_NF.ParamByName('@CFO').Value       := Q_AUX2.fieldbyname('CFA_ID').asinteger ;
            STP_NF.ParamByName('@CLIN_ID').Value    := Q_CLINBFCLIN_ID.asinteger ;
            STP_NF.ParamByName('@GERATPROD').Value    := 'S' ;
            STP_NF.Execproc;

            Q_AUX.next ;
         end ;


        MessageDlg('Nota Fiscal de Armazém foi gerada com sucesso !',mtInformation,[mbOk], 0);
        OUTRA_OS := '';

     end ;


end;

procedure TFNFArmazem.BitBtn1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   { PANEL1.visible := true ;
    PANEL1.caption := 'Aguarde...Gerando Nota Fiscal de Retorno Simbólico !'   ;
    PANEL1.width := 500 ;
    animate1.visible := true ;
    animate1.top := 265 ;
    animate1.left := 256 ;
    PANEL1.top := 144 ;
    PANEL1.left := 170 ;  }
end;

procedure TFNFArmazem.BitBtn1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 { animate1.visible := false ;
  panel1.visible := false ;  }
end;

procedure TFNFArmazem.wwDBLookupCombo4Enter(Sender: TObject);
begin
  //wwDBGrid4.options := [dgediting,dgTitles,dgIndicator,dgColumnResize,dgColLines,
  //dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]  ;
  wwDBLookupCombo6.text := '' ;


 { Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' DELETE FROM NFA_PRODUTO');
  Q_aux.Sql.Add(' WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
  Q_aux.ExecSql;

  Q_NFA.close ;
  Q_NFA.open ;  }
  (Sender as TwwDBLookupCombo).Color := ClAqua;     
end;

procedure TFNFArmazem.wwDBLookupCombo4Exit(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := Clwindow;
     //IF wwDBLookupCombo4.text <> '' then
     /// wwDBLookupCombo4.enabled := false;
end;

procedure TFNFArmazem.wwDBLookupCombo6Exit(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := Clwindow;
     //IF wwDBLookupCombo6.text <> '' then begin
       //wwDBLookupCombo6.enabled := false;
       //////BitBtn3.enabled := true  ;
     ///end ; 

end;

procedure TFNFArmazem.wwDBLookupCombo6Enter(Sender: TObject);
begin
     (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFNFArmazem.Q_NFAAfterPost(DataSet: TDataSet);
var
   StrITEM : string ;
begin
   StrITEM := Q_NFANFA_ITEM.asstring   ;
   try

   FSenha.Dtb_BaseDados.ApplyUpdates([Q_NFA])

   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   If (StrITEM <> '') then begin
       Q_NFA.close ;
       Q_NFA.Open ;
       Q_NFA.locate('NFA_ITEM',StrITEM,[]);
   end ;


end;

procedure TFNFArmazem.Q_NFAAfterDelete(DataSet: TDataSet);
var
   CONT : integer ;
begin

  try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_NFA])
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;

   DELET := 'S' ;
   CONT := 0  ;
   Q_NFA.FIRST ;
   While not Q_NFA.eof do begin
        CONT := CONT + 1 ;
        Q_NFA.edit ;
        Q_NFANFA_ITEM.asinteger :=  CONT ;
        Q_NFA.post ;
        Q_NFA.next ;
   end ;
   DELET := '' ;

end;

procedure TFNFArmazem.DBLC_INF_PRODExit(Sender: TObject);
begin
   


  If ((Q_NFA.state = dsedit ) or (Q_NFA.state = dsinsert )) and
      (DBLC_INF_PROD.text <> '') then begin

       Q_AUX.close ;
       Q_AUX.Sql.Clear ;
       Q_AUX.Sql.Add('SELECT count(*) AS XVALOR from NFA_PRODUTO' ) ;
       Q_AUX.Sql.Add('WHERE PRO_ID = ' + Q_PRODPRO_ID.asstring ) ;
       Q_AUX.Sql.Add('and CH = ' +  FMenu.SqlUsuariosCH.asstring ) ;
       Q_AUX.open  ;

       IF (Q_AUX.fieldbyname('XVALOR').asinteger = 0) then begin
           Q_NFAPRO_ID.asinteger   := Q_PRODPRO_ID.asinteger  ;
           Q_NFAPRO_DESC.asstring :=  Q_PRODPRO_DESC.asstring  ;
           //Q_NFAPRO_COD.asstring   := Q_PRODPRO_COD.asstring  ;
           {Q_INFUVEN_ID.asstring  := Q_PRODUVEN_ID.asstring ;
           Q_INFINF_PESO.asstring := Q_PRODPRO_PESO.asstring ;
           Q_INFINF_PESOLIQ.asstring := Q_PRODPRO_PESO_LIQ.asstring ;
           Q_INFINF_VOL.asstring  := Q_PRODPRO_VOLUME.asstring ; }
           Q_NFACH.asstring    := FMenu.SqlUsuariosCH.asstring ;
       end else begin
           MessageDlg('Código do Produto repetido !',mtWarning,[mbok],0);
           Q_NFA.cancel ; 
           abort ;
       end ;
  end ;
  wwDBGrid4.SelectedField := Q_NFAPRO_DESC ;

end;

procedure TFNFArmazem.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  Q_CLINBF.open ;
  Q_CTT.open ;
  Q_PROD.open ;
  Q_NFA.open  ;

  OUTRA_OS := 'S' ;
end;

procedure TFNFArmazem.Q_NFANewRecord(DataSet: TDataSet);
begin
    IF Q_NFA.recordcount = 0 then
      Q_NFANFA_ITEM.asinteger :=  (Q_NFANFA_ITEM.asinteger + 1)
    else
       Q_NFANFA_ITEM.asinteger :=  (Q_NFA.recordcount + 1);

    Q_NFAREJEITADA.asstring := ''  ;
end;

procedure TFNFArmazem.wwDBGrid4Enter(Sender: TObject);
begin
   IF (wwDBLookupCombo4.text = '')  then begin
       MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   IF (wwDBLookupCombo6.text = '')  then begin
       MessageDlg('Contrato é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo6.setfocus ;
       abort ;
   end ;


end;

procedure TFNFArmazem.Q_NFABeforePost(DataSet: TDataSet);
begin
   IF (Q_NFAPRO_ID.asstring = '')  then begin
       MessageDlg('Código do Produto é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBGrid4.SelectedField := Q_NFAPRO_COD ;
       abort ;
   end ;


   IF (Q_NFAQTDE_NFA.asstring = '')  then begin
       MessageDlg('Qtde. UV é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBGrid4.SelectedField := Q_NFAQTDE_NFA ;
       abort ;
   end ;


   if  ((Q_NFA.State = dsEdit) or
       (Q_NFA.State = dsInsert))  and (DELET = '') then
       begin
        //IF  (Q_NFAPRO_ID.asstring <> '') then begin
            //If (wwDBGrid4.SelectedField = Q_NFAQTDE_NFA) Then begin
                  Q_AUX.close;
                  Q_AUX.Sql.Clear;
                  Q_AUX.Sql.Add('Select SUM(ESTq_QTDE) as QTDE_ESTQ from ESTOQUE A ') ;
                  Q_AUX.Sql.Add(' where A.PRO_ID = ' + Q_PRODPRO_ID.asstring   ) ;
                  Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
                  Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                  Q_AUX.Sql.Add(' and A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                  Q_AUX.Sql.Add(' and (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')');
                  Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + Q_CTTPAR_ID.asstring) ;
                  Q_AUX.Sql.Add(' and AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                  Q_AUX.open ;


                  Q_AUX2.close;
                  Q_AUX2.Sql.Clear;
                  Q_AUX2.Sql.Add(' Select SUM(QTDE_NFA) as QTDE_PRODUTO from  NFA_PRODUTO  ') ;
                  Q_AUX2.Sql.Add(' where PRO_ID = ' + Q_PRODPRO_ID.asstring   ) ;
                  Q_AUX2.open ;


                // If (((Q_AUX.fieldbyname('QTDE_ESTQ').asfloat - Q_AUX2.fieldbyname('QTDE_PRODUTO').asfloat) = 0)
                  //  or }

                    if (Q_AUX.fieldbyname('QTDE_ESTQ').asfloat - Q_AUX2.fieldbyname('QTDE_PRODUTO').asfloat) < Q_NFAQTDE_NFA.asfloat then BEGIN

                    MessageDlg('Estoque Insuficiente, para este produto  !',mtInformation,[mbOk], 0);
                    wwDBGrid4.SelectedField := Q_NFAPRO_ID;
                   {q_inf.CANCEL ;
                    abort ;  }
                 end      ;

            //END ;
        //end ;
     End;

end;

procedure TFNFArmazem.DS_NFADataChange(Sender: TObject; Field: TField);
begin

    IF (Q_NFA.recordcount > 0) then  begin
       if  ((Q_NFA.State = dsEdit) or
           (Q_NFA.State = dsInsert))  then
           BitBtn3.enabled := true  ;
       BitBtn2.enabled := true  ;
    end else begin
       BitBtn3.enabled := false ;
       BitBtn2.enabled := false ;
    end ;

end;

procedure TFNFArmazem.BitBtn2Click(Sender: TObject);
begin
    Q_aux.close;
    Q_aux.Sql.Clear;
    Q_aux.Sql.Add(' DELETE FROM NFA_PRODUTO');
    Q_aux.Sql.Add(' WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
    Q_aux.ExecSql;

    Q_NFA.close ;
    Q_NFA.open ;
end;

procedure TFNFArmazem.BitBtn4Click(Sender: TObject);
begin
 { wwDBLookupCombo4.enabled := true ;
  wwDBLookupCombo4.text := '' ;
  wwDBLookupCombo6.enabled := true ;
  wwDBLookupCombo6.text := '' ;   }

  //wwDBGrid4.options := [dgediting,dgTitles,dgIndicator,dgColumnResize,dgColLines,
  //dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]  ;

 {Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' DELETE FROM NFA_PRODUTO');
  Q_aux.Sql.Add(' WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
  Q_aux.ExecSql;

  Q_NFA.close ;
  Q_NFA.open ;
  wwDBLookupCombo4.setfocus ;  }

end;

procedure TFNFArmazem.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  //wwDBGrid4.options := [dgediting,dgTitles,dgIndicator,dgColumnResize,dgColLines,
  //dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap]  ;
  wwDBLookupCombo6.text := '' ;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add(' DELETE FROM NFA_PRODUTO');
  Q_aux.Sql.Add(' WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
  Q_aux.ExecSql;

  Q_NFA.close ;
  Q_NFA.open ;
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;
procedure TFNFArmazem.wwDBEdit4Enter(Sender: TObject);
begin
   (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFNFArmazem.wwDBEdit4Exit(Sender: TObject);
begin
    (Sender as TwwDBEdit).Color := Clwindow ;
end;

procedure TFNFArmazem.BitBtn6Click(Sender: TObject);
begin

     If MessageDlg('Confirma nova Inclusão ?',MtConfirmation,[MbYes,
        MbNo],0)=MrNO Then abort ;

     Q_aux.close;
     Q_aux.Sql.Clear;
     Q_aux.Sql.Add(' DELETE FROM NFA_PRODUTO');
     Q_aux.Sql.Add(' WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
     Q_aux.ExecSql;

     wwDBLookupCombo4.text := '' ;
     wwDBLookupCombo6.text := '' ;
     wwDBEdit4.text := '' ;

     wwDBLookupCombo4.setfocus ;
     Q_NFA.close;
     Q_NFA.open ;

end;

procedure TFNFArmazem.Button1Click(Sender: TObject);
begin
  if wwDBLookupCombo4.LookupValue = '' then begin
      ShowMessage('Informe o cliente');
      Abort;
  end;
  frSelecionaProdutoNFArmazem := TfrSelecionaProdutoNFArmazem.Create(Self);
  frSelecionaProdutoNFArmazem.lbClinId.Caption :=  wwDBLookupCombo4.LookupValue;
  frSelecionaProdutoNFArmazem.Button1.Click;
  frSelecionaProdutoNFArmazem.ShowModal;
  Q_NFA.Close;
  Q_NFA.Open;
  BitBtn3.Enabled := True;
end;

end.


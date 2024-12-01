unit UGeraManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Wwquery, Wwdatsrc,
  Grids, Wwdbigrd, Wwdbgrid, wwstorep, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, ADODB, RzButton;

type
  TFGeraManifesto = class(TForm)
    Panel3: TPanel;
    DS_MANI: TwwDataSource;
    Q_MANI: TwwQuery;
    GridNFE: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Q_AUX: TwwQuery;
    Q_MANIMARCADOR: TStringField;
    Q_MANINFI_CODI: TIntegerField;
    Q_MANINFI_DEST_CLI: TIntegerField;
    Q_MANINFI_DTENTREGA: TDateTimeField;
    Q_MANIMUN_ID: TIntegerField;
    Q_MANICEP: TStringField;
    Q_MANIBAIRRO: TStringField;
    Q_MANIREG_ID: TIntegerField;
    Q_MANIPESO: TFloatField;
    Q_MANIVOLUME: TFloatField;
    UPD_MANI: TUpdateSQL;
    Q_MANIMUN_NOME: TStringField;
    Q_MANIREG_NOME: TStringField;
    wwDBEdit1: TwwDBEdit;
    BitBtn2: TBitBtn;
    Q_MANINFI_DEST_RAZA: TStringField;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Q_MANIPROD: TwwQuery;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Q_AUX1: TwwQuery;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_INF: TwwQuery;
    DS_INF: TwwDataSource;
    Q_INFNFI_CODI: TIntegerField;
    Q_INFPRO_COD: TStringField;
    Q_INFPRO_DESC: TStringField;
    Q_INFINF_QTDE: TFloatField;
    Q_ESTQ: TwwQuery;
    DS_ESTQ: TwwDataSource;
    Q_ESTQPRO_ID: TIntegerField;
    Q_INFPRO_ID: TIntegerField;
    Q_AUX2: TwwQuery;
    Q_AUX3: TwwQuery;
    Q_AUX4: TwwQuery;
    Q_ESTQ2: TwwQuery;
    Q_ESTQ2PRO_ID: TIntegerField;
    Q_MANIMANI_ORDEM: TIntegerField;
    Q_ESTQQTDE_ESTQ: TFloatField;
    Q_ESTQ2QTDE_ESTQ: TFloatField;
    Label26: TLabel;
    STP_MANIFNF: TwwStoredProc;
    Q_MANINFI_NUMERO: TStringField;
    Q_MANIQTDE: TFloatField;
    Q_MANINFI_TRANS: TStringField;
    Q_MANIGERA_ID: TAutoIncField;
    STP_MANIFPROD: TwwStoredProc;
    Q_AUX5: TwwQuery;
    Q_MANIFESTOS: TwwQuery;
    Q_MANIFESTOSTOT: TFloatField;
    Q_MANIFESTOSPRO_ID: TIntegerField;
    RadioGroup1: TRadioGroup;
    Q_MANICLIN_RAZA: TStringField;
    Q_MANISEMESTOQ: TStringField;
    Panel14: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    DBText3: TDBText;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Grid2: TwwDBGrid;
    DBG_RAATIButton: TwwIButton;
    Grid3: TwwDBGrid;
    wwIButton1: TwwIButton;
    Panel16: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel17: TPanel;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
    Label32: TLabel;
    Q_AUX6: TwwQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    QR_STP_MANIFESTO_PRODUTO: TwwQuery;
    qrSTP_MANIFNF: TwwQuery;
    STP_MANIFESTO: TwwStoredProc;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    qrPrecargaHeader: TADOQuery;
    qrPrecargaHeaderCARGA_ID: TAutoIncField;
    qrPrecargaHeaderDESCRICAO: TStringField;
    qrPrecargaHeaderDATA: TDateTimeField;
    qrPrecargaHeaderCH: TIntegerField;
    qrAux: TADOQuery;
    qrPrecargaHeaderSTATUS: TStringField;
    STP_PRE_CARGA: TADOStoredProc;
    qrPrecargaHeaderTRANSPORTADOR_NBF: TIntegerField;
    qrPrecargaHeaderGERA_PARAMETRO: TIntegerField;
    Q_MANINFI_DEST_ENDERECO: TStringField;
    Button1: TButton;
    qrGeral: TADOQuery;
    STP_GERA_ROMANEIO: TADOStoredProc;
    STP_COPY_ESTOQUE: TADOStoredProc;
    STP_DELETAMANIFESTO: TADOStoredProc;
    qrGeralPRO_ID: TIntegerField;
    qrGeralPRO_DESC: TStringField;
    qrGeralPROD_TOTAL: TFloatField;
    qrGeralESTOQUE: TFloatField;
    qrGeralNFI_CODI: TIntegerField;
    STP_MANIFESTO2: TADOStoredProc;
    qrCopiaEstoque: TADOQuery;
    qrEstoqueGEral: TADOQuery;
    qrEstoqueGEralESTQ_ID: TIntegerField;
    qrEstoqueGEralQTDE_GERAL: TFloatField;
    qrDEvolveEstoque: TADOQuery;
    qrAreaOper: TADOQuery;
    qrAreaOperPOS_ID: TAutoIncField;
    qrAreaOperAR_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Q_MANIAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridNFEKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1DblClick(Sender: TObject);
    procedure GridNFECalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DS_ESTQDataChange(Sender: TObject; Field: TField);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Q_MANIMARCADORChange(Sender: TField);
    procedure GridNFETitleButtonClick(Sender: TObject; AFieldName: String);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Q_MANINewRecord(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FGeraManifesto: TFGeraManifesto;
   SALDO : real;
   ULTIMO : string ;

   CONT : integer ;
   QTDE : STRING ;
   GERA : STRING ;
   SQL : STRING ;


   CARGA_ID : Integer;
   GERA_CARGA_ID : Integer;

   TRANSPORTADOR_NBF : Integer;
   GERA_PARAMETRO : Integer;
   AcheiErro : string;


   
implementation
uses USenha,Umenu, UAbTabelas, UFGeraManifesto, U_Funcoes, UManifesto,
  UfrmPreCarga, UFManifesto_Geral ;
{$R *.DFM}

procedure TFGeraManifesto.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;



 //If FFGeraManifesto.RadioGroup1.itemindex = 0 then
 If TRANSPORTADOR_NBF = 0 then
      LABEL26.caption := 'Transportador NBF'
    else
      LABEL26.caption := 'Outros Transportadores' ;



  Label3.caption := '0,0' ;
  Label4.caption := '0,0' ;
  Label5.caption := '0,0' ;
  Label6.caption := '0,0' ;
  Label10.caption := '0' ;
  Label14.caption := '0' ;


  ULTIMO := '' ;

  Q_AUX.close;
  Q_AUX.Sql.Clear;
  Q_AUX.Sql.Add('update MANIFESTOGERA set MARCADOR = ' + ''''+ '' + '''');
  //If FFGeraManifesto.RadioGroup1.itemindex = 0 then
  If TRANSPORTADOR_NBF = 0 then
       Q_AUX.Sql.Add('WHERE NFI_TRANS = ' + '''' + 'S' + '''')
    else
       Q_AUX.Sql.Add('WHERE NFI_TRANS = ' + '''' + 'N' + '''') ;

   {/************** miguel *************/}
   {
       Adicionado filtro por usuario
   }
    Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
   {/************** end ****************/}



  //verifica se nao é pre-carga
  if FMenu.chkPreCarga.Checked = False then
      Q_AUX.ExecSql;




   //IF FFGeraManifesto.RadioGroup1.itemindex = 0 then begin
     IF TRANSPORTADOR_NBF = 0 then begin
       Q_MANI.close;
       Q_MANI.Sql.Clear;
       Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO, A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
       Q_MANI.Sql.Add('from ManifestoGera A (NOLOCK),NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
       Q_MANI.Sql.Add('where');
       Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
       Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
       Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
       Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
       Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

       //ADICIONADO FILTRO Q TIRA AS NOTAS DA PRÉ CARGA
       IF FMenu.chkPreCarga.Checked = False then begin
             Q_MANI.SQL.Add(

                '  AND A.NFI_CODI NOT IN  '+
                '  (  '+
                '          SELECT B.NFI_CODI FROM PRE_CARGA B INNER JOIN PRE_CARGA_HEADER A  '+
                '          ON A.CARGA_ID = B.CARGA_ID '+
                '         WHERE STATUS = ''A''    '+
                '  ) '

             );
       end;


       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_MANI.Sql.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

       Q_MANI.Sql.Add('order by A.NFI_NUMERO ');
       Q_MANI.open ;
   end else begin
       Q_MANI.close;
       Q_MANI.close;
       Q_MANI.Sql.Clear;
       Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO, A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
       Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
       Q_MANI.Sql.Add('where');
       Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
       Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
       Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
       Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
       Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');


       //ADICIONADO FILTRO Q TIRA AS NOTAS DA PRÉ CARGA
       IF FMenu.chkPreCarga.Checked = False then begin
           Q_MANI.SQL.Add(

              '  AND A.NFI_CODI NOT IN  '+
              '  (  '+
              '          SELECT B.NFI_CODI FROM PRE_CARGA B INNER JOIN PRE_CARGA_HEADER A  '+
              '          ON A.CARGA_ID = B.CARGA_ID '+
              '         WHERE STATUS = ''A''    '+
              '  ) '

           );
       end;

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_MANI.Sql.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

       Q_MANI.Sql.Add('order by A.NFI_NUMERO ');
       Q_MANI.open ;
   end ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add('WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
   Q_AUX.Sql.Add(' and  Marcador = ' + '''' + '' + '''' ) ;


       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

   if FMenu.chkPreCarga.Checked = False then begin
           try
           Begin
             {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
             STP_MANIFPROD.Execproc ; }

             QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
             QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
             QR_STP_MANIFESTO_PRODUTO.ExecSQL;

            End
          except
            begin
             MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
             abort  ;
            end;
          end;

  end;//if fmenu

     Label3.width := 130 ;
     Label4.width := 130 ;
     Label5.width := 130 ;
     Label6.width := 130 ;
     Label10.width := 130 ;
     Label14.width := 130 ;

end;

procedure TFGeraManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF (Q_MANINFI_TRANS.asstring = 'S')  then begin
        Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA_USUARIO  = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA_DATA   = ' + '''' + '' + '''' );
         Q_AUX.ExecSql ;
  END ELSE BEGIN
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA2 = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA2_USUARIO  = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA2_DATA   = ' + '''' + '' + '''' );
         Q_AUX.ExecSql ;
  END ;



  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE MANIFESTOGERA_PROD WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

  Q_aux.ExecSql;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('DELETE MANIFESTOGERA WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}


  Q_aux.ExecSql;


  Q_MANI.close ;
  action := cafree ;
end;

procedure TFGeraManifesto.SpeedButton3Click(Sender: TObject);
begin

 //if  FSenha.Dtb_BaseDados.InTransaction then
 //    FSenha.Dtb_BaseDados.Commit;
     
  close ;

end;



procedure TFGeraManifesto.Q_MANIAfterPost(DataSet: TDataSet);
var
NF : string ;
begin
   NF := Q_MANINFI_NUMERO.asstring   ;
   try
      FSenha.Dtb_BaseDados.ApplyUpdates([Q_MANI]) ;
   except
      On E:EdbEngineError do
      begin
         MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
         E.Message,MtError,[MbOk],0);
      end;
   end;
  { Q_MANI.close ;
   Q_MANI.Open ;
   Q_MANI.locate('NFI_NUMERO',NF,[]) ;}



end;

procedure TFGeraManifesto.FormKeyPress(Sender: TObject; var Key: Char);
begin
       case Key of
         #13 : Perform(WM_Nextdlgctl,0,0);
       end ;
end;

procedure TFGeraManifesto.GridNFEKeyPress(Sender: TObject; var Key: Char);
var   Selecionado  : tfield ;
begin

   Selecionado := Q_MANIMARCADOR ;

     case Key of
     #13 : begin
        if (Q_MANI.state = dsedit ) then Q_MANI.Post ;
        Q_MANI.Next ;
        GridNFE.Selectedfield := Selecionado ;
     end ;
     #9 : begin
        if (Q_MANI.state = dsedit ) then Q_MANI.Post ;
        Q_MANI.Next ;
        GridNFE.Selectedfield := Selecionado ;
     end ;

     end ;

end;

procedure TFGeraManifesto.wwDBEdit1DblClick(Sender: TObject);
var
   CONT : integer ;
   QTDE : STRING ;
begin
    CONT  := 0 ;
    SALDO := 0 ;

    Q_AUX1.close ;
    Q_AUX1.Sql.Clear ;
    Q_AUX1.Sql.Add('select COUNT(*) as qtde    from os A,NF B where') ;
    Q_AUX1.Sql.Add('(TOS_ID = 5 or B.NFI_CLONE = ' + '''' + 'S' + '''' + ')');
    Q_AUX1.Sql.Add(' and A.OS_ID = B.OS_ID');
    Q_AUX1.Sql.Add(' and B.MANI_ID is null') ;
    Q_AUX1.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
    Q_AUX1.open ;

    IF (Q_AUX1.fieldbyname('qtde').asinteger = 0) then begin

          If (wwDBEdit1.text = 'SIM') then begin

                    ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída   //////////////
                    Q_AUX1.close ;
                    Q_AUX1.Sql.Clear ;
                    Q_AUX1.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                    Q_AUX1.Sql.Add(' where NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                    Q_AUX1.open  ;

                    Q_AUX.close;
                    Q_AUX.Sql.Clear;
                    Q_AUX.Sql.Add('Select COUNT(*) as SUBTOTAL,A.PRO_ID,SUM(ESTq_QTDE) as QTDE_ESTQ from ESTOQUE A,NF_ITENS B ') ;
                    Q_AUX.Sql.Add(' where A.PRO_ID = B.PRO_ID ') ;
                    Q_AUX.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                    Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
                    Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                    Q_AUX.Sql.Add(' and A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                    Q_AUX.Sql.Add(' and (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')');
                    //Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + FFGeraManifesto.Q_PARPAR_ID.asstring) ;
                    Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + IntToStr(GERA_PARAMETRO)  ) ;
                    Q_AUX.Sql.Add(' and AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                    Q_AUX.Sql.Add(' group by A.PRO_ID ');
                    Q_AUX.open ;

                    IF  Q_AUX.fieldbyname('SUBTOTAL').asinteger > 0 then begin
                        Q_AUX.first;
                        while not Q_AUX.eof do begin

                             Q_AUX2.close;
                             Q_AUX2.Sql.Clear;
                             Q_AUX2.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                             Q_AUX2.Sql.Add(' where PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring ) ;
                             Q_AUX2.Sql.Add(' and   NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                             Q_AUX2.open ;

                             Q_AUX4.close;
                             Q_AUX4.Sql.Clear;
                             Q_AUX4.Sql.Add(' SELECT distinct B.PRO_ID,SUM(INF_QTDE) as QTDE_ESTQ  ');
                             Q_AUX4.Sql.Add(' from NF_ITENS B, MANIFESTOGERA C,NF A,OS D');
                             Q_AUX4.Sql.Add('where  B.NFI_CODI = C.NFI_CODI  ');
                             Q_AUX4.Sql.Add('and A.NFI_CODI = B.NFI_CODI   ');
                             Q_AUX4.Sql.Add('and A.OS_ID = D.OS_ID   ');
                             Q_AUX4.Sql.Add('and    C.MARCADOR = ' + '''' + 'SIM' + '''');
                             Q_AUX4.Sql.Add('and    C.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
                             Q_AUX4.Sql.Add('and (D.TOS_ID <> 5) and  (A.NFI_CLONE <> ' + '''' + 'S' + ''''+')');

                             {/************** miguel *************/}
                             {
                                 Adicionado filtro por usuario
                             }
                              Q_AUX4.Sql.Add(' and  c.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                             {/************** end ****************/}

                             Q_AUX4.Sql.Add('group  by B.PRO_ID ');
                             Q_AUX4.open ;

                             Q_AUX5.close ;
                             Q_AUX5.Sql.Clear ;
                             Q_AUX5.Sql.Add(' Select   SUM(A.MRP_QTDE) as TOT2 ,A.PRO_ID from MANIFESTO_RESUMOPRODUTO A,MANIFESTO B,NF C,OS D ');
                             Q_AUX5.Sql.Add(' where    A.MANI_ID = B.MANI_ID  ') ;
                             Q_AUX5.Sql.Add(' and      A.MANI_ID = C.MANI_ID  ') ;
                             Q_AUX5.Sql.Add(' and      C.OS_ID = D.OS_ID  ');
                             Q_AUX5.Sql.Add(' and      B.MANI_ID not in(Select MANI_ID from ESTOQUE  ');
                             Q_AUX5.Sql.Add(' where    B.MANI_ID = MANI_ID) ') ;

                             Q_AUX5.Sql.Add(' and      (B.CONFIRMA = ' + '''' + '' + '''');
                             Q_AUX5.Sql.Add(' or B.CONFIRMA is null)');

                             Q_AUX5.Sql.Add(' and      A.PRO_Id = ' + Q_AUX.fieldbyname('PRO_ID').asstring  ) ;
                             Q_AUX5.Sql.Add(' and      D.TOS_Id <> 5' ) ;
                             Q_AUX5.Sql.Add(' and  C.NFI_CLONE <> ' + '''' + 'S' + '''');  {aqui}

                             {/************** miguel *************/}
                             {
                                 Adicionado filtro por usuario
                             }
                              Q_AUX5.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;

                             {/************** end ****************/}
                             Q_AUX5.Sql.Add(' Group by A.PRO_ID  ');
                             Q_AUX5.open  ;

                             IF Q_AUX4.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then begin
                                Q_ESTQ2.open ;
                                IF Q_ESTQ2.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then
                                   SALDO := (Q_ESTQ2QTDE_ESTQ.asfloat - ((Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat)+(Q_AUX5.fieldbyname('TOT2').asfloat)) )
                                 else
                                    SALDO := 0;
                                Q_ESTQ2.close ;
                             end ;


                             IF (SALDO <= 0) then BEGIN

                                If ( SALDO < 0)  then BEGIN

                                     Q_INF.open ;
                                     Q_ESTQ.open ;
                                     Q_MANIFESTOS.open ;

                                     Panel14.visible := true ;
                                     Panel3.enabled := false ;
                                     Panel1.enabled := false ;

                                     wwDBEdit1.text := '' ;
                                     Q_MANI.edit ;
                                     Q_MANIMARCADOR.asstring := ''   ;
                                     Q_MANIMANI_ORDEM.asstring := '' ;
                                     Q_MANI.post ;
                                     GRIDnfe.enabled := false ;
                                     LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                                     CONT := 99999;
                                     break ;
                                     abort ;

                                 end ;
                             END ;

                             CONT :=  CONT + 1 ;

                             Q_AUX.next ;
                         end ;
                    end else begin
                       MessageDlg('Produto(s) sem estoque !',mtInformation,[mbOk], 0);
                       abort ;
                    end ;
                    {verficar qtos produtos diferentes existem na NF}
                    {Q_AUX3.close ;
                    Q_AUX3.Sql.Clear ;
                    Q_AUX3.Sql.Add('SELECT distinct count(PRO_ID) as QTDE_PROD_DIFER from NF_ITENS  ');
                    Q_AUX3.Sql.Add(' where  NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                    Q_AUX3.open  ;  }
                    Q_AUX3.close ;
                    Q_AUX3.Sql.Clear ;
                    Q_AUX3.Sql.Add('SELECT  count(*) as QTDE_PROD_DIFER from ');
                    Q_AUX3.Sql.Add('(SELECT DISTINCT PRO_ID FROM NF_ITENS ') ;
                    Q_AUX3.Sql.Add(' WHERE  NFI_CODI = ' + Q_MANINFI_CODI.asstring  + ')' );
                    Q_AUX3.Sql.Add(' A ') ;
                    Q_AUX3.open  ;
                    {verficar qtos produtos diferentes existem na NF}

                       {verifica se existem todos os produtos no ESTOQUE}
                    IF CONT < Q_AUX3.fieldbyname('QTDE_PROD_DIFER').asinteger then begin

                       wwDBEdit1.text := '' ;
                       Q_MANI.edit ;
                       Q_MANIMARCADOR.asstring := ''   ;
                       Q_MANIMANI_ORDEM.asstring := '' ;
                       Q_MANI.post ;
                       ///GRIDnfe.enabled := false ;
                       MessageDlg('Verificar os itens desta nota, pois nem todos os itens encontra-se em áreas disponíveis !',mtInformation,[mbOk], 0);
                       abort ;
                    end ;
                    ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída  //////////////
          end ;
    end ;


     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
     Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

     Q_AUX.open ;

     Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
     Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}


     Q_AUX.open ;

     Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
     Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}


     Q_AUX.open ;

     Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

     Q_AUX.close;
     Q_AUX.Sql.Clear;
     Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
     Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}


     Q_AUX.open ;

     Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

     try
     Begin


     {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
     STP_MANIFPROD.Execproc ; }

     QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
     QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
     QR_STP_MANIFESTO_PRODUTO.ExecSQL;


      End
    except
      begin
       MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
       abort  ;
      end;
    end;



     Q_MANIPROD.close;
     Q_MANIPROD.Sql.Clear;
     Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTALPALLET) as QTDEMARCA from');
     Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
     Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
     Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
     Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

     Q_MANIPROD.open ;

     Label10.caption := Q_MANIPROD.fieldbyname('QTDEMARCA').asstring ;


     Q_MANIPROD.close;
     Q_MANIPROD.Sql.Clear;
     Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTAL) as QTDEMARCA from');
     Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
     Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
     Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
     Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_MANIPROD.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

     Q_MANIPROD.open ;

     Label14.caption := formatfloat('###,###,##0.000',(Q_MANIPROD.fieldbyname('QTDEMARCA').asfloat)) ;
     Label3.width := 130 ;
     Label4.width := 130 ;
     Label5.width := 130 ;
     Label6.width := 130 ;
     Label10.width := 130 ;
     Label14.width := 130 ;

end;

procedure TFGeraManifesto.GridNFECalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
    if (Q_MANISEMESTOQ.asstring <> 'S') then begin
       if not highlight then
            AFONT.COLOR:= CLBLACK ;
       if  highlight then
            AFONT.COLOR:= CLRED ;
       ABrush.color := $00D5FFFF;
    end else begin
       if not highlight then
            AFONT.COLOR:= CLBLACK ;
       if  highlight then
            AFONT.COLOR:= CLRED ;
     ABrush.color := $00A4D0D0
    end ;

end;

procedure TFGeraManifesto.BitBtn3Click(Sender: TObject);
var
 CONTy : integer ;
begin

   if CheckBox1.Checked then begin
        Q_AUX.close;
         Q_AUX.Sql.Clear;
         Q_AUX.Sql.Add('update MANIFESTOGERA set MARCADOR = ' + ''''+ 'SIM' + '''');
         Q_AUX.Sql.Add('WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

         Q_AUX.ExecSql;

         Q_MANI.close;
         Q_MANI.Open;

         Abort;

   end;




    CONTy := 0 ;
    ////////// *********** ///////////////

           Q_AUX3.close ;
           Q_AUX3.Sql.Clear ;
           Q_AUX3.Sql.Add('SELECT	round(SUM(B.INF_QTDE),2) as QTDE_PROD,B.PRO_ID');
           Q_AUX3.Sql.Add('FROM    NF_ITENS B, MANIFESTOGERA F');
           Q_AUX3.Sql.Add('WHERE B.NFI_CODI NOT IN	(SELECT		A.NFI_CODI');
           Q_AUX3.Sql.Add('		FROM			MANIFESTOGERA A,');
           Q_AUX3.Sql.Add('					OS C, ');
           Q_AUX3.Sql.Add('					NF D,');
           Q_AUX3.Sql.Add('					NF_ITENS E   ');
           Q_AUX3.Sql.Add('		WHERE		A.NFI_CODI = D.NFI_CODI  ');
           Q_AUX3.Sql.Add('		and			D.OS_ID = C.OS_ID  ');
           Q_AUX3.Sql.Add('             and  A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX3.Sql.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_AUX3.Sql.Add('		AND			(C.TOS_ID = 5 or D.NFI_CLONE =  ' + '''' + 'S' + '''' + ')');

           Q_AUX3.Sql.Add('		Group by		A.NFI_CODI) ');
           Q_AUX3.Sql.Add('AND B.NFI_CODI = F.NFI_CODI');
           Q_AUX3.Sql.Add('and F.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX3.Sql.Add(' and  F.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

           Q_AUX3.Sql.Add('GROUP BY	B.PRO_ID ');
           Q_AUX3.open  ;


           Q_AUX3.first;
           while not Q_AUX3.eof do begin

               Q_AUX2.close ;
               Q_AUX2.Sql.Clear ;
               Q_AUX2.Sql.Add('SELECT C.PRO_ID,round(SUM(C.ESTQ_QTDE),2) as QTDE  ');
               Q_AUX2.Sql.Add('FROM   ESTOQUE C ');
               Q_AUX2.Sql.Add('where  C.ESTQ_DT_ENTRADA IS NOT NULL');
               Q_AUX2.Sql.Add('and    C.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
               Q_AUX2.Sql.Add('and    ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
               Q_AUX2.Sql.Add('and   (C.MANI_ID is NULL or C.MANI_ID = ' + '''' + '' + '''' + ')');
               Q_AUX2.Sql.Add('and    C.PRO_Id = ' + Q_AUX3.fieldbyname('PRO_ID').asstring  ) ;
               //Q_AUX2.Sql.Add('and    C.AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + FFGeraManifesto.Q_PARPAR_ID.asstring ) ;
               Q_AUX2.Sql.Add('and    C.AR_ID  in(Select AR_ID from AREA where PAR_ID = ' + IntToStr(GERA_PARAMETRO) ) ;
               Q_AUX2.Sql.Add('and    AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
               Q_AUX2.Sql.Add('Group  By C.PRO_ID ');
               Q_AUX2.open  ;

               Q_AUX4.close ;
               Q_AUX4.Sql.Clear ;
               Q_AUX4.Sql.Add('Select   SUM(A.MRP_QTDE) as TOT2 ,A.PRO_ID from MANIFESTO_RESUMOPRODUTO A,MANIFESTO B,NF C,OS D');
               Q_AUX4.Sql.Add(' where    A.MANI_ID = B.MANI_ID  ') ;
               Q_AUX4.Sql.Add(' and      A.MANI_ID = C.MANI_ID  ') ;
               Q_AUX4.Sql.Add(' and      C.OS_ID = D.OS_ID  ') ;
               Q_AUX4.Sql.Add(' and      B.MANI_ID not in(Select MANI_ID from ESTOQUE  ');
               Q_AUX4.Sql.Add(' where    B.MANI_ID = MANI_ID) ') ;
               Q_AUX4.Sql.Add(' and A.PRO_Id = ' + Q_AUX3.fieldbyname('PRO_ID').asstring  ) ;
               Q_AUX4.Sql.Add(' and D.TOS_Id <> 5' ) ;
               Q_AUX4.Sql.Add(' and  C.NFI_CLONE <> ' + '''' + 'S' + '''');  {aqui}

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX4.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

               Q_AUX4.Sql.Add('        group by A.PRO_ID  ');
               Q_AUX4.open  ;

               If ( ((Q_AUX2.fieldbyname('QTDE').asfloat)-(Q_AUX4.fieldbyname('TOT2').asfloat)) < Q_AUX3.fieldbyname('QTDE_PROD').asfloat) then BEGIN
                  MessageDlg('Quantidade de UV insuficiente no Estoque, para todas as Notas Fiscais !',mtInformation,[mbOk], 0);
                  abort ;
               end ;

               CONTy := CONTy + 1 ;
               Q_AUX3.next ;
           end ;
   ////////// *********** ///////////////
   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('update MANIFESTOGERA set MARCADOR = ' + ''''+ 'SIM' + '''');
   Q_AUX.Sql.Add('WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.ExecSql;

   Q_AUX3.close ;
   Q_AUX3.Sql.Clear ;
   Q_AUX3.Sql.Add('SELECT * from MANIFESTOGERA' ) ;
   Q_AUX3.Sql.Add('WHERE MARCADOR = ' + '''' + 'SIM' + '''' ) ;
   Q_AUX3.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX3.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX3.open  ;

   CONTy := 0 ;
   Q_AUX3.first ;
   while not Q_AUX3.eof do begin

         CONTy := CONTy + 10 ;

        Q_AUX4.close;
        Q_AUX4.Sql.Clear;
        Q_AUX4.Sql.Add('update MANIFESTOGERA set MANI_ORDEM = ' + INTTOSTR(CONTy));
        Q_AUX4.Sql.Add('WHERE NFI_CODI = ' + Q_AUX3.fieldbyname('NFI_CODI').asstring ) ;
        Q_AUX4.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
        Q_AUX4.ExecSql;
       Q_AUX3.next ;
   end ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.Sql.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;


   try
   Begin


     {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
     STP_MANIFPROD.Execproc ; }

     QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
     QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
     QR_STP_MANIFESTO_PRODUTO.ExecSQL;

    End
  except
    begin
     MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
     abort  ;
    end;
  end;

     Q_MANIPROD.close;
     Q_MANIPROD.Sql.Clear;
     Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTALPALLET) as QTDEMARCA from');
     Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
     Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
     Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
     Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_MANIPROD.SQL.Add(' and  B.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

     Q_MANIPROD.open ;

     Label10.caption := Q_MANIPROD.fieldbyname('QTDEMARCA').asstring ;


     Q_MANIPROD.close;
     Q_MANIPROD.Sql.Clear;
     Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTAL) as QTDEMARCA from');
     Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
     Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
     Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
     Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_MANIPROD.SQL.Add(' and  B.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

     Q_MANIPROD.open ;

     Label14.caption := formatfloat('###,###,##0.000',(Q_MANIPROD.fieldbyname('QTDEMARCA').asfloat)) ;



     Label3.width := 130 ;
     Label4.width := 130 ;
     Label5.width := 130 ;
     Label6.width := 130 ;
     Label10.width := 130 ;
     Label14.width := 130 ;



  Q_MANI.close ;
  Q_MANI.open ;
end;

procedure TFGeraManifesto.BitBtn4Click(Sender: TObject);
begin
  Q_AUX.close;
  Q_AUX.Sql.Clear;
  Q_AUX.Sql.Add('update MANIFESTOGERA set MARCADOR = ' + ''''+ '' + '''' + ',' ) ;
  Q_AUX.Sql.Add('MANI_ORDEM = null');
  Q_AUX.Sql.Add('where  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

  Q_AUX.ExecSql;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
   Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;
    {pppp}
   Q_AUX.close;
   Q_AUX.Sql.Clear;
   Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
   Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
   Q_AUX.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

   Q_AUX.open ;

   Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;


  try
   Begin
     {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
     STP_MANIFPROD.Execproc ; }

     QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
     QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
     QR_STP_MANIFESTO_PRODUTO.ExecSQL;

    End
  except
    begin
     MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
     abort  ;
    end;
  end;



     Label10.caption := '0' ;
     Label14.caption := '0' ;

     Label3.width := 130 ;
     Label4.width := 130 ;
     Label5.width := 130 ;
     Label6.width := 130 ;
     Label10.width := 130 ;
     Label14.width := 130 ;



  Q_MANI.close ;
  Q_MANI.open ;
end;

procedure TFGeraManifesto.BitBtn2Click(Sender: TObject);
begin

    Q_AUX1.close ;
    Q_AUX1.Sql.Clear ;
    Q_AUX1.Sql.Add('Select COUNT(*) as QTDEREG from MANIFESTOGERA ') ;
    Q_AUX1.Sql.Add(' where MARCADOR = ' + '''' + 'SIM' + '''' ) ;
    Q_AUX1.Sql.Add('and  NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX1.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

    Q_AUX1.open  ;

  //  if FSenha.Dtb_BaseDados.InTransaction then
  //     FSenha.Dtb_BaseDados.Commit;



    IF (Q_AUX1.fieldbyname('QTDEREG').asinteger > 0) then begin
           try
             Begin
               Q_AUX1.CLOSE;
              { If FFGeraManifesto.RadioGroup1.itemindex = 0 then
                  STP_MANIFNF.ParamByName('@TRANSP').Value  := 'S'
                else
                  STP_MANIFNF.ParamByName('@TRANSP').Value  := 'N' ;

               STP_MANIFNF.ParamByName('@PESO').Value   := Label3.caption;
               STP_MANIFNF.ParamByName('@VOLUME').Value := Label4.caption;
               STP_MANIFNF.ParamByName('@EMP').Value :=  FFGeraManifesto.Q_PARPAR_ID.asstring ;
               STP_MANIFNF.Execproc   ;   }

               NOVO_MANIFESTO := 0;

               //If FFGeraManifesto.RadioGroup1.itemindex = 0 then
               If TRANSPORTADOR_NBF = 0 then
                  STP_MANIFESTO.ParamByName('@TRANSP').Value  := 'S'
                else
                  STP_MANIFESTO.ParamByName('@TRANSP').Value  := 'N' ;

               STP_MANIFESTO.ParamByName('@PESO').Value   := Label3.caption;
               STP_MANIFESTO.ParamByName('@VOLUME').Value := Label4.caption;
               //STP_MANIFESTO.ParamByName('@EMP').Value :=  FFGeraManifesto.Q_PARPAR_ID.asstring ;
               STP_MANIFESTO.ParamByName('@EMP').Value :=  IntToStr(GERA_PARAMETRO) ;
               STP_MANIFESTO.ParamByName('@CH').AsInteger := FMenu.SqlUsuariosCH.AsInteger;
               STP_MANIFESTO.Execproc   ;

               

               NOVO_MANIFESTO := STP_MANIFESTO.PARAMBYNAME('@MANI_NOVO').AsInteger;


              End
            except
              begin
               MessageDlg('Geração do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
               abort  ;
              end;
            end;

            ULTIMO := 'S' ;

            IF Q_MANINFI_TRANS.asstring = 'S' then begin
                 Q_AUX.close ;
                 Q_AUX.Sql.Clear ;
                 Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA = ' + '''' + '' + '''' + ',');
                 Q_AUX.Sql.Add(' FLAGTELA_USUARIO  = ' + '''' + '' + '''' + ',');
                 Q_AUX.Sql.Add(' FLAGTELA_DATA   = ' + '''' + '' + '''' );
                 Q_AUX.ExecSql ;
            END ELSE BEGIN
                 Q_AUX.close ;
                 Q_AUX.Sql.Clear ;
                 Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA2 = ' + '''' + '' + '''' + ',');
                 Q_AUX.Sql.Add(' FLAGTELA2_USUARIO  = ' + '''' + '' + '''' + ',');
                 Q_AUX.Sql.Add(' FLAGTELA2_DATA   = ' + '''' + '' + '''' );
                 Q_AUX.ExecSql ;
            END ;

            Q_aux.close;
            Q_aux.Sql.Clear;
            Q_aux.Sql.Add('DELETE MANIFESTOGERA_PROD WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

            Q_aux.ExecSql;

            Q_aux.close;
            Q_aux.Sql.Clear;
            Q_aux.Sql.Add('DELETE MANIFESTOGERA WHERE NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}


             //miguel addd para apagar as notas ja geradas
             Q_AUX.SQL.Add(' and marcador = ''SIM'' ');

            Q_aux.ExecSql;

            

            Application.Createform(TFManifesto, FManifesto);
            FManifesto.ShowModal;
            FManifesto.Release;




            //Miguel - solicitado para q nao seja mais fechada a tela depois da geração.
            //FGeraManifesto.close ;

             Q_MANI.Close;
             Q_MANI.Open;

             BitBtn2.Enabled := False;

            ////////////////////////////////////////////////////////////////////////////











            //APOS A GERAÇÃO DO MANIFESTO É ALTERADO O STATUS DA PRE-CARGA PARA EMITIDO
            IF GERA_CARGA_ID > 0 then
            begin
                frmPreCarga.qrHeader.Locate('CARGA_ID', GERA_CARGA_ID, []);
                frmPreCarga.qrHeader.Edit;
                frmPreCarga.qrHeaderSTATUS.Value := 'E';
                frmPreCarga.qrHeader.Post;
                frmPreCarga.qrHeader.CLOSE;
                frmPreCarga.qrHeader.Open;
            end;

            NOVO_MANIFESTO := 0;

    end else begin
        MessageDlg('Para Gerar Manifesto de Carga escolha pelo menos uma Nota fiscal !',mtInformation,[mbOk], 0);
        abort  ;
    end ;
end;

procedure TFGeraManifesto.SpeedButton1Click(Sender: TObject);
begin
    Panel14.visible := false ;
    Panel3.enabled := true ;
    Panel1.enabled := true ;
    GRIDnfe.enabled := true ;

  /// CheckBox2.state :=  cbunchecked  ;
   CheckBox1.state :=  cbunchecked  ;
  /// CheckBox2.enabled := false ;
  bitbtn1.enabled := false ;

   Q_INF.close ;
   Q_ESTQ.close ;
   Q_MANIFESTOS.close ;
end;

procedure TFGeraManifesto.DS_ESTQDataChange(Sender: TObject;
  Field: TField);
begin

     Q_AUX4.close;
     Q_AUX4.Sql.Clear;
     Q_AUX4.Sql.Add(' Select distinct B.PRO_ID,SUM(INF_QTDE) as QTDE_ESTQ from NF_ITENS B, MANIFESTOGERA C ');
     Q_AUX4.Sql.Add(' where B.NFI_CODI = C.NFI_CODI ');
     Q_AUX4.Sql.Add(' and   C.MARCADOR = ' + '''' + 'SIM' + '''');
     Q_AUX4.Sql.Add(' and  C.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');


       {/************** miguel *************/}
       {
           Adicionado filtro por usuario
       }
        Q_AUX4.SQL.Add(' and  c.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
       {/************** end ****************/}

     IF Q_ESTQPRO_ID.asstring <> '' then
       Q_AUX4.Sql.Add(' and  B.PRO_ID = ' + Q_ESTQPRO_ID.asstring);
     Q_AUX4.Sql.Add(' group by B.PRO_ID');
     Q_AUX4.open ;

     IF (Q_ESTQPRO_ID.asstring <> '') then begin

         IF Q_AUX4.locate('PRO_ID',Q_ESTQPRO_ID.asstring,[]) then begin
            Q_ESTQ2.open ;
            Q_ESTQ2.locate('PRO_ID',Q_ESTQPRO_ID.asstring,[]);
            SALDO := (Q_ESTQ2QTDE_ESTQ.asfloat - Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat);
            Q_ESTQ2.close ;
         end ;
         LABEL21.caption :=  formatfloat('###,###,##0.000',Q_MANIQTDE.asfloat)  ;
         LABEL23.caption :=  formatfloat('###,###,##0.000',Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat)  ;
         LABEl29.caption :=  formatfloat('###,###,##0.000',Q_MANIFESTOSTOT.asfloat) ;
         LABEl31.caption :=  formatfloat('###,###,##0.000',((Q_ESTQQTDE_ESTQ.asfloat)-
                                        ((Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat) +
                                         (Q_MANIFESTOSTOT.asfloat))))  ;
         LABEL23.font.size   := 14 ;
    end else begin
         LABEL23.caption :=  'Produto sem estoque' ;
         LABEl31.caption :=  '0.000';
         LABEL23.font.size := 10 ;
    end ;



end;

procedure TFGeraManifesto.RadioGroup1Click(Sender: TObject);
begin
   //IF FFGeraManifesto.RadioGroup1.itemindex = 0 then begin
     IF TRANSPORTADOR_NBF = 0 then begin
       IF RadioGroup1.itemindex = 0 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.MARCADOR DESC ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 1 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.MANI_ORDEM ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 2 then begin
             Q_MANI.close;
             Q_MANI.Sql.Clear;
             Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
             Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
             Q_MANI.Sql.Add('where');
             Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
             Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
             Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
             Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
             Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

             Q_MANI.Sql.Add('order by A.CEP');
             Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 3 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.BAIRRO ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 4 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by C.MUN_NOME ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 5 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by D.REG_NOME');
           Q_MANI.open ;
       end ;


       IF RadioGroup1.itemindex = 6 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by B.NFI_DEST_RAZA');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 7 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.NFI_DTENTREGA ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 8 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.PESO ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 9 then begin
             Q_MANI.close;
             Q_MANI.Sql.Clear;
             Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
             Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
             Q_MANI.Sql.Add('where');
             Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
             Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
             Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
             Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
             Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

             Q_MANI.Sql.Add('order by A.VOLUME ');
             Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 10 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.NFI_NUMERO ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 11 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by E.CLIN_RAZA ');
           Q_MANI.open ;
       end ;


   end else begin
       IF RadioGroup1.itemindex = 0 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.MARCADOR DESC ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 1 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.MANI_ORDEM ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 2 then begin
             Q_MANI.close;
             Q_MANI.Sql.Clear;
             Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
             Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
             Q_MANI.Sql.Add('where');
             Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
             Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
             Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
             Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
             Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

             Q_MANI.Sql.Add('order by A.CEP');
             Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 3 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.BAIRRO ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 4 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by C.MUN_NOME ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 5 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by D.REG_NOME');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 6 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by B.NFI_DEST_RAZA');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 7 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.NFI_DTENTREGA ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 8 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.PESO ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 9 then begin
             Q_MANI.close;
             Q_MANI.Sql.Clear;
             Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
             Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
             Q_MANI.Sql.Add('where');
             Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
             Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
             Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
             Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
             Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

             Q_MANI.Sql.Add('order by A.VOLUME ');
             Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 10 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.NFI_NUMERO ');
           Q_MANI.open ;
       end ;

       IF RadioGroup1.itemindex = 11 then begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'N' + '''');

           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

           Q_MANI.Sql.Add('order by E.CLIN_RAZA ');
           Q_MANI.open ;
       end ;

   end ;
end;

procedure TFGeraManifesto.Q_MANIMARCADORChange(Sender: TField);
{var
   CONT : integer ;
   QTDE : STRING ;
   GERA : STRING ;
   SQL : STRING ;}
begin
    CONT  := 0 ;
    SALDO := 0 ;

    GERA := Q_MANIGERA_ID.asstring ;

    if FSenha.Dtb_BaseDados.InTransaction then
       FSenha.Dtb_BaseDados.Commit;

    If  Q_MANIMARCADOR.asstring  = 'SIM' then begin

         Q_AUX6.close ;
         Q_AUX6.Sql.Clear ;
         Q_AUX6.Sql.Add(' Select MAX(MANI_ORDEM) as QTDEREG from MANIFESTOGERA (NOLOCK) ') ;
         Q_AUX6.Sql.Add(' where MARCADOR = ' + '''' + 'SIM' + '''' ) ;
         Q_AUX6.Sql.Add(' and   NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
           {/************** miguel *************/}
           {
               Adicionado filtro por usuario
           }
            Q_AUX6.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
           {/************** end ****************/}

         Q_AUX6.open  ;

         SQL:= ' UPDATE MANIFESTOGERA  SET MARCADOR = ' + '''' + 'SIM' + '''' +  ',' +
               ' MANI_ORDEM = ' + inttostr((Q_AUX6.fieldbyname('QTDEREG').asinteger + 10))    +
               ' WHERE GERA_ID = ' + GERA ;

         Q_AUX6.Close;
         Q_AUX6.SQL.CLEAR;
         Q_AUX6.SQL.ADD(SQL);
         Q_AUX6.ExecSQL;

         Q_MANI.ClosE;
         Q_MANI.Open;

         Q_MANI.LOCATE('GERA_ID', GERA,[]);
         Q_MANI.edit;


    end else begin
         SQL:= ' UPDATE MANIFESTOGERA  SET MARCADOR = ' + '''' + '' + '''' + ',' +
               ' MANI_ORDEM = null ' +
               ' WHERE GERA_ID = ' + GERA ;

         Q_AUX6.Close;
         Q_AUX6.SQL.CLEAR;
         Q_AUX6.SQL.ADD(SQL);
         Q_AUX6.ExecSQL;



         Q_MANI.ClosE;
         Q_MANI.Open;

         Q_MANI.LOCATE('GERA_ID', GERA,[]);
         Q_MANI.edit;

    end ;




    IF  CheckBox1.Checked = false then begin

            Q_AUX1.close ;
            Q_AUX1.Sql.Clear ;
            Q_AUX1.Sql.Add('select COUNT(*) as qtde    from os A,NF B where') ;
            Q_AUX1.Sql.Add('(TOS_ID = 5 or B.NFI_CLONE = ' + '''' + 'S' + '''' + ')');
            Q_AUX1.Sql.Add(' and A.OS_ID = B.OS_ID');
            Q_AUX1.Sql.Add(' and B.MANI_ID is null') ;
            Q_AUX1.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
            Q_AUX1.open ;

            IF (Q_AUX1.fieldbyname('qtde').asinteger = 0) then begin

                  If (wwDBEdit1.text = 'SIM') then begin

                            ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída   //////////////
                            Q_AUX1.close ;
                            Q_AUX1.Sql.Clear ;
                            Q_AUX1.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                            Q_AUX1.Sql.Add(' where NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                            Q_AUX1.open  ;

                            Q_AUX.close;
                            Q_AUX.Sql.Clear;
                            Q_AUX.Sql.Add('Select COUNT(*) as SUBTOTAL,A.PRO_ID,SUM(ESTq_QTDE) as QTDE_ESTQ from ESTOQUE A,NF_ITENS B ') ;
                            Q_AUX.Sql.Add(' where A.PRO_ID = B.PRO_ID ') ;
                            Q_AUX.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                            Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
                            Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                            Q_AUX.Sql.Add(' and A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                            Q_AUX.Sql.Add(' and (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')');
                            //Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + FFGeraManifesto.Q_PARPAR_ID.asstring) ;
                            Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + IntToStr(GERA_PARAMETRO)) ;
                            Q_AUX.Sql.Add(' and AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                            Q_AUX.Sql.Add(' group by A.PRO_ID ');
                            Q_AUX.open ;

                            IF  Q_AUX.fieldbyname('SUBTOTAL').asinteger > 0 then begin

                                Q_AUX.first;
                                while not Q_AUX.eof do begin

                                     Q_AUX2.close;
                                     Q_AUX2.Sql.Clear;
                                     Q_AUX2.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                                     Q_AUX2.Sql.Add(' where PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring ) ;
                                     Q_AUX2.Sql.Add(' and   NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                     Q_AUX2.open ;


                                     Q_AUX4.close;
                                     Q_AUX4.Sql.Clear;
                                     Q_AUX4.Sql.Add(' SELECT distinct B.PRO_ID,SUM(INF_QTDE) as QTDE_ESTQ  ');
                                     Q_AUX4.Sql.Add(' from NF_ITENS B (NOLOCK), MANIFESTOGERA C (NOLOCK),NF A (NOLOCK),OS D (NOLOCK)');
                                     Q_AUX4.Sql.Add('where  B.NFI_CODI = C.NFI_CODI  ');
                                     Q_AUX4.Sql.Add('and A.NFI_CODI = B.NFI_CODI   ');
                                     Q_AUX4.Sql.Add('and A.OS_ID = D.OS_ID   ');
                                     Q_AUX4.Sql.Add('and    C.MARCADOR = ' + '''' + 'SIM' + '''');
                                     Q_AUX4.Sql.Add('and    C.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
                                     Q_AUX4.Sql.Add('and (D.TOS_ID <> 5) and  (A.NFI_CLONE <> ' + '''' + 'S' + ''''+')');

                                     {/************** miguel *************/}
                                     {
                                         Adicionado filtro por usuario
                                     }
                                      Q_AUX4.SQL.Add(' and  c.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                                     {/************** end ****************/}

                                     Q_AUX4.Sql.Add('group  by B.PRO_ID ');
                                     Q_AUX4.open ;

                                     Q_AUX5.close ;
                                     Q_AUX5.Sql.Clear ;
                                     Q_AUX5.Sql.Add(' Select   SUM(A.MRP_QTDE) as TOT2 ,A.PRO_ID from MANIFESTO_RESUMOPRODUTO A (NOLOCK),MANIFESTO B,NF C,OS D ');
                                     Q_AUX5.Sql.Add(' where    A.MANI_ID = B.MANI_ID  ') ;
                                     Q_AUX5.Sql.Add(' and      A.MANI_ID = C.MANI_ID  ') ;
                                     Q_AUX5.Sql.Add(' and      C.OS_ID = D.OS_ID  ');
                                     Q_AUX5.Sql.Add(' and      B.MANI_ID not in(Select MANI_ID from ESTOQUE  ');
                                     Q_AUX5.Sql.Add(' where    B.MANI_ID = MANI_ID) ') ;

                                     Q_AUX5.Sql.Add(' and      (B.CONFIRMA = ' + '''' + '' + '''');
                                     Q_AUX5.Sql.Add(' or B.CONFIRMA is null)');

                                     Q_AUX5.Sql.Add(' and      A.PRO_Id = ' + Q_AUX.fieldbyname('PRO_ID').asstring  ) ;
                                     Q_AUX5.Sql.Add(' and  D.TOS_ID <> 5  ');
                                     Q_AUX5.Sql.Add(' and  C.NFI_CLONE <> ' + '''' + 'S' + '''');  {aqui}

                                     {/************** miguel *************/}
                                     {
                                         Adicionado filtro por usuario
                                     }
                                      Q_AUX5.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                                     {/************** end ****************/}

                                     Q_AUX5.Sql.Add(' Group by A.PRO_ID  ');
                                     Q_AUX5.open   ;


                                     IF Q_AUX4.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then begin
                                        Q_ESTQ2.open ;
                                        IF Q_ESTQ2.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then
                                           SALDO := (Q_ESTQ2QTDE_ESTQ.asfloat - ((Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat)+(Q_AUX5.fieldbyname('TOT2').asfloat)) )
                                         else
                                            SALDO := 0;
                                        Q_ESTQ2.close ;
                                     end ;


                                     IF (SALDO <= 0) then BEGIN

                                        If ( SALDO < 0)  then BEGIN

                                             Q_INF.open ;
                                             Q_ESTQ.open ;
                                             Q_MANIFESTOS.open ;

                                             Panel14.visible := true ;
                                             Panel3.enabled := false ;
                                             Panel1.enabled := false ;

                                             wwDBEdit1.text := '' ;
                                             Q_MANI.edit ;
                                             Q_MANIMARCADOR.asstring := ''   ;
                                             Q_MANIMANI_ORDEM.asstring := '' ;
                                             Q_MANI.post ;
                                             GRIDnfe.enabled := false ;
                                             LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                                             CONT := 99999;
                                             break ;
                                             abort ;

                                         end ;
                                     END ;

                                     CONT :=  CONT + 1 ;

                                     Q_AUX.next ;
                                 end ;
                            end else begin
                               MessageDlg('Produto(s) sem estoque !',mtInformation,[mbOk], 0);
                               abort ;
                            end ;

                            ///verficar qtos produtos diferentes existem na NF

                            Q_AUX3.close ;
                            Q_AUX3.Sql.Clear ;
                            Q_AUX3.Sql.Add('SELECT  count(*) as QTDE_PROD_DIFER from ');
                            Q_AUX3.Sql.Add('(SELECT DISTINCT PRO_ID FROM NF_ITENS ') ;
                            Q_AUX3.Sql.Add(' WHERE  NFI_CODI = ' + Q_MANINFI_CODI.asstring  + ')' );
                            Q_AUX3.Sql.Add(' A ') ;
                            Q_AUX3.open;
                            ///verficar qtos produtos diferentes existem na NF


                            //verifica se existem todos os produtos no ESTOQUE
                            IF CONT < Q_AUX3.fieldbyname('QTDE_PROD_DIFER').asinteger then begin
                               Q_INF.open ;
                               Q_ESTQ.open ;
                               Q_MANIFESTOS.open ;

                               Panel14.visible := true ;
                               Panel3.enabled := false ;
                               Panel1.enabled := false ;


                               wwDBEdit1.text := '' ;
                               Q_MANI.edit ;
                               Q_MANIMARCADOR.asstring := ''   ;
                               Q_MANIMANI_ORDEM.asstring := '' ;
                               Q_MANI.post ;

                               GRIDnfe.enabled := false ;
                               LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                            end ;
                            ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída  //////////////
                  end ;
            end ;


             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA (NOLOCK)') ;
             Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_AUX.open ;

             Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA (NOLOCK)') ;
             Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_AUX.open ;

             Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA (NOLOCK)') ;
             Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_AUX.open ;

             Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

             Q_AUX.close;
             Q_AUX.Sql.Clear;
             Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA (NOLOCK)') ;
             Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_AUX.open ;

             Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

             try
             Begin



               {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
               STP_MANIFPROD.Execproc ; }

               QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
               QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
               QR_STP_MANIFESTO_PRODUTO.ExecSQL;



              End
            except
              begin
               MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
               abort  ;
              end;
            end;



             Q_MANIPROD.close;
             Q_MANIPROD.Sql.Clear;
             Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTALPALLET) as QTDEMARCA from');
             Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A (NOLOCK),MANIFESTOGERA B (NOLOCK)') ;
             Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
             Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
             Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_MANIPROD.open ;

             Label10.caption := Q_MANIPROD.fieldbyname('QTDEMARCA').asstring ;




             Q_MANIPROD.close;
             Q_MANIPROD.Sql.Clear;
             Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTAL) as QTDEMARCA from');
             Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A (NOLOCK),MANIFESTOGERA B (NOLOCK)') ;
             Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
             Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
             Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_MANIPROD.open ;

             Label14.caption := formatfloat('###,###,##0.000',(Q_MANIPROD.fieldbyname('QTDEMARCA').asfloat)) ;

             Label3.width := 130 ;
             Label4.width := 130 ;
             Label5.width := 130 ;
             Label6.width := 130 ;
             Label10.width := 130 ;
             Label14.width := 130 ;
    end;

    //removido calculo de valores no modo rapido - solicitado por alexandre nbf
    // else begin  //checkbox
    //adicionar soma dos totais quando estiver na seleção de modo rápid


//             Q_AUX.close;
//             Q_AUX.Sql.Clear;
//             Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA (NOLOCK)') ;
//             Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
//             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
//
//             {/************** miguel *************/}
//             {
//                 Adicionado filtro por usuario
//             }
//              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
//             {/************** end ****************/}
//
//             Q_AUX.open ;
//
//             Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;
//
//             Q_AUX.close;
//             Q_AUX.Sql.Clear;
//             Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA (NOLOCK)') ;
//             Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
//             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
//
//             {/************** miguel *************/}
//             {
//                 Adicionado filtro por usuario
//             }
//              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
//             {/************** end ****************/}
//
//             Q_AUX.open ;
//
//             Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;
//
//             Q_AUX.close;
//             Q_AUX.Sql.Clear;
//             Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA (NOLOCK)') ;
//             Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
//             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
//
//             {/************** miguel *************/}
//             {
//                 Adicionado filtro por usuario
//             }
//              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
//             {/************** end ****************/}
//
//             Q_AUX.open ;
//
//             Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;
//
//             Q_AUX.close;
//             Q_AUX.Sql.Clear;
//             Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA (NOLOCK)') ;
//             Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
//             Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
//
//             {/************** miguel *************/}
//             {
//                 Adicionado filtro por usuario
//             }
//              Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
//             {/************** end ****************/}
//
//             Q_AUX.open ;
//
//             Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;
//
//             try
//             Begin
//
//
//
//               {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
//               STP_MANIFPROD.Execproc ; }
//
//               QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
//               QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
//               QR_STP_MANIFESTO_PRODUTO.ExecSQL;
//
//
//
//              End
//            except
//              begin
//               MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
//               abort  ;
//              end;
//            end;
//
//
//
//             Q_MANIPROD.close;
//             Q_MANIPROD.Sql.Clear;
//             Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTALPALLET) as QTDEMARCA from');
//             Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A (NOLOCK),MANIFESTOGERA B (NOLOCK)') ;
//             Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
//             Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
//             Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;
//
//             {/************** miguel *************/}
//             {
//                 Adicionado filtro por usuario
//             }
//              Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
//             {/************** end ****************/}
//
//             Q_MANIPROD.open ;
//
//             Label10.caption := Q_MANIPROD.fieldbyname('QTDEMARCA').asstring ;
//
//
//
//
//             Q_MANIPROD.close;
//             Q_MANIPROD.Sql.Clear;
//             Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTAL) as QTDEMARCA from');
//             Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A (NOLOCK),MANIFESTOGERA B (NOLOCK)') ;
//             Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
//             Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
//             Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;
//
//             {/************** miguel *************/}
//             {
//                 Adicionado filtro por usuario
//             }
//              Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
//             {/************** end ****************/}
//
//             Q_MANIPROD.open ;
//
//             Label14.caption := formatfloat('###,###,##0.000',(Q_MANIPROD.fieldbyname('QTDEMARCA').asfloat)) ;
//
//             Label3.width := 130 ;
//             Label4.width := 130 ;
//             Label5.width := 130 ;
//             Label6.width := 130 ;
//             Label10.width := 130 ;
//             Label14.width := 130 ;
//
//
//    end;  //if check box




//solicitado por alexandre da NBF para q assim q for selecionado ou nao passar a proxima linha
       //    if Q_MANI.Eof = False then
       //       Q_MANI.Next;
end ;
procedure TFGeraManifesto.GridNFETitleButtonClick(Sender: TObject;
  AFieldName: String);
  var formato : WideString;
begin

  formato :=   GridNFE.Selected.Text ;

  

   if afieldname = 'MARCADOR' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO, A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.MARCADOR DESC ');
           Q_MANI.open ;
   end;

   if afieldname = 'MANI_ORDEM' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.MANI_ORDEM desc');
           Q_MANI.open ;
   end;

   if afieldname = 'CEP' then
   begin
             Q_MANI.close;
             Q_MANI.Sql.Clear;
             Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
             Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
             Q_MANI.Sql.Add('where');
             Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
             Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
             Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
             Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
             Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_MANI.Sql.Add('order by A.CEP');
             Q_MANI.open ;
   end;

   if afieldname = 'BAIRRO' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.BAIRRO ');
           Q_MANI.open ;
   end;

   if afieldname = 'MUN_NOME' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by C.MUN_NOME ');
           Q_MANI.open ;
   end;

   if afieldname = 'REG_NOME' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by D.REG_NOME');
           Q_MANI.open ;
   end;

   if afieldname = 'NFI_DEST_RAZA' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by B.NFI_DEST_RAZA');
           Q_MANI.open ;
   end;

   if afieldname = 'NFI_DTENTREGA' then
   begin
           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.NFI_DTENTREGA ');
           Q_MANI.open ;
   end;

   if afieldname = 'PESO' then
   begin

           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.PESO ');
           Q_MANI.open ;

   end;







   if afieldname = 'VOLUME' then
   begin
             Q_MANI.close;
             Q_MANI.Sql.Clear;
             Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
             Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
             Q_MANI.Sql.Add('where');
             Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
             Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
             Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
             Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
             Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

             Q_MANI.Sql.Add('order by A.VOLUME ');
             Q_MANI.open ;
   end;






   if afieldname = 'NFI_NUMERO' then
   begin

           Q_MANI.close  ;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by A.NFI_NUMERO ');
           Q_MANI.open   ;

   end;





   if afieldname = 'CLIN_RAZA' then
   begin

           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by E.CLIN_RAZA ');
           Q_MANI.open ;

   end;



      if afieldname = 'NFI_DEST_ENDERECO' then
   begin

           Q_MANI.close;
           Q_MANI.Sql.Clear;
           Q_MANI.Sql.Add('Select b.NFI_DEST_ENDERECO,A.*,B.NFI_DEST_RAZA,C.MUN_NOME,D.REG_NOME,E.CLIN_RAZA ');
           Q_MANI.Sql.Add('from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E');
           Q_MANI.Sql.Add('where');
           Q_MANI.Sql.Add('A.NFI_CODI = B.NFI_CODI and  ');
           Q_MANI.Sql.Add('A.MUN_ID = C.MUN_ID and ');
           Q_MANI.Sql.Add('A.REG_ID = D.REG_ID and ');
           Q_MANI.Sql.Add('B.NFI_EMIT_CLI = E.CLIN_ID ');
           Q_MANI.Sql.Add('and A.NFI_TRANS = ' + '''' + 'S' + '''');

             {/************** miguel *************/}
             {
                 Adicionado filtro por usuario
             }
              Q_MANI.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
             {/************** end ****************/}

           Q_MANI.Sql.Add('order by b.NFI_DEST_ENDERECO ');
           Q_MANI.open ;

   end;

   GridNFE.Selected.Clear;
   GridNFE.Selected.Text := formato;
   GridNFE.ApplySelected;



end;

procedure TFGeraManifesto.FormShow(Sender: TObject);
begin
   GridNFE.setfocus ;
end;

procedure TFGeraManifesto.CheckBox1Click(Sender: TObject);
begin

  IF CheckBox1.state = cbchecked then  begin
    /// CheckBox2.enabled := true  ;   
     bitbtn1.enabled := true ;
    // BitBtn4.enabled := false ;
    // BitBtn3.enabled := false ;
     BitBtn2.enabled := false ;
  end else begin
    ///  CheckBox2.enabled := false ;
      bitbtn1.enabled := false ;
    //  BitBtn4.enabled := true ;
    //  BitBtn3.enabled := true ;
      BitBtn2.enabled := true ;
  end ;

end;

procedure TFGeraManifesto.CheckBox2Click(Sender: TObject);
var
  IMPEDE : string ;
begin

            Q_MANI.first ;
            while not Q_MANI.eof do begin

                          IMPEDE := '' ;
                          CONT  := 0 ;
                          SALDO := 0 ;

                          Q_AUX1.close ;
                          Q_AUX1.Sql.Clear ;
                          Q_AUX1.Sql.Add('select COUNT(*) as qtde    from os A,NF B where') ;
                          Q_AUX1.Sql.Add('(TOS_ID = 5 or B.NFI_CLONE = ' + '''' + 'S' + '''' + ')');
                          Q_AUX1.Sql.Add(' and A.OS_ID = B.OS_ID');
                          Q_AUX1.Sql.Add(' and B.MANI_ID is null') ;
                          Q_AUX1.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                          Q_AUX1.open ;

                          IF (Q_AUX1.fieldbyname('qtde').asinteger = 0) then begin

                                If (wwDBEdit1.text = 'SIM') then begin

                                          ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída   //////////////
                                          Q_AUX1.close ;
                                          Q_AUX1.Sql.Clear ;
                                          Q_AUX1.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                                          Q_AUX1.Sql.Add(' where NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                          Q_AUX1.open  ;

                                          Q_AUX.close;
                                          Q_AUX.Sql.Clear;
                                          Q_AUX.Sql.Add('Select COUNT(*) as SUBTOTAL,A.PRO_ID,SUM(ESTq_QTDE) as QTDE_ESTQ from ESTOQUE A,NF_ITENS B ') ;
                                          Q_AUX.Sql.Add(' where A.PRO_ID = B.PRO_ID ') ;
                                          Q_AUX.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                          Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
                                          Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                                          Q_AUX.Sql.Add(' and A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                                          Q_AUX.Sql.Add(' and (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')');
                                          //Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + FFGeraManifesto.Q_PARPAR_ID.asstring) ;
                                          Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + IntToStr(GERA_PARAMETRO)) ;
                                          Q_AUX.Sql.Add(' and AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                                          Q_AUX.Sql.Add(' group by A.PRO_ID ');
                                          Q_AUX.open ;

                                          IF  Q_AUX.fieldbyname('SUBTOTAL').asinteger > 0 then begin

                                              Q_AUX.first;
                                              while not Q_AUX.eof do begin

                                                   Q_AUX2.close;
                                                   Q_AUX2.Sql.Clear;
                                                   Q_AUX2.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                                                   Q_AUX2.Sql.Add(' where PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring ) ;
                                                   Q_AUX2.Sql.Add(' and   NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                                   Q_AUX2.open ;


                                                   Q_AUX4.close;
                                                   Q_AUX4.Sql.Clear;
                                                   Q_AUX4.Sql.Add(' SELECT distinct B.PRO_ID,SUM(INF_QTDE) as QTDE_ESTQ  ');
                                                   Q_AUX4.Sql.Add(' from NF_ITENS B, MANIFESTOGERA C,NF A,OS D');
                                                   Q_AUX4.Sql.Add('where  B.NFI_CODI = C.NFI_CODI  ');
                                                   Q_AUX4.Sql.Add('and A.NFI_CODI = B.NFI_CODI   ');
                                                   Q_AUX4.Sql.Add('and A.OS_ID = D.OS_ID   ');
                                                   Q_AUX4.Sql.Add('and    C.MARCADOR = ' + '''' + 'SIM' + '''');
                                                   Q_AUX4.Sql.Add('and    C.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
                                                   Q_AUX4.Sql.Add('and (D.TOS_ID <> 5) and  (A.NFI_CLONE <> ' + '''' + 'S' + ''''+')');

                                                   {/************** miguel *************/}
                                                   {
                                                       Adicionado filtro por usuario
                                                   }
                                                    Q_AUX4.SQL.Add(' and  c.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                                                   {/************** end ****************/}

                                                   Q_AUX4.Sql.Add('group  by B.PRO_ID ');
                                                   Q_AUX4.open ;

                                                   Q_AUX5.close ;
                                                   Q_AUX5.Sql.Clear ;
                                                   Q_AUX5.Sql.Add(' Select   SUM(A.MRP_QTDE) as TOT2 ,A.PRO_ID from MANIFESTO_RESUMOPRODUTO A,MANIFESTO B,NF C,OS D ');
                                                   Q_AUX5.Sql.Add(' where    A.MANI_ID = B.MANI_ID  ') ;
                                                   Q_AUX5.Sql.Add(' and      A.MANI_ID = C.MANI_ID  ') ;
                                                   Q_AUX5.Sql.Add(' and      C.OS_ID = D.OS_ID  ');
                                                   Q_AUX5.Sql.Add(' and      B.MANI_ID not in(Select MANI_ID from ESTOQUE  ');
                                                   Q_AUX5.Sql.Add(' where    B.MANI_ID = MANI_ID) ') ;

                                                   Q_AUX5.Sql.Add(' and      (B.CONFIRMA = ' + '''' + '' + '''');
                                                   Q_AUX5.Sql.Add(' or B.CONFIRMA is null)');

                                                   Q_AUX5.Sql.Add(' and      A.PRO_Id = ' + Q_AUX.fieldbyname('PRO_ID').asstring  ) ;
                                                   Q_AUX5.Sql.Add(' and  D.TOS_ID <> 5  ');
                                                   Q_AUX5.Sql.Add(' and  C.NFI_CLONE <> ' + '''' + 'S' + '''');  {aqui}

                                                   {/************** miguel *************/}
                                                   {
                                                       Adicionado filtro por usuario
                                                   }
                                                    Q_AUX5.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                                                   {/************** end ****************/}

                                                   Q_AUX5.Sql.Add(' Group by A.PRO_ID  ');
                                                   Q_AUX5.open  ;

                                                   IF Q_AUX4.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then begin
                                                      Q_ESTQ2.open ;
                                                      IF Q_ESTQ2.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then
                                                         SALDO := (Q_ESTQ2QTDE_ESTQ.asfloat - ((Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat)+(Q_AUX5.fieldbyname('TOT2').asfloat)) )
                                                       else
                                                          SALDO := 0;
                                                      Q_ESTQ2.close ;
                                                   end ;


                                                   IF (SALDO <= 0) then BEGIN
                                                      If ( SALDO < 0)  then BEGIN

                                                           Q_INF.open ;
                                                           Q_ESTQ.open ;
                                                           Q_MANIFESTOS.open ;

                                                           Panel14.visible := true ;
                                                           Panel3.enabled := false ;
                                                           Panel1.enabled := false ;
                                                           IMPEDE := 'S' ;

                                                           wwDBEdit1.text := '' ;
                                                           Q_MANI.edit ;
                                                           Q_MANIMARCADOR.asstring := ''   ;
                                                           Q_MANIMANI_ORDEM.asstring := '' ;
                                                           Q_MANI.post ;
                                                           GRIDnfe.enabled := false ;
                                                           LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                                                           CONT := 99999;
                                                           break ;
                                                           abort ;

                                                       end ;
                                                   END ;

                                                   CONT :=  CONT + 1 ;

                                                   Q_AUX.next ;
                                               end ;
                                          end else begin
                                             MessageDlg('Produto(s) sem estoque !',mtInformation,[mbOk], 0);
                                             abort ;
                                          end ;

                                          ///verficar qtos produtos diferentes existem na NF

                                          Q_AUX3.close ;
                                          Q_AUX3.Sql.Clear ;
                                          Q_AUX3.Sql.Add('SELECT  count(*) as QTDE_PROD_DIFER from ');
                                          Q_AUX3.Sql.Add('(SELECT DISTINCT PRO_ID FROM NF_ITENS ') ;
                                          Q_AUX3.Sql.Add(' WHERE  NFI_CODI = ' + Q_MANINFI_CODI.asstring  + ')' );
                                          Q_AUX3.Sql.Add(' A ') ;
                                          Q_AUX3.open;
                                          ///verficar qtos produtos diferentes existem na NF


                                          //verifica se existem todos os produtos no ESTOQUE
                                          IF CONT < Q_AUX3.fieldbyname('QTDE_PROD_DIFER').asinteger then begin
                                             Q_INF.open ;
                                             Q_ESTQ.open ;
                                             Q_MANIFESTOS.open ;

                                             Panel14.visible := true ;
                                             Panel3.enabled := false ;
                                             Panel1.enabled := false ;
                                             IMPEDE := 'S' ;

                                         ////    Q_INF.locate('NFI_CODI',Q_MANINFI_CODI.asstring,[]);


                                             wwDBEdit1.text := '' ;
                                             Q_MANI.edit ;
                                             Q_MANIMARCADOR.asstring := ''   ;
                                             Q_MANIMANI_ORDEM.asstring := '' ;
                                             Q_MANI.post ;

                                             GRIDnfe.enabled := false ;
                                             LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                                          end ;
                                          ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída  //////////////
                                end ;
                          end ;

                          IF IMPEDE = 'S' then begin
                              break ;
                             // CheckBox2.state :=  cbunchecked  ;
                             // CheckBox1.state :=  cbunchecked  ;
                             // CheckBox2.enabled := false ;

                          end ;

                    Q_MANI.next ;
            end ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
                     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                     {/************** miguel *************/}
                     {
                         Adicionado filtro por usuario
                     }
                      Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                     {/************** end ****************/}

                     Q_AUX.open ;

                     Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
                     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                     {/************** miguel *************/}
                     {
                         Adicionado filtro por usuario
                     }
                      Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                     {/************** end ****************/}


                     Q_AUX.open ;

                     Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
                     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                     {/************** miguel *************/}
                     {
                         Adicionado filtro por usuario
                     }
                      Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                     {/************** end ****************/}

                     Q_AUX.open ;

                     Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
                     Q_AUX.Sql.Add('   and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                     {/************** miguel *************/}
                     {
                         Adicionado filtro por usuario
                     }
                      Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                     {/************** end ****************/}

                     Q_AUX.open ;

                     Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

                     try
                     Begin



                       {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
                       STP_MANIFPROD.Execproc ; }

                       QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
                       QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
                       QR_STP_MANIFESTO_PRODUTO.ExecSQL;


                      End
                    except
                      begin
                       MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
                       abort  ;
                      end;
                    end;



                   Q_MANIPROD.close;
                   Q_MANIPROD.Sql.Clear;
                   Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTALPALLET) as QTDEMARCA from');
                   Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
                   Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
                   Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
                   Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                   Q_MANIPROD.open ;

                   Label10.caption := Q_MANIPROD.fieldbyname('QTDEMARCA').asstring ;




                   Q_MANIPROD.close;
                   Q_MANIPROD.Sql.Clear;
                   Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTAL) as QTDEMARCA from');
                   Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
                   Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
                   Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
                   Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                   Q_MANIPROD.open ;

                   Label14.caption := formatfloat('###,###,##0.000',(Q_MANIPROD.fieldbyname('QTDEMARCA').asfloat)) ;

                   Label3.width := 130 ;
                   Label4.width := 130 ;
                   Label5.width := 130 ;
                   Label6.width := 130 ;
                   Label10.width := 130 ;
                   Label14.width := 130 ;


                //  CheckBox2.state :=  cbunchecked  ;
                //  CheckBox1.state :=  cbunchecked  ;
               ///   CheckBox2.enabled := false ;
                  BitBtn4.enabled := true ;
                  BitBtn3.enabled := true ;
                  BitBtn2.enabled := true ;
end;

procedure TFGeraManifesto.BitBtn1Click(Sender: TObject);
var
  IMPEDE : string ;
begin

AcheiErro := '';


            Q_MANI.first ;
            while not Q_MANI.eof do begin

                          IMPEDE := '' ;
                          CONT  := 0 ;
                          SALDO := 0 ;

                          Q_AUX1.close ;
                          Q_AUX1.Sql.Clear ;
                          Q_AUX1.Sql.Add('select COUNT(*) as qtde    from os A,NF B where') ;
                          Q_AUX1.Sql.Add('(TOS_ID = 5 or B.NFI_CLONE = ' + '''' + 'S' + '''' + ')');
                          Q_AUX1.Sql.Add(' and A.OS_ID = B.OS_ID');
                          Q_AUX1.Sql.Add(' and B.MANI_ID is null') ;
                          Q_AUX1.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                          Q_AUX1.open ;

                          IF (Q_AUX1.fieldbyname('qtde').asinteger = 0) then begin

                                If (wwDBEdit1.text = 'SIM') then begin

                                          ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída   //////////////
                                          Q_AUX1.close ;
                                          Q_AUX1.Sql.Clear ;
                                          Q_AUX1.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                                          Q_AUX1.Sql.Add(' where NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                          Q_AUX1.open  ;

                                          Q_AUX.close;
                                          Q_AUX.Sql.Clear;
                                          Q_AUX.Sql.Add('Select COUNT(*) as SUBTOTAL,A.PRO_ID,SUM(ESTq_QTDE) as QTDE_ESTQ from ESTOQUE A,NF_ITENS B ') ;
                                          Q_AUX.Sql.Add(' where A.PRO_ID = B.PRO_ID ') ;
                                          Q_AUX.Sql.Add(' and B.NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                          Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA IS NOT NULL ') ;
                                          Q_AUX.Sql.Add(' and A.ESTQ_DT_ENTRADA <> ' + '''' + '' + '''' ) ;
                                          Q_AUX.Sql.Add(' and A.ESTQ_QTDE_RETIRA = '+ INTTOSTR(0) );
                                          Q_AUX.Sql.Add(' and (A.MANI_ID is NULL or A.MANI_ID = ' + '''' + '' + '''' + ')');
                                          //Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + FFGeraManifesto.Q_PARPAR_ID.asstring) ;
                                          Q_AUX.Sql.Add(' and A.AR_ID in(Select AR_ID from AREA where PAR_ID = ' + IntToStr(GERA_PARAMETRO)) ;
                                          Q_AUX.Sql.Add(' and AR_DISPONIVEL = ' + '''' + 'S' + '''' +')' ) ;
                                          Q_AUX.Sql.Add(' group by A.PRO_ID ');
                                          Q_AUX.open ;

                                          IF  Q_AUX.fieldbyname('SUBTOTAL').asinteger > 0 then begin

                                              Q_AUX.first;
                                              while not Q_AUX.eof do begin

                                                   Q_AUX2.close;
                                                   Q_AUX2.Sql.Clear;
                                                   Q_AUX2.Sql.Add('Select SUM(INF_QTDE) as QTDE_ITENS from  NF_ITENS ') ;
                                                   Q_AUX2.Sql.Add(' where PRO_ID = ' + Q_AUX.fieldbyname('PRO_ID').asstring ) ;
                                                   Q_AUX2.Sql.Add(' and   NFI_CODI = ' + Q_MANINFI_CODI.asstring ) ;
                                                   Q_AUX2.open ;


                                                   Q_AUX4.close;
                                                   Q_AUX4.Sql.Clear;
                                                   Q_AUX4.Sql.Add(' SELECT distinct B.PRO_ID,SUM(INF_QTDE) as QTDE_ESTQ  ');
                                                   Q_AUX4.Sql.Add(' from NF_ITENS B, MANIFESTOGERA C,NF A,OS D');
                                                   Q_AUX4.Sql.Add('where  B.NFI_CODI = C.NFI_CODI  ');
                                                   Q_AUX4.Sql.Add('and A.NFI_CODI = B.NFI_CODI   ');
                                                   Q_AUX4.Sql.Add('and A.OS_ID = D.OS_ID   ');
                                                   Q_AUX4.Sql.Add('and    C.MARCADOR = ' + '''' + 'SIM' + '''');
                                                   Q_AUX4.Sql.Add('and    C.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');
                                                   Q_AUX4.Sql.Add('and (D.TOS_ID <> 5) and  (A.NFI_CLONE <> ' + '''' + 'S' + ''''+')');

                                                     {/************** miguel *************/}
                                                     {
                                                          Adicionado filtro por usuario
                                                     }
                                                      Q_AUX4.SQL.Add(' and  c.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                                                     {/************** end ****************/}

                                                   Q_AUX4.Sql.Add('group  by B.PRO_ID ');
                                                   Q_AUX4.open ;

                                                   Q_AUX5.close ;
                                                   Q_AUX5.Sql.Clear ;
                                                   Q_AUX5.Sql.Add(' Select   SUM(A.MRP_QTDE) as TOT2 ,A.PRO_ID from MANIFESTO_RESUMOPRODUTO A,MANIFESTO B,NF C,OS D ');
                                                   Q_AUX5.Sql.Add(' where    A.MANI_ID = B.MANI_ID  ') ;
                                                   Q_AUX5.Sql.Add(' and      A.MANI_ID = C.MANI_ID  ') ;
                                                   Q_AUX5.Sql.Add(' and      C.OS_ID = D.OS_ID  ');
                                                   Q_AUX5.Sql.Add(' and      B.MANI_ID not in(Select MANI_ID from ESTOQUE  ');
                                                   Q_AUX5.Sql.Add(' where    B.MANI_ID = MANI_ID) ') ;

                                                   Q_AUX5.Sql.Add(' and      (B.CONFIRMA = ' + '''' + '' + '''');
                                                   Q_AUX5.Sql.Add(' or B.CONFIRMA is null)');

                                                   Q_AUX5.Sql.Add(' and      A.PRO_Id = ' + Q_AUX.fieldbyname('PRO_ID').asstring  ) ;
                                                   Q_AUX5.Sql.Add(' and  D.TOS_ID <> 5  ');
                                                   Q_AUX5.Sql.Add(' and  C.NFI_CLONE <> ' + '''' + 'S' + '''');  {aqui}

                                                   {/************** miguel *************/}
                                                   {
                                                       Adicionado filtro por usuario
                                                   }
                                                    Q_AUX5.SQL.Add(' and  a.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                                                   {/************** end ****************/}

                                                   Q_AUX5.Sql.Add(' Group by A.PRO_ID  ');
                                                   Q_AUX5.open  ;

                                                   IF Q_AUX4.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then begin
                                                      Q_ESTQ2.open ;
                                                      IF Q_ESTQ2.locate('PRO_ID',Q_AUX.fieldbyname('PRO_ID').asstring,[]) then
                                                         SALDO := (Q_ESTQ2QTDE_ESTQ.asfloat - ((Q_AUX4.fieldbyname('QTDE_ESTQ').asfloat)+(Q_AUX5.fieldbyname('TOT2').asfloat)) )
                                                       else
                                                          SALDO := 0;
                                                      Q_ESTQ2.close ;
                                                   end ;


                                                   IF (SALDO <= 0) then BEGIN
                                                      If ( SALDO < 0)  then BEGIN

                                                           Q_INF.open ;
                                                           Q_ESTQ.open ;
                                                           Q_MANIFESTOS.open ;

                                                           Panel14.visible := true ;
                                                           Panel3.enabled := false ;
                                                           Panel1.enabled := false ;
                                                           IMPEDE := 'S' ;

                                                           wwDBEdit1.text := '' ;
                                                           Q_MANI.edit ;
                                                           Q_MANIMARCADOR.asstring := ''   ;
                                                           Q_MANIMANI_ORDEM.asstring := '' ;
                                                           Q_MANI.post ;
                                                           GRIDnfe.enabled := false ;
                                                           LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                                                           CONT := 99999;
                                                           break ;
                                                           abort ;

                                                       end ;
                                                   END ;

                                                   CONT :=  CONT + 1 ;

                                                   Q_AUX.next ;
                                               end ;
                                          end else begin
                                             MessageDlg('Produto(s) sem estoque !',mtInformation,[mbOk], 0);
                                             abort ;
                                          end ;

                                          ///verficar qtos produtos diferentes existem na NF

                                          Q_AUX3.close ;
                                          Q_AUX3.Sql.Clear ;
                                          Q_AUX3.Sql.Add('SELECT  count(*) as QTDE_PROD_DIFER from ');
                                          Q_AUX3.Sql.Add('(SELECT DISTINCT PRO_ID FROM NF_ITENS ') ;
                                          Q_AUX3.Sql.Add(' WHERE  NFI_CODI = ' + Q_MANINFI_CODI.asstring  + ')' );
                                          Q_AUX3.Sql.Add(' A ') ;
                                          Q_AUX3.open;
                                          ///verficar qtos produtos diferentes existem na NF


                                          //verifica se existem todos os produtos no ESTOQUE
                                          IF CONT < Q_AUX3.fieldbyname('QTDE_PROD_DIFER').asinteger then begin
                                             Q_INF.open ;
                                             Q_ESTQ.open ;
                                             Q_MANIFESTOS.open ;

                                             Panel14.visible := true ;
                                             Panel3.enabled := false ;
                                             Panel1.enabled := false ;
                                             IMPEDE := 'S' ;

                                         ////    Q_INF.locate('NFI_CODI',Q_MANINFI_CODI.asstring,[]);


                                             wwDBEdit1.text := '' ;
                                             Q_MANI.edit ;
                                             Q_MANIMARCADOR.asstring := ''   ;
                                             Q_MANIMANI_ORDEM.asstring := '' ;
                                             Q_MANI.post ;

                                             GRIDnfe.enabled := false ;
                                             LABEL29.caption :=  formatfloat('###,###,##0.000',Q_AUX5.fieldbyname('TOT2').asfloat) ;

                                          end ;
                                          ////////// VERIFICAR SE EXISTE ESTOQUE PARA TODOS ITENS DA NF de saída  //////////////
                                end ;
                          end ;

                          IF IMPEDE = 'S' then begin
                              break ;
                             // CheckBox2.state :=  cbunchecked  ;
                             // CheckBox1.state :=  cbunchecked  ;
                             // CheckBox2.enabled := false ;

                          end ;

                    Q_MANI.next ;
            end ;


            AcheiErro := IMPEDE;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
                     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                     Q_AUX.open ;

                     Label3.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + 'SIM' + '''' ) ;
                     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                     Q_AUX.open ;

                     Label4.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(PESO) as PESO from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
                     Q_AUX.Sql.Add('and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                     Q_AUX.open ;

                     Label5.caption := formatfloat('###,###,##0.0000',(Q_AUX.fieldbyname('PESO').asfloat)) ;

                     Q_AUX.close;
                     Q_AUX.Sql.Clear;
                     Q_AUX.Sql.Add('Select SUM(VOLUME) as VOLUME from  MANIFESTOGERA ') ;
                     Q_AUX.Sql.Add(' where Marcador = ' + '''' + '' + '''' ) ;
                     Q_AUX.Sql.Add('   and NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring + '''');

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_AUX.SQL.Add(' and  ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                     Q_AUX.open ;

                     Label6.caption := formatfloat('###,###,##0.000000',(Q_AUX.fieldbyname('VOLUME').asfloat)) ;

                     try
                     Begin



                         {STP_MANIFPROD.ParamByName('@NFI_TRANS').Value   := Q_MANINFI_TRANS.asstring ;
                         STP_MANIFPROD.Execproc ; }

                         QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
                         QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
                         QR_STP_MANIFESTO_PRODUTO.ExecSQL;


                      End
                    except
                      begin
                       MessageDlg('Geração de Preparação do Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
                       abort  ;
                      end;
                    end;



                   Q_MANIPROD.close;
                   Q_MANIPROD.Sql.Clear;
                   Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTALPALLET) as QTDEMARCA from');
                   Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
                   Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
                   Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
                   Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                   Q_MANIPROD.open ;

                   Label10.caption := Q_MANIPROD.fieldbyname('QTDEMARCA').asstring ;




                   Q_MANIPROD.close;
                   Q_MANIPROD.Sql.Clear;
                   Q_MANIPROD.Sql.Add('SELECT SUM(A.PROD_TOTAL) as QTDEMARCA from');
                   Q_MANIPROD.Sql.Add('      MANIFESTOGERA_PROD A,MANIFESTOGERA B') ;
                   Q_MANIPROD.Sql.Add('WHERE A.NFI_TRANS = ' + '''' + Q_MANINFI_TRANS.asstring  + '''') ;
                   Q_MANIPROD.Sql.Add('and B.MARCADOR = ' + '''' + 'SIM' + '''') ;
                   Q_MANIPROD.Sql.Add('and B.NFI_CODI = A.NFI_CODI') ;

                   {/************** miguel *************/}
                   {
                       Adicionado filtro por usuario
                   }
                    Q_MANIPROD.SQL.Add(' and  b.ch = ' + FMenu.SqlUsuariosCH.AsString ) ;
                   {/************** end ****************/}

                   Q_MANIPROD.open ;

                   Label14.caption := formatfloat('###,###,##0.000',(Q_MANIPROD.fieldbyname('QTDEMARCA').asfloat)) ;

                   Label3.width := 130 ;
                   Label4.width := 130 ;
                   Label5.width := 130 ;
                   Label6.width := 130 ;
                   Label10.width := 130 ;
                   Label14.width := 130 ;


                //  CheckBox2.state :=  cbunchecked  ;
                //  CheckBox1.state :=  cbunchecked  ;
               ///   CheckBox2.enabled := false ;
                  BitBtn4.enabled := true ;
                  BitBtn3.enabled := true ;
                  BitBtn2.enabled := true ;


end;

procedure TFGeraManifesto.RzBitBtn1Click(Sender: TObject);
var DESCRICAO : string;
begin

   with qrAux do begin
       close;
       sql.Clear;
       sql.Add(
        '  Select DISTINCT E.CLIN_RAZA '+
        '   from ManifestoGera A,NF B,MUNICIPIO C,Regiao D,ClienteNBF E '+
        '  where '+
        '      A.NFI_CODI = B.NFI_CODI and  '+
        '      A.MUN_ID = C.MUN_ID and  '+
        '      A.REG_ID = D.REG_ID and   '+
        '      B.NFI_EMIT_CLI = E.CLIN_ID AND A.MARCADOR = ''SIM'' '
       )           ;
       Open;
   end;

   DESCRICAO := '';
   IF qrAux.IsEmpty then
   BEGIN
        MessageBox(Self.Handle, 'Nenhuma nota foi selecionada.', 'Erro', MB_OK + MB_ICONERROR)  ;
        Abort;
   end;

   qrAux.First;
   while not qrAux.Eof do begin
       DESCRICAO := DESCRICAO +  qrAux.FieldByName('CLIN_RAZA').AsString + '/';
       qrAux.Next;
   end;


    if MessageBox(Self.Handle, 'Confirma geração de pre-carga dos itens selecionados', '', MB_YESNO + MB_ICONQUESTION) = 6 then
    begin
        try
         //   FMenu.ADOConnection.BeginTrans;
                  qrPrecargaHeader.Open;
                  qrPrecargaHeader.Append;
                  qrPrecargaHeaderDESCRICAO.Value := DESCRICAO;
                  qrPrecargaHeaderDATA.Value := Date;
                  qrPrecargaHeaderSTATUS.Value := 'A';
                  qrPrecargaHeaderCH.Value := FMenu.SqlUsuariosCH.Value;
                  qrPrecargaHeaderTRANSPORTADOR_NBF.Value := TRANSPORTADOR_NBF;
                  qrPrecargaHeaderGERA_PARAMETRO.Value := GERA_PARAMETRO;
                  qrPrecargaHeader.Post;

                  with qrAux do begin
                      Close;
                      sql.Clear;
                      sql.Add('SELECT MAX(CARGA_ID) ID FROM PRE_CARGA_HEADER WHERE CH = ' + FMenu.SqlUsuariosCH.AsString);
                      Open;
                  end;     //ShowMessage(qrAux.FIELDBYNAME('ID').AsString);

                  STP_PRE_CARGA.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
                  STP_PRE_CARGA.Parameters[1].Value :=  qrAux.FIELDBYNAME('ID').AsInteger;
                  STP_PRE_CARGA.Prepared := True;
                  STP_PRE_CARGA.ExecProc;

        //    FMenu.ADOConnection.CommitTrans;

            Q_MANI.Close;
            Q_MANI.Open;
        except
            on e : Exception do begin
             //   FMenu.ADOConnection.RollbackTrans;
                MessageBox(Self.Handle, pchar('Aconteceu um erro ao gerar a pre-carga' + #13 + e.Message), 'Erro', MB_OK + MB_ICONERROR)  ;
            end;
        end;
    end;
end;

procedure TFGeraManifesto.RzBitBtn2Click(Sender: TObject);
begin
  CARGA_ID := 0;
  frmPreCarga := TfrmPreCarga.Create(Self);
  frmPreCarga.btnGeraMani.Visible := False;
  frmPreCarga.btnSeleciona.Visible := True;
  frmPreCarga.btnSeleciona.Left := 1;
 // frmPreCarga.btnApagaNota.Visible := False;
  frmPreCarga.ShowModal;

  if CARGA_ID <> 0 then begin
      STP_PRE_CARGA.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
      STP_PRE_CARGA.Parameters[1].Value :=  CARGA_ID;
      STP_PRE_CARGA.Prepared := True;
      STP_PRE_CARGA.ExecProc;      
  end;
  Q_MANI.Close;
  Q_MANI.Open;
  CARGA_ID := 0;

end;

procedure TFGeraManifesto.Button1Click(Sender: TObject);
VAR CHAVE : String;
NOVO_ID : Integer;
NFS_GERAL : WideString;
begin
  try
  Begin

      if Q_MANI.State = dsEdit then Q_MANI.Post;

      Application.CreateForm(TFAbTabelas, FAbTabelas);
      FAbTabelas.Show;
      FAbTabelas.Gauge1.MaxValue := 5;


      FAbTabelas.lbProgresso.Caption := 'Preparando produtos...';
      
      FAbTabelas.Gauge1.Progress := FAbTabelas.Gauge1.Progress + 1; Application.ProcessMessages;
      //gera os dados na tabela manifesto_geraprod
      QR_STP_MANIFESTO_PRODUTO.Params[0].AsString := Q_MANINFI_TRANS.asstring;
      QR_STP_MANIFESTO_PRODUTO.Params[1].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
      QR_STP_MANIFESTO_PRODUTO.ExecSQL;
      Application.ProcessMessages;

      WITH qrAux DO begin
          CLOSE;
          SQL.Clear;
          SQL.Add(

         '   SELECT '+
         '           SUM(A.PROD_TOTAL * P.PRO_PESO) AS PESO, '+
         '           SUM(A.PROD_TOTAL * P.PRO_VOLUME) AS VOLUME  '+
         '  FROM MANIFESTOGERA_PROD A INNER JOIN PRODUTO P ON A.PRO_ID = P.PRO_ID  '+
         ' WHERE A.CH = ' + FMenu.SqlUsuariosCH.AsString
          )       ;
          Open;
      end;

      Label3.Caption := FormatFloat('###,###,##0.000', qrAux.FieldByName('Peso').AsFloat);
      Label4.Caption  := FormatFloat('###,###,##0.000', qrAux.FieldByName('Volume').AsFloat);



      //verificamos estoque dos produtos
      FAbTabelas.lbProgresso.Caption := 'Verificando Estoque...';
      FAbTabelas.Gauge1.Progress := FAbTabelas.Gauge1.Progress + 1;
      Application.ProcessMessages;

    { Q_MANI.First;
      while not Q_MANI.Eof do begin
        if Q_MANIMARCADOR.Value = 'SIM' then begin
          qrGeral.Close;
          qrGeral.Parameters[0].Value := FMenu.SqlUsuariosCH.Value;
          qrGeral.Parameters[1].Value := Q_MANINFI_CODI.Value;
          qrGeral.Open;

          if qrGeral.IsEmpty = False then begin
             Q_MANI.Locate('NFI_CODI', qrGeralNFI_CODI.Value, []);
             Panel14.Visible := True;
             Q_INF.OpeN;
             Q_ESTQ.Open;
             Abort;
          end;
       end;
         Q_MANI.Next;
      end; //}

      BitBtn1.Click;


      IF AcheiErro = 'S' then
        Abort;
      AcheiErro := '';


      //ADicionamos novo manifesto de geração tipo G
      FAbTabelas.lbProgresso.Caption := 'Gerando Manifesto...';
      FAbTabelas.Gauge1.Progress := FAbTabelas.Gauge1.Progress + 1;
      Application.ProcessMessages;

      Label3.Caption := StringReplace(Label3.Caption, '.', '', [rfReplaceAll]);
      Label4.Caption := StringReplace(Label4.Caption, '.', '', [rfReplaceAll]);

      STP_MANIFESTO2.Parameters[0].Value   := StrToFloat(Label3.caption);
      STP_MANIFESTO2.Parameters[1].Value := StrToFloat(Label4.caption);
      STP_MANIFESTO2.Parameters[2].Value :=  IntToStr(GERA_PARAMETRO) ;
      If TRANSPORTADOR_NBF = 0 then
         STP_MANIFESTO2.Parameters[3].Value  := 'S'
      else
         STP_MANIFESTO2.Parameters[3].Value  := 'N' ;



      STP_MANIFESTO2.Parameters[4].Value := FMenu.SqlUsuariosCH.AsInteger;
      STP_MANIFESTO2.Execproc   ;

      NOVO_ID := STP_MANIFESTO2.Parameters[5].Value;


      //adicionamos o numero de manifesto as notas fiscais
      NFS_GERAL := '';
      Q_MANI.First;
      while NOt Q_MANI.Eof do begin
          IF Q_MANIMARCADOR.AsString = 'SIM' then begin
            with qrAux do begin
                close;
                sql.Clear;
                sql.Add('UPDATE NF SET MANI_ID = ' + IntToStr(NOVO_ID));
                SQL.Add('WHERE NFI_CODI = ' + Q_MANINFI_CODI.AsString);
                ExecSQL;

                NFS_GERAL := NFS_GERAL +  Q_MANINFI_NUMERO.AsString + '/';


            end;
          end;
          Q_MANI.Next;
      end;






      //geramos o romaneio
      FAbTabelas.lbProgresso.Caption := 'Adicionando informações do Romaneio...';
      FAbTabelas.Gauge1.Progress := FAbTabelas.Gauge1.Progress + 1;
      Application.ProcessMessages;
      STP_GERA_ROMANEIO.Parameters[0].Value := NOVO_ID;
      STP_GERA_ROMANEIO.Parameters[1].Value := GERA_PARAMETRO;
      STP_GERA_ROMANEIO.Parameters[2].Value := FMenu.SqlUsuariosCH.AsInteger;
      STP_GERA_ROMANEIO.ExecProc;


      //COPIAMOS O ESTOQUE PARA A TABELA ESTOQUE GERAL (TABELA PARA RELATORIO)

      //STP_COPY_ESTOQUE.Parameters[0].Value := NOVO_ID;
      //STP_COPY_ESTOQUE.ExecProc;

      qrCopiaEstoque.Close;
      qrCopiaEstoque.Parameters[0].Value := NOVO_ID;
      qrCopiaEstoque.ExecSQL;



      //cancelamos romaneio remanjando tudo para OPVP

      FAbTabelas.lbProgresso.Caption := 'Remanejando estoque para OPVP...';
      FAbTabelas.Gauge1.Progress := FAbTabelas.Gauge1.Progress + 1;
      Application.ProcessMessages;


      qrEstoqueGEral.Close;
      qrEstoqueGEral.Parameters[0].Value := NOVO_ID;
      qrEstoqueGEral.Open;

      qrAreaOper.close;
      qrAreaOper.Parameters[0].Value := GERA_PARAMETRO;
      qrAreaOper.Open;


      qrEstoqueGEral.First;
      WHILE not qrEstoqueGEral.Eof DO BEGIN
          qrDEvolveEstoque.CLOSE;
          qrDEvolveEstoque.Parameters.ParamByName('ESTQ_QTDE_RETIRA').Value := qrEstoqueGEralQTDE_GERAL.Value;
          qrDEvolveEstoque.Parameters.ParamByName('AR_ID').Value := qrAreaOperAR_ID.Value;
          qrDEvolveEstoque.Parameters.ParamByName('POS_ID').Value := qrAreaOperPOS_ID.Value;
          qrDEvolveEstoque.Parameters.ParamByName('ESTQ_ID').Value := qrEstoqueGEralESTQ_ID.Value;
          qrDEvolveEstoque.ExecSQL;
          qrEstoqueGEral.Next;
      end;


      //liberando as notas fiscais
      with qrAux do begin
          close;
          sql.Clear;
          sql.Add('UPDATE NF SET MANI_ID = null');
          SQL.Add('WHERE MANI_ID = ' + IntToStr(NOVO_ID));
          ExecSQL;
      end;

      FAbTabelas.Close;
      FAbTabelas.Release;


      NOVO_MANIFESTO := NOVO_ID;


      with qrAux do begin
          Close;
          SQL.Clear;
          sql.Add('update manifesto set NFS_GERAL = ' + QuotedStr(NFS_GERAL));
          SQL.Add('WHERE MANI_ID = ' + IntToStr(NOVO_ID));
          ExecSQL;
      end;

      NFS_GERAL := '';

      FManifesto_Geral := TFManifesto_Geral.Create(Self);
      FManifesto_Geral.Edit1.Text := IntToStr(NOVO_MANIFESTO);
      FManifesto_Geral.RzBitBtn1.Click;
      FManifesto_Geral.ShowModal;

      {FManifesto := TFManifesto.Create(Self);
      FManifesto.chkManiGeral.Checked := True;
      FManifesto.ShowModal;
      FManifesto.Release;}

  End
  except
    ON E : EXCEPTION do BEGIN
      MessageDlg('Preparação com erro! ' + E.MESSAGE,mtInformation,[mbOk], 0);
      FAbTabelas.Close;
      FAbTabelas.Release;
      abort  ;
   end;
  end;
end;

procedure TFGeraManifesto.Q_MANINewRecord(DataSet: TDataSet);
begin
  Abort;
end;

end.




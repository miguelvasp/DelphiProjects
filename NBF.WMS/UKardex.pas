unit UKardex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwdblook, DBCtrls, Db, Wwdatsrc, DBTables,
  Wwquery, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  wwstorep, Wwtable, ComObj;

type
  TFKardex = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label20: TLabel;
    DBText3: TDBText;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Panel12: TPanel;
    RadioGroup2: TRadioGroup;
    SBT_VISU: TSpeedButton;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    DS_PROD: TwwDataSource;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    DBG_INFI: TwwDBGrid;
    Q_KDX: TwwQuery;
    Q_KDXKAR_ID: TAutoIncField;
    Q_KDXOS_ID: TIntegerField;
    Q_KDXKAR_TPDOC: TStringField;
    Q_KDXKAR_TIPO: TStringField;
    Q_KDXKAR_NDOC: TIntegerField;
    Q_KDXKAR_DTMOV: TDateTimeField;
    Q_KDXESTQ_ID: TIntegerField;
    Q_KDXKAR_TAG: TIntegerField;
    Q_KDXPRO_ID: TIntegerField;
    Q_KDXKAR_QTDE: TFloatField;
    Q_KDXKAR_LOTE: TStringField;
    Q_KDXKAR_BATCH: TDateTimeField;
    Q_KDXKAR_VCTO: TDateTimeField;
    Q_KDXPAR_ID: TIntegerField;
    Q_KDXAR_ID: TIntegerField;
    Q_KDXPOS_ID: TIntegerField;
    Q_KDXCH: TIntegerField;
    DS_KDX: TwwDataSource;
    Q_POS: TwwQuery;
    Q_AREA: TwwQuery;
    Q_POSPOS_Id: TAutoIncField;
    Q_POSPOS_COD: TStringField;
    Q_AREAAR_ID: TAutoIncField;
    Q_AREAAR_NOME: TStringField;
    Q_KDXAREAdesc: TStringField;
    Q_KDXPOSdesc: TStringField;
    Q_USU: TwwQuery;
    Q_USUCH: TAutoIncField;
    Q_USUNOME: TStringField;
    Q_KDXCHdesc: TStringField;
    DBCB_CLI_PESS: TwwDBComboBox;
    wwDBComboBox1: TwwDBComboBox;
    Label3: TLabel;
    Data1: TMaskEdit;
    Label6: TLabel;
    Data2: TMaskEdit;
    Q_AUX: TwwQuery;
    Q_KDXKAR_SALDO: TFloatField;
    STP_CONSULTAKARDEX: TwwStoredProc;
    Panel10: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    RadioGroup1: TRadioGroup;
    T_KDX_SINT: TwwTable;
    T_KDX_SINTKAR_ID: TIntegerField;
    T_KDX_SINTKAR_NDOC: TIntegerField;
    T_KDX_SINTKAR_TIPO: TStringField;
    T_KDX_SINTOS_ID: TIntegerField;
    T_KDX_SINTKAR_QTDE: TFloatField;
    T_KDX_SINTCH: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    DS_KDX_SINT: TwwDataSource;
    T_KDX_SINTKAR_DATA: TDateField;
    Q_USU2: TwwQuery;
    Q_USU2CH: TAutoIncField;
    Q_USU2NOME: TStringField;
    T_KDX_SINTCHdesc: TStringField;
    T_KDX_SINTKAR_SALDO: TFloatField;
    SpeedButton1: TSpeedButton;
    rbFiltro: TRadioGroup;
    Button1: TButton;
    lbExcel: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure DBG_INFICalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GeraExcel(tabela : string );
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKardex: TFKardex;
  KARDEX : string ; 
implementation
uses USenha,Umenu, UAbTabelas, UConsEstoque  ;
{$R *.DFM}

procedure TFKardex.SpeedButton3Click(Sender: TObject);
begin
  close  ;
end;

procedure TFKardex.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFKardex.Data1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow;
end;

procedure TFKardex.Data2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFKardex.Data2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFKardex.SBT_VISUClick(Sender: TObject);
var
  VENCI : Tdatetime ;
  VENCF : Tdatetime ;
  QTDEINV : real ;
  INVMAIORMENOR : string ;
  DATAINVENTARIO : TDatetime ;
  ID_INVENTARIO : integer ;
  SALDOSAIDA : real ;
  SALDOENTRADA : real ;
  DOCUM : string ;
  CONTALIN : integer ;
begin




  VENCI :=  0.0 ;
  VENCF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     VENCI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     VENCF  := strtodate(Data2.text );

   IF (wwDBLookupCombo4.text = '')  then begin
       MessageDlg('Cliente NBF é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo4.setfocus ;
       abort ;
   end ;

   IF (wwDBLookupCombo1.text = '')  then begin
       MessageDlg('Produto é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo1.setfocus ;
       abort ;
   end ;

   IF (VENCI = 0.0 )  then begin
       MessageDlg('Período Inicial é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       Data1.setfocus ;
       abort ;
   end ;

   Q_aux.close;
   Q_aux.Sql.Clear;
   Q_aux.Sql.Add('UPDATE KARDEX SET KAR_SALDO =  NULL ');
   Q_aux.Sql.Add('where KAR_SALDO is not   NULL');
   Q_aux.ExecSql;

    Q_KDX.close ;
    Q_KDX.SQL.clear ;
    Q_KDX.SQL.ADD('select A.* FROM KARDEX A,PRODUTO B');
    Q_KDX.SQL.ADD('where B.PRO_ID = A.PRO_ID');
    Q_KDX.SQL.ADD('and   B.PRO_ID = ' +  Q_PRODPRO_ID.asstring) ;

    
    {miguel - adicionado filtro para trazer unicamente os dados dos romaneios de entrada e saída}
    if rbFiltro.ItemIndex = 1 then
      Q_KDX.Sql.Add('and   (A.KAR_TPDOC = ' + QuotedStr('RE') + ' or A.KAR_TPDOC = ' + QuotedStr('RS') + ')'  );



    IF (RadioGroup2.itemindex = 0) then
        Q_KDX.SQL.ADD('and B.PRO_DESCONTINUA = ' + '''' + 'S' + '''' )
    else
        Q_KDX.SQL.ADD('and B.PRO_DESCONTINUA = ' + '''' + 'N' + '''') ;
    if VENCI <> 0.0 then
           Q_KDX.SQL.ADD ( 'and convert(Char(10),A.KAR_DTMOV,112) >= ' +''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
    if VENCF <> 0.0 then
           Q_KDX.SQL.ADD ( 'and convert(Char(10),A.KAR_DTMOV,112) <= ' +''''+ formatdatetime('YYYYMMDD',VENCF) + '''') ;
    Q_KDX.SQL.ADD('order by convert(char(10),KAR_DTMOV,112) DESC,KAR_ID desc');
    Q_KDX.open ;

  T_KDX_SINT.active := false ;
  T_KDX_SINT.emptytable ;
  T_KDX_SINT.open ;


    IF (Q_KDX.recordcount = 0) then begin
       MessageDlg('Não existe Kardex para os filtros escolhidos  !',mtInformation,[mbOk], 0);
       abort  ;
    end;

    if VENCI = 0.0 then  VENCI := NOW ;

    Q_AUX.close;
    Q_AUX.Sql.Clear;
    Q_AUX.Sql.Add('Select count(*) as xvalor from  KARDEX ') ;
    Q_AUX.Sql.Add('where convert(Char(10),KAR_DTMOV,112) >= ' + ''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
    Q_AUX.Sql.Add('and PRO_ID = ' +  Q_PRODPRO_ID.asstring) ;
    Q_AUX.Sql.Add('and KAR_TPDOC = ' +  '''' + 'IV' + '''') ;
    ////Q_AUX.Sql.Add('order by KAR_DTMOV') ;
    Q_AUX.open ;

    IF  Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
        Q_AUX.close;
        Q_AUX.Sql.Clear;
        Q_AUX.Sql.Add('set rowcount 1');
        Q_AUX.Sql.Add('Select * FROM KARDEX ') ;
        Q_AUX.Sql.Add('where convert(Char(10),KAR_DTMOV,112) >= ' + ''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
        Q_AUX.Sql.Add('and PRO_ID = ' +  Q_PRODPRO_ID.asstring) ;
        Q_AUX.Sql.Add('and KAR_TPDOC = ' +  '''' + 'IV' + '''') ;
        Q_AUX.Sql.Add('order by KAR_DTMOV ') ;
        Q_AUX.Sql.Add('set rowcount 0');
        Q_AUX.open ;

        QTDEINV := Q_AUX.fieldbyname('KAR_QTDE').asfloat ;
        DATAINVENTARIO := Q_AUX.fieldbyname('KAR_DTMOV').asdatetime ;
        INVMAIORMENOR := 'MAIOR' ;
        ID_INVENTARIO := Q_AUX.fieldbyname('KAR_ID').asinteger ;
    End else begin
        Q_AUX.close;
        Q_AUX.Sql.Clear;
        Q_AUX.Sql.Add('Select count(*) as xvalor from  KARDEX ') ;
        Q_AUX.Sql.Add('where convert(Char(10),KAR_DTMOV,112) <= ' + ''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
        Q_AUX.Sql.Add('and PRO_ID = ' +  Q_PRODPRO_ID.asstring) ;
        Q_AUX.Sql.Add('and KAR_TPDOC = ' +  '''' + 'IV' + '''') ;
        ////Q_AUX.Sql.Add('order by KAR_DTMOV') ;
        Q_AUX.open ;

        IF  Q_AUX.fieldbyname('XVALOR').asinteger > 0 then begin
            Q_AUX.close;
            Q_AUX.Sql.Clear;
            Q_AUX.Sql.Add('set rowcount 1');
            Q_AUX.Sql.Add('Select * FROM KARDEX') ;
            Q_AUX.Sql.Add('where convert(Char(10),KAR_DTMOV,112) <= ' + ''''+ formatdatetime('YYYYMMDD',VENCI) + '''') ;
            Q_AUX.Sql.Add('and PRO_ID = ' +  Q_PRODPRO_ID.asstring) ;
            Q_AUX.Sql.Add('and KAR_TPDOC = ' +  '''' + 'IV' + '''') ;
            Q_AUX.Sql.Add('order by KAR_DTMOV ') ;
            Q_AUX.Sql.Add('set rowcount 0');
            Q_AUX.open ;

            QTDEINV := Q_AUX.fieldbyname('KAR_QTDE').asfloat    ;
            DATAINVENTARIO := Q_AUX.fieldbyname('KAR_DTMOV').asdatetime ;
            INVMAIORMENOR := 'MENOR' ;
            ID_INVENTARIO := Q_AUX.fieldbyname('KAR_ID').asinteger ;
        end else begin
            MessageDlg('Não existe Inventário para o Produto escolhido ! ',mtWarning,[mbok],0);
            Abort;
        end ;
    end ;


     try
    Begin
      STP_CONSULTAKARDEX.ParamByName('@PRO_ID').Value  := Q_PRODPRO_ID.asstring  ;
      STP_CONSULTAKARDEX.ParamByName('@DATAINICIO').Value  :=  VENCI  ;
      STP_CONSULTAKARDEX.ParamByName('@QTDEINV').Value  := QTDEINV ;
      STP_CONSULTAKARDEX.ParamByName('@INVMAIORMENOR').Value  :=  INVMAIORMENOR  ;
      STP_CONSULTAKARDEX.ParamByName('@DATAINVENTARIO').Value  := DATAINVENTARIO ;
      STP_CONSULTAKARDEX.ParamByName('@ID_INVENTARIO').Value  := ID_INVENTARIO ;
      STP_CONSULTAKARDEX.Execproc;
      End
    except
       begin
         MessageDlg('Geração da Consulta Kardex, com erro !',mtInformation,[mbOk], 0);
         abort  ;
       end;
    end;

    Label47.caption := formatfloat('###,###,##0.000',STP_CONSULTAKARDEX.ParamByName('@SALDOINICIAL').Value) ;

    Q_KDX.close ;
    Q_KDX.open ;
    DOCUM := '' ;
    CONTALIN := 0 ;
    T_KDX_SINT.indexname := 'NUMDOCTIPO' ;
    while not  Q_KDX.eof   do begin


          IF (Q_KDXKAR_NDOC.asstring <> DOCUM)  then begin
             SALDOSAIDA := 0 ;
             SALDOENTRADA := 0 ;
          end ;

          IF Q_KDXKAR_TIPO.asstring = 'S' then begin
             SALDOSAIDA := SALDOSAIDA + Q_KDXKAR_QTDE.asfloat ;
             IF not T_KDX_SINT.findkey([Q_KDXKAR_NDOC.asstring,Q_KDXKAR_TIPO.asstring]) then begin
                DOCUM := Q_KDXKAR_NDOC.asstring ;
                CONTALIN := CONTALIN + 1 ; 
                T_KDX_SINT.append ;
                T_KDX_SINTKAR_ID.asinteger :=  CONTALIN ;
                T_KDX_SINTOS_ID.asstring := Q_KDXOS_ID.asstring ;
                T_KDX_SINTKAR_TIPO.asstring :=  'S' ;
                T_KDX_SINTKAR_NDOC.asstring := Q_KDXKAR_NDOC.asstring ;
                T_KDX_SINTKAR_QTDE.asfloat := Q_KDXKAR_QTDE.asfloat  ;
                T_KDX_SINTKAR_DATA.AsString := formatdatetime('DD/MM/YYYY',Q_KDXKAR_DTMOV.asdatetime) ;
                T_KDX_SINTCH.asstring := Q_KDXCH.asstring ;
                T_KDX_SINT.post;
              end else begin
                 T_KDX_SINT.findkey([Q_KDXKAR_NDOC.asstring,Q_KDXKAR_TIPO.asstring]) ;
                 T_KDX_SINT.edit ;
                 T_KDX_SINTKAR_QTDE.asfloat := SALDOSAIDA ;
                 T_KDX_SINT.post;
              end ;
          end ;

          IF (Q_KDXKAR_TIPO.asstring = 'E') and (Q_KDXKAR_TPDOC.asstring <> 'IV') then begin
             SALDOENTRADA := SALDOENTRADA + Q_KDXKAR_QTDE.asfloat ;
             IF not T_KDX_SINT.findkey([Q_KDXKAR_NDOC.asstring,Q_KDXKAR_TIPO.asstring]) then begin
                DOCUM := Q_KDXKAR_NDOC.asstring ;
                CONTALIN := CONTALIN + 1 ;
                T_KDX_SINT.append ;
                T_KDX_SINTKAR_ID.asinteger :=  CONTALIN ;
                T_KDX_SINTOS_ID.asstring := Q_KDXOS_ID.asstring ;
                T_KDX_SINTKAR_TIPO.asstring :=  'E' ;
                T_KDX_SINTKAR_NDOC.asstring := Q_KDXKAR_NDOC.asstring ;
                T_KDX_SINTKAR_QTDE.asfloat := Q_KDXKAR_QTDE.asfloat ;
                T_KDX_SINTKAR_DATA.AsString := formatdatetime('DD/MM/YYYY',Q_KDXKAR_DTMOV.asdatetime) ;
                T_KDX_SINTCH.asstring := Q_KDXCH.asstring ;
                T_KDX_SINT.post;
              end else begin
                 T_KDX_SINT.findkey([Q_KDXKAR_NDOC.asstring,Q_KDXKAR_TIPO.asstring]) ;
                 T_KDX_SINT.edit ;
                 T_KDX_SINTKAR_QTDE.asfloat := SALDOENTRADA ;
                 T_KDX_SINT.post;
              end ;
          end ;

           IF Q_KDXKAR_TPDOC.asstring = 'IV' then begin
              CONTALIN := CONTALIN + 1 ;
              T_KDX_SINT.append ;
              T_KDX_SINTKAR_ID.asinteger :=  CONTALIN ;
              T_KDX_SINTKAR_TIPO.asstring :=  'IV' ;
              T_KDX_SINTKAR_QTDE.asfloat := Q_KDXKAR_QTDE.asfloat ;
              T_KDX_SINTKAR_DATA.AsString := formatdatetime('DD/MM/YYYY',Q_KDXKAR_DTMOV.asdatetime) ;
              T_KDX_SINTCH.asstring := Q_KDXCH.asstring ;
              T_KDX_SINT.post;
           end ;

          Q_KDX.next ;
     end ;
     Q_KDX.first;
     T_KDX_SINT.indexname := '' ;


     SALDOENTRADA :=    0;
     SALDOSAIDA   :=    0;
     CONTALIN := 1 ;
     SALDOENTRADA := STP_CONSULTAKARDEX.ParamByName('@SALDOINICIAL').Value ;
     T_KDX_SINT.first ;
     while not T_KDX_SINT.eof   do begin
           IF CONTALIN > 1 then begin
            { IF T_KDX_SINTKAR_TIPO.asstring  = 'E' then
                SALDOENTRADA := SALDOENTRADA - SALDOSAIDA ;
             IF T_KDX_SINTKAR_TIPO.asstring  = 'S' then
                SALDOENTRADA := SALDOENTRADA + SALDOSAIDA ; }
           end  ;

          IF  T_KDX_SINTKAR_TIPO.asstring  <> 'I' then begin
              T_KDX_SINT.edit ;
              T_KDX_SINTKAR_SALDO.asfloat := SALDOENTRADA ;
              ////SALDOSAIDA := T_KDX_SINTKAR_QTDE.asfloat ;
              IF T_KDX_SINTKAR_TIPO.asstring  = 'E' then
                SALDOENTRADA := SALDOENTRADA - T_KDX_SINTKAR_QTDE.asfloat ;
              IF T_KDX_SINTKAR_TIPO.asstring  = 'S' then
                SALDOENTRADA := SALDOENTRADA + T_KDX_SINTKAR_QTDE.asfloat ;

              T_KDX_SINT.post;
          end ;
          
          CONTALIN := CONTALIN + 1 ;

          T_KDX_SINT.next ;
     end ;
     T_KDX_SINT.first ;

     Button1.Enabled := True;

end;

procedure TFKardex.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  Q_CLINbF.open ;
  Q_PROD.open ;
  Q_AREA.open ;
  Q_POS.open ;
  Q_USU2.open ;

  T_KDX_SINT.active := false ;
  T_KDX_SINT.emptytable ;
  T_KDX_SINT.open ;
  
  Label47.caption := '0.000' ; 
end;

procedure TFKardex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  T_KDX_SINT.close ;
  Q_CLINbF.close ;
  Q_PROD.close ;
  Q_AREA.close ;
  Q_POS.close ;
  Q_KDX.close ;
  Q_USU2.close ;

  Q_aux.close;
  Q_aux.Sql.Clear;
  Q_aux.Sql.Add('UPDATE KARDEX SET KAR_SALDO =  NULL ');
  Q_aux.Sql.Add('where KAR_SALDO is not   NULL');
  Q_aux.ExecSql;

  action := cafree ;

end;

procedure TFKardex.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   wwDBLookupCombo1.lookupvalue := '' ;
    wwDBLookupCombo1.text := '' ;
    PANEL12.visible := true ;
    
end;

procedure TFKardex.wwDBLookupCombo4Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFKardex.wwDBLookupCombo4Exit(Sender: TObject);
begin
   IF wwDBLookupCombo4.text = '' then     begin
      wwDBLookupCombo1.enabled := false   ;
      DBText3.visible := false ;
   end else begin
     wwDBLookupCombo1.enabled := true ;
     wwDBLookupCombo1.setfocus ;
     DBText3.visible := true ;
   end ;
  (Sender as TwwDBlookupcombo).Color := Clwindow;

end;

procedure TFKardex.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;

end;

procedure TFKardex.wwDBLookupCombo1Enter(Sender: TObject);
begin
   IF wwDBLookupCombo1.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
  (Sender as TwwDBlookupcombo).Color := ClAqua;

end;

procedure TFKardex.wwDBLookupCombo1Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFKardex.DBG_INFICalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
     if Q_KDXKAR_TPDOC.asstring = 'IV' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $00C08000;
              AFont.Color := clwhite;
            End else begin
              ABrush.color := $00C08000;
              Afont.color :=  clwhite;

            end ;
     End else begin
          if Q_KDXKAR_TIPO.asstring = 'E' then begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $00FFFFA8;   {azul}
                  AFont.Color := clblack;
                End else begin
                  ABrush.color := $00FFFFA8;
                  Afont.color := clblack;
                end ;
           End else begin

           ////if Q_KDXKAR_TPDOC.asstring = 'S' then begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $006262FF;     {vermelho}
                  AFont.Color := clblack;
                End else begin
                  ABrush.color := $006262FF;
                  Afont.color := clblack;
                end ;
           end ;
     End ;
end;     

procedure TFKardex.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if T_KDX_SINTKAR_TIPO.asstring = 'I' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $00C08000;
              AFont.Color := clwhite;
            End else begin
              ABrush.color := $00C08000;
              Afont.color :=  clwhite;

            end ;
     End else begin
          if T_KDX_SINTKAR_TIPO.asstring = 'E' then begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $00FFFFA8;   {azul}
                  AFont.Color := clblack;
                End else begin
                  ABrush.color := $00FFFFA8;
                  Afont.color := clblack;
                end ;
           End else begin

           ////if Q_KDXKAR_TPDOC.asstring = 'S' then begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $006262FF;     {vermelho}
                  AFont.Color := clblack;
                End else begin
                  ABrush.color := $006262FF;
                  Afont.color := clblack;
                end ;
           end ;
     End ;



  
end;

procedure TFKardex.RadioGroup1Click(Sender: TObject);
begin
    If RadioGroup1.itemindex = 0  then begin
       wwDBGrid1.visible := true  ;
       DBG_INFI.visible := false  ;
       Button1.Visible := False;
    end else begin
       wwDBGrid1.visible := false  ;
       DBG_INFI.visible := true  ;
       Button1.Visible := True;
    end;
end;

procedure TFKardex.SpeedButton1Click(Sender: TObject);
begin
     IF (wwDBLookupCombo1.text = '')  then begin
       MessageDlg('Produto é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       wwDBLookupCombo1.setfocus ;
       abort ;
    end ;

     KARDEX := Q_PRODPRO_id.asstring  ;
     Application.Createform(TFConsEstoque,FConsEstoque);
     FConsEstoque.ShowModal;
     FConsEstoque.Release  ;  

end;

procedure TFKardex.GeraExcel(tabela : string );
var  i : Integer;
excel :variant;
LINHA : integer;
begin




      IF Q_KDX.IsEmpty then begin
          ShowMessage('Sem dados a exportar');
          Abort;
      end;


    excel := CreateOleObject('excel.application');
    if not Excel.Application.Visible then
    Excel.Application.Visible := true;
    Excel.WorkBooks.Add;



        Excel.Cells[1, 1] :=  'Data';
        Excel.Cells[1, 2] :=  'Tipo Documento';
        Excel.Cells[1, 3] :=  'N° Doc';
        Excel.Cells[1, 4] :=  'Entrada';
        Excel.Cells[1, 5] :=  'Saída';
        Excel.Cells[1, 6] :=  'Saída';






        LINHA:= 1;
        Q_KDX.First;
        WHILE NOT Q_KDX.Eof do BEGIN
                Inc(LINHA);
                Excel.Cells[linha, 1] :=  StrToDate(FormatDateTime('DD/MM/YYYY', Q_KDXKAR_DTMOV.Value));


                excel.cells[linha, 2] := wwDBComboBox1.Text;

                Excel.Cells[linha, 3] :=  Q_KDXKAR_NDOC.Value;
                if Q_KDXKAR_TIPO.asstring = 'E' then
                   Excel.Cells[linha, 4] :=  Q_KDXKAR_QTDE.AsFloat;
                if Q_KDXKAR_TIPO.asstring = 'S' then
                   Excel.Cells[linha, 5] :=  Q_KDXKAR_QTDE.AsFloat;
                Excel.Cells[linha, 6] :=  Q_KDXKAR_SALDO.AsFloat;
                Q_KDX.Next;
        end;



    lbExcel.Caption := '';



end;

procedure TFKardex.Button1Click(Sender: TObject);
begin


  GeraExcel('');
end;

end .

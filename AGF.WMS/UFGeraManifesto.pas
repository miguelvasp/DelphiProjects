
unit UFGeraManifesto; {}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, StdCtrls, wwdblook, Db, DBTables, Wwquery, Buttons,
  wwstorep, DBCtrls, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, RzRadGrp, RzPanel;

type
  TFFGeraManifesto = class(TForm)
    Panel2: TPanel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    Q_REG: TwwQuery;
    Q_REGREG_NOME: TStringField;
    Q_REGREG_ID: TAutoIncField;
    Q_PAR: TwwQuery;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_RAZA: TStringField;
    STP_GERAMANIFESTO: TwwStoredProc;
    DS_PAR: TwwDataSource;
    Q_MG: TwwQuery;
    Q_MGNFI_TRANS: TStringField;
    Q_MG1: TwwQuery;
    StringField1: TStringField;
    Q_AUX: TwwQuery;
    Grid: TwwDBGrid;
    Q_CLINBF: TwwQuery;
    DS_CLINBF: TwwDataSource;
    UPD_CLINBF: TUpdateSQL;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFMAN_ID: TAutoIncField;
    Q_CLINBFCLIN_ID_1: TIntegerField;
    Q_CLINBFUSUARIO: TStringField;
    Q_CLINBFCH: TIntegerField;
    Q_CLINBFMARCADOR: TStringField;
    btNem: TBitBtn;
    BitBtn3: TBitBtn;
    Q_CLINBF2: TwwQuery;
    Q_CLINBF2CLIN_ID: TAutoIncField;
    Q_CLINBF2CLIN_RAZA: TStringField;
    qrAux: TwwQuery;
    qrAuxUSUARIO: TStringField;
    RzGroupBox1: TRzGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    RzGroupBox2: TRzGroupBox;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    RzGroupBox3: TRzGroupBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    RadioGroup1: TRzRadioGroup;
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure GridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btNemClick(Sender: TObject);
    procedure Q_CLINBFMARCADORChange(Sender: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFGeraManifesto: TFFGeraManifesto;

implementation
uses USenha,Umenu, UAbTabelas, UGeraManifesto ;

{$R *.DFM}

procedure TFFGeraManifesto.SpeedButton3Click(Sender: TObject);
var SQLX : STRING;
begin

     SQLX:=' DELETE FROM GERMAN WHERE USUARIO = ' + '''' + STRUSUARIO + '''' ;

     Q_AUX.CLOSE;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQLX);
     Q_AUX.ExecSQL;


     close ;
end;

procedure TFFGeraManifesto.wwDBLookupCombo4Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Claqua;
end;

procedure TFFGeraManifesto.wwDBLookupCombo4Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFFGeraManifesto.wwDBLookupCombo1Enter(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Claqua;
end;

procedure TFFGeraManifesto.wwDBLookupCombo1Exit(Sender: TObject);
begin
   (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFFGeraManifesto.MaskEdit1Enter(Sender: TObject);
begin
   (Sender as TMASKEDIT).Color := Claqua;
end;

procedure TFFGeraManifesto.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Clwindow;
end;

procedure TFFGeraManifesto.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Claqua;
end;

procedure TFFGeraManifesto.MaskEdit2Exit(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Clwindow ;
end;

procedure TFFGeraManifesto.FormCreate(Sender: TObject);
VAR  SQL: STRING;
 IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

     {SQL:= ' SELECT  A.CLIN_ID,  ' +
        '         A.CLIN_RAZA,B.MARCADOR,B.USUARIO,B.CLIN_Id,B.MAN_ID,B.CH ' +
        ' FROM    CLIENTENBF A LEFT OUTER JOIN GERMAN B ON A.CLIN_ID = B.CLIN_ID ' +
        ' AND     B.USUARIO = ' + '''' + STRUSUARIO + '''' +  ',' +
        ' NF C '  +
        ' where  (CLIN_CONTRATO <>  ' + '''' + 'I' + '''' +
        ' and CLIN_CONTRATO <>  ' + '''' + 'R' + '''' + ')' +
        ' and C.NFI_EMIT_CLI = A.CLIN_ID ' +
        ' and (C.TDOC_ID = 1 or C.TDOC_ID = 3) ' +
        ' and  (C.MANI_ID is null or C.MANI_ID = ' + '''' + '' + '''' + ')' +
        ' group by A.CLIN_ID, A.CLIN_RAZA,B.MARCADOR,B.USUARIO,B.CLIN_Id,B.MAN_ID,B.CH' +
        ' order by A.CLIN_RAZA ' ; }


     SQL:= ' SELECT  A.CLIN_ID,  ' +
        '         A.CLIN_RAZA,B.*' +
        ' FROM    CLIENTENBF A LEFT OUTER JOIN GERMAN B ON A.CLIN_ID = B.CLIN_ID ' +
        ' AND     B.USUARIO = ' + '''' + STRUSUARIO + '''' +
        ' where  (CLIN_CONTRATO <>  ' + '''' + 'I' + '''' +
        ' and CLIN_CONTRATO <>  ' + '''' + 'R' + '''' + ')' +
        ' and A.CLIN_ID in (select  NFI_EMIT_CLI from NF A,OS B  ' +
        ' where (TDOC_ID = 1 or TDOC_ID = 3) ' +
        ' and  A.OS_ID = B.OS_ID ' +
        ' and  (B.TOS_ID = 5 or B.TOS_ID = 6) ' +
        ' and  (MANI_ID is null or MANI_ID = ' + '''' + '' + '''' + '))' +
        ' order by A.CLIN_RAZA ' ;

        {SQL:= ' SELECT  A.CLIN_ID,  ' +
        '         A.CLIN_RAZA, ' +
	'         B.*   ' +
        ' FROM    CLIENTENBF A LEFT OUTER JOIN GERMAN B ON A.CLIN_ID = B.CLIN_ID ' +
        ' AND     B.USUARIO = ' + '''' + STRUSUARIO + '''' +
        ' where  (A.CLIN_CONTRATO <>  ' + '''' + 'I' + '''' +
        ' and A.CLIN_CONTRATO <>  ' + '''' + 'R' + '''' + ')' +
        ' order by A.CLIN_RAZA ' ;   }



     //SQL ANTES DA ALTERA��O DA GERA��O DO MANIFESTO - MIGUEL 7/07/2009
     {
          SELECT  A.CLIN_ID,
          A.CLIN_RAZA,B.*
          FROM
          CLIENTENBF A LEFT OUTER JOIN GERMAN B ON A.CLIN_ID = B.CLIN_ID
          where (CLIN_CONTRATO <> 'I' and CLIN_CONTRATO <> 'R')
          and A.CLIN_ID
          in (Select NFI_EMIT_CLI from NF
          where (TDOC_ID = 1 or TDOC_ID = 3)
          and (MANI_ID is null or MANI_ID = '' ))
          order by A.CLIN_RAZA

     }


  Q_CLINBF.Close;
  {Q_CLINBF.SQL.Clear;
  Q_CLINBF.SQL.ADD(SQL) ;}
  Q_CLINBF.Params[0].AsInteger := FMenu.SqlUsuariosCH.Value;
  Q_CLINBF.open ;

  Q_REG.open ;
  Q_PAR.open ;
  Q_PAR.last ;

  wwDBLookupCombo2.lookupvalue := Q_PARPAR_ID.asstring ;

end;

procedure TFFGeraManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Q_CLINBF.close ;
    Q_REG.close ;
    Q_PAR.close ;
    action := cafree ;
end;

procedure TFFGeraManifesto.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
       begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFFGeraManifesto.BitBtn1Click(Sender: TObject);
var
    DATAI : tdatetime ;
    DATAF : TDatetime ;
begin


   TRANSPORTADOR_NBF := RadioGroup1.ItemIndex;
   GERA_PARAMETRO := Q_PARPAR_ID.Value;

  {Q_MG.close  ;
   Q_MG.open   ;
   Q_MG1.close ;
   Q_MG1.open  ;

   If RadioGroup1.itemindex = 0 then  begin
       IF Q_MG.recordcount > 0 then begin
          MessageDlg('Esta rotina n�o pode ser utilizada em rede ! Verifique se existe algum usu�rio utilizando esta rotina !',mtWarning,[mbok],0);
          abort ;
       end ;
   end  else begin
       IF Q_MG1.recordcount > 0 then begin
          MessageDlg('Esta rotina n�o pode ser utilizada em rede ! Verifique se existe algum usu�rio utilizando esta rotina !',mtWarning,[mbok],0);
          abort ;
       end ;
   end ;}


  If RadioGroup1.itemindex = 0 then  begin
      {Q_MG.close ;
      Q_MG.open  ;

      IF Q_MG.recordcount = 0 then begin
         MessageDlg('N�o existem NF'+'s' + ' nas condi��es escolhidas !',mtWarning,[mbok],0);
         abort ;
      end ; }

       Try  begin
        FSENHA.Dtb_BaseDados.StartTransaction;

        Q_AUX.close ;
        Q_AUX.Sql.Clear ;
        Q_AUX.Sql.Add('select FlagTela,FlagTela_USUARIO,FlagTela_DATA from PARAMETRO ' );
        Q_AUX.Open ;






        {COMENTADO BLOQUEIO Q INHABILITA O USO EM REDE DESTA ROTINA}
        if Q_AUX.fieldbyname('FlagTela').asstring = 'S' then begin
          //MessageDlg('Esta rotina n�o pode ser utilizada em rede! Usu�rio: ' + Q_AUX.fieldbyname('FlagTela_USUARIO').asstring + '    Data: ' + Q_AUX.fieldbyname('FlagTela_DATA').asstring  + ' ,est� utilizando esta rotina ',mtWarning,[mbok],0);
          ///FSENHA.Dtb_BaseDados.RollBack;
          // FSENHA.Dtb_BaseDados..commitTransaction ;

          //abort ;



        end else begin
           Q_AUX.close ;
           Q_AUX.Sql.Clear ;
           Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA = ' + '''' + 'S' + '''' + ',');
           Q_AUX.Sql.Add(' FlagTela_USUARIO = '  + '''' +  FMenu.SqlUsuariosNOME.asstring  + '''' + ',');
           Q_AUX.Sql.Add(' FlagTela_DATA  = ' + '''' + formatdatetime('MM/DD/YYYY HH:MM',now) + '''');
           Q_AUX.ExecSql ;

           
        end ;
        FSENHA.Dtb_BaseDados.commit ;
        end  ;
        except
         begin
             FSENHA.Dtb_BaseDados.RollBack;
             abort ;
         End;
       end ;

  END ELSE BEGIN
      {Q_MG1.close ;
      Q_MG1.open  ;

      IF Q_MG1.recordcount = 0 then begin
         MessageDlg('N�o existem NF'+'s' + ' nas condi��es escolhidas !',mtWarning,[mbok],0);
         abort ;
     end ;  }

      Try  begin
        FSENHA.Dtb_BaseDados.StartTransaction;

        Q_AUX.close ;
        Q_AUX.Sql.Clear ;
        Q_AUX.Sql.Add('select FlagTela2,FlagTela2_USUARIO,FlagTela2_DATA from PARAMETRO  ' );
        Q_AUX.Open ;




        {COMENTADO BLOQUEIO Q INHABILITA O USO EM REDE DESTA ROTINA}

         if Q_AUX.fieldbyname('FlagTela2').asstring = 'S' then begin
          //MessageDlg('Esta rotina n�o pode ser utilizada em rede! Usu�rio: ' + Q_AUX.fieldbyname('FlagTela2_USUARIO').asstring + '    Data: ' + Q_AUX.fieldbyname('FlagTela2_DATA').asstring  + ' ,est� utilizando esta rotina ',mtWarning,[mbok],0);
          ///FSENHA.Dtb_BaseDados.RollBack;
          // FSENHA.Dtb_BaseDados..commitTransaction ;
         // abort ;
        




                         FSENHA.Dtb_BaseDados.commit ;



        end else begin
           Q_AUX.close ;
           Q_AUX.Sql.Clear ;
           Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA2 = ' + '''' + 'S' + '''' + ',');
           Q_AUX.Sql.Add(' FlagTela2_USUARIO = '  + '''' +  FMenu.SqlUsuariosNOME.asstring  + '''' + ',');
           Q_AUX.Sql.Add(' FlagTela2_DATA = ' + '''' + formatdatetime('MM/DD/YYYY HH:MM',now) + '''');
           Q_AUX.ExecSql ;


           FSENHA.Dtb_BaseDados.commit ;
        end ;
        end
        except
         begin
             FSENHA.Dtb_BaseDados.RollBack;
             abort ;
         End;
       end ;
  END ;


  try
    Begin
           If RadioGroup1.itemindex = 0 then
              STP_GERAMANIFESTO.ParamByName('@TRANSP').Value  := 'S'
            else
              STP_GERAMANIFESTO.ParamByName('@TRANSP').Value  := 'N'   ;

           if wwDBLookupCombo4.text <> '' then
              STP_GERAMANIFESTO.ParamByName('@CLINBF').Value  := wwDBLookupCombo4.lookupvalue
           else
              STP_GERAMANIFESTO.ParamByName('@CLINBF').Value  :=   0  ;

           if wwDBLookupCombo1.text <> '' then begin
              if copy(wwDBLookupCombo1.text,1,1) = '*' then
                 STP_GERAMANIFESTO.ParamByName('@REG').Value    :=   0
              else
                 STP_GERAMANIFESTO.ParamByName('@REG').Value    :=  wwDBLookupCombo1.lookupvalue
           end else
               STP_GERAMANIFESTO.ParamByName('@REG').Value    :=   0  ;




            DATAI :=  0.0 ;
            DATAF :=  0.0 ;
            if MaskEdit1.text <> '  /  /    ' then begin
               DATAI  := strtodate(MaskEdit1.text );
               STP_GERAMANIFESTO.ParamByName('@DATAI').Value :=  formatdatetime('YYYYMMDD',DataI) ;
            end else STP_GERAMANIFESTO.ParamByName('@DATAI').Value := 0.0 ;

            if MaskEdit2.text <> '  /  /    ' then begin
               DATAF  := strtodate(MaskEdit2.text );
               STP_GERAMANIFESTO.ParamByName('@DATAF').Value  :=   formatdatetime('YYYYMMDD',DataF) ;
            end else STP_GERAMANIFESTO.ParamByName('@DATAF').Value  := 0.0 ;
            STP_GERAMANIFESTO.ParamByName('@EMP').Value  := Q_PARPAR_ID.asstring ;
            STP_GERAMANIFESTO.ParamByName('@USU').Value  := FMenu.SqlUsuariosCH.asinteger ;
       STP_GERAMANIFESTO.Execproc;

       
    End
  except
     begin
       MessageDlg('Gera��o das NF�s para o Manifesto de Carga, com erro !',mtInformation,[mbOk], 0);
       abort  ;
     end;
  end;


  Q_MG.close  ;
  Q_MG.open   ;
  Q_MG1.close ;
  Q_MG1.open  ;

  If RadioGroup1.itemindex = 0 then  begin
      IF Q_MG.recordcount = 0 then begin
         MessageDlg('N�o existem NF'+'s' + ' nas condi��es escolhidas !',mtWarning,[mbok],0);
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA_USUARIO  = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA_DATA   = ' + '''' + '' + '''' );
         Q_AUX.ExecSql ;
         abort ;
      end ;
      
  end  else begin
      IF Q_MG1.recordcount = 0 then begin
         MessageDlg('N�o existem NF'+'s' + ' nas condi��es escolhidas !',mtWarning,[mbok],0);
         Q_AUX.close ;
         Q_AUX.Sql.Clear ;
         Q_AUX.Sql.Add(' update PARAMETRO SET FLAGTELA2 = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA2_USUARIO  = ' + '''' + '' + '''' + ',');
         Q_AUX.Sql.Add(' FLAGTELA2_DATA   = ' + '''' + '' + '''' );
         Q_AUX.ExecSql ;


         abort ;
      end ;
  end ;


  Application.Createform(TFGeraManifesto, FGeraManifesto);
  FGeraManifesto.ShowModal;
  FGeraManifesto.Release;

  Q_CLINBF.First;
  while not Q_CLINBF.Eof do
  begin
      if Q_CLINBFMARCADOR.AsString = 'S' then
      begin
           Q_CLINBF.Edit ;
           Q_CLINBFMARCADOR.AsString := '';
      end;

      Q_CLINBF.Next;
  end;
  Q_CLINBF.First;


end;

procedure TFFGeraManifesto.wwDBLookupCombo2Exit(Sender: TObject);
begin

    IF wwDBLookupCombo2.text = '' then begin
       MessageDlg('Empresa deve estar preenchida! ',mtWarning,[mbok],0);
       wwDBLookupCombo2.SetFocus;
       abort ;
    end ;
    (Sender as TwwDBLookupCombo).Color := Clwindow ;
end;

procedure TFFGeraManifesto.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAQUA ;
end;

procedure TFFGeraManifesto.GridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
     IF Q_CLINBFMARCADOR.AsString = 'S' THEN begin
        AFONT.Color:= CLRED ;
        if  not highlight then
           AFONT.COLOR:= clBlue ;
        ABrush.Color := $00D7D7D7;
     end ELSE begin
        AFONT.COLOR:= CLBLACK  ;
        ABrush.Color := clWindow;
          if   highlight then
           AFONT.COLOR:= CLRED ;
     end ;
   {  if  not highlight then
          AFONT.COLOR:= CLBLACK
      else
         AFONT.COLOR:= CLRED ;  }


end;

procedure TFFGeraManifesto.btNemClick(Sender: TObject);
var   SQL: STRING;
begin
    ///If MessageDlg('Deseja relamente desmarcar e apagar todos os campos?',
          // mtInformation, [mbYes, mbNo], 0) = mrYes then
   /// Begin

     SQL:= ' DELETE FROM GERMAN WHERE USUARIO = ' + '''' + STRUSUARIO + '''' ;

     Q_AUX.CLOSE;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;

     wwDBLookupCombo1.Text:= '';
     MaskEdit1.Text:= '';
     MaskEdit2.Text:= '';

    //end
       //else begin
           // abort;
           //// end;


end;

procedure TFFGeraManifesto.Q_CLINBFMARCADORChange(Sender: TField);
VAR SQL: STRING;
    SQLN: STRING;
    CH: STRING;
    LOCF: INTEGER;
begin

    LOCF:=  Q_CLINBFCLIN_ID.AsInteger;


   { SQLN:= 'SELECT CH FROM USUARIOS WHERE NOME = ' +  '''' + STRUSUARIO + '''';

    Q_AUX.Close;
    Q_AUX.SQL.CLEAR;
    Q_AUX.SQL.ADD(SQLN);
    Q_AUX.Open;   }

    //CH:= Q_AUX.fieldbyname('CH').asstring;

    CH := FMenu.SqlUsuariosCH.AsString;


     SQL:= '';

     IF Q_CLINBFMARCADOR.AsString = 'S' THEN BEGIN


     {TESTE DE BLOQUEIO DE USO DO MANIFESTO}

     qrAux.Close;
     qrAux.Params[0].AsInteger := Q_CLINBFCLIN_ID.AsInteger;
     qrAux.OPEN;

     IF qrAuxUSUARIO.AsString <> '' then
     begin
         ShowMessage('ESTE CLIENTE EST� SENDO USADO POR: ' + qrAuxUSUARIO.Value);
         Q_CLINBFMARCADOR.AsString := 'N';
         Abort;
     end;

     {FIM DO TESTE - MIGUEL}
     SQL:= ' INSERT INTO GERMAN (CLIN_ID,USUARIO, CH, MARCADOR ) VALUES (' +
                                 Q_CLINBFCLIN_ID.AsString + ',' +
                                 '''' + STRUSUARIO + '''' + ',' +
                                 CH + ',' +
                                 '''' + 'S' + '''' + ')'
     END
     ELSE BEGIN

     SQL:= ' DELETE FROM GERMAN WHERE CLIN_ID = ' + Q_CLINBFCLIN_ID.AsString +
           ' AND  USUARIO = ' + '''' + STRUSUARIO + '''' ;

     END;

     Q_AUX.Close;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;

     Q_CLINBF.LOCATE('CLIN_ID', LOCF,[]);



end;

procedure TFFGeraManifesto.BitBtn3Click(Sender: TObject);
var   SQL: STRING;
begin
  //If MessageDlg('Deseja relamente desmarcar e apagar todos os campos?',
     //      mtInformation, [mbYes, mbNo], 0) = mrYes then
    //Begin
    Q_CLINBF2.open ;    {}
    Q_CLINBF2.first ;
    while not Q_CLINBF2.eof do begin

             Q_AUX.CLOSE;
             Q_AUX.SQL.CLEAR;
             Q_AUX.SQL.ADD('Select count(*) as QTD  from GERMAN ');
             Q_AUX.SQL.ADD('where CLIN_ID = '  + Q_CLINBF2CLIN_ID.AsString );
             Q_AUX.SQL.ADD('and CH = '  + FMENU.SqlUsuariosCH.AsString );
             Q_AUX.open;

               IF  Q_AUX.fieldbyname('QTD').asinteger = 0 then begin
                   SQL:= ' INSERT INTO GERMAN (CLIN_ID,USUARIO, CH, MARCADOR ) VALUES (' +
                                               Q_CLINBF2CLIN_ID.AsString + ',' +
                                               '''' + STRUSUARIO + '''' + ',' +
                                               FMENU.SqlUsuariosCH.asstring + ',' +
                                               '''' + 'S' + '''' + ')'   ;

                           Q_AUX.CLOSE;
                           Q_AUX.SQL.CLEAR;
                           Q_AUX.SQL.ADD(SQL);
                           Q_AUX.ExecSQL;
               end ;


       Q_CLINBF2.next ;
     end ;
     Q_CLINBF2.close ; 





    SQL:= ' UPDATE GERMAN SET MARCADOR = ' + '''' + 'S' + '''' +
          '  WHERE USUARIO = ' + '''' + STRUSUARIO + '''' ;

     Q_AUX.CLOSE;
     Q_AUX.SQL.CLEAR;
     Q_AUX.SQL.ADD(SQL);
     Q_AUX.ExecSQL;

     Q_CLINBF.ClosE;
     Q_CLINBF.Open;

     wwDBLookupCombo1.Text:= '';
     MaskEdit1.Text:= '';
     MaskEdit2.Text:= '';

    //end
      // else begin
        //    abort;
          //  end;
end;

procedure TFFGeraManifesto.FormShow(Sender: TObject);
begin
   Grid.setfocus ;
end;

end.

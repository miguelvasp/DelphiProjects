unit URomaneio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  Db, DBTables, Wwquery, Wwdatsrc, wwstorep;

type
  TFRomaneio = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Panel3: TPanel;
    DBG_INFI: TwwDBGrid;
    Label8: TLabel;
    DBText7: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Q_ROM: TwwQuery;
    DS_ROM: TwwDataSource;
    Q_ROMROM_ID: TAutoIncField;
    Q_ROMTDOC_ID: TIntegerField;
    Q_ROMOS_ID: TIntegerField;
    Q_ROMROM_DATA: TDateTimeField;
    Label2: TLabel;
    Panel5: TPanel;
    DBText2: TDBText;
    Q_IROM: TwwQuery;
    DS_IROM: TwwDataSource;
    Q_IROMIROM_ID: TAutoIncField;
    Q_IROMROM_ID: TIntegerField;
    Q_IROMPRO_DESC: TStringField;
    Q_IROMUVEN_ID: TIntegerField;
    STP_ROM: TwwStoredProc;
    Q_UNIDVEND: TwwQuery;
    Q_UNIDVENDUVEN_NOME: TStringField;
    Q_UNIDVENDUVEN_ID: TAutoIncField;
    Q_IROMUVENdesc: TStringField;
    Q_IROMPRO_COD: TStringField;
    Q_ROMaux: TwwQuery;
    BitBtn1: TBitBtn;
    STP_ROMITENS: TwwStoredProc;
    Q_ROMROM_GEROU_ITENS: TStringField;
    BitBtn2: TBitBtn;
    Q_ROMROM_CONFIRMA: TStringField;
    Q_QTDEaux: TwwQuery;
    STP_KARDEXENTRADA: TwwStoredProc;
    Q_IROMIROM_QTDE: TFloatField;
    Q_PAR: TwwQuery;
    Q_PARPAR_NOME: TStringField;
    Q_PARPAR_ID: TAutoIncField;
    Q_PARPAR_RAZA: TStringField;
    Q_PARAR_ID: TIntegerField;
    BitBtn3: TBitBtn;
    Q_AUX: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DS_ROMDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRomaneio: TFRomaneio;


implementation
uses USenha,UOS, UAbTabelas, URomaneioITENS, UMenu ;
{$R *.DFM}

procedure TFRomaneio.SpeedButton3Click(Sender: TObject);
begin
  close ;
end;

procedure TFRomaneio.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   If FOS.Q_TDOCTDOC_ID.asinteger = 6 then  begin
      Label4.caption := 'Romaneio de Entrada';

      Q_ROMAUX.close;
      Q_ROMAUX.Sql.Clear;
      Q_ROMAUX.Sql.Add(' Select count(*) as xvalor from  ROMANEIO ') ;
      Q_ROMAUX.Sql.Add(' where OS_ID = ' + FOS.Q_TDOCOS_ID.asstring ) ;
      Q_ROMAUX.Sql.Add(' and TDOC_ID = ' + FOS.Q_TDOCTDOC_ID.asstring ) ;
      Q_ROMAUX.open ;

      If (Q_ROMAUX.fieldbyname('XVALOR').asinteger > 0) then begin
           Q_ROM.open ;

           Q_QTDEaux.close;
           Q_QTDEaux.Sql.Clear;
           Q_QTDEaux.Sql.Add('Select SUM(ESTQ_QTDE) as xvalor from  ESTOQUE ') ;
           Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + Q_ROMROM_ID.asstring ) ;
           Q_QTDEaux.open ;

           If (Q_QTDEaux.fieldbyname('XVALOR').asinteger > 0) then begin
                 Q_QTDEaux.close;
                 Q_QTDEaux.Sql.Clear;
                 Q_QTDEaux.Sql.Add(' Select count(*) as BATCH from  ESTOQUE ') ;
                 Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + Q_ROMROM_ID.asstring ) ;
                 Q_QTDEaux.Sql.Add(' and ROM_DTBATCH  is null ' ) ;
                 Q_QTDEaux.open ;
                 If (Q_QTDEaux.fieldbyname('BATCH').asinteger = 0)  then begin
                       Q_QTDEaux.close;
                       Q_QTDEaux.Sql.Clear;
                       Q_QTDEaux.Sql.Add(' Select count(*) as VCTO from  ESTOQUE ') ;
                       Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + Q_ROMROM_ID.asstring ) ;
                       Q_QTDEaux.Sql.Add(' and ROM_DTVENCTO is null ' ) ;
                       Q_QTDEaux.open ;
                       If (Q_QTDEaux.fieldbyname('VCTO').asinteger = 0)  then begin
                           {Q_QTDEaux.close;
                           Q_QTDEaux.Sql.Clear;
                           Q_QTDEaux.Sql.Add(' Select count(*) as LOTE from  ESTOQUE ') ;
                           Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + Q_ROMROM_ID.asstring ) ;
                           Q_QTDEaux.Sql.Add(' and (ESTQ_LOTE  is null or ESTQ_LOTE =' + '''' + '' + '''' + ')' ) ;
                           Q_QTDEaux.open ;
                           If (Q_QTDEaux.fieldbyname('LOTE').asinteger = 0)  then begin  }
                               Q_QTDEaux.close;
                               Q_QTDEaux.Sql.Clear;
                               Q_QTDEaux.Sql.Add(' Select count(*) as TAG from  ESTOQUE ') ;
                               Q_QTDEaux.Sql.Add(' where ROM_ID_ENT = ' + q_ROMROM_ID.asstring ) ;
                               Q_QTDEaux.Sql.Add(' and (ESTQ_TAG  is null or ESTQ_TAG =' + '''' + '' + '''' + ')' ) ;
                               Q_QTDEaux.open ;
                               If (Q_QTDEaux.fieldbyname('TAG').asinteger = 0) and
                                   (FRomaneio.Q_ROMROM_CONFIRMA.asstring <> 'S') then
                                    BITBTN2.Enabled := true ;
                             
                           /////end ;
                       end ;
                 end ;
           end ;
           ABORT ;
      end else begin
          Q_QTDEaux.close;
          Q_QTDEaux.Sql.Clear;
          Q_QTDEaux.Sql.Add(' select Count(*) as QTDE from NF  ') ;
          Q_QTDEaux.Sql.Add(' where OS_ID = ' + FOS.CDSOSOS_ID.asstring );
          Q_QTDEaux.open ;

          If (Q_QTDEaux.fieldbyname('QTDE').asinteger > 0)  then begin
              try
               Begin
                 STP_ROm.ParamByName('@OS').Value   := FOS.CDSOSOS_ID.asinteger ;
                 STP_ROM.ParamByName('@TDOC').Value := FOS.Q_TDOCTDOC_ID.asinteger ;
                 STP_ROM.Execproc   ;
                End
              except
                begin
                 MessageDlg('Geração do Romaneio, com erro !',mtInformation,[mbOk], 0);
                 abort  ;
                end;
              end;
          end ;

      end ;
      Q_ROM.close;
      Q_ROM.open ;

      Q_IROM.close;
      Q_IROM.close ;
   end ;


   If FOS.Q_TDOCTDOC_ID.asinteger = 7 then
       Label4.caption := 'Romaneio de Saída';
   Q_UNIDVEND.open ;



end;

procedure TFRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Q_IROM.close ;
  Q_ROM.close ;
  Q_UNIDVEND.close ; 
  action := cafree  ;
end;

procedure TFRomaneio.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFRomaneio.FormPaint(Sender: TObject);
begin
     If Self.Tag = 0 Then
        Begin
             Self.Tag := 1;
             Application.CreateForm(TFAbTabelas, FAbTabelas);
             FAbTabelas.Gauge1.MaxValue := 2;
             FAbTabelas.Show;
             FAbTabelas.RePaint;
             Self.Repaint;
             Try
                Begin

                     FAbTabelas.Gauge1.Progress            := 1;
                     Fromaneio.Q_ROM.Open;
                     FAbTabelas.Gauge1.Progress            := 2;
                     Fromaneio.Q_IROM.Open;

                    If (Q_ROMROM_CONFIRMA.asstring = 'S') then begin
                        BITBTN2.Caption := 'Romaneio Confirmado !' ;
                        //FRomaneioITENS.GRID.readonly := true ;
                    end else begin
                        BITBTN2.Caption := 'Confirmar Romaneio ?' ;
                         ///FRomaneioITENS.GRID.readonly := false ;
                    end ;

                End
                Except
                On E:EdbEngineError do
                   Begin
                        MessageDlg('Erro ao Abrir Tabelas, '+#13+#10+
                        E.Message,MtError,[MbOk],0);
                        Self.Tag := 2;
                   End;
                End;
             FAbTabelas.Close;
             FAbTabelas.Release;
             If Self.Tag = 2 Then Self.Close;
    end  ;
end;

procedure TFRomaneio.BitBtn1Click(Sender: TObject);
begin

   { Q_QTDEaux.close;
    Q_QTDEaux.Sql.Clear;
    Q_QTDEaux.Sql.Add('SELECT ULT_TAG FROM PARAMeTRO ') ;
    Q_QTDEaux.open ;


    MessageDlg('Último Pallet TAG criado -->>  ' + Q_QTDEaux.fieldbyname('ULT_TAG').asstring ,mtInformation,[mbOk], 0);
     }

    If (Q_ROMROM_GEROU_ITENS.asstring = 'N') then begin

          Q_PAR.open ;
          Q_PAR.locate('PAR_id',FOS.CDSCTTPAR_ID.asinteger,[]) ;
          IF (Q_PARAR_ID.asstring = '') then begin
             MessageDlg('Área considerada Corredor, está em branco para esta Empresa! geração interrompida  !',mtInformation,[mbOk], 0);
             abort  ;
          end ;

        try
          Begin
             STP_ROMITENS.ParamByName('@ROMID').Value  :=  Q_ROMROM_ID.asinteger ;
             STP_ROMITENS.ParamByName('@OSID').Value   := Q_ROMOS_ID.asinteger ;
             STP_ROMITENS.ParamByName('@EMP').Value    := FOS.CDSCTTPAR_ID.asinteger ;
             STP_ROMITENS.ParamByName('@ARID2').Value  := Q_PARAR_ID.asinteger ;
             STP_ROMITENS.Execproc;
          End
        except
           begin
             MessageDlg('Geração dos Itens do Romaneio, com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;

        Q_ROM.close ;
        Q_ROM.open ;
    end ;


    Q_QTDEaux.close;
    Q_QTDEaux.Sql.Clear;
    Q_QTDEaux.Sql.Add('SELECT A.ESTQ_TAG FROM ESTOQUE  A  ') ;
    Q_QTDEaux.Sql.Add('WHERE  A.OS_ID_ORIG = ' + Q_ROMOS_ID.asstring) ;
    Q_QTDEaux.Sql.Add('  AND  EXISTS (SELECT X.ESTQ_TAG FROM ESTOQUE X  ') ;
    Q_QTDEaux.Sql.Add('WHERE  X.ESTQ_TAG = A.ESTQ_TAG  ') ;
    Q_QTDEaux.Sql.Add('  AND  X.OS_ID_ORIG <> ' + Q_ROMOS_ID.asstring + ')') ;
    Q_QTDEaux.Sql.Add('GROUP BY A.ESTQ_TAG  ') ;
    Q_QTDEaux.Sql.Add('ORDER BY A.ESTQ_TAG  ') ;
    Q_QTDEaux.open ;


    IF Q_QTDEaux.fieldbyname('ESTQ_TAG').asstring <> '' then begin
       MessageDlg('Pallet TAG Duplicado !',mtInformation,[mbOk], 0);
       abort ;
    end ;

     application.createform(TFRomaneioITENS , FRomaneioITENS);
     FRomaneioITENS.SHOWMODAL ;
     FRomaneioITENS.RELEASE ;
     FRomaneioITENS.CLOSE ;


end;

procedure TFRomaneio.BitBtn2Click(Sender: TObject);
begin
    try Begin
      STP_KARDEXENTRADA.ParamByName('@ROM').Value  := Q_ROMROM_ID.asstring  ;
      STP_KARDEXENTRADA.ParamByName('@PAR_ID').Value  :=  FOS.CDSCTTPAR_ID.asstring  ;
      STP_KARDEXENTRADA.ParamByName('@USUARIO').Value  :=  FMenu.SqlUsuariosCH.asstring ;
      STP_KARDEXENTRADA.Execproc;
      End except begin
         MessageDlg('Geração da Confirmação, com erro !',mtInformation,[mbOk], 0);
         abort  ;
      end;
    end;

     Q_ROMaux.close;
     Q_ROMaux.Sql.Clear;
     Q_ROMaux.Sql.Add(' Update ROMANEIO Set ROM_CONFIRMA = '+ ''''+ 'S' + '''') ;
     Q_ROMaux.Sql.Add(' Where ROM_ID  =   ' + Q_ROMROM_ID.asstring ) ;
     Q_ROMaux.ExecSql;

     Q_QTDEaux.close;
     Q_QTDEaux.Sql.Clear;
     Q_QTDEaux.Sql.Add('Select CLIN_VLRSALDO from  CLIENTENBF ') ;
     Q_QTDEaux.Sql.Add(' where CLIN_ID = ' + FOS.CDSCLINCLIN_ID.asstring ) ;
     Q_QTDEaux.open ;

    { Q_QTDEaux.fieldbyname('CLIN_VLRSALDO').asfloat +

      UPDATE CLIENTENBF SET CLIN_VLRSALDO =
     (CLIN_VLRSALDO - @INF_TOTAVELHO)  WHERE CLIN_ID = @NFI_EMIT_CLI }




     Q_ROMaux.close;
     Q_ROMaux.Sql.Clear;
     Q_ROMaux.Sql.Add(' Update ESTOQUE Set ESTQ_DT_ENTRADA = ' + '''' + formatdatetime('MM/DD/YYYY',now) + '''') ;
     Q_ROMaux.Sql.Add(' Where ROM_ID_ENT  =   ' + Q_ROMROM_ID.asstring ) ;
     Q_ROMaux.ExecSql;

     BITBTN2.Caption := 'Romaneio Confirmado !' ;
     BITBTN2.Enabled := false ;

     Q_ROM.close ;
     Q_ROM.open ;
end;

procedure TFRomaneio.DS_ROMDataChange(Sender: TObject; Field: TField);
begin
     IF FOS.CDSOSOS_CONCLUIDA.asstring = 'N' then begin
            IF Q_ROMROM_CONFIRMA.asstring = 'S' then
               BitBtn3.enabled := false
             else
               BitBtn3.enabled := true ;
     end ;           

end;

procedure TFRomaneio.BitBtn3Click(Sender: TObject);
begin
   if MessageDlg('Confirma Exclusão do Romaneio de Entrada ?  '
                             ,mtConfirmation, [mbYes, mbNo], 0) = mrYES then  begin

         Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' DELETE FROM ESTOQUE') ;
         Q_aux.Sql.Add('  Where ROM_Id_ENT ='  + Q_ROMROM_ID.asstring  );
         Q_aux.ExecSql;

         Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' DELETE FROM ROMANEIO_ITENS') ;
         Q_aux.Sql.Add('  Where ROM_Id ='  + Q_ROMROM_ID.asstring  );
         Q_aux.ExecSql;

         Q_aux.close;
         Q_aux.Sql.Clear;
         Q_aux.Sql.Add(' DELETE FROM ROMANEIO') ;
         Q_aux.Sql.Add('  Where ROM_Id ='  + Q_ROMROM_ID.asstring  );
         Q_aux.ExecSql;

         MessageDlg(' Romaneio de Entrada foi excluido com sucesso! ',mtInformation,[mbOk], 0);
         FROMANEIO.close; 

   end ;

end;

end.

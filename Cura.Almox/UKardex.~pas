unit UKardex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, wwdblook, Mask,
  wwdbedit, Db, Wwdatsrc, DBTables, Wwquery, wwstorep, DBCtrls, ADODB, ComObj;

type
  TFKardex = class(TForm)
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    GroupBox6: TGroupBox;
    SBT_VISU: TSpeedButton;
    Panel10: TPanel;
    Label46: TLabel;
    RadioGroup1: TRadioGroup;
    Label8: TLabel;
    txtLote: TwwDBEdit;
    Label2: TLabel;
    cboProd: TwwDBLookupCombo;
    Label6: TLabel;
    mkDini: TMaskEdit;
    Label1: TLabel;
    mkDfim: TMaskEdit;
    Q_KDX: TwwQuery;
    DS_KDX: TwwDataSource;
    Q_KDXN_LOTE: TStringField;
    Q_KDXDATA: TDateTimeField;
    Q_KDXQTDE: TFloatField;
    Q_KDXSALDO: TFloatField;
    Q_KDXUSUARIO: TStringField;
    Q_MAT: TwwQuery;
    STP_CONSULTAKARDEX: TwwStoredProc;
    Q_AUX: TwwQuery;
    Q_KDXDOCTO: TStringField;
    Q_KDXDESCRICAO: TStringField;
    wwDBGrid1: TwwDBGrid;
    Q_KDXsint: TwwQuery;
    DS_KDXsint: TwwDataSource;
    Q_KDXsintKAR_ID: TAutoIncField;
    Q_KDXsintN_LOTE: TStringField;
    Q_KDXsintDATA: TDateTimeField;
    Q_KDXsintTIPO: TStringField;
    Q_KDXsintQTDE: TFloatField;
    Q_KDXsintSALDO: TFloatField;
    Q_KDXsintUSUARIO: TStringField;
    Q_KDXsintUSUARIOATIVO: TStringField;
    Q_KDXsintTD_ID: TIntegerField;
    Q_KDXsintDOCTO: TStringField;
    Q_KDXsintDESCRICAO: TStringField;
    Label3: TLabel;
    cboForn: TwwDBLookupCombo;
    Q_FORN: TwwQuery;
    Q_TOT: TwwQuery;
    Q_TOTQTDE: TFloatField;
    Totais: TDBText;
    DS_TOT: TwwDataSource;
    Q_KDXMATERIAL: TStringField;
    Q_KDXsintMAT_ID: TIntegerField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_KDXFOR_RAZA: TStringField;
    Label11: TLabel;
    MaskEdit1: TMaskEdit;
    Label22: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label23: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Q_MARCA_FILT: TwwQuery;
    StringField4: TStringField;
    AutoIncField3: TAutoIncField;
    Q_LOCAL_FILT: TwwQuery;
    StringField7: TStringField;
    AutoIncField4: TAutoIncField;
    StringField8: TStringField;
    Q_KDXVALID: TDateTimeField;
    Q_KDXsintMARCA_ID: TIntegerField;
    Q_KDXsintLOCAL_ID: TIntegerField;
    Q_KDXsintVALID: TDateTimeField;
    Q_KDXsintFOR_CODI: TStringField;
    Q_KDXsintalmox_id: TIntegerField;
    Q_KDXLOCAL: TStringField;
    Q_KDXMARCA_DESC: TStringField;
    Q_KDXsintUNI_ID: TIntegerField;
    Q_UNI: TwwQuery;
    Q_UNIUNI_ID: TAutoIncField;
    Q_UNIUNI_SIGLA: TStringField;
    qrTotal: TADOQuery;
    qrTotalQTDE: TFloatField;
    qrExec: TADOQuery;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label48: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    dsExcel: TDataSource;
    btnExportEmMassa: TSpeedButton;
    qrExportLocal: TADOQuery;
    qrExportLocalLocal_ID: TAutoIncField;
    qrExportLocalDescricao: TStringField;
    qrExportLocalDisponivelSN: TStringField;
    qrExportLocalCONSUMO: TStringField;
    qrExportLocalCONTROLA_ESTOQUE: TStringField;
    qrExportGrupo: TADOQuery;
    qrGrupo: TADOQuery;
    qrExportGrupoGRU_ID: TAutoIncField;
    qrExportGrupoGRU_DESC: TStringField;
    qrExportMateriais: TADOQuery;
    qrExportMateriaisMAT_ID: TAutoIncField;
    qrExportMateriaisMAT_DESC: TStringField;
    Q_KDXTIPO: TStringField;
    Q_KDXCustoMedio: TFloatField;
    Q_KDXReposicao: TFloatField;
    Q_KDXTotalReposicao: TFloatField;
    chkExcelEmMassa: TCheckBox;
    btnGetMaterial: TBitBtn;
    procedure SBT_VISUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cboProdEnter(Sender: TObject);
    procedure cboProdExit(Sender: TObject);
    procedure mkDiniEnter(Sender: TObject);
    procedure mkDiniExit(Sender: TObject);
    procedure mkDfimExit(Sender: TObject);
    procedure mkDfimEnter(Sender: TObject);
    procedure txtLoteEnter(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure RadioGroup1Click(Sender: TObject);
    procedure cboProdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkDiniKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mkDfimKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtLoteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Q_KDXsintAfterOpen(DataSet: TDataSet);
    procedure Q_KDXAfterOpen(DataSet: TDataSet);
    procedure Q_TOTBeforeOpen(DataSet: TDataSet);
    procedure cboProdCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure mkDiniKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ExportaExcel;
    procedure btnExportEmMassaClick(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKardex: TFKardex;
  VENCI : Tdatetime ;
  VENCF : Tdatetime ;
  SQLTOT :String;
  DATA1: String;
  DATA2: String;

  SQLAN: STRING;
  SQLSIN: STRING;

  SQLORDAN: STRING;
  SQLORDSIN: STRING;

  MATERIAL: STRING;
  LOTE:STRING;
  FORNECEDOR: STRING;
  ExportandoEmMassa: Boolean;

implementation
uses  UNT_SENHA, URelKardexSint, URelKardex, UMenu, ufrmKardexEmMassa,
  UfrmBuscaMaterial; //URelKardexSint, URelKardex;
{$R *.DFM}

procedure TFKardex.SBT_VISUClick(Sender: TObject);
VAR    SQLK, SQLAUX: STRING;
        FOR_CODI: STRING;
        VALID: STRING;
begin

    DATA1:= '';
    DATA2:= '';
    MATERIAL:= '';
    LOTE := '' ;
    FORNECEDOR:= '';
    VALID:= '';

   VENCI :=  0.0 ;
   VENCF :=  0.0 ;
   if mkDini.text <> '  /  /    ' then Begin
      VENCI  := strtodate(mkDini.text );
      DATA1  := formatdatetime('MM/DD/YYYY',strtodate(mkDini.text )) ;
   End;

   if mkDfim.text <> '  /  /    ' then  Begin
      VENCF  := strtodate(mkDfim.text );
      DATA2:= formatdatetime('MM/DD/YYYY',strtodate(mkDfim.text )) ;
   End;


   IF (cboProd.text = '')  then begin
       MessageDlg('Material é campo de preenchimento obrigatório !',mtWarning,[mbok],0);
       cboProd.setfocus ;
       abort ;
   end ;


    Q_AUX.close;
    Q_AUX.Sql.Clear;
    Q_AUX.Sql.Add('Select count(*) as xvalor from  ALMOX ') ;
    Q_AUX.Sql.Add('where MAT_ID = ' + Q_MATMAT_ID.asstring) ;
    Q_AUX.open ;

    IF Q_AUX.fieldbyname('XVALOR').asinteger = 0 then begin
       //MessageDlg('Não existe entrada para este Material !',mtWarning,[mbok],0);
       abort ;
    end ;




           if (DATA1 <> '') AND (DATA2 <> '') THEN BEGIN
          SQLK :=        ' AND     DATA BETWEEN  Convert(SMALLDATETIME,' + '''' +  Data1 + '''' + ') AND Convert(SMALLDATETIME,' +  '''' + Data2 + '''' + ')'; 
          SQLK := SQLK + ' ORDER BY 	A.N_LOTE, CONVERT(CHAR(10),DATA,112) DESC '
      END
      ELSE
          SQLK:=       ' ORDER BY 	A.N_LOTE, CONVERT(CHAR(10),DATA,112) DESC ' ;




   If RadioGroup1.itemindex = 0 then begin
      DBG_RAAT.visible := false ;
      wwDBGrid1.visible := true ;
      wwDBGrid1.Align := alClient;

           try
        Begin
          STP_CONSULTAKARDEX.ParamByName('@MAT_ID').Value  := cboProd.LookupValue;
          MATERIAL:= cboProd.LookupValue;

          If (cboForn.LookupValue <> '') and (cboForn.Text <> '') then Begin
                  STP_CONSULTAKARDEX.ParamByName('@FOR_CODI').Value  :=  '''' + cboForn.LookupValue + '''';
                  FORNECEDOR:= cboForn.LookupValue
          End
          Else
                  STP_CONSULTAKARDEX.ParamByName('@FOR_CODI').Value  := Null;

          STP_CONSULTAKARDEX.ParamByName('@USUARIO').Value  := STRUSUARIO ;

          If txtLote.Text <> '' then Begin
             STP_CONSULTAKARDEX.ParamByName('@LOTE').Value  := txtLote.Text;
             LOTE:= txtLote.Text
           End  
           else
             STP_CONSULTAKARDEX.ParamByName('@LOTE').Value  := 'VAZIO';


           IF MaskEdit1.TEXT <> '  /  /    ' THEN  BEGIN
              valid  := formatdatetime('DD-MM-YYYY',strtodate(MaskEdit1.Text)) ;
              STP_CONSULTAKARDEX.ParamByName('@VALID').Value  := valid;
           END ELSE
               STP_CONSULTAKARDEX.ParamByName('@VALID').Value  := Null;



             STP_CONSULTAKARDEX.ParamByName('@TIPOKARDEX').Value  := 'S';

           STP_CONSULTAKARDEX.ParamByName('@SALDOINICIAL').Value := Q_TOTQTDE.AsFloat;

          STP_CONSULTAKARDEX.Execproc;
          End
        except
           begin
             if ExportandoEmMassa = False then begin
                         MessageDlg('Geração da Consulta Kardex, com erro !',mtInformation,[mbOk], 0);
                         abort  ;
             end;

           end;
        end;

          SQLORDSIN:= SQLK ;




          Q_KDXsint.close ;
          Q_KDXSint.SQL.Clear;
          Q_KDXSint.SQL.ADD(SQLSIN);
          Q_KDXsint.SQL.Add(SQLK);

          Q_KDXsint.open ;

          dsExcel.DataSet := Q_KDXsint;

   end else begin
      SQLK:=       ' ORDER BY 	A.KAR_ID ' ;


       
      DBG_RAAT.visible := true ;
      wwDBGrid1.visible := false ;
      DBG_RAAT.Align := alClient;
           try
        Begin
          STP_CONSULTAKARDEX.ParamByName('@MAT_ID').Value  := cboProd.LookupValue;//Q_MATMATERIAL_ID.asstring  ;
          MATERIAL:= cboProd.LookupValue;
          STP_CONSULTAKARDEX.ParamByName('@USUARIO').Value  := STRUSUARIO ;

          If (cboForn.LookupValue <> '') and (cboForn.Text <> '') then begin
                  STP_CONSULTAKARDEX.ParamByName('@FOR_CODI').Value  :=  '''' + cboForn.LookupValue + '''';
                  FORNECEDOR:= cboForn.LookupValue
          End
          Else
                  STP_CONSULTAKARDEX.ParamByName('@FOR_CODI').Value  := Null;


          If txtLote.Text <> '' then begin
             STP_CONSULTAKARDEX.ParamByName('@LOTE').Value  := txtLote.Text;
             LOTE:=  txtLote.Text
           End  
           else
             STP_CONSULTAKARDEX.ParamByName('@LOTE').Value  := 'VAZIO';

           IF wwDBLookupCombo4.Text <> '' THEN
               STP_CONSULTAKARDEX.ParamByName('@MARCA_ID').Value  := wwDBLookupCombo4.LookupValue
           ELSE
              STP_CONSULTAKARDEX.ParamByName('@MARCA_ID').Value  := Null;

           IF wwDBLookupCombo3.Text <> '' THEN
               STP_CONSULTAKARDEX.ParamByName('@LOCAL_ID').Value  := wwDBLookupCombo3.LookupValue
           else
               STP_CONSULTAKARDEX.ParamByName('@LOCAL_ID').Value  := Null;

           IF MaskEdit1.TEXT <> '  /  /    ' THEN  BEGIN
              valid  := formatdatetime('DD-MM-YYYY',strtodate(MaskEdit1.Text)) ;
              STP_CONSULTAKARDEX.ParamByName('@VALID').Value  := valid;
           END ELSE
               STP_CONSULTAKARDEX.ParamByName('@VALID').Value  := Null;


            STP_CONSULTAKARDEX.ParamByName('@TIPOKARDEX').Value  := 'A';
            STP_CONSULTAKARDEX.ParamByName('@SALDOINICIAL').Value := Q_TOTQTDE.AsFloat;

            sTP_CONSULTAKARDEX.Execproc;
          End
        except
           begin
             if ExportandoEmMassa = False then begin
               MessageDlg('Geração da Consulta Kardex, com erro !',mtInformation,[mbOk], 0);
               abort  ;
             end;
           end;
        end;

      if mkDini.Text <> '  /  /    '   then begin
          with Q_AUX do begin
              Close;
              sql.Clear;
              sql.Add('DELETE FROM Kardex WHERE CONVERT(VARCHAR, DATA, 112) < ' + QuotedStr(FormatDateTime('yyyy-MM-dd', StrToDate(mkDini.Text))));
              ExecSQL;
          end;
      end;


      SQLORDAN:= SQLAN + SQLK ;

      qrTotal.Close;
      qrTotal.SQL.Clear;
      qrTotal.SQL.Add(
        ' SELECT' +
        ' SUM(CASE WHEN ALM.QTDE IS NULL THEN 0.0 ELSE ALM.QTDE END) QTDE' +
        ' FROM' +
        ' ALMOX		ALM' +
        ' WHERE' +
                        ' ALM.TIPO = ''E''' +
        ' AND		ALM.QTDE_RETIRADA IS NULL' +
        ' AND alm.MAT_ID = :mat_id'

      );

      if wwDBLookupCombo3.Text <> '' then
        qrTotal.SQL.Add(' and LOCAL_ID = ' + wwDBLookupCombo3.LookupValue);

      qrTotal.Parameters[0].Value := cboProd.LookupValue;

      qrTotal.Open;

      qrExec.Parameters[0].Value := FMenu.sqlUsuariosNome.Value;
      qrExec.Parameters[1].Value := qrTotalQTDE.AsFloat;
      qrExec.ExecSQL;



      if ExportandoEmMassa then begin
            Q_KDX.close ;
            Q_KDX.SQL.Clear;
            Q_KDX.SQL.Add(SQLAN + ' ORDER BY A.DATA ');
            Q_KDX.open ;
      end
      else begin
            Q_KDX.close ;
            Q_KDX.SQL.Clear;
            Q_KDX.SQL.Add(SQLORDAN);
            Q_KDX.open ;
      end;




      dsExcel.DataSet := Q_KDX;



   end ;


end;

procedure TFKardex.FormCreate(Sender: TObject);
Var SQL:String;
 IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;

        SQLTOT :=
		' SELECT	SUM(QTDE)  QTDE ' +
		' FROM		ALMOX ' +
		' WHERE		TIPO = ' + '''' + 'E' + '''' +
		' AND		QTDE_RETIRADA IS NULL ';

        SQL := 'SELECT 		A.*, ' +
               ' 		B.DESCRICAO, ' +
               '                FORN.FOR_RAZA, ' +
               '                MAT.MAT_DESC AS MATERIAL, ' +
               '                LOC.DESCRICAO LOCAL, ' +
	       '	        MAC.MARCA_DESC, dbo.fnGetCustoMedio(A.MAT_ID, A.DATA) as CustoMedio, dbo.fnGetValorReposicaoPelaEntrada(A.ALMOX_ID) as Reposicao, A.Qtde * dbo.fnGetValorReposicaoPelaEntrada(A.ALMOX_ID) as TotalReposicao ' +
               ' FROM 		KARDEX A LEFT OUTER JOIN  TIPO_DOCUMENTO B ON ' +
               ' 		A.TD_ID = B.TD_ID, ' +
               '                CPAFORN FORN, ' +
               '                MATERIAIS MAT, ' +
	       '	        LOCAL LOC, ' +
	       '         	MARCAS MAC ' +
               ' WHERE          USUARIOATIVO = ' + '''' + StrUsuario + '''' +
               ' AND            A.FOR_CODI = FORN.FOR_CODI ' +
               ' AND            A.MAT_ID = MAT.MAT_ID '  +
               ' AND            A.MARCA_ID = MAC.MARCA_ID '  +
               ' AND            A.LOCAL_ID = LOC.LOCAL_ID '  ;


        SQLAN:= SQL;

        Q_KDX.SQL.CLEAR;
        Q_KDX.SQL.ADD(SQL);

        SQL := 'SELECT 		A.*, ' +
               ' 		B.DESCRICAO ' +
               ' FROM 		KARDEX A LEFT OUTER JOIN  TIPO_DOCUMENTO B ON ' +
               ' 		A.TD_ID = B.TD_ID ' +
               ' WHERE          USUARIOATIVO = ' + '''' + StrUsuario + '''' ;

               


        SQLSIN:= SQL;

        Q_KDXsint.SQL.CLEAR;
        Q_KDXsint.SQL.ADD(SQL);



        Q_MAT.open ;
        Q_FORN.OPEN;
        Q_LOCAL_FILT.OPEN;
        Q_MARCA_FILT.OPEN;
        Q_UNI.Open;
      


end;

procedure TFKardex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_MAT.close ;
  Q_FORN.CLOSE;
  Q_KDX.CLOSE;
  Q_KDXSint.CLOSE;
  Q_LOCAL_FILT.CLOSE;
  Q_MARCA_FILT.CLOSE;
  Q_UNI.close;


  action :=cafree ;
end;

procedure TFKardex.DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin

           if Q_KDXTIPO.asstring = 'E' then begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $00FFFFD2;   //azul
                  AFont.Color := clBlue;
                End else begin
                  ABrush.color := $00FFFFA8;
                  Afont.color := clBlue;
                end ;
           End else begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $009D9DFF;     //vermelho
                  AFont.Color := clWhite;
                End else begin
                  ABrush.color := $006262FF;
                  Afont.color := clWhite;
                end ;
           end ;
end;

procedure TFKardex.cboProdEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFKardex.cboProdExit(Sender: TObject);
begin

  (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFKardex.mkDiniEnter(Sender: TObject);
begin

  (Sender as TMASKEDIT).Color := ClAqua;
end;

procedure TFKardex.mkDiniExit(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Clwindow ;
end;

procedure TFKardex.mkDfimExit(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Clwindow ;
end;

procedure TFKardex.mkDfimEnter(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Claqua;
end;

procedure TFKardex.txtLoteEnter(Sender: TObject);
begin
  (Sender as TwwdbEDIT).Color := Claqua ;
end;

procedure TFKardex.txtLoteExit(Sender: TObject);
begin
  (Sender as TwwdbEDIT).Color := Clwindow ;
end;

procedure TFKardex.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin


           if Q_KDXsintTIPO.asstring = 'E' then begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $00FFFFD2;   //azul
                  AFont.Color := clBlue;
                End else begin
                  ABrush.color := $00FFFFA8;
                  Afont.color := clBlue;
                end ;
           End else begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $009D9DFF;     //vermelho
                  AFont.Color := clWhite;
                End else begin
                  ABrush.color := $006262FF;
                  Afont.color := clWhite;
                end ;
           end ;

end;

procedure TFKardex.RadioGroup1Click(Sender: TObject);
begin
   SBT_VISU.CLICK;
end;

procedure TFKardex.cboProdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //    If key = 13 then
     //           SBT_VISU.Click;
end;

procedure TFKardex.mkDiniKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If key = 13 then
                mkDFim.SetFocus;
end;

procedure TFKardex.mkDfimKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //  If key = 13 then
      //          SBT_VISU.Click;
end;

procedure TFKardex.txtLoteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     //   If key = 13 then
     //           SBT_VISU.Click;
end;

procedure TFKardex.Q_KDXsintAfterOpen(DataSet: TDataSet);
begin
        Q_TOT.CLOSE;
        Q_TOT.OPEN;

 
end;

procedure TFKardex.Q_KDXAfterOpen(DataSet: TDataSet);
begin
        Q_TOT.CLOSE;
        Q_TOT.OPEN;
         
end;

procedure TFKardex.Q_TOTBeforeOpen(DataSet: TDataSet);
begin
         Q_TOT.SQL.CLEAR;
         Q_TOT.SQL.ADD(SQLTOT);

        If (cboProd.Text <> '') and (cboProd.LookupValue <> '') then
        Begin
                Q_TOT.SQL.ADD(' AND MAT_ID = ' + cboProd.LookupValue);

                If TxtLote.Text <> '' then
                        Q_TOT.SQL.ADD(' AND  N_LOTE =' + '''' + txtLote.Text + '''');

                If (cboForn.LookupValue <> '') and (cboForn.Text <> '') then
                        Q_TOT.SQL.ADD(' AND  FOR_CODI = ' + '''' + cboForn.LookupValue + '''');

                if (wwDBLookupCombo3.Text <> '') then
                      Q_TOT.SQL.ADD(' AND LOCAL_ID = ' +  wwDBLookupCombo3.LookupValue);

        End Else
                Q_TOT.SQL.ADD(' AND 1 = 0 ');
end;

procedure TFKardex.cboProdCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
//        SBT_VISU.Click;
end;

procedure TFKardex.mkDiniKeyPress(Sender: TObject; var Key: Char);
begin
        //If key = #13 then
        //        SBT_VISU.Click;
end;

procedure TFKardex.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 //SBT_VISU.Click;
end;

procedure TFKardex.wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 //SBT_VISU.Click;
end;

procedure TFKardex.wwDBLookupCombo4Enter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFKardex.wwDBLookupCombo3Enter(Sender: TObject);
begin
(Sender as TwwDBLookupCombo).Color := ClAqua;
end;

procedure TFKardex.wwDBLookupCombo4Exit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFKardex.wwDBLookupCombo3Exit(Sender: TObject);
begin
 (Sender as TwwDBLookupCombo).Color := Clwindow;
end;

procedure TFKardex.wwDBLookupCombo4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//If key = 13 then
 //               SBT_VISU.Click;
end;

procedure TFKardex.wwDBLookupCombo3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//If key = 13 then
  //              SBT_VISU.Click;
end;

procedure TFKardex.MaskEdit1Enter(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := ClAqua;
end;

procedure TFKardex.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMASKEDIT).Color := Clwindow ;
end;

procedure TFKardex.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
      //  If key = #13 then
       //         SBT_VISU.Click;
end;

procedure TFKardex.SpeedButton1Click(Sender: TObject);
begin
    IF  RadioGroup1.ItemIndex = 0 Then Begin
        Application.CreateForm(tFRelKardexSint ,FRelKardexSint);
        FRelKardexSint.QuickRep1.Preview;
        FRelKardexSint.Close
    end
    Else Begin
        Application.CreateForm(tFRelKardex ,FRelKardex);
        FRelKardex.QuickRep1.Preview;
        FRelKardex.Close;
    end;
end;

procedure TFKardex.SpeedButton2Click(Sender: TObject);
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;
begin
  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;
  linha := 1;
  //escrevemos os cabeçalhos
  for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
      Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
  end;


  dsExcel.DataSet.Last;

  dsExcel.DataSet.First;
 
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].Text;
           end;
      end;

      Excel.cells[Linha, 8] := '';
      Excel.cells[Linha, 9] := '';
      Excel.cells[Linha, 10] := '';
           dsExcel.dataset.next;
     // FKardex.qrExportMateriais.Next;

  end;

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;
end;

procedure TFKardex.ExportaExcel;

begin
  //

end;

procedure TFKardex.btnExportEmMassaClick(Sender: TObject);
begin


  ExportandoEmMassa := True;
  qrExportLocal.Open;
  qrExportGrupo.Open;

  frmKardexEmMassa := tfrmKardexEmMassa.Create(Self);
  frmKardexEmMassa.ShowModal;

  ShowMessage('Materiais exportados com sucesso!');
  ExportandoEmMassa := False;



end;

procedure TFKardex.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboProd.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

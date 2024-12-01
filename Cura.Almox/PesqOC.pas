unit PesqOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, Db, Wwdatsrc, DBTables,
  Wwquery, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, ADODB;

type
  TFPesqOrdComp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    DBG_OC: TwwDBGrid;
    Q_OC: TwwQuery;
    DS_OC: TwwDataSource;
    Label2: TLabel;
    cboForn: TwwDBLookupCombo;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    cboMat: TwwDBLookupCombo;
    Q_MAT: TwwQuery;
    Q_MATMAT_ID: TAutoIncField;
    Q_MATMAT_DESC: TStringField;
    Q_AUX: TwwQuery;
    Q_AUXCOLUMN1: TIntegerField;
    txtOC: TwwDBEdit;
    Label6: TLabel;
    DBE_EST_ENT1: TMaskEdit;
    Label15: TLabel;
    DBE_EST_ENT2: TMaskEdit;
    Q_OCORD_ID: TAutoIncField;
    Q_OCfornecedor: TStringField;
    Q_OCDT_CADASTRO: TDateTimeField;
    Q_OCUSUARIO: TStringField;
    Q_OCCH_AUT: TIntegerField;
    Q_OCCH_CANCEL: TIntegerField;
    Q_OCFOR_CODI: TStringField;
    Q_OCNUM_OCOM: TIntegerField;
    Q_OCCOND_PGTO_ID: TIntegerField;
    Q_OCOBS: TMemoField;
    Q_OCDT_EMISSAO: TDateTimeField;
    Q_OCDT_ENTREGA: TDateTimeField;
    Q_OCSTATUS: TStringField;
    Q_OCVALOR: TFloatField;
    Q_OCDT_CANCEL: TDateTimeField;
    Q_OCVL_IPI: TFloatField;
    Q_OCVL_TOT: TFloatField;
    Q_OCMAT_ID: TAutoIncField;
    Q_OCmaterial: TStringField;
    cboStat: TwwDBComboBox;
    cboStPesq: TwwDBComboBox;
    Label7: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Q_MARC: TwwQuery;
    DS_MARC: TwwDataSource;
    Q_LOCAL_FILT: TwwQuery;
    StringField7: TStringField;
    AutoIncField4: TAutoIncField;
    StringField8: TStringField;
    Q_MARCMARCA_ID: TAutoIncField;
    Q_MARCMARCA_DESC: TStringField;
    Panel4: TPanel;
    SBT_PESQ: TSpeedButton;
    SBT_SELE: TSpeedButton;
    btIncluir: TSpeedButton;
    Q_OCMARCA_DESC: TStringField;
    Q_OCMAT_DESC: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Q_OCUNI_COMP_ID: TIntegerField;
    Q_OCQTDE_COMP: TFloatField;
    Q_OCQTDE_COMP_REC: TFloatField;
    Q_OCMATMARCA_EMBALAGEM: TStringField;
    Q_OCST_ITEM: TStringField;
    UPD_OC: TUpdateSQL;
    Q_OCALTERAR: TStringField;
    Q_OCIORD_ID: TAutoIncField;
    Label12: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery1FIL_DESC: TStringField;
    ADOQuery1FIL_CODI: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    Label13: TLabel;
    Q_OCTIPOCOMPRA: TStringField;
    Q_OCAutorizacao: TStringField;
    btnGetMaterial: TBitBtn;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure SBT_PESQClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBT_SELEClick(Sender: TObject);
    procedure txtOCEnter(Sender: TObject);
    procedure txtOCExit(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure cboFornEnter(Sender: TObject);
    procedure wwDBComboBox2Enter(Sender: TObject);
    procedure wwDBComboBox2Exit(Sender: TObject);
    procedure cboFornExit(Sender: TObject);
    procedure cboMatExit(Sender: TObject);
    procedure DBG_OCDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_OCSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBE_EST_ENT1Exit(Sender: TObject);
    procedure wwDBLookupCombo4Enter(Sender: TObject);
    procedure wwDBLookupCombo3Enter(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure DBE_EST_ENT1Enter(Sender: TObject);
    procedure DBE_EST_ENT2Enter(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure DBE_EST_ENT2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure txtOCKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_EST_ENT2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboFornKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboMatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboStatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtOCChange(Sender: TObject);
    procedure DBE_EST_ENT2Change(Sender: TObject);
    procedure cboFornChange(Sender: TObject);
    procedure cboStatChange(Sender: TObject);
    procedure cboMatChange(Sender: TObject);
    procedure wwDBLookupCombo4Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cboStatEnter(Sender: TObject);
    procedure cboStatExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_OCAfterPost(DataSet: TDataSet);
    procedure Q_OCALTERARChange(Sender: TField);
    procedure DBG_OCCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqOrdComp: TFPesqOrdComp;
  ORD_ID : STRING;
  CLIC: BOOLEAN;

implementation

uses UOrdCom, URelOrdComp, UMenu,Unt_Senha, UfrmBuscaMaterial;

{$R *.DFM}

procedure TFPesqOrdComp.SBT_SAIRClick(Sender: TObject);
begin
        FPesqOrdComp.Close;
end;

procedure TFPesqOrdComp.SBT_PESQClick(Sender: TObject);
var SQLX:String;
begin
 with Q_OC do
    begin
      Close;
      Sql.Clear;

      SQLX :=
       ' SELECT top 500	A.ORD_ID, ' +
       ' 		A.DT_CADASTRO, ' +
       ' 		A.USUARIO, ' +
       ' 		A.CH_AUT, ' +
       ' 		A.CH_CANCEL, ' +
       ' 		A.FOR_CODI, ' +
       '		A.NUM_OCOM, ' +
       ' 		A.COND_PGTO_ID, ' +
       ' 		A.OBS, ' +
       ' 		A.DT_EMISSAO, ' +
       ' 		A.DT_ENTREGA, ' +
       ' 		A.STATUS, ' +
       ' 		A.VALOR, ' +
       ' 		A.DT_CANCEL, ' +
       ' 		A.VL_IPI, ' +
       ' 		A.VL_TOT,  A.TIPOCOMPRA,' +
       ' 		C.MAT_ID, ' +
       ' 		D.MARCA_DESC, ' +
       '        	CASE WHEN C.MAT_DESC IS not null THEN C.CodigoMaterial + '' '' + C.MAT_DESC ELSE C.CodigoMaterial + '' '' + C.MAT_DESC END AS MAT_DESC, ' +
       ' 		B.STATUS ST_ITEM, ' +
       ' 		B.UNI_COMP_ID, ' +
       ' 		B.QTDE_COMP, ' +
       ' 		B.QTDE_COMP_REC , ' +
       ' 		MM.MATMARCA_EMBALAGEM, ' +
       ' 		B.ALTERAR, ' +
       ' 		B.IORD_ID, C.CodigoMaterial + '' '' + C.MAT_DESC MAT_DESC, CASE WHEN ((a.STATUS = ''A'' OR a.STATUS = ''P'') AND DATEADD(DAY, 10, DT_ENTREGA) <= GETDATE()  AND AutorizaOrdemVencida IS NULL) THEN ''Autorizar'' End as Autorizacao ' +
       ' FROM    	ORDEM_COMPRA A, ' +
       ' 		ORDEM_COMPRAITEM B, ' +
       ' 		MATERIAIS C, ' +
       ' 		MARCAS D, ' +
       ' 		MATERIAL_MARCA MM ' +
       ' WHERE   	A.ORD_ID = B.ORD_ID ' +
       ' AND     	B.MAT_ID = C.MAT_ID ' +
       ' AND     	B.MARCA_ID = D.MARCA_ID ' +
       ' AND		MM.MATMARCA_ID = B.MATMARCA_ID ';


      Sql.Add(SQLX);

      if (txtOC.Text <> '') then
        Sql.Add('and A.ORD_ID = ''' + txtOC.Text + '''') ;

      if  (cboforn.Text <> '') and (cboforn.lookupvalue <> '') then
              Sql.Add(' and A.FOR_CODI = ''' + cboforn.LookupValue + '''' );
      if DBE_EST_ENT1.text <> '  /  /    ' then
              Sql.ADD( ' and A.DT_ENTREGA >= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(DBE_EST_ENT1.text) ) + '''' );
      if DBE_EST_ENT2.text <> '  /  /    ' then
              Sql.ADD( ' and A.DT_ENTREGA <= ' + '''' + FormatDateTime('MM/DD/YYYY',strtodate(DBE_EST_ENT2.text) ) + '''' );
      If (cboMat.Text <> '') and (cboMat.lookupvalue <> '') then
              Sql.add(' AND B.MAT_ID = ''' + cboMat.LookupValue  + '''');
      IF (wwDBLookupCombo4.Text <> '') and (wwDBLookupCombo4.LookupValue <> '') then
              Sql.add(' AND D.MARCA_ID = ' + wwDBLookupCombo4.LookupValue);
      IF cboStat.Text <> '' THEN
              Sql.add(' AND B.STATUS = ' + '''' + cboStat.Value + '''');


      if wwDBLookupCombo1.Text <> '' then
        SQL.Add('AND A.FIL_CODI = ' + QuotedStr(wwDBLookupCombo1.LookupValue));

      Sql.Add(' ORDER BY A.ORD_ID desc ');

      Open;

    end;

end;

procedure TFPesqOrdComp.FormShow(Sender: TObject);
begin
        Q_FORN.Open;
        Q_MAT.Open;
        Q_MARC.open;
        //Q_LOCAL_FILT.OPEN;

       // SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.SBT_SELEClick(Sender: TObject);
begin
        txtOC.Text := '';
        cboForn.Text := '';
        DBE_EST_ENT1.Text := '';
        DBE_EST_ENT2.Text := '';
        cboMat.Text := '';
        cboStat.Text:= '';
        wwDBLookupCombo4.Text:= '';
        
     
        txtOC.SetFocus;

        SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.txtOCEnter(Sender: TObject);
begin
        (Sender as TwwDBEdit).Color := ClAqua;
end;

procedure TFPesqOrdComp.txtOCExit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFPesqOrdComp.Data1Exit(Sender: TObject);
begin
        (Sender as TwwDBedit).Color := clwindow;
end;

procedure TFPesqOrdComp.cboFornEnter(Sender: TObject);
begin
         (Sender as TwwDBlookupcombo).Color := claqua;
         (Sender as TwwDBlookupcombo).DropDown;
end;

procedure TFPesqOrdComp.wwDBComboBox2Enter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
end;

procedure TFPesqOrdComp.wwDBComboBox2Exit(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := clwindow;
end;

procedure TFPesqOrdComp.cboFornExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If cboForn.text <> '' then
                cboForn.text := Q_FORNFOR_RAZA.asstring  ;
end;

procedure TFPesqOrdComp.cboMatExit(Sender: TObject);
begin
        (Sender as TwwDBlookupcombo).Color := clwindow;
        If cboMat.text <> '' then
                cboMat.text := Q_MATMAT_DESC.asstring  ;
end;

procedure TFPesqOrdComp.DBG_OCDblClick(Sender: TObject);
begin

      ORD_ID:= Q_OCORD_ID.AsString;
    {  IF ORD_ID <> '' THEN
      begin
         Application.CreateForm(TFOrdComp, FOrdComp);
         FOrdComp.ShowModal;
         FOrdComp.Release;
      end
      else
         MessageDlg('Não há O.C. selecionada para abrir !',mtWarning,[mbok],0); }

      IF ORD_ID <> '' THEN BEGIN
         If DBG_OC.SelectedField <> Q_OCAlterar then
         Begin
                 Application.CreateForm(TFOrdComp, FOrdComp);
                 FOrdComp.ShowModal;
                 FOrdComp.Release;
                 ORD_ID:= '';
         End;
      End Else Begin
        MessageDlg('Não há O.C. selecionada para abrir !',mtWarning,[mbok],0);

      End;


end;

procedure TFPesqOrdComp.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
       key := #0;
       perform(WM_nextdlgctl,0,0);
     end;
end;

procedure TFPesqOrdComp.Q_OCSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
         If Sender.AsString = 'P' then
                Text := 'Parcialmente Atendida';
        If Sender.AsString = 'T' then
                Text := 'Totalmente Atendida';
        If Sender.AsString = 'A' then
                Text := 'Em Aberto';
end;

procedure TFPesqOrdComp.SpeedButton2Click(Sender: TObject);
begin
//        Application.CreateForm(TFRelOrdemCompra, FRelOrdemCompra);
//        FRelOrdemCompra.OrdemComp.Preview;
//        FRelOrdemCompra.Close;
end;

procedure TFPesqOrdComp.SpeedButton4Click(Sender: TObject);
begin
        close;
end;

procedure TFPesqOrdComp.DBE_EST_ENT1Exit(Sender: TObject);
begin
 (Sender as TMaskEdit).Color := ClWindow;
end;

procedure TFPesqOrdComp.wwDBLookupCombo4Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := claqua;
   (Sender as TwwDBlookupcombo).DropDown;
end;

procedure TFPesqOrdComp.wwDBLookupCombo3Enter(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := claqua;
end;

procedure TFPesqOrdComp.wwDBLookupCombo3Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFPesqOrdComp.wwDBLookupCombo4Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := clwindow;
end;

procedure TFPesqOrdComp.DBE_EST_ENT1Enter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesqOrdComp.DBE_EST_ENT2Enter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesqOrdComp.MaskEdit1Enter(Sender: TObject);
begin
  (Sender as TMaskEdit).Color := ClAqua;
end;

procedure TFPesqOrdComp.DBE_EST_ENT2Exit(Sender: TObject);
begin
 (Sender as TMaskEdit).Color := ClWindow;
end;

procedure TFPesqOrdComp.MaskEdit1Exit(Sender: TObject);
begin
 (Sender as TMaskEdit).Color := ClWindow;
end;

procedure TFPesqOrdComp.btIncluirClick(Sender: TObject);
begin

         ORD_ID := '0';
         CLIC:= TRUE;
         Application.CreateForm(TFOrdComp, FOrdComp);
         FOrdComp.ShowModal;
         FOrdComp.Release;
         CLIC:= FALSE;

        // SBT_PESQ.Click;

end;

procedure TFPesqOrdComp.txtOCKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  If key = 13 then
           SBT_PESQ.Click;  }
end;

procedure TFPesqOrdComp.DBE_EST_ENT2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.cboFornKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.MaskEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.cboMatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.wwDBLookupCombo4KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.wwDBLookupCombo3KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.cboStatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key = 13 then
           SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.txtOCChange(Sender: TObject);
begin
//    SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.DBE_EST_ENT2Change(Sender: TObject);
begin
//    SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.cboFornChange(Sender: TObject);
begin
//    SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.cboStatChange(Sender: TObject);
begin
//    SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.cboMatChange(Sender: TObject);
begin
//    SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.wwDBLookupCombo4Change(Sender: TObject);
begin
//    SBT_PESQ.Click;
end;

procedure TFPesqOrdComp.SpeedButton1Click(Sender: TObject);
Var SQL:String;
begin

        IF   Q_OCORD_ID.AsString = '' THEN BEGIN
             MessageDlg('Não existe O.C. selecionada para ser finalizada !',mtInformation,[mbOK],0);
        end
        Else Begin


            If MessageDlg('Deseja realmente finalizar a Ordem de Compra?',
            mtInformation,[MbYes,MbNo],0)= mrYes then
            Begin
                   { SQL :=  ' UPDATE          ORDEM_COMPRAITEM ' +
                            ' SET             STATUS = ' + '''' + 'T' + '''';

//                            ' WHERE           ALTERAR = ' + '''' + 'S' + '''';

                    Q_AUX.SQL.CLEAR;
                    Q_AUX.SQL.ADD(SQL);
                    Q_AUX.EXECSQL; }

                    SQL :=  'UPDATE          ORDEM_COMPRAITEM ' +
                            'SET             STATUS = ' + '''' + 'T' + '''' +
                            ' WHERE          ORD_ID = ' + Q_OCORD_ID.AsString;

//                            'AND           ALTERAR = ' + '''' + 'S' + '''';
                    Q_AUX.SQL.CLEAR;
                    Q_AUX.SQL.ADD(SQL);
                    Q_AUX.EXECSQL;

                    Q_OC.CLOSE;
                    Q_OC.OPEN;

                    MessageDlg('Operação executada com sucesso!',mtInformation,[mbOK],0);
            End;

     End;


end;

procedure TFPesqOrdComp.SpeedButton6Click(Sender: TObject);
Var StrChave:String; SQL:String;
begin

        IF   Q_OCORD_ID.AsString = '' THEN BEGIN
             MessageDlg('Não existe O.C. selecionada para ser cancelada !',mtInformation,[mbOK],0);

        end
        Else Begin

            StrChave := Q_OCNum_OCom.AsString;

            If (Q_OC.State = dsEdit) or (Q_OC.State = dsInsert) then
            Begin
                    Q_OC.Post;
            End;

            If MessageDlg('Confirma cancelamento de Ordens de Compra? Note que os itens destas ordens também serão cancelados!',mtInformation, [mbYes, mbNo], 0) = mrYes then
            Begin
                    SQL :=  ' UPDATE        ORDEM_COMPRAITEM ' +
                            ' SET           STATUS  = ' + '''' + 'C' + '''' + ',' +
                            '               ALTERAR = ' + '''' + 'N' + '''' + ',' +
                            '               USU_CANCEL = ' + '''' + StrUsuario + '''' + ',' +
                            '               DT_CANCEL = GETDATE() ' +
                            ' WHERE         STATUS  <> ' + '''' + 'C' + '''' +
                            ' AND           IORD_ID = ' + Q_OCIORD_ID.AsString;

//                            ' AND           ALTERAR = ' + '''' + 'S' + '''';

                    Q_AUX.SQL.CLEAR;
                    Q_AUX.SQL.ADD(SQL);
                    Q_AUX.EXECSQL;

                    SQL :=  ' UPDATE        ORDEM_COMPRAITEM ' +
                            ' SET           STATUS  = ' + '''' + 'C' + '''' + ',' +
                            '               ALTERAR = ' + '''' + 'N' + '''' + ',' +
                            '               DT_CANCEL = GETDATE() ' +
                            ' WHERE         ALTERAR = ' + '''' + 'S' + '''' +
                            ' AND           IORD_ID = ' + Q_OCIORD_ID.AsString;                            

//                            ' AND           STATUS <> ' + '''' + 'C' + '''';

                    Q_AUX.SQL.CLEAR;
                    Q_AUX.SQL.ADD(SQL);
                    Q_AUX.EXECSQL;


                    Q_OC.CLOSE;
                    Q_OC.OPEN;

                    If StrChave <> '' then
                            Q_OC.Locate('ORD_ID',StrChave,[]);
            End;
     End;

end;

procedure TFPesqOrdComp.cboStatEnter(Sender: TObject);
begin
        (Sender as TwwDBComboBox).Color := claqua;
        (Sender as TwwDBComboBox).DropDown;
end;

procedure TFPesqOrdComp.cboStatExit(Sender: TObject);
begin
   (Sender as TwwDBComboBox).Color := Clwindow;
end;

procedure TFPesqOrdComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        Q_OC.CLOSE;
        Q_FORN.CLOSE;
        Q_MAT.CLOSE;
        Q_MARC.CLOSE;
        Action := CaFree;

end;

procedure TFPesqOrdComp.Q_OCAfterPost(DataSet: TDataSet);
var Strchave : string ;
begin
          try
           begin
             StrChave := Q_OCIORD_ID.AsString;
             FMenu.Database1.ApplyUpdates([Q_OC]);
           end;
          except
             On E:EdbEngineError do
             begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
          end;

          Q_OC.Close;
          Q_OC.Open;

          If StrChave <> '' Then
              Q_OC.Locate('IORD_ID',StrChave,[])

end ;

procedure TFPesqOrdComp.Q_OCALTERARChange(Sender: TField);
var StrChave:String;
begin
        If Q_OC.State <> dsEdit then
                Q_OC.Edit;
                
        IF (Q_OCAlterar.AsString = '') or (Q_OCAlterar.AsString = 'N') then
                Q_OCAlterar.AsString := 'S'
        Else
                Q_OCAlterar.AsString := 'N';

          try
           begin
             StrChave := Q_OCIORD_ID.AsString;
             FMenu.Database1.ApplyUpdates([Q_OC]);
           end;
          except
             On E:EdbEngineError do
             begin
                MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
                E.Message,MtError,[MbOk],0);
             end;
          end;

          Q_OC.Close;
          Q_OC.Open;

          If StrChave <> '' Then
              Q_OC.Locate('IORD_ID',StrChave,[])
end;

procedure TFPesqOrdComp.DBG_OCCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

        If Q_OCSt_Item.AsString = 'A' then
                AFont.Color := clBlue;
        If Q_OCSt_Item.AsString = 'P' then
                AFont.Color := clBlack;
        If Q_OCSt_Item.AsString = 'T' then
                AFont.Color := clGreen;

        IF Q_OCTIPOCOMPRA.AsString = 'EMERGÊNCIA' then begin
            ABrush.Color := clRed;
            AFont.Color := clBlack;
        end;

        IF Q_OCTIPOCOMPRA.AsString = 'URGÊNCIA' then begin
            ABrush.Color := clRed;
            AFont.Color := clBlack;
        end;

        if Q_OCAutorizacao.AsString = 'Autorizar'  then begin
            ABrush.Color := clBlack;
            AFont.Color := clWhite;
        end;

        If Q_OCSt_Item.AsString = 'C' then
                AFont.Color := clRed;

        If Highlight then
                AFont.Color := clWhite;

end;

procedure TFPesqOrdComp.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   ADOQuery1.Open;
end;

procedure TFPesqOrdComp.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMat.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

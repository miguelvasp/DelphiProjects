unit UConsManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFConsManifesto = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel7: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GRID1: TwwDBGrid;
    Q_MANIF: TwwQuery;
    Q_MANIFMANI_ID: TAutoIncField;
    Q_MANIFMANI_DATA: TDateTimeField;
    Q_MANIFMANI_TIPOCARGA: TStringField;
    Q_MANIFCLIN_RAZA: TStringField;
    DS_MANIF: TwwDataSource;
    wwDBComboBox1: TwwDBComboBox;
    Q_MANIFVEIC_ID: TIntegerField;
    Q_MANIFTRANS_ID: TIntegerField;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    Q_TRANS: TwwQuery;
    Q_TRANSTRANS_FANTASIA: TStringField;
    Q_TRANSTRANS_ID: TAutoIncField;
    Q_TRMOT: TwwQuery;
    Q_TRMOTMOT_NOME: TStringField;
    Q_TRMOTMOT_ID: TAutoIncField;
    Q_TRMOTTRANS_ID: TIntegerField;
    Q_MANIFVEICdescr: TStringField;
    Q_MANIFTranspDESCR: TStringField;
    Q_MANIFMOT_ID: TIntegerField;
    Q_MANIFMOTdescr: TStringField;
    Q_MANIFOS_ID: TIntegerField;
    Label2: TLabel;
    Label8: TLabel;
    Q_MANIFCONFIRMA_MANI: TStringField;
    Label9: TLabel;
    Panel2: TPanel;
    Label48: TLabel;
    Panel1: TPanel;
    DBG_RAAT: TwwDBGrid;
    Q_NF: TwwQuery;
    Q_NFMANI_ORDEM: TIntegerField;
    Q_NFNFI_NUMERO: TStringField;
    Q_NFCLIN_RAZA: TStringField;
    Q_NFNFI_DTENTREGA: TDateTimeField;

    
    Q_NFNFI_DEST_RAZA: TStringField;
    Q_NFNFI_DEST_ENDERECO: TStringField;
    Q_NFNFI_DEST_CEP: TStringField;
    Q_NFMUN_NOME: TStringField;
    Q_NFREG_NOME: TStringField;
    Q_NFNFI_EMIT_CLI: TIntegerField;
    Q_NFNFI_CODI: TAutoIncField;
    Q_NFTEXTO_LIVRE: TMemoField;
    DS_NF: TwwDataSource;
    Panel4: TPanel;
    Label11: TLabel;
    wwDBGrid1: TwwDBGrid;
    Q_NFCOL: TwwQuery;
    DS_NFCOL: TwwDataSource;
    Q_CLIFINAL: TwwQuery;
    Q_CLIFINALCLIF_RAZA: TStringField;
    Q_CLIFINALCLIF_ID: TAutoIncField;
    Q_NFCOLCNF_ID: TAutoIncField;
    Q_NFCOLMANI_ID: TIntegerField;
    Q_NFCOLCNF_NF: TStringField;
    Q_NFCOLCNF_QTDENF: TIntegerField;
    Q_NFCOLCNF_UV: TFloatField;
    Q_NFCOLCNF_PESO: TFloatField;
    Q_NFCOLCNF_PALLETS: TIntegerField;
    Q_NFCOLCNF_VALOR: TFloatField;
    Q_NFCOLCLIF_ID: TIntegerField;
    Q_NFCOLCLIFraza: TStringField;
    SBT_VISU: TSpeedButton;
    Q_MANIFREG_ID: TIntegerField;
    Q_MANIFMANI_VFRETEPAG: TFloatField;
    qrRegiao: TwwQuery;
    qrRegiaoREG_ID: TAutoIncField;
    qrRegiaoREG_NOME: TStringField;
    Q_MANIFRegiao: TStringField;
    SpeedButton1: TSpeedButton;
    qrAux: TwwQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure GRID1DblClick(Sender: TObject);
    procedure GRID1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DBG_RAATCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SBT_VISUClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Q_MANIFBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsManifesto: TFConsManifesto;
  PESQMANI : string ;
implementation
uses UFConsManifesto, UManifesto, UManifestoCOL, URelConsManifestoE, URelConsManifestoC,
  UrelManifestoSintetico ;
{$R *.DFM}

procedure TFConsManifesto.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
  PESQMANI := '' ;

  IF TIPO = 'E' then
     LABEL1.caption  :=  'Manifesto de Carga - Entrega'
   else
     LABEL1.caption  :=  'Manifesto de Carga - Coleta'  ;     

  IF TRANSP = 'S' then
    LABEL7.caption  :=  'Sim'
   else
     LABEL7.caption  :=  'N�o'     ;

  IF CLI <> '' then
     Label10.caption :=  FFConsMANIFESTO.combo_cliente.text
   else
     Label10.caption := 'N�o Preenchido'   ;

  IF NF <> '' then
     Label6.caption :=  FFConsMANIFESTO.dbnf.text
  else
     Label6.caption :='N�o Preenchido' ;

  IF OS <> '' then
     Label8.caption :=  OS
  else
     Label8.caption :='N�o Preenchido' ;

  IF MANIF <> '' then
     Label19.caption :=  FFConsMANIFESTO.wwDBEdit1.text
  else
     Label19.caption := 'N�o Preenchido'      ;

  IF DATAI <> 0.00 then
     Label12.caption :=  FFConsMANIFESTO.DATA1.text
  else
     Label12.caption := 'N�o Preenchido'       ;

  IF DATAF <> 0.00 then
     Label14.caption :=  FFConsMANIFESTO.DATA2.text
  else
     Label14.caption := 'N�o Preenchido' ;


   Q_VEIC.open ;
   Q_TRANS.open ;
   Q_TRMOT.open ;


   IF  TIPO = 'E' then begin
       DBG_RAAT.visible := true ;
       wwDBGrid1.visible := false ;
      //COMENTADA PARA TESTAR CONSULTA COM LEFT OUTER JOIN - MIGUEL
     {  Q_MANIF.SQL.clear ;
       Q_MANIF.SQL.ADD('SELECT A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID,A.TRANS_ID,A.MOT_ID, ');
       Q_MANIF.SQL.ADD('B.CLIN_RAZA,C.OS_ID,A.CONFIRMA_MANI, A.REG_ID,A.MANI_VFRETEPAG FROM MANIFESTO A,CLIENTENBF B,NF C');
       Q_MANIF.SQL.ADD('where    A.MANI_Id      = C.MANI_ID  ');
       Q_MANIF.SQL.ADD('and C.NFI_EMIT_CLI = B.CLIN_ID   ');
       Q_MANIF.SQL.ADD('and A.MANI_ENT_COL = ' + '''' + TIPO + '''') ;
       Q_MANIF.SQL.ADD('and A.NFI_TRANS    = ' + '''' + TRANSP + '''') ;

       if DATAI <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       if MANIF <> '' then
              Q_MANIF.SQL.ADD ( 'and A.MANI_ID =   ' + MANIF ) ;
       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and C.NFI_EMIT_CLI = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and C.NFI_NUMERO =  ' + '''' + NF + '''');

       if OS <> '' then
              Q_MANIF.SQL.ADD ( 'and C.OS_ID =  ' + '''' + OS + '''');
              

              //add paramentro � consulta para verificar manifestos em aberto/fechado
              //***************miguel*****************
       if FFConsManifesto.rgStatus.ItemIndex = 0 then
              Q_MANIF.SQL.ADD ( 'and a.CONFIRMA_MANI =  ' + '''' + 'S' + '''');
        if FFConsManifesto.rgStatus.ItemIndex = 1 then
              Q_MANIF.SQL.ADD ( 'and a.CONFIRMA_MANI =  ' + '''' + 'N' + '''');

       if FFConsManifesto.cboMotorista.Text <> '' then
              Q_MANIF.SQL.ADD ( ' and A.MOT_ID = '+FFConsManifesto.qrMotoristamot_id.AsString);


       if FFConsManifesto.rgRomaneio.ItemIndex = 1  then
       begin
              Q_MANIF.SQL.ADD(' and A.Mani_id = E.Mani_id ');
              Q_MANIF.SQL.ADD(' and e.estq_dt_saida is null');
       end;

      IF FFConsManifesto.rgRomaneio.ItemIndex = 0 then
             Q_MANIF.SQL.ADD ( ' and A.CONFIRMA <> '+QuotedStr('S'))
      else
             Q_MANIF.SQL.ADD ( ' and A.CONFIRMA <> '+ QuotedStr('N'));


       Q_MANIF.SQL.ADD ( ' group by A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID, ') ;
       Q_MANIF.SQL.ADD ( ' A.TRANS_ID,A.MOT_ID,B.CLIN_RAZA,C.OS_ID,A.CONFIRMA_MANI, A.REG_ID,A.MANI_VFRETEPAG  ') ;
       Q_MANIF.open ; }

       Q_MANIF.SQL.clear ;

       if FFConsManifesto.chkOs.Checked then
         Q_MANIF.SQL.ADD(

          ' SELECT  DISTINCT    MANIFESTO.MANI_ID, MANIFESTO.MANI_DATA, MANIFESTO.MANI_TIPOCARGA, MANIFESTO.VEIC_ID, '+
          ' MANIFESTO.MOT_ID, MANIFESTO.TRANS_ID, '+
          ' CLIENTENBF.CLIN_RAZA, NF.OS_ID, MANIFESTO.CONFIRMA_MANI, MANIFESTO.REG_ID, MANIFESTO.MANI_VFRETEPAG  '+
          ' FROM         MANIFESTO, CLIENTENBF,NF LEFT OUTER JOIN ESTOQUE ON nf.MANI_ID = ESTOQUE.MANI_ID, OS OS '+
          ' where MANIFESTO.MANI_ID = NF.MANI_ID      '+
          '         and NF.NFI_EMIT_CLI =  CLIENTENBF.CLIN_ID and nf.os_id = os.os_id  ')
       else
         Q_MANIF.SQL.ADD(

          ' SELECT  distinct    MANIFESTO.MANI_ID, MANIFESTO.MANI_DATA, MANIFESTO.MANI_TIPOCARGA, MANIFESTO.VEIC_ID, '+
          ' MANIFESTO.MOT_ID, MANIFESTO.TRANS_ID, '+
          ' CLIENTENBF.CLIN_RAZA, 0 as OS_ID, MANIFESTO.CONFIRMA_MANI, MANIFESTO.REG_ID, MANIFESTO.MANI_VFRETEPAG  '+
          ' FROM         MANIFESTO, CLIENTENBF,NF LEFT OUTER JOIN ESTOQUE ON nf.MANI_ID = ESTOQUE.MANI_ID, OS OS '+
          ' where MANIFESTO.MANI_ID = NF.MANI_ID      '+
          '         and NF.NFI_EMIT_CLI =  CLIENTENBF.CLIN_ID and nf.os_id = os.os_id  ');





       if FFConsManifesto.RadioGroup1.ItemIndex <> 2 then
       Q_MANIF.SQL.ADD('and MANIFESTO.MANI_ENT_COL = ' + '''' + TIPO + '''') ;

       if FFConsManifesto.RadioGroup2.ItemIndex <> 2 then
       Q_MANIF.SQL.ADD('and MANIFESTO.NFI_TRANS    = ' + '''' + TRANSP + '''') ;


       if DATAI <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),MANIFESTO.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),MANIFESTO.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       {if (MANIF <> '') and (MANIF2 = '') then
              Q_MANIF.SQL.ADD ( 'and MANIFESTO.MANI_ID =   ' + MANIF ) ;   }

       if (MANIF <> '')  then
       BEGIN
       IF MANIF2 = '' then
       MANIF2 := '9999999999';
              Q_MANIF.SQL.ADD ( 'and (MANIFESTO.MANI_ID >= ' + MANIF + ' AND MANIFESTO.MANI_ID <= ' + MANIF2 + ') ' ) ;
       end;


       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and nf.NFI_EMIT_CLI = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and nf.NFI_NUMERO =  ' + '''' + NF + '''');

       if OS <> '' then
              Q_MANIF.SQL.ADD ( 'and nf.OS_ID =  ' + '''' + OS + '''');


              //add paramentro � consulta para verificar manifestos em aberto/fechado
              //***************miguel*****************
       if FFConsManifesto.rgStatus.ItemIndex = 0 then
              Q_MANIF.SQL.ADD ( 'and MANIFESTO.CONFIRMA_MANI =  ' + '''' + 'S' + '''');
        if FFConsManifesto.rgStatus.ItemIndex = 1 then
              Q_MANIF.SQL.ADD (' and MANIFESTO.CONFIRMA_MANI = ' + '''' + 'N' + '''');


       if FFConsManifesto.cboMotorista.Text <> '' then
              Q_MANIF.SQL.ADD ( ' and MANIFESTO.MOT_ID = '+FFConsManifesto.qrMotoristamot_id.AsString);




      IF FFConsManifesto.rgRomaneio.ItemIndex = 1 then
      begin
             Q_MANIF.SQL.ADD ( ' and os.tos_id <> 5 and MANIFESTO.CONFIRMA <> '+QuotedStr('S')) ;
            // Q_MANIF.SQL.ADD(' and estoque.estq_dt_saida is null');
      end
      else if  FFConsManifesto.rgRomaneio.ItemIndex = 0 then
             Q_MANIF.SQL.ADD ( ' and os.tos_id <> 5 and MANIFESTO.CONFIRMA <> '+ QuotedStr('N'));

      Q_MANIF.SQL.Add(' ORDER BY MANIFESTO.MANI_ID DESC ');

      

      Q_MANIF.Open;
   end else begin

       wwDBGrid1.visible := true ;
       DBG_RAAT.visible := false  ;



       Q_MANIF.SQL.clear ;
       Q_MANIF.SQL.ADD('/*************/select   A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID,A.TRANS_ID,A.MOT_ID, ');
       Q_MANIF.SQL.ADD('B.CLIN_RAZA,D.OS_ID,A.CONFIRMA_MANI, A.REG_ID,A.MANI_VFRETEPAG ') ;
       Q_MANIF.SQL.ADD('FROM  COLETA_NF C LEFT OUTER JOIN  ORDEM_COLETA_ENTREGA D ON C.MANI_ID = D.MANI_ID ');
       Q_MANIF.SQL.ADD(',MANIFESTO A,CLIENTENBF B');
       Q_MANIF.SQL.ADD('where    A.MANI_Id      = C.MANI_ID  ');
       Q_MANIF.SQL.ADD('and A.CLIN_ID      = B.CLIN_ID   ');

       if FFConsManifesto.RadioGroup1.ItemIndex <> 2 then
           Q_MANIF.SQL.ADD('and A.MANI_ENT_COL = ' + '''' + TIPO + '''') ;

       if FFConsManifesto.RadioGroup2.ItemIndex <> 2 then
           Q_MANIF.SQL.ADD('and (A.NFI_TRANS    = ' + '''' + TRANSP + ''''+'or A.NFI_TRANS is null)') ;

       

       if DATAI <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) >= ' +''''+ formatdatetime('YYYYMMDD',DATAI) + '''') ;
       if DATAF <> 0.0 then
              Q_MANIF.SQL.ADD ( 'and convert(Char(10),A.MANI_DATA,112) <= ' +''''+ formatdatetime('YYYYMMDD',DATAF) + '''') ;

       if (MANIF <> '')  then
       BEGIN
       IF MANIF2 = '' then
       MANIF2 := '9999999999';
              Q_MANIF.SQL.ADD ( 'and (A.MANI_ID >= ' + MANIF + ' AND A.MANI_ID <= ' + MANIF2 + ') ' ) ;
       end;

       
       if CLI <> '' then
              Q_MANIF.SQL.ADD ( 'and A.CLIN_ID = ' + CLI  ) ;
       if NF <> '' then
              Q_MANIF.SQL.ADD ( 'and C.CNF_NF =  ' + '''' + NF + '''');

       if OS <> '' then
          Q_MANIF.SQL.ADD ( 'AND   D.OS_ID = ' + '''' + OS + '''');

              //add paramentro � consulta para verificar manifestos em aberto/fechado
              //***************miguel*****************
       if FFConsManifesto.rgStatus.ItemIndex = 0 then
              Q_MANIF.SQL.ADD ( 'and a.CONFIRMA_MANI =  ' + '''' + 'S' + '''');
        if FFConsManifesto.rgStatus.ItemIndex = 1 then
              Q_MANIF.SQL.ADD ( 'and a.CONFIRMA_MANI =  ' + '''' + 'N' + '''');


              
      IF FFConsManifesto.rgRomaneio.ItemIndex = 0 then
             Q_MANIF.SQL.ADD ( ' and A.CONFIRMA <> '+QuotedStr('S'))
      else  if FFConsManifesto.rgRomaneio.ItemIndex = 1 then
             Q_MANIF.SQL.ADD ( ' and A.CONFIRMA <> '+ QuotedStr('N'));

       Q_MANIF.SQL.ADD ( ' group by A.MANI_ID,A.MANI_DATA,A.MANI_TIPOCARGA,A.VEIC_ID, ') ;
       Q_MANIF.SQL.ADD ( ' A.TRANS_ID,A.MOT_ID,B.CLIN_RAZA,D.OS_ID,A.CONFIRMA_MANI, A.REG_ID,A.MANI_VFRETEPAG  ') ;

       Q_MANIF.SQL.Add(' ORDER BY A.MANI_ID DESC ');
       Q_MANIF.open ;


       Q_NFCOL.open ;
       Q_CLIFINAL.open ;

   end ;
   Q_NF.open ;


end;

procedure TFConsManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_VEIC.close ;
   Q_TRANS.close ;
   Q_TRMOT.close ;
   Q_MANIF.close ;
   Q_NF.close ;
   Q_NFCOL.close ;
   Q_CLIFINAL.close ;


   with qrAux do begin
           Close;
           sql.Clear;
           sql.Add('update manifesto set sel_export = ''N'' where sel_export = ''S'' or sel_export = ''N'' ');
           ExecSQL;
   end;

   action := cafree ;  

end;

procedure TFConsManifesto.SpeedButton3Click(Sender: TObject);
begin
  close; 
end;

procedure TFConsManifesto.GRID1DblClick(Sender: TObject);
var
   MAN : string ;
begin
   MAN := Q_MANIFMANI_ID.asstring ;



  IF  GRID1.Selectedfield = Q_MANIFMANI_ID  then begin
     PESQMANI := '*' ;


     IF  TIPO = 'E' then begin
           application.createform(TFManifesto , FManifesto);
           FManifesto.SHOWMODAL ;
           FManifesto.RELEASE   ;
           FManifesto.CLOSE     ;
     END ELSE BEGIN
           application.createform(TFManifestoCOL , FManifestoCOL);
           FManifestoCOL.SHOWMODAL ;
           FManifestoCOL.RELEASE   ;
           FManifestoCOL.CLOSE     ;
     END ;
     Q_MANIF.close ;
     Q_MANIF.open ;
     Q_MANIF.locate('mani_id',MAN,[])    ;
  end ;






end;

procedure TFConsManifesto.GRID1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
     if Q_MANIFCONFIRMA_MANI.asstring = 'S' then begin
           AFont.color := clwhite;
           if not highlight then   begin
              ABrush.color := $00FFFFA8;
              AFont.Color := clblack;
            End else begin
              ABrush.color := $00FFFFA8;
              Afont.color :=  clblack;

            end ;
     End else begin
               AFont.color := clwhite;
               if not highlight then   begin
                  ABrush.color := $0055AAFF;
                  AFont.Color := clblack;
                End else begin
                  ABrush.color := $0055AAFF;
                  Afont.color := clblack;
                end ;
     end ;
end;

procedure TFConsManifesto.DBG_RAATCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
     AFont.color := clwhite;
     if not highlight then   begin
        ABrush.color := $00FFBFBF;
        AFont.Color := clblack;
      End else begin
        ABrush.color := $00FFBFBF;
        Afont.color := clblack;
      end ;
end;

procedure TFConsManifesto.SBT_VISUClick(Sender: TObject);
begin

     IF  TIPO = 'E' then begin
         Application.CreateForm(TFRelConsManifestoE,FRelConsManifestoE);
         FRelConsManifestoE.ConsMANIF.Preview;
         FRelConsManifestoE.Close;
     end else begin
         Application.CreateForm(TFRelConsManifestoC,FRelConsManifestoC);
         FRelConsManifestoC.ConsMANIF.Preview;
         FRelConsManifestoC.Close;

     end ;
end;

procedure TFConsManifesto.SpeedButton1Click(Sender: TObject);
begin
    frmRelsintManifesto := TfrmRelsintManifesto.Create(Self);
    frmRelsintManifesto.qrpManif.Preview;
end;

procedure TFConsManifesto.Q_MANIFBeforePost(DataSet: TDataSet);
begin
  Abort;
end;

end.

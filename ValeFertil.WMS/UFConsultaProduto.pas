unit UFConsultaProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Mask, StdCtrls, Buttons, ExtCtrls, wwdbedit, Db, DBTables,
  Wwquery, Wwdotdot, Wwdbcomb, Wwdatsrc, DBCtrls, wwstorep, Gauges;

type
  TFFConsultaProduto = class(TForm)
    Panel2: TPanel;
    SBT_VISU: TSpeedButton;
    Label1: TLabel;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    Data2: TMaskEdit;
    Data1: TMaskEdit;
    combo_cliente: TwwDBLookupCombo;
    dbnf: TwwDBEdit;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    Q_PROD: TwwQuery;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_DESC: TStringField;
    Q_PRODPRO_ID: TAutoIncField;
    DS_PROD: TwwDataSource;
    DS_CLINBF: TwwDataSource;
    Q_CLIFINAL: TwwQuery;
    combo_cliente_final: TwwDBLookupCombo;
    combo_produto: TwwDBLookupCombo;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_REM: TwwQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    DS_REM: TwwDataSource;
    Panel12: TPanel;
    DBText3: TDBText;
    Label7: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_TPROD: TwwQuery;
    Q_TPRODTPRO_NOME: TStringField;
    Q_TPRODTPRO_ID: TAutoIncField;
    Q_TPRODCLIN_ID: TIntegerField;
    STP_CONSULTANF: TwwStoredProc;
    Q_CLIFINALCLIF_ID: TAutoIncField;
    Q_CLIFINALCLIF_RAZA: TStringField;
    RadioGroup2: TRadioGroup;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label11: TLabel;
    MaskEdit2: TMaskEdit;
    Q_AUX: TwwQuery;
    RadioGroup1: TRadioGroup;
    RadioGroup3: TRadioGroup;
    CheckBox1: TCheckBox;
    RadioGroup4: TRadioGroup;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combo_clienteEnter(Sender: TObject);
    procedure cboclientefinalEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure cboclientefinalExit(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure dbnfEnter(Sender: TObject);
    procedure dbnfExit(Sender: TObject);
    procedure cboprodutoEnter(Sender: TObject);
    procedure cboprodutoExit(Sender: TObject);
    procedure SBT_VISUClick(Sender: TObject);
    procedure combo_clienteChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure combo_produtoCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure combo_produtoExit(Sender: TObject);
    procedure combo_produtoEnter(Sender: TObject);
    procedure wwDBLookupCombo2Enter(Sender: TObject);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaProduto: TFFConsultaProduto;
tipo : integer;
tipo_OS : integer;
cli :string;
rem :string;
nota: string;
prod : string  ;
TPROD : string  ;
clif : string;
CODI: STRING;
VENCI  : tdatetime;
VENCF  : tdatetime;
BATCH  : tdatetime;
BATCHF  : tdatetime;
LOTE : STRING;
REME : string ; 
implementation

uses UConsultaProduto, UMenu;

{$R *.DFM}

procedure TFFConsultaProduto.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TFFConsultaProduto.FormCreate(Sender: TObject);
begin
Q_CLIFINAL.Open;
Q_TPROD.open ;
Q_PROD.OPEN;
Q_REM.open ;
Q_CLINBF.OPEN;   
end;

procedure TFFConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Q_aux.close;
Q_aux.Sql.Clear;
Q_aux.Sql.Add('DELETE CONSULTA_NF WHERE CH = ' + FMenu.SqlUsuariosCH.asstring );
Q_aux.ExecSql;

Q_TPROD.close   ;
Q_PROD.CLOSE;
Q_CLINBF.CLOSE;
Q_REM.close ;
Q_CLIFINAL.CLOSE;
ACTION := CAFREE;
end;

procedure TFFConsultaProduto.combo_clienteEnter(Sender: TObject);
begin
     (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaProduto.cboclientefinalEnter(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaProduto.combo_clienteExit(Sender: TObject);
begin


(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaProduto.cboclientefinalExit(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaProduto.Data1Exit(Sender: TObject);
begin
(Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaProduto.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaProduto.Data2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaProduto.Data2Exit(Sender: TObject);
begin
(Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaProduto.dbnfEnter(Sender: TObject);
begin
(Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaProduto.dbnfExit(Sender: TObject);
begin
(Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFFConsultaProduto.cboprodutoEnter(Sender: TObject);
begin

(SENDER AS TWWDBLOOKUPCOMBO).COLOR := CLAQUA;
end;

procedure TFFConsultaProduto.cboprodutoExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaProduto.SBT_VISUClick(Sender: TObject);
var
  TPROD_ASTERISCO : string ;
begin

  If combo_produto.text = '' then begin
     MessageDlg('Produto esta em branco !',mtWarning,[mbok],0);
     abort ;
  end ;

  if dbnf.text <> '' then
       nota := dbnf.Text  ;
  if combo_cliente.text <> '' then
       cli := combo_cliente.lookupvalue ;
  if wwDBLookupCombo1.text <> '' then
       rem := wwDBLookupCombo1.lookupvalue ;
  if combo_produto.text <> '' then
       prod := combo_produto.lookupvalue ;
  if combo_cliente_final.text <> '' then
       clif := combo_cliente_final.lookupvalue ;

  if (wwDBLookupCombo2.text <> '') then begin
     TPROD_ASTERISCO := copy(wwDBLookupCombo2.text,1,1);
     IF (TPROD_ASTERISCO <> '*') then
        TPROD := wwDBLookupCombo2.lookupvalue ;
  end ;

  IF wwDBEdit1.Text <> '' then
     LOTE := wwDBEdit1.Text ;

  case radiogroup1.itemindex of
    0 : Tipo := 1 ;
    1 : Tipo := 2 ;
    2 : Tipo := 3 ;  //ERA 1
  end ;

  case radiogroup3.itemindex of
    0 : Tipo_OS := 0 ;
    1 : Tipo_OS := 1 ;
  end ;

  VENCI :=  0.0 ;
  VENCF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     VENCI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     VENCF  := strtodate(Data2.text );

  BATCH  := 0.00 ;
  BATCHF := 0.00 ;
  if MaskEdit1.text <> '  /  /    ' then
     BATCH   := strtodate(MaskEdit1.text);
  if MaskEdit2.text <> '  /  /    ' then
     BATCHF  := strtodate(MaskEdit2.text);


  IF  (BATCH <> 0.00) or (BATCHF <> 0.00) or (LOTE <> '') then begin
      IF  PROD = '' then begin
          MessageDlg('Produto em branco !',mtWarning,[mbok],0);
          abort ;
      end ;
  end ;

         ////
         try
         Begin
           If dbnf.text <> '' then
              STP_CONSULTANF.ParamByName('@NF').Value  :=  dbnf.text
            else
              STP_CONSULTANF.ParamByName('@NF').Value  := 'VAZIO'   ;

          IF radiogroup1.itemindex = 2 then begin
               STP_CONSULTANF.ParamByName('@CLIN_ID').Value  :=   160  ;
           end else begin
               if combo_cliente.text <> '' then
                  STP_CONSULTANF.ParamByName('@CLIN_ID').Value  := combo_cliente.lookupvalue
               else
                  STP_CONSULTANF.ParamByName('@CLIN_ID').Value  :=   0  ;
           end ;


           if wwDBLookupCombo1.text <> '' then
              STP_CONSULTANF.ParamByName('@CLIN_REMET').Value    :=  wwDBLookupCombo1.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@CLIN_REMET').Value    :=   0  ;

           if combo_PRODUTO.text <> '' then
              STP_CONSULTANF.ParamByName('@PRO_ID').Value    :=  combo_PRODUTO.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@PRO_ID').Value    :=   0  ;

           if combo_cliente_final.text <> '' then
              STP_CONSULTANF.ParamByName('@CLIF_ID').Value    :=  combo_cliente_final.lookupvalue
           else
              STP_CONSULTANF.ParamByName('@CLIF_ID').Value    :=   0  ;



           if (wwDBLookupCombo2.text <> '') then begin
               TPROD_ASTERISCO := copy(wwDBLookupCombo2.text,1,1);
               if (TPROD_ASTERISCO <> '*') then
                  STP_CONSULTANF.ParamByName('@TPRO_ID').Value    :=  wwDBLookupCombo2.lookupvalue
               else
                  STP_CONSULTANF.ParamByName('@TPRO_ID').Value    :=   0  ;
           end else  STP_CONSULTANF.ParamByName('@TPRO_ID').Value    :=   0  ;

           STP_CONSULTANF.ParamByName('@TIPO_NF').Value    :=  Tipo  ;


            VENCI := 0.0 ;
            VENCF := 0.0 ;
            if Data1.text <> '  /  /    ' then begin
               VENCI  := strtodate(Data1.text );
               STP_CONSULTANF.ParamByName('@DATAI').Value :=  formatdatetime('YYYYMMDD',VENCI) ;
            end else STP_CONSULTANF.ParamByName('@DATAI').Value := 0.0 ;

            if Data2.text <> '  /  /    ' then begin
               VENCF  := strtodate(Data2.text );
               STP_CONSULTANF.ParamByName('@DATAF').Value  :=   formatdatetime('YYYYMMDD',VENCF) ;
            end else STP_CONSULTANF.ParamByName('@DATAF').Value  := 0.0 ;

            If Radiogroup2.itemindex = 0 then
               STP_CONSULTANF.ParamByName('@CALCPALLET').Value    :=  'N'
             else
               STP_CONSULTANF.ParamByName('@CALCPALLET').Value    :=  'S'  ;


            If wwDBEdit1.text <> '' then
               STP_CONSULTANF.ParamByName('@LOTE').Value  :=  wwDBEdit1.text
            else
               STP_CONSULTANF.ParamByName('@LOTE').Value  := 'VAZIO'   ;

             if MaskEdit1.text <> '  /  /    ' then begin
               BATCH  := strtodate(MaskEdit1.text );
               STP_CONSULTANF.ParamByName('@BATCH').Value :=  formatdatetime('YYYYMMDD',BATCH) ;
            end else STP_CONSULTANF.ParamByName('@BATCH').Value := 0.0 ;

             if MaskEdit2.text <> '  /  /    ' then begin
               BATCHF  := strtodate(MaskEdit2.text );
               STP_CONSULTANF.ParamByName('@BATCHF').Value :=  formatdatetime('YYYYMMDD',BATCHF) ;
            end else STP_CONSULTANF.ParamByName('@BATCHF').Value := 0.0 ;

            STP_CONSULTANF.ParamByName('@CH').Value :=  FMenu.SqlUsuariosCH.asstring ;

            STP_CONSULTANF.ParamByName('@TIPO').Value    :=  REME ;
            STP_CONSULTANF.ParamByName('@TIPO_OS').Value :=  TIPO_OS ;
            STP_CONSULTANF.Execproc;

          End
         except
           on e : exception do
           begin
             MessageDlg('Geração de Consulta de Nota Fiscal, com erro !' + #13 + e.Message ,mtInformation,[mbOk], 0);
             abort  ;
           end;
         end;
         ////


 Application.Createform(TFConsultaProduto, FConsultaProduto);


 //alteramos a consulta q resulta da procedure
 if (RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 2) then //se for saida, nao tomar em conta reentrega
 begin
     FConsultaProduto.Q_CONSUL.close;
     FConsultaProduto.Q_CONSUL.sql.Clear;
     FConsultaProduto.Q_CONSUL.sql.Add(
      '  Select A.*, C.MANI_DATA AS OS_DATA ' +
      '  from CONSULTA_PRODUTO A '+
      '  INNER JOIN NF B ON A.NFI_CODI = B.NFI_CODI INNER JOIN MANIFESTO C ON A.MANI_ID = C.MANI_ID '+
      '  where CH =  ' + FMenu.SqlUsuariosCH.AsString +   ' AND A.NFI_DEMI IS NOT NULL '  +
      '  and (case when b.NFI_ENTREGA is null  then ''1'' else b.NFI_ENTREGA end) <> ''R'' ' +
      ' and A.NFI_NUMERO NOT LIKE ''%/%'' ' 
     
     );
 end;


 if FFConsultaProduto.RadioGroup1.ItemIndex = 1 then begin
     FConsultaProduto.Q_CONSUL.close;
     FConsultaProduto.Q_CONSUL.sql.Clear;
     FConsultaProduto.Q_CONSUL.sql.Add(
      '  Select A.* , c.OS_DATA' +
      '  from CONSULTA_PRODUTO A '+
      '  INNER JOIN NF B ON A.NFI_CODI = B.NFI_CODI INNER JOIN OS C on A.OS_ID = C.OS_ID '+
      '  where CH =  ' + FMenu.SqlUsuariosCH.AsString 
     );
     case FFConsultaProduto.RadioGroup4.ItemIndex of
         0 : FConsultaProduto.Q_CONSUL.sql.Add(' AND B.TDOC_ID = 2 ');
         1 : FConsultaProduto.Q_CONSUL.sql.Add(' AND B.TDOC_ID = 4 ');
     end;
 end;
 FConsultaProduto.Q_CONSUL.Open;
 FConsultaProduto.ShowModal;
 FConsultaProduto.Release  ;

  cli := '' ;
  PROD := '' ;
  CODI := '';
  clif := '';
  nota := '';
  TPROD := '' ;
  LOTE  := ''  ;
  VENCI := 0.00 ;
  VENCF := 0.00 ;
  BATCH := 0.00 ;
end;

procedure TFFConsultaProduto.combo_clienteChange(Sender: TObject);
begin
 IF Combo_CLIENTE.text = '' then     begin
     Combo_PRODUTO.enabled := false   ;
     wwDBLookupCombo2.enabled := false   ;
     combo_produto.Text  := '';
     wwDBLookupCombo2.Text  := '';

     DBText3.visible := false ;
   end   else begin
     Combo_PRODUTO.enabled := true ;
     wwDBLookupCombo2.enabled := true   ;
      DBText3.visible := true ;
  end ;





end;

procedure TFFConsultaProduto.RadioGroup1Click(Sender: TObject);
begin
   { IF RadioGroup1.itemindex = 2 then BEGIN
       wwDBLookupCombo1.enabled := true  ;
       combo_cliente.enabled := false ;
       combo_cliente.text := '' ;
    END else begin
       wwDBLookupCombo1.enabled := false ;
       wwDBLookupCombo1.text := '' ;
       combo_cliente.enabled := true ;
    end ;   }   
    {IF RadioGroup1.itemindex = 3 then begin
       combo_cliente_final.enabled := false ;
        combo_cliente_final.text := '' ;
    end else
       combo_cliente_final.enabled := true ; }

    if RadioGroup1.ItemIndex = 1 then begin
       RadioGroup4.Visible := True;
       RadioGroup4.ItemIndex := 2;
    end
    else begin
       RadioGroup4.Visible := False;
       RadioGroup4.ItemIndex := 2;
    end;


end;

procedure TFFConsultaProduto.combo_produtoCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  IF combo_produto.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
end;

procedure TFFConsultaProduto.combo_produtoExit(Sender: TObject);
begin
   IF combo_produto.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
    (Sender as TwwDBlookupcombo).Color := Clwindow ;  
end;

procedure TFFConsultaProduto.combo_produtoEnter(Sender: TObject);
begin
   IF combo_produto.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
 (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaProduto.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaProduto.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaProduto.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaProduto.MaskEdit2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaProduto.CheckBox1Click(Sender: TObject);
begin

  IF CheckBox1.checked then begin
      ///IF RadioGroup1.itemindex = 2 then BEGIN
         wwDBLookupCombo1.enabled := true  ;
         combo_cliente.enabled := false ;
         combo_cliente.text := '' ;
      //END else begin
         //wwDBLookupCombo1.enabled := false ;
         //wwDBLookupCombo1.text := '' ;
         //combo_cliente.enabled := true ;
      ///end ;

       REME := 'S'
      //else
       //REME := '';
  end else begin
     wwDBLookupCombo1.enabled := false ;
     wwDBLookupCombo1.text := '' ;
     combo_cliente.enabled := true ;
     REME := '';
  end ;




end;
procedure TFFConsultaProduto.RadioGroup3Click(Sender: TObject);
begin
   IF RadioGroup3.itemindex = 0 then BEGIN
       MASKEDIT1.enabled := true  ;
       MASKEDIT2.enabled := true ;
       wwDBEdit1.enabled := true ;
       CheckBox1.enabled := true ;
    END else begin
       MASKEDIT1.enabled := false  ;
       MASKEDIT2.enabled := false ;
       wwDBEdit1.enabled := false ;
       CheckBox1.enabled := false ; 
    end ;
end;

end.

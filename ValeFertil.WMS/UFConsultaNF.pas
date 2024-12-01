unit UFConsultaNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Mask, StdCtrls, Buttons, ExtCtrls, wwdbedit, Db, DBTables,
  Wwquery, Wwdotdot, Wwdbcomb, Wwdatsrc, DBCtrls, wwstorep, Gauges, ADODB;

type
  TFFConsultaNF = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
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
    RadioGroup1: TRadioGroup;
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
    Panel1: TPanel;
    Label12: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label13: TLabel;
    MaskEdit3: TMaskEdit;
    Label14: TLabel;
    MaskEdit4: TMaskEdit;
    Label15: TLabel;
    wwDBEdit3: TwwDBEdit;
    Q_CONSUL: TwwQuery;
    Label17: TLabel;
    edtLoad: TwwDBEdit;
    STP_CONSULTANF2: TADOStoredProc;
    Label18: TLabel;
    edtEntregaIni: TMaskEdit;
    Label19: TLabel;
    edtEntregaFim: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SBT_VISU: TSpeedButton;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaNF: TFFConsultaNF;
tipo : integer;
cli :string;
rem :string;
nota: string;
prod : string  ;
TPROD : string  ;
clif : string;
CODI: STRING;
VENCI  : tdatetime;
VENCF  : tdatetime;
VENCI_2  : tdatetime;
VENCF_2  : tdatetime;

BATCH  : tdatetime;
BATCHF  : tdatetime;
LOTE : STRING;
TPROD_ASTERISCO : string ;
implementation

uses UConsultaNF, UMenu, UNF, UFConsultaNFGen
;

{$R *.DFM}

procedure TFFConsultaNF.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TFFConsultaNF.FormCreate(Sender: TObject);
begin
  Q_CLIFINAL.Open;
  //ShowMessage('Cliente final');
  Q_TPROD.open ;
  //ShowMessage('tipo produto');
  Q_PROD.OPEN;
  //ShowMessage('produto');
  Q_REM.open ;
  //ShowMessage('Remetente');
  Q_CLINBF.OPEN;
  //ShowMessage('Cliente NBF');
end;

procedure TFFConsultaNF.FormClose(Sender: TObject;
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

procedure TFFConsultaNF.combo_clienteEnter(Sender: TObject);
begin



      
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaNF.cboclientefinalEnter(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaNF.combo_clienteExit(Sender: TObject);
begin
 

(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaNF.cboclientefinalExit(Sender: TObject);
begin
(Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaNF.Data1Exit(Sender: TObject);
begin
(Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaNF.Data1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaNF.Data2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaNF.Data2Exit(Sender: TObject);
begin
(Sender as TMaskedit).Color := Clwindow;
end;

procedure TFFConsultaNF.dbnfEnter(Sender: TObject);
begin
(Sender as TwwDbEdit).Color := ClAqua;
end;

procedure TFFConsultaNF.dbnfExit(Sender: TObject);
begin
(Sender as TwwDBEdit).color := ClWindow;
end;

procedure TFFConsultaNF.cboprodutoEnter(Sender: TObject);
begin

(SENDER AS TWWDBLOOKUPCOMBO).COLOR := CLAQUA;
end;

procedure TFFConsultaNF.cboprodutoExit(Sender: TObject);
begin
   (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaNF.SBT_VISUClick(Sender: TObject);
begin
{

tipo de documento conforme tipo de nota fiscal

SAIDA = 1
ENTRADA = 2
ARMAZEM = 3
REMETENTE = 4
RETORNO SIMBOLICO = 14
CONTA DE TERCEIROS = 15
GENERICAS = 17
}




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
    0 : Tipo := 1 ;  {Saída}
    1 : Tipo := 2 ;
    2 : Tipo := 4 ;
    3 : Tipo := 14 ;
    4 : Tipo := 3 ;
    5 : Tipo := 15 ;
    7 : tipo := 23;
    8 : tipo := 24;
    9 : tipo := 25;
    10: tipo := 28;
  end ;

  VENCI :=  0.0 ;
  VENCF :=  0.0 ;
  if Data1.text <> '  /  /    ' then
     VENCI  := strtodate(Data1.text );
  if Data2.text <> '  /  /    ' then
     VENCF  := strtodate(Data2.text );

  VENCI_2 :=  0.0 ;
  VENCF_2 :=  0.0 ;
  if MaskEdit3.text <> '  /  /    ' then
     VENCI_2  := strtodate(MaskEdit3.text );
  if MaskEdit4.text <> '  /  /    ' then
     VENCF_2  := strtodate(MaskEdit4.text );


  BATCH := 0.00 ;
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


       IF (RadioGroup1.itemindex <> 6) then BEGIN
              ////
             try
             Begin
             


               If dbnf.text <> '' then
                  STP_CONSULTANF2.Parameters.ParamByName('@NF').Value  :=  dbnf.text
                else
                  STP_CONSULTANF2.Parameters.ParamByName('@NF').Value  := 'VAZIO'   ;

               if combo_cliente.text <> '' then
                  STP_CONSULTANF2.Parameters.ParamByName('@CLIN_ID').Value  := combo_cliente.lookupvalue
               else
                  STP_CONSULTANF2.Parameters.ParamByName('@CLIN_ID').Value  :=   0  ;

               if wwDBLookupCombo1.text <> '' then
                  STP_CONSULTANF2.Parameters.ParamByName('@CLIN_REMET').Value    :=  wwDBLookupCombo1.lookupvalue
               else
                  STP_CONSULTANF2.Parameters.ParamByName('@CLIN_REMET').Value    :=   0  ;

               if combo_PRODUTO.text <> '' then
                  STP_CONSULTANF2.Parameters.ParamByName('@PRO_ID').Value    :=  combo_PRODUTO.lookupvalue
               else
                  STP_CONSULTANF2.Parameters.ParamByName('@PRO_ID').Value    :=   0  ;

               if combo_cliente_final.text <> '' then
                  STP_CONSULTANF2.Parameters.ParamByName('@CLIF_ID').Value    :=  combo_cliente_final.lookupvalue
               else
                  STP_CONSULTANF2.Parameters.ParamByName('@CLIF_ID').Value    :=   0  ;

               if (wwDBLookupCombo2.text <> '') then begin
                   TPROD_ASTERISCO := copy(wwDBLookupCombo2.text,1,1);
                   if (TPROD_ASTERISCO <> '*') then
                      STP_CONSULTANF2.Parameters.ParamByName('@TPRO_ID').Value    :=  wwDBLookupCombo2.lookupvalue
                   else
                      STP_CONSULTANF2.Parameters.ParamByName('@TPRO_ID').Value    :=   0  ;
               end else  STP_CONSULTANF2.Parameters.ParamByName('@TPRO_ID').Value    :=   0  ;

               STP_CONSULTANF2.Parameters.ParamByName('@TIPO_NF').Value    :=  Tipo  ;

                VENCI := 0.0 ;
                VENCF := 0.0 ;
                if Data1.text <> '  /  /    ' then begin
                   VENCI  := strtodate(Data1.text );
                   STP_CONSULTANF2.Parameters.ParamByName('@DATAI').Value :=  formatdatetime('YYYYMMDD',VENCI) ;
                end else STP_CONSULTANF2.Parameters.ParamByName('@DATAI').Value := 0.0 ;

                if Data2.text <> '  /  /    ' then begin
                   VENCF  := strtodate(Data2.text );
                   STP_CONSULTANF2.Parameters.ParamByName('@DATAF').Value  :=   formatdatetime('YYYYMMDD',VENCF) ;
                end else STP_CONSULTANF2.Parameters.ParamByName('@DATAF').Value  := 0.0 ;



                //ADICIONA FILTRO DE DATA DE ENTREGA
                IF edtEntregaIni.Text <> '  /  /    ' then begin
                   STP_CONSULTANF2.Parameters.ParamByName('@ENTREGA_INI').Value := FormatDateTime('YYYYMMDD', StrToDate(edtEntregaIni.Text));
                end else STP_CONSULTANF2.Parameters.ParamByName('@ENTREGA_INI').Value := 0;

                //ADICIONA FILTRO DE DATA DE ENTREGA
                IF edtEntregaFim.Text <> '  /  /    ' then begin
                   STP_CONSULTANF2.Parameters.ParamByName('@ENTREGA_FIM').Value := FormatDateTime('YYYYMMDD', StrToDate(edtEntregaFim.Text));
                end else STP_CONSULTANF2.Parameters.ParamByName('@ENTREGA_FIM').Value := 0;





                If Radiogroup2.itemindex = 0 then
                   STP_CONSULTANF2.Parameters.ParamByName('@CALCPALLET').Value    :=  'N'
                 else
                   STP_CONSULTANF2.Parameters.ParamByName('@CALCPALLET').Value    :=  'S'  ;


                If wwDBEdit1.text <> '' then
                   STP_CONSULTANF2.Parameters.ParamByName('@LOTE').Value  :=  wwDBEdit1.text
                else
                   STP_CONSULTANF2.Parameters.ParamByName('@LOTE').Value  := 'VAZIO'   ;

                 if MaskEdit1.text <> '  /  /    ' then begin
                   BATCH  := strtodate(MaskEdit1.text );
                   STP_CONSULTANF2.Parameters.ParamByName('@BATCH').Value :=  formatdatetime('YYYYMMDD',BATCH) ;
                end else STP_CONSULTANF2.Parameters.ParamByName('@BATCH').Value := 0.0 ;

                 if MaskEdit2.text <> '  /  /    ' then begin
                   BATCHF  := strtodate(MaskEdit2.text );
                   STP_CONSULTANF2.Parameters.ParamByName('@BATCHF').Value :=  formatdatetime('YYYYMMDD',BATCHF) ;
                end else STP_CONSULTANF2.Parameters.ParamByName('@BATCHF').Value := 0.0 ;

                STP_CONSULTANF2.Parameters.ParamByName('@CH').Value :=  FMenu.SqlUsuariosCH.asstring ;

                IF edtLoad.Text = '' then
                        STP_CONSULTANF2.Parameters.ParamByName('@LOAD_IN').Value  := 'VAZIO'
                else
                        STP_CONSULTANF2.Parameters.ParamByName('@LOAD_IN').Value := edtLoad.Text;



                STP_CONSULTANF2.Execproc;





              End
            except
               begin
                 MessageDlg('Geração de Consulta de Nota Fiscal, com erro !',mtInformation,[mbOk], 0);
                 abort  ;
               end;
            end;
            ////
       end ;


                {Q_CONSUL.Close;
                Q_CONSUL.Params[0].AsInteger := FMenu.SqlUsuariosCH.AsInteger;
                Q_CONSUL.OPEN;

                IF Q_CONSUL.FieldByName('QTDE').AsInteger = 0 then
                begin
                    MessageBox(Self.Handle, 'Não existem notas fiscais nestes parâmetros!', 'Informação', MB_OK + MB_ICONINFORMATION);
                    Abort;
                end;  }

 IF (RadioGroup1.itemindex = 6) then BEGIN
     Application.Createform(TFConsultaNFGen,FConsultaNFGen);
     FConsultaNFGen.ShowModal;
     FConsultaNFGen.Release  ;
 end else begin
     Application.Createform(TFConsultaNF,FConsultaNF);
     FConsultaNF.ShowModal;
     FConsultaNF.Release  ;
 end ;




  cli := '' ;
  PROD := '' ;
  CODI := '';
  clif := '';
  nota := '';
  TPROD := '' ;
  LOTE  := ''  ;
  VENCI := 0.00 ;
  VENCF := 0.00 ;
  VENCI  := 0.00;
  VENCF  := 0.00;
  BATCH := 0.00 ;
end;

procedure TFFConsultaNF.combo_clienteChange(Sender: TObject);
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

procedure TFFConsultaNF.RadioGroup1Click(Sender: TObject);
begin
       Panel1.Visible := false ;


    if RadioGroup1.ItemIndex = 0 then begin
        edtEntregaIni.Text := '';
        edtEntregaFim.Text := '';
        edtEntregaIni.Enabled := True;
        edtEntregaFim.Enabled := True;
    end
    else
    begin
        edtEntregaIni.Text := '';
        edtEntregaFim.Text := '';
        edtEntregaIni.Enabled := False;
        edtEntregaFim.Enabled := False;
    end;
       
    IF RadioGroup1.itemindex = 2 then BEGIN     {remetente}
       wwDBLookupCombo1.enabled := true  ;
      //// wwDBLookupCombo1.text := '' ;
       combo_cliente.enabled := false ;
       combo_cliente.text := '' ;
       combo_cliente_final.enabled := true ;
       ////combo_cliente_final.text := '' ;
    END  ;

    IF (RadioGroup1.itemindex = 3) or (RadioGroup1.itemindex = 8) or (RadioGroup1.itemindex = 9) then begin  {ret simbolico}
       wwDBLookupCombo1.enabled := false ;
       wwDBLookupCombo1.text := '' ;
       combo_cliente_final.enabled := true ;
       ////combo_cliente_final.text := '' ;
       combo_cliente.enabled := True ;
       combo_cliente.text := '' ;
    end ;


   IF RadioGroup1.itemindex = 4 then BEGIN   {armazem}
       wwDBLookupCombo1.enabled := false ;
       wwDBLookupCombo1.text := '' ;
       combo_cliente_final.enabled := true ;
      /// combo_cliente_final.text := '' ;
       combo_cliente.enabled := false ;
       combo_cliente.text := '' ;
    END;

     IF RadioGroup1.itemindex = 5 then BEGIN   {conta ordem 3ºs}
       wwDBLookupCombo1.enabled := false ;
       wwDBLookupCombo1.text := '' ;
       combo_cliente_final.enabled := true ;
       ////combo_cliente_final.text := '' ;
       combo_cliente.enabled := false ;
       combo_cliente.text := '' ;
    END;

    IF (RadioGroup1.itemindex = 0)or
       (RadioGroup1.itemindex = 1)or (RadioGroup1.ItemIndex = 7) then BEGIN     {saida ou entrada}
       wwDBLookupCombo1.enabled := false  ;
       wwDBLookupCombo1.text := '' ;
       combo_cliente.enabled := true ;
       ///combo_cliente.text := '' ;
       combo_cliente_final.enabled := true ;
       ///combo_cliente_final.text := '' ;
    END  ;

    IF (RadioGroup1.itemindex = 6) then BEGIN     {Generica}
       Panel1.Visible := true ;
       Panel1.Left := 18 ;
       Panel1.Top := 170 ;
    END  ;



end;

procedure TFFConsultaNF.combo_produtoCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  IF combo_produto.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
end;

procedure TFFConsultaNF.combo_produtoExit(Sender: TObject);
begin
   IF combo_produto.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
    (Sender as TwwDBlookupcombo).Color := Clwindow ;  
end;

procedure TFFConsultaNF.combo_produtoEnter(Sender: TObject);
begin
   IF combo_produto.text = '' then
      PANEL12.visible := true else
      PANEL12.visible := false ;
 (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaNF.wwDBLookupCombo2Enter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaNF.wwDBLookupCombo2Exit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := Clwindow;
end;

procedure TFFConsultaNF.MaskEdit2Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaNF.MaskEdit2Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

end.

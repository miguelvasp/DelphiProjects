unit URelFluxoCaixaFilt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, Buttons, StdCtrls, DBTables,
  Wwquery, wwdblook, ExtCtrls, Mask, wwstorep, RzButton, RzPanel, RzRadGrp;

type
  TFRelFluxoCaixaFilt = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Panel1: TPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Q_MOED: TwwQuery;
    Q_MOEDMOE_SIGL: TStringField;
    Q_MOEDMOE_NOME: TStringField;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Q_BANC: TwwQuery;
    DS_BANC: TwwDataSource;
    Q_BANCBAN_NOME: TStringField;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NAGE: TStringField;
    Q_BANCBAN_ORDEM: TIntegerField;
    Q_BANCBAN_DATAT: TDateTimeField;
    Q_BANCBAN_SALDT: TFloatField;
    Edit1: TEdit;
    Panel3: TPanel;
    Label19: TLabel;
    MaskEdit1: TMaskEdit;
    Label20: TLabel;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    MaskEdit3: TMaskEdit;
    Label4: TLabel;
    MaskEdit4: TMaskEdit;
    Label5: TLabel;
    MaskEdit5: TMaskEdit;
    Label6: TLabel;
    MaskEdit6: TMaskEdit;
    Label7: TLabel;
    MaskEdit7: TMaskEdit;
    Label8: TLabel;
    MaskEdit8: TMaskEdit;
    Label9: TLabel;
    MaskEdit9: TMaskEdit;
    Label10: TLabel;
    MaskEdit10: TMaskEdit;
    Label11: TLabel;
    MaskEdit11: TMaskEdit;
    Label12: TLabel;
    MaskEdit12: TMaskEdit;
    Label13: TLabel;
    MaskEdit13: TMaskEdit;
    Label14: TLabel;
    MaskEdit14: TMaskEdit;
    Label15: TLabel;
    MaskEdit15: TMaskEdit;
    Label16: TLabel;
    MaskEdit16: TMaskEdit;
    Label17: TLabel;
    MaskEdit17: TMaskEdit;
    Label18: TLabel;
    MaskEdit18: TMaskEdit;
    Label21: TLabel;
    MaskEdit19: TMaskEdit;
    Label22: TLabel;
    MaskEdit20: TMaskEdit;
    Label23: TLabel;
    MaskEdit21: TMaskEdit;
    Label24: TLabel;
    MaskEdit22: TMaskEdit;
    Label25: TLabel;
    MaskEdit23: TMaskEdit;
    Label26: TLabel;
    MaskEdit24: TMaskEdit;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    STP_ATUASALD: TStoredProc;
    UPD_BANC: TUpdateSQL;
    Label27: TLabel;
    MaskEdit25: TMaskEdit;
    Label28: TLabel;
    MaskEdit26: TMaskEdit;
    STP_FLUXOCOMPLETO: TwwStoredProc;
    RadioGroup3: TRadioGroup;
    Q_AUX: TwwQuery;
    Q_BANCBAN_DATA: TDateTimeField;
    STP_CALCSALD: TwwStoredProc;
    wwDBGrid1IButton: TwwIButton;
    Panel4: TPanel;
    Label29: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_REFR: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SBT_CONS: TSpeedButton;
    SpeedButton4: TSpeedButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    SpeedButton5: TSpeedButton;
    spPCFC: TSpeedButton;
    spVis: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label31: TLabel;
    STP_AJUSTA: TwwStoredProc;
    STP_CALCSALD1: TwwStoredProc;
    ckCP: TCheckBox;
    ckCR: TCheckBox;
    Button1: TButton;
    STP_REALIZADO: TwwStoredProc;
    Label32: TLabel;
    MaskEdit27: TMaskEdit;
    Label33: TLabel;
    MaskEdit28: TMaskEdit;
    Label34: TLabel;
    MaskEdit29: TMaskEdit;
    Label35: TLabel;
    MaskEdit30: TMaskEdit;
    Label36: TLabel;
    MaskEdit31: TMaskEdit;
    Label37: TLabel;
    MaskEdit32: TMaskEdit;
    Label38: TLabel;
    MaskEdit33: TMaskEdit;
    Label39: TLabel;
    MaskEdit34: TMaskEdit;
    Label40: TLabel;
    MaskEdit35: TMaskEdit;
    Label41: TLabel;
    MaskEdit36: TMaskEdit;
    Label42: TLabel;
    MaskEdit37: TMaskEdit;
    Label43: TLabel;
    MaskEdit38: TMaskEdit;
    Label44: TLabel;
    MaskEdit39: TMaskEdit;
    Label45: TLabel;
    MaskEdit40: TMaskEdit;
    Label46: TLabel;
    MaskEdit41: TMaskEdit;
    Label47: TLabel;
    MaskEdit42: TMaskEdit;
    Label48: TLabel;
    MaskEdit43: TMaskEdit;
    Label49: TLabel;
    MaskEdit44: TMaskEdit;
    Label50: TLabel;
    MaskEdit45: TMaskEdit;
    Label51: TLabel;
    MaskEdit46: TMaskEdit;
    Label52: TLabel;
    MaskEdit47: TMaskEdit;
    Label53: TLabel;
    MaskEdit48: TMaskEdit;
    Label54: TLabel;
    MaskEdit49: TMaskEdit;
    Label55: TLabel;
    MaskEdit50: TMaskEdit;
    Label56: TLabel;
    MaskEdit51: TMaskEdit;
    Label57: TLabel;
    MaskEdit52: TMaskEdit;
    Label58: TLabel;
    MaskEdit53: TMaskEdit;
    Label59: TLabel;
    MaskEdit54: TMaskEdit;
    Label60: TLabel;
    MaskEdit55: TMaskEdit;
    Label61: TLabel;
    MaskEdit56: TMaskEdit;
    Label62: TLabel;
    MaskEdit57: TMaskEdit;
    Label63: TLabel;
    MaskEdit58: TMaskEdit;
    Label64: TLabel;
    MaskEdit59: TMaskEdit;
    Label65: TLabel;
    MaskEdit60: TMaskEdit;
    Label66: TLabel;
    MaskEdit61: TMaskEdit;
    Label67: TLabel;
    MaskEdit62: TMaskEdit;
    Label68: TLabel;
    MaskEdit63: TMaskEdit;
    MaskEdit64: TMaskEdit;
    Label69: TLabel;
    SpeedButton7: TSpeedButton;
    qrAux2: TwwQuery;
    qrLimpaTotais8: TwwQuery;
    qrLimpaTotais12: TwwQuery;
    STP_CALCSALD12: TwwStoredProc;
    GroupBox1: TGroupBox;
    edtPeriodo: TEdit;
    CheckBox1: TCheckBox;
    RzBitBtn1: TRzBitBtn;
    Label30: TLabel;
    Q_BANCSaldoAjus: TFloatField;
    qrBxAberto: TwwQuery;
    qrSaldoAjustado: TwwQuery;
    qrSaldoAjustadoBAN_CODI: TStringField;
    qrSaldoAjustadoDEBITOS: TFloatField;
    qrSaldoAjustadoCREDITOS: TFloatField;
    RzRadioGroup1: TRzRadioGroup;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
    procedure MaskEdit8Exit(Sender: TObject);
    procedure MaskEdit9Exit(Sender: TObject);
    procedure MaskEdit10Exit(Sender: TObject);
    procedure MaskEdit11Exit(Sender: TObject);
    procedure MaskEdit12Exit(Sender: TObject);
    procedure MaskEdit13Exit(Sender: TObject);
    procedure MaskEdit14Exit(Sender: TObject);
    procedure MaskEdit15Exit(Sender: TObject);
    procedure MaskEdit16Exit(Sender: TObject);
    procedure MaskEdit17Exit(Sender: TObject);
    procedure MaskEdit18Exit(Sender: TObject);
    procedure MaskEdit19Exit(Sender: TObject);
    procedure MaskEdit20Exit(Sender: TObject);
    procedure MaskEdit21Exit(Sender: TObject);
    procedure MaskEdit22Exit(Sender: TObject);
    procedure MaskEdit23Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure spVisClick(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MaskEdit24Exit(Sender: TObject);
    procedure MaskEdit27Exit(Sender: TObject);
    procedure MaskEdit28Exit(Sender: TObject);
    procedure MaskEdit29Exit(Sender: TObject);
    procedure MaskEdit30Exit(Sender: TObject);
    procedure MaskEdit31Exit(Sender: TObject);
    procedure MaskEdit32Exit(Sender: TObject);
    procedure MaskEdit33Exit(Sender: TObject);
    procedure MaskEdit34Exit(Sender: TObject);
    procedure MaskEdit35Exit(Sender: TObject);
    procedure MaskEdit36Exit(Sender: TObject);
    procedure MaskEdit37Exit(Sender: TObject);
    procedure MaskEdit38Exit(Sender: TObject);
    procedure MaskEdit39Exit(Sender: TObject);
    procedure MaskEdit40Exit(Sender: TObject);
    procedure MaskEdit41Exit(Sender: TObject);
    procedure MaskEdit42Exit(Sender: TObject);
    procedure MaskEdit43Exit(Sender: TObject);
    procedure MaskEdit44Exit(Sender: TObject);
    procedure MaskEdit45Exit(Sender: TObject);
    procedure MaskEdit46Exit(Sender: TObject);
    procedure MaskEdit47Exit(Sender: TObject);
    procedure MaskEdit48Exit(Sender: TObject);
    procedure MaskEdit49Exit(Sender: TObject);
    procedure MaskEdit50Exit(Sender: TObject);
    procedure MaskEdit51Exit(Sender: TObject);
    procedure MaskEdit52Exit(Sender: TObject);
    procedure MaskEdit53Exit(Sender: TObject);
    procedure MaskEdit54Exit(Sender: TObject);
    procedure MaskEdit55Exit(Sender: TObject);
    procedure MaskEdit56Exit(Sender: TObject);
    procedure MaskEdit57Exit(Sender: TObject);
    procedure MaskEdit58Exit(Sender: TObject);
    procedure MaskEdit59Exit(Sender: TObject);
    procedure MaskEdit60Exit(Sender: TObject);
    procedure MaskEdit61Exit(Sender: TObject);
    procedure MaskEdit63Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Q_BANCAfterPost(DataSet: TDataSet);
    procedure edtPeriodoKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPeriodoChange(Sender: TObject);
    procedure Q_BANCCalcFields(DataSet: TDataSet);
  private
    { Private declarations } procedure GeraFluxo(Sender: TObject);
  public
    
    CaixaInicial : real ;
  end;

var
  FRelFluxoCaixaFilt: TFRelFluxoCaixaFilt;
  SALDOANTERIOR : Real;
implementation

uses URelFluxoCaixaSimples, URelFluxoCaixaCompleto, URelFluxoCaixa,
  URelSaldo, U_Funcoes, CPPMENU, USeleEmpresa;

{$R *.DFM}

procedure TFRelFluxoCaixaFilt.wwDBGrid1DblClick(Sender: TObject);
begin
   Q_BANC.Edit ;
   if Q_BANCBAN_ORDEm.asinteger = 0 then
      Q_BANCBAN_ORDEm.asinteger := 1
   else Q_BANCBAN_ORDEm.asinteger := 0 ;
   Q_BANC.Post ;
end;                

procedure TFRelFluxoCaixaFilt.SpeedButton1Click(Sender: TObject);
var sql_update:string;
    Q_aux_update:TwwQuery;

    var data : TDateTime;

begin


   if RadioGroup1.ItemIndex = 0 then
   begin
       if MaskEdit25.Text <> '  /  /    '  then
       begin
           data := StrToDate(MaskEdit25.Text);
       end
       else
       begin
           MessageBox(Self.Handle, 'É necessário informar a data inicial para a pesquisa de saldo inicial', 'Erro', MB_OK);
           MaskEdit25.SetFocus;
           Abort;
       end;
   end
   else
   begin
       if MaskEdit1.Text <> '  /  /    '  then
       begin
           data := StrToDate(MaskEdit1.Text);
       end
       else
       begin
           MessageBox(Self.Handle, 'É necessário informar a data inicial para a pesquisa de saldo inicial', 'Erro', MB_OK);
           MaskEdit1.SetFocus;
           Abort;
       end;
   end;

   RadioGroup1.enabled := false ;
   RadioGroup2.enabled := false ;
   Panel1.enabled := false ;
   Panel3.enabled := false ;
   SALDOANTERIOR := 0;
   edit1.text := floattostr(SALDOANTERIOR);

   sql_update := 'update cpabanc set ban_ordem = null';

   Q_aux_update := TwwQuery.Create(self);
   Q_aux_update.DatabaseName := 'Financeiro';
   Q_aux_update.SessionName := 'Sec_Basefin';
   Q_aux_update.Close;
   Q_aux_update.sql.clear;
   Q_aux_update.SQL.add(sql_update);
   Q_aux_update.ExecSQL;

   FreeAndNil(Q_aux_update);

  Q_BANC.Open;
  While not Q_BANC.eof do begin
     // Calcula Saldo Atual
   try
   begin
      {  STP_CALCSALD.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
        STP_CALCSALD.ParamByName('@DataRef').Value := Q_BANCBAN_DATA.asstring  ;
        STP_CALCSALD.ParamByName('@Final').Value   := formatdatetime('YYYYMMDD',NOW) ;
        STP_CALCSALD.ExecProc; }

     STP_CALCSALD12.ParamByName('@Banco').Value   := Q_BANCBAN_CODI.asstring  ;
     if RadioGroup2.ItemIndex = 0 then
         STP_CALCSALD12.ParamByName('@DataRef').Value := datE + 1
     else
         STP_CALCSALD12.ParamByName('@DataRef').Value := data + 1;
     STP_CALCSALD12.ExecProc;
     SaldoAnterior  := SaldoAnterior + STP_CALCSALD12.ParamByName('@SaldoAnt').Value    ;

     Q_BANC.Edit;
     Q_BANCBAN_SALDT.Value := STP_CALCSALD12.ParamByName('@SaldoAnt').Value    ;
     Q_BANCBAN_DATAT.Value := Now;
     Q_BANC.Post;

   end;
   except
     begin
       MessageDlg('Problemas na Verificação dos dados !',mterror,[mbOk], 0);
       abort ;
     end;
   end;
   Q_BANC.next ;
  end ;
  Q_BANC.Close;
  Q_BANC.Open ;
  Panel2.Left := 6;
  Panel2.Top := 175;
  Panel2.visible := true ;
end;

procedure TFRelFluxoCaixaFilt.BitBtn15Click(Sender: TObject);
var Total : real ;
begin
  Total := 0 ;
  //v3.6 - miguel alterado o tipo de calculo de saldos



  Q_BANC.first ;
  while not Q_BANC.eof do begin
    if Q_BANCBAN_ORDEM.asinteger = 1 then
       if  Q_BANCBAN_SALDT.AsString = '' then
                Total := Total + 0
       else
           if RzRadioGroup1.ItemIndex = 0 then
               Total := Total + Q_BANCBAN_SALDT.asfloat
           else
               Total := Total + Q_BANCSaldoAjus.AsFloat;
    Q_BANC.next ;
  end ;


  {ESTE VALOR ESTA VINDO DO LOOP Q EXECUTA A PROCEDURE NA VARIAVEL SALDOANTERIOR
   MIGUEL VERSÃO 2.7 20/03/2007 }
   edit1.text := formatfloat('###########0.00',Total) ;
   Panel2.visible := false ;
   Q_BANC.Close ;

   RadioGroup1.enabled := true ;
   RadioGroup2.enabled := True ;
   Panel1.enabled := true  ;
   Panel3.enabled := true  ;
end;

procedure TFRelFluxoCaixaFilt.BitBtn16Click(Sender: TObject);
begin

   Panel2.visible := false ;
   RadioGroup1.enabled := true ;
   RadioGroup2.enabled := True ;
   Panel1.enabled := true  ;
   Panel3.enabled := true  ;

end;

procedure TFRelFluxoCaixaFilt.Edit1Exit(Sender: TObject);
var valor : real ;
begin
   if edit1.text = '' then edit1.text := '0' ;
   try
      Valor := strtofloat(edit1.text);
    except
    On E:EConvertError do
       begin
          MessageDlg('Separador Decimal Inválido !',MtError,[MbOk],0);
          edit1.setfocus ;
          abort ;
       end;
   end;
end;

procedure TFRelFluxoCaixaFilt.MaskEdit1Exit(Sender: TObject);
var
   AuxData : tdatetime ;
   I, J : Integer;
   iTag : Integer;
begin
//     if Maskedit1.text = '' then begin
//       MessageDlg('Data Inválida !',MtError,[MbOk],0);
//       Maskedit1.setfocus ;
//    end ;
//    MaskEdit2.text := Maskedit1.text ;


   iTag := (Sender as TMaskEdit).Tag;
   try
   AuxData := StrToDate((Sender as TMaskEdit).Text);
   except
     begin
         MessageBox(Self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR);
         (Sender as TMaskEdit).SetFocus;
         Abort;
     end;

   end;

   for i := 0 to pred(ComponentCount) do
   begin
        if Components[i] is TMaskEdit then
        begin
             if TMaskEdit(Components[i]).Tag > iTag then
             begin
                  if  TMaskEdit(Components[i]).Tag mod 2 <> 0 then
                        AuxData := AuxData + 1;
                  if  TMaskEdit(Components[i]).Tag mod 2 = 0 then
                  BEGIN
                        if DayOfWeek(AuxData) = 1 then
                           AuxData := AuxData + 1;
                        if DayOfWeek(AuxData) = 7 then
                           AuxData := AuxData + 2;
                  END           ;


                  TMaskEdit(Components[i]).Text := formatdatetime('DD/MM/YYYY',AuxData);
             end;
        end;
   end;






    {
    AuxData := strtodate(Maskedit2.text ) + 1 ;
    MaskEdit3.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit4.text := Maskedit3.text ;

    AuxData := strtodate(Maskedit4.text ) + 1 ;
    MaskEdit5.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit6.text := Maskedit5.text ;

    AuxData := strtodate(Maskedit6.text ) + 1 ;
    MaskEdit7.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

    //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
                      }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit2Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit2.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit2.setfocus ;
    end ;

    AuxData := strtodate(Maskedit2.text ) + 1 ;
    MaskEdit3.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit4.text := Maskedit3.text ;

    AuxData := strtodate(Maskedit4.text ) + 1 ;
    MaskEdit5.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit6.text := Maskedit5.text ;

    AuxData := strtodate(Maskedit6.text ) + 1 ;
    MaskEdit7.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit3Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit3.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit3.setfocus ;
    end ;

    MaskEdit4.text := Maskedit3.text ;

    AuxData := strtodate(Maskedit4.text ) + 1 ;
    MaskEdit5.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit6.text := Maskedit5.text ;

    AuxData := strtodate(Maskedit6.text ) + 1 ;
    MaskEdit7.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit4Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit4.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit4.setfocus ;
    end ;

    AuxData := strtodate(Maskedit4.text ) + 1 ;
    MaskEdit5.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit6.text := Maskedit5.text ;

    AuxData := strtodate(Maskedit6.text ) + 1 ;
    MaskEdit7.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit5Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit5.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit5.setfocus ;
    end ;

    MaskEdit6.text := Maskedit5.text ;

    AuxData := strtodate(Maskedit6.text ) + 1 ;
    MaskEdit7.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;
    
    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit6Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit6.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit6.setfocus ;
    end ;

    AuxData := strtodate(Maskedit6.text ) + 1 ;
    MaskEdit7.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ; }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit7Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit7.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit7.setfocus ;
    end ;

    MaskEdit8.text := Maskedit7.text ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ; }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit8Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit8.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit8.setfocus ;
    end ;

    AuxData := strtodate(Maskedit8.text ) + 1 ;
    MaskEdit9.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;
    

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit9Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit9.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit9.setfocus ;
    end ;

    MaskEdit10.text := Maskedit9.text ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;



 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;    }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit10Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit10.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit10.setfocus ;
    end ;

    AuxData := strtodate(Maskedit10.text ) + 1 ;
    MaskEdit11.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;    }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit11Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit11.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit11.setfocus ;
    end ;

    MaskEdit12.text := Maskedit11.text ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }
    

end;

procedure TFRelFluxoCaixaFilt.MaskEdit12Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit12.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit12.setfocus ;
    end ;

    AuxData := strtodate(Maskedit12.text ) + 1 ;
    MaskEdit13.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
    
        }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit13Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit13.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit13.setfocus ;
    end ;
    MaskEdit14.text := Maskedit13.text ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ; }
    

end;

procedure TFRelFluxoCaixaFilt.MaskEdit14Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit14.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit14.setfocus ;
    end ;

    AuxData := strtodate(Maskedit14.text ) + 1 ;
    MaskEdit15.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
                                }


end;

procedure TFRelFluxoCaixaFilt.MaskEdit15Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit15.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit15.setfocus ;
    end ;
    MaskEdit16.text := Maskedit15.text ;

    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;}
    

end;

procedure TFRelFluxoCaixaFilt.MaskEdit16Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit16.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit16.setfocus ;
    end ;
    AuxData := strtodate(Maskedit16.text ) + 1 ;
    MaskEdit17.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;


    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
    
                       }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit17Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit17.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit17.setfocus ;
    end ;
    MaskEdit18.text := Maskedit17.text ;

    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;


    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
    
                                }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit18Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit18.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit18.setfocus ;
    end ;
    AuxData := strtodate(Maskedit18.text ) + 1 ;
    MaskEdit19.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
            }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit19Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit19.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit19.setfocus ;
    end ;
    MaskEdit20.text := Maskedit19.text ;

    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
                }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit20Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
   { if Maskedit20.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit20.setfocus ;
    end ;
    AuxData := strtodate(Maskedit20.text ) + 1 ;
    MaskEdit21.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
    
           }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit21Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit21.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit21.setfocus ;
    end ;
    MaskEdit22.text := Maskedit21.text ;

    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;


 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
            }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit22Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit22.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit22.setfocus ;
    end ;
    AuxData := strtodate(Maskedit22.text ) + 1 ;
    MaskEdit23.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
    
             }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit23Exit(Sender: TObject);
var AuxData : tdatetime ;
begin
    {if Maskedit23.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit23.setfocus ;
    end ;
    MaskEdit24.text := Maskedit23.text ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
    
        }

end;

procedure TFRelFluxoCaixaFilt.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure TFRelFluxoCaixaFilt.RadioGroup1Click(Sender: TObject);
begin
   if (radioGroup1.itemindex = 1) or (radioGroup1.itemindex = 2) then begin
      RadioGroup2.visible := true ;
      RadioGroup3.visible := true ;
      GroupBox1.Visible := True;
      label27.visible := false;
      label28.visible := false;
      MaskEdit25.visible := false;
      MaskEdit26.visible := false;
      spPCFC.Enabled := true;


    if Radiogroup3.ItemIndex = 0 then begin
        Label17.visible := false ;
        Maskedit17.visible := false ;
        Label18.visible := false ;
        Maskedit18.visible := false ;

        Maskedit19.visible := false ;
        Maskedit20.visible := false ;

        Label21.visible := false ;
        Maskedit21.visible := false ;
        Label22.visible := false ;
        Maskedit22.visible := false ;

        Label23.visible := false ;
        Maskedit23.visible := false ;
        Label24.visible := false ;
        Maskedit24.visible := false ;
        Label25.visible := false  ;
        Label26.visible := false  ;


        Panel3.visible := true ;

    end else  begin

        Label17.visible := true ;
        Maskedit17.visible := true ;
        Label18.visible := true ;
        Maskedit18.visible := true ;

        Maskedit19.visible := true ;
        Maskedit20.visible := true ;

        Label21.visible := true ;
        Maskedit21.visible := true ;
        Label22.visible := true ;
        Maskedit22.visible := true ;

        Label23.visible := true ;
        Maskedit23.visible := true ;
        Label24.visible := true ;
        Maskedit24.visible := true ;

        Label25.visible := true ;
        Label26.visible := true ;

        Panel3.visible := true ;

    end ;

   end else begin
       RadioGroup2.visible := false ;
       RadioGroup3.visible := false ;
       GroupBox1.Visible := False;
       Panel3.visible := False ;
       Label27.visible:= TRUE ;
       Label28.visible:= TRUE ;
       maskedit25.visible := true ;
       maskedit26.visible := true ;
       spPCFC.enabled := false;

   end ;

end;

procedure TFRelFluxoCaixaFilt.spVisClick(Sender: TObject);
Begin

  if CheckBox1.Checked then
  begin
      if (StrToInt(edtPeriodo.Text) <= 0) or (StrToInt(edtPeriodo.Text) > 31) or (edtPeriodo.Text = '') then
      begin
         MessageBox(Self.Handle, 'Informe um período valido!', 'Erro', MB_OK + MB_ICONERROR)  ;
         edtPeriodo.SetFocus;
         Abort;
      end;
  end;

  if wwDBLookupCombo2.Text = '' then
        wwDBLookupCombo2.LookupValue := '';


  GeraFluxo(spPCFC);
  Application.Createform(TFFluxo, FFluxo);
  FFluxo.ShowModal;
  ffluxo.Release;

  ckCP.Checked := False;
  ckCR.Checked := False;


end;

procedure TFRelFluxoCaixaFilt.RadioGroup3Click(Sender: TObject);
var i : Integer;
    selecao : Integer;
begin
  case RadioGroup3.ItemIndex of
  0 : selecao := 16;
  1 : selecao := 24;
  2 : selecao := 62;
  end;


  if edtPeriodo.Text <> '' then
  begin
      selecao := StrToInt(edtPeriodo.Text) * 2;
  end;

      for i := 0 to pred(ComponentCount) do
      begin
           if (Components[i] is TMaskEdit) then
           begin
               if TMaskEdit(Components[i]).Tag <= selecao then
                  TMaskEdit(Components[i]).Visible := True
               else
                  TMaskEdit(Components[i]).Visible := False;
           end;

           if (Components[i] is TLabel) then
           begin
               if TLabel(Components[i]).Tag <= selecao then
                  TLabel(Components[i]).Visible := True
               else
                  TLabel(Components[i]).Visible := False;
           end;
      end;



    {if Radiogroup3.ItemIndex = 0 then begin
        Label17.visible := false ;
        Maskedit17.visible := false ;
        Label18.visible := false ;
        Maskedit18.visible := false ;

        Maskedit19.visible := false ;
        Maskedit20.visible := false ;

        Label21.visible := false ;
        Maskedit21.visible := false ;
        Label22.visible := false ;
        Maskedit22.visible := false ;

        Label23.visible := false ;
        Maskedit23.visible := false ;
        Label24.visible := false ;
        Maskedit24.visible := false ;
        Label25.visible := false  ;
        Label26.visible := false  ;


        Panel3.visible := true ;

    end else  begin

        Label17.visible := true ;
        Maskedit17.visible := true ;
        Label18.visible := true ;
        Maskedit18.visible := true ;

        Maskedit19.visible := true ;
        Maskedit20.visible := true ;

        Label21.visible := true ;
        Maskedit21.visible := true ;
        Label22.visible := true ;
        Maskedit22.visible := true ;

        Label23.visible := true ;
        Maskedit23.visible := true ;
        Label24.visible := true ;
        Maskedit24.visible := true ;

        Label25.visible := true ;
        Label26.visible := true ;

        Panel3.visible := true ;

    end ; }

    MaskEdit25.Visible := False;
    MaskEdit26.Visible := False;
    Label27.Visible := False;
    Label28.Visible := False;
    Label1.Visible := False;
end;

procedure TFRelFluxoCaixaFilt.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
        key := #0;
        perform(WM_nextdlgctl,0,0);
   end;
end;

procedure TFRelFluxoCaixaFilt.FormCreate(Sender: TObject);
begin

    FMenu.LimpaEmpresas;
    Q_EMP.OPEN;

end;

procedure TFRelFluxoCaixaFilt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FMenu.LimpaEmpresas;

  FMenu.chkFluxoAberto.Checked := False;
        Q_EMP.CLOSE;
end;

procedure TFRelFluxoCaixaFilt.SpeedButton5Click(Sender: TObject);
begin
   Application.Createform(TFRelSaldo, FRelSaldo);
   FRelSaldo.QuickRep1.Preview;
   FRelSaldo.Release;

end;

procedure TFRelFluxoCaixaFilt.SpeedButton6Click(Sender: TObject);
VAR I : INTEGER;
begin

      FOR I := 0 TO PRED(ComponentCount) DO
      BEGIN
           if (Components[i] is TMaskEdit) then
                TMaskEdit(Components[i]).Text := '';

           if (Components[i] is TEdit) then
                TEdit(Components[i]).Text := '';
           if (Components[i] is TwwDBLookupCombo) then
           begin
                TwwDBLookupCombo(Components[i]).Text := '';
                TwwDBLookupCombo(Components[i]).LookupValue := '';
           end;
      END;
      {
      MaskEdit1.Text := '';
      MaskEdit2.Text := '';
      MaskEdit3.Text := '';
      MaskEdit4.Text := '';
      MaskEdit5.Text := '';
      MaskEdit6.Text := '';
      MaskEdit7.Text := '';
      MaskEdit8.Text := '';
      MaskEdit9.Text := '';
      MaskEdit10.Text := '';
      MaskEdit11.Text := '';
      MaskEdit12.Text := '';
      MaskEdit13.Text := '';
      MaskEdit14.Text := '';
      MaskEdit15.Text := '';
      MaskEdit16.Text := '';
      MaskEdit17.Text := '';
      MaskEdit18.Text := '';
      MaskEdit19.Text := '';
      MaskEdit20.Text := '';
      MaskEdit21.Text := '';
      MaskEdit22.Text := '';
      MaskEdit23.Text := '';
      MaskEdit24.Text := '';
      MaskEdit25.Text := '';
      MaskEdit26.Text := '';
      wwDBLookupCombo2.Text:= '';
      wwDBLookupCombo2.LookupValue:= '';
      Edit1.Text := '0';    }

end;

procedure TFRelFluxoCaixaFilt.Button1Click(Sender: TObject);
var i, numero : Integer;
    Data1 : string ;
    Data2 : string ;
    caixaf : Double;
begin
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add(' delete fluxo ' ) ;
      Q_AUX.ExecSql ;

   if (radiogroup1.itemindex = 1) and (radiogroup3.ItemIndex = 0) then
   begin
         if (maskedit1.text = '  /  /    ') or (maskedit2.text = '  /  /    ') or
           (maskedit3.text = '  /  /    ') or (maskedit4.text = '  /  /    ') or
           (maskedit5.text = '  /  /    ') or (maskedit6.text = '  /  /    ') or
           (maskedit7.text = '  /  /    ') or (maskedit8.text = '  /  /    ') or
           (maskedit9.text = '  /  /    ') or (maskedit10.text = '  /  /    ') or
           (maskedit11.text = '  /  /    ') or (maskedit12.text = '  /  /    ') or
           (maskedit13.text = '  /  /    ') or (maskedit14.text = '  /  /    ') or
           (maskedit15.text = '  /  /    ') or (maskedit16.text = '  /  /    ')
        then
        begin
                MessageDlg('Há período(s) incompleto(s).', mtinformation,
                [mbok], 0);
                abort;
        end;
   end;

   if (radiogroup1.itemindex = 1) and (radiogroup3.ItemIndex = 1) then
   begin
        if (maskedit1.text = '  /  /    ') or (maskedit2.text = '  /  /    ') or
           (maskedit3.text = '  /  /    ') or (maskedit4.text = '  /  /    ') or
           (maskedit5.text = '  /  /    ') or (maskedit6.text = '  /  /    ') or
           (maskedit7.text = '  /  /    ') or (maskedit8.text = '  /  /    ') or
           (maskedit9.text = '  /  /    ') or (maskedit10.text = '  /  /    ') or
           (maskedit11.text = '  /  /    ') or (maskedit12.text = '  /  /    ') or
           (maskedit13.text = '  /  /    ') or (maskedit14.text = '  /  /    ') or
           (maskedit15.text = '  /  /    ') or (maskedit16.text = '  /  /    ') or
           (maskedit17.text = '  /  /    ') or (maskedit18.text = '  /  /    ') or
           (maskedit19.text = '  /  /    ') or (maskedit20.text = '  /  /    ') or
           (maskedit21.text = '  /  /    ') or (maskedit22.text = '  /  /    ') or
           (maskedit23.text = '  /  /    ') or (maskedit24.text = '  /  /    ') then
        begin
                MessageDlg('Há período(s) incompleto(s).', mtinformation,
                [mbok], 0);
                abort;
        end;
   end;

      CaixaInicial := StrToFloat(Edit1.Text) ;

      I:= 1 ;
      if radiogroup3.itemindex = 0 then numero := 8
      else numero := 12 ;
      while I <= Numero do begin
           if I = 1 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit1.text ));
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit2.text ) );
           end ;
           if I = 2 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit3.text ))  ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit4.text ) ) ;
           end ;
           if I = 3 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit5.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit6.text ) );
           end ;
           if I = 4 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit7.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit8.text ) );
           end ;
           if I = 5 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit9.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit10.text ) );
           end ;
           if I = 6 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit11.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit12.text ) );
           end ;
           if I = 7 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit13.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit14.text ) );
           end ;
           if I = 8 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit15.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit16.text ) );
           end ;
           if I = 9 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit17.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit18.text ) );
           end ;
           if I = 10 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit19.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit20.text ) );
           end ;
           if I = 11 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit21.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit22.text ) );
           end ;
           if I = 12 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit23.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit24.text ) );
           end ;


      TRY
         STP_REALIZADO.Params[0].AsString := Data1;
         STP_REALIZADO.Params[1].AsString := Data2;
         STP_REALIZADO.Params[2].AsString := IntToStr(i);
         STP_REALIZADO.Params[3].AsFloat := CaixaInicial;
         if i > 8 then
                STP_REALIZADO.Params[4].AsString := '2'
         else
                STP_REALIZADO.Params[4].AsString := '1' ;
        

         STP_REALIZADO.ExecProc;

         CaixaInicial := STP_REALIZADO.parambyname('@CAIXAF').AsFloat;

         Inc(I);
      except
              begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
      end;

      end;




              Application.Createform(TFRelFluxoCaixaCompleto, FRelFluxoCaixaCompleto);
              FRelFluxoCaixaCompleto.fluxoCaixa.Preview;
              FRelFluxoCaixaCompleto.close ;
              FRelFluxoCaixaCompleto.Release;
end;

procedure TFRelFluxoCaixaFilt.MaskEdit24Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit24.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit24.setfocus ;
    end ;

 //=============================================
    AuxData := strtodate(Maskedit24.text ) + 1 ;
    MaskEdit27.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;     }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit27Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit27.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit27.setfocus ;
    end ;
 //=============================================

    MaskEdit28.text := Maskedit27.text ;

    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit28Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit28.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit28.setfocus ;
    end ;

 //=============================================


    AuxData := strtodate(Maskedit28.text ) + 1 ;
    MaskEdit29.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit30.text := Maskedit29.text ;

    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit29Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit29.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit29.setfocus ;
    end ;
    MaskEdit30.text := Maskedit29.text ;



    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit30Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit30.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit30.setfocus ;
    end ;


    AuxData := strtodate(Maskedit30.text ) + 1 ;
    MaskEdit31.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit32.text := Maskedit31.text ;

    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }


end;

procedure TFRelFluxoCaixaFilt.MaskEdit31Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit31.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit31.setfocus ;
    end ;
    MaskEdit32.text := Maskedit31.text ;


    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ; }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit32Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit32.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit32.setfocus ;
    end ;


    AuxData := strtodate(Maskedit32.text ) + 1 ;
    MaskEdit33.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit34.text := Maskedit33.text ;

    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
                                        }



    
end;

procedure TFRelFluxoCaixaFilt.MaskEdit33Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit33.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit33.setfocus ;
    end ;
    MaskEdit34.text := Maskedit33.text ;


    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;
                                          }


end;

procedure TFRelFluxoCaixaFilt.MaskEdit34Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit34.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit34.setfocus ;
    end ;


    AuxData := strtodate(Maskedit34.text ) + 1 ;
    MaskEdit35.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit36.text := Maskedit35.text ;

    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit35Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit35.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit35.setfocus ;
    end ;
    MaskEdit36.text := Maskedit35.text ;



    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;       }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit36Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit36.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit36.setfocus ;
    end ;


    AuxData := strtodate(Maskedit36.text ) + 1 ;
    MaskEdit37.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit38.text := Maskedit37.text ;

    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit37Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit37.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit37.setfocus ;
    end ;
    MaskEdit38.text := Maskedit37.text ;



    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit38Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit38.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit38.setfocus ;
    end ;


    AuxData := strtodate(Maskedit38.text ) + 1 ;
    MaskEdit39.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit39Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit39.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit39.setfocus ;
    end ;
    MaskEdit40.text := Maskedit39.text ;

    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;     }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit40Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit40.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit40.setfocus ;
    end ;


    AuxData := strtodate(Maskedit40.text ) + 1 ;
    MaskEdit41.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit42.text := Maskedit41.text ;
                                         //========
    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ; }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit41Exit(Sender: TObject);
var AuxData :tdatetime;
begin
  {  if Maskedit41.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit41.setfocus ;
    end ;
    MaskEdit42.text := Maskedit41.text ;


    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit42Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit42.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit42.setfocus ;
    end ;


    AuxData := strtodate(Maskedit42.text ) + 1 ;
    MaskEdit43.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit44.text := Maskedit43.text ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;    }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit43Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit43.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit43.setfocus ;
    end ;
    MaskEdit44.text := Maskedit43.text ;


    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;     }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit44Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit44.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit44.setfocus ;
    end ;

    AuxData := strtodate(Maskedit44.text ) + 1 ;
    MaskEdit45.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit46.text := Maskedit45.text ;

    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit45Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit45.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit45.setfocus ;
    end ;
    MaskEdit46.text := Maskedit45.text ;



    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit46Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit46.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit46.setfocus ;
    end ;


    AuxData := strtodate(Maskedit46.text ) + 1 ;
    MaskEdit47.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit48.text := Maskedit47.text ;

    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;       }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit47Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit47.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit47.setfocus ;
    end ;
    MaskEdit48.text := Maskedit47.text ;


    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit48Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit48.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit48.setfocus ;
    end ;


    AuxData := strtodate(Maskedit48.text ) + 1 ;
    MaskEdit49.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit50.text := Maskedit49.text ;

    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;        }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit49Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit49.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit49.setfocus ;
    end ;
    MaskEdit50.text := Maskedit49.text ;


    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit50Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit50.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit50.setfocus ;
    end ;


    AuxData := strtodate(Maskedit50.text ) + 1 ;
    MaskEdit51.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit52.text := Maskedit51.text ;

    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit51Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit51.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit51.setfocus ;
    end ;
    MaskEdit52.text := Maskedit51.text ;



    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit52Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit52.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit52.setfocus ;
    end ;


    AuxData := strtodate(Maskedit52.text ) + 1 ;
    MaskEdit53.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit54.text := Maskedit53.text ;

    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;    }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit53Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit53.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit53.setfocus ;
    end ;
    MaskEdit54.text := Maskedit53.text ;



    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit54Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit54.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit54.setfocus ;
    end ;


    AuxData := strtodate(Maskedit54.text ) + 1 ;
    MaskEdit55.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit56.text := Maskedit55.text ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit55Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit55.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit55.setfocus ;
    end ;
    MaskEdit56.text := Maskedit55.text ;



    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;     }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit56Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit56.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit56.setfocus ;
    end ;

    AuxData := strtodate(Maskedit56.text ) + 1 ;
    MaskEdit57.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit58.text := Maskedit57.text ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit57Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit57.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit57.setfocus ;
    end ;
    MaskEdit58.text := Maskedit57.text ;



    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit58Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit58.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit58.setfocus ;
    end ;

    AuxData := strtodate(Maskedit58.text ) + 1 ;
    MaskEdit59.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit60.text := Maskedit59.text ;

    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ; }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit59Exit(Sender: TObject);
var AuxData :tdatetime;
begin
    {if Maskedit59.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit59.setfocus ;
    end ;
    MaskEdit60.text := Maskedit59.text ;



    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;  }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit60Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit60.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit60.setfocus ;
    end ;


    AuxData := strtodate(Maskedit60.text ) + 1 ;
    MaskEdit61.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;   }

end;

procedure TFRelFluxoCaixaFilt.MaskEdit61Exit(Sender: TObject);
var AuxData :tdatetime;
begin
   { if Maskedit61.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit61.setfocus ;
    end ;
    MaskEdit62.text := Maskedit61.text ;

    AuxData := strtodate(Maskedit62.text ) + 1 ;
    MaskEdit63.text := formatdatetime('DD/MM/YYYY',AuxData) ;
    MaskEdit64.text := Maskedit63.text ;    }
end;

procedure TFRelFluxoCaixaFilt.MaskEdit63Exit(Sender: TObject);
begin
   { if Maskedit63.text = '' then begin
       MessageDlg('Data Inválida !',MtError,[MbOk],0);
       Maskedit63.setfocus ;
    end ;
    MaskEdit64.text := Maskedit63.text ;    }
end;

procedure TFRelFluxoCaixaFilt.SpeedButton7Click(Sender: TObject);
begin



   if radiogroup1.itemindex = 0 then begin
      // simplificado
      Application.Createform(TFRelFluxoCaixaSimples, FRelFluxoCaixaSimples);
      FRelFluxoCaixaSimples.fluxoCaixa.Preview;
      FRelFluxoCaixaSimples.close ;
      FRelFluxoCaixaSimples.Release;

   end else begin

      if CheckBox1.Checked then
      begin
          if (StrToInt(edtPeriodo.Text) <= 0) or (StrToInt(edtPeriodo.Text) > 31) or (edtPeriodo.Text = '') then
          begin
             MessageBox(Self.Handle, 'Informe um período valido!', 'Erro', MB_OK + MB_ICONERROR)  ;
             edtPeriodo.SetFocus;
             Abort;
          end;
      end;

      GeraFluxo(SpeedButton7);
      Application.Createform(TFRelFluxoCaixaCompleto, FRelFluxoCaixaCompleto);
      FRelFluxoCaixaCompleto.fluxoCaixa.Preview;
      FRelFluxoCaixaCompleto.close ;
      FRelFluxoCaixaCompleto.Release;
  end;

    ckCP.Checked := False;
  ckCR.Checked := False;
end;

procedure TFRelFluxoCaixaFilt.GeraFluxo(Sender: TObject);
var I, J : integer ;
    StrComando : string ;
    StrComandoI :String;
    StrComandoF :String;
    Data1 : string ;
    Data2 : string ;
    Numero : integer ;
    dt_valida : tdatetime;
Begin



   if edtPeriodo.Text = '' then
   begin
      MessageBox(Self.Handle, 'Informe um período de pesquisa.', 'Informação', MB_OK + MB_ICONINFORMATION)  ;
      edtPeriodo.SetFocus;
      Abort;
   end;



   if strtoint(edtPeriodo.Text) < 8 then
   begin
      MessageBox(Self.Handle, 'A quantidade mínima de períodos a consultar é de 8.', 'Informação', MB_OK + MB_ICONINFORMATION)  ;
      edtPeriodo.SetFocus;
      Abort;
   end;


//VERIFICA SE A DATA É VALIDA
// substituição do codigo para verificar se tem campos em branco - miguel
TRY
   if  (radiogroup1.itemindex <> 0) then
   begin
       for j := 0 to pred(ComponentCount) do
       begin
            if Components[j] is TMaskEdit then
                if TMaskEdit(Components[j]).Tag <> 0 then
                        if TMaskEdit(Components[j]).Text = '  /  /    ' then
                        begin
                              MessageDlg('Há período(s) incompleto(s).', mtinformation,
                                         [mbok], 0);
                              abort;
                        end
                        else
                        begin
                            dt_valida := StrToDate(MaskEdit1.Text);
                        end;
       end;
   end;
EXCEPT
   messagebox(self.Handle, 'Data inválida!', 'Erro', MB_OK + MB_ICONERROR);
   abort;
END;








  {Rotina obsolta e desnecessária
   if (radiogroup1.itemindex = 1) and (radiogroup3.ItemIndex = 0) then
   begin
        if (maskedit1.text = '  /  /    ') or (maskedit2.text = '  /  /    ') or
           (maskedit3.text = '  /  /    ') or (maskedit4.text = '  /  /    ') or
           (maskedit5.text = '  /  /    ') or (maskedit6.text = '  /  /    ') or
           (maskedit7.text = '  /  /    ') or (maskedit8.text = '  /  /    ') or
           (maskedit9.text = '  /  /    ') or (maskedit10.text = '  /  /    ') or
           (maskedit11.text = '  /  /    ') or (maskedit12.text = '  /  /    ') or
           (maskedit13.text = '  /  /    ') or (maskedit14.text = '  /  /    ') or
           (maskedit15.text = '  /  /    ') or (maskedit16.text = '  /  /    ') then
        begin
                MessageDlg('Há período(s) incompleto(s).', mtinformation,
                [mbok], 0);
                abort;
        end;
   end;

   if (radiogroup1.itemindex = 1) and (radiogroup3.ItemIndex = 1) then
   begin
        if (maskedit1.text = '  /  /    ') or (maskedit2.text = '  /  /    ') or
           (maskedit3.text = '  /  /    ') or (maskedit4.text = '  /  /    ') or
           (maskedit5.text = '  /  /    ') or (maskedit6.text = '  /  /    ') or
           (maskedit7.text = '  /  /    ') or (maskedit8.text = '  /  /    ') or
           (maskedit9.text = '  /  /    ') or (maskedit10.text = '  /  /    ') or
           (maskedit11.text = '  /  /    ') or (maskedit12.text = '  /  /    ') or
           (maskedit13.text = '  /  /    ') or (maskedit14.text = '  /  /    ') or
           (maskedit15.text = '  /  /    ') or (maskedit16.text = '  /  /    ') or
           (maskedit17.text = '  /  /    ') or (maskedit18.text = '  /  /    ') or
           (maskedit19.text = '  /  /    ') or (maskedit20.text = '  /  /    ') or
           (maskedit21.text = '  /  /    ') or (maskedit22.text = '  /  /    ') or
           (maskedit23.text = '  /  /    ') or (maskedit24.text = '  /  /    ') then
        begin
                MessageDlg('Há período(s) incompleto(s).', mtinformation,
                [mbok], 0);
                abort;
        end;
   end;   }

   if radiogroup1.itemindex = 0 then begin
      // simplificado
      Application.Createform(TFRelFluxoCaixaSimples, FRelFluxoCaixaSimples);
      FRelFluxoCaixaSimples.fluxoCaixa.Preview;
      FRelFluxoCaixaSimples.close ;
      FRelFluxoCaixaSimples.Release;

   end else begin
      // Completo  - ANALITICO
      Q_AUX.close ;
      Q_AUX.Sql.Clear ;
      Q_AUX.Sql.Add(' delete from fluxo ' ) ;
      Q_AUX.ExecSql ;
      CaixaInicial := strtofloat(edit1.text);
      I:= 1 ;


      //verifica a quantidade de periodos a serem calculados
      if radiogroup3.itemindex = 0 then
          numero := 8
      else if radiogroup3.itemindex = 1 then
          numero := 12
      else if radiogroup3.itemindex = 2 then
          Numero := 31;


      //verifica se é um periodo dado pelo usuario
      if CheckBox1.Checked then
        Numero := StrToInt(edtPeriodo.Text);



      while I <= Numero do begin
           if I = 1 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit1.text ));
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit2.text ) );
           end ;
           if I = 2 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit3.text ))  ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit4.text ) ) ;
           end ;
           if I = 3 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit5.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit6.text ) );
           end ;
           if I = 4 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit7.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit8.text ) );
           end ;
           if I = 5 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit9.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit10.text ) );
           end ;
           if I = 6 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit11.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit12.text ) );
           end ;
           if I = 7 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit13.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit14.text ) );
           end ;
           if I = 8 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit15.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit16.text ) );
           end ;
           if I = 9 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit17.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit18.text ) );
           end ;
           if I = 10 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit19.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit20.text ) );
           end ;
           if I = 11 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit21.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit22.text ) );
           end ;
           if I = 12 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit23.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit24.text ) );
           end ;

           /////////////////////////////////// miguel ///////////////////////////////////////
           if I = 13 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit27.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit28.text ) );
           end ;

           if I = 14 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit29.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit30.text ) );
           end ;
           if I = 15 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit31.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit32.text ) );
           end ;
           if I = 16 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit33.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit34.text ) );
           end ;
           if I = 17 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit35.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit36.text ) );
           end ;
           if I = 18 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit37.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit38.text ) );
           end ;
           if I = 19 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit39.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit40.text ) );
           end ;
           if I = 20 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit41.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit42.text ) );
           end ;
           if I = 21 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit43.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit44.text ) );
           end ;
           if I = 22 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit45.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit46.text ) );
           end ;
           if I = 23 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit47.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit48.text ) );
           end ;
           if I = 24 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit49.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit50.text ) );
           end ;
           if I = 25 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit51.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit52.text ) );
           end ;
           if I = 26 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit53.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit54.text ) );
           end ;
           if I = 27 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit55.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit56.text ) );
           end ;
           if I = 28 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit57.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit58.text ) );
           end ;
           if I = 29 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit59.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit60.text ) );
           end ;
           if I = 30 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit61.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit62.text ) );
           end ;


           if I = 31 then begin
              data1 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit63.text )) ;
              data2 := formatdatetime('YYYYMMDD',strtodate( FRelFluxoCaixaFilt.Maskedit64.text ) );
           end ;


           StrComando := ' update Fluxo set Valor'+trim(inttostr(I)) + ' = Valor' + trim(inttostr(I)) + ' + ';
           StrComandoI :=' update Fluxo set Datai'+trim(inttostr(I)) + ' = ' + '''' + DATA1 + '''';
           StrComandoF :=' update Fluxo set DataF'+trim(inttostr(I)) + ' = ' + '''' + DATA2 + '''';

         try
           STP_FLUXOCOMPLETO.ParamByName( '@DataI' ).Value := data1;
           STP_FLUXOCOMPLETO.ParamByName( '@DataF' ).Value := data2 ;

           if Radiogroup2.itemindex = 0 then
              STP_FLUXOCOMPLETO.ParamByName( '@Tipo' ).Value  := 'P'
           else
              STP_FLUXOCOMPLETO.ParamByName( '@Tipo' ).Value  := 'R';


           STP_FLUXOCOMPLETO.ParamByName( '@Comando' ).Value  := StrComando;
           STP_FLUXOCOMPLETO.ParamByName( '@ComandoI' ).Value  := StrComandoI;
           STP_FLUXOCOMPLETO.ParamByName( '@ComandoF' ).Value  := StrComandoF;

          { if Numero = 12 then
           begin
              if I <= 9 then
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1
              else
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2 ;

                  STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 2
           end
           else
           begin
              if I <= 8 then
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1
              else
                  STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2 ;

                  STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 1 ;
           end ; }


           if I <= 9 then
           begin
               STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 1;
           end;

           if (I > 9) and (I < 18) then
           begin
               STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 2;
           end;

           if (I >= 18) and (I < 27) then
           begin
               STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 3;
           end;

           if I >= 27   then
           begin
               STP_FLUXOCOMPLETO.ParambyName('@Item').asinteger := 4;
           end;

           if RadioGroup3.ItemIndex = 0 then
                STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 1
           else if  RadioGroup3.ItemIndex = 1 then
                STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 2
           else if  RadioGroup3.ItemIndex = 2 then
                STP_FLUXOCOMPLETO.ParambyName('@Folhas').asinteger := 4;







           STP_FLUXOCOMPLETO.ParambyName('@CaixaInicial').asfloat := Int(CaixaInicial)  ;
           STP_FLUXOCOMPLETO.ParambyName('@CaixaFinal').asfloat := 0;


           //Se for o último item e a chamada for para a tela, calcula totais para o grid.
           If (Sender <> spVis) and (I = Numero) then
                STP_FLUXOCOMPLETO.ParambyName('@TOTAIS').value := 'S'
           Else
                STP_FLUXOCOMPLETO.ParambyName('@TOTAIS').value := 'N';


 {/************** miguel *************/}

 {ANTERIORMENTE ELE CHAMAVA TODOS OS CAMPOS MESMO OS Q NAO ESTAO COM FLAG DE FLUXO = FALSE}


           If (ckCP.Checked) and (ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'S'
           Else If (not ckCP.Checked) and (ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'R'
           Else If (ckCP.Checked) and (not ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'P'
           Else If (not ckCP.Checked) and (not ckCR.Checked) then
                STP_FLUXOCOMPLETO.ParambyName('@CONSIDER').value := 'N';


 {/************** end ****************/}



           STP_FLUXOCOMPLETO.ParambyName('@FILTRO').value := 'T';



           IF wwDBLookupCombo2.Text <> '' THEN
              STP_FLUXOCOMPLETO.ParamByName( '@filial' ).Value:= wwDBLookupCombo2.LookupValue
           else
              STP_FLUXOCOMPLETO.ParamByName( '@filial' ).Value:= null;

           STP_FLUXOCOMPLETO.ParamByName( '@USUARIO' ).Value:= FMenu.sqlUsuariosCH.Value;
           STP_FLUXOCOMPLETO.ExecProc;

           finally
           end;
           CaixaInicial := STP_FLUXOCOMPLETO.ParambyName('@CaixaFinal').asfloat ;
           I := I + 1 ;
       end ;


        try
        Begin

                    STP_AJUSTA.ParamByName('@CAIXAINICIAL').Value  := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
                    STP_AJUSTA.Execproc;

        End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;

       if FRelFluxoCaixaFilt.RadioGroup3.ItemIndex = 1 then
       begin
           FRelFluxoCaixaFilt.qrAux2.ExecSQL;
       end;



      // Escolhe qual a forma de visualização.
      If Sender = spVis then
      Begin

              { try
          Begin

                    STP_AJUSTA.ParamByName('@CAIXAINICIAL').Value  := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
                    STP_AJUSTA.Execproc;

          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;  }


           //   Application.Createform(TFRelFluxoCaixaCompleto, FRelFluxoCaixaCompleto);
           //   FRelFluxoCaixaCompleto.fluxoCaixa.Preview;
           //   FRelFluxoCaixaCompleto.close ;
           //   FRelFluxoCaixaCompleto.Release;
      End Else Begin

        {      try
          Begin

                    STP_AJUSTA.ParamByName('@CAIXAINICIAL').Value  := strtofloat(FRelFluxoCaixaFilt.edit1.text) ;
                    STP_AJUSTA.Execproc;

          End
        except
           begin
             MessageDlg('Geração do Relatório com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;     }



          //    Application.Createform(TFFluxo, FFluxo);
          //    FFluxo.ShowModal;
          //    FFluxo.Release;
      End;
      //

      Edit1.SetFocus;

      {
      MaskEdit1.Text := '';
      MaskEdit2.Text := '';
      MaskEdit3.Text := '';
      MaskEdit4.Text := '';
      MaskEdit5.Text := '';
      MaskEdit6.Text := '';
      MaskEdit7.Text := '';
      MaskEdit8.Text := '';
      MaskEdit9.Text := '';
      MaskEdit10.Text := '';
      MaskEdit11.Text := '';
      MaskEdit12.Text := '';
      MaskEdit13.Text := '';
      MaskEdit14.Text := '';
      MaskEdit15.Text := '';
      MaskEdit16.Text := '';
      MaskEdit17.Text := '';
      MaskEdit18.Text := '';
      MaskEdit19.Text := '';
      MaskEdit20.Text := '';
      MaskEdit21.Text := '';
      MaskEdit22.Text := '';
      MaskEdit23.Text := '';
      MaskEdit24.Text := '';
      MaskEdit25.Text := '';
      MaskEdit26.Text := '';
      wwDBLookupCombo2.Text:= '';
      wwDBLookupCombo2.LookupValue:= '';
      Edit1.Text := '0';
      }

   end ;





end;

procedure TFRelFluxoCaixaFilt.Q_BANCAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_BANC]);
  end;
  except
    begin
      Q_BANC.RevertRecord;
    end;
  end;
end;

procedure TFRelFluxoCaixaFilt.edtPeriodoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if not (Key in['0'..'9', Char(8)]) then
  Key:= #0;

end;

procedure TFRelFluxoCaixaFilt.CheckBox1Click(Sender: TObject);
begin
{  if CheckBox1.Checked then
  begin
      RadioGroup3.ItemIndex := 2;
      RadioGroup3.Enabled := False;
      edtPeriodo.Clear;
      edtPeriodo.Enabled := True;
  end
  else
  begin
      RadioGroup3.Enabled := True;
      edtPeriodo.Clear;
      edtPeriodo.Enabled := False;
  end; }
end;

procedure TFRelFluxoCaixaFilt.RzBitBtn1Click(Sender: TObject);
begin  
  frmSeleEmpresa := TfrmSeleEmpresa.Create(Self);
  frmSeleEmpresa.ShowModal;
end;

procedure TFRelFluxoCaixaFilt.FormShow(Sender: TObject);
begin
  FMenu.chkFluxoAberto.Checked := True;
end;

procedure TFRelFluxoCaixaFilt.edtPeriodoChange(Sender: TObject);
var i : Integer;
    selecao : Integer;
begin

  if edtPeriodo.Text = '' then
    Abort;

  case RadioGroup3.ItemIndex of
  0 : selecao := 16;
  1 : selecao := 24;
  2 : selecao := 62;
  end;


  if edtPeriodo.Text <> '' then
  begin
      selecao := StrToInt(edtPeriodo.Text) * 2;
      if selecao < 8 then
        selecao := 8; //periodo minimo

      if selecao > 31 * 2 then
      begin
         MessageBox(Self.Handle, 'Selecione entre 8 e 31 períodos!', 'Informação', MB_OK + MB_ICONINFORMATION)  ;
         edtPeriodo.Text := '';
         Abort;
      end;
  end;

  if selecao < 8 then
        selecao := 8; //periodo minimo

      for i := 0 to pred(ComponentCount) do
      begin
           if (Components[i] is TMaskEdit) then
           begin
               if TMaskEdit(Components[i]).Tag <= selecao then
                  TMaskEdit(Components[i]).Visible := True
               else
                  TMaskEdit(Components[i]).Visible := False;
           end;

           if (Components[i] is TLabel) then
           begin
               if TLabel(Components[i]).Tag <= selecao then
                  TLabel(Components[i]).Visible := True
               else
                  TLabel(Components[i]).Visible := False;
           end;
      end;



    {if Radiogroup3.ItemIndex = 0 then begin
        Label17.visible := false ;
        Maskedit17.visible := false ;
        Label18.visible := false ;
        Maskedit18.visible := false ;

        Maskedit19.visible := false ;
        Maskedit20.visible := false ;

        Label21.visible := false ;
        Maskedit21.visible := false ;
        Label22.visible := false ;
        Maskedit22.visible := false ;

        Label23.visible := false ;
        Maskedit23.visible := false ;
        Label24.visible := false ;
        Maskedit24.visible := false ;
        Label25.visible := false  ;
        Label26.visible := false  ;


        Panel3.visible := true ;

    end else  begin

        Label17.visible := true ;
        Maskedit17.visible := true ;
        Label18.visible := true ;
        Maskedit18.visible := true ;

        Maskedit19.visible := true ;
        Maskedit20.visible := true ;

        Label21.visible := true ;
        Maskedit21.visible := true ;
        Label22.visible := true ;
        Maskedit22.visible := true ;

        Label23.visible := true ;
        Maskedit23.visible := true ;
        Label24.visible := true ;
        Maskedit24.visible := true ;

        Label25.visible := true ;
        Label26.visible := true ;

        Panel3.visible := true ;

    end ; }

    MaskEdit25.Visible := False;
    MaskEdit26.Visible := False;
    Label27.Visible := False;
    Label28.Visible := False;
    Label1.Visible := False;
end;

procedure TFRelFluxoCaixaFilt.Q_BANCCalcFields(DataSet: TDataSet);
begin
//
        qrBxAberto.Params[0].Value := Q_bancBAN_CODI.Value;
        qrBxAberto.ExecSQL;

        qrSaldoAjustado.close;
        qrSaldoAjustado.Params[0].Value := Q_bancBAN_CODI.Value;
        qrSaldoAjustado.Open;


        Q_BANCSaldoAjus.Value := Q_BANCBAN_SALDT.Value + qrSaldoAjustadoCREDITOS.Value - qrSaldoAjustadoDEBITOS.Value;
end;

end.

unit UFConsultaVeiculo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdbedit, wwdblook, StdCtrls, Mask, Buttons, Db, DBTables,
  wwstorep, Wwdatsrc, Wwquery;

type
  TFFConsultaVeiculo = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox6: TGroupBox;
    Label3: TLabel;
    Label20: TLabel;
    combo_cliente: TwwDBLookupCombo;
    MaskEdit1: TMaskEdit;
    RadioGroup3: TRadioGroup;
    Q_VEIC: TwwQuery;
    Q_VEICVEIC_NOME: TStringField;
    Q_VEICVEIC_ID: TAutoIncField;
    STP_TONELAGEM2: TwwStoredProc;
    Q_AUX: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFConsultaVeiculo: TFFConsultaVeiculo;
  PERI : tdatetime;
  PERF  : tdatetime ;

  DataInicial : tdatetime ;
  DataInicialStr : string ;
  DataFinal   : tdatetime ;
  Virar3mes : tdatetime ;
  Dia3mes : string ;
  PrimeiroDia3mes :string ;
  PrimeiroDia3mesData : tdatetime;
implementation
uses UMENU, URelConsultaTonelagem, URelConsultaTonelagemSINT,
  URelConsultaVeiculo;
{$R *.DFM}

procedure TFFConsultaVeiculo.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFFConsultaVeiculo.SpeedButton1Click(Sender: TObject);
begin
  if (MaskEdit1.text = '  /    ') then begin
     MessageDlg('Período deve ser preenchido! ',MtError,[mbok],0);
     MaskEdit1.setfocus;
     abort ;
  end ;

  DataInicialStr := '01/' + (MaskEdit1.text) ;
  DataInicial := StrToDate(DataInicialStr);
  Virar3mes := (DataInicial + 32) ;
  Dia3mes := datetostr(Virar3mes) ;
  PrimeiroDia3mes := '01/' + copy(Dia3mes,4,7);
  PrimeiroDia3mesData := StrToDate(PrimeiroDia3mes);
  DataFinal := (PrimeiroDia3mesData - 1) ;

  try
    Begin
         STP_TONELAGEM2.ParamByName('@DATAI').Value  :=  formatdatetime('YYYYMMDD',DATAINICIAL) ;
         STP_TONELAGEM2.ParamByName('@DATAF').Value  :=  formatdatetime('YYYYMMDD',DATAFINAL) ;

         if combo_cliente.text <> '' then
            STP_TONELAGEM2.ParamByName('@VEIC_IDaux').Value  := Q_VEICVEIC_ID.asstring
         else
            STP_TONELAGEM2.ParamByName('@VEIC_IDaux').Value  :=   '0'  ;
            STP_TONELAGEM2.ParamByName('@CH').Value   := FMenu.SqlUsuariosCH.asinteger ;

            IF RadioGroup3.itemindex = 0 then
               STP_TONELAGEM2.ParamByName('@MOVI').Value   := 'E'
             else
               STP_TONELAGEM2.ParamByName('@MOVI').Value   := 'C'  ;
            STP_TONELAGEM2.Execproc;

             {Q_AUX.close;
             Q_AUX.sql.clear;
             Q_AUX.sql.add('dbo.STP_VEICULO_UTILIZ ' + formatdatetime('YYYYMMDD',DATAINICIAL));
             Q_AUX.SQL.ADD(',' + formatdatetime('YYYYMMDD',DATAFINAL)) ;
             Q_AUX.SQL.ADD(',0,' +   FMenu.SqlUsuariosCH.asstring + ',' + 'E');
             Q_AUX.execsql; }



    End
  except
     begin
       MessageDlg('Geração do Relatório de Veículos Utilizados, com erro !',mtInformation,[mbOk], 0);
       abort  ;
     end;
  end;
   Application.CreateForm(TFRelConsultaVeiculo,FRelConsultaVeiculo);
   FRelConsultaVeiculo.VEICULO.Preview;
   FRelConsultaVeiculo.Close;


  DataInicialStr := '' ;
  Virar3mes := 0.00 ;
  Dia3mes := '';
  PrimeiroDia3mes := '' ;
  PrimeiroDia3mesData := 0.00 ;
  DATAINICIAL := 0.00 ;
  DATAFINAL := 0.00 ;



end;

procedure TFFConsultaVeiculo.combo_clienteEnter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaVeiculo.combo_clienteExit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClWINDOW ;
end;

procedure TFFConsultaVeiculo.MaskEdit1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaVeiculo.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaVeiculo.FormCreate(Sender: TObject);
begin
    shortdateformat  := 'DD/MM/YYYY'  ;
    dateseparator := '/' ;

    Q_VEIC.open ;
end;

procedure TFFConsultaVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Q_VEIC.close ;
     action := cafree ; 
end;

end.

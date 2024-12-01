unit UFConsultaTonelagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwdbedit, wwdblook, StdCtrls, Mask, Buttons, Db, DBTables,
  wwstorep, Wwdatsrc, Wwquery;

type
  TFFConsultaTonelagem = class(TForm)
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label3: TLabel;
    Data2: TMaskEdit;
    Data1: TMaskEdit;
    RadioGroup2: TRadioGroup;
    Label20: TLabel;
    combo_cliente: TwwDBLookupCombo;
    MaskEdit1: TMaskEdit;
    Q_CLINBF: TwwQuery;
    Q_CLINBFCLIN_RAZA: TStringField;
    Q_CLINBFCLIN_ID: TAutoIncField;
    DS_CLINBF: TwwDataSource;
    RadioGroup1: TRadioGroup;
    RadioGroup3: TRadioGroup;
    STP_TONE: TwwStoredProc;
    Q_AUX: TwwQuery;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure combo_clienteEnter(Sender: TObject);
    procedure combo_clienteExit(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Enter(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
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
  FFConsultaTonelagem: TFFConsultaTonelagem;
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
uses UMENU, URelConsultaTonelagem, URelConsultaTonelagemSINT  ;
{$R *.DFM}

procedure TFFConsultaTonelagem.SpeedButton3Click(Sender: TObject);
begin
   close ;
end;

procedure TFFConsultaTonelagem.SpeedButton1Click(Sender: TObject);
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

  If RadioGroup2.itemindex = 0 then  begin

        try

          Begin
                 STP_TONE.ParamByName('@DATAI').Value  :=  formatdatetime('YYYYMMDD',DATAINICIAL) ;
                 STP_TONE.ParamByName('@DATAF').Value  :=  formatdatetime('YYYYMMDD',DATAFINAL) ;

               if combo_cliente.text <> '' then
                  STP_TONE.ParamByName('@CLIN_IDaux').Value  := combo_cliente.lookupvalue
               else
                  STP_TONE.ParamByName('@CLIN_IDaux').Value  :=   0  ;

                  STP_TONE.ParamByName('@CH').Value   := FMenu.SqlUsuariosCH.asinteger ;

                  IF RadioGroup1.itemindex = 0 then
                     STP_TONE.ParamByName('@TIPO').Value   := 'CT'
                   else
                     STP_TONE.ParamByName('@TIPO').Value   := 'TO'  ;

                  IF RadioGroup3.itemindex = 0 then
                     STP_TONE.ParamByName('@MOVI').Value   := 'E'
                   else
                     STP_TONE.ParamByName('@MOVI').Value   := 'C'  ;
                  STP_TONE.Execproc;



          End
        except

           begin
             MessageDlg('Geração do Relatório de Tonelagem Transportada, com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;
         Application.CreateForm(TFRelConsultaTONELAGEM,FRelConsultaTONELAGEM);
         FRelConsultaTONELAGEM.TONELAGEM.Preview;
         FRelConsultaTONELAGEM.Close;

  end else begin
        try
          Begin
                 STP_TONE.ParamByName('@DATAI').Value  :=  formatdatetime('YYYYMMDD',DATAINICIAL) ;
                 STP_TONE.ParamByName('@DATAF').Value  :=  formatdatetime('YYYYMMDD',DATAFINAL) ;

               if combo_cliente.text <> '' then
                  STP_TONE.ParamByName('@CLIN_IDaux').Value  := combo_cliente.lookupvalue
               else
                  STP_TONE.ParamByName('@CLIN_IDaux').Value  :=   0  ;

                  STP_TONE.ParamByName('@CH').Value   := FMenu.SqlUsuariosCH.asinteger ;

                  IF RadioGroup1.itemindex = 0 then
                     STP_TONE.ParamByName('@TIPO').Value   := 'CT'
                   else
                     STP_TONE.ParamByName('@TIPO').Value   := 'TO'  ;

                  IF RadioGroup3.itemindex = 0 then
                     STP_TONE.ParamByName('@MOVI').Value   := 'E'
                   else
                     STP_TONE.ParamByName('@MOVI').Value   := 'C'  ;
                  STP_TONE.Execproc;



          End
        except
           begin
             MessageDlg('Geração do Relatório de Tonelagem Transportada, com erro !',mtInformation,[mbOk], 0);
             abort  ;
           end;
        end;


        Application.CreateForm(TFRelConsultaTONELAGEMsint,FRelConsultaTONELAGEMsint);
        FRelConsultaTONELAGEMsint.TONELAGEM.Preview;
        FRelConsultaTONELAGEMsint.Close;
  end ;


end;

procedure TFFConsultaTonelagem.combo_clienteEnter(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClAqua;
end;

procedure TFFConsultaTonelagem.combo_clienteExit(Sender: TObject);
begin
  (Sender as TwwDBlookupcombo).Color := ClWINDOW ;
end;

procedure TFFConsultaTonelagem.Data1Enter(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTonelagem.Data1Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClWINDOW ;
end;

procedure TFFConsultaTonelagem.Data2Enter(Sender: TObject);
begin
    (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTonelagem.Data2Exit(Sender: TObject);
begin
   (Sender as TMaskedit).Color := ClWINDOW ;
end;

procedure TFFConsultaTonelagem.MaskEdit1Enter(Sender: TObject);
begin
  (Sender as TMaskedit).Color := ClAqua;
end;

procedure TFFConsultaTonelagem.MaskEdit1Exit(Sender: TObject);
begin
  (Sender as TMaskedit).Color := Clwindow ;
end;

procedure TFFConsultaTonelagem.FormCreate(Sender: TObject);
begin

  shortdateformat  := 'DD/MM/YYYY'  ;
  dateseparator := '/' ;
  Q_CLINBF.open ;
  
end;

procedure TFFConsultaTonelagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Q_CLINBF.close ;
     action := cafree ; 
end;

end.

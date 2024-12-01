unit Cheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, wwdblook, DBCtrls, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Mask, wwdbedit, ComCtrls,
  Tabnotbk, wwDialog, wwidlg;

type
  TFchq = class(TForm)
    TbN_Chq: TTabbedNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    wwDBEdit1: TwwDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    wwDBEdit5: TwwDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_REFR: TSpeedButton;
    Fonte: TDBNavigator;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit3: TwwDBEdit;
    DS_chq: TwwDataSource;
    Q_chq: TwwQuery;
    Q_BANC: TwwQuery;
    Q_FORN: TwwQuery;
    UPD_chq: TUpdateSQL;
    Q_chqNumero: TIntegerField;
    Q_chqChequeNumero: TStringField;
    Q_chqDataEmissao: TDateTimeField;
    Q_chqFavorecido: TStringField;
    Q_chqNome: TStringField;
    Q_chqValor: TFloatField;
    Q_chqBanco: TStringField;
    Q_chqTipo: TStringField;
    Q_chqEmitido: TStringField;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
    wwDBEdit4: TwwDBEdit;
    Q_ichq: TwwQuery;
    DS_ichq: TwwDataSource;
    Q_ichqNumero: TIntegerField;
    Q_ichqNumeroCP: TIntegerField;
    Q_ichqValor: TFloatField;
    Q_ichqValorDescAcres: TFloatField;
    Q_ichqSaldo: TFloatField;
    Q_ichqData: TDateTimeField;
    Q_ichqInstrucao1: TStringField;
    Q_ichqInstrucao2: TStringField;
    UPD_ichq: TUpdateSQL;
    wwDBGrid2: TwwDBGrid;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Q_pag: TwwQuery;
    Q_pagNumero: TIntegerField;
    Q_pagSaldo: TFloatField;
    Panel3: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Panel4: TPanel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    wwDBEdit11: TwwDBEdit;
    Q_DCHQ: TwwQuery;
    DS_DCHQ: TwwDataSource;
    UPD_DCHQ: TUpdateSQL;
    Q_DCHQNumero: TIntegerField;
    Q_DCHQNumeroCP: TIntegerField;
    Q_DCHQCodDescAcres: TStringField;
    Q_DCHQData: TDateTimeField;
    Q_DCHQValor: TFloatField;
    Q_DCHQHistorico: TStringField;
    Label21: TLabel;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit17: TwwDBEdit;
    Q_DIFE: TwwQuery;
    DS_Dife: TwwDataSource;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    Q_ichqTipo: TStringField;
    wwDBGrid1: TwwDBGrid;
    STP_ATUASALD: TStoredProc;
    wwDBEdit2: TwwDBEdit;
    wwDBGrid3: TwwDBGrid;
    SBT_CONS: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Q_AUX: TwwQuery;
    Q_AUX2: TwwQuery;
    Q_PBAN: TwwQuery;
    Q_PBANBAN_CODI: TStringField;
    Q_PBANBAN_NOME: TStringField;
    Q_AUX3: TwwQuery;
    Panel5: TPanel;
    Label22: TLabel;
    Panel6: TPanel;
    Label23: TLabel;
    Panel7: TPanel;
    Label24: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo4Change(Sender: TObject);
    procedure Q_chqBeforePost(DataSet: TDataSet);
    procedure Q_chqAfterDelete(DataSet: TDataSet);
    procedure Q_chqAfterPost(DataSet: TDataSet);
    procedure Q_chqBeforeDelete(DataSet: TDataSet);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_ichqNewRecord(DataSet: TDataSet);
    procedure Q_chqNewRecord(DataSet: TDataSet);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure Q_ichqAfterDelete(DataSet: TDataSet);
    procedure Q_ichqAfterPost(DataSet: TDataSet);
    procedure Q_ichqBeforeDelete(DataSet: TDataSet);
    procedure TbN_ChqClick(Sender: TObject);
    procedure Q_DCHQNewRecord(DataSet: TDataSet);
    procedure Q_DCHQAfterDelete(DataSet: TDataSet);
    procedure Q_DCHQAfterPost(DataSet: TDataSet);
    procedure Q_DCHQBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SBT_CONSClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TbN_ChqChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure SBT_REFRClick(Sender: TObject);
    procedure wwDBGrid3CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fchq: TFchq;
  Banco : string;
  DINI : tdatetime;
  DFIM : tdatetime;
  sit : array [0..2] of string;

implementation

uses CPPMenu, UPesqCheq, U_FUNCOES, URelChq;
{$R *.DFM}

procedure TFchq.FormCreate(Sender: TObject);
begin
   Q_FORN.open;
   Q_CHQ.open;
   Q_BANC.open;
   Q_PAG.open ;
   Q_ICHQ.open;
   Q_DCHQ.open ;
   Q_PBAN.Open;
   TbN_Chq.PageIndex := 0;
end;

procedure TFchq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_CHQ.close;
   Q_BANC.close;
   Q_PAG.close ;
   Q_FORN.close;
   Q_ICHQ.close;
   Q_DCHQ.close ;
   Q_DIFE.Close;
   Q_PBAN.Close;
   action:=cafree;
end;

procedure TFchq.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFchq.wwDBLookupCombo4Change(Sender: TObject);  {}
begin
{  if wwDBlookupCombo4.text <> '' then begin
       Q_FORN.locate('FOR_CODI',wwDBLookupCombo4.text,[loCaseInsensitive]);
       wwDBEdit2.text := Q_FORNFOR_RAZA.asstring ;
       wwDBEdit2.enabled := false ;
    end else begin
       wwDBEdit2.enabled := true ;
       wwDBEdit2.text := '';
    end;}
end;

procedure TFchq.Q_chqBeforePost(DataSet: TDataSet);
var  iCodigo : Integer;
     sCodigo : String ;
     Obj_Consulta:TwwQuery;
begin

     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if FMenu.Conciliacao(Q_chqBanco.Value, Q_chqDataEmissao.Value) then
     begin
        MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
        Abort;
     end;

     ///////////////////////////////////////////////////////////////////////////////////////////////////////





  if Q_Chq.State = dsInsert then begin
     Obj_Consulta:=TwwQuery.Create(Self);
     Obj_Consulta.DataBaseName:='Financeiro';
     Obj_Consulta.SessionName:='Sec_BaseFin';
     Obj_Consulta.Sql.Add('SELECT MAX(Numero) As Novo_Codi FROM CPACHEQ');
     Obj_Consulta.Open;
     sCodigo := Obj_Consulta.FieldbyName('Novo_Codi').AsString;

     Obj_Consulta.Close;
     Obj_Consulta.Destroy;

     If sCodigo = '' then
        sCodigo := '0';

     Try
        iCodigo:=StrToInt(sCodigo);
        INC(iCodigo);
        sCodigo:=IntToStr(iCodigo);
     Except
        sCodigo :='';
     End;
     wwDBEdit1.text := sCodigo ;
     Q_ChqNumero.asstring := sCodigo ;

  end;

  if wwDBlookupCombo4.text <> '' then begin
      Q_FORN.locate('FOR_CODI',wwDBLookupCombo4.text,[loCaseInsensitive]);
      wwDBEdit2.text := Q_FORNFOR_RAZA.asstring ;
      Q_ChqNome.asstring := Q_FORNFOR_RAZA.asstring ;
      wwDBEdit2.enabled := false ;
   end else begin
      wwDBEdit2.enabled := true ;
      wwDBEdit2.text := '';
   end;

   Q_chqEmitido.asstring := 'N';

  if wwdbedit3.text = '' then begin
     MessageDlg('Data de Emissão em Branco !',mterror, [mbOk], 0);
     wwdbedit3.setfocus ;
     abort ;
  end;
  if wwdblookupcombo3.text = '' then begin
     MessageDlg('Banco/Conta em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo3.setfocus ;
     abort ;
  end;

end;

procedure TFchq.Q_chqAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_Chq]);
  except
    Q_Chq.RevertRecord;
  end;
end;

procedure TFchq.Q_chqAfterPost(DataSet: TDataSet);
var sCodigo : string ;
begin
   sCodigo := wwdbedit1.text ;
   try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Chq]);
  end;
  except
    begin
      Q_Chq.RevertRecord;
    end;
  end;
  Q_Chq.Close;
  Q_Chq.Open;
  Q_Chq.locate('Numero',sCodigo,[loCaseInsensitive]);
end;

procedure TFchq.Q_chqBeforeDelete(DataSet: TDataSet);
begin
     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if FMenu.Conciliacao(Q_chqBanco.Value, Q_chqDataEmissao.Value) then
     begin
        MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
        Abort;
     end;

     ///////////////////////////////////////////////////////////////////////////////////////////////////////




   if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;
end;

procedure TFchq.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFchq.Q_ichqNewRecord(DataSet: TDataSet);
begin
  Q_IchqNumero.AsInteger := Q_chqNumero.AsInteger;
end;

procedure TFchq.Q_chqNewRecord(DataSet: TDataSet);
begin
  Q_chqEmitido.asstring := 'S' ;
end;

procedure TFchq.DBRadioGroup1Exit(Sender: TObject);
begin
      if DBRadioGroup1.value = 'C' then begin
         wwDBEdit9.enabled := false ;
         wwDBEdit10.enabled := false ;
      end;    
end;

procedure TFchq.Q_ichqAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_IChq]);
  except
    Q_IChq.RevertRecord;
  end;

end;

procedure TFchq.Q_ichqAfterPost(DataSet: TDataSet);
begin
   try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_IChq]);
  end;
  except
    begin
      Q_IChq.RevertRecord;
    end;
  end;
  Q_IChq.Close;
  Q_IChq.Open;
  Q_Ichq.last ;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := wwDBLookupCombo3.lookupvalue ;
    STP_ATUASALD.ExecProc;
  finally
  end;

end;

procedure TFchq.Q_ichqBeforeDelete(DataSet: TDataSet);
begin
   if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;


end;

procedure TFchq.TbN_ChqClick(Sender: TObject);
begin
  if (Fonte.DataSource.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('Você deve gravar as informações antes de mudar de página',mtInformation,[mbOk], 0);
    abort ;
  end;

   Q_ICHQ.Close;
   Q_ICHQ.Open;

end;



procedure TFchq.Q_DCHQNewRecord(DataSet: TDataSet);
begin
   Q_DchqNumero.AsInteger := Q_IchqNumero.AsInteger;
   Q_DchqNumeroCP.Asinteger := Q_IchqNumeroCP.asinteger;
end;

procedure TFchq.Q_DCHQAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_IChq]);
  except
    Q_DChq.RevertRecord;
  end;
end;

procedure TFchq.Q_DCHQAfterPost(DataSet: TDataSet);
begin
     try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_DChq]);
  end;
  except
    begin
      Q_DChq.RevertRecord;
    end;
  end;
  Q_DChq.Close;
  Q_DChq.Open;
end;

procedure TFchq.Q_DCHQBeforeDelete(DataSet: TDataSet);
begin
   if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;

end;


procedure TFchq.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFchq.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqCheq, FPesqCheq);
   FPesqCheq.ShowModal;
   FPesqCheq.Release;
end;

procedure TFchq.SpeedButton1Click(Sender: TObject);
var
numcheq : integer;
begin

     //miguel
     //verifica se a data de credito não está dentro do periodo conciliado na movimentação bancária
     if FMenu.Conciliacao(Q_chqBanco.Value, Q_chqDataEmissao.Value) then
     begin
        MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
        Abort;
     end;

     ///////////////////////////////////////////////////////////////////////////////////////////////////////






   if MessageDlg('Tem certeza que deseja cancelar o cheque de nº '
                +Q_CHQCHEQUENUMERO.AsString +'?', mtConfirmation,
                [mbyes, mbno], 0) = mryes then
   begin
        Q_AUX.SQL.Clear;
        Q_AUX.SQL.Add('DELETE FROM CPADCHE WHERE NUMERO = ' +Q_CHQNUMERO.AsString);
        Q_AUX.ExecSQL;

        Q_AUX.SQL.Clear;
        Q_AUX.SQL.Add('SELECT NUMEROCP, VALOR, NUMEROICHE FROM CPAICHE WHERE ');
        Q_AUX.SQL.Add('NUMERO = ' +Q_CHQNUMERO.AsString);
        Q_AUX.Open;

        while not Q_AUX.Eof do
        begin
                Q_AUX2.SQL.Clear;
                Q_AUX2.SQL.Add('UPDATE CPAPAGA SET SALDO = SALDO + ');
                Q_AUX2.SQL.Add(Funcoes.Converte(Q_AUX.fieldbyname('VALOR').asstring,',','.'));
                Q_AUX2.SQL.Add('WHERE NUMERO = ' +Q_AUX.fieldbyname('NUMEROCP').asstring);
                Q_AUX2.ExecSQL;

                Q_AUX2.SQL.Clear;
                Q_AUX2.SQL.Add('SELECT * FROM CPAIPAG WHERE NUMERO = ');
                Q_AUX2.SQL.Add(Q_AUX.fieldbyname('NUMEROCP').asstring);
                //*** AQUI ESTÁ O ERRO, MUDAR PARA NUMEROICHE.
                Q_AUX2.SQL.Add('AND NUMEROICHE = ' );
                Q_AUX2.SQL.Add(Q_AUX.fieldbyname('NUMEROICHE').asstring);

                Q_AUX2.Open;

                while not Q_AUX2.Eof do
                begin
                        Q_AUX3.SQL.Clear;
                        Q_AUX3.SQL.Add('DELETE FROM CPAIDPA WHERE NUMERO = ');
                        Q_AUX3.SQL.Add(Q_AUX2.fieldbyname('NUMERO').asstring);
                        Q_AUX3.SQL.Add('AND SEQUENCIABX = ' +Q_AUX2.fieldbyname('SEQUENCIA').asstring);
                        Q_AUX3.ExecSQL;

                        Q_AUX2.Next;
                end;

                Q_AUX2.SQL.Clear;
                Q_AUX2.SQL.Add('DELETE FROM CPAIPAG WHERE NUMERO = ');
                Q_AUX2.SQL.Add(Q_AUX.fieldbyname('NUMEROCP').asstring);
                Q_AUX2.SQL.Add('AND ABATER = ' +Funcoes.Converte(Q_AUX.fieldbyname('VALOR').asstring,',','.'));
                Q_AUX2.ExecSQL;

                Q_AUX.Next;
        end;

        Q_AUX.SQL.Clear;
        Q_AUX.SQL.Add('DELETE FROM CPAICHE WHERE NUMERO = ' +Q_CHQNUMERO.asstring);
        Q_AUX.ExecSQL;

        Q_AUX.SQL.Clear;
        Q_AUX.SQL.Add('UPDATE CPACHEQ SET EMITIDO = ' +'''' +'C' +'''');
        Q_AUX.SQL.Add('WHERE NUMERO = ' +Q_CHQNUMERO.AsString);
        Q_AUX.ExecSQL;

        numcheq := Q_CHQNUMERO.Value;

        Q_CHQ.Close;
        Q_CHQ.Open;

        Q_CHQ.Locate('NUMERO',numcheq,[]);

        MessageDlg('Cancelamento efetuado com sucesso.',mtInformation,[mbok],0);
   end;

end;

procedure TFchq.TbN_ChqChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
   if newtab = 0 then
      Fonte.DataSource := DS_Chq  ;
   if newtab = 1 then
      Fonte.DataSource := DS_IChq ;
   if newtab = 2 then
   begin
        Q_DIFE.Open;
        Fonte.DataSource := DS_DChq ;
        if Q_CHQEMITIDO.AsString = 'S' then
        begin
                panel3.enabled := false;
                panel4.enabled := false;
        end
        else
        begin
                panel3.enabled := true;
                panel4.enabled := true;
        end;
   end;
end;

procedure TFchq.SBT_REFRClick(Sender: TObject);
begin
        Q_CHQ.Close;
        Q_CHQ.Open;
end;

procedure TFchq.wwDBGrid3CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin

    if Q_chqTipo.Value = 'C' then
        ABrush.Color := $0082FFFF;

     if Q_chqTipo.Value = 'S' then
      ABrush.Color := $00C1FF84;

    if Q_chqTipo.Value = 'B' then
      ABrush.Color := $0093C9FF;

      If Highlight then
                AFont.Color := clBlue
        else
                Afont.Color := clBlack ;

end;

procedure TFchq.wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9' , #13 , #8]) Then
  Key := #0;

end;

end.


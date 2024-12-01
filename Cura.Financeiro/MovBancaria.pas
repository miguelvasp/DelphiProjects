unit MovBancaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, StdCtrls, ExtCtrls, DBCtrls, wwdblook,
  Mask, wwdbedit, Buttons, ComCtrls, Tabnotbk, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, DBGrids;

type
  TFMovBanc = class(TForm)
    Panel1: TPanel;
    SBT_REFR: TSpeedButton;
    Fonte: TDBNavigator;
    DS_MOVBANC: TwwDataSource;
    Q_MovBanc: TwwQuery;
    Q_BANC: TwwQuery;
    Q_CONT: TwwQuery;
    Q_MovBancMOV_BANC: TStringField;
    Q_MovBancMOV_DATA: TDateTimeField;
    Q_MovBancMOV_SINAL: TStringField;
    Q_MovBancMOV_LANC: TIntegerField;
    Q_MovBancMOV_CODI: TIntegerField;
    Q_MovBancMOV_DESC: TStringField;
    Q_MovBancMOV_VALOR: TFloatField;
    Q_MovBancMOV_CONT: TStringField;
    Q_MovBancMOV_FILI: TStringField;
    Q_MovBancMOV_ORIG: TStringField;
    Q_BANCBAN_CODI: TStringField;
    Q_BANCBAN_NOME: TStringField;
    Q_CONTCON_CODI: TStringField;
    Q_CONTCON_DESC: TStringField;
    Q_MovBancMOV_SEQU: TIntegerField;
    Q_MovBancFIL_CODI: TStringField;
    Q_MovBancFIL_DESC: TStringField;
    Q_FILI: TwwQuery;
    Q_FILIFIL_DESC: TStringField;
    Q_FILIFIL_CODI: TStringField;
    UPD_MOVBANC: TUpdateSQL;
    STP_ATUASALD: TStoredProc;
    Q_MovBancMOV_DCTO: TStringField;
    Q_MovBancMOV_HIST: TStringField;
    Q_MovBancMOV_CHEQ: TStringField;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit4: TwwDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    wwDBEdit5: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    Q_AUX: TwwQuery;
    Q_CONTDS: TStringField;
    Q_Aux1: TwwQuery;
    pnl1: TPanel;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    SBT_CONS: TSpeedButton;
    SBT_SAIR: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_MovBancAfterDelete(DataSet: TDataSet);
    procedure Q_MovBancAfterPost(DataSet: TDataSet);
    procedure Q_MovBancBeforeDelete(DataSet: TDataSet);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_MovBancNewRecord(DataSet: TDataSet);
    procedure Q_MovBancBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovBanc: TFMovBanc;

implementation
 uses CPPMenu, U_PesqMovBanc ;
{$R *.DFM}




procedure TFMovBanc.FormCreate(Sender: TObject);
begin

Q_MovBanc.Close;
Q_MovBanc.Params[0].AsInteger := StrToInt(GS_MBAN);
Q_MOVBANC.open;

IF GS_MBAN = '0' then
Q_MovBanc.Append;


Q_BANC.open;
Q_CONT.open;
Q_FILI.open ;
end;

procedure TFMovBanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin

GS_MBAN := '0';

Q_MOVBANC.close;
Q_BANC.close;
Q_CONT.close;
Q_FILI.close; 
action:=cafree;

end;

procedure TFMovBanc.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFMovBanc.Q_MovBancAfterDelete(DataSet: TDataSet);
begin
  try
    FMenu.DATABASE1.ApplyUpdates([Q_MovBanc]);
  except
    Q_MovBanc.RevertRecord;
  end;
end;

procedure TFMovBanc.Q_MovBancAfterPost(DataSet: TDataSet);
Var CH, SQL:String;
begin
  try
  begin
    CH := Q_MovBancMOV_CODI.AsString;
    FMenu.DATABASE1.ApplyUpdates([Q_MovBanc]);
  end;
  except
    begin
      Q_MovBanc.RevertRecord;
    end;
  end;
  Q_MovBanc.Close;
  Q_MovBanc.Open;
  IF CH = '' Then
  Begin
        SQL := 'SELECT          MAX(MOV_CODI) MOV_CODI '+
               'FROM            CPAMOVI ';
        Q_AUX.SQL.CLEAR;
        Q_AUX.SQL.ADD(SQL);
        Q_AUX.OPEN;
        CH := Q_AUX.FieldByName('MOV_CODI').AsString;
  End;

  If CH <> '' then
        Q_MovBanc.Locate('MOV_CODI',CH,[]);

  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := wwDBLookupCombo1.lookupvalue ;
    STP_ATUASALD.ExecProc;
  finally
  end;

end;

procedure TFMovBanc.Q_MovBancBeforeDelete(DataSet: TDataSet);
begin

 if FMenu.Conciliacao(Q_MovBancMOV_BANC.Value, Q_MovBancMOV_DATA.Value) = True then
 begin
     MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
     Abort;
 end;



 
 if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;

end;

procedure TFMovBanc.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFMovBanc.Q_MovBancNewRecord(DataSet: TDataSet);
begin
  Q_MovBancMOV_ORIG.asstring := '0';
  Q_MovBancMOV_SEQU.asstring := '1';
  Q_MovBancMOV_Cheq.asstring := 'N';
  // Origrm 6 conversão
  // 0 - lançamento Manual
  // 1 - Pagamento - CPAPAGA
  // 2- Recebimento - CPAIREC
  // 4 - Recebimento Lote
  // 5 - Pagamento Lote
  // 3
end;

procedure TFMovBanc.Q_MovBancBeforePost(DataSet: TDataSet);
begin

  //verifica se a data nao está conciliada - miguel
 if FMenu.Conciliacao(Q_MovBancMOV_BANC.Value, Q_MovBancMOV_DATA.Value) = True then
 begin
     MessageBox(Self.Handle, 'Não é possível efetuar alterações nesta conta bancária, este período está conciliado!',
                'Informação do Sistema', MB_OK + MB_ICONEXCLAMATION);
     Abort;
 end;


  if wwdblookupcombo1.text = '' then begin
     MessageDlg('Banco/Conta em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo1.setfocus ;
     abort ;
  end;
  if wwdbedit2.text = '' then begin
     MessageDlg('Data em Branco !',mterror, [mbOk], 0);
     wwdbedit2.setfocus ;
     abort ;
  end;
//  if dbradiogroup1.values = '' then begin
//     MessageDlg('Tipo(Débito ou Crédito) em Branco !',mterror, [mbOk], 0);
//     dbrradiogroup1.setfocus ;
//     abort ;
//  end;
  if wwdbedit4.text = '' then begin
     MessageDlg('Histórico em Branco !',mterror, [mbOk], 0);
     wwdbedit4.setfocus ;
     abort ;
  end;
  if wwdblookupcombo2.text = '' then begin
     MessageDlg('Conta Gerencial em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo2.setfocus ;
     abort ;
  end;
  if DBRadioGroup1.ItemIndex = -1 then begin
     MessageDlg('Informe o tipo da movimentação !',mterror, [mbok], 0);
     abort;
  end;

end;




procedure TFMovBanc.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqMovBanc, FPesqMovBanc);
   FPesqMovBanc.ShowModal ;
   FPesqMovBanc.Release ;
   if Gs_MBAN <> '' then begin
      Q_MovBanc.Close;
      Q_MovBanc.Open;
      Q_MovBanc.locate('MOV_CODI',Gs_MBAN,[]);
      Gs_MBAN := '' ;
   end;
end;








procedure TFMovBanc.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFMovBanc.DBRadioGroup2Click(Sender: TObject);
begin
        If Sender = DBRadioGroup2 then
        Begin
                If Q_MovBancMOV_CHEQ.AsString =  'N' Then
                        Q_MovBancMOV_CHEQ.AsString := 'S'
                Else
                        Q_MovBancMOV_CHEQ.AsString := 'N'
        End;
end;

procedure TFMovBanc.wwDBLookupCombo1Exit(Sender: TObject);
var sql:string;
begin
        sql := 'select count(ban_codempr)cont, '+
               '       ban_codempr '+
               'from cpabanc where ban_codi = '+''''+wwdblookupcombo1.lookupvalue+''''+
               ' group by ban_codempr';
        q_aux1.close;
        q_aux1.sql.clear;
        q_aux1.sql.add(sql);
        q_aux1.open;
        if q_aux1.fieldbyname('cont').value = 1 then begin
           q_movbancmov_fili.AsString := q_aux1.fieldbyname('ban_codempr').asstring;
        end;
end;

procedure TFMovBanc.btnAddClick(Sender: TObject);
begin
  Fonte.BtnClick(nbInsert);
end;

procedure TFMovBanc.btnAtualizarClick(Sender: TObject);
begin
  Fonte.BtnClick(nbRefresh);
end;

procedure TFMovBanc.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFMovBanc.btnDeleteClick(Sender: TObject);
begin
  IF MessageBox(Self.Handle, 'CONFIRMA EXCLUSÃO DO REGISTRO?', 'CONFIRMAÇÃO', MB_YESNO + MB_ICONQUESTION) = 6 then
  begin
    Fonte.BtnClick(nbDelete);
    CLOSE;
  end;
end;

procedure TFMovBanc.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFMovBanc.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFMovBanc.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFMovBanc.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
      Fonte.BtnClick(nbPost);
      CLOSE;
  end;
end;

procedure TFMovBanc.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

{
26/06/07 - alterado layout dos botoes - Miguel
}

end.

unit CPPBANC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwtable,
  Wwdotdot, Wwdbcomb, ComCtrls;

type
  TFCBancarias = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    DS_BANC: TwwDataSource;
    UPD_BANC: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    DS_LAYO: TwwDataSource;
    Q_banc: TwwQuery;
    Q_bancBAN_CODI: TStringField;
    Q_bancBAN_NOME: TStringField;
    Q_bancBAN_NAGE: TStringField;
    Q_bancBAN_DATA: TDateTimeField;
    Q_bancBAN_SALD: TFloatField;
    Q_bancBAN_NLAN: TFloatField;
    Q_bancBAN_LCHE: TStringField;
    Q_bancBAN_UCHE: TStringField;
    Q_LAYO: TwwQuery;
    Q_LAYOLAY_CODI: TStringField;
    Q_LAYOLAY_DESC: TStringField;
    Q_bancdescricao: TStringField;
    Q_bancBAN_SALDT: TFloatField;
    Q_bancBAN_DATAT: TDateTimeField;
    SBT_CONS: TSpeedButton;
    Q_bancBAN_CARTAGECC: TStringField;
    Q_bancBAN_CODEMPR: TStringField;
    STP_ATUASALD: TStoredProc;
    Q_EMP: TwwQuery;
    Q_EMPFIL_CODI: TStringField;
    Q_EMPFIL_DESC: TStringField;
    SpeedButton5: TSpeedButton;
    pnl1: TPanel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    Q_bancBAN_PE: TStringField;
    Q_bancBAN_AGEN: TStringField;
    Q_bancAgencia_PE: TStringField;
    Q_bancdgAgencia_PE: TStringField;
    Q_bancdgConta_PE: TStringField;
    Q_bancCodigo_PE: TStringField;
    Q_bancConta_PE: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    DBE_BAN_CODI: TwwDBEdit;
    DBE_BAN_NOME: TwwDBEdit;
    DBE_BAN_AGEN: TwwDBEdit;
    DBE_BAN_NAGE: TwwDBEdit;
    DBE_BAN_DATA: TwwDBEdit;
    DBE_BAN_SALD: TwwDBEdit;
    DBE_BAN_UCHE: TwwDBEdit;
    DBE_MOV_DATA: TwwDBEdit;
    DBE_MOV_VALO: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DBG_BANC: TwwDBGrid;
    DBG_BANCIButton: TwwIButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBText1: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qrPagEscritural: TwwQuery;
    qrPagEscrituralID: TIntegerField;
    qrPagEscrituralVALOR: TStringField;
    Label18: TLabel;
    Q_bancDT_CONCILIACAO: TDateTimeField;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    qrBxAberto: TwwQuery;
    qrSaldoAjustado: TwwQuery;
    qrSaldoAjustadoBAN_CODI: TStringField;
    qrSaldoAjustadoDEBITOS: TFloatField;
    qrSaldoAjustadoCREDITOS: TFloatField;
    DataSource1: TDataSource;
    lbSaldo: TLabel;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_BANCAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_BANCStateChange(Sender: TObject);
    procedure Q_BANCAfterDelete(DataSet: TDataSet);
    procedure Q_BANCBeforeDelete(DataSet: TDataSet);
    procedure Q_BANCAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_BANCBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_bancBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure Q_bancNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure DS_BANCDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCBancarias: TFCBancarias;

implementation
uses CPPMENU, UPesqCBan, URelCBancarias, URelSaldo ;

{$R *.DFM}

procedure TFCBancarias.SBT_SAIRClick(Sender: TObject);
begin
  FCBancarias.Close;
end;

procedure TFCBancarias.Q_BANCAfterPost(DataSet: TDataSet);
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
  DBE_BAN_CODI.Enabled := false;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := Q_BANCBAN_CODI.asstring ;
    STP_ATUASALD.ExecProc;
  finally
  end;

//  Q_BANC.Close;
//  Q_BANC.Open;

end;

procedure TFCBancarias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_BANC.Close;
  Q_LAYO.Close;
  Q_EMP.Close;
  Action := caFree;
end;

procedure TFCBancarias.FormShow(Sender: TObject);
begin
  Q_BANC.Open;
  Q_LAYO.Open;
  Q_EMP.Open;
  qrPagEscritural.Open;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFCBancarias.DS_BANCStateChange(Sender: TObject);
begin
  if (Q_BANC.State = dsEdit) or (Q_BANC.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_BANC.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_BAN_CODI.Enabled := true;
      DBE_BAN_CODI.SetFocus;
    end;
    LBL_STATUS.Visible := true;
  end
  else
  begin
    SBT_SAIR.Enabled := true;
    SBT_REFR.Enabled := true;
    LBL_STATUS.Visible := false;
  end;
end;

procedure TFCBancarias.Q_BANCAfterDelete(DataSet: TDataSet);
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

procedure TFCBancarias.Q_BANCBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFCBancarias.Q_BANCAfterCancel(DataSet: TDataSet);
begin
  DBE_BAN_CODI.Enabled := false;
end;

procedure TFCBancarias.SBT_REFRClick(Sender: TObject);
begin
  Q_BANC.Close;

  Q_BANC.Open;

end;

procedure TFCBancarias.Q_BANCBeforeInsert(DataSet: TDataSet);
begin
  DBE_BAN_CODI.Enabled := True;
  DBE_BAN_CODI.Setfocus;
end;

procedure TFCBancarias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFCBancarias.Q_bancBeforePost(DataSet: TDataSet);
begin
  if DBE_BAN_CODI.text = '' then begin
     MessageDlg('Banco/Conta em Branco !',mterror, [mbOk], 0);
     DBE_BAN_CODI.setfocus ;
     abort ;
  end;
  if DBE_BAN_NOME.text = '' then begin
     MessageDlg('Nome em Branco !',mterror, [mbOk], 0);
     DBE_BAN_NOME.setfocus ;
     abort ;
  end;
  if DBE_BAN_AGEN.text = '' then begin
     MessageDlg('Agência em Branco !',mterror, [mbOk], 0);
     DBE_BAN_AGEN.setfocus ;
     abort ;
  end;

  if Q_bancBAN_SALD.AsString = '' then
        Q_bancBAN_SALD.Value := 0;
  

end;


procedure TFCBancarias.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqCBan, FPesqCBan);
   FPesqCBan.ShowModal ;
   FPesqCBan.Release ;
   if Gs_Banc <> '' then begin
      Q_BANC.Close;
      Q_BANC.Open;
      Q_BANC.locate('BAN_CODI',Gs_Banc,[]);
      Gs_Banc := '' ;
   end;
end;





procedure TFCBancarias.Q_bancNewRecord(DataSet: TDataSet);
begin
  Q_BANCBAN_SALD.asfloat := 0 ;
  Q_BANCBAN_DATA.asdatetime := date ; 
end;

procedure TFCBancarias.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFCBancarias.SpeedButton2Click(Sender: TObject);
begin
{   Application.CreateForm(tFRelCBancarias, FRelCBancarias);
   FRelCBancarias.QuickRep1.Preview;
   FRelCBancarias.Close;
   abort;
}

end;

procedure TFCBancarias.SpeedButton5Click(Sender: TObject);
begin
   Application.Createform(TFRelSaldo, FRelSaldo);
   FRelSaldo.QuickRep1.Preview;
   FRelSaldo.Release;

end;

procedure TFCBancarias.btnAddClick(Sender: TObject);
begin
  Fonte.BtnClick(nbInsert);
end;

procedure TFCBancarias.btnAtualizarClick(Sender: TObject);
begin
//  Fonte.BtnClick(nbRefresh);
end;

procedure TFCBancarias.btnCancelClick(Sender: TObject);
begin
  Fonte.BtnClick(nbCancel);
end;

procedure TFCBancarias.btnDeleteClick(Sender: TObject);
begin
   Fonte.BtnClick(nbDelete);
end;

procedure TFCBancarias.btnFirstClick(Sender: TObject);
begin
    Fonte.BtnClick(nbFirst);
end;

procedure TFCBancarias.btnLastClick(Sender: TObject);
begin
    Fonte.BtnClick(nbLast);
end;

procedure TFCBancarias.btnNextClick(Sender: TObject);
begin
     Fonte.BtnClick(nbNext);
end;

procedure TFCBancarias.btnPostClick(Sender: TObject);
begin
  if Fonte.DataSource.DataSet.State in [dsEdit, dsInsert] then
  Fonte.BtnClick(nbPost);
end;

procedure TFCBancarias.btnPriorClick(Sender: TObject);
begin
     Fonte.BtnClick(nbPrior);
end;

procedure TFCBancarias.DS_BANCDataChange(Sender: TObject; Field: TField);
var saldoajus : Real;
begin
//  if Q_bancBAN_PE.AsString = '1' then
//     cboPE.ItemIndex := 1;
//  if Q_bancBAN_PE.AsString = '2' then
//     cboPE.ItemIndex := 2;
//
//    if Q_bancBAN_PE.AsString = '3' then
//     cboPE.ItemIndex := 3;
//
//  if Q_bancBAN_PE.AsString = '0' then
//     cboPE.ItemIndex := 0;
//
//    if Q_bancBAN_PE.AsString = '-' then
//     cboPE.ItemIndex := 0;


        qrBxAberto.Params[0].Value := Q_bancBAN_CODI.Value;
        qrBxAberto.ExecSQL;

        qrSaldoAjustado.close;
        qrSaldoAjustado.Params[0].Value := Q_bancBAN_CODI.Value;
        qrSaldoAjustado.Open;


        saldoajus := Q_bancBAN_SALD.Value + qrSaldoAjustadoCREDITOS.Value - qrSaldoAjustadoDEBITOS.Value;


        lbSaldo.Caption := 'Saldo Ajustado: ' + FormatFloat('###,###,##0.00', saldoajus);


end;

end.

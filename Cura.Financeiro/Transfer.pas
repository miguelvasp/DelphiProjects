unit Transfer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, StdCtrls, ExtCtrls, DBCtrls, Mask,
  wwdbedit, wwdblook, Buttons, ComCtrls, Tabnotbk, Grids, Wwdbigrd,
  Wwdbgrid, Wwdotdot, Wwdbcomb;

type
  TFTransf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    SBT_REFR: TSpeedButton;
    Fonte: TDBNavigator;
    DS_Transf: TwwDataSource;
    Q_Transf: TwwQuery;
    Q_Banc: TwwQuery;
    Q_Cont: TwwQuery;
    UPD_Transf: TUpdateSQL;
    Q_BancBAN_CODI: TStringField;
    Q_BancBAN_NOME: TStringField;
    Q_ContCON_CODI: TStringField;
    Q_ContCON_DESC: TStringField;
    Q_TransfNumero: TIntegerField;
    Q_TransfBancoOrigem: TStringField;
    Q_TransfBancoDestino: TStringField;
    Q_TransfData: TDateTimeField;
    Q_TransfDocumento: TStringField;
    Q_TransfHistorico: TStringField;
    Q_TransfValor: TFloatField;
    Q_TransfEmiteCheque: TStringField;
    Q_TransfCtaGerencialOrig: TStringField;
    Q_TransfCtaGerencialDest: TStringField;
    Q_TransfFavorecido: TStringField;
    Q_TransfFilialOrigem: TStringField;
    Q_TransfFilialDestino: TStringField;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    txFav: TwwDBEdit;
    SBT_CONS: TSpeedButton;
    Q_FILI: TwwQuery;
    Q_FILIFIL_CODI: TStringField;
    Q_FILIFIL_DESC: TStringField;
    STP_ATUASALD: TStoredProc;
    Q_PARA: TwwQuery;
    Q_PARACtaGerencialOrig: TStringField;
    Q_PARACtaGerencialDest: TStringField;
    Q_PARAFilialOrigem: TStringField;
    Q_PARAFilialDestino: TStringField;
    Panel3: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label11: TLabel;
    cboBan: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    cboBan2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    DBCB_DIF_CHEQUE: TwwDBComboBox;
    Q_BancFIL_DESC: TStringField;
    Q_ContDS: TStringField;
    Q_BancBAN_CODEMPR: TStringField;
    Q_Bancempresa: TStringField;
    DataSource1: TDataSource;
    Label9: TLabel;
    Label13: TLabel;
    qrEmpOrigem: TwwQuery;
    qrEmpOrigemfil_desc: TStringField;
    qrEmpOrigemfil_codi: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_TransfAfterDelete(DataSet: TDataSet);
    procedure Q_TransfAfterPost(DataSet: TDataSet);
    procedure Q_TransfBeforeDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cboBanExit(Sender: TObject);
    procedure cboBan2Exit(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure Q_TransfBeforePost(DataSet: TDataSet);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure SBT_CONSClick(Sender: TObject);
    procedure Q_TransfNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure wwDBEdit3Exit(Sender: TObject);
    procedure txFavExit(Sender: TObject);
    procedure Q_TransfAfterScroll(DataSet: TDataSet);
    procedure Q_TransfEmiteChequeChange(Sender: TField);
    procedure DS_TransfDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransf: TFTransf;

implementation
uses CPPMENU, U_PesqTransf ;
{$R *.DFM}


procedure TFTransf.FormCreate(Sender: TObject);
begin
 Q_Fili.Open ;
 Q_TRANSF.open;
 Q_BANC.open;
 Q_CONT.open;
 Q_PARA.Open ;

end;

procedure TFTransf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Q_TRANSF.close;
   Q_BANC.Close;
   Q_CONT.close;
   Q_PARA.Close ;
   action:=cafree;
end;

procedure TFTransf.SBT_SAIRClick(Sender: TObject);
begin
close ;
end;

procedure TFTransf.Q_TransfAfterDelete(DataSet: TDataSet);
begin
 try
    FMenu.DATABASE1.ApplyUpdates([Q_Transf]);
  except
    Q_Transf.RevertRecord;
  end;

end;

procedure TFTransf.Q_TransfAfterPost(DataSet: TDataSet);
begin
try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_Transf]);
  end;
  except
    begin
      Q_Transf.RevertRecord;
    end;
  end;
  Q_Transf.Close;
  Q_Transf.Open;
  Q_Transf.Last ;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := cboBan.lookupvalue ;
    STP_ATUASALD.ExecProc;
  finally
  end;
  try
    STP_ATUASALD.ParamByName( '@Banco' ).Value := cboBan2.lookupvalue ;
    STP_ATUASALD.ExecProc;
  finally
  end;


end;

procedure TFTransf.Q_TransfBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;

end;

procedure TFTransf.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFTransf.cboBanExit(Sender: TObject);
begin
 if (cboBan.lookupvalue = cboBan2.lookupvalue) and (cboBan.Text <> '') then begin
    MessageDlg('Banco Origem Igual a Banco Destino',mterror, [mbok], 0) ;
    cboBan.setfocus ;
 end;
end;

procedure TFTransf.cboBan2Exit(Sender: TObject);
begin
 if (cboBan2.lookupvalue = cboBan.lookupvalue) and (cboBan2.Text <> '') then begin
    MessageDlg('Banco Origem Igual a Banco Destino',mterror, [mbok], 0) ;
    cboBan2.setfocus ;
end;
end;
procedure TFTransf.wwDBLookupCombo4Exit(Sender: TObject);
begin
//Foi solicitada a remoção desta validação pois pode haver transferência
//entre mesma C.Gerencial de diferentes Centros de Custos. Daniel

//if wwdblookupCombo4.lookupvalue = wwdblookupcombo3.lookupvalue then begin
//    MessageDlg('C.Gerencial Origem Igual a C.Gerencial Destino',mterror, [mbok], 0) ;
//    wwdblookupCombo4.setfocus ;
//end;
end;
procedure TFTransf.wwDBLookupCombo3Exit(Sender: TObject);
begin
//Foi solicitada a remoção desta validação pois pode haver transferência
//entre mesma C.Gerencial de diferentes Centros de Custos. Daniel

///  if wwdblookupCombo3.lookupvalue = wwdblookupcombo4.lookupvalue then begin
///    MessageDlg('C.Gerencial Origem Igual a C.Gerencial Destino',mterror, [mbok], 0) ;
//    wwdblookupCombo3.setfocus ;
//end;
end;

procedure TFTransf.Q_TransfBeforePost(DataSet: TDataSet);
begin
  if cboBan.text = '' then begin
     MessageDlg('Banco/Conta Origem em Branco !',mterror, [mbOk], 0);
     cboBan.setfocus ;
     abort ;
  end;
  if cboBan2.text = '' then begin
     MessageDlg('Banco/Conta Destino em Branco !',mterror, [mbOk], 0);
     cboBan2.setfocus ;
     abort ;
  end;
  if wwdbedit5.text = '' then begin
     MessageDlg('Data em Branco !',mterror, [mbOk], 0);
     wwdbedit5.setfocus ;
     abort ;
  end;
  if dbradiogroup1.value = '' then begin
     MessageDlg('Gera Cheque(Sim ou Não) em Branco !',mterror, [mbOk], 0);
     dbradiogroup1.setfocus ;
     abort ;
  end;

  if wwdblookupcombo4.text = '' then begin
     MessageDlg('C.Gerencial Origem em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo4.setfocus ;
     abort ;
  end;
  if wwdblookupcombo3.text = '' then begin
     MessageDlg('C.Gerencial Destino em Branco !',mterror, [mbOk], 0);
     wwdblookupcombo3.setfocus ;
     abort ;
  end;
  if (DBRadioGroup1.value = 'S' ) and (txFav.text = '' ) then begin
     MessageDlg('Favorecido em Branco !',mterror, [mbOk], 0);
     txFav.setfocus ;
     abort ;
  end;

  qrEmpOrigem.close;
  qrEmpOrigem.Params[0].AsString := Q_TransfBancoOrigem.Value;
  qrEmpOrigem.Open;

  if Q_Transf.State in [dsEdit, dsInsert] then
    Q_TransfFilialOrigem.Value := qrEmpOrigemfil_codi.Value;

  qrEmpOrigem.close;
  qrEmpOrigem.Params[0].AsString := Q_TransfBancoDestino.Value;
  qrEmpOrigem.Open;

  if Q_Transf.State in [dsEdit, dsInsert] then
     Q_TransfFilialDestino.Value := qrEmpOrigemfil_codi.Value;


end;











procedure TFTransf.DBRadioGroup1Exit(Sender: TObject);
begin
    if DBRadioGroup1.value = 'S' then begin
//       MessageDlg('Favorecido em Branco !',mterror, [mbOk], 0);
       txFav.enabled := true ;
 //      wwdbedit6.setfocus ;
  //     abort ;
    end else txFav.enabled := false ;

end;







procedure TFTransf.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqTransf, FPesqTransf);
   FPesqTransf.ShowModal ;
   FPesqTransf.Release ;
   if Gs_Tran <> '' then begin
      Q_TRANSF.Close;
      Q_TRANSF.Open;
      Q_TRANSF.locate('NUMERO',Gs_Tran,[]);
      Gs_Tran := '' ;
   end;
end;



procedure TFTransf.Q_TransfNewRecord(DataSet: TDataSet);
begin
   Q_TRANSFCtaGerencialOrig.Asstring  := Q_PARACtaGerencialOrig.asstring;
   Q_TRANSFCtaGerencialDest.Asstring  := Q_PARACtaGerencialDest.asstring;
   Q_TRANSFFilialOrigem.Asstring      := Q_PARAFilialOrigem.asstring;
   Q_TRANSFFilialDestino.Asstring     := Q_PARAFilialDestino.asstring;
   Q_TRANSFEmiteCheque.Asstring     := 'N';

end;

procedure TFTransf.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFTransf.wwDBEdit3Exit(Sender: TObject);
begin
        If txFav.Enabled then
                txFav.SetFocus
        Else
                cboBan.SetFocus
                
end;

procedure TFTransf.txFavExit(Sender: TObject);
begin
        cboBan.SetFocus;
end;

procedure TFTransf.Q_TransfAfterScroll(DataSet: TDataSet);
begin
        If Q_TRANSFEmiteCheque.Asstring = 'N' then
                txFav.Enabled := False
        Else
                txFav.Enabled := True
end;

procedure TFTransf.Q_TransfEmiteChequeChange(Sender: TField);
begin
        If Q_TRANSFEmiteCheque.Asstring = 'N' then
                txFav.Enabled := False
        Else
                txFav.Enabled := True

end;

procedure TFTransf.DS_TransfDataChange(Sender: TObject; Field: TField);
begin
  qrEmpOrigem.close;
  qrEmpOrigem.Params[0].AsString := Q_TransfBancoOrigem.Value;
  qrEmpOrigem.Open;

  Label9.Caption := 'Empresa: ' + qrEmpOrigemfil_desc.Value;


  qrEmpOrigem.close;
  qrEmpOrigem.Params[0].AsString := Q_TransfBancoDestino.Value;
  qrEmpOrigem.Open;

  Label13.Caption := 'Empresa: ' + qrEmpOrigemfil_desc.Value;


end;

end.

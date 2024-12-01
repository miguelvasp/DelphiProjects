unit CPPDIFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Wwdbedit, Buttons, DB, DBTables, Wwdatsrc, Wwquery,
  DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Wwtable,
  Wwdotdot, Wwdbcomb, RzTabs;

type
  TFDescAcres = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Fonte: TDBNavigator;
    Q_DIFE: TwwQuery;
    DS_DIFE: TwwDataSource;
    UPD_DIFE: TUpdateSQL;
    SBT_SAIR: TSpeedButton;
    LBL_STATUS: TLabel;
    SBT_REFR: TSpeedButton;
    Q_DIFEDIF_CODI: TStringField;
    Q_DIFEDIF_DESC: TStringField;
    Q_DIFEDIF_SINAL: TStringField;
    Q_DIFEDIF_CTCO: TStringField;
    T_CTCO: TwwTable;
    DS_CTCO: TwwDataSource;
    T_CTCOCTC_CODI: TStringField;
    T_CTCOCTC_DESC: TStringField;
    SBT_CONS: TSpeedButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBE_DIF_CODI: TwwDBEdit;
    DBE_DIF_DESC: TwwDBEdit;
    DBLC_DIF_CTCO: TwwDBLookupCombo;
    DBR_DIF_SINAL: TDBRadioGroup;
    DBG_DIFE: TwwDBGrid;
    DBG_DIFEIButton: TwwIButton;
    DBCB_DIF_SINAL: TwwDBComboBox;
    qrAliquotas: TwwQuery;
    qrAliquotasDIF_CODI: TStringField;
    qrAliquotasLIMITE_INFERIOR: TFloatField;
    qrAliquotasLIMITE_SUPERIOR: TFloatField;
    qrAliquotasALIQUOTA: TFloatField;
    qrAliquotasVALOR_ABATER: TFloatField;
    dsAliquotas: TDataSource;
    wwDBGrid1: TwwDBGrid;
    upd_aliquota: TUpdateSQL;
    qrAliquotasID: TAutoIncField;
    Label5: TLabel;
    DBText1: TDBText;
    Q_DIFEDIF_FORN: TStringField;
    Q_DIFEDIF_PRAZO: TIntegerField;
    Q_DIFEDIF_CALCULO: TStringField;
    qrFornecedores: TwwQuery;
    qrFornecedoresFOR_CODI: TStringField;
    qrFornecedoresFOR_RAZA: TStringField;
    Q_DIFEDIF_RETFONTE: TStringField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label9: TLabel;
    cboCalculo: TwwDBComboBox;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    cboAntecipaVenc: TwwDBComboBox;
    Q_DIFEDIF_ANTECIPA: TStringField;
    Label11: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Q_DIFEDIF_VENC: TStringField;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_DIFEAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DS_DIFEStateChange(Sender: TObject);
    procedure Q_DIFEAfterDelete(DataSet: TDataSet);
    procedure Q_DIFEBeforeDelete(DataSet: TDataSet);
    procedure Q_DIFEAfterCancel(DataSet: TDataSet);
    procedure SBT_REFRClick(Sender: TObject);
    procedure Q_DIFEBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_DIFEBeforePost(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FonteClick(Sender: TObject; Button: TNavigateBtn);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure wwDBComboBox1Change(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure qrAliquotasAfterPost(DataSet: TDataSet);
    procedure DS_DIFEDataChange(Sender: TObject; Field: TField);
    procedure qrAliquotasBeforePost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure qrAliquotasAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescAcres: TFDescAcres;

implementation

uses CPPMENU, UPesqDAcr;

{$R *.DFM}

procedure TFDescAcres.SBT_SAIRClick(Sender: TObject);
begin
  FDescAcres.Close;
end;

procedure TFDescAcres.Q_DIFEAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([Q_DIFE]);
  end;
  except
    begin
      Q_DIFE.RevertRecord;
    end;
  end;
  DBE_DIF_CODI.Enabled := false;
 // Q_DIFE.Close;
 // Q_DIFE.Open;
end;

procedure TFDescAcres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_DIFE.Close;
  T_CTCO.Close;
  Action := caFree;
end;

procedure TFDescAcres.FormShow(Sender: TObject);
begin
  Q_DIFE.Open;
  T_CTCO.Open;
  qrFornecedores.Open;
  RzPageControl1.ActivePageIndex := 0;
end;

procedure TFDescAcres.DS_DIFEStateChange(Sender: TObject);
begin
  if (Q_DIFE.State = dsEdit) or (Q_DIFE.State = dsInsert) then
  begin
    SBT_SAIR.Enabled := false;
    SBT_REFR.Enabled := false;
    if Q_DIFE.State = dsEdit then
    begin
      LBL_STATUS.Caption := 'ALTERAÇÃO';
    end
    else
    begin
      LBL_STATUS.Caption := 'INCLUSÃO';
      DBE_DIF_CODI.Enabled := true;
      DBE_DIF_CODI.SetFocus;
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

procedure TFDescAcres.Q_DIFEAfterDelete(DataSet: TDataSet);
begin
  try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_DIFE]);
    end;
  except
    begin
       Q_DIFE.RevertRecord;
    end;
  end;
end;

procedure TFDescAcres.Q_DIFEBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFDescAcres.Q_DIFEAfterCancel(DataSet: TDataSet);
begin
  DBE_DIF_CODI.Enabled := false;
end;

procedure TFDescAcres.SBT_REFRClick(Sender: TObject);
begin
  Q_DIFE.Close;
  T_CTCO.Close;
  Q_DIFE.Open;
  T_CTCO.Open;
end;

procedure TFDescAcres.Q_DIFEBeforeInsert(DataSet: TDataSet);
begin
  DBE_DIF_CODI.Enabled := True;
  DBE_DIF_CODI.Setfocus;
end;

procedure TFDescAcres.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(WM_nextdlgctl,0,0);
  end;
end;

procedure TFDescAcres.Q_DIFEBeforePost(DataSet: TDataSet);
var valor:real;
begin
  if DBE_DIF_CODI.text = '' then begin
     MessageDlg('Código em Branco !',mterror, [mbOk], 0);
     DBE_DIF_CODI.setfocus ;
     abort ;
  end;
  
  if DBE_DIF_DESC.text = '' then begin
     MessageDlg('Descrição em Branco !',mterror, [mbOk], 0);
     DBE_DIF_DESC.setfocus ;
     abort ;
  end;




  {miguel - comentei essas duas linhas}
  //valor := q_difedif_aliq.Value;
  // q_difedif_aliq.Value := (valor * 100)/100;



//  if DBR_DIF_SINAL.values = '' then begin
//     MessageDlg('Sinal(Soma ou Subtrai) em Branco !',mterror, [mbOk], 0);
//     DBR_DIF_SINAL.setfocus ;
//     abort ;
//  end;
end;


procedure TFDescAcres.SBT_CONSClick(Sender: TObject);
begin
   Application.CreateForm(TFPesqDAcr, FPesqDAcr);
   FPesqDAcr.ShowModal ;
   FPesqDAcr.Release ;
   if Gs_DRES <> '' then begin
      Q_DIFE.Close;
      Q_DIFE.Open;
      Q_DIFE.locate('DIF_CODI',Gs_DRES,[]);
      Gs_DRES := '' ;
end;
end;
procedure TFDescAcres.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

procedure TFDescAcres.FonteClick(Sender: TObject; Button: TNavigateBtn);
begin
//        if q_difedif_retfonte.asstring = 'S' then begin
//           label8.Visible := true;
//           wwdbedit2.Visible := true;
//        end
//        else begin
//             label8.Visible := false;
//             wwdbedit2.Visible := false;
//        end;

end;

procedure TFDescAcres.wwDBComboBox1Exit(Sender: TObject);
begin
//        if wwdbcombobox1.Value = 'S' then begin
//           label8.Visible := true;
//           wwdbedit2.Visible := true;
//        end
//        else begin
//             label8.Visible := false;
//             wwdbedit2.Visible := false;
//        end;

end;

procedure TFDescAcres.wwDBComboBox1Change(Sender: TObject);
begin
//        if wwdbcombobox1.Value = 'S' then begin
//           label8.Visible := true;
//           wwdbedit2.Visible := true;
//        end
//        else begin
//             label8.Visible := false;
//             wwdbedit2.Visible := false;
//        end;

end;

procedure TFDescAcres.RzPageControl1Change(Sender: TObject);
begin
        if RzPageControl1.ActivePageIndex = 0 then
                Fonte.DataSource := DS_DIFE
        else
                Fonte.DataSource := dsAliquotas;
end;

procedure TFDescAcres.qrAliquotasAfterPost(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([qrAliquotas]);
  end;
  except
    begin
      qrAliquotas.RevertRecord;
    end;
  end;

  qrAliquotas.Close;
  qrAliquotas.Open;
  qrAliquotas.Append;
end;

procedure TFDescAcres.DS_DIFEDataChange(Sender: TObject; Field: TField);
begin
        qrAliquotas.close;
        qrAliquotas.Open;
        GroupBox1.Visible := DBCheckBox1.Checked;
end;

procedure TFDescAcres.qrAliquotasBeforePost(DataSet: TDataSet);
begin
    qrAliquotasDIF_CODI.Value := Q_DIFEDIF_CODI.Value;
    IF qrAliquotasLIMITE_SUPERIOR.AsString = '' then
        qrAliquotasLIMITE_SUPERIOR.Value := 999999999;

    if qrAliquotasLIMITE_SUPERIOR.AsString <> '' then
      IF qrAliquotasLIMITE_INFERIOR.Value >= qrAliquotasLIMITE_SUPERIOR.Value then
      BEGIN
          MessageBox(Self.Handle, 'Limite superior incorreto!', 'Erro', MB_OK + MB_ICONERROR);
          Abort;
      end;
end;

procedure TFDescAcres.wwDBGrid1Enter(Sender: TObject);
begin
   FDescAcres.KeyPreview := False;
end;

procedure TFDescAcres.wwDBGrid1Exit(Sender: TObject);
begin
   FDescAcres.KeyPreview := True;
end;

procedure TFDescAcres.DBCheckBox1Click(Sender: TObject);
begin
        GroupBox1.Visible := DBCheckBox1.Checked;
end;

procedure TFDescAcres.qrAliquotasAfterDelete(DataSet: TDataSet);
begin
  try
  begin
    FMenu.DATABASE1.ApplyUpdates([qrAliquotas]);
  end;
  except
    begin
      qrAliquotas.RevertRecord;
    end;
  end;

  qrAliquotas.Close;
  qrAliquotas.Open;
end;

end.

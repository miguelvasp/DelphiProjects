unit UPag_For;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwdatsrc, Wwquery, Grids, Wwdbigrd, Wwdbgrid, DBCtrls,
  Buttons, StdCtrls, ExtCtrls, wwdblook, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFPag_For = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SBT_SAIR: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    DBG_TXPA: TwwDBGrid;
    Q_PARA: TwwQuery;
    DS_PARA: TwwDataSource;
    UPD_PARA: TUpdateSQL;
    Q_PARADescricao: TStringField;
    Q_PARAQtde_Dig: TIntegerField;
    Q_PARAObs: TMemoField;
    Q_PARATipo: TStringField;
    Q_PARATabela: TStringField;
    Q_PARACampo: TStringField;
    Q_PARAFixo: TStringField;
    Q_PARAPag_For_ID: TAutoIncField;
    Q_DIFE: TwwQuery;
    Q_DIFENAME: TStringField;
    Q_DIFEID: TIntegerField;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Q_CAMPO: TwwQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    DS_DIFE: TwwDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    cboStat: TwwDBComboBox;
    Q_TABELA: TwwQuery;
    Label2: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Q_TABELANAME: TStringField;
    Q_TABELAID: TIntegerField;
    SBT_CONS: TSpeedButton;
    Q_PARAOrdem: TIntegerField;
    Q_AUX: TwwQuery;
    Q_AUXQT: TIntegerField;
    Q_PARAPOS_INI: TStringField;
    Q_PARAPOS_FIM: TStringField;
    procedure Q_PARAAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBT_SAIRClick(Sender: TObject);
    procedure Q_PARABeforeDelete(DataSet: TDataSet);
    procedure Q_PARAAfterDelete(DataSet: TDataSet);
    procedure Q_PARATabelaChange(Sender: TField);
    procedure Q_PARANewRecord(DataSet: TDataSet);
    procedure SBT_CONSClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBG_TXPAColExit(Sender: TObject);
    procedure Q_PARACalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPag_For: TFPag_For;

implementation

uses CPPMENU;

{$R *.DFM}

procedure TFPag_For.Q_PARAAfterPost(DataSet: TDataSet);
VAR SQL, Chave: STRING;
begin
 try
  begin
    Chave := Q_PARAOrdem.AsString;
    FMenu.DATABASE1.ApplyUpdates([Q_PARA]);
  end;
  except
    begin
      Q_PARA.RevertRecord;
    end;
  end;

  Q_PARA.Close;
  Q_PARA.Open;
  If Chave <> '' then
        Q_PARA.Locate('ORDEM',Chave, []);

end;

procedure TFPag_For.FormCreate(Sender: TObject);
begin
         Q_PARA.Open;
         Q_DIFE.Open;
         Q_TABELA.open;

end;

procedure TFPag_For.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         Q_PARA.Close;
         Q_DIFE.CLOSE;
         Q_TABELA.close;
end;

procedure TFPag_For.SBT_SAIRClick(Sender: TObject);
begin
        close;
end;

procedure TFPag_For.Q_PARABeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma Exclusão ?',
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      Abort;
    end;
end;

procedure TFPag_For.Q_PARAAfterDelete(DataSet: TDataSet);
begin
try
    begin
      FMenu.DATABASE1.ApplyUpdates([Q_para]);
    end;
  except
     On E:EdbEngineError do
     begin
        MessageDlg('Erro ao Gravar Tabela, '+#13+#10+
        E.Message,MtError,[MbOk],0);
     end;
  end;
end;

procedure TFPag_For.Q_PARATabelaChange(Sender: TField);
begin
      Q_CAMPO.CLOSE;
      Q_CAMPO.Open;
end;

procedure TFPag_For.Q_PARANewRecord(DataSet: TDataSet);
VAR SQL: STRING;
begin
        if wwDBLookupCombo2.Text <> '' then begin
           Q_PARATabela.AsString:= Q_TABELANAME.AsString;
           Q_DIFE.SQL.ADD(' AND ID = ' + Q_TABELAID.AsString);
           Q_DIFE.CLOSE;
           Q_DIFE.OPEN;
           Q_CAMPO.CLOSE;
           Q_CAMPO.OPEN;
        end;
  
end;

procedure TFPag_For.SBT_CONSClick(Sender: TObject);
begin
        wwDBLookupCombo2.Text:= '';
end;

procedure TFPag_For.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    //    Q_PARA.Insert;
    //    DBG_TXPA.SelectedField:= Q_PARADescricao;
end;

procedure TFPag_For.DBG_TXPAColExit(Sender: TObject);
begin
       if DBG_TXPA.Selectedfield = Q_PARATipo then
            Q_PARA.Edit;
end;

procedure TFPag_For.Q_PARACalcFields(DataSet: TDataSet);
begin
        Q_AUX.CLOSE;
        Q_AUX.OPEN;

        Q_PARAPOS_INI.ASSTRING := Q_AUXQT.ASSTRING;
        Q_PARAPOS_FIM.AsInteger := Q_AUXQT.ASINTEGER + Q_PARAQTDE_DIG.AsInteger - 1;

        Q_PARAPOS_INI.ASSTRING := Copy('00000',1,3-length(Q_PARAPOS_INI.ASSTRING)) +
                                  Q_PARAPOS_INI.ASSTRING;

        Q_PARAPOS_FIM.ASSTRING := Copy('00000',1,3-length(Q_PARAPOS_FIM.ASSTRING)) +
                                  Q_PARAPOS_FIM.ASSTRING;

end;

end.



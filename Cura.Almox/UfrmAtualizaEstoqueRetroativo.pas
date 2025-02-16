unit UfrmAtualizaEstoqueRetroativo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RzTabs, StdCtrls, wwdblook, Db, ADODB, ExtCtrls, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, Mask;

type
  TfrmAtualizaEstoqueRetroativo = class(TForm)
    qrGrupo: TADOQuery;
    qrMateriais: TADOQuery;
    qrMateriaisMAT_DESC: TStringField;
    qrMateriaisMAT_ID: TAutoIncField;
    qrBusca: TADOQuery;
    qrBuscaMAT_ID: TIntegerField;
    qrBuscaMAT_DESC: TStringField;
    qrBuscaSEL: TStringField;
    qrAux: TADOQuery;
    dsBusca: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    cboGrupo: TwwDBLookupCombo;
    cboMateriais: TwwDBLookupCombo;
    Button1: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    edtDataInicio: TMaskEdit;
    wwDBGrid1: TwwDBGrid;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    qrMateriaisHist: TADOQuery;
    StringField1: TStringField;
    AutoIncField1: TAutoIncField;
    Label5: TLabel;
    cboMateriaisHist: TwwDBLookupCombo;
    Button3: TButton;
    wwDBGrid2: TwwDBGrid;
    qrBuscaHist: TADOQuery;
    qrBuscaHistDataReferencia: TDateTimeField;
    qrBuscaHistMAT_DESC: TStringField;
    qrBuscaHistQTDE: TFloatField;
    qrBuscaHistREPOSICAO: TBCDField;
    qrBuscaHistCUSTO_MEDIO: TBCDField;
    dsBuscaHist: TDataSource;
    qrBuscaHistDescricao: TStringField;
    rbOpcoes: TRadioGroup;
    Label6: TLabel;
    edtValor: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizaEstoqueRetroativo: TfrmAtualizaEstoqueRetroativo;

implementation

uses UMenu;

{$R *.DFM}

procedure TfrmAtualizaEstoqueRetroativo.FormCreate(Sender: TObject);
begin

  PageControl1.ActivePageIndex := 0;

  qrGrupo.Open;
  qrMateriais.Open;
  qrMateriaisHist.Open;
end;

procedure TfrmAtualizaEstoqueRetroativo.Button1Click(Sender: TObject);
begin
  with qrAux do begin
      close;
      sql.Clear;
      SQL.Add('DELETE FROM AuxMateriaisRetroativos') ;
      ExecSQL;
  end;

  with qrAux do begin
      close;
      sql.Clear;
      SQL.Add(
           ' INSERT INTO AuxMateriaisRetroativos(MAT_ID, MAT_DESC, SEL) '+
           ' SELECT   '+
           '         MAT_ID, MAT_DESC, ''N''  '+
           ' FROM MATERIAIS  '+
           ' WHERE 1 = 1  '
      ) ;

      IF cboGrupo.Text <> '' then
        sql.Add(' AND GRU_ID = ' + cboGrupo.LookupValue);

      if cboMateriais.Text <> '' then
        SQL.Add(' AND MAT_ID = ' + cboMateriais.LookupValue);

      ExecSQL;
  end;

  with qrBusca do begin
      CLOSE;
      SQL.Clear;
      SQL.Add('SELECT * FROM AuxMateriaisRetroativos ORDER BY MAT_DESC');
      Open;
  end;


end;

procedure TfrmAtualizaEstoqueRetroativo.CheckBox1Click(Sender: TObject);
begin
      with qrAux do begin
          close;
          sql.Clear;
           if CheckBox1.Checked then begin
               SQL.Add('UPDATE AuxMateriaisRetroativos SET SEL = ''S'' ') ;
           end
           else begin
               SQL.Add('UPDATE AuxMateriaisRetroativos SET SEL = ''N'' ') ;
           end;
          ExecSQL;
      end;


      with qrBusca do begin
          CLOSE;
          SQL.Clear;
          SQL.Add('SELECT * FROM AuxMateriaisRetroativos ORDER BY MAT_DESC');
          Open;
      end;

end;

procedure TfrmAtualizaEstoqueRetroativo.Button2Click(Sender: TObject);
begin
      if qrBusca.State in [dsEdit] then
         qrBusca.Post;

      with qrBusca do begin
          CLOSE;
          SQL.Clear;
          SQL.Add('SELECT * FROM AuxMateriaisRetroativos WHERE SEL = ''S'' ORDER BY MAT_DESC');
          Open;
      end;

      qrBusca.Last;
      qrBusca.First;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := qrBusca.RecordCount;


      //efetua as atualiza��es manuais
      if rbOpcoes.ItemIndex > 0 then begin
          if qrBusca.RecordCount > 1 then begin
              ShowMessage('Para altera��es de valor manual, s� pode ser selecionado um material por vez');
              Abort;
          end;


          if rbOpcoes.ItemIndex = 1 then begin
             with qrAux do begin
                 close;
                 sql.Clear;
                 sql.Add(
                 ' UPDATE StorageCura..stoHistoricoEstoque set REPOSICAO = ' + StringReplace(edtValor.Text, ',', '.', [rfReplaceAll])+
                 ' where MAT_ID = ' + qrBuscaMAT_ID.AsString +
                 ' AND CONVERT(VARCHAR, DataReferencia, 112) >= ' + '''' + FormatDateTime('yyyyMMdd', StrToDate(edtDataInicio.Text)) + ''''
                 );
                 ExecSQL;
             end;

            ShowMessage('Atualiza��o efetuada com sucesso!');
            Abort;
          end;


          if rbOpcoes.ItemIndex = 2 then begin
             with qrAux do begin
                 close;
                 sql.Clear;
                 sql.Add(
                 ' UPDATE StorageCura..stoHistoricoEstoque set CUSTO_MEDIO = ' + StringReplace(edtValor.Text, ',', '.', [rfReplaceAll])+
                 ' where MAT_ID = ' + qrBuscaMAT_ID.AsString+
                 ' AND CONVERT(VARCHAR, DataReferencia, 112) >= ' + '''' + FormatDateTime('yyyyMMdd', StrToDate(edtDataInicio.Text)) + ''''
                 );
                 ExecSQL;
             end;

            ShowMessage('Atualiza��o efetuada com sucesso!');
            Abort;
          end;

      end;



      ProgressBar1.Visible := True;
      Label2.Visible := True;

      while not qrBusca.Eof do begin
          Label2.Caption := 'Atualizando Material: ' + qrBuscaMAT_DESC.AsString;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Application.ProcessMessages;

          with qrAux do begin
              close;
              sql.Clear;
              SQL.Add('EXEC SP_STORAGE_RECALCULA_CUSTO_REPOSICAO @MAT_ID = ' + qrBuscaMAT_ID.AsString + ', @DATA_CORTE = ' + '''' + FormatDateTime('YYYY-MM-DD', StrToDate(edtDataInicio.Text)) + '''' ) ;
              ExecSQL;
          end;


          qrBusca.Next;
      end;

      ProgressBar1.Visible := false;
      Label2.Visible := false;

      qrBusca.Close;
      ShowMessage('Atualiza��o efetuada com sucesso!');


end;

procedure TfrmAtualizaEstoqueRetroativo.Button3Click(Sender: TObject);
begin
   qrBuscaHist.Close;
   qrBuscaHist.Parameters[0].Value := StrToInt(cboMateriaisHist.LookupValue);
   qrBuscaHist.Open;
end;

end.

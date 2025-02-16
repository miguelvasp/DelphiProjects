unit ufrmBionexoUpload;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, DBCtrls, ADODB, Buttons,
  ExtCtrls, wwdblook, DBTables, Wwquery;

type
  TfrmBionexoUpload = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    btOc: TSpeedButton;
    Panel1: TPanel;
    qrBionexo: TADOQuery;
    qrBionexobioId: TAutoIncField;
    qrBionexodata: TDateTimeField;
    qrBionexousuario: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    wwDBGrid1: TwwDBGrid;
    pnlAddItem: TPanel;
    qrItens: TADOQuery;
    qrItensItemId: TAutoIncField;
    qrItensbioId: TIntegerField;
    qrItensmat_id: TIntegerField;
    qrItensmat_desc: TStringField;
    qrItenscodBionexo: TStringField;
    qrItensQtdeTotal: TFloatField;
    qrItensdata1: TDateTimeField;
    qrItensqtde1: TFloatField;
    qrItensdata2: TDateTimeField;
    qrItensqtde2: TFloatField;
    qrItensdata3: TDateTimeField;
    qrItensqtde3: TFloatField;
    qrItensdata4: TDateTimeField;
    qrItensqtde4: TFloatField;
    qrItensdata5: TDateTimeField;
    qrItensqtde5: TFloatField;
    qrItensdata6: TDateTimeField;
    qrItensqtde6: TFloatField;
    qrItensdata7: TDateTimeField;
    qrItensqtde7: TFloatField;
    qrItensdata8: TDateTimeField;
    qrItensqtde8: TFloatField;
    qrItensdata9: TDateTimeField;
    qrItensqtde9: TFloatField;
    qrItensdata10: TDateTimeField;
    qrItensqtde10: TFloatField;
    qrItensstatusItem: TStringField;
    DataSource2: TDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    pnl1: TPanel;
    btnAdd: TSpeedButton;
    btnPost: TSpeedButton;
    btnDelete: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Q_MAT: TwwQuery;
    Q_MATMAT_DESC: TStringField;
    Q_MATMAT_ID: TAutoIncField;
    SaveDialog1: TSaveDialog;
    Q_MATCOD_BIONEXO: TStringField;
    SpeedButton2: TSpeedButton;
    qrItensMarcaId: TIntegerField;
    qrItensMarcaDesc: TStringField;
    qrMarcas: TADOQuery;
    qrMarcasMARCA_ID: TAutoIncField;
    qrMarcasMARCA_DESC: TStringField;
    qrMarcasCodBionexo: TStringField;
    qrAux: TADOQuery;
    qrAuxCodBionexo: TStringField;
    cboMarca: TwwDBLookupCombo;
    Label26: TLabel;
    Button1: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure qrItensNewRecord(DataSet: TDataSet);
    procedure qrItensBeforePost(DataSet: TDataSet);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btOcClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure cboMarcaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBionexoUpload: TfrmBionexoUpload;

implementation

uses UMenu, UMateriais;

{$R *.DFM}

procedure TfrmBionexoUpload.btnAddClick(Sender: TObject);
begin
//  pnlAddItem.Visible := True;
  wwDBLookupCombo1.SetFocus;
  qrItens.Append;
end;

procedure TfrmBionexoUpload.qrItensNewRecord(DataSet: TDataSet);
begin
   qrItensbioId.Value := qrBionexobioId.AsInteger;
   qrItensstatusItem.Value := 'Prepara��o';
end;

procedure TfrmBionexoUpload.qrItensBeforePost(DataSet: TDataSet);
begin
   if qrItensmat_id.AsString = '' then begin
       ShowMessage('Informe o material');
       Abort;
   end;

   if qrItensQtdeTotal.AsString = '' then begin
       ShowMessage('Informe a quantidade total');
       Abort;
   end;

//   with qrAux do begin
//       Close;
//       Parameters[0].Value := qrItensmat_id.AsInteger;
//       Parameters[1].Value := qrItensMarcaId.AsInteger;
//       Open;
//   end;
//   qrItenscodBionexo.AsString := qrAuxCodBionexo.AsString;
//   if qrItensMarcaDesc.Value <> '' then begin
//     qrItensMarcaDesc.Value := qrMarcasMARCA_DESC.Value;
//     qrItensMarcaId.Value := qrMarcasMARCA_ID.Value;
//   end;
end;

procedure TfrmBionexoUpload.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   qrItens.Close;
   qrItens.Parameters[0].Value := qrBionexobioId.AsInteger;
   qrItens.Open;
end;

procedure TfrmBionexoUpload.btOcClick(Sender: TObject);
var total, soma : Real;
    Erro : Boolean;
    Filex : TStringList;
    StrLine : WideString;
begin
   Erro := False;
   qrItens.First;
   while not qrItens.Eof do begin

        if qrItenscodBionexo.Value = '' then begin
            Erro := True;
            ShowMessage('Material ' + qrItensmat_desc.AsString + ' sem c�digo Bionexo');
            Abort;
        end;

        if qrItensqtde1.AsString <> '' then begin
            if qrItensdata1.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data1');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde2.AsString <> '' then begin
            if qrItensdata2.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data2');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde3.AsString <> '' then begin
            if qrItensdata3.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data3');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde4.AsString <> '' then begin
            if qrItensdata4.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data4');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde5.AsString <> '' then begin
            if qrItensdata5.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data5');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde6.AsString <> '' then begin
            if qrItensdata6.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data6');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde7.AsString <> '' then begin
            if qrItensdata7.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data7');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde8.AsString <> '' then begin
            if qrItensdata8.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data8');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde9.AsString <> '' then begin
            if qrItensdata9.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data9');
                Erro := True;
                qrItens.Last;
            end;
        end;

        if qrItensqtde10.AsString <> '' then begin
            if qrItensdata10.AsString = '' then begin
                ShowMessage('Material ' + qrItensmat_desc.AsString + ' preencha a data10');
                Erro := True;
                qrItens.Last;
            end;
        end;
        qrItens.Next;
   end;





   //caso nao exista erro geramos o arquivo
   if Erro = False then begin
       if MessageBox(Self.Handle, 'Deseja exportar os dados?', 'Confirma��o', MB_YESNO) = 6 then begin
           SaveDialog1.Execute;
           if SaveDialog1.FileName <> '' then begin
                Filex := TStringList.Create;
                qrItens.First;
                while not qrItens.Eof do begin
                    StrLine := '';
                    StrLine := StrLine + qrItenscodBionexo.AsString + ';';
                    StrLine := StrLine + qrItensQtdeTotal.AsString + ';';
                    StrLine := StrLine + qrItensbioId.AsString + ';';
                    if (qrItensdata1.AsString <> '') and (qrItensqtde1.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata1.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde1.AsString + ';';
                    end;
                    if (qrItensdata2.AsString <> '') and (qrItensqtde2.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata2.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde2.AsString + ';';
                    end;
                    if (qrItensdata3.AsString <> '') and (qrItensqtde3.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata3.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde3.AsString + ';';
                    end;
                    if (qrItensdata4.AsString <> '') and (qrItensqtde4.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata4.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde4.AsString + ';';
                    end;
                    if (qrItensdata5.AsString <> '') and (qrItensqtde5.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata5.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde5.AsString + ';';
                    end;
                    if (qrItensdata6.AsString <> '') and (qrItensqtde6.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata6.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde6.AsString + ';';
                    end;
                    if (qrItensdata7.AsString <> '') and (qrItensqtde7.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata7.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde7.AsString + ';';
                    end;
                    if (qrItensdata8.AsString <> '') and (qrItensqtde8.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata8.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde8.AsString + ';';
                    end;
                    if (qrItensdata9.AsString <> '') and (qrItensqtde9.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata9.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde9.AsString + ';';
                    end;
                    if (qrItensdata10.AsString <> '') and (qrItensqtde10.AsFloat > 0) then begin
                        StrLine := StrLine + FormatDateTime('dd/MM/yyyy', qrItensdata10.AsDateTime) + ';';
                        StrLine := StrLine + qrItensqtde10.AsString + ';';
                    end;
                    Filex.Add(StrLine);
                    qrItens.Edit;
                    qrItensstatusItem.Value := 'Exportado';
                    qrItens.Post;
                    qrItens.next;
                end;
                Filex.SaveToFile(SaveDialog1.FileName);
                ShowMessage('Arquivos salvo com sucesso');
           end;
       end;
   end;

end;

procedure TfrmBionexoUpload.btnPostClick(Sender: TObject);
begin
   if qrItens.State in [dsEdit, dsInsert] then
        qrItens.Post;

   //pnlAddItem.Visible := False;
end;

procedure TfrmBionexoUpload.btnDeleteClick(Sender: TObject);
begin
   if MessageBox(Self.Handle, 'Deseja excluir o material', 'Confirma��o', MB_YESNO)= 6 then
        qrItens.Delete;
end;

procedure TfrmBionexoUpload.SpeedButton5Click(Sender: TObject);
begin
   qrItens.Cancel;
   pnlAddItem.Visible := False;
end;

procedure TfrmBionexoUpload.SpeedButton1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmBionexoUpload.FormShow(Sender: TObject);
begin
   Q_MAT.Open;
end;

procedure TfrmBionexoUpload.wwDBLookupCombo1Exit(Sender: TObject);
begin
    if wwDBLookupCombo1.Text <> '' then begin
        qrItensmat_desc.Value := Q_MATMAT_DESC.Value;
        qrItenscodBionexo.Value := Q_MATCOD_BIONEXO.Value;
    end;
end;

procedure TfrmBionexoUpload.SpeedButton2Click(Sender: TObject);
begin
    qrBionexo.Append;
    qrBionexodata.Value := Now;
    qrBionexousuario.Value := FMenu.sqlUsuariosNOME_COMPLETO.AsString;
    qrBionexo.Post;
end;

procedure TfrmBionexoUpload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmBionexoUpload := nil;
end;

procedure TfrmBionexoUpload.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  qrMarcas.Close;
  qrMarcas.Parameters[0].Value := qrItensmat_id.AsInteger;
  qrMarcas.Open;
  if qrItensMarcaId.AsInteger = 0 then begin
      cboMarca.Text := '';
      cboMarca.LookupValue := '';
  end;
end;

procedure TfrmBionexoUpload.cboMarcaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   qrItensMarcaDesc.Value := qrMarcasMARCA_DESC.Value;
   qrItenscodBionexo.Value := qrMarcasCodBionexo.Value;
end;

procedure TfrmBionexoUpload.Button1Click(Sender: TObject);
begin
        Application.CreateForm(TFMateriais, FMateriais);
        FMateriais.Q_MAT.CLOSE;
        FMateriais.Q_MAT.SQL.Clear;
        FMateriais.Q_MAT.SQL.ADD('SELECT * FROM MATERIAIS WHERE MAT_ID = ' + qrItensmat_id.AsString);
        FMateriais.Q_MAT.Open;
        FMateriais.ShowModal;
        FMateriais.Release;

        qrMarcas.Close;
        qrMarcas.Parameters[0].Value := qrItensmat_id.AsInteger;
        qrMarcas.Open;
        if qrItensMarcaId.AsInteger = 0 then begin
            cboMarca.Text := '';
            cboMarca.LookupValue := '';
        end;


end;

end.

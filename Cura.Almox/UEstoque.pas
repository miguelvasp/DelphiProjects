unit UEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Db, DBTables, Wwquery, Buttons, ExtCtrls, Grids,
  DBGrids, Wwdbigrd, Wwdbgrid, Mask, ADODB, RzPanel, RzRadGrp, ComObj,
  ComCtrls;

type
  TfrmConsultaEstoque = class(TForm)
    grp1: TGroupBox;
    cboCentroCusto: TwwDBLookupCombo;
    lbl2: TLabel;
    lbl3: TLabel;
    qrCentroCusto: TwwQuery;
    medt1: TMaskEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    medt2: TMaskEdit;
    btnImprimir: TSpeedButton;
    qrCentroCustoCC_ID: TAutoIncField;
    qrCentroCustoCC_Desc: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cboGrupoMaterial: TwwDBLookupCombo;
    qrGrupoMat: TwwQuery;
    qrGrupoMatGRU_ID: TAutoIncField;
    qrGrupoMatGRU_DESC: TStringField;
    cboMaterial: TwwDBLookupCombo;
    cboMarca: TwwDBLookupCombo;
    qrMaterial: TwwQuery;
    qrMaterialMat_id: TAutoIncField;
    qrMaterialMat_desc: TStringField;
    qrMarcas: TwwQuery;
    qrMarcasMARCA_ID: TAutoIncField;
    qrMarcasMARCA_DESC: TStringField;
    Label4: TLabel;
    cboLocal: TwwDBLookupCombo;
    qrLocal: TADOQuery;
    qrLocalLocal_ID: TAutoIncField;
    qrLocalDescricao: TStringField;
    qrLocalDisponivelSN: TStringField;
    qrLocalCONSUMO: TStringField;
    qrLocalCONTROLA_ESTOQUE: TStringField;
    lbTpRelatorio: TLabel;
    rgValor: TRzRadioGroup;
    btnRelSemPreco: TSpeedButton;
    btnResumo: TSpeedButton;
    CheckBox1: TCheckBox;
    dsExcel: TDataSource;
    ProgressBar1: TProgressBar;
    btnTransferencia: TButton;
    CheckBox2: TCheckBox;
    qrLimpaValoresErrados: TADOQuery;
    qrAtualizaValoresZerados: TADOQuery;
    rzImobilizado: TRzRadioGroup;
    btnGetMaterial: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cboCentroCustoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgValorClick(Sender: TObject);
    procedure btnRelSemPrecoClick(Sender: TObject);
    procedure btnResumoClick(Sender: TObject);
    procedure GerarExcel1;
    procedure CheckBox1Click(Sender: TObject);
    procedure btnTransferenciaClick(Sender: TObject);
    procedure btnGetMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaEstoque: TfrmConsultaEstoque;
  
implementation

uses UrelEstoque, UMenu, UfrmRelConsumoSemPreco,
  UfrmRelConsumoTotalComPreco, ufrmRelResumo, UfrmBuscaMaterial;

{$R *.DFM}

procedure TfrmConsultaEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmConsultaEstoque.FormShow(Sender: TObject);
begin
  medt1.Text := FormatDateTime('DD/MM/YYYY',DATE);
  medt2.Text := FormatDateTime('DD/MM/YYYY',DATE);
  Self.Top := 0;
  Self.Left := 0;
  qrCentroCusto.Open;
  qrMaterial.Open;
  qrGrupoMat.open;
  qrMarcas.Open;
end;

procedure TfrmConsultaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrCentroCusto.close;
  qrMaterial.CLOSE;
  qrMarcas.Close;
  qrGrupoMat.Close;
end;

procedure TfrmConsultaEstoque.btnImprimirClick(Sender: TObject);
var i : Integer;
    SQL : string;
    Filtros : string;
begin

   if  Assigned(relEstoque)     then
   FreeAndNil(RelEstoque);
   RelEstoque := TRelEstoque.Create(self);


   with RelEstoque.qrCentroCusto do
   begin
       Close;
       sql.Clear;
       sql.Add(
             ' SELECT  '+
             '         MATERIAIS.MAT_ID,   '+
             '         Req_Item.Req_Item_ID,   '+
             '         Req_Item.Req_ID, '+
             '         Req_Capa.Data,  '+
             '         CodigoMaterial + '' '' + MATERIAIS.MAT_DESC AS MAT_DESC,   '+
             '         CENTRO_CUSTO.CC_Desc, '+
             '         Req_Item.Qtde,Req_Item.Qtde  as devolucao,  '+
             '         Req_Item.Uni_Sigla, '+
             '         GRUPO_MATERIAL.GRU_DESC, '+
             '         REQ_ITEM.MARCA_id,  '+
             '         MARCAS.MARCA_DESC,  dbo.fnGetCustoMedio(MATERIAIS.MAT_ID, Req_Capa.Data) as Custo_medio,  '+
             '         dbo.fnGetCustoMedio(MATERIAIS.MAT_ID, Req_Capa.Data) as Custo_item,   '+
             '         dbo.fnGetValorReposicao(Req_Item.Mat_ID, Req_Item.Marca_ID, Req_Capa.Data) as Reposicao_item,   '+
             '         local.Descricao  '+
             ' FROM   Req_Capa INNER JOIN   Req_Item ON Req_Capa.Req_ID = Req_Item.Req_ID  '+
             ' left outer JOIN  CENTRO_CUSTO ON Req_Capa.CC_ID = CENTRO_CUSTO.CC_ID  '+
             ' left outer JOIN  MARCAS ON Req_Item.Marca_ID = MARCAS.MARCA_ID  '+
             ' left outer JOIN  MATERIAIS ON Req_Item.Mat_ID = MATERIAIS.MAT_ID AND Req_Item.Mat_ID = MATERIAIS.MAT_ID  '+
             ' left outer JOIN  GRUPO_MATERIAL ON MATERIAIS.GRU_ID = GRUPO_MATERIAL.GRU_ID   '+
             ' left join Local on Req_Capa.LOCAL_ID = Local.Local_ID  '+
             ' WHERE dbo.Req_Item.Req_ID is not null and  dbo.Req_Item.tipoConsumo = ''C'' '+
             ' and convert(varchar, dbo.Req_Capa.Data, 112) >=  '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text))) +
             ' AND convert(varchar, dbo.Req_Capa.Data, 112) <=  ' +  QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt2.Text)))  +  
             ' AND MATERIAIS.RelConsumo = ''S'' ' );
             if cboMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +  '- Material: '+cboMaterial.Text;
                  sql.Add(' AND dbo.REQ_ITEM.MAT_ID = '+ ''''+qrMaterialMat_id.AsString+'''');
             end;

             if cboGrupoMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +' - Grupo de Material: '+cboGrupoMaterial.Text;
                  sql.Add(' AND dbo.GRUPO_MATERIAL.GRU_ID = '+ QuotedStr(qrGrupoMatGRU_ID.AsString));
             end;

             if cboCentroCusto.Text <> '' then
             begin
                  Filtros := Filtros +' - Centro de Custo: '+cboCentroCusto.Text;
                  sql.Add(' AND dbo.REQ_CAPA.CC_ID = ' + ''''+qrCentroCustoCC_ID.AsString+'''');
             end;

             if cboMarca.Text <> '' then
             Begin
                 Filtros := Filtros +' - Marca dos Materiais: '+cboMarca.Text;
                 sql.Add(' AND dbo.req_item.MARCA_ID = ' + QuotedStr(qrMarcasMARCA_ID.AsString));
             end;


             if cboLocal.Text <> '' then
             Begin
                 Filtros := Filtros +' - Local: '+cboLocal.Text;
                 sql.Add(' AND dbo.req_capa.local_id = ' + cboLocal.LookupValue);
             end;

             if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');



           if lbTpRelatorio.Caption = '1' then
             sql.Add(' Order by dbo.MATERIAIS.MAT_DESC, Req_Item.Req_ID')
           else //relatorio de conferencia de requisição
             sql.Add(' Order by Req_Item.Req_ID, dbo.MATERIAIS.MAT_DESC ');



      // Params[0].Value := FormatDateTime('YYYYMMDD HH:MM:SSS',StrToDateTime(medt1.Text)) ;
      // Params[1].Value := FormatDateTime('YYYYMMDD HH:MM:SSS',StrToDateTime(medt2.Text)) ;
       Open;
   end;






       RelEstoque.Filtros.Lines.Clear;
       RelEstoque.Filtros.Lines.Add('Periodo de: '+medt1.Text+' ate '+medt2.Text);
       if rgValor.ItemIndex = 0 then
           RelEstoque.Filtros.Lines.Add('Valorizado por: Custo Médio')
       else if rgValor.ItemIndex = 1 then
           RelEstoque.Filtros.Lines.Add('Valorizado por: Custo de Reposição');
       RelEstoque.Filtros.Lines.Add(filtros);


       //se for relatorio de conferencia
       if lbTpRelatorio.Caption <> '1' then begin
            RelEstoque.QRLabel1.Caption := 'Relatório de Conferência de Requisição';
            RelEstoque.QRGroup1.Expression := 'qrCentroCusto.Req_ID';
            RelEstoque.QRLabel17.Left := 48;
            RelEstoque.QRDBText10.Left := 48;
            RelEstoque.QRLabel8.Left := 2;
            RelEstoque.QRDBText3.Left := 2;
            RelEstoque.QRLabel6.Left := 385;
            RelEstoque.QRDBText2.Left := 385;
            RelEstoque.QRDBText3.Alignment := taLeftJustify;
            RelEstoque.QRLabel15.Caption := 'Total da Requisição:';
            //R/elEstoque.QRBand3.Height := 0;
            //RelEstoque.QRBand3.Enabled := False;
            RelEstoque.QRLabel15.Enabled := False;
            RelEstoque.total.Enabled := False;
            RelEstoque.un.Enabled := False;
            RelEstoque.lblVTotal.Enabled := False;
       end ;

       if CheckBox1.Checked = False then begin
         RelEstoque.Preview;
         FreeAndNil(RelEstoque);
       end
       else begin
           dsExcel.DataSet := RelEstoque.qrCentroCusto;
           GerarExcel1;
       end;

end;

procedure TfrmConsultaEstoque.btnFecharClick(Sender: TObject);
begin
    close;
end;

procedure TfrmConsultaEstoque.cboCentroCustoEnter(Sender: TObject);
begin
    TwwDBLookupCombo(sender).DropDown;
end;

procedure TfrmConsultaEstoque.FormCreate(Sender: TObject);
begin

 //zera os valores das requisições que não tem entrada de nota fiscal
 try
 qrLimpaValoresErrados.ExecSQL;
 qrAtualizaValoresZerados.ExecSQL;
 except
 end;


 qrLocal.Open;
end;

procedure TfrmConsultaEstoque.rgValorClick(Sender: TObject);
begin

    if rgValor.ItemIndex in [0, 1] then
        CheckBox1.Visible := True
    else
        CheckBox1.Visible := False;

    //colocamos todos os botoes no mesmo lugar
    btnRelSemPreco.Top := btnImprimir.Top;
    btnRelSemPreco.Left := btnImprimir.Left;
    btnResumo.Top :=  btnImprimir.Top;
    btnResumo.Left := btnImprimir.Left;


    //controlamos a visibilidade dos botoes
    if (rgValor.ItemIndex = 0) or (rgValor.ItemIndex = 1) then begin
         btnResumo.Visible := False;
         btnRelSemPreco.Visible := False;
         btnImprimir.Visible := True;
    end;
    if (rgValor.ItemIndex = 2) or (rgValor.ItemIndex = 3) or (rgValor.ItemIndex = 4) then begin
         btnResumo.Visible := False;
         btnRelSemPreco.Visible := True;
         btnImprimir.Visible := False;
    end;
    if (rgValor.ItemIndex = 5) or (rgValor.ItemIndex = 6)  then begin
         btnResumo.Visible := True;
         btnRelSemPreco.Visible := False;
         btnImprimir.Visible := False;
    end;

    {
  if rgValor.ItemIndex >= 2 then begin
    
        btnRelSemPreco.Visible := True;
        btnImprimir.Visible := False;
  end
  else begin
       btnRelSemPreco.Visible := false;
        btnImprimir.Visible := true;
  end;     }
end;

procedure TfrmConsultaEstoque.btnRelSemPrecoClick(Sender: TObject);
var i : Integer;
    SQL : string;
    Filtros : string;
begin
  Filtros := 'de ' + medt1.Text + ' até ' + medt2.Text;
  frmRelConsumoSemPreco := TfrmRelConsumoSemPreco.Create(Self);
  with frmRelConsumoSemPreco.qrRel do begin
       Close;
       sql.Clear;
       sql.Add(      ' SELECT dbo.MATERIAIS.MAT_ID ,');
       sql.Add(      ' CodigoMaterial + '' '' + MATERIAIS.MAT_DESC AS MAT_DESC, ');
       sql.Add(      ' sum(dbo.Req_Item.Qtde) AS QTDE, ');
       sql.Add(      ' dbo.Req_Item.Uni_Sigla ');
       sql.Add(      ' FROM  ');
       sql.Add(      ' dbo.Req_Capa INNER JOIN  ');
       sql.Add(      ' dbo.Req_Item ON dbo.Req_Capa.Req_ID = dbo.Req_Item.Req_ID left outer JOIN ');
       sql.Add(      ' dbo.CENTRO_CUSTO ON dbo.Req_Capa.CC_ID = dbo.CENTRO_CUSTO.CC_ID left outer JOIN ');
       sql.Add(      ' dbo.MARCAS ON dbo.Req_Item.Marca_ID = dbo.MARCAS.MARCA_ID left outer JOIN ');
       sql.Add(      ' dbo.MATERIAIS ON dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID AND dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID left outer JOIN ');
       sql.Add(      ' dbo.GRUPO_MATERIAL ON dbo.MATERIAIS.GRU_ID = dbo.GRUPO_MATERIAL.GRU_ID ');
             //' LEFT OUTER JOIN dbo.Req_lote on dbo.req_item.Req_Item_ID = dbo.req_lote.Req_Item_ID '+
       sql.Add(      ' WHERE dbo.Req_Item.Req_ID is not null and  dbo.Req_Item.tipoConsumo = ''C'' AND  CONVERT(CHAR(10),dbo.Req_Capa.Data , 112) >=  ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text))));
       sql.Add(      ' AND  CONVERT(CHAR(10),dbo.Req_Capa.Data , 112)<=  ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt2.Text))));
       SQL.Add(' AND MATERIAIS.RelConsumo = ''S'' ');
             if cboMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +  '- Material: '+cboMaterial.Text;
                  sql.Add(' AND dbo.REQ_ITEM.MAT_ID = '+ ''''+qrMaterialMat_id.AsString+'''');
             end;

             if cboGrupoMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +' - Grupo de Material: '+cboGrupoMaterial.Text;
                  sql.Add(' AND dbo.GRUPO_MATERIAL.GRU_ID = '+ QuotedStr(qrGrupoMatGRU_ID.AsString));
             end;

             if cboCentroCusto.Text <> '' then
             begin
                  Filtros := Filtros +' - Centro de Custo: '+cboCentroCusto.Text;
                  sql.Add(' AND dbo.REQ_CAPA.CC_ID = ' + ''''+qrCentroCustoCC_ID.AsString+'''');
             end;

             if cboMarca.Text <> '' then
             Begin
                 Filtros := Filtros +' - Marca dos Materiais: '+cboMarca.Text;
                 sql.Add(' AND dbo.req_item.MARCA_ID = ' + QuotedStr(qrMarcasMARCA_ID.AsString));
             end;


             if cboLocal.Text <> '' then
             Begin
                 Filtros := Filtros +' - Local: '+cboLocal.Text;
                 sql.Add(' AND dbo.req_capa.local_id = ' + cboLocal.LookupValue);
             end;

              if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');

           sql.Add(' GROUP BY dbo.MATERIAIS.MAT_ID, CodigoMaterial, dbo.MATERIAIS.MAT_DESC, dbo.Req_Item.Uni_Sigla ');
           sql.Add(' Order by dbo.MATERIAIS.MAT_DESC') ;
       Open;
  end;

  if rgValor.ItemIndex = 2 then begin
  frmRelConsumoSemPreco.Filtros.Lines.Text := Filtros;
  frmRelConsumoSemPreco.report.Preview;
  frmRelConsumoSemPreco.CLOSE;
  end
  else if rgValor.ItemIndex > 2 then begin
     frmRelConsumoTotalComPreco := TfrmRelConsumoTotalComPreco.Create(Self);

     if rgValor.ItemIndex = 3 then
        Filtros := Filtros + ' - Por Custo de Reposição'
     else
        Filtros := Filtros + ' - Por Custo médio';
     
  with frmConsultaEstoque do begin
      with frmRelConsumoTotalComPreco.qrRel do begin
       Close;
       sql.Clear;
       sql.Add(      'SELECT      ');
       sql.Add(      '       dbo.MATERIAIS.MAT_ID ,   ');
       sql.Add(      '        CodigoMaterial + '' '' + MATERIAIS.MAT_DESC AS MAT_DESC,   ');
       sql.Add(      '       sum(dbo.Req_Item.Qtde) AS QTDE,  ');
       sql.Add(      '       SUM(dbo.Req_Item.Qtde * Req_Item.CUSTO) porCusto,   ');
       sql.Add(      '       SUM(dbo.Req_Item.Qtde * Req_Item.REPOSICAO) porReposicao,    ');
       sql.Add(      '   dbo.Req_Item.Uni_Sigla   ');
       sql.Add(      ' FROM  ');
       sql.Add(      ' dbo.Req_Capa INNER JOIN  ');
       sql.Add(      ' dbo.Req_Item ON dbo.Req_Capa.Req_ID = dbo.Req_Item.Req_ID left outer JOIN ');
       sql.Add(      ' dbo.CENTRO_CUSTO ON dbo.Req_Capa.CC_ID = dbo.CENTRO_CUSTO.CC_ID left outer JOIN ');
       sql.Add(      ' dbo.MARCAS ON dbo.Req_Item.Marca_ID = dbo.MARCAS.MARCA_ID left outer JOIN ');
       sql.Add(      ' dbo.MATERIAIS ON dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID AND dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID left outer JOIN ');
       sql.Add(      ' dbo.GRUPO_MATERIAL ON dbo.MATERIAIS.GRU_ID = dbo.GRUPO_MATERIAL.GRU_ID ');
             //' LEFT OUTER JOIN dbo.Req_lote on dbo.req_item.Req_Item_ID = dbo.req_lote.Req_Item_ID '+
       sql.Add(      ' WHERE dbo.Req_Item.Req_ID is not null and  dbo.Req_Item.tipoConsumo = ''C'' AND  CONVERT(CHAR(10),dbo.Req_Capa.Data , 112) >=  ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text))));
       sql.Add(      ' AND  CONVERT(CHAR(10),dbo.Req_Capa.Data , 112)<=  ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt2.Text))));
       sql.Add( ' AND MATERIAIS.RelConsumo = ''S'' ');
             if cboMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +  '- Material: '+cboMaterial.Text;
                  sql.Add(' AND dbo.REQ_ITEM.MAT_ID = '+ ''''+qrMaterialMat_id.AsString+'''');
             end;

             if cboGrupoMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +' - Grupo de Material: '+cboGrupoMaterial.Text;
                  sql.Add(' AND dbo.GRUPO_MATERIAL.GRU_ID = '+ QuotedStr(qrGrupoMatGRU_ID.AsString));
             end;

             if cboCentroCusto.Text <> '' then
             begin
                  Filtros := Filtros +' - Centro de Custo: '+cboCentroCusto.Text;
                  sql.Add(' AND dbo.REQ_CAPA.CC_ID = ' + ''''+qrCentroCustoCC_ID.AsString+'''');
             end;

             if cboMarca.Text <> '' then
             Begin
                 Filtros := Filtros +' - Marca dos Materiais: '+cboMarca.Text;
                 sql.Add(' AND dbo.req_item.MARCA_ID = ' + QuotedStr(qrMarcasMARCA_ID.AsString));
             end;


             if cboLocal.Text <> '' then
             Begin
                 Filtros := Filtros +' - Local: '+cboLocal.Text;
                 sql.Add(' AND dbo.req_capa.local_id = ' + cboLocal.LookupValue);
             end;

              if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');

           sql.Add(' GROUP BY dbo.MATERIAIS.MAT_ID, CodigoMaterial, dbo.MATERIAIS.MAT_DESC, dbo.Req_Item.Uni_Sigla ');
           sql.Add(' Order by dbo.MATERIAIS.MAT_DESC') ;
       Open;
  end;
  end;

     frmRelConsumoTotalComPreco.QRMemo1.Lines.Text := Filtros;
     frmRelConsumoTotalComPreco.QuickRep1.Preview;
     frmRelConsumoTotalComPreco.close;
  end;

end;

procedure TfrmConsultaEstoque.btnResumoClick(Sender: TObject);
var i : Integer;
    SQL : string;
    Filtros : string;
begin
  Filtros := 'de ' + medt1.Text + ' até ' + medt2.Text;
  frmRelResumo := TfrmRelResumo.Create(Self);
  with frmRelResumo.qrRel do begin
       Close;
       sql.Clear;
       sql.Add(      ' SELECT 	CodigoMaterial + '' '' + MATERIAIS.MAT_DESC AS MAT_DESC,');
       sql.Add(      ' 	dbo.CENTRO_CUSTO.CC_Desc, ');
       sql.Add(      ' 	sum(dbo.Req_Item.Qtde) as qtde, ');
       sql.Add(      ' 	dbo.Req_Item.Uni_Sigla,  ');
       sql.Add(      ' 	case   when dbo.materiais.custo_medio is null then 0   else   dbo.materiais.custo_medio   end as Custo_medio, ');
       sql.Add(      ' 	Req_Item.REPOSICAO as Reposicao_item  ');
       sql.Add(      ' FROM  ');
       sql.Add(      ' dbo.Req_Capa INNER JOIN  ');
       sql.Add(      ' dbo.Req_Item ON dbo.Req_Capa.Req_ID = dbo.Req_Item.Req_ID left outer JOIN ');
       sql.Add(      ' dbo.CENTRO_CUSTO ON dbo.Req_Capa.CC_ID = dbo.CENTRO_CUSTO.CC_ID left outer JOIN ');
       sql.Add(      ' dbo.MARCAS ON dbo.Req_Item.Marca_ID = dbo.MARCAS.MARCA_ID left outer JOIN ');
       sql.Add(      ' dbo.MATERIAIS ON dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID AND dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID left outer JOIN ');
       sql.Add(      ' dbo.GRUPO_MATERIAL ON dbo.MATERIAIS.GRU_ID = dbo.GRUPO_MATERIAL.GRU_ID ');
             //' LEFT OUTER JOIN dbo.Req_lote on dbo.req_item.Req_Item_ID = dbo.req_lote.Req_Item_ID '+
       sql.Add(      ' WHERE dbo.Req_Item.Req_ID is not null and  dbo.Req_Item.tipoConsumo = ''C'' AND  CONVERT(CHAR(10),dbo.Req_Capa.Data , 112) >=  ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text))));
       sql.Add(      ' AND  CONVERT(CHAR(10),dbo.Req_Capa.Data , 112)<=  ' + QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt2.Text))));
       SQL.Add('  and MATERIAIS.RelConsumo = ''S'' ');
             if cboMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +  '- Material: '+cboMaterial.Text;
                  sql.Add(' AND dbo.REQ_ITEM.MAT_ID = '+ ''''+qrMaterialMat_id.AsString+'''');
             end;

             if cboGrupoMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +' - Grupo de Material: '+cboGrupoMaterial.Text;
                  sql.Add(' AND dbo.GRUPO_MATERIAL.GRU_ID = '+ QuotedStr(qrGrupoMatGRU_ID.AsString));
             end;

             if cboCentroCusto.Text <> '' then
             begin
                  Filtros := Filtros +' - Centro de Custo: '+cboCentroCusto.Text;
                  sql.Add(' AND dbo.REQ_CAPA.CC_ID = ' + ''''+qrCentroCustoCC_ID.AsString+'''');
             end;

             if cboMarca.Text <> '' then
             Begin
                 Filtros := Filtros +' - Marca dos Materiais: '+cboMarca.Text;
                 sql.Add(' AND dbo.req_item.MARCA_ID = ' + QuotedStr(qrMarcasMARCA_ID.AsString));
             end;


             if cboLocal.Text <> '' then
             Begin
                 Filtros := Filtros +' - Local: '+cboLocal.Text;
                 sql.Add(' AND dbo.req_capa.local_id = ' + cboLocal.LookupValue);
             end;

              if rzImobilizado.ItemIndex = 1 then
                sql.Add('AND MAT_IMOBILIZADO = ''N'' ');

          if rzImobilizado.ItemIndex = 2 then
                sql.Add('AND MAT_IMOBILIZADO = ''S'' ');


       sql.Add(' group by  ');
       sql.Add('	CodigoMaterial, dbo.MATERIAIS.MAT_DESC,  ');
       sql.Add('	dbo.CENTRO_CUSTO.CC_Desc,  ');
       sql.Add('	dbo.Req_Item.Uni_Sigla,   ');
       sql.Add('	dbo.GRUPO_MATERIAL.GRU_DESC,   ');
       sql.Add('	case   when dbo.materiais.custo_medio is null then 0   else   dbo.materiais.custo_medio   end ,   ');
       sql.Add('	Req_Item.CUSTO ,   ');
       sql.Add('	Req_Item.REPOSICAO   ');
       sql.Add(' Order by  dbo.CENTRO_CUSTO.CC_Desc, dbo.MATERIAIS.MAT_DESC    ');
       Open;
  end;

  IF rgValor.ItemIndex = 5 then
        frmRelResumo.lbVlrUnit.DataField := 'Reposicao_item';
  if rgValor.ItemIndex = 6 then
        frmRelResumo.lbVlrUnit.DataField := 'Custo_medio';
  frmRelResumo.Filtros.Lines.Text := Filtros;
  frmRelResumo.report.Preview;
  frmRelResumo.Close;
  FreeAndNil(frmRelResumo);


end;

procedure TfrmConsultaEstoque.GerarExcel1;
var linha : Integer;
    Excel : Variant;
    i, Coluna : Integer;

begin
      //  close;
        linha := 1;

  excel := CreateOleObject('excel.application');
  Excel.WorkBooks.Add;

  //escrevemos os cabeçalhos
 // for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
 //     Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].DisplayName;
 // end;
  Excel.Cells[Linha, 1] := 'Material';
  Excel.Cells[Linha, 2] := 'Data';
  Excel.Cells[Linha, 3] := 'Req.';
  Excel.Cells[Linha, 4] := 'Centro de Custo';
  Excel.Cells[Linha, 5] := 'Marca';
  Excel.Cells[Linha, 6]  :='Qtde.';
  Excel.Cells[Linha, 7] := 'Un.';
  Excel.Cells[Linha, 8] := 'Valor';
  Excel.Cells[Linha, 9] := 'Grupo';
  Excel.Cells[Linha, 10] := 'Local';
  Excel.Cells[Linha, 11] := 'Código Material';

  dsExcel.DataSet.Last;
  ProgressBar1.Max := dsExcel.DataSet.RecordCount;
  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      ProgressBar1.Position := linha;
        Excel.Cells[Linha, 1] := dsExcel.DataSet.FieldByName('MAT_DESC').AsString;
        Excel.Cells[Linha, 2] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.FieldByName('Data').AsDateTime);
        Excel.Cells[Linha, 2].NumberFormat := 'm/d/yyyy';
        Excel.Cells[Linha, 3] := dsExcel.DataSet.FieldByName('req_id').AsString;
        Excel.Cells[Linha, 4] := dsExcel.DataSet.FieldByName('cc_desc').AsString;
        Excel.Cells[Linha, 5] := dsExcel.DataSet.FieldByName('marca_desc').AsString;
        Excel.Cells[Linha, 6] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.FieldByName('qtde').AsFloat));
        Excel.Cells[Linha, 7] := dsExcel.DataSet.FieldByName('uni_sigla').AsString;
        if rgValor.ItemIndex = 0 then
           Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.FieldByName('qtde').AsFloat * dsExcel.DataSet.FieldByName('Custo_medio').AsFloat    ))
        else
           Excel.Cells[Linha, 8] := StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.FieldByName('qtde').AsFloat * dsExcel.DataSet.FieldByName('Reposicao_item').AsFloat    ));

        Excel.Cells[Linha, 9] := dsExcel.DataSet.FieldByName('GRU_DESC').AsString;
        Excel.Cells[Linha, 10] := dsExcel.DataSet.FieldByName('Descricao').AsString;
        Excel.Cells[Linha, 11] := dsExcel.DataSet.FieldByName('MAT_ID').AsString;
      dsExcel.DataSet.Next;
      Application.ProcessMessages;
  end;
  ProgressBar1.Position := 0;
           {
  dsExcel.DataSet.First;
  while not dsExcel.DataSet.Eof do begin
      Inc(linha);
      for i := 0 to pred(dsExcel.DataSet.FieldCount) do begin
           //escreve valor inteiro
           if dsExcel.DataSet.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftAutoInc] then
              Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].AsInteger
           //escreve valor decimal
           else if dsExcel.DataSet.Fields[i].DataType = ftFloat then  begin
              Excel.Cells[Linha, i + 1] :=  StrToFloat(FormatFloat('##0.00',dsExcel.DataSet.Fields[i].AsFloat));
              //Excel.Cells[Linha, i + 1].numberFormat := '0,00' ;
           end
           //esreve valores de data
           else if dsExcel.DataSet.Fields[i].DataType in [ftDate, ftDateTime] then begin
               Excel.Cells[Linha, i + 1] :=  FormatDateTime(' dd/mm/yyyy', dsExcel.DataSet.Fields[i].AsDateTime);
               Excel.Cells[Linha, i + 1].NumberFormat := 'm/d/yyyy';
           end
           else
           begin
               Excel.Cells[Linha, i + 1].NumberFormat := '@';
               Excel.Cells[Linha, i + 1] :=  dsExcel.DataSet.Fields[i].Text;
           end;
      end;

      Excel.cells[Linha, 8] := '';
      Excel.cells[Linha, 9] := '';
      Excel.cells[Linha, 10] := '';

      dsExcel.DataSet.Next;

  end;     }

  Excel.Range['A:Z'].EntireColumn.AutoFit;
  Excel.Application.Visible := true;


end;

procedure TfrmConsultaEstoque.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then ProgressBar1.Visible := True else ProgressBar1.Visible := False;
end;

procedure TfrmConsultaEstoque.btnTransferenciaClick(Sender: TObject);
var i : Integer;
    SQL : string;
    Filtros : string;
begin
   CheckBox1.Checked := False;
   if  Assigned(relEstoque)     then
   FreeAndNil(RelEstoque);
   RelEstoque := TRelEstoque.Create(self);


   with RelEstoque.qrCentroCusto do
   begin
       Close;
       sql.Clear;
       sql.Add(
             ' SELECT dbo.MATERIAIS.MAT_ID, dbo.Req_Item.Req_Item_ID, '''' as descricao,'+
             ' dbo.Req_Item.Req_ID, '+
             ' dbo.Req_Capa.Data, '+
             ' dbo.MATERIAIS.MAT_DESC, '+
             ' dbo.CENTRO_CUSTO.CC_Desc,  '+
             ' dbo.Req_Item.Qtde,Req_Item.Qtde  as devolucao, '+
             ' dbo.Req_Item.Uni_Sigla, '+
             ' dbo.GRUPO_MATERIAL.GRU_DESC, REQ_ITEM.MARCA_id, '+
             ' DBO.MARCAS.MARCA_DESC, '+
             ' case  '+
             ' when dbo.materiais.custo_medio is null then 0  '+
             ' else  '+
             ' dbo.materiais.custo_medio  '+
             ' end as Custo_medio,Req_Item.CUSTO as Custo_item,Req_Item.REPOSICAO as Reposicao_item '+
             ' FROM  '+
             ' dbo.Req_Capa INNER JOIN  '+
             ' dbo.Req_Item ON dbo.Req_Capa.Req_ID = dbo.Req_Item.Req_ID left outer JOIN '+
             ' dbo.CENTRO_CUSTO ON dbo.Req_Capa.CC_ID = dbo.CENTRO_CUSTO.CC_ID left outer JOIN '+
             ' dbo.MARCAS ON dbo.Req_Item.Marca_ID = dbo.MARCAS.MARCA_ID left outer JOIN '+
             ' dbo.MATERIAIS ON dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID AND dbo.Req_Item.Mat_ID = dbo.MATERIAIS.MAT_ID left outer JOIN '+
             ' dbo.GRUPO_MATERIAL ON dbo.MATERIAIS.GRU_ID = dbo.GRUPO_MATERIAL.GRU_ID '+
             //' LEFT OUTER JOIN dbo.Req_lote on dbo.req_item.Req_Item_ID = dbo.req_lote.Req_Item_ID '+
             ' WHERE dbo.Req_Item.Req_ID is not null and  dbo.Req_Item.tipoConsumo = ''T'' '+
             ' and convert(varchar, dbo.Req_Capa.Data, 112) >=  '+ QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt1.Text))) +
             ' AND convert(varchar, dbo.Req_Capa.Data, 112) <=  ' +  QuotedStr(FormatDateTime('YYYYMMDD', StrToDate(medt2.Text)))    );
             if cboMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +  '- Material: '+cboMaterial.Text;
                  sql.Add(' AND dbo.REQ_ITEM.MAT_ID = '+ ''''+qrMaterialMat_id.AsString+'''');
             end;

             if cboGrupoMaterial.Text <> '' then
             Begin
                  Filtros := Filtros +' - Grupo de Material: '+cboGrupoMaterial.Text;
                  sql.Add(' AND dbo.GRUPO_MATERIAL.GRU_ID = '+ QuotedStr(qrGrupoMatGRU_ID.AsString));
             end;

             if cboCentroCusto.Text <> '' then
             begin
                  Filtros := Filtros +' - Centro de Custo: '+cboCentroCusto.Text;
                  sql.Add(' AND dbo.REQ_CAPA.CC_ID = ' + ''''+qrCentroCustoCC_ID.AsString+'''');
             end;

             if cboMarca.Text <> '' then
             Begin
                 Filtros := Filtros +' - Marca dos Materiais: '+cboMarca.Text;
                 sql.Add(' AND dbo.req_item.MARCA_ID = ' + QuotedStr(qrMarcasMARCA_ID.AsString));
             end;


             if cboLocal.Text <> '' then
             Begin
                 Filtros := Filtros +' - Local: '+cboLocal.Text;
                 sql.Add(' AND dbo.req_capa.local_id = ' + cboLocal.LookupValue);
             end;





           if lbTpRelatorio.Caption = '1' then
             sql.Add(' Order by dbo.MATERIAIS.MAT_DESC, Req_Item.Req_ID')
           else //relatorio de conferencia de requisição
             sql.Add(' Order by Req_Item.Req_ID, dbo.MATERIAIS.MAT_DESC ');



      // Params[0].Value := FormatDateTime('YYYYMMDD HH:MM:SSS',StrToDateTime(medt1.Text)) ;
      // Params[1].Value := FormatDateTime('YYYYMMDD HH:MM:SSS',StrToDateTime(medt2.Text)) ;
       Open;
   end;






       RelEstoque.Filtros.Lines.Clear;
       RelEstoque.Filtros.Lines.Add('Periodo de: '+medt1.Text+' ate '+medt2.Text);
       if rgValor.ItemIndex = 0 then
           RelEstoque.Filtros.Lines.Add('Valorizado por: Custo Médio')
       else if rgValor.ItemIndex = 1 then
           RelEstoque.Filtros.Lines.Add('Valorizado por: Custo de Reposição');
       RelEstoque.Filtros.Lines.Add(filtros);


       //se for relatorio de conferencia
       if lbTpRelatorio.Caption <> '1' then begin
            RelEstoque.QRLabel1.Caption := 'Relatório de Conferência de Requisição';
            RelEstoque.QRGroup1.Expression := 'qrCentroCusto.Req_ID';
            RelEstoque.QRLabel17.Left := 48;
            RelEstoque.QRDBText10.Left := 48;
            RelEstoque.QRLabel8.Left := 2;
            RelEstoque.QRDBText3.Left := 2;
            RelEstoque.QRLabel6.Left := 385;
            RelEstoque.QRDBText2.Left := 385;
            RelEstoque.QRDBText3.Alignment := taLeftJustify;
            RelEstoque.QRLabel15.Caption := 'Total da Requisição:';
            //R/elEstoque.QRBand3.Height := 0;
            //RelEstoque.QRBand3.Enabled := False;
            RelEstoque.QRLabel15.Enabled := False;
            RelEstoque.total.Enabled := False;
            RelEstoque.un.Enabled := False;
            RelEstoque.lblVTotal.Enabled := False;

       end ;

       if CheckBox2.Checked = False then begin
         RelEstoque.QRLabel1.Caption := 'Materiais transferidos x Custo';
         RelEstoque.Preview;
         FreeAndNil(RelEstoque);
       end
       else begin
           dsExcel.DataSet := RelEstoque.qrCentroCusto;
           GerarExcel1;
       end;


end;

procedure TfrmConsultaEstoque.btnGetMaterialClick(Sender: TObject);
begin
    frmBuscaMaterial := tfrmBuscaMaterial.create(Self);
    frmBuscaMaterial.chkConsideraMarca.Checked := False;
    frmBuscaMaterial.showmodal;
    if frmBuscaMaterial.lbSelecao.Caption <> '' then begin
         cboMaterial.LookupValue := frmBuscaMaterial.lbSelecao.Caption;
    end;
    frmBuscaMaterial.lbSelecao.Caption := '';
    FreeAndNil(frmBuscaMaterial);
end;

end.

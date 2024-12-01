unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons, ExtCtrls, DBTables,
  Db, Wwdatsrc, Wwquery, wwdblook, menus, wwstorep, ADODB, Grids, Wwdbigrd,
  Wwdbgrid ;




  Type
  t_Campos = array[0..2,0..200] of String;

type
  TFUsuarios = class(TForm)
    SB: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TwwDBEdit;
    edtSenha: TwwDBEdit;
    trvMenu: TTreeView;
    DSUSUARIOS: TwwDataSource;
    SQLUSUARIOS: TwwQuery;
    Panel10: TPanel;
    Label62: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    wwDBLookupCombo11: TwwDBLookupCombo;
    UPD_USUARIOS: TUpdateSQL;
    Panel1: TPanel;
    btnRefresh: TSpeedButton;
    btnExpand: TSpeedButton;
    btnFechar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DN: TDBNavigator;
    SP_ADDLOGIN: TwwStoredProc;
    SQLUSUARIOSCH: TAutoIncField;
    SQLUSUARIOSNome: TStringField;
    SQLUSUARIOSSenha: TStringField;
    SQLUSUARIOSAlmoxarifado: TStringField;
    SQLUSUARIOSAjuste: TStringField;
    SQLUSUARIOSInventario: TStringField;
    SQLUSUARIOSKardex: TStringField;
    SQLUSUARIOSRequisicao: TStringField;
    SQLUSUARIOSBusca: TStringField;
    SQLUSUARIOSCadastros: TStringField;
    SQLUSUARIOSFornecedores: TStringField;
    SQLUSUARIOSEntradaNF: TStringField;
    SQLUSUARIOSDevForn: TStringField;
    SQLUSUARIOSOrdemdeCompra: TStringField;
    SQLUSUARIOSTabelas: TStringField;
    SQLUSUARIOSGrupodeMateriais: TStringField;
    SQLUSUARIOSMateriais: TStringField;
    SQLUSUARIOSCondPag: TStringField;
    SQLUSUARIOSLocais: TStringField;
    SQLUSUARIOSMotivos: TStringField;
    SQLUSUARIOSMarcas: TStringField;
    SQLUSUARIOSTipodeDocumento: TStringField;
    SQLUSUARIOSUnidades: TStringField;
    SQLUSUARIOSSair: TStringField;
    SQLUSUARIOSUsuarios: TStringField;
    SQLUSUARIOSCentrosdeCustos: TStringField;
    SQLUSUARIOSCONSUMOMATERIAIS: TStringField;
    SQLUSUARIOSESTOQUE_MINIMO: TStringField;
    SQLUSUARIOSCOMPRAS: TStringField;
    SQLUSUARIOSSOLICITACAO: TStringField;
    SQLUSUARIOSCOTACAO: TStringField;
    qrLocal: TADOQuery;
    qrLocaldescricao: TStringField;
    qrLocalLocal_id: TAutoIncField;
    SQLUSUARIOSESTOQUE: TStringField;
    SQLUSUARIOSLOCAL_ID: TIntegerField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    SQLUSUARIOSTransferencia: TStringField;
    SQLUSUARIOSAlteraSenha: TStringField;
    SQLUSUARIOSVALIDADE: TStringField;
    SQLUSUARIOSREL_CONF_REQUISICAO: TStringField;
    SQLUSUARIOSREL_OC_RECEB: TStringField;
    SQLUSUARIOSGER_COMPRAS: TStringField;
    SQLUSUARIOSRequisicao_Adm: TStringField;
    SQLUSUARIOSRequisicao_usu: TStringField;
    SQLUSUARIOSRequisicao_imp: TStringField;
    SQLUSUARIOSRequisicao_aprov: TStringField;
    SQLUSUARIOSCURVA_ABC: TStringField;
    SQLUSUARIOSREL_OC: TStringField;
    SQLUSUARIOSDocsQualidade: TStringField;
    SQLUSUARIOSRelDocsFornecedor: TStringField;
    SQLUSUARIOSadmRequisicao: TStringField;
    SQLUSUARIOSConsumoFornecedor: TStringField;
    DBCheckBox1: TDBCheckBox;
    SQLUSUARIOSAnaliseCompras: TStringField;
    Button1: TButton;
    Panel2: TPanel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label4: TLabel;
    qrCentro: TADOQuery;
    qrCentroCC_ID: TAutoIncField;
    qrCentroCC_Desc: TStringField;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    Button3: TButton;
    SpeedButton1: TSpeedButton;
    qrCentrosADD: TADOQuery;
    qrCentrosADDID: TAutoIncField;
    qrCentrosADDCH: TIntegerField;
    qrCentrosADDCC_ID: TIntegerField;
    qrGrid: TADOQuery;
    qrGridID: TAutoIncField;
    qrGridCC_Desc: TStringField;
    DataSource1: TDataSource;
    qrAux: TADOQuery;
    qrGridCH: TIntegerField;
    qrGridCC_ID: TIntegerField;
    SQLUSUARIOSLoteValidade: TStringField;
    SQLUSUARIOSEstoqueMaximo: TStringField;
    SQLUSUARIOSOcorrencias: TStringField;
    SQLUSUARIOSCBARRAS: TStringField;
    SQLUSUARIOSRelNaoConformidades: TStringField;
    SQLUSUARIOSCONSEQUENCIA: TStringField;
    SQLUSUARIOSLiberaMaterial: TStringField;
    SQLUSUARIOSRelIntervalo: TStringField;
    SQLUSUARIOSConfereRequisicao: TStringField;
    SQLUSUARIOSRelTransferencia: TStringField;
    SQLUSUARIOSEstoqueRetro: TStringField;
    SQLUSUARIOSNOME_COMPLETO: TStringField;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    SQLUSUARIOSConsultaInvetarioMaterial: TStringField;
    SQLUSUARIOSRelTransfCustos: TStringField;
    SQLUSUARIOSDivergencias: TStringField;
    SQLUSUARIOSbionexoDownload: TStringField;
    SQLUSUARIOSbionexoUpload: TStringField;
    Panel3: TPanel;
    btn1: TButton;
    qryLocais: TADOQuery;
    qryLocaisLocal_ID: TAutoIncField;
    qryLocaisDescricao: TStringField;
    qryUsuLocal: TADOQuery;
    qryUsuLocalID: TAutoIncField;
    qryUsuLocalCH: TIntegerField;
    qryUsuLocalLOCAL_ID: TIntegerField;
    qryUsuLocalDescricao: TStringField;
    cboLocal: TwwDBLookupCombo;
    btn2: TButton;
    wwDBGrid2: TwwDBGrid;
    btn3: TButton;
    qry1: TADOQuery;
    ds1: TDataSource;
    btn4: TButton;
    SQLUSUARIOSRelMateriaisInativos: TStringField;
    procedure trvMenuDblClick(Sender: TObject);
    procedure SQLUSUARIOSAfterPost(DataSet: TDataSet);
    procedure SQLUSUARIOSAfterDelete(DataSet: TDataSet);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DNBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure btnFecharClick(Sender: TObject);
    procedure DSUSUARIOSStateChange(Sender: TObject);
    procedure DSUSUARIOSDataChange(Sender: TObject; Field: TField);
    procedure DNClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnExpandClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBLookupCombo11KeyPress(Sender: TObject; var Key: Char);
    procedure SQLUSUARIOSBeforePost(DataSet: TDataSet);
    procedure SQLUSUARIOSNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

        Function FQuery(Q: TwwQuery; L0, L1, L2, L3, L4: String): Boolean;
        procedure Func_MarcaDesmarca(p_Tree : TTreeView; p_itemIndexNo :Integer; p_Check: String);
        function Func_CalculaNrDescendentes(p_Tree : TTreeView; p_ItemIndex: Integer): Integer;
        Procedure Proc_MontaTreeView(p_menu : TMainMenu; p_Tree: TTreeView);
        FUNCTIOn Func_ApagaSubString(p_String: String; p_SubString: String): String;
        procedure Proc_GravaTreeView(p_Campos: t_Campos);


var
  FUsuarios: TFUsuarios;
  SQLCorrente : TwwQuery;
  RegistroCorrente: Variant;

implementation

uses UMenu;

             {888}
const v_Check = ' »';
var a_Campos: t_Campos;
    v_Grava: Boolean;

{$R *.DFM}

Function FQuery(Q: TwwQuery; L0, L1, L2, L3, L4: String): Boolean;
begin
   Q.Close;
   Q.SQL.Clear;
   Q.SQL.Add(L0);
   Q.SQL.Add(L1);
   Q.SQL.Add(L2);
   Q.SQL.Add(L3);
   Q.SQL.Add(L4);
   Q.Open;
   Result := (Q.recordcount > 0);
end;


procedure TFUsuarios.trvMenuDblClick(Sender: TObject);
begin
     // Ativamos o modo de edição
   if (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then
      SQLCorrente.Edit;
   v_Grava := True;
   // Pegamos o item que foi dado duplo click e alteramos o seu nome para
   // NOME + v_Check, que no caso será o check
   if pos(v_Check, trvMenu.selected.text) > 0 then begin
      trvMenu.Items[trvMenu.Selected.StateIndex].text := Copy(trvMenu.selected.text, 0, Length(trvMenu.selected.text) - length(v_Check));
      if a_Campos[0, trvMenu.Selected.StateIndex] <> '' then
         a_Campos[2, trvMenu.Selected.StateIndex] := 'N';
   end
   else begin
      trvMenu.Items[trvMenu.Selected.StateIndex].text := trvMenu.selected.text + v_Check;
      if a_Campos[0, trvMenu.Selected.StateIndex] <> '' then
         a_Campos[2, trvMenu.Selected.StateIndex] := 'S';
   end;
   Func_MarcaDesmarca(trvMenu, trvMenu.Selected.StateIndex, v_Check);

end;

procedure TFUsuarios.SQLUSUARIOSAfterPost(DataSet: TDataSet);
var SQL:String; Aspa:String;
begin
   RegistroCorrente := sqlUsuarios.FieldByName('NOME').AsString;
   try
   begin
       FMenu.DataBase1.Applyupdates([sqlUsuarios]);
       sqlUsuarios.Close;
       sqlUsuarios.open;
     end
   except
     begin
       sqlUsuarios.revertRecord;
       sqlUsuarios.Close;
       sqlUsuarios.open;
     end;
   end;

   if not sqlUsuarios.eof then
      sqlUsuarios.locate('NOME', RegistroCorrente, [loCaseInsensitive]);

 end;

procedure TFUsuarios.SQLUSUARIOSAfterDelete(DataSet: TDataSet);
begin
   RegistroCorrente := sqlUsuarios.FieldByName('NOME').AsString;
   try
     begin
      FMenu.DataBase1.Applyupdates([sqlUsuarios]);
       sqlUsuarios.Close;
       sqlUsuarios.open;
     end
   except
     begin
       sqlUsuarios.revertRecord;
       sqlUsuarios.Close;
       sqlUsuarios.open;
     end;
   end;
   if not sqlUsuarios.eof then
      sqlUsuarios.locate('NOME', RegistroCorrente, [loCaseInsensitive]);

end;

procedure Func_MarcaDesmarca(p_Tree : TTreeView; p_itemIndexNo :Integer; p_Check: String);
var i : Integer;
    v_Marcar : Boolean;
begin
   // Esta procedure pega apenas os nós descendentes
   // Verificamos se devemos marcar ou desmarcar os nós de acordo com o nó pai
   v_Marcar := (Pos(p_Check, p_Tree.items[p_itemIndexNo].text) <> 0);
   // Verificamos se este nó possui filhos ou não, se possuir devemos marcar todos
   if p_Tree.items[p_itemIndexNo].count > 0 then begin
      // Calculamos o número de descendentes deste nó para que possamos marcar todos
      // corretamente e montamos o loop
      for i := (p_itemIndexNo) to Func_CalculaNrDescendentes(p_Tree, p_itemIndexNo) do begin
         // Verificamos se está marcando ou desmarcando
         // Está marcado, devemos marcar todos os nós descendentes
         if (v_Marcar) then begin
            if (Pos(p_Check, p_Tree.items[i].text) = 0) then begin
               p_Tree.items[i].text := p_Tree.items[i].text + p_Check;
               if a_Campos[0, i] <> '' then
                  a_Campos[2, i] := 'S';
            end;
         end
         else begin
            if (Pos(p_Check, p_Tree.items[i].text) > 0) then begin
               p_Tree.Items[i].text := Copy(p_Tree.Items[i].text, 0, Length(p_Tree.Items[i].text) - length(p_Check));
               if a_Campos[0, i] <> '' then
                  a_Campos[2, i] := 'N';
            end;
         end;
      end;
   end;   
end;

function Func_CalculaNrDescendentes(p_Tree : TTreeView; p_ItemIndex: Integer): Integer;
var v_level, i, v_UltimoNo : Integer;
begin
   // Aqui iremos calcular a partir de um nó quantos descendentes existem
   // A primeira coisa a fazer é verificar o level do nó em questão p_ItemIndex,
   // Depois de sabermos qual é o level basta procurarmos o próximo ponto do
   // mesmo level e subtrairmos o seu StateIndex do nó p_ItemIndex,
   // como preenchemos o valor StateIndex seqüêncialmente sabemos com certeza
   // qual é o nó.
   v_level := p_Tree.Items[p_ItemIndex].level;
   v_UltimoNo := 0;
   for i := (p_ItemIndex + 1) to (p_Tree.Items.count - 1) do begin
      // Devemos fazer duas verificações, procuramos o level seguinte ou igual ou
      // quando for o fim da árvore pegamos o StateIndex do último elemento da árvore
      if (p_Tree.Items[i].level <= v_level) then begin
         if v_UltimoNo = 0 then
            v_UltimoNo := p_Tree.Items[i].StateIndex - 1;
      end;
      if (i = (p_Tree.Items.count - 1)) then begin
         if v_UltimoNo = 0 then
            v_UltimoNo := p_Tree.Items[i].StateIndex;
      end;
   end;
   result := v_UltimoNo;
end;

Procedure Proc_MontaTreeView(p_Menu : TMainMenu; p_Tree: TTreeView);
var a, b, c, d, e, v_IndexCorrente, v_NrHifen, v_a, v_b : integer;
    v_Node2, v_Node3, v_Node4, v_Node5: TTreeNode;
    v_CheckCorrente: String;
begin
    ///
     

    ///
   Screen.Cursor := crHourGlass;
   // O Menu deve ser preparado, na propriedade NAME de cada Item de Menu devemos
   // colocar o nome da rotina que iremos chamar (ex: O item de menu deverá chamar
   // a rotina de atividades por isso a sua propriedade NAME deve ser o nome do
   // Campo da tabela de usuários que no caso é ATIVIDADES), para sabermos o que
   // devemos gravar/ler da tabela de usuários utilizaremos a propriedade TAG de
   // cada Item de Menu (adotamos 0 quando não tiver um campo na tabela, ou seja,
   // quando o Item possuir filhos ou não for chamar nenhuma rotina e 1 se chamar)

   // Montamos a Tree de acordo com o Menu que iremos associar e não podemos
   // esquecer que qualquer nó que acrescentarmos devemos alterar o seu
   // StateIndex. Ex.: (StateIndex)
   // a1 (0)
   // a2 (1)  b1 (2)
   //         b2 (3)
   // a3 (4)  b3 (5)
   //         b4 (6)
   //         b5 (7) c1 (8)
   //         b6 (9) c2 (10) d1 (11)
   // a4 (12)
   // Aqui devemos desmembrar o menu item por item, o count pega os descendentes
   // diretos, iremos utilizar cinco levels de menu porque temos que ter o
   // comando como p_Menu.items[i].items[j].items[k].caption

   // Para facilitarmos a gravação iremos guardar o index o nome da rotina e se
   // esta está habilitada S/N para gravarmos na tabela de Usuários, utilizaremos
   // o array a_Campos

   // Limpamos a árvore
   p_Tree.Items.Clear;
   // Limpamos o array a_Campos
   for v_a := 0 to 2 do begin
      for v_b := 0 to 200 do begin
         a_Campos[v_a, v_b] := '';
      end;
   end;
   v_IndexCorrente := -1;
   v_NrHifen := 0;

   // Este é o loop para o level 1
   for a := 0 to p_Menu.items.count -1 do begin
      v_IndexCorrente := v_IndexCorrente + 1;
//      a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Name;
//      a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
//      a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Name).AsString;
      // Verificamos se de acordo com o usuário devemos marcar ou não o item
//      if p_Menu.Items[a].Tag = 1 then begin
         // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
         if SQLCorrente.FieldByName(p_Menu.Items[a].Name).AsString = 'S' then
            v_CheckCorrente := v_Check
         else
            v_CheckCorrente := '';
         a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Name;
         a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
         a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Name).AsString;
//      end
//      else
//         v_CheckCorrente := '';
      p_Tree.Items.Add(nil, Func_ApagaSubString(p_Menu.Items[a].Caption, '&') + v_CheckCorrente);
      p_Tree.Items[p_Menu.Items[a].Command - 1 - v_NrHifen].StateIndex := v_IndexCorrente;
      // Verificamos se este item possui filhos, level 2
      if p_Menu.items[a].count > 0 then begin
         v_Node2 := p_Tree.Items[p_Tree.Items[p_Menu.Items[a].Command - 1 - v_NrHifen].StateIndex];
         for b := 0 to p_Menu.items[a].count -1 do begin
            if p_Menu.Items[a].Items[b].Caption <> '-' then begin
               v_IndexCorrente := v_IndexCorrente + 1;
               // Verificamos se de acordo com o usuário devemos marcar ou não o item
//               if p_Menu.Items[a].Items[b].Tag = 1 then begin
                  // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                  if SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Name).AsString = 'S' then
                     v_CheckCorrente := v_Check
                  else
                     v_CheckCorrente := '';
                  a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Items[b].Name;
                  a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
                  a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Name).AsString;
//               end
//               else
//                  v_CheckCorrente := '';
               p_Tree.Items.AddChild(v_Node2, Func_ApagaSubString(p_Menu.Items[a].Items[b].Caption, '&') + v_CheckCorrente);
               p_Tree.Items[p_Menu.Items[a].Items[b].Command - 1 - v_NrHifen].StateIndex := v_IndexCorrente;
               // Verificamos se este item possui filhos, level 3
               if p_Menu.items[a].items[b].count > 0 then begin
                  v_Node3 := p_Tree.Items[p_Tree.Items[p_Menu.Items[a].Items[b].Command - 1 - v_NrHifen].StateIndex];
                  for c := 0 to p_Menu.items[a].items[b].count -1 do begin
                     if p_Menu.Items[a].Items[b].Items[c].Caption <> '-' then begin
                        v_IndexCorrente := v_IndexCorrente + 1;
                        // Verificamos se de acordo com o usuário devemos marcar ou não o item
//                        if p_Menu.Items[a].Items[b].Items[c].Tag = 1 then begin
                           // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                           if SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Items[c].Name).AsString = 'S' then
                              v_CheckCorrente := v_Check
                           else
                              v_CheckCorrente := '';
                           a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Items[b].Items[c].Name;
                           a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
                           a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Items[c].Name).AsString;
//                        end
//                        else
//                           v_CheckCorrente := '';
                        p_Tree.Items.AddChild(v_Node3, Func_ApagaSubString(p_Menu.Items[a].Items[b].Items[c].Caption, '&') + v_CheckCorrente);
                        p_Tree.Items[p_Menu.Items[a].Items[b].Items[c].Command - 1 - v_NrHifen].StateIndex := v_IndexCorrente;
                        // Verificamos se este item possui filhos, level 4
                        if p_Menu.items[a].items[b].items[c].count > 0 then begin
                           v_Node4 := p_Tree.Items[p_Tree.Items[p_Menu.Items[a].Items[b].Items[c].Command - 1].StateIndex];
                           for d := 0 to p_Menu.items[a].items[b].items[c].count -1 do begin
                              if p_Menu.Items[a].Items[b].Items[c].Items[d].Caption <> '-' then begin
                                 v_IndexCorrente := v_IndexCorrente + 1;
                                 // Verificamos se de acordo com o usuário devemos marcar ou não o item
//                                 if p_Menu.Items[a].Items[b].Items[c].Items[d].Tag = 1 then begin
                                    // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                                    if SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Items[c].Items[d].Name).AsString = 'S' then
                                       v_CheckCorrente := v_Check
                                    else
                                       v_CheckCorrente := '';
                                    a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Items[b].Items[c].Items[d].Name;
                                    a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
                                    a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Items[c].Items[d].Name).AsString;
//                                 end
//                                 else
//                                    v_CheckCorrente := '';
                                 p_Tree.Items.AddChild(v_Node4, Func_ApagaSubString(p_Menu.Items[a].Items[b].Items[c].Items[d].Caption, '&') + v_CheckCorrente);
                                 p_Tree.Items[p_Menu.Items[a].Items[b].Items[c].Items[d].Command - 1 - v_NrHifen].StateIndex := v_IndexCorrente;
                                 // Verificamos se este item possui filhos, level 5
                                 if p_Menu.items[a].items[b].items[c].items[d].count > 0 then begin
                                    v_Node5 := p_Tree.Items[p_Tree.Items[p_Menu.Items[a].Items[b].Items[c].Items[d].Command - 1].StateIndex];
                                    for e := 0 to p_Menu.items[a].items[b].items[c].items[d].count do begin
                                       if p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Caption <> '-' then begin
                                          v_IndexCorrente := v_IndexCorrente + 1;
                                          // Verificamos se de acordo com o usuário devemos marcar ou não o item
//                                          if p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Tag = 1 then begin
                                             // Lemos o valor do campo na tabela de usuários para o usuário p_USUARIO
                                             if SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Name).AsString = 'S' then
                                                v_CheckCorrente := v_Check
                                             else
                                                v_CheckCorrente := '';
                                             a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Name;
                                             a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
                                             a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Name).AsString;
//                                          end
//                                          else
//                                             v_CheckCorrente := '';
                                          p_Tree.Items.AddChild(v_Node5, Func_ApagaSubString(p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Caption, '&') + v_CheckCorrente);
                                          p_Tree.Items[p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Command - 1 - v_NrHifen].StateIndex := v_IndexCorrente;
                                       end
                                       else
                                          v_NrHifen := v_NrHifen + 1;
                                    end;
                                 end;
                              end
                              else
                                 v_NrHifen := v_NrHifen + 1;
                           end;
                        end;
                     end
                     else
                        v_NrHifen := v_NrHifen + 1;
                  end;
               end;
            end
            else
               v_NrHifen := v_NrHifen + 1;
         end;
      end;
   end;
   Screen.Cursor := crDefault;


   
end;

Function Func_ApagaSubString(p_String: String; p_SubString: String): String;
var a: Integer;
    v_String : String;
begin
   // Apagamos a Substring da String, montamos um loop para que possamos identificar
   // e apagar várias p_SubString
   v_String := p_String;
   for a := 1 to Round(length(p_String) / length(p_SubString)) do begin
      if Pos(p_SubString, v_String) <> 0 then begin
         delete(v_String, Pos(p_SubString, p_String), length(p_SubString));
      end;
   end;
   result := v_String;
end;

procedure Proc_GravaTreeView(p_Campos: t_Campos);
var v_c: Integer;
begin
   Screen.Cursor := crHourGlass;
   // Como o registro já está em edição iremos passar todos os valores do array
   // para a tabela de Usuários.
   // Neste array temos o nome, index na treeview e se a rotina está liberada ou
   // não S/N
   for v_c := 0 to 200 do begin
      if (p_Campos[0, v_c] <> '') then begin
         SQLCorrente.FieldByName(p_Campos[0, v_c]).AsString := p_Campos[2, v_c];
      end;
   end;   
   Screen.Cursor := crDefault;
end;




procedure TFUsuarios.btnRefreshClick(Sender: TObject);
begin
  SB.Simpletext := 'Aguarde, atualizando os dados.';
   SB.Update;
   RegistroCorrente := SQLCorrente.FieldByName('CH').AsString;
   SQLCorrente.Close;
   SQLCorrente.Open;
   if not SQLCorrente.eof then
      SQLCorrente.locate('CH', RegistroCorrente, [loCaseInsensitive]);
   SB.Simpletext := '';
   SB.Update;
end;

procedure TFUsuarios.FormShow(Sender: TObject);
begin
   qrLocal.Open;

  SQLCorrente := sqlUsuarios;
   sb.simpletext := 'Aguarde, abrindo tabelas...';
   sb.update;
   FQuery(SQLCorrente, 'SELECT * FROM USUARIOALMOX ','','ORDER BY NOME ','','');
   sb.simpletext := ' ';
   sb.update;
   Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);


   qrCentro.Open;

end;

procedure TFUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          
  SQLCorrente.Close;
   action := cafree ;
end;

procedure TFUsuarios.DNBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
    if Button = nbCancel then
      v_Grava := False;
   if (Button = nbPost) and (v_Grava) then
      Proc_GravaTreeView(a_Campos);
end;

procedure TFUsuarios.btnFecharClick(Sender: TObject);
begin



  Close;
end;

procedure TFUsuarios.DSUSUARIOSStateChange(Sender: TObject);
begin
  if (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then begin
      btnRefresh.enabled := True;
   end
   else begin
      btnRefresh.enabled := False;
   end;
end;

procedure TFUsuarios.DSUSUARIOSDataChange(Sender: TObject; Field: TField);
begin
  if Panel1.enabled = true then begin
       if (SQLCorrente <> nil) and (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then
          Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);
   end ;


   qrGrid.Close;
   qrGrid.Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
   qrGrid.Open;


end;

procedure TFUsuarios.DNClick(Sender: TObject; Button: TNavigateBtn);
begin
   edtNome.SetFocus;
end;

procedure TFUsuarios.btnExpandClick(Sender: TObject);
begin
    trvMenu.FullExpand;
end;

procedure TFUsuarios.SpeedButton2Click(Sender: TObject);
begin
   // Ajusta o posicionamento do Panel de Localização rápida

   Panel10.Top := 65;
   Panel10.Left := 184;
   Panel10.width := 257;
   Panel10.Height := 50;
   panel1.enabled := false ;
   GroupBox1.enabled := false ;
   Panel10.visible   := true ;
   wwDBLookupCombo11.setfocus ;
end;

procedure TFUsuarios.SpeedButton6Click(Sender: TObject);
begin
  Panel10.visible   := false ;
   panel1.enabled := true ;
   GroupBox1.enabled := true ;
   wwDBLookupCombo11.text := '';
   Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);
end;

procedure TFUsuarios.SpeedButton5Click(Sender: TObject);
begin
   Panel10.visible   := false ;
   panel1.enabled := true ;
   GroupBox1.enabled := true ;
   wwDBLookupCombo11.text := '';
   Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);
end;

procedure TFUsuarios.wwDBLookupCombo11KeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then begin
     Panel10.visible   := false ;
     panel1.enabled := true ;
     GroupBox1.enabled := true ;
     wwDBLookupCombo11.text := '';
     Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);
   end ;
end;

procedure TFUsuarios.SQLUSUARIOSBeforePost(DataSet: TDataSet);
begin
      { If dsUsuarios.State = dsInsert then
       Begin
                SP_ADDLOGIN.ParamByName('@NOME').VALUE := sqlUsuarios.FieldByName('NOME').AsString;
                SP_ADDLOGIN.ParamByName('@PWD').VALUE := sqlUsuarios.FieldByName('Senha').AsString;
                SP_ADDLOGIN.ExecProc;
       End; }

end;

procedure TFUsuarios.SQLUSUARIOSNewRecord(DataSet: TDataSet);
begin
        SQLUSUARIOSSair.AsString := 'S';
end;

procedure TFUsuarios.SpeedButton1Click(Sender: TObject);
begin
   Panel2.Visible := False;
end;

procedure TFUsuarios.Button1Click(Sender: TObject);
begin
  Panel2.Left := 8;
  Panel2.Top := 192;
  Panel2.Visible := True;
end;

procedure TFUsuarios.Button3Click(Sender: TObject);
begin
    if MessageBox(Self.Handle, 'Deseja eliminar o registro', 'Confirmação', MB_YESNO) = 7 then Abort;

    with qrAux do begin
        Close;
        sql.Clear;
        sql.Add(
           'delete from UsuarioAlmoxCentros where ch = ' +qrGridCH.AsString + ' and CC_ID = ' + qrGridCC_ID.AsString
        );
        ExecSQL;
    end;


   qrGrid.Close;
   qrGrid.Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
   qrGrid.Open;



end;

procedure TFUsuarios.Button2Click(Sender: TObject);
begin
  if wwDBLookupCombo2.Text = '' then begin
      ShowMessage('Informe o centro de custo');
      Abort;
  end;
    qrCentrosADD.Open;
    qrCentrosADD.Append;
    qrCentrosADDCC_ID.AsInteger := StrToInt(wwDBLookupCombo2.LookupValue);
    qrCentrosADDCH.AsInteger := SQLUSUARIOSCH.AsInteger;
    qrCentrosADD.Post;

   qrGrid.Close;
   qrGrid.Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
   qrGrid.Open;

   wwDBLookupCombo2.Text := '';

end;

procedure TFUsuarios.btn1Click(Sender: TObject);
begin
  qryLocais.Open;
  qryUsuLocal.Close;
   qryUsuLocal.Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
   qryUsuLocal.Open;
  Panel3.Left := 8;
  Panel3.Top := 192;
  Panel3.Visible := True;
  
end;

procedure TFUsuarios.btn2Click(Sender: TObject);
begin
 if qryUsuLocal.Locate('LOCAL_ID', cboLocal.LookupValue, []) = False then
   BEGIN
   with qry1 do begin
       close;
       sql.Clear;
       sql.Add('Insert into UsuariosAlmoxLocais values(:CH, :local_id)');
       Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
       Parameters[1].Value := StrToInt(cboLocal.LookupValue);
       ExecSQL;
   end;

   qryUsuLocal.Close;
   qryUsuLocal.Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
   qryUsuLocal.Open;

   //verifica se adicionou a brigadeiro como local e adiciona ao local_id
   while not qryUsuLocal.Eof do begin
       if qryUsuLocalLOCAL_ID.AsInteger = 1 then begin
          SQLUSUARIOS.Edit;
          SQLUSUARIOSLOCAL_ID.AsInteger := 1;
          SQLUSUARIOS.Post;
       end;
       qryUsuLocal.Next;
   end;
   qryUsuLocal.First;
   cboLocal.Text := '';
   cboLocal.SetFocus;
 end
 else
 ShowMessage('Local já cadastrado para este usuário');

end;

procedure TFUsuarios.btn3Click(Sender: TObject);
begin
with qry1 do begin
       close;
       sql.Clear;
       sql.Add('delete from UsuariosAlmoxLocais where ID = :id');
       Parameters[0].Value := qryUsuLocalID.AsInteger;
       ExecSQL;
   end;

   qryUsuLocal.Close;
   qryUsuLocal.Parameters[0].Value := SQLUSUARIOSCH.AsInteger;
   qryUsuLocal.Open;
end;

procedure TFUsuarios.btn4Click(Sender: TObject);
begin
   Panel3.Visible := False;
end;

end.

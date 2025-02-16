unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwdatsrc, Wwquery, DBCtrls, Buttons, ExtCtrls, ComCtrls,
  StdCtrls, Mask, wwdbedit, Menus ;

type
  t_Campos = array[0..2, 0..200] of String;

type
  TFRUsuarios = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TwwDBEdit;
    edtSenha: TwwDBEdit;
    trvMenu: TTreeView;
    Panel1: TPanel;
    Label4: TLabel;
    btnRefresh: TSpeedButton;
    btnExpand: TSpeedButton;
    btnFechar: TSpeedButton;
    DN: TDBNavigator;
    sqlUsuarios: TwwQuery;
    dsUsuarios: TwwDataSource;
    udtUsuarios: TUpdateSQL;
    sqlUsuariosCH: TAutoIncField;
    sqlUsuariosNOME: TStringField;
    sqlUsuariosSENHA: TStringField;
    sqlUsuariosTabelas: TStringField;
    sqlUsuariosCentrosdeCusto: TStringField;
    sqlUsuariosContasBancarias: TStringField;
    sqlUsuariosPortadores: TStringField;
    sqlUsuariosContasContabeis: TStringField;
    sqlUsuariosContasGerencial: TStringField;
    sqlUsuariosDescontoAcrescimo: TStringField;
    sqlUsuariosMoedas: TStringField;
    sqlUsuariosListagens: TStringField;
    sqlUsuariosListCentrosCusto: TStringField;
    sqlUsuariosListContasBancarias: TStringField;
    sqlUsuariosListContasGerenciais: TStringField;
    sqlUsuariosListDescontoAcrescimo: TStringField;
    sqlUsuariosListFeriados: TStringField;
    sqlUsuariosListFormaPagamento: TStringField;
    sqlUsuariosListLayoCheques: TStringField;
    sqlUsuariosListMoedas: TStringField;
    sqlUsuariosCadastros: TStringField;
    sqlUsuariosClientes: TStringField;
    sqlUsuariosFornecedores: TStringField;
    sqlUsuariosListagensCadastros: TStringField;
    sqlUsuariosListClientes: TStringField;
    sqlUsuariosListFornecedores: TStringField;
    sqlUsuariosRecebimentos: TStringField;
    sqlUsuariosCadastroRecebimento: TStringField;
    sqlUsuariosRelatorioRecebimento: TStringField;
    sqlUsuariosPagamentos: TStringField;
    sqlUsuariosCadastroPagamento: TStringField;
    sqlUsuariosRelatorioPagamento: TStringField;
    sqlUsuariosMovimentacao: TStringField;
    sqlUsuariosCadastroMovimentcao: TStringField;
    sqlUsuariosTransAplicResg: TStringField;
    sqlUsuariosDataDebitoCredito: TStringField;
    sqlUsuariosConciliacaoBancaria: TStringField;
    sqlUsuariosRelatorioMovimentacao: TStringField;
    sqlUsuariosListMovimentacao: TStringField;
    sqlUsuariosListTransferencia: TStringField;
    sqlUsuariosCheques: TStringField;
    sqlUsuariosCadastroCheque: TStringField;
    sqlUsuariosChequesBorderos: TStringField;
    sqlUsuariosEmissaoCheques: TStringField;
    sqlUsuariosCancelamentos: TStringField;
    sqlUsuariosRelatoriosCheques: TStringField;
    sqlUsuariosConsultaCheques: TStringField;
    sqlUsuariosUtilitarios: TStringField;
    sqlUsuariosParametros: TStringField;
    sqlUsuariosSair: TStringField;
    SB: TStatusBar;
    sqlUsuariosUSuarios: TStringField;
    sqlUsuariosEtiquetas: TStringField;
    sqlUsuariosMovimentoDiario: TStringField;
    sqlUsuariosLeituraBanco1: TStringField;
    sqlUsuariosGeraBanco1: TStringField;
    sqlUsuariosPortadores1: TStringField;
    sqlUsuariosContasContabeis1: TStringField;
    sqlUsuariosChequePre: TStringField;
    sqlUsuariosPagamentos1: TStringField;
    sqlUsuariosfluxodecaixa: TStringField;
    sqlUsuariosUnidadesdaFederao: TStringField;
    sqlUsuariosEmpresas: TStringField;
    sqlUsuariosFeriados: TStringField;
    sqlUsuariosFormasdePagamento: TStringField;
    sqlUsuariosLayoutCheques: TStringField;
    sqlUsuariosLoteRecebimento: TStringField;
    sqlUsuariosLotePagamento: TStringField;
    sqlUsuariosNotasFiscais1: TStringField;
    sqlUsuariosSubconta: TStringField;
    sqlUsuariosRateio: TStringField;
    sqlUsuariosContaentreEmpresas: TStringField;
    sqlUsuariosRelatoriodeRateios: TStringField;
    sqlUsuariosBANCOFOR: TStringField;
    sqlUsuariosRelatoriodeContas: TStringField;
    sqlUsuariosGerMov: TStringField;
    sqlUsuarioseminf: TStringField;
    sqlUsuariosGerencialdePagamentosAnual1: TStringField;
    sqlUsuariosGerencialdeMovimentaoAnual1: TStringField;
    sqlUsuariosRelatrios1: TStringField;
    sqlUsuariosRelTranferencia: TStringField;
    sqlUsuariosLIBERACONCILIACAO: TStringField;
    sqlUsuariosBaixaCartao: TStringField;
    sqlUsuariosAtualizaDebito: TStringField;
    sqlUsuariosAtualizaCredito: TStringField;
    sqlUsuariosNF_MULTIMED: TStringField;
    sqlUsuariosLancamentoCaixa: TStringField;
    sqlUsuariosRelReceCentroCusto: TStringField;
    sqlUsuariosRelPagaCentroCusto: TStringField;
    sqlUsuariosDespesas: TStringField;
    sqlUsuariosRetornoCNAB: TStringField;
    sqlUsuariosFaturamentoMultimed: TStringField;
    procedure DNBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure DNClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExpandClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure sqlUsuariosAfterPost(DataSet: TDataSet);
    procedure trvMenuDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure Func_MarcaDesmarca(p_Tree : TTreeView; p_itemIndexNo :Integer; p_Check: String);
function Func_CalculaNrDescendentes(p_Tree : TTreeView; p_ItemIndex: Integer): Integer;
Procedure Proc_MontaTreeView(p_Menu : TMainMenu; p_Tree: TTreeView);
Function Func_ApagaSubString(p_String: String; p_SubString: String): String;
procedure Proc_GravaTreeView(p_Campos: t_Campos);
function FQuery(Q: TwwQuery; L0, L1, L2, L3, L4: String): Boolean;

var
  FRUsuarios: TFRUsuarios;
  SQLCorrente : TwwQuery;
  RegistroCorrente: Variant;

implementation

uses CPPMENU;

const v_Check = ' �';
var a_Campos: t_Campos;
    v_Grava: Boolean;

{ A partir de um menu (TMainMenu) previamente preparado devemos passar este
para uma �rvore (TTreeView) e nela podermos selecionar ou n�o a rotina que
o usu�rio deve ter acesso ou n�o.

-Montagem do Menu: A propriedade NAME de cada Item de Menu deve ser o nome do campo
na tabela aonde deve ser gravado o S/N que identifique a rotina para que assim
possamos saber em qual campo devemos gravar a habilita��o da rotina para o usu�rio
e na propriedade TAG devemos preencher com 1 quando existir o campo correspondente na
tabela, se n�o deixamos 0.
Exemplo: Caption do Item de Menu (Nome Item de Menu/Nome do campo da tabela , Tag)
Arquivos (Qualquer, 0)                 Conex�es (Qualquer, 0)
   Tabelas (Qualquer, 0)                  Importa��es (IMPORTACOES, 1)
      Atividades (ATIVIDADES, 1)          Exporta��es (EXPORTACOES, 1)
      Usu�rios (USUARIOS, 1)
      Feriados (FERIADOS, 1)
Os items com Tag = 0 s�o apenas items para a montagem do menu, n�o s�o rotinas a
serem ativadas

-Montagem da �rvore, fazemos automaticamente atrav�s da procedure Proc_MontaTreeView.

-A rotina de grava��o utiliza um array bidimensional aonde passamos os valores
Nome da Rotina, Index da ViewTree e se pode ser habilitada ou n�o (S/N)
Dado o Post a rotina ir� gravar automaticamente na tabela, as estruturas das
tabelas podem ser diferentes necessitando assim de altera��es na procedure.
}


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

procedure TFRUsuarios.DNBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
   if Button = nbCancel then
      v_Grava := False;
   if (Button = nbPost) and (v_Grava) then
      Proc_GravaTreeView(a_Campos);

end;

procedure TFRUsuarios.DNClick(Sender: TObject; Button: TNavigateBtn);
begin
   edtNome.SetFocus;

end;

procedure TFRUsuarios.btnRefreshClick(Sender: TObject);
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

procedure TFRUsuarios.btnExpandClick(Sender: TObject);
begin
   trvMenu.FullExpand;
end;

procedure TFRUsuarios.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFRUsuarios.dsUsuariosDataChange(Sender: TObject; Field: TField);
begin
   if (SQLCorrente <> nil) and (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then
      Proc_MontaTreeView(fMenu.MainMenu, trvMenu);

end;

procedure TFRUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
   if (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then begin
      btnRefresh.enabled := True;
   end
   else begin
      btnRefresh.enabled := False;
   end;

end;

procedure TFRUsuarios.sqlUsuariosAfterPost(DataSet: TDataSet);
begin
   RegistroCorrente := sqlUsuarios.FieldByName('NOME').AsString;
   try
     begin
       FMenu.DATABASE1.Applyupdates([sqlUsuarios]);
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

procedure TFRUsuarios.trvMenuDblClick(Sender: TObject);
begin
   // Ativamos o modo de edi��o
   if (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then
      SQLCorrente.Edit;
   v_Grava := True;
   // Pegamos o item que foi dado duplo click e alteramos o seu nome para
   // NOME + v_Check, que no caso ser� o check
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

procedure Func_MarcaDesmarca(p_Tree : TTreeView; p_itemIndexNo :Integer; p_Check: String);
var i : Integer;
    v_Marcar : Boolean;
begin
   // Esta procedure pega apenas os n�s descendentes
   // Verificamos se devemos marcar ou desmarcar os n�s de acordo com o n� pai
   v_Marcar := (Pos(p_Check, p_Tree.items[p_itemIndexNo].text) <> 0);
   // Verificamos se este n� possui filhos ou n�o, se possuir devemos marcar todos
   if p_Tree.items[p_itemIndexNo].count > 0 then begin
      // Calculamos o n�mero de descendentes deste n� para que possamos marcar todos
      // corretamente e montamos o loop
      for i := (p_itemIndexNo) to Func_CalculaNrDescendentes(p_Tree, p_itemIndexNo) do begin
         // Verificamos se est� marcando ou desmarcando
         // Est� marcado, devemos marcar todos os n�s descendentes
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
   // Aqui iremos calcular a partir de um n� quantos descendentes existem
   // A primeira coisa a fazer � verificar o level do n� em quest�o p_ItemIndex,
   // Depois de sabermos qual � o level basta procurarmos o pr�ximo ponto do
   // mesmo level e subtrairmos o seu StateIndex do n� p_ItemIndex,
   // como preenchemos o valor StateIndex seq��ncialmente sabemos com certeza
   // qual � o n�.
   v_level := p_Tree.Items[p_ItemIndex].level;
   v_UltimoNo := 0;
   for i := (p_ItemIndex + 1) to (p_Tree.Items.count - 1) do begin
      // Devemos fazer duas verifica��es, procuramos o level seguinte ou igual ou
      // quando for o fim da �rvore pegamos o StateIndex do �ltimo elemento da �rvore
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
   Screen.Cursor := crHourGlass;
   // O Menu deve ser preparado, na propriedade NAME de cada Item de Menu devemos
   // colocar o nome da rotina que iremos chamar (ex: O item de menu dever� chamar
   // a rotina de atividades por isso a sua propriedade NAME deve ser o nome do
   // Campo da tabela de usu�rios que no caso � ATIVIDADES), para sabermos o que
   // devemos gravar/ler da tabela de usu�rios utilizaremos a propriedade TAG de
   // cada Item de Menu (adotamos 0 quando n�o tiver um campo na tabela, ou seja,
   // quando o Item possuir filhos ou n�o for chamar nenhuma rotina e 1 se chamar)

   // Montamos a Tree de acordo com o Menu que iremos associar e n�o podemos
   // esquecer que qualquer n� que acrescentarmos devemos alterar o seu
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

   // Para facilitarmos a grava��o iremos guardar o index o nome da rotina e se
   // esta est� habilitada S/N para gravarmos na tabela de Usu�rios, utilizaremos
   // o array a_Campos

   // Limpamos a �rvore
   p_Tree.Items.Clear;
   // Limpamos o array a_Campos
   for v_a := 0 to 2 do begin
      for v_b := 0 to 200 do begin
         a_Campos[v_a, v_b] := '';
      end;
   end;
   v_IndexCorrente := -1;
   v_NrHifen := 0;

   // Este � o loop para o level 1
   for a := 0 to p_Menu.items.count -1 do begin
      v_IndexCorrente := v_IndexCorrente + 1;
//      a_Campos[0, v_IndexCorrente] := p_Menu.Items[a].Name;
//      a_Campos[1, v_IndexCorrente] := IntToStr(v_IndexCorrente);
//      a_Campos[2, v_IndexCorrente] := SQLCorrente.FieldByName(p_Menu.Items[a].Name).AsString;
      // Verificamos se de acordo com o usu�rio devemos marcar ou n�o o item
//      if p_Menu.Items[a].Tag = 1 then begin
         // Lemos o valor do campo na tabela de usu�rios para o usu�rio p_USUARIO
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
               // Verificamos se de acordo com o usu�rio devemos marcar ou n�o o item
//               if p_Menu.Items[a].Items[b].Tag = 1 then begin
                  // Lemos o valor do campo na tabela de usu�rios para o usu�rio p_USUARIO
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
                        // Verificamos se de acordo com o usu�rio devemos marcar ou n�o o item
//                        if p_Menu.Items[a].Items[b].Items[c].Tag = 1 then begin
                           // Lemos o valor do campo na tabela de usu�rios para o usu�rio p_USUARIO
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
                                 // Verificamos se de acordo com o usu�rio devemos marcar ou n�o o item
//                                 if p_Menu.Items[a].Items[b].Items[c].Items[d].Tag = 1 then begin
                                    // Lemos o valor do campo na tabela de usu�rios para o usu�rio p_USUARIO
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
                                          // Verificamos se de acordo com o usu�rio devemos marcar ou n�o o item
//                                          if p_Menu.Items[a].Items[b].Items[c].Items[d].Items[e].Tag = 1 then begin
                                             // Lemos o valor do campo na tabela de usu�rios para o usu�rio p_USUARIO
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
   // e apagar v�rias p_SubString
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
   // Como o registro j� est� em edi��o iremos passar todos os valores do array
   // para a tabela de Usu�rios.
   // Neste array temos o nome, index na treeview e se a rotina est� liberada ou
   // n�o S/N
   for v_c := 0 to 200 do begin
      if (p_Campos[0, v_c] <> '') then begin
         SQLCorrente.FieldByName(p_Campos[0, v_c]).AsString := p_Campos[2, v_c];
      end;
   end;   
   Screen.Cursor := crDefault;
end;


procedure TFRUsuarios.FormShow(Sender: TObject);
begin
   SQLCorrente := sqlUsuarios;
   sb.simpletext := 'Aguarde, abrindo tabelas...';
   sb.update;
   FQuery(SQLCorrente, 'SELECT * FROM USUARIOFINANCEIRO ','','ORDER BY NOME ','','');
   sb.simpletext := ' ';
   sb.update;
   Proc_MontaTreeView(fMenu.MainMenu, trvMenu);

end;

procedure TFRUsuarios.FormActivate(Sender: TObject);
begin
//        CENTRO(Self,False);
end;

end.

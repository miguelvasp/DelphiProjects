unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Mask, wwdbedit, DBCtrls, Buttons, ExtCtrls, DBTables,
  Db, Wwdatsrc, Wwquery, wwdblook, menus ;

  {Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBCtrls, DBTables, wwdblook, Buttons, ExtCtrls, Wwquery, Wwdatsrc,
  ComCtrls, StdCtrls, Mask, wwdbedit;}

  

  type
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
    dsUsuarios: TwwDataSource;
    SqlUsuarios: TwwQuery;
    Panel10: TPanel;
    Label62: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    wwDBLookupCombo11: TwwDBLookupCombo;
    udtUsuarios: TUpdateSQL;
    Q_ADDLOGIN: TwwQuery;
    Panel1: TPanel;
    Label4: TLabel;
    btnRefresh: TSpeedButton;
    btnExpand: TSpeedButton;
    btnFechar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DN: TDBNavigator;
    SqlUsuariosCH: TAutoIncField;
    SqlUsuariosNOME: TStringField;
    SqlUsuariosSENHA: TStringField;
    SqlUsuariosCHAMADA1: TStringField;
    SqlUsuariosCHAMADA1A: TStringField;
    SqlUsuariosCHAMADA1B: TStringField;
    SqlUsuariosCHAMADA1C: TStringField;
    SqlUsuariosCHAMADA1D: TStringField;
    SqlUsuariosCHAMADA1E: TStringField;
    SqlUsuariosCHAMADA1F: TStringField;
    SqlUsuariosCHAMADA1G: TStringField;
    SqlUsuariosCHAMADA1H: TStringField;
    SqlUsuariosCHAMADA1I: TStringField;
    SqlUsuariosCHAMADA1J: TStringField;
    SqlUsuariosCHAMADA1K: TStringField;
    SqlUsuariosCHAMADA1L: TStringField;
    SqlUsuariosCHAMADA1M: TStringField;
    SqlUsuariosCHAMADA1N: TStringField;
    SqlUsuariosCHAMADA1O: TStringField;
    SqlUsuariosCHAMADA1P: TStringField;
    SqlUsuariosCHAMADA2: TStringField;
    SqlUsuariosCHAMADA2A: TStringField;
    SqlUsuariosCHAMADA2B: TStringField;
    SqlUsuariosCHAMADA2C: TStringField;
    SqlUsuariosCHAMADA2D: TStringField;
    SqlUsuariosCHAMADA2E: TStringField;
    SqlUsuariosCHAMADA2F: TStringField;
    SqlUsuariosCHAMADA2F1: TStringField;
    SqlUsuariosCHAMADA2F2: TStringField;
    SqlUsuariosCHAMADA2F3: TStringField;
    SqlUsuariosCHAMADA3: TStringField;
    SqlUsuariosCHAMADA3A: TStringField;
    SqlUsuariosCHAMADA3B: TStringField;
    SqlUsuariosCHAMADA3C: TStringField;
    SqlUsuariosCHAMADA3D: TStringField;
    SqlUsuariosCHAMADA3E: TStringField;
    SqlUsuariosCHAMADA3F: TStringField;
    SqlUsuariosCHAMADA3F1: TStringField;
    SqlUsuariosCHAMADA4: TStringField;
    SqlUsuariosCHAMADA4A: TStringField;
    SqlUsuariosCHAMADA4B: TStringField;
    SqlUsuariosSAIR: TStringField;
    SqlUsuariosCHAMADA2F4: TStringField;
    SqlUsuariosCHAMADA3G: TStringField;
    SqlUsuariosCHAMADA5: TStringField;
    SqlUsuariosCHAMADA5A: TStringField;
    SqlUsuariosCHAMADA5B: TStringField;
    SqlUsuariosCHAMADA3H: TStringField;
    SqlUsuariosCHAMADA3I: TStringField;
    SqlUsuariosCHAMADA5C: TStringField;
    SqlUsuariosCHAMADA3J: TStringField;
    SqlUsuariosCHAMADA5D: TStringField;
    SqlUsuariosCHAMADA1Q: TStringField;
    SqlUsuariosCHAMADA3G1: TStringField;
    SqlUsuariosCHAMADA3G2: TStringField;
    SqlUsuariosCHAMADA3G3: TStringField;
    SqlUsuariosCHAMADA5E: TStringField;
    SqlUsuariosCHAMADA5F: TStringField;
    SqlUsuariosCHAMADA5G: TStringField;
    SqlUsuariosCHAMADA5H: TStringField;
    SqlUsuariosCHAMADA5I: TStringField;
    SqlUsuariosCHAMADA5J: TStringField;
    SqlUsuariosCHAMADA5K: TStringField;
    SqlUsuariosSALDONF: TStringField;
    SqlUsuariosCHAMADA4C: TStringField;
    SqlUsuariosCHAMADA4D: TStringField;
    SqlUsuariosCHAMADA4E: TStringField;
    SqlUsuariosCHAMADA4F: TStringField;
    SqlUsuariosCHAMADA4G: TStringField;
    SqlUsuariosCHAMADA3K: TStringField;
    SqlUsuariosCHAMADA6K: TStringField;
    SqlUsuariosExcluirReentrega1: TStringField;
    SqlUsuariosGeraoEDIDucco1: TStringField;
    SqlUsuariosLivroFiscal1: TStringField;
    SqlUsuariosLivroArmazem: TStringField;
    SqlUsuariosEXPNF: TStringField;
    SqlUsuariosREL_TRANSPORTE: TStringField;
    SqlUsuariosREL_KARDEX: TStringField;
    SqlUsuariosEDI_OCOREN: TStringField;
    SqlUsuariosTB_OCOREN: TStringField;
    SqlUsuariosREL_MANIFESTO: TStringField;
    SqlUsuariosALTERA_MANIFESTO: TStringField;
    DBCheckBox1: TDBCheckBox;
    SqlUsuariosNF_COLETA: TStringField;
    SqlUsuariosmnuFrete: TStringField;
    SqlUsuariosPgtoFrete: TStringField;
    SqlUsuariosDescontosFrete: TStringField;
    SqlUsuariosConciliaodeFrete: TStringField;
    SqlUsuariosPRE_CARGA: TStringField;
    SqlUsuariosMANIFESTO_RATEIA: TStringField;
    SqlUsuariosFATURA_GENERICA: TStringField;
    SqlUsuariosCTRC_GENERICO: TStringField;
    SqlUsuariosREL_OTIMIZA_CARGA: TStringField;
    DBCheckBox2: TDBCheckBox;
    SqlUsuariosRemanejaSN: TStringField;
    SqlUsuariosTRANSACAODIARIA: TStringField;
    SqlUsuariosMANIFESTO_GERAL: TStringField;
    SqlUsuariosLIBERA_POSICAO: TStringField;
    SqlUsuariosALTERA_NF: TStringField;
    SqlUsuariosAdmin: TStringField;
    SqlUsuariosTRANSF_CODIGO: TStringField;
    SqlUsuariosRASTREABILIDADE: TStringField;
    SqlUsuariosEXPORT_MANIFESTO: TStringField;
    SqlUsuariosEstoqueInovatti: TStringField;
    SqlUsuariosRELTRANSPORTE2: TStringField;
    SqlUsuariosClientesNBFRel: TStringField;
    SqlUsuariosClientesFinaisRel: TStringField;
    SqlUsuariosRELFRETECARGIL: TStringField;
    SqlUsuariosConfirmaCTRC: TStringField;
    SqlUsuariosNotasEntradaxRemessa: TStringField;
    SqlUsuariosNFS_Conhecimento: TStringField;
    SqlUsuariosCorrigeCTRComplementar: TStringField;
    SqlUsuariosFechamentodeFrete: TStringField;
    SqlUsuariostpProdColeta: TStringField;
    SqlUsuariosAlteraClientes: TStringField;
    DBCheckBox3: TDBCheckBox;
    SqlUsuarioseDocs: TStringField;
    SqlUsuariosContaCorrente: TStringField;
    SqlUsuariosPermanencia: TStringField;
    SqlUsuariosLiberaOD: TStringField;
    SqlUsuariosEstoqueNF: TStringField;
    SqlUsuariosNFSEConfig: TStringField;
    SqlUsuariosEDICafe: TStringField;
    SqlUsuariosEDIConembDIAGIO: TStringField;
    SqlUsuariosContratoFrete: TStringField;
    SqlUsuariosRelRomaneioEntradaEstoque: TStringField;
    procedure trvMenuDblClick(Sender: TObject);
    procedure SqlUsuariosAfterPost(DataSet: TDataSet);
    procedure SqlUsuariosAfterDelete(DataSet: TDataSet);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DNBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure btnFecharClick(Sender: TObject);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure DNClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnExpandClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure wwDBLookupCombo11KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure Func_MarcaDesmarca(p_Tree : TTreeView; p_itemIndexNo :Integer; p_Check: String);
function Func_CalculaNrDescendentes(p_Tree : TTreeView; p_ItemIndex: Integer): Integer;
Procedure Proc_MontaTreeView(p_menu : TMainMenu; p_Tree: TTreeView);
FUNCTIOn Func_ApagaSubString(p_String: String; p_SubString: String): String;
procedure Proc_GravaTreeView(p_Campos: t_Campos);


var
  FUsuarios: TFUsuarios;

implementation

uses USenha, UMenu;
//uses UMenu,Usenha;

             {888}
const v_Check = ' �';
var a_Campos: t_Campos;
    v_Grava: Boolean;

{$R *.DFM}

procedure TFUsuarios.trvMenuDblClick(Sender: TObject);
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

procedure TFUsuarios.SqlUsuariosAfterPost(DataSet: TDataSet);
begin
   RegistroCorrente := sqlUsuarios.FieldByName('NOME').AsString;
   try
     begin
       FSenha.Dtb_BaseDados.Applyupdates([sqlUsuarios]);
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

procedure TFUsuarios.SqlUsuariosAfterDelete(DataSet: TDataSet);
begin
   RegistroCorrente := sqlUsuarios.FieldByName('NOME').AsString;
   try
     begin
      FSenha.Dtb_BaseDados.Applyupdates([sqlUsuarios]);
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
    ///
     

    ///
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
  SQLCorrente := sqlUsuarios;
   sb.simpletext := 'Aguarde, abrindo tabelas...';
   sb.update;
   FQuery(SQLCorrente, 'SELECT * FROM USUARIOS ','','ORDER BY NOME ','','');
   sb.simpletext := ' ';
   sb.update;
   Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);
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

procedure TFUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
  if (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then begin
      btnRefresh.enabled := True;
   end
   else begin
      btnRefresh.enabled := False;
   end;
end;

procedure TFUsuarios.dsUsuariosDataChange(Sender: TObject; Field: TField);
begin
  if Panel1.enabled = true then begin
       if (SQLCorrente <> nil) and (dsUsuarios.State <> dsInsert) and (dsUsuarios.State <> dsEdit) then
          Proc_MontaTreeView(fMenu.MainMenu1, trvMenu);
   end ;
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
   // Ajusta o posicionamento do Panel de Localiza��o r�pida

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

end.

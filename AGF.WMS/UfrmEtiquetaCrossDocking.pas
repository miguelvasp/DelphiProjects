unit UfrmEtiquetaCrossDocking;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, Provider, DBClient,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmEtiquetaCrossDocking = class(TForm)
    Label1: TLabel;
    edtOS: TEdit;
    Button1: TButton;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    qrOs: TADOQuery;
    qrAux: TADOQuery;
    qrOsOS_ID: TAutoIncField;
    STP_RESUMO_CROS: TADOStoredProc;
    Q_RMP: TADOQuery;
    Q_RMPMRP_ID: TAutoIncField;
    Q_RMPOS_ID: TIntegerField;
    Q_RMPPRO_ID: TIntegerField;
    Q_RMPPRO_COD: TStringField;
    Q_RMPPRO_DESC: TStringField;
    Q_RMPMRP_VOLUME: TFloatField;
    Q_RMPMRP_PESO: TFloatField;
    Q_RMPMRP_QTDEPALLET: TIntegerField;
    Q_RMPMRP_QTDE: TFloatField;
    Q_RMPCH: TIntegerField;
    Q_RMPPAL_ID: TIntegerField;
    Q_PROD: TADOQuery;
    qrProEspecifico: TADOQuery;
    qrProEspecificoPALE_ID: TAutoIncField;
    qrProEspecificoCLIN_ID: TIntegerField;
    qrProEspecificoPRO_ID: TIntegerField;
    qrProEspecificoCLIF_ID: TIntegerField;
    qrProEspecificoPALE_LASTRO: TIntegerField;
    qrProEspecificoPALE_ALTURA: TIntegerField;
    qrProEspecificoPALE_QTDE_PALLET: TIntegerField;
    qrProEspecificoPALE_QTDE_PALLETUV: TFloatField;
    Q_PRODPRO_ID: TAutoIncField;
    Q_PRODUVEN_ID_EXP: TIntegerField;
    Q_PRODQTDE_UVUE: TFloatField;
    Q_PRODPRO_QTDE_PALLET: TIntegerField;
    Q_PRODPRO_QTDE_PALLETUV: TFloatField;
    Q_PRODPRO_COD: TStringField;
    Q_PRODPRO_LASTRO: TIntegerField;
    Q_PRODPRO_ALTURA: TIntegerField;
    qrBusca: TADOQuery;
    qrBuscaMARCADOR: TStringField;
    qrBuscaPRO_ID: TIntegerField;
    qrBuscaPRO_COD: TStringField;
    qrBuscaPRO_DESC: TStringField;
    qrBuscaNETIQ: TIntegerField;
    DataSource1: TDataSource;
    cdsBusca: TClientDataSet;
    dspBusca: TDataSetProvider;
    cdsBuscaMARCADOR: TStringField;
    cdsBuscaPRO_COD: TStringField;
    cdsBuscaPRO_DESC: TStringField;
    cdsBuscaNETIQ: TIntegerField;
    cdsBuscaPRO_ID: TIntegerField;
    Report: TQuickRep;
    qrEtiqueta: TADOQuery;
    qrEtiquetaID: TAutoIncField;
    qrEtiquetaCH: TIntegerField;
    qrEtiquetaPRO_ID: TIntegerField;
    qrEtiquetaPRO_COD: TStringField;
    qrEtiquetaPRO_DESC: TStringField;
    qrEtiquetaOS_ID: TIntegerField;
    qrEtiquetaNPALLET: TIntegerField;
    qrEtiquetaQTDE: TFloatField;
    qrEtiquetaMARCADOR: TStringField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRMemo1: TQRMemo;
    lbOS: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    lbLastrox: TQRLabel;
    QRLabel2: TQRLabel;
    lbAlturax: TQRLabel;
    lbTotalPage: TQRLabel;
    qrEtiquetaLASTRO: TIntegerField;
    qrEtiquetaALTURA: TIntegerField;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    procedure Button1Click(Sender: TObject);
    procedure cdsBuscaMARCADORChange(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEtiquetaCrossDocking: TfrmEtiquetaCrossDocking;
  Usuario : Integer;
implementation

uses USenha, UMenu, UOS;

{$R *.DFM}

procedure TfrmEtiquetaCrossDocking.Button1Click(Sender: TObject);
var
  CONTA_UE, CONTA_PALLET, SALDO, SALDO_UV, QTDE, QTDE_AUX, QTDE_PALLET : Real;
  saldo3,  SALDO2 : string;
  PAL_N, LASTROX, ALTURAX : Integer;
begin
  qrOs.Close;
  qrOs.Parameters[0].Value := StrToInt(edtOS.Text);
  qrOs.Open;

  if qrOs.IsEmpty then begin
      ShowMessage('A OS selecionada n�o � CrossDocking');
      Abort;
  end;
  //usuario do menu
  Usuario := FMenu.SqlUsuariosCH.Value;
  PAL_N := 0;

  //apagamos etiquetas existentes
  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add('delete from ETIQUETA_CROSSDOCKING where ch = ' + IntToStr(Usuario));
      ExecSQL;
  end;

  //atualizamos o marcador da nf
  with qrAux do begin
      Close;
      sql.Clear;
      sql.Add('update nf set NFI_MARCADOR_CROS = ''*'' WHERE OS_ID = ' + qrOsOS_ID.AsString);
      ExecSQL;
  end;

  //EXECUTAMOS A PROCEDURE NO BANCO
  WITH STP_RESUMO_CROS do begin
      Parameters[0].Value := qrOsOS_ID.Value;
      Parameters[0].Value := Usuario;
      Prepared := True;
      ExecProc;
  end;

  Q_RMP.Close;
  Q_RMP.Parameters[0].Value := qrOsOS_ID.Value;
  Q_RMP.Open;

  Q_RMP.First;
  while not Q_RMP.Eof do begin

         Q_PROD.Close;
         Q_PROD.Parameters[0].Value := Q_RMPPRO_ID.Value;
         Q_PROD.Open;

         lbOS.Caption := 'OS: ' + FOS.cdsOSOS_ID.AsString;

         // verifica se nao existe paletiza��o especifica
        if Q_RMPPAL_ID.Value = 0 then begin

                 CONTA_UE := 0 ;
                 CONTA_PALLET := 0 ;
                 CONTA_PALLET := int(Q_RMPMRP_QTDE.asfloat/Q_PRODPRO_QTDE_PALLETUV.asfloat);
                // lbPaletizacao.Caption := 'Pallet: Alt. ' + Q_PRODPRO_ALTURA.AsString + ' Last. ' + Q_PRODPRO_LASTRO.AsString;
                // lbLastro.Caption :=  'Lastro: ' + Q_PRODPRO_LASTRO.AsString;
                // lbAltura.Caption :=  'Altura: ' + Q_PRODPRO_ALTURA.AsString;
                 LASTROX := Q_PRODPRO_LASTRO.AsInteger;
                 ALTURAX := Q_PRODPRO_ALTURA.AsInteger;
                 QTDE := Q_RMPMRP_QTDE.asfloat;
                 QTDE_PALLET := Q_PRODPRO_QTDE_PALLETUV.asfloat

        end else begin

        //buscamos o produto especifico
        qrProEspecifico.close;
        qrProEspecifico.Parameters[0].Value := Q_RMPPAL_ID.Value;
        qrProEspecifico.Open;


                 CONTA_UE := 0 ;
                 CONTA_PALLET := 0 ;
                 CONTA_PALLET := int(Q_RMPMRP_QTDE.asfloat/qrProEspecificoPALE_QTDE_PALLETUV.AsFloat);
                 // lbPaletizacao.Caption := 'Pallet: Alt. ' + Q_PRODPRO_ALTURA.AsString + ' Last. ' + Q_PRODPRO_LASTRO.AsString;
                // lbLastro.Caption :=  'Lastro: ' + qrProEspecificoPALE_LASTRO.AsString;
                 //lbAltura.Caption :=  'Altura: ' + qrProEspecificoPALE_ALTURA.AsString;
                 LASTROX := qrProEspecificoPALE_LASTRO.AsInteger;
                 ALTURAX := qrProEspecificoPALE_ALTURA.AsInteger;

                 QTDE := Q_RMPMRP_QTDE.asfloat;
                 QTDE_PALLET := qrProEspecificoPALE_QTDE_PALLETUV.AsFloat;
        end;


      //EFETUA OS LAN�AMENTOS NA TABELA DE ETIQUETAS
      while (QTDE > 0) do begin

          with qrAux do begin
              Close;
              sql.Clear;
              sql.Add('insert into ETIQUETA_CROSSDOCKING  (CH,PRO_ID,PRO_COD,PRO_DESC,OS_ID,NPALLET,QTDE, MARCADOR, LASTRO, ALTURA)');
              sql.Add(' values(:CH, :PRO_ID, :PRO_COD, :PRO_DESC, :OS_ID, :NPALLET, :QTDE, :MARCADOR, :LASTRO, :ALTURA)');
              Parameters[0].Value :=  Usuario;
              Parameters[1].Value :=  Q_RMPPRO_ID.Value;
              Parameters[2].Value :=  Q_RMPPRO_COD.Value;
              Parameters[3].Value :=  Q_RMPPRO_DESC.Value;
              Parameters[4].Value :=  qrOsOS_ID.Value;
              Inc(PAL_N);
              Parameters[5].Value := PAL_N;
              IF QTDE >= QTDE_PALLET then
                 Parameters[6].Value :=  QTDE_PALLET
              else
                 Parameters[6].Value :=  QTDE;

              Parameters[7].Value :=  '*';
              Parameters[8].Value :=  LASTROX;
              Parameters[9].Value :=  ALTURAX;
              ExecSQL;
          end;

          QTDE := QTDE - QTDE_PALLET;
      end;



      Application.ProcessMessages;
      Q_RMP.Next;
  end;


  cdsBusca.Close;
  qrBusca.SQL.Clear;
  qrBusca.SQL.Add(
      '  SELECT '+
      '     MARCADOR, '+
      '     PRO_ID,  '+
      '     PRO_COD, '+
      '     PRO_DESC, '+
      '     COUNT(PRO_ID) AS NETIQ '+
      '  FROM ETIQUETA_CROSSDOCKING   '+
      '  WHERE CH =    '+  IntToStr(Usuario)+
      '  GROUP BY   '+
      '     MARCADOR, '+
      '     PRO_ID,  '+
      '     PRO_COD, '+
      '     PRO_DESC   '+
      '  ORDER BY PRO_COD   '
  );
//  qrBusca.Parameters[0].Value := Usuario;
  cdsBusca.Open;

end;

procedure TfrmEtiquetaCrossDocking.cdsBuscaMARCADORChange(Sender: TField);
begin
  with qrAux do begin
    Close;
    sql.Clear;
    sql.Add('update ETIQUETA_CROSSDOCKING SET MARCADOR = ' + QuotedStr(Sender.AsString));
    SQL.Add('WHERE CH = ' + IntToStr(Usuario) );
    SQL.Add('AND PRO_ID = ' + cdsBuscaPRO_ID.AsString);
    ExecSQL;
  end;
end;

procedure TfrmEtiquetaCrossDocking.Button2Click(Sender: TObject);
begin
  qrEtiqueta.Close;
  qrEtiqueta.Parameters[0].Value := Usuario;
  qrEtiqueta.Open;

  Report.Prepare;
  lbTotalPage.Caption := '/' + IntToStr(Report.QRPrinter.pageCount);
  Report.Preview;

end;

procedure TfrmEtiquetaCrossDocking.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  CONTA_UE, CONTA_PALLET, SALDO, SALDO_UV, QTDE, QTDE_AUX, QTDE_PALLET : Real;
  saldo3,  SALDO2 : string;
  PAL_N : Integer;  
begin
  QRMemo1.Lines.Text := qrEtiquetaPRO_DESC.Value;




end;

procedure TfrmEtiquetaCrossDocking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmEtiquetaCrossDocking := nil;
end;

procedure TfrmEtiquetaCrossDocking.FormShow(Sender: TObject);
begin
  if edtOS.Text <> '' then
    Button1.Click;
end;

end.

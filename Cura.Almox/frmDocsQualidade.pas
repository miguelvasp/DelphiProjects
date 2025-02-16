unit frmDocsQualidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ImgList, StdCtrls, Mask, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  DBCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, ExtCtrls;

type
  TfrmDocsQualidadee = class(TForm)
    Panel1: TPanel;
    SBT_SAIR: TSpeedButton;
    SBT_REL: TSpeedButton;
    Fontex: TDBNavigator;
    fonte: TwwDBNavigator;
    fonteFirst: TwwNavButton;
    fontePrior: TwwNavButton;
    fonteNext: TwwNavButton;
    fonteLast: TwwNavButton;
    fonteInsert: TwwNavButton;
    fonteDelete: TwwNavButton;
    fontePost: TwwNavButton;
    fonteCancel: TwwNavButton;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    DBE_CC_DESC: TwwDBEdit;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    qrDocs: TADOQuery;
    qrDocsDOC_ID: TAutoIncField;
    qrDocsDOC_DESC: TStringField;
    qrAux: TADOQuery;
    procedure SBT_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrDocsAfterPost(DataSet: TDataSet);
    procedure SBT_RELClick(Sender: TObject);
    procedure qrDocsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocsQualidadee: TfrmDocsQualidadee;

implementation

uses UMenu, ufrmRelDocsQualidade;

{$R *.DFM}

procedure TfrmDocsQualidadee.SBT_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDocsQualidadee.FormCreate(Sender: TObject);
VAR IK : Integer;
begin
   for IK := 0 TO PRED(ComponentCount) do begin
       if Components[IK] is TwwDBGrid then begin
           (Components[IK] as TwwDBGrid).TitleColor := clBtnFace;
           (Components[IK] as TwwDBGrid).TitleFont.Color := clBlack;
       end;
   end;
   qrDocs.Open;
end;

procedure TfrmDocsQualidadee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrDocs.Close;
   Action := caFree;
   frmDocsQualidadee := nil;
end;

procedure TfrmDocsQualidadee.qrDocsAfterPost(DataSet: TDataSet);
begin
   qrDocs.Close;
   qrDocs.Open;
end;

procedure TfrmDocsQualidadee.SBT_RELClick(Sender: TObject);
begin
    frmRelDocsQualidade := TfrmRelDocsQualidade.Create(Self);
    frmRelDocsQualidade.QuickRep1.Preview;
    frmRelDocsQualidade.close;
end;

procedure TfrmDocsQualidadee.qrDocsBeforeDelete(DataSet: TDataSet);
begin
    with qrAux do begin
        Close;
        sql.Clear;
        sql.Add(
           'SELECT * FROM FORNECEDOR_DOCUMENTOS WHERE DOC_ID = ' + qrDocsDOC_ID.AsString
        );
        Open;
    end;

    IF qrAux.IsEmpty = False then BEGIN
        ShowMessage('Documento n�o pode ser apagado, ele est� vinculado a um fornecedor.');
        Abort;
    end;

end;

end.

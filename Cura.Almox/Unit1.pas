unit Unit1;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, Buttons, DBCtrls, StdCtrls, Mask,
  ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Bevel1: TBevel;
    GRB_FILT: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    SBT_SAIR: TSpeedButton;
    SBT_IMPR: TSpeedButton;
    SBT_VISU: TSpeedButton;
    DS_FORN: TwwDataSource;
    Q_FORN: TwwQuery;
    Q_FORNFOR_CODI: TStringField;
    Q_FORNFOR_RAZA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.

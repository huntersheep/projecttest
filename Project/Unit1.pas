unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, DBXDevartInterBase, Data.FMTBcd,
  Data.SqlExpr, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLQuery1ID: TIntegerField;
    SQLQuery1DATE_TEST: TDateField;
    SQLQuery1NUMBER_SAMPLE: TIntegerField;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1DATE_TEST: TDateField;
    ClientDataSet1NUMBER_SAMPLE: TIntegerField;
    SQLQuery1DATE_PARAM: TDateField;
    ClientDataSet1DATE_PARAM: TDateField;
    SQLQuery1ID_PARAM: TIntegerField;
    ClientDataSet1ID_PARAM: TIntegerField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    ClientDataSet1.Open;
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  SS: TStrings;
begin
  SS := TStringList.Create;
  try
    SS.Add('A');
    SS.Add('B');
    SS.Add('C');

    with DBGrid1.Columns[0] do
    begin
      ButtonStyle := cbsAuto;
      PickList := SS;
    end;
  finally
    SS.Free;
  end;
end;

end.

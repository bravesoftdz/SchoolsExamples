unit uFrmSchools;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.Grids, WEBLib.DBCtrls, Data.DB,
  XData.Web.JsonDataset, XData.Web.Dataset, XData.Web.Connection, WEBLib.DB, Vcl.StdCtrls,
  WEBLib.StdCtrls;

type
  TFrmSchools = class(TWebForm)
    Connection: TXDataWebConnection;
    DataSet: TXDataWebDataSet;
    DataSetName: TStringField;
    DataSetADDRESS: TStringField;
    DataSetCITY: TStringField;
    DataSetStudents: TIntegerField;
    Grid: TWebDBGrid;
    WebDataSource1: TWebDataSource;
    WebButton1: TWebButton;
    procedure ConnectionConnect(Sender: TObject);
    procedure WebButton1Click(Sender: TObject);
  end;

var
  FrmSchools: TFrmSchools;

implementation

{$R *.dfm}

procedure TFrmSchools.ConnectionConnect(Sender: TObject);
begin
  DataSet.Load;
end;

procedure TFrmSchools.WebButton1Click(Sender: TObject);
begin
  self.Close;
end;

end.
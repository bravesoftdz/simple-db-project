unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.SqlExpr, Bde.DBTables, Datasnap.DBClient, Data.Win.ADODB,
  Data.FMTBcd, Datasnap.Provider, Vcl.ExtCtrls, Vcl.StdCtrls, System.Win.ComObj,
  Vcl.Menus, Vcl.DBCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components;

type
  TForm1 = class(TForm)
    MySQL: TSQLConnection;
    DataSource1: TDataSource;
    Table1: TTable;
    SQLConnection1: TSQLConnection;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    SQLTable1: TSQLTable;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Deletecurrentrow1: TMenuItem;
    DBMemo1: TDBMemo;
    ADOTable1id: TAutoIncField;
    ADOTable1userid: TIntegerField;
    ADOTable1username: TStringField;
    ADOTable1text: TMemoField;
    ADOTable1time: TIntegerField;
    BindingsList1: TBindingsList;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Deletecurrentrow1Click(Sender: TObject);
    procedure ADOTable1textGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  Excel:Variant;
  ExcelExists: boolean;

function GetExcel: Variant;
begin
  ExcelExists := true;
  try
    //OleContainerExcelSheet.DoVerb(1);
    Excel := GetActiveOleObject('Excel.Application');
  except
    ExcelExists := false;
    //tbsExcelImportExport.TabVisible := false;
    ShowMessage('Схоже, у вас немає Екселю. Опція імпорту\експорту даних з\у Excel недоступна');
  end;
  Result := Excel
end;

procedure DoSomethingWithExcel;
{var
//  S:string;
  WorkBook, Sheet: Variant;}
{var
  i, j, Len: integer;
  SL, SL2: TStringList;
  Dataset: TDataSet;
  S: string;
  r: extended;  }
begin
  //TrendTabsheetFirstTime := true;

  GetExcel;

{  Excel := GetActiveOleObject('Excel.Application');
  OleContainerExcelSheet.DoVerb(1);//Run;}

  //ActiveWBName :=
  Excel.ActiveWorkBook.Name;
//  Excel:=CreateOleObject('Excel.Application');
//  Excel.Application.EnableEvents:=false;
//  Excel.Workbooks.Add;
  Excel.Visible:=true;
  //ExRow:=1;

  //SL := TStringList.Create;
  //SL2 := TStringList.Create;
  (*try
    SL.Text := FieldNames;
    SL2.Text := FieldCaptions;
    WorkBook := Excel.WorkBooks.Item[ActiveWBName];
    WorkBook.Activate;
    Sheet := WorkBook.WorkSheets[1];
    Sheet.Activate;
    Len := SL2.Count;
    for i := 0 to Len - 1 do begin
      Sheet.Cells[1, i+1] := SL2[i];
    end;

  DBISAMQuery1.SQL.Text := 'select * from BankData';
  Dataset := DBISAMQuery1;
  Dataset.Open;
  i := 2;
  repeat
    Sheet.Cells[i, 1] := Dataset.Fields[0].AsString;
    for j := 2 to len do begin
      s := Dataset.Fields[j - 1].AsString;
      if TryStrToFloat(s, r) then
{      if ExportTypeFloat//Export=Float
        and TryStrToFloat(s, r) then
          Sheet.Cells[i, j] := r
      else
//        Sheet.Cells[i, j] := Dataset.Fields[j - 1].AsString;}
//        Sheet.Cells[i, j] := Dataset.Fields[j - 1].AsVariant;
        Sheet.Cells[i, j] := Dataset.Fields[j - 1].AsFloat
      else
        Sheet.Cells[i, j] := Dataset.Fields[j - 1].AsString;
    end;
    Dataset.Next;
    Inc(i);
  until Dataset.Eof;
  Dataset.Close;
  finally
    SL.Free;
    SL2.Free;
  end;
//  Sleep(5000);

{  For i := 1 to Excel.WorkBooks.Count do Begin
  WorkBook := Excel.WorkBooks.Item[i];
  For j := 1 to WorkBook.Worksheets.Count do Begin
  Sheet := WorkBook.Worksheets.Item[j];
  Sheet.Range['A1', 'B50'].Value := WorkBook.Name + ':Я тут';
  End;
  End;}
//  Excel.WorkBooks.Item['Лист в OleContainerExcelSheet'].WorkSheets[1].Range['A'+IntToStr(ExRow)+':G'+IntToStr(ExRow)].Merge;
(*  WorkBook := Excel.WorkBooks.Item[ActiveWBName];
  WorkBook.Activate;

  WorkBook.WorkSheets[1].Range['A'+IntToStr(ExRow)+':G'+IntToStr(ExRow)].Merge;
  WorkBook.WorkSheets[1].Range['A'+IntToStr(ExRow)+':G'+IntToStr(ExRow)].Select;
  Excel.Selection.HorizontalAlignment:=xlCenter;
  WorkBook.WorkSheets[1].Cells[ExRow,1]:='Заполняем ячейки подряд одна за другой';
  Inc(ExRow);
  for i:=0 to 5{StringGrid1.RowCount-1} do
  begin
    for j:=0 to 5{StringGrid1.ColCount-1} do
    begin
      S:='12341234';//StringGrid1.Cells[j,i];
      WorkBook.WorkSheets[1].Cells[ExRow,j+1]:=S;
    end;
    Inc(ExRow);
  end;
  Inc(ExRow);
     *)
{  XMeaningIndex := cboXAct.ItemIndex;
  TransformationIndex := cboXYDependence.ItemIndex;
  XMeaning := cboXAct.Text;
  Transformation := cboXYDependence.Text;
  ChangeXY := chkChangeXY.Checked;

  vleOptions.Values['X'] := XMeaning;
  vleOptions.Values['T'] := Transformation;
  vleOptions.Values['~'] := BoolToStr(ChangeXY, true);
  vleOptions.Values['A'] := FloatToStr(A);
  vleOptions.Values['B'] := FloatToStr(B);

  CalcChartYMinusXAB(Chart3, DBISAMTable1, A, B, XMin, XMax, XMeaningIndex, TransformationIndex, ChangeXY);
//  CalcChartYMinusXAB(Chart3, Data);}

end;

procedure ExportRecordsetToMSExcel(DestName: string; Data: _Recordset);
var
  ovExcelApp: OleVariant;
  ovExcelWorkbook: OleVariant;
  ovWS: OleVariant;
  ovRange: OleVariant;
  arrData: Variant;
  i: Byte;
begin
// uses System.Win.ComObj;
  //If Excel isnt installed will raise an exception
  ovExcelApp := CreateOleObject('Excel.Application');

  //if you want to show Excel, uncomment code below
  //ovExcelApp := GetActiveOleObject('Excel.Application');
  //ovExcelApp.Visible:=true;
  try
    ovExcelWorkbook   := ovExcelApp.WorkBooks.Add;
    // go to first worksheet
    ovWS := ovExcelWorkbook.Worksheets[1];
    ovWS.Activate;
    ovWS.Select;
    //go to first cell
    ovRange := ovWS.Range['A1', ovWS.Cells[1, Data.Fields.Count]];
    arrData := VarArrayCreate([1, Data.Fields.Count], varVariant);
    for i := 1 to Data.Fields.Count do
      arrData[i] := Data.Fields[i - 1].Name;
    //Fill first row by field names
    ovRange.Value := arrData;
    ovRange := ovWS.Range['A2', 'A2'];
    ovRange.Resize[Data.RecordCount, Data.Fields.Count];
    ovRange.CopyFromRecordset(Data, Data.RecordCount, Data.Fields.Count); //this copy the entire recordset to the selected range in excel
    //Copy to other rows data
    ovWS.SaveAs(DestName, 1, '', '', False, False);
  finally
    ovExcelWorkbook.Close(False);
    ovWS := Unassigned;
    ovExcelWorkbook := Unassigned;
    ovExcelApp := Unassigned;
  end;
end;

procedure TForm1.ADOTable1textGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(ADOTable1text.AsString, 1, 50);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ExportRecordsetToMSExcel('D:\x.xls', ADOTable1.Recordset );
end;

procedure TForm1.Deletecurrentrow1Click(Sender: TObject);
begin
  ADOTable1.Delete;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //MySQL.Connected := True;
end;

end.

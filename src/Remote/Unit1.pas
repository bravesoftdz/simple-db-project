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
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    PopupMenu1: TPopupMenu;
    Deletecurrentrow1: TMenuItem;
    DBMemo1: TDBMemo;
    ADOTable1id: TAutoIncField;
    ADOTable1userid: TIntegerField;
    ADOTable1username: TStringField;
    ADOTable1text: TMemoField;
    ADOTable1time: TIntegerField;
    DBNavigator1: TDBNavigator;
    ADOConnection2: TADOConnection;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    ADOTable2id: TAutoIncField;
    ADOTable2username: TStringField;
    ADOTable2email: TStringField;
    ADOTable2password: TStringField;
    ADOTable2signup_date: TIntegerField;
    ADOTable2language: TStringField;
    ADOTable2status: TSmallintField;
    ADOTable2last_activity: TIntegerField;
    DBNavigator2: TDBNavigator;
    ADOConnection3: TADOConnection;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    AutoIncField2: TAutoIncField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField3: TIntegerField;
    StringField8: TStringField;
    SmallintField2: TSmallintField;
    IntegerField4: TIntegerField;
    ADOConnection4: TADOConnection;
    DBGrid2: TDBGrid;
    ADOTable3id: TAutoIncField;
    ADOTable3userid: TIntegerField;
    ADOTable3username: TStringField;
    ADOTable3text: TMemoField;
    ADOTable3time: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator3: TDBNavigator;
    DBMemo2: TDBMemo;
    Panel1: TPanel;
    btnExport2Excel: TButton;
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    btnTest: TButton;
    Panel3: TPanel;
    btnQuery: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    DBGrid4: TDBGrid;
    DBNavigator4: TDBNavigator;
    edtFilter: TEdit;
    btnFilter: TButton;
    chkExactMatch: TCheckBox;
    cmdFieldToFilter: TComboBox;
    btnCancelFilter: TButton;
    procedure btnExport2ExcelClick(Sender: TObject);
    procedure Deletecurrentrow1Click(Sender: TObject);
    procedure ADOTable1textGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ADOTable3textGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnCancelFilterClick(Sender: TObject);
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

procedure TForm1.ADOTable3textGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(TMemoField(Sender).AsString, 1, 50);
end;

procedure TForm1.btnCancelFilterClick(Sender: TObject);
begin
  ADOTable2.Filtered := False;
end;

procedure TForm1.btnExport2ExcelClick(Sender: TObject);
begin
  ExportRecordsetToMSExcel('D:\x.xls', ADOTable1.Recordset );
end;

var
  FieldNames : array [0..1] of String = ('username', 'email');
procedure TForm1.btnFilterClick(Sender: TObject);
begin
  if chkExactMatch.Checked then
    ADOTable2.Filter := FieldNames[cmdFieldToFilter.ItemIndex] + ' = ' + QuotedStr( edtFilter.Text )
  else
    ADOTable2.Filter := FieldNames[cmdFieldToFilter.ItemIndex] + ' LIKE ''*' +  edtFilter.Text + '*''';
  ADOTable2.Filtered := True;
end;

procedure TForm1.btnQueryClick(Sender: TObject);
begin
  ADOQuery1.SQL.Text := Memo2.Lines.Text;
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;
  ShowMessage('Executed successfully; ADOQuery1.RecordCount = ' + IntToStr(ADOQuery1.RecordCount) + ' ; ADOQuery1.RowsAffected = ' + IntToStr(ADOQuery1.RowsAffected) )
end;

procedure TForm1.btnTestClick(Sender: TObject);
begin
  ADOQuery1.SQL.Text := ' select email from users where username = 7 and id = 9';
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;
  if ADOQuery1.RecordCount = 1 then
    ShowMessage(ADOQuery1.Fields[0].AsString )
  else
    ShowMessage('ADOQuery1.RecordCount :' + IntToStr(ADOQuery1.RecordCount) )
end;

procedure TForm1.DBGrid1ColExit(Sender: TObject);
begin
  if TDBGrid(Sender).SelectedField.FieldName = DBMemo1.DataField then
    DBMemo1.Visible := False

end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not (gdFocused in State) then
    Exit;
    if (Column.Field.FieldName = DBMemo1.DataField) then
    with DBMemo1 do
    begin
      Left := Rect.Left + TDBGrid(Sender).Left + 2;
      Top := Rect.Top + TDBGrid(Sender).Top + 2;
      Width := Rect.Right - Rect.Left;
      //Width := Rect.Right - Rect.Left;
      //Height := Rect.Bottom - Rect.Top;

      Visible := True;
    end;
end;

procedure TForm1.DBGrid2ColExit(Sender: TObject);
begin
  if TDBGrid(Sender).SelectedField.FieldName = DBLookupComboBox1.DataField then
    DBLookupComboBox1.Visible := False;
  if TDBGrid(Sender).SelectedField.FieldName = DBMemo2.DataField then
    DBMemo2.Visible := False

end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DBLookupComboBox1.DataField) then
    with DBLookupComboBox1 do
    begin
      Left := Rect.Left + TDBGrid(Sender).Left + 2;
      Top := Rect.Top + TDBGrid(Sender).Top + 2;
      Width := Rect.Right - Rect.Left;
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;

      Visible := True;
    end;
    if (Column.Field.FieldName = DBMemo2.DataField) then
    with DBMemo2 do
    begin
      Left := Rect.Left + TDBGrid(Sender).Left + 2;
      Top := Rect.Top + TDBGrid(Sender).Top + 2;
      Width := Rect.Right - Rect.Left;
      //Width := Rect.Right - Rect.Left;
      //Height := Rect.Bottom - Rect.Top;

      Visible := True;
    end;
  end

//if (gdFocused in State) then
  //ShowMessage('DBGrid2DrawColumnCell ' + Column.Field.FieldName + '; DBLookupComboBox1.DataField: ' + DBLookupComboBox1.DataField );
end;

procedure TForm1.DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
(* if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DBLookupComboBox1.DataField) then
    with DBLookupComboBox1 do
    begin
      Left := Rect.Left + DBGrid1.Left + 2;
      Top := Rect.Top + DBGrid1.Top + 2;
      Width := Rect.Right - Rect.Left;
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;

      Visible := True;
    end;
  end*)
end;

procedure TForm1.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then Exit;

  if (DBGrid1.SelectedField.FieldName = DBLookupComboBox1.DataField) then
  begin
    DBLookupComboBox1.SetFocus;
    SendMessage(DBLookupComboBox1.Handle, WM_Char, word(Key), 0);
  end
end;

procedure TForm1.Deletecurrentrow1Click(Sender: TObject);
begin
  TDBGrid(TPopupMenu(TMenuItem(Sender).GetParentMenu).PopupComponent).DataSource.DataSet.Delete;
  // Naive implementation (process the same grid on click on any grid):
  //ADOTable1.Delete;
end;

end.

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 512
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 125
    Width = 1056
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 109
    ExplicitWidth = 674
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 1056
    Height = 100
    Align = alTop
    DataSource = DataSource2
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 153
    Width = 1056
    Height = 100
    Align = alTop
    DataSource = DataSource1
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBMemo1: TDBMemo
    Left = 328
    Top = 309
    Width = 185
    Height = 89
    DataField = 'text'
    DataSource = DataSource2
    TabOrder = 2
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 1056
    Height = 25
    DataSource = DataSource2
    Align = alTop
    Kind = dbnHorizontal
    TabOrder = 3
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 128
    Width = 1056
    Height = 25
    DataSource = DataSource1
    Align = alTop
    Kind = dbnHorizontal
    TabOrder = 4
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 278
    Width = 1056
    Height = 100
    Align = alTop
    DataSource = DataSource3
    PopupMenu = PopupMenu1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = DBGrid2ColExit
    OnDrawDataCell = DBGrid2DrawDataCell
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnKeyPress = DBGrid2KeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 144
    Top = 368
    Width = 145
    Height = 21
    DataField = 'userid'
    DataSource = DataSource3
    KeyField = 'id'
    ListField = 'id; username'
    ListSource = DataSource1
    TabOrder = 6
    Visible = False
  end
  object DBNavigator3: TDBNavigator
    Left = 0
    Top = 253
    Width = 1056
    Height = 25
    DataSource = DataSource3
    Align = alTop
    Kind = dbnHorizontal
    TabOrder = 7
  end
  object DBMemo2: TDBMemo
    Left = 536
    Top = 309
    Width = 185
    Height = 89
    DataField = 'text'
    DataSource = DataSource3
    TabOrder = 8
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 458
    Width = 185
    Height = 39
    Align = alCustom
    TabOrder = 9
    object btnExport2Excel: TButton
      Left = 1
      Top = 13
      Width = 183
      Height = 25
      Align = alBottom
      Caption = 'btnExport2Excel'
      TabOrder = 0
      OnClick = btnExport2ExcelClick
      ExplicitLeft = 592
      ExplicitTop = 352
      ExplicitWidth = 97
    end
  end
  object Panel2: TPanel
    Left = 190
    Top = 458
    Width = 185
    Height = 39
    Align = alCustom
    TabOrder = 10
    object btnTest: TButton
      Left = 1
      Top = 13
      Width = 183
      Height = 25
      Align = alBottom
      Caption = 'Test Query'
      TabOrder = 0
      OnClick = btnTestClick
    end
  end
  object Panel3: TPanel
    Left = 380
    Top = 404
    Width = 185
    Height = 93
    Align = alCustom
    TabOrder = 11
    object btnQuery: TButton
      Left = 1
      Top = 67
      Width = 183
      Height = 25
      Align = alBottom
      Caption = 'Test Query'
      TabOrder = 0
      OnClick = btnQueryClick
      ExplicitTop = 13
    end
    object Memo1: TMemo
      Left = 96
      Top = 0
      Width = 17
      Height = 1
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      TabOrder = 1
    end
    object Memo2: TMemo
      Left = 1
      Top = 0
      Width = 185
      Height = 61
      Lines.Strings = (
        'select email from users where '
        'username = 7 and id = 9')
      TabOrder = 2
    end
  end
  object DBGrid4: TDBGrid
    Left = 571
    Top = 398
    Width = 477
    Height = 100
    Align = alCustom
    DataSource = DataSource4
    PopupMenu = PopupMenu1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColExit = DBGrid2ColExit
    OnDrawDataCell = DBGrid2DrawDataCell
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnKeyPress = DBGrid2KeyPress
  end
  object DBNavigator4: TDBNavigator
    Left = 571
    Top = 373
    Width = 477
    Height = 25
    DataSource = DataSource4
    Align = alCustom
    Kind = dbnHorizontal
    TabOrder = 13
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=abc123;Persist Security Info=True;Us' +
      'er ID=peter;Data Source=MySQL32'
    LoginPrompt = False
    Left = 8
    Top = 208
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'baselinechatlines'
    Left = 40
    Top = 208
    object ADOTable1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable1userid: TIntegerField
      FieldName = 'userid'
    end
    object ADOTable1username: TStringField
      FieldName = 'username'
      Size = 50
    end
    object ADOTable1text: TMemoField
      FieldName = 'text'
      OnGetText = ADOTable1textGetText
      BlobType = ftMemo
    end
    object ADOTable1time: TIntegerField
      FieldName = 'time'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable1
    Left = 72
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 320
    object Deletecurrentrow1: TMenuItem
      Caption = 'Delete current row'
      OnClick = Deletecurrentrow1Click
    end
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=tI7*iT7%;Persist Security Info=True;' +
      'User ID=sql543883;Data Source=RemoteMySQL;Initial Catalog=sql543' +
      '883'
    LoginPrompt = False
    Left = 8
    Top = 256
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'users'
    Left = 40
    Top = 256
    object ADOTable2id: TAutoIncField
      DisplayWidth = 5
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable2username: TStringField
      DisplayWidth = 10
      FieldName = 'username'
      Size = 50
    end
    object ADOTable2email: TStringField
      DisplayWidth = 8
      FieldName = 'email'
      Size = 50
    end
    object ADOTable2password: TStringField
      DisplayWidth = 50
      FieldName = 'password'
      Size = 50
    end
    object ADOTable2signup_date: TIntegerField
      DisplayWidth = 15
      FieldName = 'signup_date'
    end
    object ADOTable2language: TStringField
      DisplayWidth = 16
      FieldName = 'language'
      Size = 255
    end
    object ADOTable2status: TSmallintField
      DisplayWidth = 8
      FieldName = 'status'
    end
    object ADOTable2last_activity: TIntegerField
      DisplayWidth = 15
      FieldName = 'last_activity'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 72
    Top = 256
  end
  object ADOConnection3: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=abc123;Persist Security Info=True;Us' +
      'er ID=u597057267_peter;Data Source=JulfySoft;Initial Catalog=u59' +
      '7057267_ajaxdemo'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 8
    Top = 304
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'baselinechatlines'
    Left = 40
    Top = 280
    object ADOTable3id: TAutoIncField
      DisplayWidth = 12
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable3userid: TIntegerField
      DisplayWidth = 12
      FieldName = 'userid'
    end
    object ADOTable3username: TStringField
      DisplayWidth = 49
      FieldName = 'username'
      Size = 50
    end
    object ADOTable3text: TMemoField
      DisplayWidth = 12
      FieldName = 'text'
      OnGetText = ADOTable3textGetText
      BlobType = ftMemo
    end
    object ADOTable3time: TIntegerField
      DisplayWidth = 12
      FieldName = 'time'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 72
    Top = 280
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery1
    Left = 320
    Top = 416
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection4
    CursorType = ctStatic
    TableName = 'users'
    Left = 40
    Top = 352
    object AutoIncField2: TAutoIncField
      DisplayWidth = 4
      FieldName = 'id'
      ReadOnly = True
    end
    object StringField5: TStringField
      DisplayWidth = 10
      FieldName = 'username'
      Size = 50
    end
    object StringField6: TStringField
      DisplayWidth = 9
      FieldName = 'email'
      Size = 50
    end
    object StringField7: TStringField
      DisplayWidth = 48
      FieldName = 'password'
      Size = 50
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 12
      FieldName = 'signup_date'
    end
    object StringField8: TStringField
      DisplayWidth = 19
      FieldName = 'language'
      Size = 255
    end
    object SmallintField2: TSmallintField
      DisplayWidth = 12
      FieldName = 'status'
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 12
      FieldName = 'last_activity'
    end
  end
  object ADOConnection4: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=abc123;Persist Security Info=True;Us' +
      'er ID=u339677023_peter;Data Source=owl;Initial Catalog=u33967702' +
      '3_db'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 8
    Top = 352
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource2
    Parameters = <>
    Left = 32
    Top = 424
  end
end

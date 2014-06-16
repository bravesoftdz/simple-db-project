object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 100
    Width = 674
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 388
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 674
    Height = 100
    Align = alTop
    DataSource = DataSource3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 103
    Width = 674
    Height = 100
    Align = alTop
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 203
    Width = 674
    Height = 100
    Align = alTop
    DataSource = DataSource2
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBMemo1: TDBMemo
    Left = 328
    Top = 309
    Width = 185
    Height = 89
    DataField = 'text'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 373
    Width = 240
    Height = 25
    DataSource = DataSource2
    Kind = dbnHorizontal
    TabOrder = 5
  end
  object MySQL: TSQLConnection
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=16.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=plans'
      'User_Name=peter'
      'Password=abc123'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 16
    Top = 152
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = SQLTable1
    Left = 48
    Top = 112
  end
  object Table1: TTable
    Left = 192
    Top = 152
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=16.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=ServerName'
      'Database=DBNAME'
      'User_Name=peter'
      'Password=abc123'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    VendorLib = 'LIBMYSQL.dll'
    Left = 104
    Top = 160
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=abc123;Persist Security Info=True;Us' +
      'er ID=peter;Data Source=MySQL32'
    LoginPrompt = False
    Left = 104
    Top = 248
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'baselinechatlines'
    Left = 152
    Top = 248
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
    Left = 192
    Top = 248
  end
  object SQLTable1: TSQLTable
    IndexFieldNames = 'id'
    MaxBlobSize = 1
    SQLConnection = MySQL
    TableName = 'plans'
    Left = 16
    Top = 88
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 96
    Top = 56
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 72
    Top = 8
  end
  object SQLDataSet1: TSQLDataSet
    SchemaName = 'plans'
    Active = True
    CommandText = 'plans'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MySQL
    Left = 16
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet1
    Left = 104
    Top = 104
  end
  object DataSource4: TDataSource
    DataSet = SQLDataSet1
    Left = 48
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 320
    object Deletecurrentrow1: TMenuItem
      Caption = 'Delete current row'
      OnClick = Deletecurrentrow1Click
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 20
    Top = 5
  end
end

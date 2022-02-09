object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 205
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 489
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PARAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_PARAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_TEST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_SAMPLE'
        Width = 88
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DevartFirebird'
    Params.Strings = (
      'DriverUnit=DBXDevartInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver220.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartInterBaseMetaDataCommandFactory,' +
        'DbxDevartInterBaseDriver220.bpl'
      'ProductName=DevartInterBase'
      'GetDriverFunc=getSQLDriverInterBase'
      'LibraryName=dbexpida40.dll'
      'VendorLib=fbclient.dll'
      'LibraryNameOsx=libdbexpida40.dylib'
      'VendorLibOsx=libfbclient.dylib'
      'Database='
      'User_Name='
      'Password='
      'SQLDialect=3'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommitted'
      'WaitOnLocks=True'
      'CharLength=0'
      'EnableBCD=True'
      'OptimizedNumerics=True'
      'LongStrings=True'
      'UseQuoteChar=False'
      'FetchAll=False'
      'DeferredBlobRead=False'
      'DeferredArrayRead=False'
      'ForceUsingDefaultPort=False'
      'ForceUnloadClientLibrary=False'
      'WireCompression=False'
      'UseSSL=False'
      'UseUnicode=True')
    Left = 456
    Top = 136
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_param'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_param'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_param'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   cast(:ID_PARAM as integer) ID_PARAM,'
      '   cast(:date_param as date) as date_param,'
      '   T.ID,'
      '   T.DATE_TEST,'
      '   T.NUMBER_SAMPLE'
      'from MASTER_TEST T'
      'where ((T.ID = :ID_PARAM) or (:ID_PARAM is null)) and'
      '      ((T.DATE_TEST = :date_param) or (:date_param is null))')
    SQLConnection = SQLConnection1
    Left = 104
    Top = 136
    object SQLQuery1ID_PARAM: TIntegerField
      FieldName = 'ID_PARAM'
    end
    object SQLQuery1DATE_PARAM: TDateField
      FieldName = 'DATE_PARAM'
    end
    object SQLQuery1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLQuery1DATE_TEST: TDateField
      FieldName = 'DATE_TEST'
    end
    object SQLQuery1NUMBER_SAMPLE: TIntegerField
      FieldName = 'NUMBER_SAMPLE'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 368
    Top = 136
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PARAM'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftDate
        Name = 'date_param'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_param'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_param'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 280
    Top = 136
    object ClientDataSet1ID: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID'
      Required = True
    end
    object ClientDataSet1ID_PARAM: TIntegerField
      FieldName = 'ID_PARAM'
    end
    object ClientDataSet1DATE_TEST: TDateField
      DisplayWidth = 14
      FieldName = 'DATE_TEST'
    end
    object ClientDataSet1NUMBER_SAMPLE: TIntegerField
      DisplayWidth = 19
      FieldName = 'NUMBER_SAMPLE'
    end
    object ClientDataSet1DATE_PARAM: TDateField
      DisplayWidth = 17
      FieldName = 'DATE_PARAM'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 192
    Top = 136
  end
end

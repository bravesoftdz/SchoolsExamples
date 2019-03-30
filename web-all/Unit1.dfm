object Form1: TForm1
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TabOrder = 1
  object WebDBGrid1: TWebDBGrid
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Align = alClient
    TabOrder = 0
    Columns = <
      item
        DataField = 'Name'
        Title = 'Name'
        Width = 200
      end
      item
        DataField = 'ADDRESS'
        Title = 'ADDRESS'
        Width = 150
      end
      item
        DataField = 'CITY'
        Title = 'CITY'
        Width = 100
      end
      item
        DataField = 'ZIP'
        Title = 'ZIP'
      end
      item
        DataField = 'Students'
        Title = 'Students'
      end
      item
        DataField = 'YearEstablished'
        Title = 'YearEstablished'
      end>
    DataSource = WebDataSource1
    ColWidths = (
      64
      200
      150
      100
      64
      64
      64)
  end
  object XDataWebConnection1: TXDataWebConnection
    URL = 'http://localhost/flix'
    Connected = True
    OnConnect = XDataWebConnection1Connect
    Left = 64
    Top = 368
  end
  object XDataWebDataSet1: TXDataWebDataSet
    EntitySetName = 'Schools'
    Connection = XDataWebConnection1
    Left = 200
    Top = 360
    object XDataWebDataSet1Name: TStringField
      FieldName = 'Name'
      Required = True
      Size = 100
    end
    object XDataWebDataSet1ADDRESS: TStringField
      FieldName = 'ADDRESS'
      Required = True
      Size = 50
    end
    object XDataWebDataSet1CITY: TStringField
      FieldName = 'CITY'
      Required = True
      Size = 50
    end
    object XDataWebDataSet1ZIP: TIntegerField
      FieldName = 'ZIP'
    end
    object XDataWebDataSet1Students: TIntegerField
      FieldName = 'Students'
    end
    object XDataWebDataSet1YearEstablished: TIntegerField
      FieldName = 'YearEstablished'
    end
  end
  object WebDataSource1: TWebDataSource
    DataSet = XDataWebDataSet1
    Left = 368
    Top = 384
  end
end

object ServerContainer: TServerContainer
  OldCreateOrder = False
  Height = 210
  Width = 431
  object SparkleHttpSysDispatcher: TSparkleHttpSysDispatcher
    Active = True
    Left = 72
    Top = 16
  end
  object XDataServer: TXDataServer
    BaseUrl = 'http://+:80/flix'
    Dispatcher = SparkleHttpSysDispatcher
    Pool = XDataConnectionPool
    DefaultEntitySetPermissions = [List]
    EntitySetPermissions = <>
    Left = 216
    Top = 16
    object XDataServerCORS: TSparkleCorsMiddleware
    end
  end
  object XDataConnectionPool: TXDataConnectionPool
    Connection = AureliusConnection
    Left = 216
    Top = 72
  end
  object AureliusConnection: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection1
    SQLDialect = 'MSSQL'
    Left = 216
    Top = 128
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=leecounty'
      'OSAuthent=Yes'
      'Server=HOLSTINDESK'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 128
  end
end

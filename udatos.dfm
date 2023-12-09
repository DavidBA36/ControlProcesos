object Datos: TDatos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 495
  Width = 625
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorHome = 'D:\Programacion'
    Left = 80
    Top = 89
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 80
    Top = 145
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=/virtual/datos/ControlProcesos.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=192.168.1.202'
      'DriverID=FB')
    TxOptions.AutoStop = False
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 80
    Top = 209
  end
  object FDEventAlerter1: TFDEventAlerter
    Connection = FDConnection1
    Names.Strings = (
      'PEDIDOS_NEW'
      'PEDIDOS_EDIT')
    Options.Kind = 'Events'
    Options.Timeout = 10000
    Options.AutoRegister = True
    OnAlert = FDEventAlerter1Alert
    Left = 82
    Top = 273
  end
  object NotificationCenter1: TNotificationCenter
    Left = 80
    Top = 344
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'FMX'
    Left = 80
    Top = 408
  end
end

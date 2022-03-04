object ModuleDB: TModuleDB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 341
  Width = 495
  object ConnectionMYSQL: TUniConnection
    ProviderName = 'MySQL'
    Database = 'khm_handbook_3'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True')
    Username = 'User'
    Server = 'localhost'
    LoginPrompt = False
    Left = 40
    Top = 8
    EncryptedPassword = ''
  end
  object MYSQL: TMySQLUniProvider
    Left = 40
    Top = 56
  end
  object srcUsers: TUniDataSource
    DataSet = Users
    Left = 48
    Top = 232
  end
  object Groups: TUniTable
    TableName = 'groups'
    Connection = ConnectionMYSQL
    Left = 112
    Top = 184
  end
  object srcGroups: TUniDataSource
    DataSet = Groups
    Left = 112
    Top = 232
  end
  object Users: TUniQuery
    Connection = ConnectionMYSQL
    SQL.Strings = (
      'SELECT *'
      
        'FROM Users as U LEFT JOIN Groups as G ON U.user_group = G.group_' +
        'id'
      'ORDER BY U.user_name')
    Left = 48
    Top = 184
  end
  object IniFile: TRzRegIniFile
    Path = 'Connection.ini'
    Left = 304
    Top = 64
  end
  object ConnectionIB: TUniConnection
    ProviderName = 'InterBase'
    Database = 'c:\sal_new.gdb'
    SpecificOptions.Strings = (
      'InterBase.UseUnicode=True')
    Username = 'SYSDBA'
    Server = 'localhost'
    LoginPrompt = False
    Left = 128
    Top = 8
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object IB: TInterBaseUniProvider
    Left = 128
    Top = 56
  end
  object ContactList: TUniQuery
    Connection = ConnectionIB
    SQL.Strings = (
      
        'SELECT E.last_name, E.first_name, E.middle_name, D.div_name, P.p' +
        'rofession, E.data_rozhd, E.dismissed, E.tab_no'
      
        'FROM Employer as E LEFT JOIN Profession as P ON E.profession = P' +
        '.prof_code LEFT JOIN Division as D ON E.div_code = D.div_code'
      'WHERE E.dismissed not in (:dism)'
      'ORDER BY E.last_name, E.first_name, E.middle_name')
    ReadOnly = True
    Left = 408
    Top = 72
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'dism'
        Value = True
      end>
  end
  object srcContactList: TUniDataSource
    DataSet = memContactList
    Left = 408
    Top = 216
  end
  object memContactList: TMemTableEh
    Params = <>
    DataDriver = setContactList
    ReadOnly = True
    Left = 408
    Top = 168
    object memContactListLAST_NAME: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      Required = True
      Size = 50
    end
    object memContactListFIRST_NAME: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 50
    end
    object memContactListMIDDLE_NAME: TWideStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'MIDDLE_NAME'
      Required = True
      Size = 50
    end
    object memContactListDIV_NAME: TWideStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DIV_NAME'
      Size = 120
    end
    object memContactListPROFESSION: TWideStringField
      DisplayLabel = #1055#1088#1086#1092#1077#1089#1089#1080#1103
      FieldName = 'PROFESSION'
      Size = 120
    end
    object memContactListDATA_ROZHD: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'DATA_ROZHD'
    end
    object memContactListDISMISSED: TSmallintField
      DisplayLabel = #1059#1076#1072#1083#1077#1085
      FieldName = 'DISMISSED'
    end
    object memContactListTAB_NO: TWideStringField
      FieldName = 'TAB_NO'
      Required = True
      Size = 10
    end
  end
  object setContactList: TDataSetDriverEh
    ProviderDataSet = ContactList
    Left = 408
    Top = 120
  end
  object ConfigIni: TRzRegIniFile
    Path = 'Software\Handbook Editor'
    PathType = ptRegistry
    Left = 304
    Top = 112
  end
  object SYSP: TUniTable
    TableName = 'system_parameters'
    Connection = ConnectionMYSQL
    Left = 232
    Top = 248
  end
  object RegFile: TRzRegIniFile
    Path = 'Software\Handbook Editor'
    PathType = ptRegistry
    Left = 304
    Top = 160
  end
end

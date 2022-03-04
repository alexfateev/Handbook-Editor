object fmEmail: TfmEmail
  Left = 0
  Top = 0
  Caption = 'fmEmail'
  ClientHeight = 692
  ClientWidth = 1086
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 27
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Padding.Left = 1
    Padding.Top = 1
    Padding.Right = 1
    TabOrder = 0
    object btRefersh: TRzButton
      Left = 266
      Top = 1
      ShowFocusRect = False
      Align = alLeft
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 0
      OnClick = btRefershClick
    end
    object RzMenuButton1: TRzMenuButton
      Left = 1
      Top = 1
      Width = 265
      ShowFocusRect = False
      Align = alLeft
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072' '#1089#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      TabOrder = 1
      DropDownMenu = pmEmailExceptions
    end
  end
  object RzSizePanel1: TRzSizePanel
    Left = 729
    Top = 27
    Width = 357
    Height = 665
    Align = alRight
    TabOrder = 1
    object RzPanel2: TRzPanel
      Left = 5
      Top = 0
      Width = 352
      Height = 665
      Align = alClient
      BorderOuter = fsFlat
      BorderSides = [sdLeft]
      TabOrder = 0
      object DBGridEmail: TDBGridEh
        Left = 1
        Top = 0
        Width = 351
        Height = 646
        Align = alClient
        AutoFitColWidths = True
        BorderStyle = bsNone
        DataSource = srcEmail_Import
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentShowHint = False
        PopupMenu = pmEmail_Import
        ReadOnly = True
        SearchPanel.Enabled = True
        ShowHint = True
        TabOrder = 0
        OnGetCellParams = DBGridEmailGetCellParams
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'email_name'
            Footers = <>
            Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' ('#1069#1083'.'#1087#1086#1095#1090#1072')'
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 150
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'email_name_full'
            Footers = <>
            Title.Caption = #1055#1086#1083#1085#1086#1077' '#1080#1084#1103' ('#1054#1087#1080#1089#1072#1085#1080#1077')'
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object RzStatusBar2: TRzStatusBar
        Left = 1
        Top = 646
        Width = 351
        Height = 19
        ShowSizeGrip = False
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 0
        TabOrder = 1
        object fsUAll: TRzFieldStatus
          Left = 0
          Top = 0
          Width = 76
          Height = 19
          Align = alLeft
          FieldLabel = #1042#1089#1077#1075#1086':'
          AutoSize = True
          Caption = ''
        end
        object fsUOut: TRzFieldStatus
          Left = 167
          Top = 0
          Width = 107
          Height = 19
          Align = alLeft
          FieldLabel = #1053#1077' '#1074' '#1089#1087#1080#1089#1082#1077':'
          AutoSize = True
          Caption = ''
        end
        object fsUIn: TRzFieldStatus
          Left = 76
          Top = 0
          Width = 91
          Height = 19
          Align = alLeft
          FieldLabel = #1042' '#1089#1087#1080#1089#1082#1077':'
          AutoSize = True
          Caption = ''
        end
      end
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 27
    Width = 729
    Height = 665
    Align = alClient
    BorderOuter = fsFlat
    BorderSides = [sdRight]
    TabOrder = 2
    object DBGridContact: TDBGridEh
      Left = 0
      Top = 0
      Width = 728
      Height = 646
      Align = alClient
      AutoFitColWidths = True
      BorderStyle = bsNone
      DataSource = srcContacts
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      ReadOnly = True
      SearchPanel.Enabled = True
      ShowHint = True
      TabOrder = 0
      OnGetCellParams = DBGridContactGetCellParams
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_name_save'
          Footers = <>
          Title.Caption = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Width = 250
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'unit_name_full'
          Footers = <>
          Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Width = 250
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_email'
          Footers = <>
          Title.Caption = #1069#1083'. '#1087#1086#1095#1090#1072
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Width = 120
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object RzStatusBar1: TRzStatusBar
      Left = 0
      Top = 646
      Width = 728
      Height = 19
      ShowSizeGrip = False
      BorderInner = fsNone
      BorderOuter = fsNone
      BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
      BorderWidth = 0
      TabOrder = 1
      object fsCAll: TRzFieldStatus
        Left = 0
        Top = 0
        Width = 133
        Height = 19
        Align = alLeft
        FieldLabel = #1042#1089#1077#1075#1086' '#1082#1086#1085#1090#1072#1082#1090#1086#1074':'
        AutoSize = True
        Caption = ''
      end
      object fsCIn: TRzFieldStatus
        Left = 240
        Top = 0
        Width = 94
        Height = 19
        Align = alLeft
        FieldLabel = #1057' '#1087#1086#1095#1090#1086#1081':'
        AutoSize = True
        Caption = ''
        ExplicitLeft = 201
      end
      object fsCOut: TRzFieldStatus
        Left = 334
        Top = 0
        Height = 19
        Align = alLeft
        FieldLabel = #1041#1077#1079' '#1087#1086#1095#1090#1099':'
        AutoSize = True
        Caption = ''
        ExplicitLeft = 281
      end
      object fscErr: TRzFieldStatus
        Left = 434
        Top = 0
        Width = 108
        Height = 19
        Align = alLeft
        FieldLabel = #1054#1096#1080#1073#1086#1095#1085#1099#1093':'
        AutoSize = True
        Caption = ''
        ExplicitLeft = 377
      end
      object fsCEmail: TRzFieldStatus
        Left = 133
        Top = 0
        Width = 107
        Height = 19
        Align = alLeft
        FieldLabel = #1069#1083'. '#1103#1097#1080#1082#1086#1074':'
        AutoSize = True
        Caption = ''
        ExplicitLeft = 113
      end
      object fscNonActive: TRzFieldStatus
        Left = 542
        Top = 0
        Width = 111
        Height = 19
        Align = alLeft
        FieldLabel = #1053#1077#1072#1082#1090#1080#1074#1085#1099#1093':'
        AutoSize = True
        Caption = ''
        ExplicitLeft = 473
      end
    end
  end
  object srcContacts: TUniDataSource
    DataSet = memContacts
    Left = 192
    Top = 232
  end
  object memContacts: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = setContacts
    Left = 192
    Top = 184
  end
  object setContacts: TDataSetDriverEh
    KeyFields = 'cont_id'
    ProviderDataSet = Contacts
    Left = 192
    Top = 136
  end
  object Contacts: TUniQuery
    Connection = ModuleDB.ConnectionMYSQL
    SQL.Strings = (
      'SELECT *'
      
        'FROM Contacts as C LEFT JOIN Units as U ON C.cont_unit = U.unit_' +
        'id'
      'ORDER BY cont_name_save')
    Left = 192
    Top = 88
  end
  object OpenDialog: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt'
    Left = 768
    Top = 147
  end
  object Email_Import: TUniQuery
    Connection = ModuleDB.ConnectionMYSQL
    SQL.Strings = (
      'SELECT *'
      'FROM Email_import')
    Left = 264
    Top = 104
  end
  object setEmail_Import: TDataSetDriverEh
    KeyFields = 'cont_id'
    ProviderDataSet = Email_Import
    Left = 264
    Top = 152
  end
  object memEmail_Import: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = setEmail_Import
    Left = 264
    Top = 200
  end
  object srcEmail_Import: TUniDataSource
    DataSet = memEmail_Import
    Left = 264
    Top = 248
  end
  object SQL: TUniQuery
    Connection = ModuleDB.ConnectionMYSQL
    Left = 536
    Top = 224
  end
  object C: TUniTable
    TableName = 'contacts'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 88
    Top = 419
  end
  object E: TUniTable
    TableName = 'email_import'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 184
    Top = 427
  end
  object pmEmailExceptions: TPopupMenu
    Left = 472
    Top = 323
    object N2: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1081' '#1087#1088#1080' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1080
      OnClick = N1Click
    end
  end
  object pmEmail_Import: TPopupMenu
    OnPopup = pmEmail_ImportPopup
    Left = 770
    Top = 331
    object N3: TMenuItem
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1103#1097#1080#1082
      OnClick = N3Click
    end
    object miWizard: TMenuItem
      Caption = #1052#1072#1089#1090#1077#1088' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1082#1086#1085#1090#1072#1082#1090#1072
      OnClick = miWizardClick
    end
  end
  object Email_Import_Exceptions: TUniTable
    TableName = 'email_import_exceptions'
    OrderFields = 'email_except_name'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 320
    Top = 339
  end
  object srcEmail_import_exceptions: TUniDataSource
    DataSet = Email_Import_Exceptions
    Left = 320
    Top = 384
  end
end

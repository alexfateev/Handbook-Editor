object fmAdmin: TfmAdmin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 564
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageMain: TRzPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 827
    Height = 558
    Hint = ''
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    CutCornerSize = 0
    ShowFocusRect = False
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsCutCorner
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1043#1088#1091#1087#1087#1099' '#1076#1086#1089#1090#1091#1087#1072
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 8
        Top = 8
        Width = 807
        Height = 193
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1099' '#1076#1086#1089#1090#1091#1087#1072':'
        TabOrder = 0
        object DBGridGroups: TDBGridEh
          AlignWithMargins = True
          Left = 7
          Top = 20
          Width = 793
          Height = 136
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          AutoFitColWidths = True
          DataSource = ModuleDB.srcGroups
          DynProps = <>
          IndicatorOptions = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ReadOnly = True
          TabOrder = 0
          Columns = <
            item
              AutoFitColWidth = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'group_name'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Title.EndEllipsis = True
              Title.ToolTips = True
              ToolTips = True
              Width = 300
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'group_description'
              Footers = <>
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Title.EndEllipsis = True
              Title.ToolTips = True
              ToolTips = True
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object RzPanel1: TRzPanel
          AlignWithMargins = True
          Left = 7
          Top = 161
          Width = 793
          Height = 25
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderOuter = fsNone
          TabOrder = 1
          object RzSpacer1: TRzSpacer
            Left = 225
            Top = 0
            Grooved = True
            Align = alLeft
            ExplicitLeft = 416
          end
          object btDelete: TRzButton
            Left = 150
            Top = 0
            Align = alLeft
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 0
            OnClick = btDeleteClick
          end
          object btEdit: TRzButton
            Left = 75
            Top = 0
            Align = alLeft
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            TabOrder = 1
            OnClick = btEditClick
          end
          object btInsert: TRzButton
            Left = 0
            Top = 0
            Align = alLeft
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 2
            OnClick = btInsertClick
          end
          object btCancel: TRzButton
            Left = 308
            Top = 0
            Align = alLeft
            Caption = #1054#1090#1084#1077#1085#1072
            TabOrder = 3
            OnClick = btCancelClick
          end
          object btApplay: TRzButton
            Left = 233
            Top = 0
            Align = alLeft
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            TabOrder = 4
            OnClick = btApplayClick
          end
        end
      end
      object RzPageControl1: TRzPageControl
        AlignWithMargins = True
        Left = 8
        Top = 207
        Width = 807
        Height = 319
        Hint = ''
        Margins.Left = 8
        Margins.Right = 8
        Margins.Bottom = 8
        ActivePage = TabSheet3
        ActivePageDefault = TabSheet3
        Align = alClient
        CutCornerSize = 0
        TabIndex = 0
        TabOrder = 1
        TabStyle = tsCutCorner
        FixedDimension = 20
        object TabSheet3: TRzTabSheet
          Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
          object RzDBCheckBox1: TRzDBCheckBox
            Left = 16
            Top = 16
            Width = 238
            Height = 15
            DataField = 'handb_access'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1088#1072#1079#1076#1077#1083#1091' "'#1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072'"'
            TabOrder = 0
          end
          object RzDBCheckBox2: TRzDBCheckBox
            Left = 32
            Top = 37
            Width = 75
            Height = 15
            DataField = 'handb_insert'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1044#1086#1073#1072#1074#1083#1103#1090#1100
            TabOrder = 1
          end
          object RzDBCheckBox3: TRzDBCheckBox
            Left = 32
            Top = 58
            Width = 98
            Height = 15
            DataField = 'handb_edit'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 2
          end
          object RzDBCheckBox4: TRzDBCheckBox
            Left = 32
            Top = 79
            Width = 63
            Height = 15
            DataField = 'handb_delete'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1059#1076#1072#1083#1103#1090#1100
            TabOrder = 3
          end
          object RzDBCheckBox5: TRzDBCheckBox
            Left = 32
            Top = 100
            Width = 180
            Height = 15
            DataField = 'handb_mark_delete'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1055#1086#1084#1077#1095#1072#1090#1100'/'#1089#1085#1080#1084#1072#1090#1100' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
            TabOrder = 4
          end
          object RzDBCheckBox6: TRzDBCheckBox
            Left = 32
            Top = 121
            Width = 254
            Height = 15
            DataField = 'handb_contact_list'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1086#1080#1089#1082' '#1074' '#1089#1087#1080#1089#1082#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
            TabOrder = 5
          end
          object RzDBCheckBox9: TRzDBCheckBox
            Left = 32
            Top = 142
            Width = 222
            Height = 15
            DataField = 'handb_move_unit'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1055#1077#1088#1077#1084#1077#1097#1072#1090#1100' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' ('#1074' '#1076#1077#1088#1077#1074#1077')'
            TabOrder = 6
          end
        end
        object TabSheet4: TRzTabSheet
          Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
          object RzDBCheckBox7: TRzDBCheckBox
            Left = 16
            Top = 16
            Width = 202
            Height = 15
            DataField = 'feedback_access'
            DataSource = ModuleDB.srcGroups
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1088#1072#1079#1076#1077#1083#1091' "'#1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100'"'
            TabOrder = 0
          end
        end
        object TabSheet5: TRzTabSheet
          Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
          ExplicitLeft = 0
          object RzDBCheckBox10: TRzDBCheckBox
            Left = 16
            Top = 16
            Width = 221
            Height = 15
            DataField = 'email_access'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1088#1072#1079#1076#1077#1083#1091' "'#1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072'"'
            TabOrder = 0
          end
          object RzDBCheckBox11: TRzDBCheckBox
            Left = 32
            Top = 37
            Width = 233
            Height = 15
            DataField = 'email_wizard_add'
            DataSource = srcAdmin
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1084#1072#1089#1090#1077#1088' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1082#1086#1085#1090#1072#1082#1090#1086#1074
            TabOrder = 1
          end
        end
        object TabSheet6: TRzTabSheet
          Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
          object RzDBCheckBox8: TRzDBCheckBox
            Left = 16
            Top = 16
            Width = 224
            Height = 15
            DataField = 'admin_access'
            DataSource = ModuleDB.srcGroups
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1088#1072#1079#1076#1077#1083#1091' "'#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'"'
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      object DBGridEh2: TDBGridEh
        AlignWithMargins = True
        Left = 5
        Top = 35
        Width = 813
        Height = 494
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        AutoFitColWidths = True
        DataSource = ModuleDB.srcUsers
        DynProps = <>
        IndicatorOptions = [gioShowRecNoEh]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        TabOrder = 0
        Columns = <
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'user_is_active'
            Footers = <>
            MaxWidth = 30
            MinWidth = 30
            Title.Caption = #1040#1082#1090#1080#1074#1077#1085
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 30
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'user_name'
            Footers = <>
            Title.Caption = #1048#1084#1103
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 150
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'user_description'
            Footers = <>
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 150
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'group_name'
            Footers = <>
            Title.Caption = #1048#1084#1103' '#1075#1088#1091#1087#1087#1099' '#1076#1086#1089#1090#1091#1087#1072
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 150
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'group_description'
            Footers = <>
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099' '#1076#1086#1089#1090#1091#1087#1072
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 823
        Height = 35
        Align = alTop
        BorderOuter = fsGroove
        BorderSides = []
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object Button1: TButton
          Left = 230
          Top = 5
          Width = 118
          Height = 25
          Align = alLeft
          Caption = #1040#1082#1090#1080#1074#1077#1085'/'#1053#1077#1072#1082#1090#1080#1074#1077#1085
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 155
          Top = 5
          Width = 75
          Height = 25
          Align = alLeft
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 80
          Top = 5
          Width = 75
          Height = 25
          Align = alLeft
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 5
          Top = 5
          Width = 75
          Height = 25
          Align = alLeft
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 348
          Top = 5
          Width = 118
          Height = 25
          Align = alLeft
          Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
          TabOrder = 4
          OnClick = Button5Click
        end
      end
    end
  end
  object srcAdmin: TUniDataSource
    DataSet = ModuleDB.Groups
    OnStateChange = srcAdminStateChange
    Left = 693
    Top = 444
  end
end

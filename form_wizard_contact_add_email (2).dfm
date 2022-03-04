object fmWizardContactAddEmail: TfmWizardContactAddEmail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmWizardContactAddEmail'
  ClientHeight = 435
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 677
    Height = 435
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    CutCornerSize = 0
    ShowCardFrame = False
    ShowFocusRect = False
    ShowFullFrame = False
    ShowShadow = False
    TabIndex = 2
    TabOrder = 0
    TabStyle = tsCutCorner
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1048#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
      object RzLabel1: TRzLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 667
        Height = 16
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          #1044#1083#1103' '#1085#1072#1095#1072#1083#1072' '#1087#1086#1080#1097#1080' '#1082#1086#1085#1090#1072#1082#1090' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077'. '#1053#1077' '#1085#1072#1096#1077#1083'? '#1055#1088#1086#1087#1091#1089#1090#1080' '#1089#1090#1088#1072#1085 +
          #1080#1094#1091'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 503
      end
      object DBGridEh1: TDBGridEh
        AlignWithMargins = True
        Left = 5
        Top = 26
        Width = 667
        Height = 354
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        AutoFitColWidths = True
        DataSource = Contacts
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'cont_name_save'
            Footers = <>
            Title.Caption = #1061#1088#1072#1085#1080#1086#1084#1077' '#1080#1084#1103
            Title.EndEllipsis = True
            ToolTips = True
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit_name_full'
            Footers = <>
            Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 120
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'cont_email'
            Footers = <>
            Title.Caption = #1069#1083'. '#1087#1086#1095#1090#1072
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 200
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 380
        Width = 677
        Height = 35
        Align = alBottom
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object Button1: TButton
          Left = 447
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1055#1088#1086#1087#1091#1089#1090#1080#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
        object btCancel: TButton
          Left = 597
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 1
          OnClick = btCancelClick
        end
        object Button3: TButton
          Left = 522
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 2
          OnClick = Button3Click
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = #1048#1079' '#1089#1087#1080#1089#1082#1072' '#1082#1086#1085#1090#1072#1082#1090#1086#1074
      object RzLabel2: TRzLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 667
        Height = 16
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          #1058#1077#1087#1077#1088#1100' '#1087#1086#1080#1097#1080' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074'. '#1054#1087#1103#1090#1100' '#1085#1077' '#1085#1072#1096#1077#1083'?! '#1055#1088#1086#1087#1091#1089#1082 +
          #1072#1081'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 491
      end
      object DBGridEh2: TDBGridEh
        AlignWithMargins = True
        Left = 5
        Top = 26
        Width = 667
        Height = 354
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        AutoFitColWidths = True
        DataSource = ContactList
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        ReadOnly = True
        SearchPanel.Enabled = True
        TabOrder = 0
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 160
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'FIRST_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 160
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIDDLE_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 160
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DIV_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 200
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 380
        Width = 677
        Height = 35
        Align = alBottom
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object Button5: TButton
          Left = 447
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1055#1088#1086#1087#1091#1089#1090#1080#1090#1100
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 597
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 1
          OnClick = btCancelClick
        end
        object Button9: TButton
          Left = 372
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = '<< '#1053#1072#1079#1072#1076
          TabOrder = 2
          OnClick = Button9Click
        end
        object Button2: TButton
          Left = 522
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 3
          OnClick = Button2Click
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1054#1073#1097#1080#1077' '#1076#1072#1085#1085#1099#1077
      object Label1: TLabel
        Left = 20
        Top = 34
        Width = 44
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label2: TLabel
        Left = 176
        Top = 34
        Width = 19
        Height = 13
        Caption = #1048#1084#1103
      end
      object Label3: TLabel
        Left = 332
        Top = 34
        Width = 49
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label4: TLabel
        Left = 20
        Top = 83
        Width = 57
        Height = 13
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      end
      object Label5: TLabel
        Left = 20
        Top = 180
        Width = 69
        Height = 13
        Caption = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103
      end
      object Label6: TLabel
        Left = 20
        Top = 226
        Width = 50
        Height = 13
        Caption = #1069#1083'. '#1087#1086#1095#1090#1072
      end
      object Label7: TLabel
        Left = 20
        Top = 131
        Width = 36
        Height = 13
        Caption = #1043#1088#1091#1087#1087#1072
      end
      object RzLabel3: TRzLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 667
        Height = 16
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          #1042#1085#1077#1089#1080' '#1074#1088#1091#1095#1085#1091#1102' '#1076#1072#1085#1085#1099#1077' '#1086' '#1082#1086#1085#1090#1072#1082#1090#1077' ('#1080#1083#1080' '#1087#1088#1086#1074#1077#1088#1100' '#1080' '#1074#1085#1077#1089#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1103').' +
          ' '#1059#1074#1077#1088#1077#1085'? '#1044#1086#1073#1072#1074#1083#1103#1081' '#1079#1072#1087#1080#1089#1100'!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 649
      end
      object Label8: TLabel
        Left = 363
        Top = 272
        Width = 84
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
      end
      object Panel4: TPanel
        Left = 0
        Top = 380
        Width = 677
        Height = 35
        Align = alBottom
        BevelEdges = []
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object btApplayAndInsert: TButton
          Left = 447
          Top = 5
          Width = 150
          Height = 25
          Align = alRight
          Caption = #1055#1088#1080#1085#1103#1090#1100' '#1080' '#1076#1086#1073#1072#1074#1080#1090#1100
          Enabled = False
          TabOrder = 0
          OnClick = btApplayAndInsertClick
        end
        object Button8: TButton
          Left = 597
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 1
          OnClick = btCancelClick
        end
        object Button10: TButton
          Left = 372
          Top = 5
          Width = 75
          Height = 25
          Align = alRight
          Caption = '<< '#1053#1072#1079#1072#1076
          TabOrder = 2
          OnClick = Button10Click
        end
      end
      object edName_f: TRzEdit
        Left = 20
        Top = 53
        Width = 150
        Height = 21
        Text = ''
        TabOrder = 1
      end
      object edName_i: TRzEdit
        Left = 176
        Top = 53
        Width = 150
        Height = 21
        Text = ''
        TabOrder = 2
      end
      object edName_o: TRzEdit
        Left = 332
        Top = 53
        Width = 150
        Height = 21
        Text = ''
        TabOrder = 3
      end
      object edProf: TRzEdit
        Left = 20
        Top = 102
        Width = 462
        Height = 21
        Text = ''
        TabOrder = 4
      end
      object edEmail: TRzEdit
        Left = 20
        Top = 245
        Width = 462
        Height = 21
        Text = ''
        TabOrder = 5
      end
      object edUnit: TRzComboBox
        Left = 20
        Top = 150
        Width = 462
        Height = 21
        AllowEdit = False
        TabOrder = 6
        OnChange = edUnitChange
      end
      object edNameSave: TRzComboBox
        Left = 20
        Top = 199
        Width = 462
        Height = 21
        TabOrder = 7
        OnChange = edUnitChange
        OnDropDown = edNameSaveDropDown
      end
      object edDateBorn: TRzDateTimePicker
        Left = 360
        Top = 291
        Width = 122
        Height = 21
        Date = 41611.664132337970000000
        Format = ''
        Time = 41611.664132337970000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 8
      end
      object cbMardkDelete: TRzCheckBox
        Left = 32
        Top = 283
        Width = 129
        Height = 15
        Caption = #1055#1086#1084#1077#1095#1077#1085' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
        State = cbUnchecked
        TabOrder = 9
      end
    end
  end
  object ContactList: TUniDataSource
    DataSet = ModuleDB.memContactList
    Left = 110
    Top = 306
  end
  object Contacts: TUniDataSource
    DataSet = fmEmail.Contacts
    Left = 54
    Top = 306
  end
  object Units: TUniTable
    TableName = 'units'
    OrderFields = 'unit_name_full'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 256
    Top = 364
  end
  object Email: TUniDataSource
    DataSet = fmEmail.memEmail_Import
    Left = 128
    Top = 372
  end
end
